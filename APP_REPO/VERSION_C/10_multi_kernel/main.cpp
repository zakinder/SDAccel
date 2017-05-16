// Copyright (C) 2015-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>
#include <bitset>

#include <cstdint>
#include <time.h>
#include "xclUtils.h"
#include "xclHALProxy.h"
#if defined(DSA64)
#include "xvectorswizzle_hw_64.h"
#else
#include "xvectorswizzle_hw.h"
#endif


#define KERNEL_LOOP_COUNT 0x4000
#define LOCAL_SIZE 0x2
#define CU_COUNT 0x2
#define DATA_COUNT (KERNEL_LOOP_COUNT * LOCAL_SIZE * CU_COUNT)

/*
 * cl_uint4 generated with g++ -E on OpenCL header CL/cl.h
 */
typedef uint32_t cl_uint __attribute__((aligned(4)));
typedef cl_uint __cl_uint4 __attribute__((vector_size(16)));
typedef cl_uint __cl_uint2 __attribute__((vector_size(8)));

typedef union
{
    cl_uint __attribute__ ((aligned(16))) s[4];
    __cl_uint2 v2[2];
    __cl_uint4 v4;
} cl_uint4;


/**
 * Simple example which runs two indentical vector swizzle OpenCL kernels in 2 compute units in parallel.
 * Each CU runs 1 work group with size 2 -- 2 work-items per group. Each work item works on 0x4000 int4.
 * Does not use OpenCL runtime but directly exercises the HAL driver API.
 */


struct Buffers {
    cl_uint4 *host; // arg 0 buffer
    cl_uint4 *scratch;
    cl_uint4 reference[DATA_COUNT]; // host computed reference value
    uint64_t device;
    Buffers(size_t alignment) : host(0), scratch(0) {
        posix_memalign((void **)&host, alignment, DATA_COUNT * sizeof(cl_uint4));
        posix_memalign((void **)&scratch, alignment, DATA_COUNT * sizeof(cl_uint4));

        for (int i = 0; i < DATA_COUNT * 4; i += 4) {
            const int index = i / 4;
            host[index].s[0] = i;
            host[index].s[1] = i + 1;
            host[index].s[2] = i + 2;
            host[index].s[3] = i + 3;
            scratch[index].s[0] = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII)
            scratch[index].s[1] = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII)
            scratch[index].s[2] = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII)
            scratch[index].s[3] = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII)
            reference[index].s[0] = host[index].s[2];
            reference[index].s[1] = host[index].s[3];
            reference[index].s[2] = host[index].s[0];
            reference[index].s[3] = host[index].s[1];
        }
    }
    size_t size() const {
        return DATA_COUNT * sizeof(cl_uint4);
    }
    ~Buffers() {
        free(host);
        free(scratch);
    }
};

const static struct option long_options[] = {
    {"hal_driver",      required_argument, 0, 's'},
    {"bitstream",       required_argument, 0, 'k'},
    {"hal_logfile",     required_argument, 0, 'l'},
    {"device",          required_argument, 0, 'd'},
    {"verbose",         no_argument,       0, 'v'},
    {"help",            no_argument,       0, 'h'},
    {0, 0, 0, 0}
};

static void printHelp()
{
    std::cout << "usage: %s [options] -k <bitstream>\n\n";
    std::cout << "  -s <hal_driver>\n";
    std::cout << "  -k <bitstream>\n";
    std::cout << "  -l <hal_logfile>\n";
    std::cout << "  -d <index>\n";
    std::cout << "  -v\n";
    std::cout << "  -h\n\n";
    std::cout << "* If HAL driver is not specified, application will try to find the HAL driver\n";
    std::cout << "  using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
    std::cout << "* Bitstream is required\n";
    std::cout << "* HAL logfile is optional but useful for capturing messages from HAL driver\n";
}


static int setupBuffers(xclHALProxy &proxy, Buffers &buffers)
{
    buffers.device = proxy.allocateDevice(buffers.size());
    // Write out arg 0 buffer
    size_t result = proxy.migrateHost2Device(buffers.device, buffers.host, buffers.size());
    if (result != buffers.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from host to device failed\n";
        return 1;
    }

    // Verify if we could write arg 0 buffer
    result = proxy.migrateDevice2Host(buffers.device, buffers.scratch, buffers.size());
    if (result != buffers.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }

    if (std::memcmp(buffers.host, buffers.scratch, buffers.size())) {
        std::cout << "FAILED TEST\n";
        std::cout << "Value read back does not match value written\n";
        return 1;
    }
    return 0;
}


static int startComputeUnit(xclHALProxy &proxy, Buffers &buffers, size_t alignment, bool verbose,
                            unsigned computeUnit, int groupId)
{
    const size_t controlSize = 96; // align to 32 byte
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    const unsigned controlBase = (computeUnit == 0) ? 0 : 0x1000;
    const uint64_t dataBase = (computeUnit == 0) ? 0 : buffers.size() / 2;
    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_GROUP_ID_X_DATA/4] = groupId; // group id
    uint64_t deviceAddress = buffers.device + dataBase;
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_A_DATA/4] = (unsigned)deviceAddress; // s1 buffer
#if defined(DSA64)
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_A_DATA/4 + 1] = (deviceAddress >> 32) & 0xFFFFFFFF; // s1 buffer
#endif


    const size_t global[2] = {LOCAL_SIZE};
    const size_t local[2] = {LOCAL_SIZE};

    std::cout << "Compute Unit " << computeUnit << " Global range " << global[0] << "\n";
    std::cout << "Compute Unit " << computeUnit << " Local range " << local[0] << "\n";
    std::cout << "Starting kernel...\n";

    size_t result = 0;

    // First read the control registers
    result = proxy.readControl(controlBase, regMapReadBack.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }
    for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
        std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
    }

    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_AP_CTRL] = 0x0; // reset the ap_start
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_GROUP_ID_X_DATA/4] = groupId; // group id
    // Next write out the control registers except the kickoff bit
    result = proxy.writeControl(controlBase, regMap.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Control Write failed\n";
        return 1;
    }

    // First read the control registers to verify the args were written
    result = proxy.readControl(controlBase, regMapReadBack.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Control Read failed\n";
        return 1;
    }

    for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
        std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
    }

    // Next kickoff the kernel
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
    result = proxy.writeControl(controlBase, regMap.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Control Write failed\n";
        return 1;
    }

    return 0;
}


