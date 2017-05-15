#include "xclHALProxy.h"

#include <fstream>
#include <cstdio>
#include <cstring>
#include <iostream>

#include <unistd.h>

xclHALProxy::xclHALProxy(const char *shared, const char *bit, unsigned index, const char *halLog)
{
    mDriverHandle = dlopen(shared, RTLD_LAZY | RTLD_GLOBAL);
    if (!mDriverHandle) {
        throw std::runtime_error(dlerror());
    }

    mOpen = (openFuncType)dlsym(mDriverHandle, "xclOpen");
    if (!mOpen) {
        throw std::runtime_error(dlerror());
    }

    mClose = (closeFuncType)dlsym(mDriverHandle, "xclClose");
    if (!mClose) {
        throw std::runtime_error(dlerror());
    }

    mLoadBitstream = (loadBitstreamFuncType)dlsym(mDriverHandle, "xclLoadBitstream");
    if (!mLoadBitstream) {
        throw std::runtime_error(dlerror());
    }

    mResetProgram = (resetProgramFuncType)dlsym(mDriverHandle, "xclResetDevice");
    if (!mResetProgram) {
        throw std::runtime_error(dlerror());
    }

    mGetDeviceInfo = (getDeviceInfoFuncType)dlsym(const_cast<void *>(mDriverHandle), "xclGetDeviceInfo");
    mGetDeviceInfo2 = (getDeviceInfo2FuncType)dlsym(const_cast<void *>(mDriverHandle), "xclGetDeviceInfo2");
    mReClock = (reClockFuncType)dlsym(const_cast<void *>(mDriverHandle), "xclReClock");
    mLockDevice = (lockDeviceFuncType)dlsym(const_cast<void *>(mDriverHandle), "xclLockDevice");

    mWrite = (writeFuncType)dlsym(mDriverHandle, "xclWrite");
    if (!mWrite) {
        throw std::runtime_error(dlerror());
    }

    mRead = (readFuncType)dlsym(mDriverHandle, "xclRead");
    if (!mRead) {
        throw std::runtime_error(dlerror());
    }

    mAlloc = (allocDeviceBufferType)dlsym(mDriverHandle, "xclAllocDeviceBuffer");
    if (!mAlloc) {
        throw std::runtime_error(dlerror());
    }

    mAlloc2 = (allocDeviceBuffer2Type)dlsym(mDriverHandle, "xclAllocDeviceBuffer2");

    mFree = (freeDeviceBufferType)dlsym(mDriverHandle, "xclFreeDeviceBuffer");
    if (!mFree) {
        throw std::runtime_error(dlerror());
    }

    mCopyToDevice = (copyBufferHost2DeviceType)dlsym(mDriverHandle, "xclCopyBufferHost2Device");
    if (!mCopyToDevice) {
        throw std::runtime_error(dlerror());
    }

    mCopyFromDevice = (copyBufferDevice2HostType)dlsym(mDriverHandle, "xclCopyBufferDevice2Host");
    if (!mCopyFromDevice) {
        throw std::runtime_error(dlerror());
    };

    probeFuncType probe = (probeFuncType)dlsym(mDriverHandle, "xclProbe");
    if (!probe) {
        throw std::runtime_error(dlerror());
    };

#if 1
    mSetOclRegionProfilingSlots = (setOclRegionSlotFuncType)dlsym(mDriverHandle, "xclSetOclRegionProfilingNumberSlots");
    if (!mSetOclRegionProfilingSlots) {
        throw std::runtime_error(dlerror());
    }

    mClockTraining = (clockTrainingFuncType)dlsym(mDriverHandle, "xclPerfMonClockTraining");
    if (!mClockTraining) {
        throw std::runtime_error(dlerror());
    }

    mStartCounters = (startCountersFuncType)dlsym(mDriverHandle, "xclPerfMonStartCounters");
    if (!mStartCounters) {
        throw std::runtime_error(dlerror());
    }

    mStopCounters = (stopCountersFuncType)dlsym(mDriverHandle, "xclPerfMonStopCounters");
    if (!mStopCounters) {
        throw std::runtime_error(dlerror());
    }

    mReadCounters = (readCountersFuncType)dlsym(mDriverHandle, "xclPerfMonReadCounters");
    if (!mReadCounters) {
        throw std::runtime_error(dlerror());
    }

    mStartTrace = (startTraceFuncType)dlsym(mDriverHandle, "xclPerfMonStartTrace");
    if (!mStartTrace) {
        throw std::runtime_error(dlerror());
    }

    mStopTrace = (stopTraceFuncType)dlsym(mDriverHandle, "xclPerfMonStopTrace");
    if (!mStopTrace) {
        throw std::runtime_error(dlerror());
    }

    mCountTrace = (countTraceFuncType)dlsym(mDriverHandle, "xclPerfMonGetTraceCount");
    if (!mCountTrace) {
        throw std::runtime_error(dlerror());
    }

    mReadTrace = (readTraceFuncType)dlsym(mDriverHandle, "xclPerfMonReadTrace");
    if (!mReadTrace) {
        throw std::runtime_error(dlerror());
    }
#endif

    if (index >= probe())
        throw std::runtime_error("Cannot find device index specified");

    mDeviceHandle = mOpen(index, halLog, XCL_INFO);
    if (!mDeviceHandle)
        throw std::runtime_error("Cannot open device");

    if (mGetDeviceInfo(mDeviceHandle, &mInfoObject))
        throw std::runtime_error("Unable to obtain device information");

    std::cout << "DSA = " << mInfoObject.mName << "\n";
    std::cout << "Index = " << index << "\n";
    std::cout << "PCIe = GEN" << mInfoObject.mPCIeLinkSpeed << " x " << mInfoObject.mPCIeLinkWidth << "\n";
    std::cout << "OCL Frequency = " << mInfoObject.mOCLFrequency << " MHz" << "\n";
    std::cout << "DDR Bank = " << mInfoObject.mDDRBankCount << "\n";

    if (lockDevice())
        throw std::runtime_error("Cannot lock device");

    if (!bit || !std::strlen(bit))
        return;


    char tempFileName[1024];
    std::strcpy(tempFileName, bit);
    std::ifstream stream(bit);
    char header[18 /*6 + 4 * 3*/];
    stream.read(header, 18);

    if (stream.gcount() == 0) {
        std::cout << "Ignoring zero sized bitstream";
        return;
    }
    if (stream.gcount() != 18)
        throw std::runtime_error("Cannot read bitstream");

    if ((std::memcmp(header, "xclbin0", 8) == 0) || // New format xclbin file
        std::strncmp(header, "xclbin", 6)) { // Regular plain bit file
        if (loadBitstream(tempFileName)) {
            mClose(mDeviceHandle);
            throw std::runtime_error("Bitstream download failed");
        }
        std::cout << "Finished downloading bitstream " << bit << std::endl;
        return;
    }

    if (std::strncmp(header, "xclbin", 6) == 0) {
        throw std::runtime_error("Support for legacy xclbin has been deprecated");
    }
}


uint64_t xclHALProxy::allocateDevice(size_t size)
{
    return mAlloc(mDeviceHandle, size);
}


uint64_t xclHALProxy::allocateDeviceBank(size_t size, unsigned bank)
{
    if (mAlloc2)
        return mAlloc2(mDeviceHandle, size, XCL_MEM_DEVICE_RAM, bank);

    return 0xffffffffffffffffull;
}


int xclHALProxy::lockDevice()
{
    int result = 0;
    if (mLockDevice)
        result = mLockDevice(mDeviceHandle);
    if (result)
        std::cout << "Unable to lock device";
    return result;
}
