#ifndef XCLHAL_PROXY_H
#define XCLHAL_PROXY_H

#include <stdexcept>
#include <cstdlib>

#include <dlfcn.h>

#include "xclhal.h"
#include "xclperf.h"

class xclHALProxy
{
private:
    typedef unsigned ( *probeFuncType)();
    typedef xclDeviceHandle (* openFuncType)(unsigned deviceIndex, const char *logFileName,
                                             xclVerbosityLevel level);
    typedef void (* closeFuncType)(xclDeviceHandle handle);
    typedef int (* loadBitstreamFuncType)(xclDeviceHandle handle, const char *fileName);
    typedef int (* resetProgramFuncType)(xclDeviceHandle handle, xclResetKind kind);
    typedef int (* getDeviceInfoFuncType)(xclDeviceHandle handle, xclDeviceInfo *info);
    typedef int (* getDeviceInfo2FuncType)(xclDeviceHandle handle, xclDeviceInfo2 *info);
    typedef int (* reClockFuncType)(xclDeviceHandle handle, unsigned targetFreqMHz);
    typedef int (* lockDeviceFuncType)(xclDeviceHandle handle);

    typedef void (* setOclRegionSlotFuncType)(xclDeviceHandle handle, uint32_t numSlots);
    typedef size_t (* clockTrainingFuncType)(xclDeviceHandle handle, xclPerfMonType type);
    typedef size_t (* startCountersFuncType)(xclDeviceHandle handle, xclPerfMonType type);
    typedef size_t (* stopCountersFuncType)(xclDeviceHandle handle, xclPerfMonType type);
    typedef size_t (* readCountersFuncType)(xclDeviceHandle handle, xclPerfMonType type,
                                            xclCounterResults& counterResults);
    typedef size_t (* startTraceFuncType)(xclDeviceHandle handle, xclPerfMonType type, uint32_t startTrigger);
    typedef size_t (* stopTraceFuncType)(xclDeviceHandle handle, xclPerfMonType type);
    typedef uint32_t (* countTraceFuncType)(xclDeviceHandle handle, xclPerfMonType type);
    typedef size_t (* readTraceFuncType)(xclDeviceHandle handle, xclPerfMonType type,
                                         xclTraceResultsVector& traceVector);

    typedef size_t (* writeFuncType)(xclDeviceHandle handle, xclAddressSpace space, uint64_t offset,
                                     const void *hostBuf, size_t size);
    typedef size_t (* readFuncType)(xclDeviceHandle handle, xclAddressSpace space, uint64_t offset,
                                    void *hostbuf, size_t size);
    typedef uint64_t (* allocDeviceBufferType)(xclDeviceHandle handle, size_t size);
    typedef uint64_t (* allocDeviceBuffer2Type)(xclDeviceHandle handle, size_t size, xclMemoryDomains domain,
                                                       unsigned flags);
    typedef void (* freeDeviceBufferType)(xclDeviceHandle handle, uint64_t buf);
    typedef size_t (* copyBufferHost2DeviceType)(xclDeviceHandle handle, uint64_t dest, const void *src,
                                                 size_t size, size_t seek);
    typedef size_t (* copyBufferDevice2HostType)(xclDeviceHandle handle, void *dest, uint64_t src,
                                                 size_t size, size_t skip);

public:
    void xclSetOclRegionProfilingNumberSlots(xclPerfMonType type, uint32_t numSlots) {
      mSetOclRegionProfilingSlots(mDeviceHandle, numSlots);
    }

    size_t xclPerfMonClockTraining(xclPerfMonType type) {
        return mClockTraining(mDeviceHandle, type);
    }

    size_t xclPerfMonStartCounters(xclPerfMonType type) {
        return mStartCounters(mDeviceHandle, type);
    }

    size_t xclPerfMonStopCounters(xclPerfMonType type) {
        return mStopCounters(mDeviceHandle, type);
    }

    size_t xclPerfMonReadCounters(xclPerfMonType type, xclCounterResults& counterResults) {
        return mReadCounters(mDeviceHandle, type, counterResults);
    }

    size_t xclPerfMonStartTrace(xclPerfMonType type, uint32_t startTrigger) {
        return mStartTrace(mDeviceHandle, type, startTrigger);
    }

    size_t xclPerfMonStopTrace(xclPerfMonType type) {
        return mStopTrace(mDeviceHandle, type);
    }

