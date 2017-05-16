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
#if PERFMON_WRITE_FILES
#include <sys/types.h>
#include <dirent.h>
#endif
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

static const char * XPAR_AXI_PERF_MON_0_SLOT_NAMES[] = {
    XPAR_AXI_PERF_MON_0_SLOT0_NAME, XPAR_AXI_PERF_MON_0_SLOT1_NAME,
    XPAR_AXI_PERF_MON_0_SLOT2_NAME, XPAR_AXI_PERF_MON_0_SLOT3_NAME,
    XPAR_AXI_PERF_MON_0_SLOT4_NAME, XPAR_AXI_PERF_MON_0_SLOT5_NAME,
    XPAR_AXI_PERF_MON_0_SLOT6_NAME, XPAR_AXI_PERF_MON_0_SLOT7_NAME
};

static const int XPAR_AXI_PERF_MON_0_SLOT_DATA_BYTES[] = {
    XPAR_AXI_PERF_MON_0_SLOT0_DATA_WIDTH/8, XPAR_AXI_PERF_MON_0_SLOT1_DATA_WIDTH/8,
    XPAR_AXI_PERF_MON_0_SLOT2_DATA_WIDTH/8, XPAR_AXI_PERF_MON_0_SLOT3_DATA_WIDTH/8,
    XPAR_AXI_PERF_MON_0_SLOT4_DATA_WIDTH/8, XPAR_AXI_PERF_MON_0_SLOT5_DATA_WIDTH/8,
    XPAR_AXI_PERF_MON_0_SLOT6_DATA_WIDTH/8, XPAR_AXI_PERF_MON_0_SLOT7_DATA_WIDTH/8
};

PerfMon::PerfMon(xclHALProxy *p_proxy, xclPerfMonType type) :
  mp_proxy(p_proxy), mType(type)
{
  mNumSlots = (type == XCL_PERF_MON_MEMORY) ?
    XPAR_AXI_PERF_MON_0_NUMBER_SLOTS : XPAR_AXI_PERF_MON_2_NUMBER_SLOTS;
  mp_proxy->xclPerfMonStartCounters(mType);
  mp_proxy->xclPerfMonStartTrace(mType, 1);
}

PerfMon::~PerfMon()
{
  mp_proxy->xclPerfMonStopCounters(mType);
  mp_proxy->xclPerfMonStopTrace(mType);
}

// ****************
// Helper Functions
// ****************

//
// Convert binary to decimal
//
int PerfMon::bin2dec(std::string str, int start, int number)
{
  return bin2dec(str.c_str(), start, number);
}

int PerfMon::bin2dec(const char* ptr, int start, int number)
{
  const char* temp_ptr = ptr + start;
  int value = 0;
  int i = 0;

  do {
    if (*temp_ptr != '0' && *temp_ptr!= '1')
      return value;
    value <<= 1;
    if(*temp_ptr=='1')
      value += 1;
    i++;
    temp_ptr++;
  } while (i < number);

  return value;
}

