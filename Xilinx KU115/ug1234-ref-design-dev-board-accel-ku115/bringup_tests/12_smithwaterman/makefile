
# tools and commands
#CXX = $(XILINX_SDX)/lnx64/tools/gcc/bin/g++
CXX = $(SDX_CXX_PATH)
XOCC = $(XILINX_SDX)/bin/xocc
EMCONFIGUTIL = $(XILINX_SDX)/bin/emconfigutil
RM = rm -f
CPY = cp -prf
XBINST = $(XILINX_SDX)/bin/xbinst
XBINST_DIR = xbinst/pkg/pcie

# kernel info
	
XCLBIN_1 = kernel.xclbin

KERNEL_1 = smithwaterman
KERNEL_1_XO = $(KERNEL_1).xo
KERNEL_1_SRC += kernel.cl
KERNEL_1_COMPILE_FLAGS =  
KERNEL_1_CU_1 = smithwaterman
XOS_1 += $(KERNEL_1_XO)
XOCC_LINK_OPTS_1 +=  --nk $(KERNEL_1):1:$(KERNEL_1_CU_1)

XOCC_LINK_FLAGS_1 =  

# kernel compiler settings
XDEVICE = --xdevice $(DSA)
XOCC_COMMON_OPTS = -s -g -t hw $(XDEVICE) -I .

XOCC_COMMON_OPTS += --xp prop:solution.device_repo_paths=$(PLATFORM_PATH)/$(DSA_PLATFORM)/hw

# host settings
HOST_CFLAGS = -DDSA64 -g -std=c++0x -ldl

CXXFLAGS = -D__USE_XOPEN2K8 -I$(XILINX_SDX)/runtime/src -I$(XILINX_SDX)/runtime/driver/include -I$(XILINX_SDX)/runtime/include/1_2 -L$(XILINX_SDX)/runtime/lib/x86_64 -lxilinxopencl -lpthread -lrt -llmx6.0

# host files
HOST_EXE = host.exe
HOST_SRC = main.cpp xclHALProxy.cpp

EMCONFIG_FILE = emconfig.json

# run time args
EXE_OPT = -k kernel.xclbin -s $XILINX_OPENCL/runtime/platforms/$DSA_PLATFORM/driver/libxcldrv.so
NUMDEVICES = 1

# primary build targets

.PHONY: compile all clean run copy_host_xclbin package

compile:  $(XCLBIN_1)  $(HOST_EXE)

all: clean compile run

clean:
	-$(RM) $(EMCONFIG_FILE) $(HOST_EXE)  $(XCLBIN_1)   $(XOS_1)

# kernel rules


$(KERNEL_1_XO): $(KERNEL_1_SRC)
	$(RM) $@
	$(XOCC) $(XOCC_COMMON_OPTS) -c -o $@ $+ -k $(KERNEL_1) $(KERNEL_1_COMPILE_FLAGS) $(COMPILE_EXTRA_FLAGS)


$(XCLBIN_1): $(XOS_1)
	$(XOCC) $(XOCC_COMMON_OPTS) -l -o $@ $+ $(XOCC_LINK_OPTS_1) $(XOCC_LINK_FLAGS_1) $(LINK_EXTRA_FLAGS) $(QOR_FLAGS)

# host rules

$(HOST_EXE): $(HOST_SRC)
	$(CXX) $(HOST_CFLAGS) $(CXXFLAGS) -o $@ $+
	@echo 'Compiled Host Executable: $(HOST_EXE)'

# run target
run:
	@echo 'Generating $(EMCONFIG_FILE)'
	$(EMCONFIGUTIL) --nd $(NUMDEVICES) --od . $(XDEVICE)
	@echo 'Running: ./$(HOST_EXE) $(EXE_OPT)'
	export XCL_EMULATION_MODE="true"; \
	export GEN_TEST_PLATFORM=$(DSA); \
	$(HOST_EXE) $(EXE_OPT)

# package target
package:
	@echo 'Running xbinst...'
	$(XBINST) -f $(PLATFORM_PATH)/$(DSA_PLATFORM)/$(DSA_PLATFORM).xpfm -d .


copy_host_xclbin:
	@echo 'Copying host.exe and xclbin to package'
	$(CPY) $(XCLBIN_1) $(XBINST_DIR)
	$(CPY) $(HOST_EXE) $(XBINST_DIR)

