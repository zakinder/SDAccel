// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:17:48 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0_stub.v
// Design      : bd_6ad6_lut_buffer_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.3_sdx" *)
module bd_6ad6_lut_buffer_0(tdo_o, bscanid_o, tdo_i, bscanid_i)
/* synthesis syn_black_box black_box_pad_pin="tdo_o,bscanid_o[31:0],tdo_i,bscanid_i[31:0]" */;
  output tdo_o;
  output [31:0]bscanid_o;
  input tdo_i;
  input [31:0]bscanid_i;
endmodule
