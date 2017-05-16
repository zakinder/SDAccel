// Filename: perfmon_api.cpp
// Author:   Paul Schumacher, Xilinx Inc.
//
// Description: API for reading counters and trace
// from APM 0 in static region
//
// Copyright 2014, Xilinx Inc.
// All rights reserved.

#include <iostream>
#include <queue>
#include <string>
#include <time.h>
#include "perfmon_api.h"
#include "xclHALProxy.h"
#include "perfmon_parameters.h"
#if defined(DSA64)
#include "xdummy_hw_64.h"
#else
#include "xdummy_hw.h"
#endif

using namespace std;

#define getBit(word, bit) (((word) >> bit) & 0x1)


PerfMon::PerfMon(xclHALProxy *p_proxy) :
  mp_proxy(p_proxy)
{
  // Base platform profiling
  mp_proxy->xclPerfMonStartCounters(XCL_PERF_MON_MEMORY);
  mp_proxy->xclPerfMonStartTrace(XCL_PERF_MON_MEMORY, 1);
  
  // OCL region profiling
  //mp_proxy->xclPerfMonStartCounters(XCL_PERF_MON_OCL_REGION);
  mp_proxy->xclPerfMonStartTrace(XCL_PERF_MON_OCL_REGION, 0);

  // Make sure there's something in trace
  mp_proxy->xclPerfMonClockTraining(XCL_PERF_MON_OCL_REGION);
  mp_proxy->xclPerfMonClockTraining(XCL_PERF_MON_OCL_REGION);
  mp_proxy->xclPerfMonClockTraining(XCL_PERF_MON_OCL_REGION);
}

PerfMon::~PerfMon()
{
  mp_proxy->xclPerfMonStopCounters(XCL_PERF_MON_MEMORY);
  mp_proxy->xclPerfMonStopTrace(XCL_PERF_MON_MEMORY);
  //mp_proxy->xclPerfMonStopCounters(XCL_PERF_MON_OCL_REGION);
  mp_proxy->xclPerfMonStopTrace(XCL_PERF_MON_OCL_REGION);
}

// ****************
// Helper Functions
// ****************

// Convert decimal to binary string
// NOTE: length of string is always sizeof(uint32_t) * 8
std::string PerfMon::dec2bin(uint32_t n) 
{
  char result[(sizeof(uint32_t) * 8) + 1];
  unsigned index = sizeof(uint32_t) * 8;
  result[index] = '\0';

  do result[ --index ] = '0' + (n & 1);
  while (n >>= 1);

  for (int i=index-1; i >= 0; --i)
  result[i] = '0';

  return std::string( result );
}

// *****************
// Primary Functions
// *****************

//
// Read performance counters from APM
//
void PerfMon::readCounters(xclPerfMonType type)
{
  xclCounterResults results;

  printf("Reading APM sample interval and counters...\n");
  size_t ret = mp_proxy->xclPerfMonReadCounters(type, results);
  printf("Sample interval = %.3f usec\n", results.SampleIntervalUsec);

  int numSlots = (type == XCL_PERF_MON_MEMORY) ? 2 : 1;
    
  // Summarize results from all sampled metric counters
  for (int s=0; s < numSlots; s++) {
    printf("%s Counters Results for slot %d:\n", s);
    printf("  Write Transfers: %d\n", results.WriteTranx[s]);
    printf("  Write Bytes:     %d\n", results.WriteBytes[s]);
    printf("  Write Latency:   %d\n", results.WriteLatency[s]);
    printf("  Read Transfers:  %d\n", results.ReadTranx[s]);
    printf("  Read Bytes:      %d\n", results.ReadBytes[s]);
    printf("  Read Latency:    %d\n", results.ReadLatency[s]);
  }
}

//
// Read and parse trace data from AXI Stream FIFOs
//
int PerfMon::readTrace(xclPerfMonType type) 
{
  printf("Reading and parsing APM trace...\n");
  
  xclTraceResultsVector vec;
  size_t ret = mp_proxy->xclPerfMonReadTrace(type, vec);

  if (vec.mLength == 0)
    return -1;

  parseTrace(type, vec);
  return 0;
}

