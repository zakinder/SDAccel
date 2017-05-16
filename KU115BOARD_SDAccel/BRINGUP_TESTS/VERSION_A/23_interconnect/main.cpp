// Copyright (C) 2015-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>
#include <vector>
#include <thread>
#include <future>
#include <mutex>
#include <time.h>
#include <random>
#include "queue.h"
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
 * Runs an OpenCL kernel which stresses memory controller while host is
 * reading/writing to the same memory controller.
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

class BufferObject {
    xclHALProxy &halProxy;
    AlignedAllocator<unsigned> hostData;
    uint64_t deviceData;

public:
    BufferObject(xclHALProxy &proxy, size_t align, size_t size, unsigned bank = 0) : halProxy(proxy),
                                                                                     hostData(align, size/4) {
        if (size == 0) {
            deviceData = 0xffffffffffffffff;
            return;
        }
        deviceData = bank ? halProxy.allocateDeviceBank(hostData.size(), bank) : halProxy.allocateDevice(hostData.size());
        if (deviceData == 0xffffffffffffffff)
            throw std::runtime_error("Failed to allocate device buffer of size " + std::to_string(hostData.size()/1024) +
                                     " KB on bank " + std::to_string(bank));
    }

    ~BufferObject() {
        if (deviceData != 0xffffffffffffffff)
            halProxy.freeDevice(deviceData);
    }
    size_t syncToDevice() {
        return halProxy.migrateHost2Device(deviceData, hostData.getBuffer(), hostData.size());
    }
    size_t syncToHost() {
        return halProxy.migrateDevice2Host(deviceData, hostData.getBuffer(), hostData.size());
    }
    size_t size() const {
        return hostData.size();
    }

    uint64_t physical() const {
        return deviceData;
    }

    const void *virt() {
        return hostData.getBuffer();
    }
};

static bool is2ddrDevice(const xclHALProxy &proxy)
{
    const xclDeviceInfo& info = proxy.getCachedInfo();
    return std::strstr(info.mName, "2ddr") ? true : false;
}

class KernelRunner {
    xclHALProxy &halProxy;
    size_t alignment;
    BufferObject data;
    BufferObject result;
    bool verbose;
    unsigned count;

public:
    KernelRunner(xclHALProxy &proxy, size_t align,
                 size_t size) : halProxy(proxy),
                                alignment(align),
                                data(proxy, align, size * 4, 0),
                                result(proxy, align, size * 4, is2ddrDevice(proxy) ? 1 : 0),
                                verbose(false),
                                count(0) {
        data.syncToDevice();
    }

    int start() {
        const size_t controlSize = XMIGBW_CONTROL_ADDR_S2_DATA + 4;
        AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
        AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

        std::memset(regMap.getBuffer(), 0, regMap.size());
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S2_DATA/4] = data.physical(); // arg s2
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S1_DATA/4] = result.physical(); // arg s1
#if defined(DSA64)
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S2_DATA/4 + 1] = (data.physical() >> 32) & 0xFFFFFFFF; // arg s2
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_S1_DATA/4 + 1] = (result.physical() >> 32) & 0xFFFFFFFF; // arg s1
#endif

        //std::cout << count << ": Restarting kernel...\n";
        size_t rc = halProxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
        if (rc != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }

        for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
            std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
        }

        // Next write out the control registers except the kickoff bit
        rc = halProxy.writeControl(0, regMap.getBuffer(), controlSize);
        if (rc != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }

        // First read the control registers to verify the args were written
        rc = halProxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
        if (rc != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }

        for (unsigned i = 0; verbose & (i < controlSize/4); i++) {
            std::cout << "0x" << std::hex << i * 4 << " : 0x" << regMapReadBack.getBuffer()[i] << std::dec << std::endl;
        }

        // Next kickoff the kernel
        regMap.getBuffer()[XMIGBW_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
        rc = halProxy.writeControl(0, regMap.getBuffer(), controlSize);
        if (rc != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return 1;
        }
        count++;
        return 0;
    }

    int poll(const timespec &interval) {
        nanosleep(&interval, 0);
        const size_t controlSize = XMIGBW_CONTROL_ADDR_S2_DATA + 4;
        AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);
        std::memset(regMapReadBack.getBuffer(), 0, controlSize);
        size_t rc = halProxy.readControl(0, regMapReadBack.getBuffer(), controlSize);
        if (rc != controlSize) {
            std::cout << "FAILED TEST\n";
            std::cout << "Write failed\n";
            return -1;
        }
        return (regMapReadBack.getBuffer()[0] & 0x6) ? 0 : 1;
    }

    int finish() {
        // Readback result
        std::cout << "Kernel finished...\n";
        result.syncToHost();
        return std::memcmp(data.virt(), result.virt(), result.size());
    }

    unsigned counter() const {
        return count;
    }
};


