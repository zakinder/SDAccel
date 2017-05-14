# Xilinx SDAccel Development Environment
[NOTES FROM UG1164](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2016_3/ug1164-sdaccel-platform-development.pdf)
![SDAccel](https://github.com/sakinder/SDAccel/blob/master/SDAccelBD_INTERNAL_BLOCKS_001.png "SDAccel")
```
Architecture to enable CPU/GPU developers to easily migrate their applications to FPGAs 
while maintaining and reusing their OpenCL, C, and C++ code in a familiar workflow. 
```
## XILINX SDAccel RELATED RECOURCES
* UG1164: SDACCEL-PLATFORM-DEVELOPMENT
* UG1023: SDACCEL DEVELOPMENT ENVIRONMENT USER GUIDE
* UG1238: SDX ENVIRONMENTS RELEASE NOTES, INSTALLATION, AND LICENSING GUIDE
* UG1234: SDACCEL PLATFORM REFERENCE DESIGN USER GUIDE DEVELOPER BOARD FOR ACCELERATION WITH KU115
* UG902 : VIVADO DESIGN SUITE USER GUIDE: HIGH-LEVEL SYNTHESIS
* UG909 : VIVADO DESIGN SUITE USER GUIDE: PARTIAL RECONFIGURATION
* UG899 : VIVADO DESIGN SUITE USER GUIDE: I/O AND CLOCK PLANNING
* UG906 : VIVADO DESIGN SUITE USER GUIDE: DESIGN ANALYSIS AND CLOSURE TECHNIQUES


## Nimbix HPC Cloud-based SDAccel Environment:
* https://www.nimbix.net/xilinx/

KEY ABBREVIATIONS RELATED TO SDAccel DEVICE
* PL  : Programmable Logic
* PS  : Processing System
* PR  : Partial Reconfiguration
* XPR : Expanded Partial Reconfiguration
* ICAP: Internal Configuration Access Port
* MCAP: Media Configuration Access Port
* SLR : Super-Logic Region
* SSI : Stacked Silicon Interconnect
* XDMA: Xilinx DMA
* APM : AXI Performance Monitor
* XCL HAL: Abstraction Layer OpenCL Hardware

NOTE : Difference between XPR and PR 
* PR IMPLEMENT KERNEL (PACKEGED RTL IP) LOGIC ONLY IN PARTIAL BIT FROM THE SDACCEL DEVELOPMENT ENVIRONMENT
* XPR IMPLEMENT KERNEL (PACKEGED RTL IP),DDR,INTERNAL INTERFACE ALL TOGETHER IN PARTIAL BIT FROM THE SDACCEL DEVELOPMENT ENVIRONMENT

## SYSTEM REQUIREMENTS
Board | Device Name | Software Version
------|-------------|-----------------
[Alpha Data ADM-PCIE-7V3](http://www.alpha-data.com/dcp/products.php?product=adm-pcie-7v3)|xilinx:adm-pcie-7v3:1ddr|[SDAccel 2016.4](https://www.xilinx.com/products/design-tools/software-zone/sdaccel.html)
[Xilinx KU115](https://www.xilinx.com/products/boards-and-kits/xcku115-2flvb2104e.html)|xilinx:xil-accel-rd-ku115:4ddr-xpr|[SDAccel 2016.4](https://www.xilinx.com/products/design-tools/software-zone/sdaccel.html)
[Alpha Data ADM-PCIE-KU3](http://www.alpha-data.com/dcp/products.php?product=adm-pcie-ku3)|xilinx:adm-pcie-ku3:2ddr-xpr|[SDAccel 2016.4](https://www.xilinx.com/products/design-tools/software-zone/sdaccel.html)

## Boards
PCIE-7V3 | Product Description
----------------|---------------------
Application |Data Center,Network Accelerator,High Performance Computing (HPC),Data Processing,System Modelling ,Market Analysis
Features | Board Format : Half-Length,low profile x8 PCIe form factor,Host I/F-PCI Express® Gen3 x8,Target Device-Xilinx® Virtex® 7 : XC7VX690T-2 - FFG1157C,ECC-SODIMM : Two 8GB ECC-SODIMM for memory speeds up to 1333MT/s,FLASH-1GBit of BPI x 16 configuration flash,Front IO-Dual SFP+ cages for high speed optical communication including 10Gigabit Ethernet.,Other IO-Dual SATA Interfaces

KU115 | Product Description
----------------|---------------------
Application | Intensive applications,specifically targeting the fast-growing markets for live video transcoding,data analytics,and artificial intelligence (AI) applications using machine learning
Features | Delivers 10-30x performance acceleration over traditional CPUs with a card designed to support 75W


PCIE-KU3 | Product Description
----------------|---------------------
Application |Data Center,Network Accelerator,High Performance Computing (HPC),Data Processing,System Modelling ,Market Analysis
Features | Board Format : Half-Length,low profile x8 PCIe form factor,Host I/F-PCI Express® Gen3 x8,Target Device-Xilinx® Virtex® 7 : XC7VX690T-2 - FFG1157C,ECC-SODIMM : Two 8GB ECC-SODIMM for memory speeds up to 1333MT/s,FLASH-1GBit of BPI x 16 configuration flash,Front IO-Dual SFP+ cages for high speed optical communication including 10Gigabit Ethernet.,Other IO-Dual SATA Interfaces

## HARDWARE PLATFORM
* SDACCEL XILINX
* OPEN CODE COMPILER (XOCC), 
* A DEVICE SUPPORT ARCHIVE (DSA)

## SOFTWARE PLATFORM
* ACCELERATOR BOARD
* SDACCEL OPENCL RUNTIME 

## XOCC IS A COMMAND LINE COMPILER 
SUPPORTS KERNELS EXPRESSED IN 
* OPENCL 
* C 
* C++ 
* RTL (SYSTEMVERILOG, VERILOG OR VHDL)

## PROGRAMMABLE DEVICE LOGIC PARTITION
* ACCEPTS THE SOFTWARE KERNEL FROM THE SDACCEL DEVELOPMENT ENVIRONMENT.

## SDX SOFTWARE
* COMPATIBLE VERSION OF VIVADO NEEDED TO CREATE OR MODIFY THE HARDWARE PLATFORM DESIGN.

## XILINX PCIE HARDWARE DEVICE CONSISTS OF TWO REGIONS
* STATIC REGION
* PROGRAMMABLE REGION

## STATIC REGION CONNECTIONS
* DDR[LOCAL HARDWARE]
* PROGRAMMABLE REGION[LOCAL HARDWARE]
* PCI-BUS[HOST HARDWARE BUS]

## PROGRAMMABLE REGION CONNECTIONS
* STATIC REGION[LOCAL HARDWARE]

## CONNECTIONS
```
THE STATIC REGION Provides the connectivity framework to the Programmable
Region, which will execute the hardware functions as defined in the software kernel.
```
## HARDWARE PLATFORM
```
Represents the physical board interface and the programmable region. The
hardware platform consists of a Vivado IP Integrator design with a target device and all interface IPs
configured and connected to the device I/Os and the programmable region. It also contains the
interface representation of the programmable region.
```
## SOFTWARE PLATFORM
```
Consists of the runtime, drivers, and software stack that are needed to enable
interaction with the hardware platform.
```
## HARDWARE FUNCTION
```
Blanket term to include either the OpenCL, C, C++, kernels or RTL IP that
defines the programmable region.
```
## STATIC REGION
```
Represents the fixed logic portion of the programmable device that manages the
design state before, during, and after partial reconfiguration of the programmable region. This logic
is not re-implemented with the programmable region.
```
## PROGRAMMABLE REGION
```
Describes the partition region that accepts the hardware functions from
the SDAccel Development Environment. The term also describes the physical resources available on
the programmable device to implement the hardware functions. Special parameters and design
considerations are required for signals that cross between the static region and the programmable
region.
```
## DEVICE SUPPORT ARCHIVE (DSA)
```
Contains all of the design and metadata needed for an SDAccel
hardware function to interact with the physical design. It is the output product of the hardware
platform design process described in this guide.
```

## PARTIAL RECONFIGURATION (PR)
The partial reconfiguration flow requires the use of a decoupler IP core to hold the design in a safe state
while the device is partially reconfigured with the hardware function.
The partial reconfiguration flow also requires several modifications to the design including
floorplanning and partition pin placement constraints to lock down the interconnect route points of the
interface signals

## EXPANDED PARTIAL RECONFIGURATION (XPR)
XPR method includes board interface logic and DDR
memory that are a part of the hardware platform design as part of the reconfigurable module.
The smaller static region contains the minimum logic needed to keep the hardware platform online and
connected while waiting to be reconfigured with the hardware function of the programmable region.
Typically with the XPR method, only the Xilinx DMA Subsystem for PCI Express, basic control interfaces,
and clock sources are contained within the “static region”. This region is floorplanned to use as little of
the device area as possible in order to maximize the available area for kernel resources. The logic
hierarchy must be designed to separate the static region logic from the expanded programmable
region, in the Vivado IP Integrator block design. 
The XPR flow expands the contents of the reconfigurable module to encompass the programmable
region as well as a large portion of the hardware platform design. The XPR
method is used to maximize the available device resources to improve results, and is also used with SSI
devices. Better performance can be achieved with the XPR flow by allowing the implementation tools
greater flexibility when placing the kernel and interface logic onto the programmable device. Both the
standard PR and XPR methods are described in the following sections and are referred to throughout
this document.

## HARDWARE PLATFORM DESIGN FLOW
Using the Vivado IP Integrator environment, you can model the hardware platform, define and
configure the static and programmable regions, configure the device interfaces, define physical
constraints to implement and validate the hardware platform, and test it with a sample kernel.


## OPENCL HARDWARE ABSTRACTION LAYER XCL HAL DRIVER API
Xilinx OpenCL Hardware Abstraction Layer or XCL HAL Driver API is required by the OpenCL runtime to
communicate with the hardware platform. It is used for downloading Xilinx FPGA bitstreams,
allocating/de-allocating OpenCL buffers, migrating OpenCL buffers between host memory and
hardware platform memory, and communicating with the OpenCL kernel on its control port.
The API supports address spaces which may be used for accessing device peripherals with their own
specific memory mapped ranges. A hardware platform may optionally have a flat memory space which
can be used to address all peripherals on the card.

### SOURCE FILES
The HAL Driver API is comprised of C-header and source files which are delivered with the SDx
installation. The files are located in <install>/ SDx/2016.3/data/sdaccel/pcie/src/ in the xclhal.zip
file.

### Device Access Operations
* unsigned xclProbe()
xclProbe should return a count of physical devices present in system that are supported by the HAL
driver. The same driver may optionally support devices of different kinds.
* xclDeviceHandle xclOpen(unsigned deviceIndex, const char *logFileName,
xclVerbosityLevel level)
xclOpen opens the device specified by deviceIndex. If logFileName is not NULL then HAL driver is
supposed to log messages into the log file. The verbosity of messages is specified by level. The API
returns a device handle that should be used for all other API operations. If the open fails, the driver
should return nullptr. Note that once a device is opened the driver should lock the device so that
if another process tries to open the same device it should get a nullptr back. xclVerbosityLevel
can have the following values:
* **XCL_QUIET** - Do not log any messages
* **XCL_INFO** - Log all info, warning and error messages
* **XCL_WARN** - Only Log warning and error messages
* **XCL_ERROR** - Only log error messages
* void xclClose(xclDeviceHandle handle)
xclClose is used to close the device which was previously opened. The driver should ensure that if
any OpenCL Compute Units are still running when the device is closed, then OCL Region is reset.
* int xclResetDevice(xclDeviceHandle handle, xclResetKind kind)
xclResetDevice is used to reset the device. Possible kinds of reset are:
XCL_RESET_KERNEL: Performs a soft reset which resets the OCL Region. This stops any running
kernels. Buffers allocated on the device are released.
XCL_RESET_FULL: Resets the full device including the Memory Controller and the DMA controller.
This is typically done via PCIe hot reset, and may be useful if the device seems hung.
int xclGetDeviceInfo2(xclDeviceHandle handle, xclDeviceInfo2 *info)
xclGetDeviceInfo2 is used to get information about the device. Caller provides a struct which is
populated by the API. For details of the struct see the xclhal.h in the xclhal.zip. This supersedes
the xclGetDeviceInfo, which will be deprecated in a future release.
* int xclLockDevice(xclDeviceHandle handle)
xclLockDevice is used to get exclusive ownership of the device. The lock is necessary before
performing buffer migration, register access or bitstream downloads. If the device is already locked
by another user xclLockDevice will return non-zero status.
* int xclReClock2(xclDeviceHandle handle, unsigned short region, const unsigned short
*targetFreqMHz);
xclReClock2 is used to change the frequency of the clocks driving the OCL region (up to two clocks
is supported)

## OPENCL KERNEL EXECUTION STEPS
1. Initialize runtime.
2. OpenCL application downloads bitstream to the device.
3. OpenCL application allocates OpenCL buffers in host memory.
4. Runtime effects PCIe DMA transfer to send the buffer from host memory to device memory.
5. Runtime signals the kernel to start via the AXI Slave port.
6. Runtime starts polling the device to monitor for done signal.
7. Kernel executes and loads/stores data from device memory.
8. When kernel is finished running, it changes the status to done.
9. Runtime effects PCIe DMA transfer to read updated buffers from device memory to host memory.
10. OpenCL application reads the buffer received from memory.


## XILINX DELIVERED DEBUG TOOLS
* Xilinx Board Swiss Army Knife (xbsak)
* The SDx system check utility (sdxsyschk)


## XILINX BOARD SWISS ARMY KNIFE (XBSAK)
Xilinx Board Swiss Army Knife (xbsak) utility is a standalone command line tool that can perform the
following board administration and debug tasks independent of SDx runtime library:
* Board administration tasks
o Flash PROM
o Reboot boards without rebooting the host
o Reset hung boards
o Query board status, sensors and PCIe AER registers
o Setting clock frequency feature for kernel
* Debug operations
o Download SDAccel binary (.xclbin) to FPGA
o DMA test for PCIe bandwidth
o Show status of compute units