static int waitForComputeUnits(xclHALProxy &proxy, size_t alignment, bool verbose)
{
    std::cout << "Waiting for Compute Unit 0 and 1 to finish...\n";
    AlignedAllocator<unsigned> regMapReadBack(alignment, 8);
    const timespec interval = {0, 500};
    std::bitset<2> status;
    status[0] = 1;
    status[1] = 1;
    unsigned index = 0;
    for (unsigned i = 0; (i < 3600000) && status.any(); i++) {
        nanosleep(&interval, 0);
        std::memset(regMapReadBack.getBuffer(), 0, regMapReadBack.size());
        unsigned controlBase = (index == 0) ? 0 : 0x1000;
        size_t result = proxy.readControl(controlBase, regMapReadBack.getBuffer(), regMapReadBack.size());
        if (result != regMapReadBack.size()) {
            std::cout << "FAILED TEST\n";
            std::cout << "Control Read failed\n";
            return 1;
        }
        const bool flag = (regMapReadBack.getBuffer()[0] & 0x6);
        status[index] = flag ? 0 : 1;
        index++;
        index &= 0x1;
    }
    if (status.any()) {
        std::cout << "FAILED TEST\n";
        std::cout << "At least one compute unit failed to finish in expected time and may be hung\n";
        return 1;
    }
    return 0;
}


static int runKernels(xclHALProxy &proxy, Buffers &buffers, size_t alignment, bool verbose)
{
    int result = startComputeUnit(proxy, buffers, alignment, verbose, 0, 0);
    result += startComputeUnit(proxy, buffers, alignment, verbose, 1, 0);
    if (result) {
        return 1;
    }
    // Next wait for done from kernel
    result = waitForComputeUnits(proxy, alignment, verbose);
    return result;
}


int main(int argc, char** argv)
{
    std::string sharedLibrary;
    std::string bitstreamFile;
    std::string halLogfile;
    size_t alignment = 128;
    int option_index = 0;
    unsigned index = 0;
    bool verbose = false;
    int c;
    findSharedLibrary(sharedLibrary);
    while ((c = getopt_long(argc, argv, "s:k:l:d:vh", long_options, &option_index)) != -1)
    {
        switch (c)
        {
        case 0:
            if (long_options[option_index].flag != 0)
                break;
        case 's':
            sharedLibrary = optarg;
            break;
        case 'k':
            bitstreamFile = optarg;
            break;
        case 'l':
            halLogfile = optarg;
            break;
        case 'd':
            index = std::atoi(optarg);
            break;
        case 'h':
            printHelp();
            return 0;
        case 'v':
            verbose = true;
            break;
        default:
            printHelp();
            return 1;
        }
    }

    if (sharedLibrary.size() == 0) {
        std::cout << "No shared library specified and library couldnot be found using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
        return -1;
    }

    if (bitstreamFile.size() == 0) {
        std::cout << "FAILED TEST\n";
        std::cout << "No bitstream specified, cannot load OpenCL kernel\n";
        return -1;
    }

    if (halLogfile.size()) {
        std::cout << "Using " << halLogfile << " as HAL driver logfile\n";
    }

    try {
        std::cout << "HAL driver = " << sharedLibrary << "\n";
        std::cout << "Host buffer alignment = " << alignment << " bytes\n";
        std::cout << "Compiled kernel = " << bitstreamFile << "\n";

        xclHALProxy proxy(sharedLibrary.c_str(), bitstreamFile.c_str(), index, halLogfile.c_str());
        Buffers buffers(alignment);

        if (setupBuffers(proxy, buffers))
            return 1;

        if (runKernels(proxy, buffers, alignment, verbose))
            return 1;

        // Copy back the arg0 buffer and verify
        std::memset(buffers.scratch, 0, buffers.size());
        size_t result = proxy.migrateDevice2Host(buffers.device, buffers.scratch, buffers.size());
        if (result != buffers.size()) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }

        if (std::memcmp(buffers.reference, buffers.scratch, buffers.size())) {
            std::cout << "FAILED TEST\n";
            std::cout << "Value read back does not match value written\n";
            std::cout << "Expected, Found (first 32 values)\n";
            for (int i = 0; i < 4; i++) {
                std::cout << buffers.reference[i].s[0] << ", " << buffers.scratch[i].s[0] << "\n";
                std::cout << buffers.reference[i].s[1] << ", " << buffers.scratch[i].s[1] << "\n";
                std::cout << buffers.reference[i].s[2] << ", " << buffers.scratch[i].s[2] << "\n";
                std::cout << buffers.reference[i].s[3] << ", " << buffers.scratch[i].s[3] << "\n";
            }
            return 1;
        }
    }
    catch (std::exception const& e)
    {
        std::cout << "Exception: " << e.what() << "\n";
        std::cout << "FAILED TEST\n";
        return 1;
    }

    std::cout << "PASSED TEST\n";
    return 0;
}
