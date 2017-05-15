// Copyright (C) 2015-2016 Xilinx Inc.
// All rights reserved.
// Author: sonals

#include <getopt.h>
#include <iostream>
#include <stdexcept>
#include <assert.h>
#include <vector>

#include <time.h>
#include "xclUtils.h"
#include "xclHALProxy.h"
#if defined(DSA64)
#include "xsmithwaterman_hw_64.h"
#else
#include "xsmithwaterman_hw.h"
#endif

static const int CENTER = 0;
static const int NORTH = 1;
static const int NORTH_WEST = 2;
static const int WEST = 3;
static const int DATA_ALIGNMENT = 32;
static const int N = 85;

typedef std::pair<int, int> Position;

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

struct KernelHostData {
    int *mMatrix;
    char *mSequence1;
    char *mSequence2;
    std::string mAlign1_swRes;
    std::string mAlign2_swRes;
    int mLength;
    int mMaxIndex[DATA_ALIGNMENT/4];
    int mAlignedLength;
    std::string mKernelFile;

    void fillRandom() {
        static const char repo[] = "ATCG";
        mSequence1[0] = '-';
        mSequence2[0] = '-';
        int i = 1;
        std::srand(std::time(0));
        for (; i < mLength; i++) {
            const int index1 = std::rand() % (sizeof(repo) - 1);
            const int index2 = std::rand() % (sizeof(repo) - 1);
            mSequence1[i] = repo[index1];
            mSequence2[i] = repo[index2];
        }
        mSequence1[i] = '\0';
        mSequence2[i] = '\0';
    }

    void fillFixed() {
        std::strcpy(mSequence1, "-TAGGCAAGACCACTTTAGCATGGTCTACAACGCCTAGACCTTTGGCAAAGCAGATCGGCCCGCCCATCACTAGTGGGACTATCC");
        std::strcpy(mSequence2, "-TAATGGGAACACCTGCTGCAATCGGATCGTTGCAGCGGTAATGTGTCGGTATATGCGAGTAGGGTAATCCAAACGTCCCATTGC");
        mAlign1_swRes = "T-A-GGCAAGACCACT-TTAGC-AT-GG-TC--TACAACGCCTAGACCT-T-T-GGCA-AAGCAGA-T-CGG----CC---CG-CCCAT";
        mAlign2_swRes = "TAATGGGAACA-C-CTGCT-GCAATCGGATCGTTGCAGCG-GTA-A--TGTGTCGGTATATGC-GAGTAGGGTAATCCAAACGTCCCAT";
    }

    void fillZeros() {
        std::memset(mMatrix, 0, mLength * mLength * 4);
    }

    void initHelper(int length) {
        mLength = length + 1; // one extra space for first row and column with zeros
        mAlignedLength = mLength;
        int delta = mAlignedLength % DATA_ALIGNMENT;
        if (delta) {
            delta = DATA_ALIGNMENT - delta;
        }
        mAlignedLength += delta;
        mMatrix = new int[mAlignedLength * mAlignedLength];
        mSequence1 = new char[mAlignedLength + 1]; // extra spaces for '\0' at end
        mSequence2 = new char[mAlignedLength + 1]; // extra spaces for '\0' at end
        fillZeros();
    }

    void randomInit(int length) {
        initHelper(length);
        fillRandom();
    }

    void fixedInit() {
        initHelper(N - 1);
        fillFixed();
    }
};

static Position findMaximum(const KernelHostData& hostData)
{
    //int max = 0;
    Position pos;
    pos.first = hostData.mMaxIndex[0] / hostData.mLength;
    pos.second = hostData.mMaxIndex[0] % hostData.mLength;
    return pos;
}


static Position findPrev(const KernelHostData& hostData, const Position& current)
{
    int val = hostData.mMatrix[current.first * hostData.mLength + current.second];
    val &= 0xFFFF0000;
    val >>= 16;
    switch (val) {
    case NORTH:
        return std::make_pair(current.first - 1, current.second);
    case WEST:
        return std::make_pair(current.first, current.second - 1);
    case NORTH_WEST:
        return std::make_pair(current.first - 1, current.second - 1);
    default:
        return std::make_pair(-1, -1);
    }
}


