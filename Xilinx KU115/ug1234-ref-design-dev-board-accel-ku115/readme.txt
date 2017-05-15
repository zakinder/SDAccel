*************************************************************************
Vendor: Xilinx
Current readme.txt Version: 1.0.0
Date Last Modified: 30NOV2016
Date Created: 30NOV2016
Associated Filename: ug1234-ref-design-dev-board-accel-ku115.zip
Associated Document: UG1234, SDAccel Platform Reference Design User Guide
Developer Board for Acceleration with KU115
Supported Device(s): Kintex UltraScale KU115
This readme file contains these sections:
1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. SUPPORT
1. REVISION HISTORY
            Readme
Date        Version      Revision Description
=========================================================================
30NOV2016   1.0          Initial Xilinx release.
=========================================================================
2. OVERVIEW
This readme describes how to use the files that come with UG1234,
SDAccel Platform Reference Design User Guide: Developer Board for
Acceleration with KU115.
As described in UG1234, the zip file
ug1234-ref-design-dev-board-accel-ku115.zip contains the platform
reference design for the Xilinx Developer Board for Acceleration with
KU115, as well as the bring-up tests to run with the built DSA. This
readme describes how to build both.
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
The platform can only be successfully built using the version of Vivado
included with your SDx 2016.3 installation. Please note that this
required Vivado version is different than the standard Vivado 2016.3
release, which is not supported for building the platform.
A computer with at least 16 GB RAM is recommended to build the platform
in the version of Vivado included with your SDx 2016.3 installation.
A Linux OS installation supported by SDx 2016.3 tools and the SDAccel
Environment is required to compile and run the bring-up tests. Refer to
SDx 2016.3 installation documentation for compatibility requirements.
4. DESIGN FILE HIERARCHY
The directory structure underneath this top-level directory is:
\bringup_tests
 |   This directory contains the simple bring-up kernel tests which can
 |   be compiled for the built DSA. Refer to section 5 below for details.
 |
 +-----  \00_hello
 |       Simple memory read/write test
 |
 +-----  \01_pcie
 |       PCIe to global memory bandwidth test
 |
 +-----  \02_simple
 |       Simple kernel interaction test
 |
 +-----  \04_swizzle
 |       Vector swizzle test
 |
 +-----  \05_printf
 |       printf buffer comparison test
 |
 +-----  \06_perfmon
 |       Host to memory bus bandwidth test using performance monitor
 |
 +-----  \07_sequence
 |       Integer write to buffer test
 |
 +-----  \08_mig_bw
 |       Kernel to global memory bandwidth test
 |
 +-----  \10_multi_kernel
 |       Test for operation of two kernels running in parallel
 |
 +-----  \11_fp_mmult256
 |       Floating point matrix multiply test
 |
 +-----  \12_smithwaterman
 |       Smith-Waterman sequencing test
 |
 +-----  \13_add_one
 |       Simple add-one kernel test
 |
 +-----  \15_buffer_size
 |       Various buffer size DMA transfer test
 |
 +-----  \16_perfmon_tests
 |       Test for simple communication with the performance monitor
 |
 +-----  \17_perfmon_ocl
 |       Test to measure bus bandwidth between host and device memory
 |
 +-----  \21_reclock
 |       Test for the hardware and driver clock scaling feature
 |
 +-----  \22_verify
 |       Test to print "Hello World" to the output
 |
 +-----  \23_interconnect
 |       Test to stress memory accesses from both kernel and host
 |
\reference_design
 |   This directory contains the scripts to build the reference design
 |   and create a DSA. Refer to section 5 below for details.
 |
 +-----  \sources
 |       This directory contains subdirectories with various source types
 |       for the reference design. These sources are used automatically
 |       by the build scripts and do not require user interaction.
 |
 |           +--\bd
 |              Vivado Tcl file used to construct the IP Integrator
 |              block diagram
 |
 |           +--\boardrepo
 |              Basic board definition structure
 |
 |           +--\constraints
 |              Vivado XDC constraints file for the reference design
 |
 |           +--\hdl
 |              HDL sources for referencing modules in the block diagram
 |
 |           +--\iprepo
 |              Local repository IP cores used in the reference design
 |
 |           +--\misc
 |              Scripts used as Vivado Tcl hooks for required operations


5. INSTALLATION AND OPERATING INSTRUCTIONS

The following instructions are presented in two parts:
- Building the reference design
- Compiling and running the bring-up tests

Both parts require SDx 2016.3 to be installed. A computer with at least
16 GB RAM is recommended. A Linux OS installation supported by SDx 2016.3
tools and the SDAccel Environment is required to compile and run the
bring-up tests.

1) Building the reference design