static Queue<BufferObject*> myQueueWrite;
static Queue<BufferObject*> myQueueRead;

static unsigned thr_func_write()
{
    for (unsigned i = 0;; i++) {
        BufferObject *bo = myQueueWrite.pop();
        if (bo->size() == 0) {
            myQueueRead.push(bo);
            return i;
        }
        bo->syncToDevice();
        myQueueRead.push(bo);
    }
}

static unsigned thr_func_read()
{
    for (unsigned i = 0;; i++) {
        BufferObject *bo = myQueueRead.pop();
        if (bo->size() == 0)
            return i;
        bo->syncToHost();
    }
}

static int stress(xclHALProxy &proxy, KernelRunner &runner, unsigned iteration, size_t total)
{
    std::vector<BufferObject*> boList;
    std::default_random_engine generator;
    std::uniform_int_distribution<int> distribution(0, 0x4000000);
    long long sum = 0;
    unsigned bank = 0;
    // Create a pool of buffer objects
    const unsigned mod = is2ddrDevice(proxy) ? 0x1 : 0x0;
    while (sum < total) {
        boList.emplace_back(new BufferObject(proxy, 128, distribution(generator), bank & mod));
        sum += boList.back()->size();
        bank++;
    }

    // Launch thread which migrates buffers to device while another thread migrates it back
    std::future<unsigned> fuWrite = std::async(std::launch::async, thr_func_write);
    std::future<unsigned> fuRead = std::async(std::launch::async, thr_func_read);

    const timespec interval = {0, 500};
    // Start the kernel
    runner.start();
    size_t size = 0;
    const unsigned threshold = 5;

    for (int i = 0; i < iteration; i++) {
        if (i % threshold == 0) std::cout << "Iteration: " << i << std::endl;
        for (BufferObject *bo : boList) {
            myQueueWrite.push(bo);
            size += bo->size();
            // If kernel finished restart the kernel
            if (runner.poll(interval) == 0) runner.start();
        }
    }

    // If buffers are still remaining to be sent to the device, drain them now
    while (myQueueWrite.size()) {
        // Restart kernel if finished
        if (runner.poll(interval) == 0) {
            runner.start();
            if (myQueueWrite.size() % threshold == 0) {
                std::cout << "Pending write queue size: " << myQueueWrite.size() << std::endl;
                std::cout << "Pending read queue size: " << myQueueRead.size() << std::endl;
            }
        }
    }

    // Send the sentinel which will terminate the migrater to/from threads
    BufferObject marker(proxy, 128, 0);
    myQueueWrite.push(&marker);
    unsigned count1 = fuWrite.get();
    unsigned count2 = fuRead.get();
    std::cout << count1 + count2 << " concurrent host buffer reads/writes with running kernel" << std::endl;
    std::cout << size/1048576 << " MB * 2 data transfer" << std::endl;
    std::cout << runner.counter() << " kernel launches" << std::endl;
    while (runner.poll(interval) != 0);
    return runner.finish();
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
    unsigned iteration = 10;
    size_t total = 0x100000000;
    int c;
    findSharedLibrary(sharedLibrary);
    while ((c = getopt_long(argc, argv, "s:k:l:d:i:t:vh", long_options, &option_index)) != -1)
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
        case 'i':
            iteration = std::atoi(optarg);
            break;
        case 't':
        {
            const std::string tmp(optarg);
            if ((tmp[0] == '0') && (std::tolower(tmp[1]) == 'x')) {
                total = std::stoll(tmp, 0, 16);
            }
            else {
                total = std::stoll(tmp, 0, 10);
            }
            break;
        }
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
        KernelRunner krunner(proxy, alignment, BLOCK_SIZE * STRESS_COUNT);
        if (stress(proxy, krunner, iteration, total)) {
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