static void printMatrix(const KernelHostData& hostData)
{
    std::cout << "\nMatrix " << hostData.mLength << " x " << hostData.mLength << "\n";
    std::cout << " ";
    for (int i = 0; i < hostData.mLength; i++)
    {
        std::cout << " ";
        std::cout.width(2);
        std::cout << hostData.mSequence1[i];
        std::cout.width();
    }
    for (int index = 0; index < hostData.mLength * hostData.mLength; index++)
    {
        int i = index / hostData.mLength;
        int j = index % hostData.mLength;
        if (j == 0) {
            std::cout << "\n" << hostData.mSequence2[i];
        }
        std::cout << " ";
        std::cout.width(2);
        unsigned val = (unsigned)hostData.mMatrix[index];
        val &= 0x0000ffff;
        std::cout << val;
        std::cout.width();
    }
    std::cout << std::endl;

    std::cout << "\nTracePath " << hostData.mLength << " x " << hostData.mLength << "\n";
    std::cout << " ";
    for (int i = 0; i < hostData.mLength; i++)
    {
        std::cout << "  ";
        std::cout.width(2);
        std::cout << hostData.mSequence1[i];
        std::cout.width();
    }
    for (int index = 0; index < hostData.mLength * hostData.mLength; index++)
    {
        int i = index / hostData.mLength;
        int j = index % hostData.mLength;
        if (j == 0) {
            std::cout << "\n" << hostData.mSequence2[i];
        }

        std::cout << " ";
        const char *buf = 0;
        unsigned val = (unsigned)hostData.mMatrix[index];
        val &= 0xffff0000;
        val >>= 16;
        switch(val) {
        case NORTH:
            buf = "NN";
            break;
        case WEST:
            buf = "WW";
            break;
        case NORTH_WEST:
            buf = "NW";
            break;
        case CENTER:
            buf = "--";
            break;
        default:
            buf = "??";
            //std::assert(false);
            break;
        }

        std::cout << " " << buf;
    }
    std::cout << std::endl;
}


static int printSimilarity(const KernelHostData& hostData, bool bVerify)
{
    std::vector<char> alignment1, alignment2;
    Position current = findMaximum(hostData);
    Position prev = findPrev(hostData, current);

    while (current != prev) {
        if (hostData.mMatrix[current.first * hostData.mLength + current.second] == 0) {
            break;
        }

        if (prev.first == current.first) {
            alignment2.insert(alignment2.begin(), '-');
        } else {
            alignment2.insert(alignment2.begin(), hostData.mSequence2[current.first]);
        }

        if (prev.second == current.second) {
            alignment1.insert(alignment1.begin(), '-');
        } else {
            alignment1.insert(alignment1.begin(), hostData.mSequence1[current.second]);
        }

        current = prev;
        prev = findPrev(hostData, current);
    }

    if (alignment1.size() != alignment2.size()) {
        return -1;
    }
    if (alignment1.size() == 0)
        return -1;

    if (alignment2.size() == 0)
        return -1;

    if (alignment1.size() == 1)
        return -1;

    alignment1.push_back('\0');
    alignment2.push_back('\0');

    std::cout << "\nAlign sequence1: " << &alignment1[0] << "\n";
    std::cout << "Align sequence2: " << &alignment2[0] << "\n\n";
    if (bVerify)
    {
      if ( hostData.mAlign1_swRes.compare(&alignment1[0]) || hostData.mAlign2_swRes.compare(&alignment2[0])) {
         std::cout << "\nExpected sequence1: " << hostData.mAlign1_swRes << "\n";
         std::cout << "Expected sequence1: " << hostData.mAlign2_swRes << "\n";
         return 1;
      }
    }
    return 0;
}