// Convert decimal to binary string
// NOTE: length of string is always sizeof(uint32_t) * 8
std::string PerfMon::dec2bin(uint32_t n) {
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
void PerfMon::readCounters()
{
#if PERFMON_WRITE_FILES
  FILE* ofile = fopen(COUNTERS_LOG_FILENAME, "w");
  if (ofile == NULL) {
    printf("ERROR: could not open counters file %s\n", COUNTERS_LOG_FILENAME);
    return;
  }
#endif

  xclCounterResults results;

  DEBUG("Reading APM sample interval and counters...\n");
  size_t ret = mp_proxy->xclPerfMonReadCounters(mType, results);
  DEBUG("Sample interval = %.3f usec\n", results.SampleIntervalUsec);

  // Summarize results from all sampled metric counters
  for (int s=0; s < mNumSlots; s++) {
    printf("%s Counters Results:\n", XPAR_AXI_PERF_MON_0_SLOT_NAMES[s]);
    printf("  Write Transfers: %d\n", results.WriteTranx[s]);
    printf("  Write Bytes:     %d\n", results.WriteBytes[s]);
    printf("  Write Latency:   %d\n", results.WriteLatency[s]);
    printf("  Read Transfers:  %d\n", results.ReadTranx[s]);
    printf("  Read Bytes:      %d\n", results.ReadBytes[s]);
    printf("  Read Latency:    %d\n", results.ReadLatency[s]);
  }

#if PERFMON_WRITE_FILES
  string sep = "";
  const char * colNames[] = {"Write Transfers", "Write Bytes", "Write Latency",
                             "Read Transfers", "Read Bytes", "Read Latency",};
  fprintf(ofile, "# HW Counters\n# ");
  for (int s=0; s < mNumSlots; s++) {
    for (int c=0; c < 6; c++) {
      fprintf(ofile, "%s%s %s", sep.c_str(), XPAR_AXI_PERF_MON_0_SLOT_NAMES[s], colNames[c]);
      sep = ", ";
    }
  }
  fprintf(ofile, "\n");

  for (int s=0; s < mNumSlots; s++) {
	  fprintf(ofile, "%d, %d, %d, %d, %d, %d\n",
			  results.WriteTranx[s], results.WriteBytes[s], results.WriteLatency[s],
        results.ReadTranx[s], results.ReadBytes[s], results.ReadLatency[s]);
  }

  fclose(ofile);
#endif
}

//
// Read and parse trace data from AXI Stream FIFOs
//
int PerfMon::readTrace() {
#if PERFMON_WRITE_FILES
  for (int s=0; s < mNumSlots; s++) {
    char filename[100];
    sprintf(filename, "%s%s", XPAR_AXI_PERF_MON_0_SLOT_NAMES[s],
            TRACE_LOG_TEMPLATE);

    fp[s] = fopen(filename, "w");
    if (fp[s] == NULL) {
      printf("ERROR: unable to open output file %s\n", filename);
      return -1;
    }
  }
#endif

  DEBUG("Reading and parsing APM trace...\n");
  xclTraceResultsVector vec;
  size_t ret = mp_proxy->xclPerfMonReadTrace(mType, vec);
  
  printf("Found %u device trace samples...\n", vec.mLength);
  //parseTrace(vec);

#if PERFMON_WRITE_FILES
  for (int s=0; s < mNumSlots; s++)
    fclose(fp[s]);
#endif

  return 0;
}

// Parse all trace results from vector
void PerfMon::parseTrace(xclTraceResultsVector& resultVector) {
	if (resultVector.mLength == 0)
	  return;

	uint32_t prevTimestamp = 0;
	queue<uint32_t> kernelStarts[mNumSlots];
	queue<uint32_t> writeStarts[mNumSlots];
	queue<uint32_t> readStarts[mNumSlots];
	queue<uint32_t> writeLengths[mNumSlots];
	queue<uint32_t> readLengths[mNumSlots];

	bool timestampIsHigh = true;
	uint32_t deviceTimestamp;
	uint32_t hostTimestampHigh;

	printf("Parsing %u device trace samples...\n", resultVector.mLength);

	//
	// Read and parse trace results from all AXI Stream FIFOs
	//
	for (int i=0; i < resultVector.mLength; i++) {
	  xclTraceResults trace = resultVector.mArray[i];
	  printf("Parsing trace sample %d...\n", i);

	  uint32_t timestamp = trace.Timestamp + prevTimestamp;
    if (trace.Overflow == 1)
      timestamp += LOOP_ADD_TIME;
	  prevTimestamp = timestamp;

	  // Event flags
	  if (trace.LogID == 0) {
		for (int s = 0; s < mNumSlots; s++) {
		  uint8_t flags = trace.EventFlags[s];
		  uint8_t extFlags = trace.ExtEventFlags[s];

		  printf("slot %d event flags = %s @ timestamp %d\n", s, dec2bin(flags).c_str(), timestamp);

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

			// Write to file
			fprintf(fp[s], "%s, Write, %d, %d, %d", XPAR_AXI_PERF_MON_0_SLOT_NAMES[s],
					startTime, timestamp, burstLength);
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

			// Write to file
			fprintf(fp[s], "%s, Write, %d, %d, %d", XPAR_AXI_PERF_MON_0_SLOT_NAMES[s],
					startTime, timestamp, burstLength);
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

			// Write to file
			fprintf(fp[s], "%s, Kernel, %d, %d, %d", XPAR_AXI_PERF_MON_0_SLOT_NAMES[s],
					startTime, timestamp, timestamp-startTime);
		  }
		} // for s = all slots
	  } // if logID = 0
#if 0
	  else {
		// SW/HW training
		// NOTE: as defined in xclPerfMonStartTrace, we write high then low 32 bits
		if (timestampIsHigh) {
		  hostTimestampHigh = trace.HostTimestamp;
		  deviceTimestamp = timestamp;
		}
		else {
		  uint32_t hostTimestampLow = trace.HostTimestamp;
		  uint64_t hostTimestamp = ((uint64_t)hostTimestampHigh << 32) | hostTimestampLow;
		  uint64_t hostTimestampNsec = getTimestampNsec(hostTimestamp);

	#ifdef VERBOSE
		  fprintf(global_verboselog,"[rt_device_profile] Timestamp pair: Device: 0x%X, Host: 0x%X\n",
				  deviceTimestamp, hostTimestampNsec);
	#endif

		  mDeviceTrainVector.push_back(deviceTimestamp);
		  mHostTrainVector.push_back(hostTimestampNsec);

		  if (mDeviceTrainVector.size() == NUM_TRAIN) {
			trainDeviceHostTimestamps();
			mDeviceTrainVector.clear();
			mHostTrainVector.clear();
		  }
		}

		timestampIsHigh = !timestampIsHigh;
	  } // if logID = 1
#endif
	} // for w
}
