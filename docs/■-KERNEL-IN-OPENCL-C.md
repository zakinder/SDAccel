Expressing a Kernel in OpenCL C
The SDAccel™ environment supports the OpenCL™ language constructs and built in functions
from the OpenCL 1.0 embedded profile. The following is an example of an OpenCL kernel for
matrix multiplication that can be compiled with the SDAccel environment.
```C
__kernel __attribute__ ((reqd_work_group_size(16,16,1)))
void mult(__global int* a, __global int* b, __global int* output)
{
	int r = get_local_id(0);
	int c = get_local_id(1);
	int rank = get_local_size(0);
	int running = 0;
	for(int index = 0; index < 16; index++)
	{
		int aIndex = r*rank + index;
		int bIndex = index*rank + c;
		running += a[aIndex] * b[bIndex];
	}
	output[r*rank + c] = running;
	return;
}
```

IMPORTANT: Standard C libraries such as math.h can not be used in OpenCL C kernel. Use OpenCL built-in
C functions instead.