    uint32_t xclPerfMonGetTraceCount(xclPerfMonType type) {
        return mCountTrace(mDeviceHandle, type);
    }

    size_t xclPerfMonReadTrace(xclPerfMonType type, xclTraceResultsVector& traceVector) {
        return mReadTrace(mDeviceHandle, type, traceVector);
    }

    size_t xclWrite(xclAddressSpace space, uint64_t deviceOffset, const void *hostBuf, size_t size) {
        return mWrite(mDeviceHandle, space, deviceOffset, hostBuf, size);
    }

    size_t xclRead(xclAddressSpace space, uint64_t deviceOffset, void *hostBuf, size_t size) {
        return mRead(mDeviceHandle, space, deviceOffset, hostBuf, size);
    }

    size_t writeRAM(uint64_t deviceOffset, const void *hostBuf, size_t size) {
        return mWrite(mDeviceHandle, XCL_ADDR_SPACE_DEVICE_RAM, deviceOffset, hostBuf, size);
    }

    size_t readRAM(uint64_t deviceOffset, void *hostBuf, size_t size) {
        return mRead(mDeviceHandle, XCL_ADDR_SPACE_DEVICE_RAM, deviceOffset, hostBuf, size);
    }

    uint64_t allocateDevice(size_t size);

    uint64_t allocateDeviceBank(size_t size, unsigned bank = 0);

    void freeDevice(uint64_t deviceBuf) {
        mFree(mDeviceHandle, deviceBuf);
    }

    size_t migrateHost2Device(uint64_t deviceBuf, const void *hostBuf, size_t size) {
        return mCopyToDevice(mDeviceHandle, deviceBuf, hostBuf, size, 0);
    }

    size_t migrateDevice2Host(uint64_t deviceBuf, void *hostBuf, size_t size) {
        return mCopyFromDevice(mDeviceHandle, hostBuf, deviceBuf, size, 0);
    }

    size_t writeControl(uint64_t deviceOffset, const void *hostBuf, size_t size) {
        return mWrite(mDeviceHandle, XCL_ADDR_KERNEL_CTRL, deviceOffset, hostBuf, size);
    }

    size_t readControl(uint64_t deviceOffset, void *hostBuf, size_t size) {
        return mRead(mDeviceHandle, XCL_ADDR_KERNEL_CTRL, deviceOffset, hostBuf, size);
    }

    int loadBitstream(const char *fileName) {
        return mLoadBitstream(mDeviceHandle, fileName);
    }

    int resetProgram(xclResetKind kind) {
        return mResetProgram(mDeviceHandle, kind);
    }

    int scaleFrequency(unsigned freqMHz) {
        return mReClock(mDeviceHandle, freqMHz);
    }

    int lockDevice();

    int getDeviceInfo(xclDeviceInfo *info) {
        return mGetDeviceInfo(mDeviceHandle, info);
    }

    const xclDeviceInfo& getCachedInfo() const {
        return mInfoObject;
    }

    xclHALProxy(const char *shared, const char *bit, unsigned index = 0, const char *halLog = 0);

    virtual ~xclHALProxy() {
        mClose(mDeviceHandle);
        dlclose(mDriverHandle);
    }

private:
    openFuncType mOpen;
    closeFuncType mClose;
    loadBitstreamFuncType mLoadBitstream;
    resetProgramFuncType mResetProgram;
    getDeviceInfoFuncType mGetDeviceInfo;
    getDeviceInfo2FuncType mGetDeviceInfo2;
    reClockFuncType mReClock;
    lockDeviceFuncType mLockDevice;

    setOclRegionSlotFuncType mSetOclRegionProfilingSlots;
    clockTrainingFuncType mClockTraining;
    startCountersFuncType mStartCounters;
    stopCountersFuncType mStopCounters;
    readCountersFuncType mReadCounters;
    startTraceFuncType mStartTrace;
    stopTraceFuncType mStopTrace;
    countTraceFuncType mCountTrace;
    readTraceFuncType mReadTrace;

    writeFuncType mWrite;
    readFuncType mRead;
    allocDeviceBufferType mAlloc;
    allocDeviceBuffer2Type mAlloc2;
    freeDeviceBufferType mFree;
    copyBufferHost2DeviceType mCopyToDevice;
    copyBufferDevice2HostType mCopyFromDevice;
    xclDeviceHandle mDeviceHandle;
    void *mDriverHandle;
    xclDeviceInfo mInfoObject;
};
#endif
