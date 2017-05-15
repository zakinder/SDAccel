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
#include "xmysequence_hw_64.h"
#else
#include "xmysequence_hw.h"
#endif

/**
 * Runs an OpenCL kernel which writes known 16 integers into a 64 byte buffer. Does not use OpenCL
 * runtime but directly exercises the HAL driver API.
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


const unsigned goldenSequence[16] = {
    0X586C0C6C,
    'X',
    0X586C0C6C,
    'I',
    0X586C0C6C,
    'L',
    0X586C0C6C,
    'I',
    0X586C0C6C,
    'N',
    0X586C0C6C,
    'X',
    0X586C0C6C,
    '\0',
    0X586C0C6C,
    '\0'
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
    AlignedAllocator<unsigned> buffer(alignment, 16);
    AlignedAllocator<unsigned> resultBuffer(alignment, 16);

    std::memset(buffer.getBuffer(), 0, buffer.size());
    std::memset(resultBuffer.getBuffer(), 0, resultBuffer.size());

    uint64_t deviceBuffer = proxy.allocateDevice(buffer.size());
    // Write out arg 0 buffer
    size_t result = proxy.migrateHost2Device(deviceBuffer, buffer.getBuffer(), buffer.size());
    if (result != buffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from host to device failed\n";
        return 1;
    }

    const size_t controlSize = 32; // align to 32 byte
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XMYSEQUENCE_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
    regMap.getBuffer()[XMYSEQUENCE_CONTROL_ADDR_A_DATA/4] = deviceBuffer; // arg a
#if defined(DSA64)
    regMap.getBuffer()[XMYSEQUENCE_CONTROL_ADDR_A_DATA/4 + 1] = (deviceBuffer >> 32) & 0xFFFFFFFF; // arg a
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
    regMap.getBuffer()[XMYSEQUENCE_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
    result = proxy.writeControl(0, regMap.getBuffer(), controlSize);
    if (result != controlSize) {
        std::cout << "FAILED TEST\n";
        std::cout << "Write failed\n";
        return 1;
    }

    // Next wait for done from kernel
    bool flag = false;
    const timespec interval = {0, 500000000};

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

    // Readback result
    result = proxy.migrateDevice2Host(deviceBuffer, resultBuffer.getBuffer(), resultBuffer.size());
    if (result != resultBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }

    result = std::memcmp(goldenSequence, resultBuffer.getBuffer(), resultBuffer.size());
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