// Parse all trace results from vector
void PerfMon::parseTrace(xclPerfMonType type, xclTraceResultsVector& resultVector) 
{
  if (resultVector.mLength == 0)
    return;

  uint32_t prevTimestamp = 0;
  queue<uint32_t> kernelStarts[XAPM_MAX_NUMBER_SLOTS];
  queue<uint32_t> writeStarts[XAPM_MAX_NUMBER_SLOTS];
  queue<uint32_t> readStarts[XAPM_MAX_NUMBER_SLOTS];
  queue<uint32_t> writeLengths[XAPM_MAX_NUMBER_SLOTS];
  queue<uint32_t> readLengths[XAPM_MAX_NUMBER_SLOTS];

  bool timestampIsHigh = true;
  uint32_t deviceTimestamp;
  uint32_t hostTimestampHigh;

  int numSlots = (type == XCL_PERF_MON_MEMORY) ? 2 : 1;
  
  printf("Parsing %u device trace samples (type = %d)...\n", resultVector.mLength, type);

  //
  // Read and parse trace results from all AXI Stream FIFOs
  //
  for (int i=0; i < resultVector.mLength; i++) {
    xclTraceResults trace = resultVector.mArray[i];
    //printf("Parsing trace sample %d...\n", i);

    uint32_t timestamp = trace.Timestamp + prevTimestamp;
    if (trace.Overflow == 1)
      timestamp += LOOP_ADD_TIME;
    prevTimestamp = timestamp;

    // Event flags
    if (trace.LogID == 0) {
      for (int s = 0; s < numSlots; s++) {
        uint8_t flags = trace.EventFlags[s];
        uint8_t extFlags = trace.ExtEventFlags[s];
        //printf("slot %d event flags = %s @ timestamp %d\n", s, dec2bin(flags).c_str(), timestamp);

        // ******
        // Writes
        // ******
        // Write start
        if (getBit(flags, XAPM_WRITE_FIRST) || getBit(flags, XAPM_WRITE_ADDR)) {
          writeStarts[s].push(timestamp);
          writeLengths[s].push(trace.WriteAddrLen[s]);
        }

        // Write end
        // NOTE: does not support out-of-order tranx
        if (getBit(flags, XAPM_WRITE_LAST) || getBit(flags, XAPM_RESPONSE)) {
          if (writeStarts[s].empty()) {
            printf("WARNING: Found write end with write start queue empty @ %d\n", timestamp);
            continue;
          }

          uint32_t startTime = writeStarts[s].front();
          uint32_t burstLength = writeLengths[s].front() + 1;

          if ((timestamp - startTime) < burstLength) {
            printf("WARNING: Found write end with incorrect latency @ %d\n", timestamp);
            continue;
          }

          writeStarts[s].pop();
          writeLengths[s].pop();
          
          printf("  Write end @ time %u (latency: %u, length: %u)\n", timestamp, timestamp - startTime, burstLength);
        }
          
        // *****
        // Reads
        // *****
        // Read start
        if (getBit(flags, XAPM_READ_FIRST) || getBit(flags, XAPM_READ_ADDR)) {
          readStarts[s].push(timestamp);
          readLengths[s].push(trace.ReadAddrLen[s]);
        }

        // Read end
        // NOTE: does not support out-of-order tranx
        if (getBit(flags, XAPM_READ_LAST)) {
          if (readStarts[s].empty()) {
            printf("WARNING: Found read end with read start queue empty @ %d\n", timestamp);
            continue;
          }

          uint32_t startTime = readStarts[s].front();
          uint32_t burstLength = readLengths[s].front() + 1;

          if ((timestamp - startTime) < burstLength) {
            printf("WARNING: Found read end with incorrect latency @ %d\n", timestamp);
            continue;
          }

          readStarts[s].pop();
          readLengths[s].pop();
          
          printf("  Read end @ time %u (latency: %u, length: %u)\n", timestamp, timestamp - startTime, burstLength);
        }
        
        // *******
        // Kernels
        // *******
        // Kernel start
        if (getBit(extFlags, XAPM_EXT_START)) {
          kernelStarts[s].push(timestamp);
          //printf("Found kernel start @ %u\n", timestamp);
        }

        // Kernel end
        if (getBit(extFlags, XAPM_EXT_STOP)) {
          if (kernelStarts[s].empty()) {
            printf("WARNING: Found kernel end with kernel start queue empty @ %d\n", timestamp);
            continue;
          }

          uint32_t startTime = kernelStarts[s].front();
          kernelStarts[s].pop();
          
          printf("  Kernel end @ time %u (latency: %u)\n", timestamp, timestamp - startTime);
        }
      } // for s = all slots
    } // if logID = 0
    else {
      // SW/HW training
      // NOTE: as defined in xclPerfMonStartTrace, we write high then low 32 bits
      if (timestampIsHigh) {
        hostTimestampHigh = trace.HostTimestamp;
        deviceTimestamp = timestamp;
      }
      else {
        uint32_t hostTimestampLow = trace.HostTimestamp;
        printf("Timestamp pair: Device: 0x%08X, Host: 0x%08X 0x%08X\n", deviceTimestamp, hostTimestampHigh, hostTimestampLow);
      }

      timestampIsHigh = !timestampIsHigh;
    } // if logID = 1
  } // for i
}