static int runKernel(xclHALProxy &proxy, size_t alignment, bool verbose)
{
    KernelHostData hostData;
    hostData.fixedInit();

    std::cout << "\nInput sequence1: " <<  hostData.mSequence1 + 1 << "\n";
    std::cout << "Input sequence2: " <<  hostData.mSequence2 + 1 << "\n\n";


    AlignedAllocator<char> dataBuffer(alignment, hostData.mAlignedLength);
    AlignedAllocator<char> data2Buffer(alignment, hostData.mAlignedLength);
    AlignedAllocator<unsigned> MatrixBuffer(alignment, hostData.mAlignedLength * hostData.mAlignedLength * 4);
    AlignedAllocator<unsigned> MaxIndexBuffer(alignment, sizeof(hostData.mMaxIndex));

    std::memcpy(dataBuffer.getBuffer(),  hostData.mSequence1, hostData.mAlignedLength);
    std::memcpy(data2Buffer.getBuffer(),  hostData.mSequence2, hostData.mAlignedLength);
    std::memset(MatrixBuffer.getBuffer(),  0, hostData.mAlignedLength * hostData.mAlignedLength * 4);
    std::memset(MaxIndexBuffer.getBuffer(),  0, sizeof(hostData.mMaxIndex));


    uint64_t deviceData  = proxy.allocateDevice(dataBuffer.size());
    uint64_t deviceData2 = proxy.allocateDevice(data2Buffer.size());
    uint64_t deviceMatrix = proxy.allocateDevice(MatrixBuffer.size());
    uint64_t deviceMaxIndex = proxy.allocateDevice(MaxIndexBuffer.size());

    // Write out arg 0 buffer
    size_t result = proxy.migrateHost2Device(deviceData, dataBuffer.getBuffer(), dataBuffer.size());
    if (result != dataBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from host to device failed\n";
        return 1;
    }

    result = proxy.migrateHost2Device(deviceData2, data2Buffer.getBuffer(), data2Buffer.size());
    if (result != data2Buffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from host to device failed\n";
        return 1;
    }
    const size_t controlSize = XSMITHWATERMAN_CONTROL_ADDR_S2_DATA + 8;
    AlignedAllocator<unsigned> regMap(alignment, controlSize/4);
    AlignedAllocator<unsigned> regMapReadBack(alignment, controlSize/4);

    std::memset(regMap.getBuffer(), 0, regMap.size());
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_AP_CTRL] = 0x0; // ap_start

#if defined(DSA64)
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S1_DATA/4] = deviceData & 0xFFFFFFFF; // input A
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S1_DATA/4 + 1] = (deviceData >> 32) & 0xFFFFFFFF; // input A
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S2_DATA/4] = deviceData2 & 0xFFFFFFFF; // input B
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S2_DATA/4 + 1] = (deviceData2 >> 32) & 0xFFFFFFFF; // input B
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MATRIX_DATA/4] = deviceMatrix & 0xFFFFFFFF; // output
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MATRIX_DATA/4 + 1] = (deviceMatrix >> 32) & 0xFFFFFFFF; // output
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MAXINDEX_DATA/4] = deviceMaxIndex & 0xFFFFFFFF; // output
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MAXINDEX_DATA/4 + 1] = (deviceMaxIndex >> 32) & 0xFFFFFFFF; // output
#else
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S1_DATA/4] = deviceData; // input A
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_S2_DATA/4] = deviceData2; // input B
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MATRIX_DATA/4] = deviceMatrix; // output
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_MAXINDEX_DATA/4] = deviceMaxIndex; // output
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
    regMap.getBuffer()[XSMITHWATERMAN_CONTROL_ADDR_AP_CTRL] = 0x1; // ap_start
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

    // Readback result
    result = proxy.migrateDevice2Host(deviceMatrix, MatrixBuffer.getBuffer(), MatrixBuffer.size());
    if (result != MatrixBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }
    result = proxy.migrateDevice2Host(deviceMaxIndex, MaxIndexBuffer.getBuffer(), MaxIndexBuffer.size());
    if (result != MaxIndexBuffer.size()) {
        std::cout << "FAILED TEST\n";
        std::cout << "Buffer migration from device to host failed\n";
        return 1;
    }

    std::memcpy(hostData.mMatrix, MatrixBuffer.getBuffer(),  hostData.mAlignedLength * hostData.mAlignedLength * 4);
    std::memcpy(hostData.mMaxIndex, MaxIndexBuffer.getBuffer(),  sizeof(hostData.mMaxIndex));
    // Validate our results
    //
    if (verbose) {
        printMatrix(hostData);
    }

    if (printSimilarity(hostData, 1) != 0) {
        std::cout << "FAILED TEST\n";
        return 1;
    }
    return 0;
}

int main(int argc, char** argv)
{
    std::string sharedLibrary;
    std::string bitstreamFile;
    std::string halLogfile;
    unsigned index = 0;
    size_t alignment = 128;
    int option_index = 0;
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
