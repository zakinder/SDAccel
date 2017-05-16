// Copyright (C) 2014-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>

#include "xclHALProxy.h"
#include "xclUtils.h"

/*
 * Trivial Hello World memory/read write test. Does not use OpenCL runtime but directly
 * exercises the HAL driver API.
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
    std::cout << "usage: %s [options]\n\n";
    std::cout << "  -s <hal_driver>\n";
    std::cout << "  -k <bitstream>\n";
    std::cout << "  -l <hal_logfile>\n";
    std::cout << "  -d <index>\n";
    std::cout << "  -v\n";
    std::cout << "  -h\n\n";
    std::cout << "* If HAL driver is not specified, application will try to find the HAL driver\n";
    std::cout << "  using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
    std::cout << "* Bitstream is optional for PR platforms since they already have the base platform\n";
    std::cout << "  hardened and can do the DMA all by themselves\n";
    std::cout << "* HAL logfile is optional but useful for capturing messages from HAL driver\n";
}


int main(int argc, char** argv)
{
    std::string sharedLibrary;
    std::string bitstreamFile;
    std::string halLogfile;
    size_t alignment = 128;
    int option_index = 0;
    bool verbose = false;
    unsigned index = 0;
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

    (void)verbose;
    if (sharedLibrary.size() == 0) {
        std::cout << "FAILED TEST\n";
        std::cout << "No HAL driver specified and the driver could not be found using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
        return -1;
    }

    if (bitstreamFile.size() == 0) {
        std::cout << "No bitstream specified and hence no bitstream will be loaded\n";
    }

    if (halLogfile.size()) {
        std::cout << "Using " << halLogfile << " as HAL driver logfile\n";
    }

    std::cout << "HAL driver = " << sharedLibrary << "\n";
    std::cout << "Host buffer alignment = " << alignment << " bytes\n";

    try {
        xclHALProxy proxy(sharedLibrary.c_str(), bitstreamFile.c_str(), index, halLogfile.c_str());

        AlignedAllocator<char> buf1(alignment, 1024);
        AlignedAllocator<char> buf2(alignment, 1024);
        std::strcpy(buf1.getBuffer(), "hello\nthis is Xilinx OpenCL memory read write test\n:-)\n");

        uint64_t deviceBuffer = proxy.allocateDevice(buf1.size());
        int result = proxy.writeRAM(deviceBuffer, buf1.getBuffer(), buf1.size());
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }
        result = proxy.readRAM(deviceBuffer, buf2.getBuffer(), buf1.size());
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }
        if (std::memcmp(buf1.getBuffer(), buf2.getBuffer(), buf1.size())) {
            std::cout << "FAILED TEST\n";
            std::cout << "Value read back does not match value written\n";
            return 1;
        }
        proxy.freeDevice(deviceBuffer);
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
