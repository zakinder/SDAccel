Expressing a Kernel in C/C++ 
> **ONLY WORKS WITH VIVADO HLS INSIDE SDACCEL.**
The kernel for matrix multiplication can be expressed in C/C++ code that can be synthesized by
the Vivado® HLS tool. For kernels captured in this way, the SDAccel™ development
environment supports all of the optimization techniques available in Vivado HLS. The only thing
that the user has to keep in mind is that expressing kernels in this way requires compliance with
a specific function signature style.

```C
void mmult(int *a, int *b, int *output)
{
	#pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem
	#pragma HLS INTERFACE s_axilite port=a bundle=control
	#pragma HLS INTERFACE s_axilite port=b bundle=control
	#pragma HLS INTERFACE s_axilite port=output bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control
	const int rank = 16;
	int running = 0;
	int bufa[256];
	int bufb[256];
	int bufc[256];
	memcpy(bufa, (int *) a, 256*4);
	memcpy(bufb, (int *) b, 256*4);

	running=0;

	for (unsigned int c=0;c<rank;c++)
	{
		for (unsigned int r=0;r<rank;r++)
		{
			running=0;
			for (int index=0; index<rank; index++) 
			{
				#pragma HLS pipeline
				int aIndex = r*rank + index;
				int bIndex = index*rank + c;
				running += bufa[aIndex] * bufb[bIndex];
			}
			bufc[r*rank + c] = running;
		}
	}
	bufc[r*rank + c] = running;
	memcpy((int *) output, bufc, 256*4);
	return;
}
```