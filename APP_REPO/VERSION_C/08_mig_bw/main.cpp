// Copyright (C) 2015-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>

#include <time.h>
#include "xclUtils.h"
#include "xclHALProxy.h"
#if defined(DSA64)
#include "xmigbw_hw_64.h"
#else
#include "xmigbw_hw.h"
#endif


#define BLOCK_SIZE 0x800
#define STRESS_COUNT 0x20000

/**
 * Runs an OpenCL kernel which copies BLOCK_SIZE * STRESS_COUNT integers from global memory to local
 * memory and from local memory to global memory using the HAL driver API.
 */


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


static int runKernel(xclHALProxy &proxy, size_t alignment, bool verbose)
{
    AlignedAllocator<unsigned> dataBuffer(alignment, BLOCK_SIZE * STRESS_COUNT);
    AlignedAllocator<unsigned> resultBuffer(alignment, BLOCK_SIZE * STRESS_COUNT);

    std::memset(dataBuffer.getBuffer(), 0x66, dataBuffer.size());
    std::memset(resultBuffer.getBuffer(), 0, resultBuffer.size());

    uint64_t deviceData = proxy.allocateDevice(dataBuffer.size());
    uint64_t deviceResult = proxy.allocateDevice(resultBuffer.size());
    // Write out arg 0 buffer
    size_t result = proxy.migrateHost2Device(deviceData, dataBuffer.getBuffer(), dataBuffer.size());
    if (result != dataBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from host to device failed\n";
        return 1;
    }

    const size_t controlSize = XMIGBW_CONTROL_ADDR_S2_DATA + 4;
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S2_DATA/4] = deviceData; // arg s2
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S1_DATA/4] = deviceResult; // arg s1
#if defined(DSA64)
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S2_DATA/4 + 1] = (deviceData >> 32) & 0xFFFFFFFF; // arg s2
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S1_DATA/4 + 1] = (deviceResult >> 32) & 0xFFFFFFFF; // arg s1
#endif

    std::cout << "Starting kernel...\n";
    result = proxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }

    for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
            std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
    }

    // Next write out the control registers except the kickoff bit
    result = proxy.writeControl(0, regMap.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }

    // First read the control registers to verify the args were written
    result = proxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }

    for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
        std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
    }

    // Next kickoff the kernel
    regMap.getBuffer()[XMIGBW_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
    Timer myclock;

    result = proxy.writeControl(0, regMap.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }

    // Next wait for done from kernel
    bool flag = false;
    const timespec interval = {0, 500};

    std::cout << "Waiting for kernel to finish...\n";
    while (!flag) {
        nanosleep(&interval, 0);
        std::memset(regMapReadBack.getBuffer(), 0, controlSize);
        result = proxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
        if (result != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }
        flag = (regMapReadBack.getBuffer()[0] & 0x6);
    }

    double totalTime = myclock.stop();
    // Readback result
    result = proxy.migrateDevice2Host(deviceResult, resultBuffer.getBuffer(), resultBuffer.size());
    if (result != resultBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }

    result = std::memcmp(dataBuffer.getBuffer(), resultBuffer.getBuffer(), resultBuffer.size());
    // Account for both read and write
    double totalData =  resultBuffer.size();
    totalData *= 2; // Account for read and then write per iteration
    totalData /= 0x100000; // In MB

    std::cout << "DDR <-> Kernel RW bandwidth = " << totalData/totalTime << " MB/s\n";

    if (result != 0) {
        std::cout << "FAILED TEST\n";
        std::cout << "Kernel generated sequence does not match golden sequence\n";
        return 1;
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

        if (runKernel(proxy, alignment, verbose)) {
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
