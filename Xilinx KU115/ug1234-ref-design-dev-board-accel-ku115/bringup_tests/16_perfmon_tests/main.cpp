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
#include "perfmon_parameters.h"

/**
 * Runs simple communication tests with APM. Does not use OpenCL runtime 
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

        xclPerfMonType type = XCL_PERF_MON_MEMORY;
        xclAddressSpace addressSpace = (type == XCL_PERF_MON_OCL_REGION) ?
          XCL_ADDR_KERNEL_CTRL : XCL_ADDR_SPACE_DEVICE_PERFMON;

        // Start performance monitoring
        // NOTE: keep host profiling turned on
        proxy.xclPerfMonStartCounters(type);
        proxy.xclPerfMonStartTrace(type, 1);
        
        //
        // Test 1: Simple communication with APM control register
        //
        uint32_t testValue;
        uint64_t ctrlAddress = PERFMON0_OFFSET + XAPM_CTL_OFFSET;
        proxy.xclRead(addressSpace, ctrlAddress, &testValue, 4);
        if (testValue == 0) {
          std::cout << "ERROR 1: APM control register should be non-zero" << std::endl;
          std::cout << "FAILED TEST\n";
          return 1;
        }
        else {
          std::cout << "APM control register = 0x" << std::hex << testValue << std::endl;
        }
    
        //
        // Test 2: Simple communication with APM Software-written data register
        //
        testValue = 0xDEADBEEF;
        uint64_t testAddress = PERFMON0_OFFSET + XAPM_SWD_OFFSET;
        proxy.xclWrite(addressSpace, testAddress, &testValue, 4);
        uint32_t testValue2;
        proxy.xclRead(addressSpace, testAddress, &testValue2, 4);
        if (testValue2 != testValue) {
          std::cout << "ERROR 2: Cannot write/read to APM Software-written data register\n";
          std::cout << "Read 0x" << std::hex << testValue2 << " from address 0x"
                    << testAddress << std::dec << std::endl;
          std::cout << "FAILED TEST\n";
          return 1;
        }
        else {
          std::cout << "APM Software-written data register = 0x"
                    << std::hex << testValue2 << std::endl;
        }
    
        //
        // Test 3: Perform clock training
        //
        size_t ret = proxy.xclPerfMonClockTraining(type);
        uint32_t traceCount1 = proxy.xclPerfMonGetTraceCount(type);
        if (ret == 0 || traceCount1 == 0) {
          std::cout << "ERROR 3: Cannot perform clock training to APM\n";
          std::cout << "Return values: ret = " << ret << ", count = "
                    << traceCount1 << std::endl;
          std::cout << "FAILED TEST\n";
          return 1;
        }
        else {
          std::cout << "After clock training to APM: ret = " << std::dec << ret
                    << ", count = " << traceCount1 << std::endl;
        }
    
        //
        // Test 4: Check APM trace after running traffic
        //
        
        // Max size is 8 MB
        if (transferSizeTest(proxy, alignment, 0x7D0000) != 0) {
            std::cout << "ERROR 4: Cannot run transfer size test\n";
            std::cout << "FAILED TEST\n";
            return 1;
        }
    
        uint32_t traceCount2 = proxy.xclPerfMonGetTraceCount(type);
        std::cout << "APM trace samples after transfer size test = " << traceCount2 << std::endl;
    
        //
        // Test 5: Check APM counters after running traffic
        //
        xclCounterResults cr;
        ret = proxy.xclPerfMonReadCounters(type, cr);
        std::cout << "APM tranx counters:\n"
                  << "  Slot 0: write = " << cr.WriteTranx[0]
                  << ", read = " << cr.ReadTranx[0] << std::endl
                  << "  Slot 1: write = " << cr.WriteTranx[1]
                  << ", read = " << cr.ReadTranx[1] << std::endl;
    
        // Stop performance monitoring
        proxy.xclPerfMonStopCounters(type);
        proxy.xclPerfMonStopTrace(type);
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
