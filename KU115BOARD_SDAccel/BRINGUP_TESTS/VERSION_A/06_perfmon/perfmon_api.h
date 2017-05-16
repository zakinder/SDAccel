#ifndef PERFMON_API_H
#define PERFMON_API_H

#include <cstdlib>
#include <cstring>
#include <cstdio>
#include "xclHALProxy.h"
#include "xclperf.h"

#define TRACE_RAW_FILENAME    "sdaccel_device_trace_raw.csv"
#define TRACE_LOG_FILENAME    "sdaccel_device_trace.csv"
#define TRACE_LOG_TEMPLATE    "_tr.log"
#define COUNTERS_LOG_FILENAME  "sdaccel_device_counters.csv"
#define METADATA_FILENAME     "xappa.meta"
#define ZPE_XLS_FILENAME      "xappa_sdaccel.xls"

#define PERFMON_DEBUG            1
#define PERFMON_WRITE_FILES      0
#define PERFMON_USE_SIMPLE_TEST  0

#if PERFMON_DEBUG
# define DEBUG(q, ...)  printf("DEBUG: " q, ##__VA_ARGS__)
#else
# define DEBUG(q, ...)
#endif

/**
 * @name Low-level Profiling Test of HAL layer in SDAccel
 */
class PerfMon
{
public:
  // Constructor/destructor
  PerfMon(xclHALProxy *p_proxy, xclPerfMonType type);
  ~PerfMon();

public:
  // Primary functions
  void readCounters();
  int readTrace();

private:
  // Helper functions
  void parseTrace(xclTraceResultsVector& resultVector);
  int bin2dec(std::string str, int start, int number);
  int bin2dec(const char* ptr, int start, int number);
  std::string dec2bin(uint32_t n);

private:
  int mNumSlots;
  xclPerfMonType mType;
  xclHALProxy *mp_proxy;
  FILE* fp[XPAR_AXI_PERF_MON_0_NUMBER_SLOTS];
};

#endif
