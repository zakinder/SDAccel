//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Tue May 16 05:40:53 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target bd_6ad6_wrapper.bd
//Design      : bd_6ad6_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_6ad6_wrapper
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

  wire [31:0]bscanid;
  wire capture;
  wire clk;
  wire drck;
  wire reset;
  wire runtest;
  wire sel;
  wire shift;
  wire tck;
  wire tdi;
  wire tdo;
  wire tms;
  wire update;

  bd_6ad6 bd_6ad6_i
       (.bscanid(bscanid),
        .capture(capture),
        .clk(clk),
        .drck(drck),
        .reset(reset),
        .runtest(runtest),
        .sel(sel),
        .shift(shift),
        .tck(tck),
        .tdi(tdi),
        .tdo(tdo),
        .tms(tms),
        .update(update));
endmodule
