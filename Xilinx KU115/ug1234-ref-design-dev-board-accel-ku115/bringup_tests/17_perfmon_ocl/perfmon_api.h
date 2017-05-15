#ifndef PERFMON_API_H
#define PERFMON_API_H

#include <cstdlib>
#include <cstring>
#include <cstdio>
#include "xclHALProxy.h"
#include "xclperf.h"

/**
 * Low-level Profiling Test of HAL layer in SDAccel
 */
class PerfMon
{
public:
  // Constructor/destructor
  PerfMon(xclHALProxy *p_proxy);
  ~PerfMon();

public:
  // Primary functions
  void readCounters(xclPerfMonType type);
  int readTrace(xclPerfMonType type);

private:
  // Helper functions
  void parseTrace(xclPerfMonType type, xclTraceResultsVector& resultVector);
  std::string dec2bin(uint32_t n);

private:
  xclHALProxy *mp_proxy;
};

#endif
