// Copyright (C) 2014-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals, schuey
// (Modified version of 01_pcie_bw/main.cpp, copied on 5/4/16)

#include <getopt.h>
#include <iostream>
#include <stdexcept>
#include <list>

#include "xclHALProxy.h"
#include "xclUtils.h"
#include "perfmon_api.h"

/**
 * Measures bus bandwidth between host and device memory. Does not use OpenCL runtime
 * but directly exercises the HAL driver API.
 */

const static struct option long_options[] = {
    {"hal_driver",        required_argument, 0, 's'},
    {"bitstream",         required_argument, 0, 'k'},
    {"hal_logfile",       required_argument, 0, 'l'},
    {"alignment",         required_argument, 0, 'a'},
    {"device",            required_argument, 0, 'd'},
    {"verbose",           no_argument,       0, 'v'},
    {"help",              no_argument,       0, 'h'},
    {0, 0, 0, 0}
};

static void printHelp()
{
    std::cout << "usage: %s [options]\n\n";
    std::cout << "  -s <hal_driver>\n";
    std::cout << "  -k <bitstream>\n";
    std::cout << "  -l <hal_logfile>\n";
    std::cout << "  -a <alignment>\n";
    std::cout << "  -d <index>\n";
    std::cout << "  -v\n";
    std::cout << "  -h\n\n";
    std::cout << "* If HAL driver is not specified, application will try to find the HAL driver\n";
    std::cout << "  using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
    std::cout << "* Bitstream is optional for PR platforms since they already have the base platform\n";
    std::cout << "  hardened and can do the DMA all by themselves\n";
    std::cout << "* HAL logfile is optional but useful for capturing messages from HAL driver\n";
}


static int transferSizeTest(xclHALProxy &proxy, size_t alignment, unsigned maxSize)
{
    AlignedAllocator<unsigned> buf1(alignment, maxSize);
    AlignedAllocator<unsigned> buf2(alignment, maxSize);

    unsigned *writeBuffer = buf1.getBuffer();
    unsigned *readBuffer = buf2.getBuffer();

    for(unsigned j = 0; j < maxSize/4; j++){
        writeBuffer[j] = std::rand();
        readBuffer[j] = 0;
    }

    std::cout << "Running transfer test with various buffer sizes...\n";

    size_t size = 128;
    bool flag = true;
    for (unsigned i = 0; flag; i++) {
        size <<= i;
        if (size > maxSize) {
            size = maxSize;
            flag = false;
        }
        std::cout << "Size 0x" << std::hex << size << std::dec << " B\n";
        uint64_t pos = proxy.allocateDevice(size);
        size_t result = proxy.migrateHost2Device(pos, writeBuffer, size);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << size << " B write failed\n";
            return 1;
        }
        std::memset(readBuffer, 0, size);
        result = proxy.migrateDevice2Host(pos, readBuffer, size);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << size << " B read failed\n";
            return 1;
        }
        if (std::memcmp(writeBuffer, readBuffer, size)) {
            std::cout << "FAILED TEST\n";
            std::cout << size << " B verification failed\n";
            return 1;
        }
        proxy.freeDevice(pos);
    }

    return 0;
}

static int transferBenchmarkTest(xclHALProxy &proxy, size_t alignment, unsigned blockSize, unsigned count)
{
    AlignedAllocator<unsigned> buf1(alignment, blockSize);
    AlignedAllocator<unsigned> buf2(alignment, blockSize);

    unsigned *writeBuffer = buf1.getBuffer();
    unsigned *readBuffer = buf2.getBuffer();

    for(unsigned j = 0; j < blockSize/4; j++) {
        writeBuffer[j] = std::rand();
        readBuffer[j] = 0;
    }

    std::list<uint64_t> deviceHandleList;

    unsigned long long totalData = 0;
    // First try with data verification

    std::cout << "Running benchmark tests...\nWriting/reading " << count << " blocks of 0x"
              << std::hex << blockSize / 1024 << std::dec << " KB\n";
    for (unsigned int i = 0; i < count; i++)
    {
        uint64_t writeOffset = proxy.allocateDevice(blockSize);
        if (writeOffset == 0xffffffffffffffffull) {
            std::cout << "FAILED TEST\n";
            std::cout << "Could not allocate device buffer\n";
            return 1;
        }
        deviceHandleList.push_back(writeOffset);

        size_t result = proxy.migrateHost2Device(writeOffset, writeBuffer, blockSize);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << blockSize/1024 << " KB write failed\n";
            return 1;
        }
        std::memset(readBuffer, 0, blockSize);
        result = proxy.migrateDevice2Host(writeOffset, readBuffer, blockSize);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << blockSize/1024 << " KB read failed\n";
            return 1;
        }
        if (std::memcmp(writeBuffer, readBuffer, blockSize)) {
            std::cout << "FAILED TEST\n";
            std::cout << blockSize/1024 << " KB read/write verification failed\n";
            return 1;
        }
        totalData += blockSize;
    }

    totalData = 0;
    Timer myclock;

    for (std::list<uint64_t>::const_iterator i = deviceHandleList.begin(), e = deviceHandleList.end(); i != e; ++i)
    {
        uint64_t writeOffset = *i;
        size_t result = proxy.migrateHost2Device(writeOffset, writeBuffer, blockSize);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << blockSize/1024 << " KB write failed\n";
            return 1;
        }
        result = proxy.migrateDevice2Host(writeOffset, readBuffer, blockSize);
        if (result < 0) {
            std::cout << "FAILED TEST\n";
            std::cout << blockSize/1024 << " KB read failed\n";
            return 1;
        }
        totalData += blockSize;
    }

    double totalTime = myclock.stop();
    // Account for both read and write
    totalData *= 2;
    totalData /= 1024*1024;

    std::cout << "Host <-> Device PCIe RW bandwidth = " << totalData/totalTime << " MB/s\n";

    for (std::list<uint64_t>::const_iterator i = deviceHandleList.begin(), e = deviceHandleList.end(); i != e; ++i)
    {
        proxy.freeDevice(*i);
    }
    return 0;
}


int main(int argc, char** argv)
{
    std::string sharedLibrary;
    std::string bitstreamFile;
    std::string halLogfile;
    size_t alignment = 128;
    unsigned index = 0;
    int option_index = 0;
    bool verbose = false;
    int c;
    findSharedLibrary(sharedLibrary);
    while ((c = getopt_long(argc, argv, "s:k:l:a:d:vh", long_options, &option_index)) != -1)
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
        case 'a':
            alignment = std::atoi(optarg);
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
        std::cout << "No shared library specified and library couldnot be found using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
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

        // Start performance monitoring
        PerfMon perfmon(&proxy, XCL_PERF_MON_MEMORY);
        
        // Max size is 8 MB
        if (transferSizeTest(proxy, alignment, 0x7D0000) != 0) {
            std::cout << "FAILED TEST\n";
            return 1;
        }

        // Read performance results
        perfmon.readCounters();
        perfmon.readTrace();
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
