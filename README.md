# Xilinx SDAccel Development Environment
[NOTES FROM UG1164](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2016_3/ug1164-sdaccel-platform-development.pdf)
```
Architecture to enable CPU/GPU developers to easily migrate their applications to FPGAs 
while maintaining and reusing their OpenCL, C, and C++ code in a familiar workflow. 
```
## XILINX SDAccel Related Recources
* UG1164: SDACCEL-PLATFORM-DEVELOPMENT
* UG1023: SDACCEL DEVELOPMENT ENVIRONMENT USER GUIDE
* UG1238: SDX ENVIRONMENTS RELEASE NOTES, INSTALLATION, AND LICENSING GUIDE
* UG1234: SDACCEL PLATFORM REFERENCE DESIGN USER GUIDE DEVELOPER BOARD FOR ACCELERATION WITH KU115
* UG909 : Vivado Design Suite User Guide: Partial Reconfiguration
## Nimbix HPC Cloud-based SDAccel Environment:
* https://www.nimbix.net/xilinx/

KEY ABBREVIATIONS
* PL  : Programmable Logic
* PS  : Processing System
* PR  : Partial Reconfiguration
* XPR : Expanded Partial Reconfiguration
* ICAP: Internal Configuration Access Port
* MCAP: Media Configuration Access Port





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
ACCEPTS THE SOFTWARE KERNEL FROM THE SDACCEL DEVELOPMENT ENVIRONMENT.

## SDX SOFTWARE
* COMPATIBLE VERSION OF VIVADO NEEDED TO CREATE OR MODIFY THE
* HARDWARE PLATFORM DESIGN.

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

## PARTIAL RECONFIGURATION
The partial reconfiguration flow requires the use of a decoupler IP core to hold the design in a safe state
while the device is partially reconfigured with the hardware function.
The partial reconfiguration flow also requires several modifications to the design including
floorplanning and partition pin placement constraints to lock down the interconnect route points of the
interface signals













