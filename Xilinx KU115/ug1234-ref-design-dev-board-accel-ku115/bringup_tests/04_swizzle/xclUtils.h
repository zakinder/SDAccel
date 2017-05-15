#ifndef XCL_HAL_UTILS_H
#define XCL_HAL_UTILS_H

#include <cstdlib>
#include <chrono>
#include <cstring>
#include <string>
#include <sys/types.h>
#include <dirent.h>

template <typename T> class AlignedAllocator {
    void *mBuffer;
    const size_t mCount;
public:
    T *getBuffer() {
        return (T *)mBuffer;
    }

    size_t size() const {
        return mCount * sizeof(T);
    }

    size_t count() const {
        return mCount;
    }

    AlignedAllocator(size_t alignment, size_t count) : mBuffer(0), mCount(count) {
        if (posix_memalign(&mBuffer, alignment, count * sizeof(T))) {
            mBuffer = 0;
        }
    }
    ~AlignedAllocator() {
        if (mBuffer)
            free(mBuffer);
    }
};

class Timer {
    std::chrono::high_resolution_clock::time_point mTimeStart;
    std::chrono::high_resolution_clock::time_point mTimeEnd;
public:
    Timer() {
        reset();
    }
    double stop() {
        mTimeEnd = std::chrono::high_resolution_clock::now();
        return std::chrono::duration_cast<std::chrono::duration<double>>(mTimeEnd- mTimeStart).count();
    }
    void reset() {
        mTimeStart = std::chrono::high_resolution_clock::now();
        mTimeEnd = mTimeStart;
    }
};

static void findSharedLibrary(std::string &library)
{
    if (!std::getenv("XILINX_OPENCL") || !std::getenv("XCL_PLATFORM"))
        return;

    std::string libraryDir = std::getenv("XILINX_OPENCL");
    libraryDir += "/runtime/platforms/";
    libraryDir += std::getenv("XCL_PLATFORM");
    libraryDir += "/driver/";

    DIR *dir = opendir(libraryDir.c_str());
    if (dir == 0)
        return;

    struct dirent *ent = 0;
    while ((ent = readdir(dir)) != 0) {
        const char *fileName = ent->d_name;
        int len = std::strlen(fileName);
        if (len <= 3)
            continue;
        if (std::strcmp(&fileName[len - 3], ".so"))
            continue;
        library = fileName;
        break;
    }
    closedir(dir);
    if (library.size() == 0) {
        return;
    }
    library.insert(0, libraryDir);
}

#endif
