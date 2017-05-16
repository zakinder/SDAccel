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
#include "xaddone_hw_64.h"
#else
#include "xaddone_hw.h"
#endif

#define ARRAY_SIZE 8

const static struct option long_options[] = {
    {"hal_driver",      required_argument, 0, 's'},
    {"bitstream",       required_argument, 0, 'k'},
    {"hal_logfile",     required_argument, 0, 'l'},
    {"device",          required_argument, 0, 'd'},
    {"num of elments",  required_argument, 0, 'n'},
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
    std::cout << "  -n <num of elements, default is 16>\n";
    std::cout << "  -v\n";
    std::cout << "  -h\n\n";
    std::cout << "* If HAL driver is not specified, application will try to find the HAL driver\n";
    std::cout << "  using XILINX_OPENCL and XCL_PLATFORM environment variables\n";
    std::cout << "* Bitstream is required\n";
    std::cout << "* HAL logfile is optional but useful for capturing messages from HAL driver\n";
}


static int runKernel(xclHALProxy &proxy, size_t alignment, bool verbose, size_t n_elements)
{
    const size_t DATA_SIZE = n_elements * ARRAY_SIZE;
    AlignedAllocator<unsigned long> dataBuffer(alignment, DATA_SIZE);
    AlignedAllocator<unsigned long> resultBuffer(alignment, DATA_SIZE);
    unsigned long *pInput, *pResults;
    unsigned long sw_results[DATA_SIZE];

    pInput = dataBuffer.getBuffer();
    pResults = resultBuffer.getBuffer();

    // Fill our data sets with pattern
    //
    bool bRandom = true;
    std::srand(std::time(0));
    for(size_t i = 0; i < DATA_SIZE; i++) {
        pInput[i] = bRandom ? std::rand() : i;
        pResults[i] = 0x55;
    }

    uint64_t deviceData  = proxy.allocateDevice(dataBuffer.size());
    uint64_t deviceResult = proxy.allocateDevice(resultBuffer.size());
    // Write out arg 0 buffer
    size_t result = proxy.migrateHost2Device(deviceData, dataBuffer.getBuffer(), dataBuffer.size());
    if (result != dataBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer 0 migration from host to device failed\n";
        return 1;
    }

    // Write out arg 1 buffer
    result = proxy.migrateHost2Device(deviceResult, resultBuffer.getBuffer(), resultBuffer.size());
    if (result != resultBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer 1 migration from host to device failed\n";
        return 1;
    }

    const size_t controlSize = XADDONE_CONTROL_ADDR_ELEMENTS_DATA + 4;
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_A_DATA/4] = deviceData;
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_B_DATA/4] = deviceResult;
#if defined(DSA64)
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_A_DATA/4 + 1] = (deviceData >> 32) & 0xFFFFFFFF;
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_B_DATA/4 + 1] = (deviceResult >> 32) & 0xFFFFFFFF;
#endif
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_ELEMENTS_DATA/4] = n_elements;

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
    regMap.getBuffer()[XADDONE_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
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

    //double totalTime = myclock.stop();
    // Readback result
    result = proxy.migrateDevice2Host(deviceResult, resultBuffer.getBuffer(), resultBuffer.size());
    if (result != resultBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }

#if 0
    result = std::memcmp(dataBuffer.getBuffer(), resultBuffer.getBuffer(), resultBuffer.size());
    if (result != 0) {
        std::cout << "FAILED TEST\n";
        std::cout << "Kernel generated sequence does not match golden sequence\n";
        return 1;
    }
#endif

    // Validate our results
    //
    int err = 0;
    for(size_t i = 0; i < DATA_SIZE; i++)
    {
      if (i % ARRAY_SIZE == 0)
         sw_results[i] = pInput[i]+1;
      else
         sw_results[i] = pInput[i];
    }

    for (size_t col = 0; col < n_elements; col++) {
      bool bShowResult = verbose;
      for (size_t row = 0; row < ARRAY_SIZE; row++ ) {
            if(pResults[col*ARRAY_SIZE + row] != sw_results[col*ARRAY_SIZE + row]) {
              err++;
              bShowResult = true;
              break;
            }
       }
       if (bShowResult)
       {
         std::cout<<std::hex<<"["<<col<<"]=";
         for (size_t  row = 0; row < ARRAY_SIZE; row++ )
           std::cout<<pResults[col*ARRAY_SIZE + row]<<" ";
          std::cout<<std::endl;
       }
    }

    // Account for both read and write
    if (err) {
        std::cout<<std::dec<<"FAILED TEST. mismatch count = "<<err<<std::endl;
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
    unsigned index = 0;
    int option_index = 0;
    size_t n_elements = 16;
    bool verbose = false;
    int c;
    findSharedLibrary(sharedLibrary);
    while ((c = getopt_long(argc, argv, "s:k:l:n:d:vh", long_options, &option_index)) != -1)
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
        case 'n':
            n_elements = std::atoi(optarg);
            if (n_elements == 0) {
               std::cout<<"ERR: num of elements can't be set to 0."<<std::endl;
               return 1;
            }
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
        //return -1;
    }

    if (halLogfile.size()) {
        std::cout << "Using " << halLogfile << " as HAL driver logfile\n";
    }

    try {
        std::cout << "HAL driver = " << sharedLibrary << "\n";
        std::cout << "Host buffer alignment = " << alignment << " bytes\n";
        std::cout << "Compiled kernel = " << bitstreamFile << "\n";

        xclHALProxy proxy(sharedLibrary.c_str(), bitstreamFile.c_str(), index, halLogfile.c_str());

        if (runKernel(proxy, alignment, verbose, n_elements)) {
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
