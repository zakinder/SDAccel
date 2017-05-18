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


// IP VLNV: xilinx.com:ip:axi_perf_mon:5.0
// IP Revision: 13

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module xcl_design_xilmonitor_apm_0 (
  s_axi_aclk,
  s_axi_aresetn,
  s_axi_awaddr,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  slot_0_axi_aclk,
  slot_0_axi_aresetn,
  slot_0_axi_awid,
  slot_0_axi_awaddr,
  slot_0_axi_awprot,
  slot_0_axi_awlen,
  slot_0_axi_awsize,
  slot_0_axi_awburst,
  slot_0_axi_awcache,
  slot_0_axi_awlock,
  slot_0_axi_awvalid,
  slot_0_axi_awready,
  slot_0_axi_wdata,
  slot_0_axi_wstrb,
  slot_0_axi_wlast,
  slot_0_axi_wvalid,
  slot_0_axi_wready,
  slot_0_axi_bid,
  slot_0_axi_bresp,
  slot_0_axi_bvalid,
  slot_0_axi_bready,
  slot_0_axi_arid,
  slot_0_axi_araddr,
  slot_0_axi_arlen,
  slot_0_axi_arsize,
  slot_0_axi_arburst,
  slot_0_axi_arcache,
  slot_0_axi_arprot,
  slot_0_axi_arlock,
  slot_0_axi_arvalid,
  slot_0_axi_arready,
  slot_0_axi_rid,
  slot_0_axi_rdata,
  slot_0_axi_rresp,
  slot_0_axi_rlast,
  slot_0_axi_rvalid,
  slot_0_axi_rready,
  slot_0_ext_trig,
  slot_0_ext_trig_stop,
  slot_1_axi_aclk,
  slot_1_axi_aresetn,
  slot_1_axi_awid,
  slot_1_axi_awaddr,
  slot_1_axi_awprot,
  slot_1_axi_awlen,
  slot_1_axi_awsize,
  slot_1_axi_awburst,
  slot_1_axi_awcache,
  slot_1_axi_awlock,
  slot_1_axi_awvalid,
  slot_1_axi_awready,
  slot_1_axi_wdata,
  slot_1_axi_wstrb,
  slot_1_axi_wlast,
  slot_1_axi_wvalid,
  slot_1_axi_wready,
  slot_1_axi_bid,
  slot_1_axi_bresp,
  slot_1_axi_bvalid,
  slot_1_axi_bready,
  slot_1_axi_arid,
  slot_1_axi_araddr,
  slot_1_axi_arlen,
  slot_1_axi_arsize,
  slot_1_axi_arburst,
  slot_1_axi_arcache,
  slot_1_axi_arprot,
  slot_1_axi_arlock,
  slot_1_axi_arvalid,
  slot_1_axi_arready,
  slot_1_axi_rid,
  slot_1_axi_rdata,
  slot_1_axi_rresp,
  slot_1_axi_rlast,
  slot_1_axi_rvalid,
  slot_1_axi_rready,
  slot_1_ext_trig,
  slot_1_ext_trig_stop,
  slot_2_axi_aclk,
  slot_2_axi_aresetn,
  slot_2_axi_awid,
  slot_2_axi_awaddr,
  slot_2_axi_awprot,
  slot_2_axi_awlen,
  slot_2_axi_awsize,
  slot_2_axi_awburst,
  slot_2_axi_awcache,
  slot_2_axi_awlock,
  slot_2_axi_awvalid,
  slot_2_axi_awready,
  slot_2_axi_wdata,
  slot_2_axi_wstrb,
  slot_2_axi_wlast,
  slot_2_axi_wvalid,
  slot_2_axi_wready,
  slot_2_axi_bid,
  slot_2_axi_bresp,
  slot_2_axi_bvalid,
  slot_2_axi_bready,
  slot_2_axi_arid,
  slot_2_axi_araddr,
  slot_2_axi_arlen,
  slot_2_axi_arsize,
  slot_2_axi_arburst,
  slot_2_axi_arcache,
  slot_2_axi_arprot,
  slot_2_axi_arlock,
  slot_2_axi_arvalid,
  slot_2_axi_arready,
  slot_2_axi_rid,
  slot_2_axi_rdata,
  slot_2_axi_rresp,
  slot_2_axi_rlast,
  slot_2_axi_rvalid,
  slot_2_axi_rready,
  slot_2_ext_trig,
  slot_2_ext_trig_stop,
  slot_3_axi_aclk,
  slot_3_axi_aresetn,
  slot_3_axi_awid,
  slot_3_axi_awaddr,
  slot_3_axi_awprot,
  slot_3_axi_awlen,
  slot_3_axi_awsize,
  slot_3_axi_awburst,
  slot_3_axi_awcache,
  slot_3_axi_awlock,
  slot_3_axi_awvalid,
  slot_3_axi_awready,
  slot_3_axi_wdata,
  slot_3_axi_wstrb,
  slot_3_axi_wlast,
  slot_3_axi_wvalid,
  slot_3_axi_wready,
  slot_3_axi_bid,
  slot_3_axi_bresp,
  slot_3_axi_bvalid,
  slot_3_axi_bready,
  slot_3_axi_arid,
  slot_3_axi_araddr,
  slot_3_axi_arlen,
  slot_3_axi_arsize,
  slot_3_axi_arburst,
  slot_3_axi_arcache,
  slot_3_axi_arprot,
  slot_3_axi_arlock,
  slot_3_axi_arvalid,
  slot_3_axi_arready,
  slot_3_axi_rid,
  slot_3_axi_rdata,
  slot_3_axi_rresp,
  slot_3_axi_rlast,
  slot_3_axi_rvalid,
  slot_3_axi_rready,
  slot_3_ext_trig,
  slot_3_ext_trig_stop,
  slot_4_axi_aclk,
  slot_4_axi_aresetn,
  slot_4_axi_awid,
  slot_4_axi_awaddr,
  slot_4_axi_awprot,
  slot_4_axi_awlen,
  slot_4_axi_awsize,
  slot_4_axi_awburst,
  slot_4_axi_awcache,
  slot_4_axi_awlock,
  slot_4_axi_awvalid,
  slot_4_axi_awready,
  slot_4_axi_wdata,
  slot_4_axi_wstrb,
  slot_4_axi_wlast,
  slot_4_axi_wvalid,
  slot_4_axi_wready,
  slot_4_axi_bid,
  slot_4_axi_bresp,
  slot_4_axi_bvalid,
  slot_4_axi_bready,
  slot_4_axi_arid,
  slot_4_axi_araddr,
  slot_4_axi_arlen,
  slot_4_axi_arsize,
  slot_4_axi_arburst,
  slot_4_axi_arcache,
  slot_4_axi_arprot,
  slot_4_axi_arlock,
  slot_4_axi_arvalid,
  slot_4_axi_arready,
  slot_4_axi_rid,
  slot_4_axi_rdata,
  slot_4_axi_rresp,
  slot_4_axi_rlast,
  slot_4_axi_rvalid,
  slot_4_axi_rready,
  slot_4_ext_trig,
  slot_4_ext_trig_stop,
  ext_clk_0,
  ext_rstn_0,
  ext_event_0_cnt_start,
  ext_event_0_cnt_stop,
  ext_event_0,
  ext_clk_1,
  ext_rstn_1,
  ext_event_1_cnt_start,
  ext_event_1_cnt_stop,
  ext_event_1,
  ext_clk_2,
  ext_rstn_2,
  ext_event_2_cnt_start,
  ext_event_2_cnt_stop,
  ext_event_2,
  ext_clk_3,
  ext_rstn_3,
  ext_event_3_cnt_start,
  ext_event_3_cnt_stop,
  ext_event_3,
  ext_clk_4,
  ext_rstn_4,
  ext_event_4_cnt_start,
  ext_event_4_cnt_stop,
  ext_event_4,
  capture_event,
  reset_event,
  core_aclk,
  core_aresetn,
  m_axis_aclk,
  m_axis_aresetn,
  m_axis_tdata,
  m_axis_tstrb,
  m_axis_tvalid,
  m_axis_tid,
  m_axis_tready,
  interrupt
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [15 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [15 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 slot0_axi_clk CLK" *)
input wire slot_0_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT0_AXI_RST RST" *)
input wire slot_0_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *)
input wire [3 : 0] slot_0_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *)
input wire [33 : 0] slot_0_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *)
input wire [2 : 0] slot_0_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *)
input wire [7 : 0] slot_0_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *)
input wire [2 : 0] slot_0_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *)
input wire [1 : 0] slot_0_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *)
input wire [3 : 0] slot_0_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *)
input wire [0 : 0] slot_0_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *)
input wire slot_0_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *)
input wire slot_0_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *)
input wire [511 : 0] slot_0_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *)
input wire [63 : 0] slot_0_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *)
input wire slot_0_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *)
input wire slot_0_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *)
input wire slot_0_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *)
input wire [3 : 0] slot_0_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *)
input wire [1 : 0] slot_0_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *)
input wire slot_0_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *)
input wire slot_0_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *)
input wire [3 : 0] slot_0_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *)
input wire [33 : 0] slot_0_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *)
input wire [7 : 0] slot_0_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *)
input wire [2 : 0] slot_0_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *)
input wire [1 : 0] slot_0_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *)
input wire [3 : 0] slot_0_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *)
input wire [2 : 0] slot_0_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *)
input wire [0 : 0] slot_0_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *)
input wire slot_0_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *)
input wire slot_0_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *)
input wire [3 : 0] slot_0_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *)
input wire [511 : 0] slot_0_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *)
input wire [1 : 0] slot_0_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *)
input wire slot_0_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *)
input wire slot_0_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *)
input wire slot_0_axi_rready;
input wire slot_0_ext_trig;
input wire slot_0_ext_trig_stop;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SLOT1_AXI_CLK CLK" *)
input wire slot_1_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT1_AXI_RST RST" *)
input wire slot_1_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWID" *)
input wire [3 : 0] slot_1_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR" *)
input wire [37 : 0] slot_1_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT" *)
input wire [2 : 0] slot_1_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN" *)
input wire [7 : 0] slot_1_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE" *)
input wire [2 : 0] slot_1_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWBURST" *)
input wire [1 : 0] slot_1_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE" *)
input wire [3 : 0] slot_1_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLOCK" *)
input wire [0 : 0] slot_1_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID" *)
input wire slot_1_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY" *)
input wire slot_1_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA" *)
input wire [255 : 0] slot_1_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB" *)
input wire [31 : 0] slot_1_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST" *)
input wire slot_1_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID" *)
input wire slot_1_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY" *)
input wire slot_1_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BID" *)
input wire [3 : 0] slot_1_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP" *)
input wire [1 : 0] slot_1_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID" *)
input wire slot_1_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY" *)
input wire slot_1_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARID" *)
input wire [3 : 0] slot_1_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR" *)
input wire [37 : 0] slot_1_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN" *)
input wire [7 : 0] slot_1_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE" *)
input wire [2 : 0] slot_1_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARBURST" *)
input wire [1 : 0] slot_1_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE" *)
input wire [3 : 0] slot_1_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT" *)
input wire [2 : 0] slot_1_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLOCK" *)
input wire [0 : 0] slot_1_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID" *)
input wire slot_1_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY" *)
input wire slot_1_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RID" *)
input wire [3 : 0] slot_1_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA" *)
input wire [255 : 0] slot_1_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP" *)
input wire [1 : 0] slot_1_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST" *)
input wire slot_1_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID" *)
input wire slot_1_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY" *)
input wire slot_1_axi_rready;
input wire slot_1_ext_trig;
input wire slot_1_ext_trig_stop;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SLOT2_AXI_CLK CLK" *)
input wire slot_2_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT2_AXI_RST RST" *)
input wire slot_2_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWID" *)
input wire [3 : 0] slot_2_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *)
input wire [33 : 0] slot_2_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *)
input wire [2 : 0] slot_2_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *)
input wire [7 : 0] slot_2_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *)
input wire [2 : 0] slot_2_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST" *)
input wire [1 : 0] slot_2_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *)
input wire [3 : 0] slot_2_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK" *)
input wire [0 : 0] slot_2_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *)
input wire slot_2_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *)
input wire slot_2_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *)
input wire [511 : 0] slot_2_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *)
input wire [63 : 0] slot_2_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *)
input wire slot_2_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *)
input wire slot_2_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *)
input wire slot_2_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BID" *)
input wire [3 : 0] slot_2_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *)
input wire [1 : 0] slot_2_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *)
input wire slot_2_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *)
input wire slot_2_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARID" *)
input wire [3 : 0] slot_2_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *)
input wire [33 : 0] slot_2_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *)
input wire [7 : 0] slot_2_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *)
input wire [2 : 0] slot_2_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST" *)
input wire [1 : 0] slot_2_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *)
input wire [3 : 0] slot_2_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *)
input wire [2 : 0] slot_2_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK" *)
input wire [0 : 0] slot_2_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *)
input wire slot_2_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *)
input wire slot_2_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RID" *)
input wire [3 : 0] slot_2_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *)
input wire [511 : 0] slot_2_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *)
input wire [1 : 0] slot_2_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *)
input wire slot_2_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *)
input wire slot_2_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *)
input wire slot_2_axi_rready;
input wire slot_2_ext_trig;
input wire slot_2_ext_trig_stop;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SLOT3_AXI_CLK CLK" *)
input wire slot_3_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT3_AXI_RST RST" *)
input wire slot_3_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWID" *)
input wire [3 : 0] slot_3_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *)
input wire [33 : 0] slot_3_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *)
input wire [2 : 0] slot_3_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *)
input wire [7 : 0] slot_3_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *)
input wire [2 : 0] slot_3_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST" *)
input wire [1 : 0] slot_3_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *)
input wire [3 : 0] slot_3_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK" *)
input wire [0 : 0] slot_3_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *)
input wire slot_3_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *)
input wire slot_3_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *)
input wire [511 : 0] slot_3_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *)
input wire [63 : 0] slot_3_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *)
input wire slot_3_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *)
input wire slot_3_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *)
input wire slot_3_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BID" *)
input wire [3 : 0] slot_3_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *)
input wire [1 : 0] slot_3_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *)
input wire slot_3_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *)
input wire slot_3_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARID" *)
input wire [3 : 0] slot_3_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *)
input wire [33 : 0] slot_3_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *)
input wire [7 : 0] slot_3_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *)
input wire [2 : 0] slot_3_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST" *)
input wire [1 : 0] slot_3_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *)
input wire [3 : 0] slot_3_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *)
input wire [2 : 0] slot_3_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK" *)
input wire [0 : 0] slot_3_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *)
input wire slot_3_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *)
input wire slot_3_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RID" *)
input wire [3 : 0] slot_3_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *)
input wire [511 : 0] slot_3_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *)
input wire [1 : 0] slot_3_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *)
input wire slot_3_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *)
input wire slot_3_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *)
input wire slot_3_axi_rready;
input wire slot_3_ext_trig;
input wire slot_3_ext_trig_stop;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SLOT4_AXI_CLK CLK" *)
input wire slot_4_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT4_AXI_RST RST" *)
input wire slot_4_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWID" *)
input wire [3 : 0] slot_4_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR" *)
input wire [33 : 0] slot_4_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT" *)
input wire [2 : 0] slot_4_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN" *)
input wire [7 : 0] slot_4_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE" *)
input wire [2 : 0] slot_4_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST" *)
input wire [1 : 0] slot_4_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE" *)
input wire [3 : 0] slot_4_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLOCK" *)
input wire [0 : 0] slot_4_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID" *)
input wire slot_4_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY" *)
input wire slot_4_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA" *)
input wire [511 : 0] slot_4_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB" *)
input wire [63 : 0] slot_4_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST" *)
input wire slot_4_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID" *)
input wire slot_4_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY" *)
input wire slot_4_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BID" *)
input wire [3 : 0] slot_4_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP" *)
input wire [1 : 0] slot_4_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID" *)
input wire slot_4_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY" *)
input wire slot_4_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARID" *)
input wire [3 : 0] slot_4_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR" *)
input wire [33 : 0] slot_4_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN" *)
input wire [7 : 0] slot_4_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE" *)
input wire [2 : 0] slot_4_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST" *)
input wire [1 : 0] slot_4_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE" *)
input wire [3 : 0] slot_4_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT" *)
input wire [2 : 0] slot_4_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLOCK" *)
input wire [0 : 0] slot_4_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID" *)
input wire slot_4_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY" *)
input wire slot_4_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RID" *)
input wire [3 : 0] slot_4_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA" *)
input wire [511 : 0] slot_4_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP" *)
input wire [1 : 0] slot_4_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST" *)
input wire slot_4_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID" *)
input wire slot_4_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY" *)
input wire slot_4_axi_rready;
input wire slot_4_ext_trig;
input wire slot_4_ext_trig_stop;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_0 CLK" *)
input wire ext_clk_0;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_0 RST" *)
input wire ext_rstn_0;
input wire ext_event_0_cnt_start;
input wire ext_event_0_cnt_stop;
input wire ext_event_0;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_1 CLK" *)
input wire ext_clk_1;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_1 RST" *)
input wire ext_rstn_1;
input wire ext_event_1_cnt_start;
input wire ext_event_1_cnt_stop;
input wire ext_event_1;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_2 CLK" *)
input wire ext_clk_2;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_2 RST" *)
input wire ext_rstn_2;
input wire ext_event_2_cnt_start;
input wire ext_event_2_cnt_stop;
input wire ext_event_2;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_3 CLK" *)
input wire ext_clk_3;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_3 RST" *)
input wire ext_rstn_3;
input wire ext_event_3_cnt_start;
input wire ext_event_3_cnt_stop;
input wire ext_event_3;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_4 CLK" *)
input wire ext_clk_4;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_4 RST" *)
input wire ext_rstn_4;
input wire ext_event_4_cnt_start;
input wire ext_event_4_cnt_stop;
input wire ext_event_4;
input wire capture_event;
input wire reset_event;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CORE_ACLK CLK" *)
input wire core_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CORE_ARESETN RST" *)
input wire core_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *)
input wire m_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_ARESET RST" *)
input wire m_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [151 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *)
output wire [18 : 0] m_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *)
output wire [0 : 0] m_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT" *)
output wire interrupt;

  axi_perf_mon_v5_0_13_top #(
    .C_FAMILY("kintexu"),
    .C_INSTANCE("xcl_design_xilmonitor_apm_0"),
    .C_LITE_ADDRESS_WIDTH(16),
    .C_S_AXI_ADDR_WIDTH(16),
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_PROTOCOL("AXI4LITE"),
    .C_S_AXI_ID_WIDTH(1),
    .C_SUPPORT_ID_REFLECTION(0),
    .C_ENABLE_ADVANCED(0),
    .C_ENABLE_PROFILE(1),
    .C_ENABLE_TRACE(1),
    .C_EN_AXI_DEBUG(0),
    .C_EN_TRIGGER(0),
    .C_EN_WR_ADD_FLAG(1),
    .C_EN_FIRST_WRITE_FLAG(0),
    .C_EN_LAST_WRITE_FLAG(1),
    .C_EN_RESPONSE_FLAG(0),
    .C_EN_RD_ADD_FLAG(1),
    .C_EN_FIRST_READ_FLAG(0),
    .C_EN_LAST_READ_FLAG(1),
    .C_EN_SW_REG_WR_FLAG(1),
    .C_EN_EXT_EVENTS_FLAG(1),
    .C_NUM_MONITOR_SLOTS(5),
    .C_ENABLE_EVENT_COUNT(0),
    .C_NUM_OF_COUNTERS(1),
    .C_METRIC_COUNT_WIDTH(32),
    .C_METRIC_COUNT_SCALE(1),
    .C_GLOBAL_COUNT_WIDTH(32),
    .C_HAVE_SAMPLED_METRIC_CNT(1),
    .C_METRICS_SAMPLE_COUNT_WIDTH(32),
    .C_AXI4LITE_CORE_CLK_ASYNC(1),
    .C_SLOT_0_AXI_ADDR_WIDTH(34),
    .C_SLOT_0_AXI_DATA_WIDTH(512),
    .C_SLOT_0_AXI_ID_WIDTH(4),
    .C_SLOT_0_AXI_PROTOCOL("AXI4"),
    .C_SLOT_0_AXIS_TDATA_WIDTH(32),
    .C_SLOT_0_AXIS_TID_WIDTH(1),
    .C_SLOT_0_AXIS_TDEST_WIDTH(1),
    .C_SLOT_0_AXIS_TUSER_WIDTH(1),
    .C_SLOT_0_FIFO_ENABLE(1),
    .C_SLOT_1_AXI_ADDR_WIDTH(38),
    .C_SLOT_1_AXI_DATA_WIDTH(256),
    .C_SLOT_1_AXI_ID_WIDTH(4),
    .C_SLOT_1_AXI_PROTOCOL("AXI4"),
    .C_SLOT_1_AXIS_TDATA_WIDTH(32),
    .C_SLOT_1_AXIS_TID_WIDTH(1),
    .C_SLOT_1_AXIS_TDEST_WIDTH(1),
    .C_SLOT_1_AXIS_TUSER_WIDTH(1),
    .C_SLOT_1_FIFO_ENABLE(1),
    .C_SLOT_2_AXI_ADDR_WIDTH(34),
    .C_SLOT_2_AXI_DATA_WIDTH(512),
    .C_SLOT_2_AXI_ID_WIDTH(4),
    .C_SLOT_2_AXI_PROTOCOL("AXI4"),
    .C_SLOT_2_AXIS_TDATA_WIDTH(32),
    .C_SLOT_2_AXIS_TID_WIDTH(1),
    .C_SLOT_2_AXIS_TDEST_WIDTH(1),
    .C_SLOT_2_AXIS_TUSER_WIDTH(1),
    .C_SLOT_2_FIFO_ENABLE(1),
    .C_SLOT_3_AXI_ADDR_WIDTH(34),
    .C_SLOT_3_AXI_DATA_WIDTH(512),
    .C_SLOT_3_AXI_ID_WIDTH(4),
    .C_SLOT_3_AXI_PROTOCOL("AXI4"),
    .C_SLOT_3_AXIS_TDATA_WIDTH(32),
    .C_SLOT_3_AXIS_TID_WIDTH(1),
    .C_SLOT_3_AXIS_TDEST_WIDTH(1),
    .C_SLOT_3_AXIS_TUSER_WIDTH(1),
    .C_SLOT_3_FIFO_ENABLE(1),
    .C_SLOT_4_AXI_ADDR_WIDTH(34),
    .C_SLOT_4_AXI_DATA_WIDTH(512),
    .C_SLOT_4_AXI_ID_WIDTH(4),
    .C_SLOT_4_AXI_PROTOCOL("AXI4"),
    .C_SLOT_4_AXIS_TDATA_WIDTH(32),
    .C_SLOT_4_AXIS_TID_WIDTH(1),
    .C_SLOT_4_AXIS_TDEST_WIDTH(1),
    .C_SLOT_4_AXIS_TUSER_WIDTH(1),
    .C_SLOT_4_FIFO_ENABLE(1),
    .C_SLOT_5_AXI_ADDR_WIDTH(32),
    .C_SLOT_5_AXI_DATA_WIDTH(32),
    .C_SLOT_5_AXI_ID_WIDTH(1),
    .C_SLOT_5_AXI_PROTOCOL("AXI4"),
    .C_SLOT_5_AXIS_TDATA_WIDTH(32),
    .C_SLOT_5_AXIS_TID_WIDTH(1),
    .C_SLOT_5_AXIS_TDEST_WIDTH(1),
    .C_SLOT_5_AXIS_TUSER_WIDTH(1),
    .C_SLOT_5_FIFO_ENABLE(1),
    .C_SLOT_6_AXI_ADDR_WIDTH(32),
    .C_SLOT_6_AXI_DATA_WIDTH(32),
    .C_SLOT_6_AXI_ID_WIDTH(1),
    .C_SLOT_6_AXI_PROTOCOL("AXI4"),
    .C_SLOT_6_AXIS_TDATA_WIDTH(32),
    .C_SLOT_6_AXIS_TID_WIDTH(1),
    .C_SLOT_6_AXIS_TDEST_WIDTH(1),
    .C_SLOT_6_AXIS_TUSER_WIDTH(1),
    .C_SLOT_6_FIFO_ENABLE(1),
    .C_SLOT_7_AXI_ADDR_WIDTH(32),
    .C_SLOT_7_AXI_DATA_WIDTH(32),
    .C_SLOT_7_AXI_ID_WIDTH(1),
    .C_SLOT_7_AXI_PROTOCOL("AXI4"),
    .C_SLOT_7_AXIS_TDATA_WIDTH(32),
    .C_SLOT_7_AXIS_TID_WIDTH(1),
    .C_SLOT_7_AXIS_TDEST_WIDTH(1),
    .C_SLOT_7_AXIS_TUSER_WIDTH(1),
    .C_SLOT_7_FIFO_ENABLE(1),
    .C_SLOT_0_AXI_AWLEN(7),
    .C_SLOT_1_AXI_AWLEN(7),
    .C_SLOT_2_AXI_AWLEN(7),
    .C_SLOT_3_AXI_AWLEN(7),
    .C_SLOT_4_AXI_AWLEN(7),
    .C_SLOT_5_AXI_AWLEN(7),
    .C_SLOT_6_AXI_AWLEN(7),
    .C_SLOT_7_AXI_AWLEN(7),
    .C_SLOT_0_AXI_LOCK(0),
    .C_SLOT_1_AXI_LOCK(0),
    .C_SLOT_2_AXI_LOCK(0),
    .C_SLOT_3_AXI_LOCK(0),
    .C_SLOT_4_AXI_LOCK(0),
    .C_SLOT_5_AXI_LOCK(0),
    .C_SLOT_6_AXI_LOCK(0),
    .C_SLOT_7_AXI_LOCK(0),
    .C_REG_ALL_MONITOR_SIGNALS(1),
    .C_EXT_EVENT0_FIFO_ENABLE(1),
    .C_EXT_EVENT1_FIFO_ENABLE(1),
    .C_EXT_EVENT2_FIFO_ENABLE(1),
    .C_EXT_EVENT3_FIFO_ENABLE(1),
    .C_EXT_EVENT4_FIFO_ENABLE(1),
    .C_EXT_EVENT5_FIFO_ENABLE(1),
    .C_EXT_EVENT6_FIFO_ENABLE(1),
    .C_EXT_EVENT7_FIFO_ENABLE(1),
    .C_ENABLE_EVENT_LOG(0),
    .C_FIFO_AXIS_DEPTH(16),
    .C_FIFO_AXIS_TDATA_WIDTH(152),
    .C_AXIS_DWIDTH_ROUND_TO_32(160),
    .C_FIFO_AXIS_TID_WIDTH(1),
    .C_FIFO_AXIS_SYNC(1),
    .C_SHOW_AXI_IDS(0),
    .C_SHOW_AXI_LEN(1),
    .C_SHOW_AXIS_TID(0),
    .C_SHOW_AXIS_TDEST(0),
    .C_SHOW_AXIS_TUSER(0),
    .ENABLE_EXT_EVENTS(1),
    .COUNTER_LOAD_VALUE('H00000000),
    .C_LOG_DATA_OFFLD(0),
    .S_AXI_OFFLD_ID_WIDTH(1),
    .C_S_AXI4_BASEADDR('HFFFFFFFF),
    .C_S_AXI4_HIGHADDR('H00000000),
    .C_EN_ALL_TRACE(1)
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awid(1'B0),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bid(),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arid(1'B0),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rid(),
    .s_axi_rready(s_axi_rready),
    .slot_0_axi_aclk(slot_0_axi_aclk),
    .slot_0_axi_aresetn(slot_0_axi_aresetn),
    .slot_0_axi_awid(slot_0_axi_awid),
    .slot_0_axi_awaddr(slot_0_axi_awaddr),
    .slot_0_axi_awprot(slot_0_axi_awprot),
    .slot_0_axi_awlen(slot_0_axi_awlen),
    .slot_0_axi_awsize(slot_0_axi_awsize),
    .slot_0_axi_awburst(slot_0_axi_awburst),
    .slot_0_axi_awcache(slot_0_axi_awcache),
    .slot_0_axi_awlock(slot_0_axi_awlock),
    .slot_0_axi_awvalid(slot_0_axi_awvalid),
    .slot_0_axi_awready(slot_0_axi_awready),
    .slot_0_axi_wdata(slot_0_axi_wdata),
    .slot_0_axi_wstrb(slot_0_axi_wstrb),
    .slot_0_axi_wlast(slot_0_axi_wlast),
    .slot_0_axi_wvalid(slot_0_axi_wvalid),
    .slot_0_axi_wready(slot_0_axi_wready),
    .slot_0_axi_bid(slot_0_axi_bid),
    .slot_0_axi_bresp(slot_0_axi_bresp),
    .slot_0_axi_bvalid(slot_0_axi_bvalid),
    .slot_0_axi_bready(slot_0_axi_bready),
    .slot_0_axi_arid(slot_0_axi_arid),
    .slot_0_axi_araddr(slot_0_axi_araddr),
    .slot_0_axi_arlen(slot_0_axi_arlen),
    .slot_0_axi_arsize(slot_0_axi_arsize),
    .slot_0_axi_arburst(slot_0_axi_arburst),
    .slot_0_axi_arcache(slot_0_axi_arcache),
    .slot_0_axi_arprot(slot_0_axi_arprot),
    .slot_0_axi_arlock(slot_0_axi_arlock),
    .slot_0_axi_arvalid(slot_0_axi_arvalid),
    .slot_0_axi_arready(slot_0_axi_arready),
    .slot_0_axi_rid(slot_0_axi_rid),
    .slot_0_axi_rdata(slot_0_axi_rdata),
    .slot_0_axi_rresp(slot_0_axi_rresp),
    .slot_0_axi_rlast(slot_0_axi_rlast),
    .slot_0_axi_rvalid(slot_0_axi_rvalid),
    .slot_0_axi_rready(slot_0_axi_rready),
    .slot_0_axis_aclk(1'B0),
    .slot_0_axis_aresetn(1'B1),
    .slot_0_axis_tvalid(1'B0),
    .slot_0_axis_tready(1'B0),
    .slot_0_axis_tdata(32'B0),
    .slot_0_axis_tstrb(4'HF),
    .slot_0_axis_tkeep(4'HF),
    .slot_0_axis_tlast(1'B0),
    .slot_0_axis_tid(1'B0),
    .slot_0_axis_tdest(1'B0),
    .slot_0_axis_tuser(1'B0),
    .slot_0_ext_trig(slot_0_ext_trig),
    .slot_0_ext_trig_stop(slot_0_ext_trig_stop),
    .slot_1_axi_aclk(slot_1_axi_aclk),
    .slot_1_axi_aresetn(slot_1_axi_aresetn),
    .slot_1_axi_awid(slot_1_axi_awid),
    .slot_1_axi_awaddr(slot_1_axi_awaddr),
    .slot_1_axi_awprot(slot_1_axi_awprot),
    .slot_1_axi_awlen(slot_1_axi_awlen),
    .slot_1_axi_awsize(slot_1_axi_awsize),
    .slot_1_axi_awburst(slot_1_axi_awburst),
    .slot_1_axi_awcache(slot_1_axi_awcache),
    .slot_1_axi_awlock(slot_1_axi_awlock),
    .slot_1_axi_awvalid(slot_1_axi_awvalid),
    .slot_1_axi_awready(slot_1_axi_awready),
    .slot_1_axi_wdata(slot_1_axi_wdata),
    .slot_1_axi_wstrb(slot_1_axi_wstrb),
    .slot_1_axi_wlast(slot_1_axi_wlast),
    .slot_1_axi_wvalid(slot_1_axi_wvalid),
    .slot_1_axi_wready(slot_1_axi_wready),
    .slot_1_axi_bid(slot_1_axi_bid),
    .slot_1_axi_bresp(slot_1_axi_bresp),
    .slot_1_axi_bvalid(slot_1_axi_bvalid),
    .slot_1_axi_bready(slot_1_axi_bready),
    .slot_1_axi_arid(slot_1_axi_arid),
    .slot_1_axi_araddr(slot_1_axi_araddr),
    .slot_1_axi_arlen(slot_1_axi_arlen),
    .slot_1_axi_arsize(slot_1_axi_arsize),
    .slot_1_axi_arburst(slot_1_axi_arburst),
    .slot_1_axi_arcache(slot_1_axi_arcache),
    .slot_1_axi_arprot(slot_1_axi_arprot),
    .slot_1_axi_arlock(slot_1_axi_arlock),
    .slot_1_axi_arvalid(slot_1_axi_arvalid),
    .slot_1_axi_arready(slot_1_axi_arready),
    .slot_1_axi_rid(slot_1_axi_rid),
    .slot_1_axi_rdata(slot_1_axi_rdata),
    .slot_1_axi_rresp(slot_1_axi_rresp),
    .slot_1_axi_rlast(slot_1_axi_rlast),
    .slot_1_axi_rvalid(slot_1_axi_rvalid),
    .slot_1_axi_rready(slot_1_axi_rready),
    .slot_1_axis_aclk(1'B0),
    .slot_1_axis_aresetn(1'B1),
    .slot_1_axis_tvalid(1'B0),
    .slot_1_axis_tready(1'B0),
    .slot_1_axis_tdata(32'B0),
    .slot_1_axis_tstrb(4'HF),
    .slot_1_axis_tkeep(4'HF),
    .slot_1_axis_tlast(1'B0),
    .slot_1_axis_tid(1'B0),
    .slot_1_axis_tdest(1'B0),
    .slot_1_axis_tuser(1'B0),
    .slot_1_ext_trig(slot_1_ext_trig),
    .slot_1_ext_trig_stop(slot_1_ext_trig_stop),
    .slot_2_axi_aclk(slot_2_axi_aclk),
    .slot_2_axi_aresetn(slot_2_axi_aresetn),
    .slot_2_axi_awid(slot_2_axi_awid),
    .slot_2_axi_awaddr(slot_2_axi_awaddr),
    .slot_2_axi_awprot(slot_2_axi_awprot),
    .slot_2_axi_awlen(slot_2_axi_awlen),
    .slot_2_axi_awsize(slot_2_axi_awsize),
    .slot_2_axi_awburst(slot_2_axi_awburst),
    .slot_2_axi_awcache(slot_2_axi_awcache),
    .slot_2_axi_awlock(slot_2_axi_awlock),
    .slot_2_axi_awvalid(slot_2_axi_awvalid),
    .slot_2_axi_awready(slot_2_axi_awready),
    .slot_2_axi_wdata(slot_2_axi_wdata),
    .slot_2_axi_wstrb(slot_2_axi_wstrb),
    .slot_2_axi_wlast(slot_2_axi_wlast),
    .slot_2_axi_wvalid(slot_2_axi_wvalid),
    .slot_2_axi_wready(slot_2_axi_wready),
    .slot_2_axi_bid(slot_2_axi_bid),
    .slot_2_axi_bresp(slot_2_axi_bresp),
    .slot_2_axi_bvalid(slot_2_axi_bvalid),
    .slot_2_axi_bready(slot_2_axi_bready),
    .slot_2_axi_arid(slot_2_axi_arid),
    .slot_2_axi_araddr(slot_2_axi_araddr),
    .slot_2_axi_arlen(slot_2_axi_arlen),
    .slot_2_axi_arsize(slot_2_axi_arsize),
    .slot_2_axi_arburst(slot_2_axi_arburst),
    .slot_2_axi_arcache(slot_2_axi_arcache),
    .slot_2_axi_arprot(slot_2_axi_arprot),
    .slot_2_axi_arlock(slot_2_axi_arlock),
    .slot_2_axi_arvalid(slot_2_axi_arvalid),
    .slot_2_axi_arready(slot_2_axi_arready),
    .slot_2_axi_rid(slot_2_axi_rid),
    .slot_2_axi_rdata(slot_2_axi_rdata),
    .slot_2_axi_rresp(slot_2_axi_rresp),
    .slot_2_axi_rlast(slot_2_axi_rlast),
    .slot_2_axi_rvalid(slot_2_axi_rvalid),
    .slot_2_axi_rready(slot_2_axi_rready),
    .slot_2_axis_aclk(1'B0),
    .slot_2_axis_aresetn(1'B1),
    .slot_2_axis_tvalid(1'B0),
    .slot_2_axis_tready(1'B0),
    .slot_2_axis_tdata(32'B0),
    .slot_2_axis_tstrb(4'HF),
    .slot_2_axis_tkeep(4'HF),
    .slot_2_axis_tlast(1'B0),
    .slot_2_axis_tid(1'B0),
    .slot_2_axis_tdest(1'B0),
    .slot_2_axis_tuser(1'B0),
    .slot_2_ext_trig(slot_2_ext_trig),
    .slot_2_ext_trig_stop(slot_2_ext_trig_stop),
    .slot_3_axi_aclk(slot_3_axi_aclk),
    .slot_3_axi_aresetn(slot_3_axi_aresetn),
    .slot_3_axi_awid(slot_3_axi_awid),
    .slot_3_axi_awaddr(slot_3_axi_awaddr),
    .slot_3_axi_awprot(slot_3_axi_awprot),
    .slot_3_axi_awlen(slot_3_axi_awlen),
    .slot_3_axi_awsize(slot_3_axi_awsize),
    .slot_3_axi_awburst(slot_3_axi_awburst),
    .slot_3_axi_awcache(slot_3_axi_awcache),
    .slot_3_axi_awlock(slot_3_axi_awlock),
    .slot_3_axi_awvalid(slot_3_axi_awvalid),
    .slot_3_axi_awready(slot_3_axi_awready),
    .slot_3_axi_wdata(slot_3_axi_wdata),
    .slot_3_axi_wstrb(slot_3_axi_wstrb),
    .slot_3_axi_wlast(slot_3_axi_wlast),
    .slot_3_axi_wvalid(slot_3_axi_wvalid),
    .slot_3_axi_wready(slot_3_axi_wready),
    .slot_3_axi_bid(slot_3_axi_bid),
    .slot_3_axi_bresp(slot_3_axi_bresp),
    .slot_3_axi_bvalid(slot_3_axi_bvalid),
    .slot_3_axi_bready(slot_3_axi_bready),
    .slot_3_axi_arid(slot_3_axi_arid),
    .slot_3_axi_araddr(slot_3_axi_araddr),
    .slot_3_axi_arlen(slot_3_axi_arlen),
    .slot_3_axi_arsize(slot_3_axi_arsize),
    .slot_3_axi_arburst(slot_3_axi_arburst),
    .slot_3_axi_arcache(slot_3_axi_arcache),
    .slot_3_axi_arprot(slot_3_axi_arprot),
    .slot_3_axi_arlock(slot_3_axi_arlock),
    .slot_3_axi_arvalid(slot_3_axi_arvalid),
    .slot_3_axi_arready(slot_3_axi_arready),
    .slot_3_axi_rid(slot_3_axi_rid),
    .slot_3_axi_rdata(slot_3_axi_rdata),
    .slot_3_axi_rresp(slot_3_axi_rresp),
    .slot_3_axi_rlast(slot_3_axi_rlast),
    .slot_3_axi_rvalid(slot_3_axi_rvalid),
    .slot_3_axi_rready(slot_3_axi_rready),
    .slot_3_axis_aclk(1'B0),
    .slot_3_axis_aresetn(1'B1),
    .slot_3_axis_tvalid(1'B0),
    .slot_3_axis_tready(1'B0),
    .slot_3_axis_tdata(32'B0),
    .slot_3_axis_tstrb(4'HF),
    .slot_3_axis_tkeep(4'HF),
    .slot_3_axis_tlast(1'B0),
    .slot_3_axis_tid(1'B0),
    .slot_3_axis_tdest(1'B0),
    .slot_3_axis_tuser(1'B0),
    .slot_3_ext_trig(slot_3_ext_trig),
    .slot_3_ext_trig_stop(slot_3_ext_trig_stop),
    .slot_4_axi_aclk(slot_4_axi_aclk),
    .slot_4_axi_aresetn(slot_4_axi_aresetn),
    .slot_4_axi_awid(slot_4_axi_awid),
    .slot_4_axi_awaddr(slot_4_axi_awaddr),
    .slot_4_axi_awprot(slot_4_axi_awprot),
    .slot_4_axi_awlen(slot_4_axi_awlen),
    .slot_4_axi_awsize(slot_4_axi_awsize),
    .slot_4_axi_awburst(slot_4_axi_awburst),
    .slot_4_axi_awcache(slot_4_axi_awcache),
    .slot_4_axi_awlock(slot_4_axi_awlock),
    .slot_4_axi_awvalid(slot_4_axi_awvalid),
    .slot_4_axi_awready(slot_4_axi_awready),
    .slot_4_axi_wdata(slot_4_axi_wdata),
    .slot_4_axi_wstrb(slot_4_axi_wstrb),
    .slot_4_axi_wlast(slot_4_axi_wlast),
    .slot_4_axi_wvalid(slot_4_axi_wvalid),
    .slot_4_axi_wready(slot_4_axi_wready),
    .slot_4_axi_bid(slot_4_axi_bid),
    .slot_4_axi_bresp(slot_4_axi_bresp),
    .slot_4_axi_bvalid(slot_4_axi_bvalid),
    .slot_4_axi_bready(slot_4_axi_bready),
    .slot_4_axi_arid(slot_4_axi_arid),
    .slot_4_axi_araddr(slot_4_axi_araddr),
    .slot_4_axi_arlen(slot_4_axi_arlen),
    .slot_4_axi_arsize(slot_4_axi_arsize),
    .slot_4_axi_arburst(slot_4_axi_arburst),
    .slot_4_axi_arcache(slot_4_axi_arcache),
    .slot_4_axi_arprot(slot_4_axi_arprot),
    .slot_4_axi_arlock(slot_4_axi_arlock),
    .slot_4_axi_arvalid(slot_4_axi_arvalid),
    .slot_4_axi_arready(slot_4_axi_arready),
    .slot_4_axi_rid(slot_4_axi_rid),
    .slot_4_axi_rdata(slot_4_axi_rdata),
    .slot_4_axi_rresp(slot_4_axi_rresp),
    .slot_4_axi_rlast(slot_4_axi_rlast),
    .slot_4_axi_rvalid(slot_4_axi_rvalid),
    .slot_4_axi_rready(slot_4_axi_rready),
    .slot_4_axis_aclk(1'B0),
    .slot_4_axis_aresetn(1'B1),
    .slot_4_axis_tvalid(1'B0),
    .slot_4_axis_tready(1'B0),
    .slot_4_axis_tdata(32'B0),
    .slot_4_axis_tstrb(4'HF),
    .slot_4_axis_tkeep(4'HF),
    .slot_4_axis_tlast(1'B0),
    .slot_4_axis_tid(1'B0),
    .slot_4_axis_tdest(1'B0),
    .slot_4_axis_tuser(1'B0),
    .slot_4_ext_trig(slot_4_ext_trig),
    .slot_4_ext_trig_stop(slot_4_ext_trig_stop),
    .slot_5_axi_aclk(1'B0),
    .slot_5_axi_aresetn(1'B0),
    .slot_5_axi_awid(1'B0),
    .slot_5_axi_awaddr(32'B0),
    .slot_5_axi_awprot(3'B0),
    .slot_5_axi_awlen(8'B0),
    .slot_5_axi_awsize(3'B0),
    .slot_5_axi_awburst(2'B0),
    .slot_5_axi_awcache(4'B0),
    .slot_5_axi_awlock(1'B0),
    .slot_5_axi_awvalid(1'B0),
    .slot_5_axi_awready(1'B0),
    .slot_5_axi_wdata(32'B0),
    .slot_5_axi_wstrb(4'B0),
    .slot_5_axi_wlast(1'B0),
    .slot_5_axi_wvalid(1'B0),
    .slot_5_axi_wready(1'B0),
    .slot_5_axi_bid(1'B0),
    .slot_5_axi_bresp(2'B0),
    .slot_5_axi_bvalid(1'B0),
    .slot_5_axi_bready(1'B0),
    .slot_5_axi_arid(1'B0),
    .slot_5_axi_araddr(32'B0),
    .slot_5_axi_arlen(8'B0),
    .slot_5_axi_arsize(3'B0),
    .slot_5_axi_arburst(2'B0),
    .slot_5_axi_arcache(4'B0),
    .slot_5_axi_arprot(3'B0),
    .slot_5_axi_arlock(1'B0),
    .slot_5_axi_arvalid(1'B0),
    .slot_5_axi_arready(1'B0),
    .slot_5_axi_rid(1'B0),
    .slot_5_axi_rdata(32'B0),
    .slot_5_axi_rresp(2'B0),
    .slot_5_axi_rlast(1'B0),
    .slot_5_axi_rvalid(1'B0),
    .slot_5_axi_rready(1'B0),
    .slot_5_axis_aclk(1'B0),
    .slot_5_axis_aresetn(1'B1),
    .slot_5_axis_tvalid(1'B0),
    .slot_5_axis_tready(1'B0),
    .slot_5_axis_tdata(32'B0),
    .slot_5_axis_tstrb(4'HF),
    .slot_5_axis_tkeep(4'HF),
    .slot_5_axis_tlast(1'B0),
    .slot_5_axis_tid(1'B0),
    .slot_5_axis_tdest(1'B0),
    .slot_5_axis_tuser(1'B0),
    .slot_5_ext_trig(1'B0),
    .slot_5_ext_trig_stop(1'B0),
    .slot_6_axi_aclk(1'B0),
    .slot_6_axi_aresetn(1'B1),
    .slot_6_axi_awid(1'B0),
    .slot_6_axi_awaddr(32'B0),
    .slot_6_axi_awprot(3'B0),
    .slot_6_axi_awlen(8'B0),
    .slot_6_axi_awsize(3'B0),
    .slot_6_axi_awburst(2'B0),
    .slot_6_axi_awcache(4'B0),
    .slot_6_axi_awlock(1'B0),
    .slot_6_axi_awvalid(1'B0),
    .slot_6_axi_awready(1'B0),
    .slot_6_axi_wdata(32'B0),
    .slot_6_axi_wstrb(4'B0),
    .slot_6_axi_wlast(1'B0),
    .slot_6_axi_wvalid(1'B0),
    .slot_6_axi_wready(1'B0),
    .slot_6_axi_bid(1'B0),
    .slot_6_axi_bresp(2'B0),
    .slot_6_axi_bvalid(1'B0),
    .slot_6_axi_bready(1'B0),
    .slot_6_axi_arid(1'B0),
    .slot_6_axi_araddr(32'B0),
    .slot_6_axi_arlen(8'B0),
    .slot_6_axi_arsize(3'B0),
    .slot_6_axi_arburst(2'B0),
    .slot_6_axi_arcache(4'B0),
    .slot_6_axi_arprot(3'B0),
    .slot_6_axi_arlock(1'B0),
    .slot_6_axi_arvalid(1'B0),
    .slot_6_axi_arready(1'B0),
    .slot_6_axi_rid(1'B0),
    .slot_6_axi_rdata(32'B0),
    .slot_6_axi_rresp(2'B0),
    .slot_6_axi_rlast(1'B0),
    .slot_6_axi_rvalid(1'B0),
    .slot_6_axi_rready(1'B0),
    .slot_6_axis_aclk(1'B0),
    .slot_6_axis_aresetn(1'B1),
    .slot_6_axis_tvalid(1'B0),
    .slot_6_axis_tready(1'B0),
    .slot_6_axis_tdata(32'B0),
    .slot_6_axis_tstrb(4'HF),
    .slot_6_axis_tkeep(4'HF),
    .slot_6_axis_tlast(1'B0),
    .slot_6_axis_tid(1'B0),
    .slot_6_axis_tdest(1'B0),
    .slot_6_axis_tuser(1'B0),
    .slot_6_ext_trig(1'B0),
    .slot_6_ext_trig_stop(1'B0),
    .slot_7_axi_aclk(1'B0),
    .slot_7_axi_aresetn(1'B1),
    .slot_7_axi_awid(1'B0),
    .slot_7_axi_awaddr(32'B0),
    .slot_7_axi_awprot(3'B0),
    .slot_7_axi_awlen(8'B0),
    .slot_7_axi_awsize(3'B0),
    .slot_7_axi_awburst(2'B0),
    .slot_7_axi_awcache(4'B0),
    .slot_7_axi_awlock(1'B0),
    .slot_7_axi_awvalid(1'B0),
    .slot_7_axi_awready(1'B0),
    .slot_7_axi_wdata(32'B0),
    .slot_7_axi_wstrb(4'B0),
    .slot_7_axi_wlast(1'B0),
    .slot_7_axi_wvalid(1'B0),
    .slot_7_axi_wready(1'B0),
    .slot_7_axi_bid(1'B0),
    .slot_7_axi_bresp(2'B0),
    .slot_7_axi_bvalid(1'B0),
    .slot_7_axi_bready(1'B0),
    .slot_7_axi_arid(1'B0),
    .slot_7_axi_araddr(32'B0),
    .slot_7_axi_arlen(8'B0),
    .slot_7_axi_arsize(3'B0),
    .slot_7_axi_arburst(2'B0),
    .slot_7_axi_arcache(4'B0),
    .slot_7_axi_arprot(3'B0),
    .slot_7_axi_arlock(1'B0),
    .slot_7_axi_arvalid(1'B0),
    .slot_7_axi_arready(1'B0),
    .slot_7_axi_rid(1'B0),
    .slot_7_axi_rdata(32'B0),
    .slot_7_axi_rresp(2'B0),
    .slot_7_axi_rlast(1'B0),
    .slot_7_axi_rvalid(1'B0),
    .slot_7_axi_rready(1'B0),
    .slot_7_axis_aclk(1'B0),
    .slot_7_axis_aresetn(1'B1),
    .slot_7_axis_tvalid(1'B0),
    .slot_7_axis_tready(1'B0),
    .slot_7_axis_tdata(32'B0),
    .slot_7_axis_tstrb(4'HF),
    .slot_7_axis_tkeep(4'HF),
    .slot_7_axis_tlast(1'B0),
    .slot_7_axis_tid(1'B0),
    .slot_7_axis_tdest(1'B0),
    .slot_7_axis_tuser(1'B0),
    .slot_7_ext_trig(1'B0),
    .slot_7_ext_trig_stop(1'B0),
    .ext_clk_0(ext_clk_0),
    .ext_rstn_0(ext_rstn_0),
    .ext_event_0_cnt_start(ext_event_0_cnt_start),
    .ext_event_0_cnt_stop(ext_event_0_cnt_stop),
    .ext_event_0(ext_event_0),
    .ext_clk_1(ext_clk_1),
    .ext_rstn_1(ext_rstn_1),
    .ext_event_1_cnt_start(ext_event_1_cnt_start),
    .ext_event_1_cnt_stop(ext_event_1_cnt_stop),
    .ext_event_1(ext_event_1),
    .ext_clk_2(ext_clk_2),
    .ext_rstn_2(ext_rstn_2),
    .ext_event_2_cnt_start(ext_event_2_cnt_start),
    .ext_event_2_cnt_stop(ext_event_2_cnt_stop),
    .ext_event_2(ext_event_2),
    .ext_clk_3(ext_clk_3),
    .ext_rstn_3(ext_rstn_3),
    .ext_event_3_cnt_start(ext_event_3_cnt_start),
    .ext_event_3_cnt_stop(ext_event_3_cnt_stop),
    .ext_event_3(ext_event_3),
    .ext_clk_4(ext_clk_4),
    .ext_rstn_4(ext_rstn_4),
    .ext_event_4_cnt_start(ext_event_4_cnt_start),
    .ext_event_4_cnt_stop(ext_event_4_cnt_stop),
    .ext_event_4(ext_event_4),
    .ext_clk_5(1'B0),
    .ext_rstn_5(1'B1),
    .ext_event_5_cnt_start(1'B0),
    .ext_event_5_cnt_stop(1'B0),
    .ext_event_5(1'B0),
    .ext_clk_6(1'B0),
    .ext_rstn_6(1'B1),
    .ext_event_6_cnt_start(1'B0),
    .ext_event_6_cnt_stop(1'B0),
    .ext_event_6(1'B0),
    .ext_clk_7(1'B0),
    .ext_rstn_7(1'B1),
    .ext_event_7_cnt_start(1'B0),
    .ext_event_7_cnt_stop(1'B0),
    .ext_event_7(1'B0),
    .capture_event(capture_event),
    .reset_event(reset_event),
    .core_aclk(core_aclk),
    .core_aresetn(core_aresetn),
    .m_axis_aclk(m_axis_aclk),
    .m_axis_aresetn(m_axis_aresetn),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(m_axis_tstrb),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tid(m_axis_tid),
    .m_axis_tready(m_axis_tready),
    .s_axi_offld_aclk(1'B0),
    .s_axi_offld_aresetn(1'B1),
    .s_axi_offld_araddr(32'B0),
    .s_axi_offld_arvalid(1'B0),
    .s_axi_offld_arlen(8'B0),
    .s_axi_offld_arid(1'B0),
    .s_axi_offld_arready(),
    .s_axi_offld_rready(1'B0),
    .s_axi_offld_rdata(),
    .s_axi_offld_rresp(),
    .s_axi_offld_rvalid(),
    .s_axi_offld_rid(),
    .s_axi_offld_rlast(),
    .interrupt(interrupt),
    .trigger_in(1'B0),
    .trigger_in_ack()
  );
endmodule
