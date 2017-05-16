// Copyright (C) 2014-2105 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>

#include <time.h>
#include "xclUtils.h"
#include "xclHALProxy.h"
#if defined(DSA64)
#include "xvectorswizzle_hw_64.h"
#else
#include "xvectorswizzle_hw.h"
#endif



#define DATA_SIZE 4096

/*
 * Simple example which runs vector swizzle OpenCL kernel. Does not use OpenCL
 * runtime but directly exercises the HAL driver API.
 */


struct Buffers {
    // DATA_SIZE / 4 count int4 vectors
    int *host; // arg 0 buffer
    int *scratch;
    int reference[DATA_SIZE]; // host computed reference value
    uint64_t device;
    Buffers(size_t alignment) : host(0), scratch(0) {
        posix_memalign((void **)&host, alignment, DATA_SIZE * sizeof(int));
        posix_memalign((void **)&scratch, alignment, DATA_SIZE * sizeof(int));

        for (int i = 0; i < DATA_SIZE; i++) {
            host[i] = i;
            scratch[i] = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII)
            int val = 0;
            if(i%4==0)  val = i+2;
            if(i%4==1)  val = i+2;
            if(i%4==2)  val = i-2;
            if(i%4==3)  val = i-2;
            reference[i] = val;
        }
    }
    size_t size() const {
        return DATA_SIZE * sizeof(int);
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


static int runKernel(xclHALProxy &proxy, Buffers &buffers, size_t alignment, bool verbose)
{
    const size_t controlSize = 96; // align to 32 byte
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_GROUP_ID_X_DATA/4] = 0x0; // group id
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_A_DATA/4] = (unsigned)buffers.device; // s1 buffer
#if defined(DSA64)
    regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_A_DATA/4 + 1] = (buffers.device >> 32) & 0xFFFFFFFF; // s1 buffer
#endif

    const timespec interval = {0, 500};
    const size_t global[2] = {DATA_SIZE / 4}; // int4 vector count global range
    const size_t local[2] = {16}; // 16 int4 processed per work group
    const size_t groupSize = global[0] / local[0];

    std::cout << "Global range " << global[0] << "\n";
    std::cout << "Group size " << local[0] << "\n";
    std::cout << "Starting kernel...\n";

    for (size_t id = 0; id < groupSize; id++) {
        if (verbose) {
            std::cout << "group id = " << id << std::endl;
        }
        size_t result = 0;

        // First read the control registers
        result = proxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
        if (result != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }
        for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
            std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
        }

        regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_AP_CTRL] = 0x0; // reset the ap_start
        regMap.getBuffer()[XVECTORSWIZZLE_CONTROL_ADDR_GROUP_ID_X_DATA/4] = id; // group id
        // Next write out the control registers except the kickoff bit
        result = proxy.writeControl(0, regMap.getBuffer(), controlSize);
        if (result != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Control Write failed\n";
            return 1;
        }

        // First read the control registers to verify the args were written
        result = proxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
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
        result = proxy.writeControl(0, regMap.getBuffer(), controlSize);
        if (result != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Control Write failed\n";
            return 1;
        }

        // Next wait for done from kernel
        std::cout << "Waiting for group id = " << id << " to finish...\n";
        bool flag = false;
        while (!flag) {
            nanosleep(&interval, 0);
            std::memset(regMapReadBack.getBuffer(), 0, 32);
            result = proxy.readControl(0, regMapReadBack.getBuffer(), 32);
            if (result != 32) {
                std::cout << "FAILED TEST\n";
                std::cout << "Control Read failed\n";
                return 1;
            }
            flag = (regMapReadBack.getBuffer()[0] & 0x6);
        }
    }
    return 0;
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

        if (runKernel(proxy, buffers, alignment, verbose))
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
