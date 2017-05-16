//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Tue May 16 05:40:53 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target bd_6ad6.bd
//Design      : bd_6ad6
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_6ad6,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_6ad6,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xcl_design_debug_bridge_xsdbm_0.hwdef" *) 
module bd_6ad6
   (bscanid,
    capture,
    clk,
    drck,
    reset,
    runtest,
    sel,
    shift,
    tck,
    tdi,
    tdo,
    tms,
    update);
  output [31:0]bscanid;
  input capture;
  input clk;
  input drck;
  input reset;
  input runtest;
  input sel;
  input shift;
  input tck;
  input tdi;
  output tdo;
  input tms;
  input update;

  wire capture_1;
  wire clk_1;
  wire drck_1;
  wire [31:0]lut_buffer_bscanid_o;
  wire lut_buffer_tdo_o;
  wire reset_1;
  wire runtest_1;
  wire sel_1;
  wire shift_1;
  wire tck_1;
  wire tdi_1;
  wire tms_1;
  wire update_1;
  wire [31:0]xsdbm_bscanid;
  wire xsdbm_tdo;

  assign bscanid[31:0] = lut_buffer_bscanid_o;
  assign capture_1 = capture;
  assign clk_1 = clk;
  assign drck_1 = drck;
  assign reset_1 = reset;
  assign runtest_1 = runtest;
  assign sel_1 = sel;
  assign shift_1 = shift;
  assign tck_1 = tck;
  assign tdi_1 = tdi;
  assign tdo = lut_buffer_tdo_o;
  assign tms_1 = tms;
  assign update_1 = update;
  bd_6ad6_lut_buffer_0 lut_buffer
       (.bscanid_i(xsdbm_bscanid),
        .bscanid_o(lut_buffer_bscanid_o),
        .tdo_i(xsdbm_tdo),
        .tdo_o(lut_buffer_tdo_o));
  bd_6ad6_xsdbm_0 xsdbm
       (.bscanid(xsdbm_bscanid),
        .capture(capture_1),
        .clk(clk_1),
        .drck(drck_1),
        .reset(reset_1),
        .runtest(runtest_1),
        .sel(sel_1),
        .shift(shift_1),
        .tck(tck_1),
        .tdi(tdi_1),
        .tdo(xsdbm_tdo),
        .tms(tms_1),
        .update(update_1));
endmodule
