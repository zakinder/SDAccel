# MEMORY MAPPING

>The memory hierarchy defined in the OpenCL specification has the following levels:
* HOST MEMORY
* GLOBAL MEMORY
* CONSTANT GLOBAL MEMORY
* LOCAL MEMORY
* PRIVATE MEMORY

> For devices using an FPGA device, the physical mapping of the OpenCL memory model is the
following:

* Host memory is any memory connected to the host processor only.
* Global and constant memories are any memory that is connected to the FPGA device. These
are usually memory chips that are physically connected to the FPGA device. The host
processor has access to these memory banks through infrastructure in the FPGA base
device.
* Local memory is memory inside of the FPGA device. This memory is typically implemented
using block RAM elements in the FPGA fabric.
* Private memory is memory inside of the FPGA device. This memory is typically implemented
using registers in the FPGA fabric in order to minimize latency to the compute data path in
the processing element.

## HOST MEMORY
>_**[HOST PROCESSOR ONLY]:**_
* Memory accessed by kernels needs to be moved by openCL API 
## CONSTANT AND GLOBAL MEMORY 
>_**[CONNECTED TO THE FPGA DEVICE]:**_
* Typically placed into external SDRAM connected to FPGA 
* But can also be mapped to on-chip BlockRAM 
## LOCAL MEMORY 
>_**[INSIDE OF THE FPGA DEVICE]:**_
* CU-local mapped on chip, in registers or BlockRAM 
## PRIVATE MEMORY 
>_**[INSIDE OF THE FPGA DEVICE]:**_
* Work-item-private mapped on chip, in registers or BlockRAM 
* Select carefully for the right size/latency/bandwidth trade-off 

# HOST MEMORY
>The host memory is defined as the region of system memory that is only visible and accessible
to the host processor. The host processor has full control of this memory space and can read
and write from this space without any restrictions. Kernels cannot access data located in this
space. Any data needed by a kernel must be transferred into global memory so that it is
accessible by a compute unit.

# GLOBAL MEMORY
>The global memory is defined as the region of system memory that is accessible to both the
OpenCL™ host and device. The host is responsible for the allocation and deallocation of buffers
in this memory space. There is a handshake between host and device over control of the data
stored in this memory. The host processor transfers data from the host memory space into the
global memory space. Then, when a kernel is launched to process the data, the host loses access
rights to the buffer in global memory. The device takes over and is capable of reading and
writing from the global memory until the kernel execution is complete. Upon completion of the
operations associated with a kernel, the device turns control of the global memory buffer back
to the host processor. Once it has regained control of a buffer, the host processor can read and
write data to the buffer, transfer data back to the host memory, and deallocate the buffer.

# CONSTANT GLOBAL MEMORY
>Constant global memory is defined as the region of system memory that is accessible with read
and write access for the OpenCL™ host and with read-only access for the OpenCL device. As the
name implies, the typical use for this memory is to transfer constant data needed by kernel
computation from the host to the device.

# LOCAL MEMORY
>Local memory is defined as the region of system memory that is only accessible to the OpenCL™
device. The host processor has no visibility and no control on the operations that occur in this
memory space. This memory space allows read and write operations by the work items within
the same compute unit. This level of memory is typically used to store and transfer data that
must be shared by multiple work items.

# PRIVATE MEMORY
>Private memory is the region of system memory that is only accessible by a processing element
within an OpenCL™ device. This memory space can be read from and written to by a single work
item.
