# Xilinx SDAccel Development Environment 
Architecture to enable CPU/GPU developers to easily migrate their applications to FPGAs 
while maintaining and reusing their OpenCL, C, and C++ code in a familiar workflow. 

XILINX SDAccel Related Recources
UG1164:
SDACCEL-PLATFORM-DEVELOPMENT

UG1023:
SDACCEL DEVELOPMENT ENVIRONMENT USER GUIDE

UG1238:
SDX ENVIRONMENTS RELEASE NOTES, INSTALLATION, AND LICENSING GUIDE

UG1234:
SDACCEL PLATFORM REFERENCE DESIGN USER GUIDE 
DEVELOPER BOARD FOR ACCELERATION WITH KU115

Nimbix HPC Cloud-based SDAccel Environment:
https://www.nimbix.net/xilinx/

HARDWARE PLATFORM
* SDACCEL XILINX
* OPEN CODE COMPILER (XOCC), 
* A DEVICE SUPPORT ARCHIVE (DSA)

SOFTWARE PLATFORM
* ACCELERATOR BOARD
* SDACCEL OPENCL RUNTIME 

XOCC IS A COMMAND LINE COMPILER 
SUPPORTS KERNELS EXPRESSED IN 
* OPENCL 
* C 
* C++ 
* RTL (SYSTEMVERILOG, VERILOG OR VHDL)

PROGRAMMABLE DEVICE LOGIC PARTITION
ACCEPTS THE SOFTWARE KERNEL FROM THE SDACCEL DEVELOPMENT ENVIRONMENT.

SDX SOFTWARE
* COMPATIBLE VERSION OF VIVADO NEEDED TO CREATE OR MODIFY THE
* HARDWARE PLATFORM DESIGN.

XILINX PCIE HARDWARE DEVICE CONSISTS OF TWO REGIONS
* STATIC REGION
* PROGRAMMABLE REGION

STATIC REGION CONNECTIONS
* DDR[LOCAL HARDWARE]
* PROGRAMMABLE REGION[LOCAL HARDWARE]
* PCI-BUS[HOST HARDWARE BUS]

PROGRAMMABLE REGION CONNECTIONS
* STATIC REGION[LOCAL HARDWARE]

CONNECTIONS
THE STATIC REGION Provides the connectivity framework to the Programmable
Region, which will execute the hardware functions as defined in the software kernel.

HARDWARE PLATFORM
Represents the physical board interface and the programmable region. The
hardware platform consists of a Vivado IP Integrator design with a target device and all interface IPs
configured and connected to the device I/Os and the programmable region. It also contains the
interface representation of the programmable region.

SOFTWARE PLATFORM 
Consists of the runtime, drivers, and software stack that are needed to enable
interaction with the hardware platform.

HARDWARE FUNCTION
Blanket term to include either the OpenCL, C, C++, kernels or RTL IP that
defines the programmable region.

STATIC REGION
Represents the fixed logic portion of the programmable device that manages the
design state before, during, and after partial reconfiguration of the programmable region. This logic
is not re-implemented with the programmable region.

PROGRAMMABLE REGION
Describes the partition region that accepts the hardware functions from
the SDAccel Development Environment. The term also describes the physical resources available on
the programmable device to implement the hardware functions. Special parameters and design
considerations are required for signals that cross between the static region and the programmable
region.

DEVICE SUPPORT ARCHIVE (DSA)
Contains all of the design and metadata needed for an SDAccel
hardware function to interact with the physical design. It is the output product of the hardware
platform design process described in this guide.

