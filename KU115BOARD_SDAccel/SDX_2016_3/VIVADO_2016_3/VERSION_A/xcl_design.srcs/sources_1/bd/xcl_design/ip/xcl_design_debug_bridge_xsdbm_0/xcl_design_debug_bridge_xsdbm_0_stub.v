// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:38:42 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/xcl_design_debug_bridge_xsdbm_0_stub.v
// Design      : xcl_design_debug_bridge_xsdbm_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_6ad6,Vivado 2016.3_sdx" *)
module xcl_design_debug_bridge_xsdbm_0(clk, drck, shift, tdi, update, sel, tdo, tms, tck, runtest, 
  reset, capture, bscanid)
/* synthesis syn_black_box black_box_pad_pin="clk,drck,shift,tdi,update,sel,tdo,tms,tck,runtest,reset,capture,bscanid[31:0]" */;
  input clk;
  input drck;
  input shift;
  input tdi;
  input update;
  input sel;
  output tdo;
  input tms;
  input tck;
  input runtest;
  input reset;
  input capture;
  output [31:0]bscanid;
endmodule
