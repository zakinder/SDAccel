A kernel description XML file needs to be manually created for the RTL IP to be used as an RTL kernel in SDAccel environment. The following is an example of the kernel XML file: 
```XML
<?xml version="1.0" encoding="UTF-8"?>
<root versionMajor="1" versionMinor="0">
<kernel name="input_stage" 
language="ip" 
vlnv="xilinx.com:hls:input_stage:1.0" 
attributes="" 
preferredWorkGroupSizeMultiple="0" 
workGroupSize="1">
<ports>
<port name="M_AXI_GMEM" mode="master" range="0x3FFFFFFF" dataWidth="32" portType="addressable" base="0x0"/>
<port name="S_AXI_CONTROL" mode="slave" range="0x1000" dataWidth="32" portType="addressable" base="0x0"/>
<port name="AXIS_P0" mode="write_only" dataWidth="32" portType="stream"/>
</ports>
<args>
<arg name="input" 
addressQualifier="1" 
id="0" port="M_AXI_GMEM" 
size="0x4" offset="0x10" 
hostOffset="0x0" 
hostSize="0x4" 
type="int*" />
<arg name="__xcl_gv_p0" 
addressQualifier="4" 
id="" 
port="AXIS_P0" 
size="0x4" 
offset="0x18" 
hostOffset="0x0" 
hostSize="0x4" 
type="" 
memSize="0x800"/>
</args>
</kernel>
<pipe name="xcl_pipe_p0" width="0x4" depth="0x200" linkage="internal"/>
<connection srcInst="input_stage" srcPort="p0" dstInst="xcl_pipe_p0" dstPort="S_AXIS"/>
</root>
```