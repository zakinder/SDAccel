/*
 * Copyright 2014, Xilinx Inc.
 * All rights reserved.
 */

// For ahead of time (offline) compilation N has to be defined upfront.
#ifdef __xilinx__
#define N 85
#endif

/*
 * Simple pipelined kernel
 */
#ifdef __xilinx__
__attribute__ ((reqd_work_group_size(1, 1, 1)))
#endif
kernel void smithwaterman (global int *matrix,
                           global int *maxIndex,
                           global const char *s1,
                           global const char *s2)
{

    short north = 0;
    short west = 0;
    short northwest = 0;
    const short GAP = -1;
    const short MATCH = 2;
    const short MISS_MATCH = -1;
    const short CENTER = 0;
    const short NORTH = 1;
    const short NORTH_WEST = 2;
    const short WEST = 3;
    int maxValue = 0;
    int localMaxIndex = 0;
    int gid = get_global_id(0);

    // Global memory transactions have high latency
		// Data is copied to a local memory for bettern performance
    local char localS1[N];
    local char localS2[N];
    local int localMatrix[N*N];

    for (int i = 1; i < N; i++) {
        localS1[i] = s1[i];
    }
    for (int i = 1; i < N; i++) {
        localS2[i] = s2[i];
    }
    for (int i = 0; i < N * N; i++) {
        localMatrix[i] = 0;
    }

    for (short index = N; index < N * N; index++)
    {
        short dir = CENTER;
        short val = 0;
        short j = index % N;
        if (j == 0) { // Skip the first column
            west = 0;
            northwest = 0;
            continue;
        }
        short i = index / N;
        short2 temp = localMatrix[index - N];
        north = temp.x;
        const short match = (localS1[j] == localS2[i]) ? MATCH : MISS_MATCH;
        short val1 = northwest + match;

        if (val1 > val) {
            val = val1;
            dir = NORTH_WEST;
        }
        val1 = north + GAP;
        if (val1 > val) {
            val = val1;
            dir = NORTH;
        }
        val1 = west + GAP;
        if (val1 > val) {
            val = val1;
            dir = WEST;
        }
        temp.x = val;
        temp.y = dir;
        localMatrix[index] = as_int(temp);
        west = val;
        northwest = north;
        if (val > maxValue) {
            localMaxIndex = index;
            maxValue = val;
        }
    }
    *maxIndex = localMaxIndex;

    for (int i = 0; i < N * N; i++) {
        matrix[i] = localMatrix[i];
    }
}
