// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:iob_static:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module xcl_design_iob_static_0 (
  perst_n_in,
  perst_n_out,
  init_calib_complete_in,
  init_calib_complete_out,
  led_0_in,
  led_0_out,
  emc_clk_in,
  emc_clk_out,
  ss_o,
  ss_t,
  ss,
  flash_DQ_I,
  io0_i,
  io0_o,
  io0_t,
  io0,
  io1_i,
  io1_o,
  io1_t,
  io1,
  io2_i,
  io2_o,
  io2_t,
  io2,
  io3_i,
  io3_o,
  io3_t,
  io3
);

input wire perst_n_in;
output wire perst_n_out;
input wire init_calib_complete_in;
output wire init_calib_complete_out;
input wire led_0_in;
output wire led_0_out;
input wire emc_clk_in;
output wire emc_clk_out;
input wire ss_o;
input wire ss_t;
inout wire ss;
input wire [3 : 0] flash_DQ_I;
output wire io0_i;
input wire io0_o;
input wire io0_t;
inout wire io0;
output wire io1_i;
input wire io1_o;
input wire io1_t;
inout wire io1;
output wire io2_i;
input wire io2_o;
input wire io2_t;
inout wire io2;
output wire io3_i;
input wire io3_o;
input wire io3_t;
inout wire io3;

  iob_static inst (
    .perst_n_in(perst_n_in),
    .perst_n_out(perst_n_out),
    .init_calib_complete_in(init_calib_complete_in),
    .init_calib_complete_out(init_calib_complete_out),
    .led_0_in(led_0_in),
    .led_0_out(led_0_out),
    .emc_clk_in(emc_clk_in),
    .emc_clk_out(emc_clk_out),
    .ss_o(ss_o),
    .ss_t(ss_t),
    .ss(ss),
    .flash_DQ_I(flash_DQ_I),
    .io0_i(io0_i),
    .io0_o(io0_o),
    .io0_t(io0_t),
    .io0(io0),
    .io1_i(io1_i),
    .io1_o(io1_o),
    .io1_t(io1_t),
    .io1(io1),
    .io2_i(io2_i),
    .io2_o(io2_o),
    .io2_t(io2_t),
    .io2(io2),
    .io3_i(io3_i),
    .io3_o(io3_o),
    .io3_t(io3_t),
    .io3(io3)
  );
endmodule