To build the reference design and produce a DSA usable with the SDAccel
Environment, first traverse to the reference_design directory of the
extracted zip file. Using the version of Vivado included with your SDx
2016.3 installation (not the standard Vivado 2016.3 release), source the
file "run.tcl". This can be done from the Linux command line, or from the
Vivado Tcl Console before a project is created. For example:

  From the Linux command line:
  > vivado -source run.tcl

  From the Vivado Tcl Console, before a project is created:
  source run.tcl

For more information on the steps involved in building the reference
design and how to make modifications to the design, refer to UG1234
Chapter 5: Implementation.

2) Compiling and running the bring-up tests

Bring-up tests are provided as source code with makefile, and are located
within the bringup directory of the extracted zip file. These tests can
be compiled with the SDAccel System Compiler in a supported Linux OS and
then executed to check basic hardware operation with the built DSA. For
more information on recommended bring-up procedures, refer to UG1234
Chapter 6: Install, Bring-Up, and Use.

(A) Setting environment variables
A number of environment variables are required to compile the bring-
up tests. Following successful SDx 2016.3 installation, set each of the
following environment variables which are not already set in your
environment:

XILINX_SDX
Set to the directory of your installation, up to and including the 2016.3
subdirectory; e.g. /opt/Xilinx/SDx/2016.3

XILINX_OPENCL
Set to the same value as XILINX_SDX; e.g. $XILINX_SDX

XILINX_VIVADO
Set to the Vivado subdirectory of your SDx 2016.3 installation;
e.g. ${XILINX_SDX}/Vivado

LD_LIBRARY_PATH
Set to the following, without line breaks:
$XILINX_SDX/runtime/lib/x86_64:$XILINX_SDX/lib/lnx64.o:
$XILINX_VIVADO/lib/lnx64.o:$XILINX_SDX/Vivado_HLS/lnx64/tools/opencv:
$LD_LIBRARY_PATH

SDX_CXX_PATH
Set to the full path of the g++ executible used with SDx 2016.3. Refer
to the SDx 2016.3 documentation for more information on choosing a
compatible version of GCC; e.g. /usr/bin/g++

DSA
Set to the name, in VBNV format, of the DSA that will be used for
compilation of the bring-up tests. Refer to SDx 2016.3 documentation for
more information on DSA naming in the VBNV format. When using the default
DSA name from the unmodified and built reference design:
xilinx:xil-accel-rd-ku115:4ddr-xpr:3.2

PLATFORM_PATH
Set to the full path, up to but excluding the platform subdirectory, that
will be used for compilation of the bring-up tests. Refer to section (B)
below for more information on constructing a platform directory.
e.g. /home/me/my_projects/my_platforms

DSA_PLATFORM
Set to the directory name of the platform that will be used for
compilation of the bring-up tests. Refer to SDx 2016.3 documentation for
more information on platform naming. Refer to section (B) below for more
information on constructing a platform directory structure. When using
the default name from the unmodified and built reference design:
xilinx_xil-accel-rd-ku115_4ddr-xpr_3_2

(B) Creating and populating the platform directory
A populated platform directory must be constructed and accessible to the
SDAccel System Compiler for successful compilation of the bring-up tests.
Refer to UG1164: SDAccel Environment Platform Development Guide, for more
information on platform directory structure and contents.

Assuming a DSA has been built with the default name from the unmodified
reference design, the platform directory name ($DSA_PLATFORM) would be
xilinx_xil-accel-rd-ku115_4ddr-xpr_3_2, and would be fully populated with
.xpfm file, and hw and sw subdirectories, as described in UG1164. The
xilinx_xil-accel-rd-ku115_4ddr-xpr_3_2.dsa file produced by the reference
design build would be copied into the hw subdirectory. The platform
directory would be present and accessible at the following path,
as described in (A) above: ${PLATFORM_PATH}/${DSA_PLATFORM}

(C) Compiling bring-up tests
Traverse to each of the bring-up test subdirectories of interest, from
within the bringup_tests directory of the extracted zip file, and execute
the following command to clean, build, package, and copy executables:

  make clean compile package copy_host_xclbin

If steps (A) and (B) were performed correctly, this command will run
the SDAccel System Compiler flow for the desired bring-up test. The
process can take some time, and ends after the copy_host_xclbin phase.

(D) Running bring-up tests
When a bring-up test has been successfully compiled, a host executable
(.exe) and partial bitstream container (.xclbin) are created. Assuming
the PCIe accelerator card and drivers have been installed, and the board
installation process (xbinst) has been run, each bring-up test can then
be executed with the following command format, where filenames may vary
per test:

  <host_executable_file>.exe -k <xclbin_file>.xclbin

A successful run is indicated by "PASSED TEST" being printed to the
terminal. For more information on the installation prerequisites to
running bring-up tests in hardware, refer to UG1234 Chapter 6: Install,
Bring-Up, and Use.


6. SUPPORT

To obtain technical support for this reference design, contact your
Xilinx representative.
