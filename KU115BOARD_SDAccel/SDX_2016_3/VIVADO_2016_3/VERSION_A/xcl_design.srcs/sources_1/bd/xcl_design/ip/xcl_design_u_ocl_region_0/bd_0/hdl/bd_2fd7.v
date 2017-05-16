//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Tue May 16 05:40:56 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target bd_2fd7.bd
//Design      : bd_2fd7
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_2fd7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2fd7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=14,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=4,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xcl_design_u_ocl_region_0.hwdef" *) 
module bd_2fd7
   (CONTROL_CLK,
    CONTROL_RESET,
    DATA_CLK,
    DATA_RESET,
    KERNEL_CLK2,
    KERNEL_RESET2,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awqos,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input CONTROL_CLK;
  input CONTROL_RESET;
  input DATA_CLK;
  input DATA_RESET;
  input KERNEL_CLK2;
  input KERNEL_RESET2;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [3:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [3:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [33:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [3:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [33:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [3:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [3:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [511:0]M01_AXI_rdata;
  input [3:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [511:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [33:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [3:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output M02_AXI_arvalid;
  output [33:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [3:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output M02_AXI_awvalid;
  input [3:0]M02_AXI_bid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [511:0]M02_AXI_rdata;
  input [3:0]M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [511:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [63:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  output [33:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [3:0]M03_AXI_arid;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  input M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output M03_AXI_arvalid;
  output [33:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [3:0]M03_AXI_awid;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  input M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output M03_AXI_awvalid;
  input [3:0]M03_AXI_bid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [511:0]M03_AXI_rdata;
  input [3:0]M03_AXI_rid;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [511:0]M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output [63:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire CONTROL_CLK;
  wire CONTROL_RESET;
  wire [0:0]CONTROL_RESET_sync;
  wire DATA_CLK;
  wire DATA_RESET;
  wire [0:0]DATA_RESET_sync;
  wire [33:0]M00_AXI_ARADDR;
  wire [1:0]M00_AXI_ARBURST;
  wire [3:0]M00_AXI_ARCACHE;
  wire [3:0]M00_AXI_ARID;
  wire [7:0]M00_AXI_ARLEN;
  wire [0:0]M00_AXI_ARLOCK;
  wire [2:0]M00_AXI_ARPROT;
  wire [3:0]M00_AXI_ARQOS;
  wire M00_AXI_ARREADY;
  wire [2:0]M00_AXI_ARSIZE;
  wire M00_AXI_ARVALID;
  wire [33:0]M00_AXI_AWADDR;
  wire [1:0]M00_AXI_AWBURST;
  wire [3:0]M00_AXI_AWCACHE;
  wire [3:0]M00_AXI_AWID;
  wire [7:0]M00_AXI_AWLEN;
  wire [0:0]M00_AXI_AWLOCK;
  wire [2:0]M00_AXI_AWPROT;
  wire [3:0]M00_AXI_AWQOS;
  wire M00_AXI_AWREADY;
  wire [2:0]M00_AXI_AWSIZE;
  wire M00_AXI_AWVALID;
  wire [3:0]M00_AXI_BID;
  wire M00_AXI_BREADY;
  wire [1:0]M00_AXI_BRESP;
  wire M00_AXI_BVALID;
  wire [511:0]M00_AXI_RDATA;
  wire [3:0]M00_AXI_RID;
  wire M00_AXI_RLAST;
  wire M00_AXI_RREADY;
  wire [1:0]M00_AXI_RRESP;
  wire M00_AXI_RVALID;
  wire [511:0]M00_AXI_WDATA;
  wire M00_AXI_WLAST;
  wire M00_AXI_WREADY;
  wire [63:0]M00_AXI_WSTRB;
  wire M00_AXI_WVALID;
  wire [33:0]M01_AXI_ARADDR;
  wire [1:0]M01_AXI_ARBURST;
  wire [3:0]M01_AXI_ARCACHE;
  wire [3:0]M01_AXI_ARID;
  wire [7:0]M01_AXI_ARLEN;
  wire [0:0]M01_AXI_ARLOCK;
  wire [2:0]M01_AXI_ARPROT;
  wire [3:0]M01_AXI_ARQOS;
  wire M01_AXI_ARREADY;
  wire [2:0]M01_AXI_ARSIZE;
  wire M01_AXI_ARVALID;
  wire [33:0]M01_AXI_AWADDR;
  wire [1:0]M01_AXI_AWBURST;
  wire [3:0]M01_AXI_AWCACHE;
  wire [3:0]M01_AXI_AWID;
  wire [7:0]M01_AXI_AWLEN;
  wire [0:0]M01_AXI_AWLOCK;
  wire [2:0]M01_AXI_AWPROT;
  wire [3:0]M01_AXI_AWQOS;
  wire M01_AXI_AWREADY;
  wire [2:0]M01_AXI_AWSIZE;
  wire M01_AXI_AWVALID;
  wire [3:0]M01_AXI_BID;
  wire M01_AXI_BREADY;
  wire [1:0]M01_AXI_BRESP;
  wire M01_AXI_BVALID;
  wire [511:0]M01_AXI_RDATA;
  wire [3:0]M01_AXI_RID;
  wire M01_AXI_RLAST;
  wire M01_AXI_RREADY;
  wire [1:0]M01_AXI_RRESP;
  wire M01_AXI_RVALID;
  wire [511:0]M01_AXI_WDATA;
  wire M01_AXI_WLAST;
  wire M01_AXI_WREADY;
  wire [63:0]M01_AXI_WSTRB;
  wire M01_AXI_WVALID;
  wire [33:0]M02_AXI_ARADDR;
  wire [1:0]M02_AXI_ARBURST;
  wire [3:0]M02_AXI_ARCACHE;
  wire [3:0]M02_AXI_ARID;
  wire [7:0]M02_AXI_ARLEN;
  wire [0:0]M02_AXI_ARLOCK;
  wire [2:0]M02_AXI_ARPROT;
  wire [3:0]M02_AXI_ARQOS;
  wire M02_AXI_ARREADY;
  wire [2:0]M02_AXI_ARSIZE;
  wire M02_AXI_ARVALID;
  wire [33:0]M02_AXI_AWADDR;
  wire [1:0]M02_AXI_AWBURST;
  wire [3:0]M02_AXI_AWCACHE;
  wire [3:0]M02_AXI_AWID;
  wire [7:0]M02_AXI_AWLEN;
  wire [0:0]M02_AXI_AWLOCK;
  wire [2:0]M02_AXI_AWPROT;
  wire [3:0]M02_AXI_AWQOS;
  wire M02_AXI_AWREADY;
  wire [2:0]M02_AXI_AWSIZE;
  wire M02_AXI_AWVALID;
  wire [3:0]M02_AXI_BID;
  wire M02_AXI_BREADY;
  wire [1:0]M02_AXI_BRESP;
  wire M02_AXI_BVALID;
  wire [511:0]M02_AXI_RDATA;
  wire [3:0]M02_AXI_RID;
  wire M02_AXI_RLAST;
  wire M02_AXI_RREADY;
  wire [1:0]M02_AXI_RRESP;
  wire M02_AXI_RVALID;
  wire [511:0]M02_AXI_WDATA;
  wire M02_AXI_WLAST;
  wire M02_AXI_WREADY;
  wire [63:0]M02_AXI_WSTRB;
  wire M02_AXI_WVALID;
  wire [33:0]M03_AXI_ARADDR;
  wire [1:0]M03_AXI_ARBURST;
  wire [3:0]M03_AXI_ARCACHE;
  wire [3:0]M03_AXI_ARID;
  wire [7:0]M03_AXI_ARLEN;
  wire [0:0]M03_AXI_ARLOCK;
  wire [2:0]M03_AXI_ARPROT;
  wire [3:0]M03_AXI_ARQOS;
  wire M03_AXI_ARREADY;
  wire [2:0]M03_AXI_ARSIZE;
  wire M03_AXI_ARVALID;
  wire [33:0]M03_AXI_AWADDR;
  wire [1:0]M03_AXI_AWBURST;
  wire [3:0]M03_AXI_AWCACHE;
  wire [3:0]M03_AXI_AWID;
  wire [7:0]M03_AXI_AWLEN;
  wire [0:0]M03_AXI_AWLOCK;
  wire [2:0]M03_AXI_AWPROT;
  wire [3:0]M03_AXI_AWQOS;
  wire M03_AXI_AWREADY;
  wire [2:0]M03_AXI_AWSIZE;
  wire M03_AXI_AWVALID;
  wire [3:0]M03_AXI_BID;
  wire M03_AXI_BREADY;
  wire [1:0]M03_AXI_BRESP;
  wire M03_AXI_BVALID;
  wire [511:0]M03_AXI_RDATA;
  wire [3:0]M03_AXI_RID;
  wire M03_AXI_RLAST;
  wire M03_AXI_RREADY;
  wire [1:0]M03_AXI_RRESP;
  wire M03_AXI_RVALID;
  wire [511:0]M03_AXI_WDATA;
  wire M03_AXI_WLAST;
  wire M03_AXI_WREADY;
  wire [63:0]M03_AXI_WSTRB;
  wire M03_AXI_WVALID;
  wire [16:0]S_AXI_ARADDR;
  wire [2:0]S_AXI_ARPROT;
  wire [3:0]S_AXI_ARQOS;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [16:0]S_AXI_AWADDR;
  wire [2:0]S_AXI_AWPROT;
  wire [3:0]S_AXI_AWQOS;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [33:0]kernel_0_m_axi_gmem_ARADDR;
  wire [1:0]kernel_0_m_axi_gmem_ARBURST;
  wire [3:0]kernel_0_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_0_m_axi_gmem_ARLEN;
  wire [1:0]kernel_0_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_0_m_axi_gmem_ARPROT;
  wire [3:0]kernel_0_m_axi_gmem_ARQOS;
  wire kernel_0_m_axi_gmem_ARREADY;
  wire [3:0]kernel_0_m_axi_gmem_ARREGION;
  wire [2:0]kernel_0_m_axi_gmem_ARSIZE;
  wire kernel_0_m_axi_gmem_ARVALID;
  wire [33:0]kernel_0_m_axi_gmem_AWADDR;
  wire [1:0]kernel_0_m_axi_gmem_AWBURST;
  wire [3:0]kernel_0_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_0_m_axi_gmem_AWLEN;
  wire [1:0]kernel_0_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_0_m_axi_gmem_AWPROT;
  wire [3:0]kernel_0_m_axi_gmem_AWQOS;
  wire kernel_0_m_axi_gmem_AWREADY;
  wire [3:0]kernel_0_m_axi_gmem_AWREGION;
  wire [2:0]kernel_0_m_axi_gmem_AWSIZE;
  wire kernel_0_m_axi_gmem_AWVALID;
  wire kernel_0_m_axi_gmem_BREADY;
  wire [1:0]kernel_0_m_axi_gmem_BRESP;
  wire kernel_0_m_axi_gmem_BVALID;
  wire [511:0]kernel_0_m_axi_gmem_RDATA;
  wire kernel_0_m_axi_gmem_RLAST;
  wire kernel_0_m_axi_gmem_RREADY;
  wire [1:0]kernel_0_m_axi_gmem_RRESP;
  wire kernel_0_m_axi_gmem_RVALID;
  wire [511:0]kernel_0_m_axi_gmem_WDATA;
  wire kernel_0_m_axi_gmem_WLAST;
  wire kernel_0_m_axi_gmem_WREADY;
  wire [63:0]kernel_0_m_axi_gmem_WSTRB;
  wire kernel_0_m_axi_gmem_WVALID;
  wire [33:0]kernel_1_m_axi_gmem_ARADDR;
  wire [1:0]kernel_1_m_axi_gmem_ARBURST;
  wire [3:0]kernel_1_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_1_m_axi_gmem_ARLEN;
  wire [1:0]kernel_1_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_1_m_axi_gmem_ARPROT;
  wire [3:0]kernel_1_m_axi_gmem_ARQOS;
  wire kernel_1_m_axi_gmem_ARREADY;
  wire [3:0]kernel_1_m_axi_gmem_ARREGION;
  wire [2:0]kernel_1_m_axi_gmem_ARSIZE;
  wire kernel_1_m_axi_gmem_ARVALID;
  wire [33:0]kernel_1_m_axi_gmem_AWADDR;
  wire [1:0]kernel_1_m_axi_gmem_AWBURST;
  wire [3:0]kernel_1_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_1_m_axi_gmem_AWLEN;
  wire [1:0]kernel_1_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_1_m_axi_gmem_AWPROT;
  wire [3:0]kernel_1_m_axi_gmem_AWQOS;
  wire kernel_1_m_axi_gmem_AWREADY;
  wire [3:0]kernel_1_m_axi_gmem_AWREGION;
  wire [2:0]kernel_1_m_axi_gmem_AWSIZE;
  wire kernel_1_m_axi_gmem_AWVALID;
  wire kernel_1_m_axi_gmem_BREADY;
  wire [1:0]kernel_1_m_axi_gmem_BRESP;
  wire kernel_1_m_axi_gmem_BVALID;
  wire [511:0]kernel_1_m_axi_gmem_RDATA;
  wire kernel_1_m_axi_gmem_RLAST;
  wire kernel_1_m_axi_gmem_RREADY;
  wire [1:0]kernel_1_m_axi_gmem_RRESP;
  wire kernel_1_m_axi_gmem_RVALID;
  wire [511:0]kernel_1_m_axi_gmem_WDATA;
  wire kernel_1_m_axi_gmem_WLAST;
  wire kernel_1_m_axi_gmem_WREADY;
  wire [63:0]kernel_1_m_axi_gmem_WSTRB;
  wire kernel_1_m_axi_gmem_WVALID;
  wire [33:0]kernel_2_m_axi_gmem_ARADDR;
  wire [1:0]kernel_2_m_axi_gmem_ARBURST;
  wire [3:0]kernel_2_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_2_m_axi_gmem_ARLEN;
  wire [1:0]kernel_2_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_2_m_axi_gmem_ARPROT;
  wire [3:0]kernel_2_m_axi_gmem_ARQOS;
  wire kernel_2_m_axi_gmem_ARREADY;
  wire [3:0]kernel_2_m_axi_gmem_ARREGION;
  wire [2:0]kernel_2_m_axi_gmem_ARSIZE;
  wire kernel_2_m_axi_gmem_ARVALID;
  wire [33:0]kernel_2_m_axi_gmem_AWADDR;
  wire [1:0]kernel_2_m_axi_gmem_AWBURST;
  wire [3:0]kernel_2_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_2_m_axi_gmem_AWLEN;
  wire [1:0]kernel_2_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_2_m_axi_gmem_AWPROT;
  wire [3:0]kernel_2_m_axi_gmem_AWQOS;
  wire kernel_2_m_axi_gmem_AWREADY;
  wire [3:0]kernel_2_m_axi_gmem_AWREGION;
  wire [2:0]kernel_2_m_axi_gmem_AWSIZE;
  wire kernel_2_m_axi_gmem_AWVALID;
  wire kernel_2_m_axi_gmem_BREADY;
  wire [1:0]kernel_2_m_axi_gmem_BRESP;
  wire kernel_2_m_axi_gmem_BVALID;
  wire [511:0]kernel_2_m_axi_gmem_RDATA;
  wire kernel_2_m_axi_gmem_RLAST;
  wire kernel_2_m_axi_gmem_RREADY;
  wire [1:0]kernel_2_m_axi_gmem_RRESP;
  wire kernel_2_m_axi_gmem_RVALID;
  wire [511:0]kernel_2_m_axi_gmem_WDATA;
  wire kernel_2_m_axi_gmem_WLAST;
  wire kernel_2_m_axi_gmem_WREADY;
  wire [63:0]kernel_2_m_axi_gmem_WSTRB;
  wire kernel_2_m_axi_gmem_WVALID;
  wire [33:0]kernel_3_m_axi_gmem_ARADDR;
  wire [1:0]kernel_3_m_axi_gmem_ARBURST;
  wire [3:0]kernel_3_m_axi_gmem_ARCACHE;
  wire [7:0]kernel_3_m_axi_gmem_ARLEN;
  wire [1:0]kernel_3_m_axi_gmem_ARLOCK;
  wire [2:0]kernel_3_m_axi_gmem_ARPROT;
  wire [3:0]kernel_3_m_axi_gmem_ARQOS;
  wire kernel_3_m_axi_gmem_ARREADY;
  wire [3:0]kernel_3_m_axi_gmem_ARREGION;
  wire [2:0]kernel_3_m_axi_gmem_ARSIZE;
  wire kernel_3_m_axi_gmem_ARVALID;
  wire [33:0]kernel_3_m_axi_gmem_AWADDR;
  wire [1:0]kernel_3_m_axi_gmem_AWBURST;
  wire [3:0]kernel_3_m_axi_gmem_AWCACHE;
  wire [7:0]kernel_3_m_axi_gmem_AWLEN;
  wire [1:0]kernel_3_m_axi_gmem_AWLOCK;
  wire [2:0]kernel_3_m_axi_gmem_AWPROT;
  wire [3:0]kernel_3_m_axi_gmem_AWQOS;
  wire kernel_3_m_axi_gmem_AWREADY;
  wire [3:0]kernel_3_m_axi_gmem_AWREGION;
  wire [2:0]kernel_3_m_axi_gmem_AWSIZE;
  wire kernel_3_m_axi_gmem_AWVALID;
  wire kernel_3_m_axi_gmem_BREADY;
  wire [1:0]kernel_3_m_axi_gmem_BRESP;
  wire kernel_3_m_axi_gmem_BVALID;
  wire [511:0]kernel_3_m_axi_gmem_RDATA;
  wire kernel_3_m_axi_gmem_RLAST;
  wire kernel_3_m_axi_gmem_RREADY;
  wire [1:0]kernel_3_m_axi_gmem_RRESP;
  wire kernel_3_m_axi_gmem_RVALID;
  wire [511:0]kernel_3_m_axi_gmem_WDATA;
  wire kernel_3_m_axi_gmem_WLAST;
  wire kernel_3_m_axi_gmem_WREADY;
  wire [63:0]kernel_3_m_axi_gmem_WSTRB;
  wire kernel_3_m_axi_gmem_WVALID;
  wire [33:0]m_axi_interconnect_M00_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_ARLEN;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARVALID;
  wire [33:0]m_axi_interconnect_M00_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_AWLEN;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M00_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WVALID;
  wire [33:0]m_axi_interconnect_M01_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_M00_AXI_ARLEN;
  wire [0:0]m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M01_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M01_AXI_M00_AXI_ARVALID;
  wire [33:0]m_axi_interconnect_M01_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_M00_AXI_AWLEN;
  wire [0:0]m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M01_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M01_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M01_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M01_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M01_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M01_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M01_AXI_M00_AXI_WVALID;
  wire [33:0]m_axi_interconnect_M02_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M02_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M02_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M02_AXI_M00_AXI_ARLEN;
  wire [0:0]m_axi_interconnect_M02_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M02_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M02_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M02_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M02_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M02_AXI_M00_AXI_ARVALID;
  wire [33:0]m_axi_interconnect_M02_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M02_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M02_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M02_AXI_M00_AXI_AWLEN;
  wire [0:0]m_axi_interconnect_M02_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M02_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M02_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M02_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M02_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M02_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M02_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M02_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M02_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M02_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M02_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M02_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M02_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M02_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M02_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M02_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M02_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M02_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M02_AXI_M00_AXI_WVALID;
  wire [33:0]m_axi_interconnect_M03_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M03_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M03_AXI_M00_AXI_ARCACHE;
  wire [7:0]m_axi_interconnect_M03_AXI_M00_AXI_ARLEN;
  wire [0:0]m_axi_interconnect_M03_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M03_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M03_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M03_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M03_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M03_AXI_M00_AXI_ARVALID;
  wire [33:0]m_axi_interconnect_M03_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M03_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M03_AXI_M00_AXI_AWCACHE;
  wire [7:0]m_axi_interconnect_M03_AXI_M00_AXI_AWLEN;
  wire [0:0]m_axi_interconnect_M03_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M03_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M03_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M03_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M03_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M03_AXI_M00_AXI_AWVALID;
  wire m_axi_interconnect_M03_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M03_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M03_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M03_AXI_M00_AXI_RDATA;
  wire m_axi_interconnect_M03_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M03_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M03_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M03_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M03_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M03_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M03_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M03_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M03_AXI_M00_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M00_AXI_ARADDR;
  wire s_axi_interconnect_0_M00_AXI_ARREADY;
  wire s_axi_interconnect_0_M00_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M00_AXI_AWADDR;
  wire s_axi_interconnect_0_M00_AXI_AWREADY;
  wire s_axi_interconnect_0_M00_AXI_AWVALID;
  wire s_axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_BRESP;
  wire s_axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_RDATA;
  wire s_axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_RRESP;
  wire s_axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_WDATA;
  wire s_axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M00_AXI_WSTRB;
  wire s_axi_interconnect_0_M00_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M01_AXI_ARADDR;
  wire s_axi_interconnect_0_M01_AXI_ARREADY;
  wire s_axi_interconnect_0_M01_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M01_AXI_AWADDR;
  wire s_axi_interconnect_0_M01_AXI_AWREADY;
  wire s_axi_interconnect_0_M01_AXI_AWVALID;
  wire s_axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M01_AXI_BRESP;
  wire s_axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M01_AXI_RDATA;
  wire s_axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M01_AXI_RRESP;
  wire s_axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M01_AXI_WDATA;
  wire s_axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M01_AXI_WSTRB;
  wire s_axi_interconnect_0_M01_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M02_AXI_ARADDR;
  wire s_axi_interconnect_0_M02_AXI_ARREADY;
  wire s_axi_interconnect_0_M02_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M02_AXI_AWADDR;
  wire s_axi_interconnect_0_M02_AXI_AWREADY;
  wire s_axi_interconnect_0_M02_AXI_AWVALID;
  wire s_axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M02_AXI_BRESP;
  wire s_axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M02_AXI_RDATA;
  wire s_axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M02_AXI_RRESP;
  wire s_axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M02_AXI_WDATA;
  wire s_axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M02_AXI_WSTRB;
  wire s_axi_interconnect_0_M02_AXI_WVALID;
  wire [5:0]s_axi_interconnect_0_M03_AXI_ARADDR;
  wire s_axi_interconnect_0_M03_AXI_ARREADY;
  wire s_axi_interconnect_0_M03_AXI_ARVALID;
  wire [5:0]s_axi_interconnect_0_M03_AXI_AWADDR;
  wire s_axi_interconnect_0_M03_AXI_AWREADY;
  wire s_axi_interconnect_0_M03_AXI_AWVALID;
  wire s_axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M03_AXI_BRESP;
  wire s_axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M03_AXI_RDATA;
  wire s_axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M03_AXI_RRESP;
  wire s_axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M03_AXI_WDATA;
  wire s_axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M03_AXI_WSTRB;
  wire s_axi_interconnect_0_M03_AXI_WVALID;
  wire [16:0]slave_bridge_m_axi_ARADDR;
  wire [2:0]slave_bridge_m_axi_ARPROT;
  wire slave_bridge_m_axi_ARREADY;
  wire slave_bridge_m_axi_ARVALID;
  wire [16:0]slave_bridge_m_axi_AWADDR;
  wire [2:0]slave_bridge_m_axi_AWPROT;
  wire slave_bridge_m_axi_AWREADY;
  wire slave_bridge_m_axi_AWVALID;
  wire slave_bridge_m_axi_BREADY;
  wire [1:0]slave_bridge_m_axi_BRESP;
  wire slave_bridge_m_axi_BVALID;
  wire [31:0]slave_bridge_m_axi_RDATA;
  wire slave_bridge_m_axi_RREADY;
  wire [1:0]slave_bridge_m_axi_RRESP;
  wire slave_bridge_m_axi_RVALID;
  wire [31:0]slave_bridge_m_axi_WDATA;
  wire slave_bridge_m_axi_WREADY;
  wire [3:0]slave_bridge_m_axi_WSTRB;
  wire slave_bridge_m_axi_WVALID;

  assign M00_AXI_ARREADY = M00_AXI_arready;
  assign M00_AXI_AWREADY = M00_AXI_awready;
  assign M00_AXI_BID = M00_AXI_bid[3:0];
  assign M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign M00_AXI_BVALID = M00_AXI_bvalid;
  assign M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign M00_AXI_RID = M00_AXI_rid[3:0];
  assign M00_AXI_RLAST = M00_AXI_rlast;
  assign M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign M00_AXI_RVALID = M00_AXI_rvalid;
  assign M00_AXI_WREADY = M00_AXI_wready;
  assign M00_AXI_araddr[33:0] = M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = M00_AXI_ARCACHE;
  assign M00_AXI_arid[3:0] = M00_AXI_ARID;
  assign M00_AXI_arlen[7:0] = M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = M00_AXI_ARVALID;
  assign M00_AXI_awaddr[33:0] = M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = M00_AXI_AWCACHE;
  assign M00_AXI_awid[3:0] = M00_AXI_AWID;
  assign M00_AXI_awlen[7:0] = M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = M00_AXI_AWVALID;
  assign M00_AXI_bready = M00_AXI_BREADY;
  assign M00_AXI_rready = M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = M00_AXI_WDATA;
  assign M00_AXI_wlast = M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = M00_AXI_WSTRB;
  assign M00_AXI_wvalid = M00_AXI_WVALID;
  assign M01_AXI_ARREADY = M01_AXI_arready;
  assign M01_AXI_AWREADY = M01_AXI_awready;
  assign M01_AXI_BID = M01_AXI_bid[3:0];
  assign M01_AXI_BRESP = M01_AXI_bresp[1:0];
  assign M01_AXI_BVALID = M01_AXI_bvalid;
  assign M01_AXI_RDATA = M01_AXI_rdata[511:0];
  assign M01_AXI_RID = M01_AXI_rid[3:0];
  assign M01_AXI_RLAST = M01_AXI_rlast;
  assign M01_AXI_RRESP = M01_AXI_rresp[1:0];
  assign M01_AXI_RVALID = M01_AXI_rvalid;
  assign M01_AXI_WREADY = M01_AXI_wready;
  assign M01_AXI_araddr[33:0] = M01_AXI_ARADDR;
  assign M01_AXI_arburst[1:0] = M01_AXI_ARBURST;
  assign M01_AXI_arcache[3:0] = M01_AXI_ARCACHE;
  assign M01_AXI_arid[3:0] = M01_AXI_ARID;
  assign M01_AXI_arlen[7:0] = M01_AXI_ARLEN;
  assign M01_AXI_arlock[0] = M01_AXI_ARLOCK;
  assign M01_AXI_arprot[2:0] = M01_AXI_ARPROT;
  assign M01_AXI_arqos[3:0] = M01_AXI_ARQOS;
  assign M01_AXI_arsize[2:0] = M01_AXI_ARSIZE;
  assign M01_AXI_arvalid = M01_AXI_ARVALID;
  assign M01_AXI_awaddr[33:0] = M01_AXI_AWADDR;
  assign M01_AXI_awburst[1:0] = M01_AXI_AWBURST;
  assign M01_AXI_awcache[3:0] = M01_AXI_AWCACHE;
  assign M01_AXI_awid[3:0] = M01_AXI_AWID;
  assign M01_AXI_awlen[7:0] = M01_AXI_AWLEN;
  assign M01_AXI_awlock[0] = M01_AXI_AWLOCK;
  assign M01_AXI_awprot[2:0] = M01_AXI_AWPROT;
  assign M01_AXI_awqos[3:0] = M01_AXI_AWQOS;
  assign M01_AXI_awsize[2:0] = M01_AXI_AWSIZE;
  assign M01_AXI_awvalid = M01_AXI_AWVALID;
  assign M01_AXI_bready = M01_AXI_BREADY;
  assign M01_AXI_rready = M01_AXI_RREADY;
  assign M01_AXI_wdata[511:0] = M01_AXI_WDATA;
  assign M01_AXI_wlast = M01_AXI_WLAST;
  assign M01_AXI_wstrb[63:0] = M01_AXI_WSTRB;
  assign M01_AXI_wvalid = M01_AXI_WVALID;
  assign M02_AXI_ARREADY = M02_AXI_arready;
  assign M02_AXI_AWREADY = M02_AXI_awready;
  assign M02_AXI_BID = M02_AXI_bid[3:0];
  assign M02_AXI_BRESP = M02_AXI_bresp[1:0];
  assign M02_AXI_BVALID = M02_AXI_bvalid;
  assign M02_AXI_RDATA = M02_AXI_rdata[511:0];
  assign M02_AXI_RID = M02_AXI_rid[3:0];
  assign M02_AXI_RLAST = M02_AXI_rlast;
  assign M02_AXI_RRESP = M02_AXI_rresp[1:0];
  assign M02_AXI_RVALID = M02_AXI_rvalid;
  assign M02_AXI_WREADY = M02_AXI_wready;
  assign M02_AXI_araddr[33:0] = M02_AXI_ARADDR;
  assign M02_AXI_arburst[1:0] = M02_AXI_ARBURST;
  assign M02_AXI_arcache[3:0] = M02_AXI_ARCACHE;
  assign M02_AXI_arid[3:0] = M02_AXI_ARID;
  assign M02_AXI_arlen[7:0] = M02_AXI_ARLEN;
  assign M02_AXI_arlock[0] = M02_AXI_ARLOCK;
  assign M02_AXI_arprot[2:0] = M02_AXI_ARPROT;
  assign M02_AXI_arqos[3:0] = M02_AXI_ARQOS;
  assign M02_AXI_arsize[2:0] = M02_AXI_ARSIZE;
  assign M02_AXI_arvalid = M02_AXI_ARVALID;
  assign M02_AXI_awaddr[33:0] = M02_AXI_AWADDR;
  assign M02_AXI_awburst[1:0] = M02_AXI_AWBURST;
  assign M02_AXI_awcache[3:0] = M02_AXI_AWCACHE;
  assign M02_AXI_awid[3:0] = M02_AXI_AWID;
  assign M02_AXI_awlen[7:0] = M02_AXI_AWLEN;
  assign M02_AXI_awlock[0] = M02_AXI_AWLOCK;
  assign M02_AXI_awprot[2:0] = M02_AXI_AWPROT;
  assign M02_AXI_awqos[3:0] = M02_AXI_AWQOS;
  assign M02_AXI_awsize[2:0] = M02_AXI_AWSIZE;
  assign M02_AXI_awvalid = M02_AXI_AWVALID;
  assign M02_AXI_bready = M02_AXI_BREADY;
  assign M02_AXI_rready = M02_AXI_RREADY;
  assign M02_AXI_wdata[511:0] = M02_AXI_WDATA;
  assign M02_AXI_wlast = M02_AXI_WLAST;
  assign M02_AXI_wstrb[63:0] = M02_AXI_WSTRB;
  assign M02_AXI_wvalid = M02_AXI_WVALID;
  assign M03_AXI_ARREADY = M03_AXI_arready;
  assign M03_AXI_AWREADY = M03_AXI_awready;
  assign M03_AXI_BID = M03_AXI_bid[3:0];
  assign M03_AXI_BRESP = M03_AXI_bresp[1:0];
  assign M03_AXI_BVALID = M03_AXI_bvalid;
  assign M03_AXI_RDATA = M03_AXI_rdata[511:0];
  assign M03_AXI_RID = M03_AXI_rid[3:0];
  assign M03_AXI_RLAST = M03_AXI_rlast;
  assign M03_AXI_RRESP = M03_AXI_rresp[1:0];
  assign M03_AXI_RVALID = M03_AXI_rvalid;
  assign M03_AXI_WREADY = M03_AXI_wready;
  assign M03_AXI_araddr[33:0] = M03_AXI_ARADDR;
  assign M03_AXI_arburst[1:0] = M03_AXI_ARBURST;
  assign M03_AXI_arcache[3:0] = M03_AXI_ARCACHE;
  assign M03_AXI_arid[3:0] = M03_AXI_ARID;
  assign M03_AXI_arlen[7:0] = M03_AXI_ARLEN;
  assign M03_AXI_arlock[0] = M03_AXI_ARLOCK;
  assign M03_AXI_arprot[2:0] = M03_AXI_ARPROT;
  assign M03_AXI_arqos[3:0] = M03_AXI_ARQOS;
  assign M03_AXI_arsize[2:0] = M03_AXI_ARSIZE;
  assign M03_AXI_arvalid = M03_AXI_ARVALID;
  assign M03_AXI_awaddr[33:0] = M03_AXI_AWADDR;
  assign M03_AXI_awburst[1:0] = M03_AXI_AWBURST;
  assign M03_AXI_awcache[3:0] = M03_AXI_AWCACHE;
  assign M03_AXI_awid[3:0] = M03_AXI_AWID;
  assign M03_AXI_awlen[7:0] = M03_AXI_AWLEN;
  assign M03_AXI_awlock[0] = M03_AXI_AWLOCK;
  assign M03_AXI_awprot[2:0] = M03_AXI_AWPROT;
  assign M03_AXI_awqos[3:0] = M03_AXI_AWQOS;
  assign M03_AXI_awsize[2:0] = M03_AXI_AWSIZE;
  assign M03_AXI_awvalid = M03_AXI_AWVALID;
  assign M03_AXI_bready = M03_AXI_BREADY;
  assign M03_AXI_rready = M03_AXI_RREADY;
  assign M03_AXI_wdata[511:0] = M03_AXI_WDATA;
  assign M03_AXI_wlast = M03_AXI_WLAST;
  assign M03_AXI_wstrb[63:0] = M03_AXI_WSTRB;
  assign M03_AXI_wvalid = M03_AXI_WVALID;
  assign S_AXI_ARADDR = S_AXI_araddr[16:0];
  assign S_AXI_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_ARQOS = S_AXI_arqos[3:0];
  assign S_AXI_ARVALID = S_AXI_arvalid;
  assign S_AXI_AWADDR = S_AXI_awaddr[16:0];
  assign S_AXI_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_AWQOS = S_AXI_awqos[3:0];
  assign S_AXI_AWVALID = S_AXI_awvalid;
  assign S_AXI_BREADY = S_AXI_bready;
  assign S_AXI_RREADY = S_AXI_rready;
  assign S_AXI_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_ARREADY;
  assign S_AXI_awready = S_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_BRESP;
  assign S_AXI_bvalid = S_AXI_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_RRESP;
  assign S_AXI_rvalid = S_AXI_RVALID;
  assign S_AXI_wready = S_AXI_WREADY;
  bd_2fd7_control_sys_reset_0 control_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(CONTROL_RESET),
        .interconnect_aresetn(CONTROL_RESET_sync),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(CONTROL_CLK));
  bd_2fd7_data_sys_reset_0 data_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(DATA_RESET),
        .interconnect_aresetn(DATA_RESET_sync),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(DATA_CLK));
  bd_2fd7_kernel_0_0 kernel_0
       (.ap_clk(DATA_CLK),
        .ap_rst_n(DATA_RESET_sync),
        .m_axi_gmem_ARADDR(kernel_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_0_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_0_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_0_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M00_AXI_WVALID));
  bd_2fd7_kernel_1_0 kernel_1
       (.ap_clk(DATA_CLK),
        .ap_rst_n(DATA_RESET_sync),
        .m_axi_gmem_ARADDR(kernel_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_1_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_1_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M01_AXI_WVALID));
  bd_2fd7_kernel_2_0 kernel_2
       (.ap_clk(DATA_CLK),
        .ap_rst_n(DATA_RESET_sync),
        .m_axi_gmem_ARADDR(kernel_2_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_2_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_2_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_2_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_2_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_2_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_2_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_2_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_2_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_2_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_2_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_2_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_2_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_2_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_2_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_2_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_2_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_2_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_2_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_2_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_2_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_2_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_2_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_2_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_2_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_2_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_2_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_2_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_2_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_2_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_2_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_2_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_2_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_2_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_2_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M02_AXI_WVALID));
  bd_2fd7_kernel_3_0 kernel_3
       (.ap_clk(DATA_CLK),
        .ap_rst_n(DATA_RESET_sync),
        .m_axi_gmem_ARADDR(kernel_3_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(kernel_3_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(kernel_3_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(kernel_3_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(kernel_3_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(kernel_3_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(kernel_3_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(kernel_3_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(kernel_3_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(kernel_3_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(kernel_3_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(kernel_3_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(kernel_3_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(kernel_3_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(kernel_3_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(kernel_3_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(kernel_3_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(kernel_3_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(kernel_3_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(kernel_3_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(kernel_3_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(kernel_3_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(kernel_3_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(kernel_3_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(kernel_3_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(kernel_3_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(kernel_3_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(kernel_3_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(kernel_3_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(kernel_3_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(kernel_3_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(kernel_3_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(kernel_3_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(kernel_3_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(kernel_3_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M03_AXI_ARADDR),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M03_AXI_AWADDR),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M03_AXI_WVALID));
  bd_2fd7_m_axi_interconnect_M00_AXI_0 m_axi_interconnect_M00_AXI
       (.ACLK(DATA_CLK),
        .ARESETN(DATA_RESET_sync),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID),
        .S00_ACLK(DATA_CLK),
        .S00_ARESETN(DATA_RESET_sync),
        .S00_AXI_araddr(kernel_0_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_0_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_0_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_0_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_0_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_0_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_0_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_0_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_0_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_0_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_0_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_0_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_0_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_0_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_0_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_0_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_0_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_0_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_0_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_0_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_0_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_0_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_0_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_0_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_0_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_0_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_0_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_0_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_0_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_0_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_0_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_0_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_0_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_0_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_0_m_axi_gmem_WVALID));
  bd_2fd7_m_axi_interconnect_M01_AXI_0 m_axi_interconnect_M01_AXI
       (.ACLK(DATA_CLK),
        .ARESETN(DATA_RESET_sync),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M01_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M01_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M01_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M01_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M01_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M01_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M01_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M01_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M01_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M01_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M01_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M01_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M01_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M01_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M01_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M01_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M01_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M01_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M01_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M01_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M01_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M01_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M01_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M01_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M01_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M01_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M01_AXI_M00_AXI_WVALID),
        .S00_ACLK(DATA_CLK),
        .S00_ARESETN(DATA_RESET_sync),
        .S00_AXI_araddr(kernel_1_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_1_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_1_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_1_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_1_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_1_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_1_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_1_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_1_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_1_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_1_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_1_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_1_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_1_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_1_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_1_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_1_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_1_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_1_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_1_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_1_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_1_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_1_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_1_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_1_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_1_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_1_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_1_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_1_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_1_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_1_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_1_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_1_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_1_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_1_m_axi_gmem_WVALID));
  bd_2fd7_m_axi_interconnect_M02_AXI_0 m_axi_interconnect_M02_AXI
       (.ACLK(DATA_CLK),
        .ARESETN(DATA_RESET_sync),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M02_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M02_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M02_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M02_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M02_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M02_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M02_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M02_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M02_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M02_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M02_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M02_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M02_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M02_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M02_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M02_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M02_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M02_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M02_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M02_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M02_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M02_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M02_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M02_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M02_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M02_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M02_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M02_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M02_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M02_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M02_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M02_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M02_AXI_M00_AXI_WVALID),
        .S00_ACLK(DATA_CLK),
        .S00_ARESETN(DATA_RESET_sync),
        .S00_AXI_araddr(kernel_2_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_2_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_2_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_2_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_2_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_2_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_2_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_2_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_2_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_2_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_2_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_2_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_2_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_2_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_2_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_2_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_2_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_2_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_2_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_2_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_2_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_2_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_2_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_2_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_2_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_2_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_2_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_2_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_2_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_2_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_2_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_2_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_2_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_2_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_2_m_axi_gmem_WVALID));
  bd_2fd7_m_axi_interconnect_M03_AXI_0 m_axi_interconnect_M03_AXI
       (.ACLK(DATA_CLK),
        .ARESETN(DATA_RESET_sync),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET_sync),
        .M00_AXI_araddr(m_axi_interconnect_M03_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M03_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M03_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arlen(m_axi_interconnect_M03_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M03_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M03_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M03_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M03_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M03_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M03_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M03_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M03_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M03_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awlen(m_axi_interconnect_M03_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M03_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M03_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M03_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M03_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M03_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M03_AXI_M00_AXI_AWVALID),
        .M00_AXI_bready(m_axi_interconnect_M03_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M03_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M03_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M03_AXI_M00_AXI_RDATA),
        .M00_AXI_rlast(m_axi_interconnect_M03_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M03_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M03_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M03_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M03_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M03_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M03_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M03_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M03_AXI_M00_AXI_WVALID),
        .S00_ACLK(DATA_CLK),
        .S00_ARESETN(DATA_RESET_sync),
        .S00_AXI_araddr(kernel_3_m_axi_gmem_ARADDR),
        .S00_AXI_arburst(kernel_3_m_axi_gmem_ARBURST),
        .S00_AXI_arcache(kernel_3_m_axi_gmem_ARCACHE),
        .S00_AXI_arlen(kernel_3_m_axi_gmem_ARLEN),
        .S00_AXI_arlock(kernel_3_m_axi_gmem_ARLOCK),
        .S00_AXI_arprot(kernel_3_m_axi_gmem_ARPROT),
        .S00_AXI_arqos(kernel_3_m_axi_gmem_ARQOS),
        .S00_AXI_arready(kernel_3_m_axi_gmem_ARREADY),
        .S00_AXI_arregion(kernel_3_m_axi_gmem_ARREGION),
        .S00_AXI_arsize(kernel_3_m_axi_gmem_ARSIZE),
        .S00_AXI_arvalid(kernel_3_m_axi_gmem_ARVALID),
        .S00_AXI_awaddr(kernel_3_m_axi_gmem_AWADDR),
        .S00_AXI_awburst(kernel_3_m_axi_gmem_AWBURST),
        .S00_AXI_awcache(kernel_3_m_axi_gmem_AWCACHE),
        .S00_AXI_awlen(kernel_3_m_axi_gmem_AWLEN),
        .S00_AXI_awlock(kernel_3_m_axi_gmem_AWLOCK),
        .S00_AXI_awprot(kernel_3_m_axi_gmem_AWPROT),
        .S00_AXI_awqos(kernel_3_m_axi_gmem_AWQOS),
        .S00_AXI_awready(kernel_3_m_axi_gmem_AWREADY),
        .S00_AXI_awregion(kernel_3_m_axi_gmem_AWREGION),
        .S00_AXI_awsize(kernel_3_m_axi_gmem_AWSIZE),
        .S00_AXI_awvalid(kernel_3_m_axi_gmem_AWVALID),
        .S00_AXI_bready(kernel_3_m_axi_gmem_BREADY),
        .S00_AXI_bresp(kernel_3_m_axi_gmem_BRESP),
        .S00_AXI_bvalid(kernel_3_m_axi_gmem_BVALID),
        .S00_AXI_rdata(kernel_3_m_axi_gmem_RDATA),
        .S00_AXI_rlast(kernel_3_m_axi_gmem_RLAST),
        .S00_AXI_rready(kernel_3_m_axi_gmem_RREADY),
        .S00_AXI_rresp(kernel_3_m_axi_gmem_RRESP),
        .S00_AXI_rvalid(kernel_3_m_axi_gmem_RVALID),
        .S00_AXI_wdata(kernel_3_m_axi_gmem_WDATA),
        .S00_AXI_wlast(kernel_3_m_axi_gmem_WLAST),
        .S00_AXI_wready(kernel_3_m_axi_gmem_WREADY),
        .S00_AXI_wstrb(kernel_3_m_axi_gmem_WSTRB),
        .S00_AXI_wvalid(kernel_3_m_axi_gmem_WVALID));
  (* DONT_TOUCH *) 
  bd_2fd7_master_bridge_0_0 master_bridge_0
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET_sync),
        .m_axi_araddr(M00_AXI_ARADDR),
        .m_axi_arburst(M00_AXI_ARBURST),
        .m_axi_arcache(M00_AXI_ARCACHE),
        .m_axi_arid(M00_AXI_ARID),
        .m_axi_arlen(M00_AXI_ARLEN),
        .m_axi_arlock(M00_AXI_ARLOCK),
        .m_axi_arprot(M00_AXI_ARPROT),
        .m_axi_arqos(M00_AXI_ARQOS),
        .m_axi_arready(M00_AXI_ARREADY),
        .m_axi_arsize(M00_AXI_ARSIZE),
        .m_axi_arvalid(M00_AXI_ARVALID),
        .m_axi_awaddr(M00_AXI_AWADDR),
        .m_axi_awburst(M00_AXI_AWBURST),
        .m_axi_awcache(M00_AXI_AWCACHE),
        .m_axi_awid(M00_AXI_AWID),
        .m_axi_awlen(M00_AXI_AWLEN),
        .m_axi_awlock(M00_AXI_AWLOCK),
        .m_axi_awprot(M00_AXI_AWPROT),
        .m_axi_awqos(M00_AXI_AWQOS),
        .m_axi_awready(M00_AXI_AWREADY),
        .m_axi_awsize(M00_AXI_AWSIZE),
        .m_axi_awvalid(M00_AXI_AWVALID),
        .m_axi_bid(M00_AXI_BID),
        .m_axi_bready(M00_AXI_BREADY),
        .m_axi_bresp(M00_AXI_BRESP),
        .m_axi_bvalid(M00_AXI_BVALID),
        .m_axi_rdata(M00_AXI_RDATA),
        .m_axi_rid(M00_AXI_RID),
        .m_axi_rlast(M00_AXI_RLAST),
        .m_axi_rready(M00_AXI_RREADY),
        .m_axi_rresp(M00_AXI_RRESP),
        .m_axi_rvalid(M00_AXI_RVALID),
        .m_axi_wdata(M00_AXI_WDATA),
        .m_axi_wlast(M00_AXI_WLAST),
        .m_axi_wready(M00_AXI_WREADY),
        .m_axi_wstrb(M00_AXI_WSTRB),
        .m_axi_wvalid(M00_AXI_WVALID),
        .s_axi_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .s_axi_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .s_axi_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID));
  (* DONT_TOUCH *) 
  bd_2fd7_master_bridge_1_0 master_bridge_1
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET_sync),
        .m_axi_araddr(M01_AXI_ARADDR),
        .m_axi_arburst(M01_AXI_ARBURST),
        .m_axi_arcache(M01_AXI_ARCACHE),
        .m_axi_arid(M01_AXI_ARID),
        .m_axi_arlen(M01_AXI_ARLEN),
        .m_axi_arlock(M01_AXI_ARLOCK),
        .m_axi_arprot(M01_AXI_ARPROT),
        .m_axi_arqos(M01_AXI_ARQOS),
        .m_axi_arready(M01_AXI_ARREADY),
        .m_axi_arsize(M01_AXI_ARSIZE),
        .m_axi_arvalid(M01_AXI_ARVALID),
        .m_axi_awaddr(M01_AXI_AWADDR),
        .m_axi_awburst(M01_AXI_AWBURST),
        .m_axi_awcache(M01_AXI_AWCACHE),
        .m_axi_awid(M01_AXI_AWID),
        .m_axi_awlen(M01_AXI_AWLEN),
        .m_axi_awlock(M01_AXI_AWLOCK),
        .m_axi_awprot(M01_AXI_AWPROT),
        .m_axi_awqos(M01_AXI_AWQOS),
        .m_axi_awready(M01_AXI_AWREADY),
        .m_axi_awsize(M01_AXI_AWSIZE),
        .m_axi_awvalid(M01_AXI_AWVALID),
        .m_axi_bid(M01_AXI_BID),
        .m_axi_bready(M01_AXI_BREADY),
        .m_axi_bresp(M01_AXI_BRESP),
        .m_axi_bvalid(M01_AXI_BVALID),
        .m_axi_rdata(M01_AXI_RDATA),
        .m_axi_rid(M01_AXI_RID),
        .m_axi_rlast(M01_AXI_RLAST),
        .m_axi_rready(M01_AXI_RREADY),
        .m_axi_rresp(M01_AXI_RRESP),
        .m_axi_rvalid(M01_AXI_RVALID),
        .m_axi_wdata(M01_AXI_WDATA),
        .m_axi_wlast(M01_AXI_WLAST),
        .m_axi_wready(M01_AXI_WREADY),
        .m_axi_wstrb(M01_AXI_WSTRB),
        .m_axi_wvalid(M01_AXI_WVALID),
        .s_axi_araddr(m_axi_interconnect_M01_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M01_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M01_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M01_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M01_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M01_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M01_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M01_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M01_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M01_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M01_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M01_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M01_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M01_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M01_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M01_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M01_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M01_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M01_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M01_AXI_M00_AXI_AWVALID),
        .s_axi_bready(m_axi_interconnect_M01_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M01_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M01_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M01_AXI_M00_AXI_RDATA),
        .s_axi_rlast(m_axi_interconnect_M01_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M01_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M01_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M01_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M01_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M01_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M01_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M01_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M01_AXI_M00_AXI_WVALID));
  (* DONT_TOUCH *) 
  bd_2fd7_master_bridge_2_0 master_bridge_2
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET_sync),
        .m_axi_araddr(M02_AXI_ARADDR),
        .m_axi_arburst(M02_AXI_ARBURST),
        .m_axi_arcache(M02_AXI_ARCACHE),
        .m_axi_arid(M02_AXI_ARID),
        .m_axi_arlen(M02_AXI_ARLEN),
        .m_axi_arlock(M02_AXI_ARLOCK),
        .m_axi_arprot(M02_AXI_ARPROT),
        .m_axi_arqos(M02_AXI_ARQOS),
        .m_axi_arready(M02_AXI_ARREADY),
        .m_axi_arsize(M02_AXI_ARSIZE),
        .m_axi_arvalid(M02_AXI_ARVALID),
        .m_axi_awaddr(M02_AXI_AWADDR),
        .m_axi_awburst(M02_AXI_AWBURST),
        .m_axi_awcache(M02_AXI_AWCACHE),
        .m_axi_awid(M02_AXI_AWID),
        .m_axi_awlen(M02_AXI_AWLEN),
        .m_axi_awlock(M02_AXI_AWLOCK),
        .m_axi_awprot(M02_AXI_AWPROT),
        .m_axi_awqos(M02_AXI_AWQOS),
        .m_axi_awready(M02_AXI_AWREADY),
        .m_axi_awsize(M02_AXI_AWSIZE),
        .m_axi_awvalid(M02_AXI_AWVALID),
        .m_axi_bid(M02_AXI_BID),
        .m_axi_bready(M02_AXI_BREADY),
        .m_axi_bresp(M02_AXI_BRESP),
        .m_axi_bvalid(M02_AXI_BVALID),
        .m_axi_rdata(M02_AXI_RDATA),
        .m_axi_rid(M02_AXI_RID),
        .m_axi_rlast(M02_AXI_RLAST),
        .m_axi_rready(M02_AXI_RREADY),
        .m_axi_rresp(M02_AXI_RRESP),
        .m_axi_rvalid(M02_AXI_RVALID),
        .m_axi_wdata(M02_AXI_WDATA),
        .m_axi_wlast(M02_AXI_WLAST),
        .m_axi_wready(M02_AXI_WREADY),
        .m_axi_wstrb(M02_AXI_WSTRB),
        .m_axi_wvalid(M02_AXI_WVALID),
        .s_axi_araddr(m_axi_interconnect_M02_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M02_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M02_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M02_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M02_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M02_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M02_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M02_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M02_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M02_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M02_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M02_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M02_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M02_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M02_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M02_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M02_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M02_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M02_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M02_AXI_M00_AXI_AWVALID),
        .s_axi_bready(m_axi_interconnect_M02_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M02_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M02_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M02_AXI_M00_AXI_RDATA),
        .s_axi_rlast(m_axi_interconnect_M02_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M02_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M02_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M02_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M02_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M02_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M02_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M02_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M02_AXI_M00_AXI_WVALID));
  (* DONT_TOUCH *) 
  bd_2fd7_master_bridge_3_0 master_bridge_3
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET_sync),
        .m_axi_araddr(M03_AXI_ARADDR),
        .m_axi_arburst(M03_AXI_ARBURST),
        .m_axi_arcache(M03_AXI_ARCACHE),
        .m_axi_arid(M03_AXI_ARID),
        .m_axi_arlen(M03_AXI_ARLEN),
        .m_axi_arlock(M03_AXI_ARLOCK),
        .m_axi_arprot(M03_AXI_ARPROT),
        .m_axi_arqos(M03_AXI_ARQOS),
        .m_axi_arready(M03_AXI_ARREADY),
        .m_axi_arsize(M03_AXI_ARSIZE),
        .m_axi_arvalid(M03_AXI_ARVALID),
        .m_axi_awaddr(M03_AXI_AWADDR),
        .m_axi_awburst(M03_AXI_AWBURST),
        .m_axi_awcache(M03_AXI_AWCACHE),
        .m_axi_awid(M03_AXI_AWID),
        .m_axi_awlen(M03_AXI_AWLEN),
        .m_axi_awlock(M03_AXI_AWLOCK),
        .m_axi_awprot(M03_AXI_AWPROT),
        .m_axi_awqos(M03_AXI_AWQOS),
        .m_axi_awready(M03_AXI_AWREADY),
        .m_axi_awsize(M03_AXI_AWSIZE),
        .m_axi_awvalid(M03_AXI_AWVALID),
        .m_axi_bid(M03_AXI_BID),
        .m_axi_bready(M03_AXI_BREADY),
        .m_axi_bresp(M03_AXI_BRESP),
        .m_axi_bvalid(M03_AXI_BVALID),
        .m_axi_rdata(M03_AXI_RDATA),
        .m_axi_rid(M03_AXI_RID),
        .m_axi_rlast(M03_AXI_RLAST),
        .m_axi_rready(M03_AXI_RREADY),
        .m_axi_rresp(M03_AXI_RRESP),
        .m_axi_rvalid(M03_AXI_RVALID),
        .m_axi_wdata(M03_AXI_WDATA),
        .m_axi_wlast(M03_AXI_WLAST),
        .m_axi_wready(M03_AXI_WREADY),
        .m_axi_wstrb(M03_AXI_WSTRB),
        .m_axi_wvalid(M03_AXI_WVALID),
        .s_axi_araddr(m_axi_interconnect_M03_AXI_M00_AXI_ARADDR),
        .s_axi_arburst(m_axi_interconnect_M03_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M03_AXI_M00_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(m_axi_interconnect_M03_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M03_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M03_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M03_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M03_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M03_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M03_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M03_AXI_M00_AXI_AWADDR),
        .s_axi_awburst(m_axi_interconnect_M03_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M03_AXI_M00_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(m_axi_interconnect_M03_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M03_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M03_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M03_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M03_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M03_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M03_AXI_M00_AXI_AWVALID),
        .s_axi_bready(m_axi_interconnect_M03_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M03_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M03_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M03_AXI_M00_AXI_RDATA),
        .s_axi_rlast(m_axi_interconnect_M03_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M03_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M03_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M03_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M03_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M03_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M03_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M03_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M03_AXI_M00_AXI_WVALID));
  bd_2fd7_s_axi_interconnect_0_0 s_axi_interconnect_0
       (.ACLK(CONTROL_CLK),
        .ARESETN(CONTROL_RESET_sync),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET_sync),
        .M00_AXI_araddr(s_axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(s_axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(s_axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(s_axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(s_axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(s_axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(s_axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(s_axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(s_axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(s_axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(s_axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(s_axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(s_axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(s_axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(s_axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(s_axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(s_axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(DATA_CLK),
        .M01_ARESETN(DATA_RESET_sync),
        .M01_AXI_araddr(s_axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(s_axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(s_axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(s_axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(s_axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(s_axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(s_axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(s_axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(s_axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(s_axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(s_axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(s_axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(s_axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(s_axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(s_axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(s_axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(s_axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(DATA_CLK),
        .M02_ARESETN(DATA_RESET_sync),
        .M02_AXI_araddr(s_axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(s_axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(s_axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(s_axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(s_axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(s_axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(s_axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(s_axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(s_axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(s_axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(s_axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(s_axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(s_axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(s_axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(s_axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(s_axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(s_axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(DATA_CLK),
        .M03_ARESETN(DATA_RESET_sync),
        .M03_AXI_araddr(s_axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(s_axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(s_axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(s_axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(s_axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(s_axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(s_axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(s_axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(s_axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(s_axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(s_axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(s_axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(s_axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(s_axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(s_axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(s_axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(s_axi_interconnect_0_M03_AXI_WVALID),
        .S00_ACLK(CONTROL_CLK),
        .S00_ARESETN(CONTROL_RESET_sync),
        .S00_AXI_araddr(slave_bridge_m_axi_ARADDR),
        .S00_AXI_arprot(slave_bridge_m_axi_ARPROT),
        .S00_AXI_arready(slave_bridge_m_axi_ARREADY),
        .S00_AXI_arvalid(slave_bridge_m_axi_ARVALID),
        .S00_AXI_awaddr(slave_bridge_m_axi_AWADDR),
        .S00_AXI_awprot(slave_bridge_m_axi_AWPROT),
        .S00_AXI_awready(slave_bridge_m_axi_AWREADY),
        .S00_AXI_awvalid(slave_bridge_m_axi_AWVALID),
        .S00_AXI_bready(slave_bridge_m_axi_BREADY),
        .S00_AXI_bresp(slave_bridge_m_axi_BRESP),
        .S00_AXI_bvalid(slave_bridge_m_axi_BVALID),
        .S00_AXI_rdata(slave_bridge_m_axi_RDATA),
        .S00_AXI_rready(slave_bridge_m_axi_RREADY),
        .S00_AXI_rresp(slave_bridge_m_axi_RRESP),
        .S00_AXI_rvalid(slave_bridge_m_axi_RVALID),
        .S00_AXI_wdata(slave_bridge_m_axi_WDATA),
        .S00_AXI_wready(slave_bridge_m_axi_WREADY),
        .S00_AXI_wstrb(slave_bridge_m_axi_WSTRB),
        .S00_AXI_wvalid(slave_bridge_m_axi_WVALID));
  (* DONT_TOUCH *) 
  bd_2fd7_slave_bridge_0 slave_bridge
       (.aclk(CONTROL_CLK),
        .aresetn(CONTROL_RESET_sync),
        .m_axi_araddr(slave_bridge_m_axi_ARADDR),
        .m_axi_arprot(slave_bridge_m_axi_ARPROT),
        .m_axi_arready(slave_bridge_m_axi_ARREADY),
        .m_axi_arvalid(slave_bridge_m_axi_ARVALID),
        .m_axi_awaddr(slave_bridge_m_axi_AWADDR),
        .m_axi_awprot(slave_bridge_m_axi_AWPROT),
        .m_axi_awready(slave_bridge_m_axi_AWREADY),
        .m_axi_awvalid(slave_bridge_m_axi_AWVALID),
        .m_axi_bready(slave_bridge_m_axi_BREADY),
        .m_axi_bresp(slave_bridge_m_axi_BRESP),
        .m_axi_bvalid(slave_bridge_m_axi_BVALID),
        .m_axi_rdata(slave_bridge_m_axi_RDATA),
        .m_axi_rready(slave_bridge_m_axi_RREADY),
        .m_axi_rresp(slave_bridge_m_axi_RRESP),
        .m_axi_rvalid(slave_bridge_m_axi_RVALID),
        .m_axi_wdata(slave_bridge_m_axi_WDATA),
        .m_axi_wready(slave_bridge_m_axi_WREADY),
        .m_axi_wstrb(slave_bridge_m_axi_WSTRB),
        .m_axi_wvalid(slave_bridge_m_axi_WVALID),
        .s_axi_araddr(S_AXI_ARADDR),
        .s_axi_arprot(S_AXI_ARPROT),
        .s_axi_arqos(S_AXI_ARQOS),
        .s_axi_arready(S_AXI_ARREADY),
        .s_axi_arvalid(S_AXI_ARVALID),
        .s_axi_awaddr(S_AXI_AWADDR),
        .s_axi_awprot(S_AXI_AWPROT),
        .s_axi_awqos(S_AXI_AWQOS),
        .s_axi_awready(S_AXI_AWREADY),
        .s_axi_awvalid(S_AXI_AWVALID),
        .s_axi_bready(S_AXI_BREADY),
        .s_axi_bresp(S_AXI_BRESP),
        .s_axi_bvalid(S_AXI_BVALID),
        .s_axi_rdata(S_AXI_RDATA),
        .s_axi_rready(S_AXI_RREADY),
        .s_axi_rresp(S_AXI_RRESP),
        .s_axi_rvalid(S_AXI_RVALID),
        .s_axi_wdata(S_AXI_WDATA),
        .s_axi_wready(S_AXI_WREADY),
        .s_axi_wstrb(S_AXI_WSTRB),
        .s_axi_wvalid(S_AXI_WVALID));
endmodule

module bd_2fd7_m_axi_interconnect_M00_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [33:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [33:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire m_axi_interconnect_M00_AXI_ACLK_net;
  wire m_axi_interconnect_M00_AXI_ARESETN_net;
  wire [33:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARLEN;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARQOS;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_ARREADY;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARREGION;
  wire [2:0]m_axi_interconnect_M00_AXI_to_s00_couplers_ARSIZE;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_ARVALID;
  wire [33:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWCACHE;
  wire [7:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWLEN;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWQOS;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_AWREADY;
  wire [3:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWREGION;
  wire [2:0]m_axi_interconnect_M00_AXI_to_s00_couplers_AWSIZE;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_AWVALID;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_BREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_BRESP;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_BVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_to_s00_couplers_RDATA;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_RLAST;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_RREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_to_s00_couplers_RRESP;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_RVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_to_s00_couplers_WDATA;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_WLAST;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_WREADY;
  wire [63:0]m_axi_interconnect_M00_AXI_to_s00_couplers_WSTRB;
  wire m_axi_interconnect_M00_AXI_to_s00_couplers_WVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_BREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M00_AXI_BRESP;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_BVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M00_AXI_RDATA;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_RLAST;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_RREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M00_AXI_RRESP;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_RVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M00_AXI_WDATA;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_WLAST;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_WREADY;
  wire [63:0]s00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB;
  wire s00_couplers_to_m_axi_interconnect_M00_AXI_WVALID;

  assign M00_AXI_araddr[33:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[33:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_m_axi_interconnect_M00_AXI_BREADY;
  assign M00_AXI_rready = s00_couplers_to_m_axi_interconnect_M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_m_axi_interconnect_M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_m_axi_interconnect_M00_AXI_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = m_axi_interconnect_M00_AXI_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = m_axi_interconnect_M00_AXI_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = m_axi_interconnect_M00_AXI_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = m_axi_interconnect_M00_AXI_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = m_axi_interconnect_M00_AXI_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = m_axi_interconnect_M00_AXI_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = m_axi_interconnect_M00_AXI_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = m_axi_interconnect_M00_AXI_to_s00_couplers_RVALID;
  assign S00_AXI_wready = m_axi_interconnect_M00_AXI_to_s00_couplers_WREADY;
  assign m_axi_interconnect_M00_AXI_ACLK_net = M00_ACLK;
  assign m_axi_interconnect_M00_AXI_ARESETN_net = M00_ARESETN;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARADDR = S00_AXI_araddr[33:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWADDR = S00_AXI_awaddr[33:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_BREADY = S00_AXI_bready;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_RREADY = S00_AXI_rready;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign m_axi_interconnect_M00_AXI_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_m_axi_interconnect_M00_AXI_WREADY = M00_AXI_wready;
  s00_couplers_imp_1328SXF s00_couplers
       (.M_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR),
        .M_AXI_arburst(s00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST),
        .M_AXI_arcache(s00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN),
        .M_AXI_arlock(s00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT),
        .M_AXI_arqos(s00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS),
        .M_AXI_arready(s00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY),
        .M_AXI_arsize(s00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR),
        .M_AXI_awburst(s00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST),
        .M_AXI_awcache(s00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN),
        .M_AXI_awlock(s00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT),
        .M_AXI_awqos(s00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS),
        .M_AXI_awready(s00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY),
        .M_AXI_awsize(s00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID),
        .M_AXI_bready(s00_couplers_to_m_axi_interconnect_M00_AXI_BREADY),
        .M_AXI_bresp(s00_couplers_to_m_axi_interconnect_M00_AXI_BRESP),
        .M_AXI_bvalid(s00_couplers_to_m_axi_interconnect_M00_AXI_BVALID),
        .M_AXI_rdata(s00_couplers_to_m_axi_interconnect_M00_AXI_RDATA),
        .M_AXI_rlast(s00_couplers_to_m_axi_interconnect_M00_AXI_RLAST),
        .M_AXI_rready(s00_couplers_to_m_axi_interconnect_M00_AXI_RREADY),
        .M_AXI_rresp(s00_couplers_to_m_axi_interconnect_M00_AXI_RRESP),
        .M_AXI_rvalid(s00_couplers_to_m_axi_interconnect_M00_AXI_RVALID),
        .M_AXI_wdata(s00_couplers_to_m_axi_interconnect_M00_AXI_WDATA),
        .M_AXI_wlast(s00_couplers_to_m_axi_interconnect_M00_AXI_WLAST),
        .M_AXI_wready(s00_couplers_to_m_axi_interconnect_M00_AXI_WREADY),
        .M_AXI_wstrb(s00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_m_axi_interconnect_M00_AXI_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(m_axi_interconnect_M00_AXI_to_s00_couplers_ARADDR),
        .S_AXI_arburst(m_axi_interconnect_M00_AXI_to_s00_couplers_ARBURST),
        .S_AXI_arcache(m_axi_interconnect_M00_AXI_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(m_axi_interconnect_M00_AXI_to_s00_couplers_ARLEN),
        .S_AXI_arlock(m_axi_interconnect_M00_AXI_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(m_axi_interconnect_M00_AXI_to_s00_couplers_ARPROT),
        .S_AXI_arqos(m_axi_interconnect_M00_AXI_to_s00_couplers_ARQOS),
        .S_AXI_arready(m_axi_interconnect_M00_AXI_to_s00_couplers_ARREADY),
        .S_AXI_arregion(m_axi_interconnect_M00_AXI_to_s00_couplers_ARREGION),
        .S_AXI_arsize(m_axi_interconnect_M00_AXI_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(m_axi_interconnect_M00_AXI_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(m_axi_interconnect_M00_AXI_to_s00_couplers_AWADDR),
        .S_AXI_awburst(m_axi_interconnect_M00_AXI_to_s00_couplers_AWBURST),
        .S_AXI_awcache(m_axi_interconnect_M00_AXI_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(m_axi_interconnect_M00_AXI_to_s00_couplers_AWLEN),
        .S_AXI_awlock(m_axi_interconnect_M00_AXI_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(m_axi_interconnect_M00_AXI_to_s00_couplers_AWPROT),
        .S_AXI_awqos(m_axi_interconnect_M00_AXI_to_s00_couplers_AWQOS),
        .S_AXI_awready(m_axi_interconnect_M00_AXI_to_s00_couplers_AWREADY),
        .S_AXI_awregion(m_axi_interconnect_M00_AXI_to_s00_couplers_AWREGION),
        .S_AXI_awsize(m_axi_interconnect_M00_AXI_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(m_axi_interconnect_M00_AXI_to_s00_couplers_AWVALID),
        .S_AXI_bready(m_axi_interconnect_M00_AXI_to_s00_couplers_BREADY),
        .S_AXI_bresp(m_axi_interconnect_M00_AXI_to_s00_couplers_BRESP),
        .S_AXI_bvalid(m_axi_interconnect_M00_AXI_to_s00_couplers_BVALID),
        .S_AXI_rdata(m_axi_interconnect_M00_AXI_to_s00_couplers_RDATA),
        .S_AXI_rlast(m_axi_interconnect_M00_AXI_to_s00_couplers_RLAST),
        .S_AXI_rready(m_axi_interconnect_M00_AXI_to_s00_couplers_RREADY),
        .S_AXI_rresp(m_axi_interconnect_M00_AXI_to_s00_couplers_RRESP),
        .S_AXI_rvalid(m_axi_interconnect_M00_AXI_to_s00_couplers_RVALID),
        .S_AXI_wdata(m_axi_interconnect_M00_AXI_to_s00_couplers_WDATA),
        .S_AXI_wlast(m_axi_interconnect_M00_AXI_to_s00_couplers_WLAST),
        .S_AXI_wready(m_axi_interconnect_M00_AXI_to_s00_couplers_WREADY),
        .S_AXI_wstrb(m_axi_interconnect_M00_AXI_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(m_axi_interconnect_M00_AXI_to_s00_couplers_WVALID));
endmodule

module bd_2fd7_m_axi_interconnect_M01_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [33:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [33:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire m_axi_interconnect_M01_AXI_ACLK_net;
  wire m_axi_interconnect_M01_AXI_ARESETN_net;
  wire [33:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARLEN;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARQOS;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_ARREADY;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARREGION;
  wire [2:0]m_axi_interconnect_M01_AXI_to_s00_couplers_ARSIZE;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_ARVALID;
  wire [33:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWADDR;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWBURST;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWCACHE;
  wire [7:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWLEN;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWLOCK;
  wire [2:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWPROT;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWQOS;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_AWREADY;
  wire [3:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWREGION;
  wire [2:0]m_axi_interconnect_M01_AXI_to_s00_couplers_AWSIZE;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_AWVALID;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_BREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_BRESP;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_BVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_to_s00_couplers_RDATA;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_RLAST;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_RREADY;
  wire [1:0]m_axi_interconnect_M01_AXI_to_s00_couplers_RRESP;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_RVALID;
  wire [511:0]m_axi_interconnect_M01_AXI_to_s00_couplers_WDATA;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_WLAST;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_WREADY;
  wire [63:0]m_axi_interconnect_M01_AXI_to_s00_couplers_WSTRB;
  wire m_axi_interconnect_M01_AXI_to_s00_couplers_WVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARQOS;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_ARREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M01_AXI_ARSIZE;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_ARVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWQOS;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_AWREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M01_AXI_AWSIZE;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_AWVALID;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_BREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M01_AXI_BRESP;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_BVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M01_AXI_RDATA;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_RLAST;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_RREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M01_AXI_RRESP;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_RVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M01_AXI_WDATA;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_WLAST;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_WREADY;
  wire [63:0]s00_couplers_to_m_axi_interconnect_M01_AXI_WSTRB;
  wire s00_couplers_to_m_axi_interconnect_M01_AXI_WVALID;

  assign M00_AXI_araddr[33:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_m_axi_interconnect_M01_AXI_ARVALID;
  assign M00_AXI_awaddr[33:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_m_axi_interconnect_M01_AXI_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_m_axi_interconnect_M01_AXI_BREADY;
  assign M00_AXI_rready = s00_couplers_to_m_axi_interconnect_M01_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_m_axi_interconnect_M01_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_m_axi_interconnect_M01_AXI_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_m_axi_interconnect_M01_AXI_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = m_axi_interconnect_M01_AXI_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = m_axi_interconnect_M01_AXI_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = m_axi_interconnect_M01_AXI_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = m_axi_interconnect_M01_AXI_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = m_axi_interconnect_M01_AXI_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = m_axi_interconnect_M01_AXI_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = m_axi_interconnect_M01_AXI_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = m_axi_interconnect_M01_AXI_to_s00_couplers_RVALID;
  assign S00_AXI_wready = m_axi_interconnect_M01_AXI_to_s00_couplers_WREADY;
  assign m_axi_interconnect_M01_AXI_ACLK_net = M00_ACLK;
  assign m_axi_interconnect_M01_AXI_ARESETN_net = M00_ARESETN;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARADDR = S00_AXI_araddr[33:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWADDR = S00_AXI_awaddr[33:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_BREADY = S00_AXI_bready;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_RREADY = S00_AXI_rready;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign m_axi_interconnect_M01_AXI_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_m_axi_interconnect_M01_AXI_WREADY = M00_AXI_wready;
  s00_couplers_imp_BG5KE5 s00_couplers
       (.M_ACLK(m_axi_interconnect_M01_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M01_AXI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_m_axi_interconnect_M01_AXI_ARADDR),
        .M_AXI_arburst(s00_couplers_to_m_axi_interconnect_M01_AXI_ARBURST),
        .M_AXI_arcache(s00_couplers_to_m_axi_interconnect_M01_AXI_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_m_axi_interconnect_M01_AXI_ARLEN),
        .M_AXI_arlock(s00_couplers_to_m_axi_interconnect_M01_AXI_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_m_axi_interconnect_M01_AXI_ARPROT),
        .M_AXI_arqos(s00_couplers_to_m_axi_interconnect_M01_AXI_ARQOS),
        .M_AXI_arready(s00_couplers_to_m_axi_interconnect_M01_AXI_ARREADY),
        .M_AXI_arsize(s00_couplers_to_m_axi_interconnect_M01_AXI_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_m_axi_interconnect_M01_AXI_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_m_axi_interconnect_M01_AXI_AWADDR),
        .M_AXI_awburst(s00_couplers_to_m_axi_interconnect_M01_AXI_AWBURST),
        .M_AXI_awcache(s00_couplers_to_m_axi_interconnect_M01_AXI_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_m_axi_interconnect_M01_AXI_AWLEN),
        .M_AXI_awlock(s00_couplers_to_m_axi_interconnect_M01_AXI_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_m_axi_interconnect_M01_AXI_AWPROT),
        .M_AXI_awqos(s00_couplers_to_m_axi_interconnect_M01_AXI_AWQOS),
        .M_AXI_awready(s00_couplers_to_m_axi_interconnect_M01_AXI_AWREADY),
        .M_AXI_awsize(s00_couplers_to_m_axi_interconnect_M01_AXI_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_m_axi_interconnect_M01_AXI_AWVALID),
        .M_AXI_bready(s00_couplers_to_m_axi_interconnect_M01_AXI_BREADY),
        .M_AXI_bresp(s00_couplers_to_m_axi_interconnect_M01_AXI_BRESP),
        .M_AXI_bvalid(s00_couplers_to_m_axi_interconnect_M01_AXI_BVALID),
        .M_AXI_rdata(s00_couplers_to_m_axi_interconnect_M01_AXI_RDATA),
        .M_AXI_rlast(s00_couplers_to_m_axi_interconnect_M01_AXI_RLAST),
        .M_AXI_rready(s00_couplers_to_m_axi_interconnect_M01_AXI_RREADY),
        .M_AXI_rresp(s00_couplers_to_m_axi_interconnect_M01_AXI_RRESP),
        .M_AXI_rvalid(s00_couplers_to_m_axi_interconnect_M01_AXI_RVALID),
        .M_AXI_wdata(s00_couplers_to_m_axi_interconnect_M01_AXI_WDATA),
        .M_AXI_wlast(s00_couplers_to_m_axi_interconnect_M01_AXI_WLAST),
        .M_AXI_wready(s00_couplers_to_m_axi_interconnect_M01_AXI_WREADY),
        .M_AXI_wstrb(s00_couplers_to_m_axi_interconnect_M01_AXI_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_m_axi_interconnect_M01_AXI_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(m_axi_interconnect_M01_AXI_to_s00_couplers_ARADDR),
        .S_AXI_arburst(m_axi_interconnect_M01_AXI_to_s00_couplers_ARBURST),
        .S_AXI_arcache(m_axi_interconnect_M01_AXI_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(m_axi_interconnect_M01_AXI_to_s00_couplers_ARLEN),
        .S_AXI_arlock(m_axi_interconnect_M01_AXI_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(m_axi_interconnect_M01_AXI_to_s00_couplers_ARPROT),
        .S_AXI_arqos(m_axi_interconnect_M01_AXI_to_s00_couplers_ARQOS),
        .S_AXI_arready(m_axi_interconnect_M01_AXI_to_s00_couplers_ARREADY),
        .S_AXI_arregion(m_axi_interconnect_M01_AXI_to_s00_couplers_ARREGION),
        .S_AXI_arsize(m_axi_interconnect_M01_AXI_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(m_axi_interconnect_M01_AXI_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(m_axi_interconnect_M01_AXI_to_s00_couplers_AWADDR),
        .S_AXI_awburst(m_axi_interconnect_M01_AXI_to_s00_couplers_AWBURST),
        .S_AXI_awcache(m_axi_interconnect_M01_AXI_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(m_axi_interconnect_M01_AXI_to_s00_couplers_AWLEN),
        .S_AXI_awlock(m_axi_interconnect_M01_AXI_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(m_axi_interconnect_M01_AXI_to_s00_couplers_AWPROT),
        .S_AXI_awqos(m_axi_interconnect_M01_AXI_to_s00_couplers_AWQOS),
        .S_AXI_awready(m_axi_interconnect_M01_AXI_to_s00_couplers_AWREADY),
        .S_AXI_awregion(m_axi_interconnect_M01_AXI_to_s00_couplers_AWREGION),
        .S_AXI_awsize(m_axi_interconnect_M01_AXI_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(m_axi_interconnect_M01_AXI_to_s00_couplers_AWVALID),
        .S_AXI_bready(m_axi_interconnect_M01_AXI_to_s00_couplers_BREADY),
        .S_AXI_bresp(m_axi_interconnect_M01_AXI_to_s00_couplers_BRESP),
        .S_AXI_bvalid(m_axi_interconnect_M01_AXI_to_s00_couplers_BVALID),
        .S_AXI_rdata(m_axi_interconnect_M01_AXI_to_s00_couplers_RDATA),
        .S_AXI_rlast(m_axi_interconnect_M01_AXI_to_s00_couplers_RLAST),
        .S_AXI_rready(m_axi_interconnect_M01_AXI_to_s00_couplers_RREADY),
        .S_AXI_rresp(m_axi_interconnect_M01_AXI_to_s00_couplers_RRESP),
        .S_AXI_rvalid(m_axi_interconnect_M01_AXI_to_s00_couplers_RVALID),
        .S_AXI_wdata(m_axi_interconnect_M01_AXI_to_s00_couplers_WDATA),
        .S_AXI_wlast(m_axi_interconnect_M01_AXI_to_s00_couplers_WLAST),
        .S_AXI_wready(m_axi_interconnect_M01_AXI_to_s00_couplers_WREADY),
        .S_AXI_wstrb(m_axi_interconnect_M01_AXI_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(m_axi_interconnect_M01_AXI_to_s00_couplers_WVALID));
endmodule

module bd_2fd7_m_axi_interconnect_M02_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [33:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [33:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire m_axi_interconnect_M02_AXI_ACLK_net;
  wire m_axi_interconnect_M02_AXI_ARESETN_net;
  wire [33:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARADDR;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARBURST;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARCACHE;
  wire [7:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARLEN;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARLOCK;
  wire [2:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARPROT;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARQOS;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_ARREADY;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARREGION;
  wire [2:0]m_axi_interconnect_M02_AXI_to_s00_couplers_ARSIZE;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_ARVALID;
  wire [33:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWADDR;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWBURST;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWCACHE;
  wire [7:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWLEN;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWLOCK;
  wire [2:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWPROT;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWQOS;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_AWREADY;
  wire [3:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWREGION;
  wire [2:0]m_axi_interconnect_M02_AXI_to_s00_couplers_AWSIZE;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_AWVALID;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_BREADY;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_BRESP;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_BVALID;
  wire [511:0]m_axi_interconnect_M02_AXI_to_s00_couplers_RDATA;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_RLAST;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_RREADY;
  wire [1:0]m_axi_interconnect_M02_AXI_to_s00_couplers_RRESP;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_RVALID;
  wire [511:0]m_axi_interconnect_M02_AXI_to_s00_couplers_WDATA;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_WLAST;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_WREADY;
  wire [63:0]m_axi_interconnect_M02_AXI_to_s00_couplers_WSTRB;
  wire m_axi_interconnect_M02_AXI_to_s00_couplers_WVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARQOS;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_ARREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M02_AXI_ARSIZE;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_ARVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWQOS;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_AWREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M02_AXI_AWSIZE;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_AWVALID;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_BREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M02_AXI_BRESP;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_BVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M02_AXI_RDATA;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_RLAST;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_RREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M02_AXI_RRESP;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_RVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M02_AXI_WDATA;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_WLAST;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_WREADY;
  wire [63:0]s00_couplers_to_m_axi_interconnect_M02_AXI_WSTRB;
  wire s00_couplers_to_m_axi_interconnect_M02_AXI_WVALID;

  assign M00_AXI_araddr[33:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_m_axi_interconnect_M02_AXI_ARVALID;
  assign M00_AXI_awaddr[33:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_m_axi_interconnect_M02_AXI_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_m_axi_interconnect_M02_AXI_BREADY;
  assign M00_AXI_rready = s00_couplers_to_m_axi_interconnect_M02_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_m_axi_interconnect_M02_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_m_axi_interconnect_M02_AXI_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_m_axi_interconnect_M02_AXI_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = m_axi_interconnect_M02_AXI_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = m_axi_interconnect_M02_AXI_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = m_axi_interconnect_M02_AXI_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = m_axi_interconnect_M02_AXI_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = m_axi_interconnect_M02_AXI_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = m_axi_interconnect_M02_AXI_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = m_axi_interconnect_M02_AXI_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = m_axi_interconnect_M02_AXI_to_s00_couplers_RVALID;
  assign S00_AXI_wready = m_axi_interconnect_M02_AXI_to_s00_couplers_WREADY;
  assign m_axi_interconnect_M02_AXI_ACLK_net = M00_ACLK;
  assign m_axi_interconnect_M02_AXI_ARESETN_net = M00_ARESETN;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARADDR = S00_AXI_araddr[33:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWADDR = S00_AXI_awaddr[33:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_BREADY = S00_AXI_bready;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_RREADY = S00_AXI_rready;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign m_axi_interconnect_M02_AXI_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_m_axi_interconnect_M02_AXI_WREADY = M00_AXI_wready;
  s00_couplers_imp_7YHXYM s00_couplers
       (.M_ACLK(m_axi_interconnect_M02_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M02_AXI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_m_axi_interconnect_M02_AXI_ARADDR),
        .M_AXI_arburst(s00_couplers_to_m_axi_interconnect_M02_AXI_ARBURST),
        .M_AXI_arcache(s00_couplers_to_m_axi_interconnect_M02_AXI_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_m_axi_interconnect_M02_AXI_ARLEN),
        .M_AXI_arlock(s00_couplers_to_m_axi_interconnect_M02_AXI_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_m_axi_interconnect_M02_AXI_ARPROT),
        .M_AXI_arqos(s00_couplers_to_m_axi_interconnect_M02_AXI_ARQOS),
        .M_AXI_arready(s00_couplers_to_m_axi_interconnect_M02_AXI_ARREADY),
        .M_AXI_arsize(s00_couplers_to_m_axi_interconnect_M02_AXI_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_m_axi_interconnect_M02_AXI_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_m_axi_interconnect_M02_AXI_AWADDR),
        .M_AXI_awburst(s00_couplers_to_m_axi_interconnect_M02_AXI_AWBURST),
        .M_AXI_awcache(s00_couplers_to_m_axi_interconnect_M02_AXI_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_m_axi_interconnect_M02_AXI_AWLEN),
        .M_AXI_awlock(s00_couplers_to_m_axi_interconnect_M02_AXI_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_m_axi_interconnect_M02_AXI_AWPROT),
        .M_AXI_awqos(s00_couplers_to_m_axi_interconnect_M02_AXI_AWQOS),
        .M_AXI_awready(s00_couplers_to_m_axi_interconnect_M02_AXI_AWREADY),
        .M_AXI_awsize(s00_couplers_to_m_axi_interconnect_M02_AXI_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_m_axi_interconnect_M02_AXI_AWVALID),
        .M_AXI_bready(s00_couplers_to_m_axi_interconnect_M02_AXI_BREADY),
        .M_AXI_bresp(s00_couplers_to_m_axi_interconnect_M02_AXI_BRESP),
        .M_AXI_bvalid(s00_couplers_to_m_axi_interconnect_M02_AXI_BVALID),
        .M_AXI_rdata(s00_couplers_to_m_axi_interconnect_M02_AXI_RDATA),
        .M_AXI_rlast(s00_couplers_to_m_axi_interconnect_M02_AXI_RLAST),
        .M_AXI_rready(s00_couplers_to_m_axi_interconnect_M02_AXI_RREADY),
        .M_AXI_rresp(s00_couplers_to_m_axi_interconnect_M02_AXI_RRESP),
        .M_AXI_rvalid(s00_couplers_to_m_axi_interconnect_M02_AXI_RVALID),
        .M_AXI_wdata(s00_couplers_to_m_axi_interconnect_M02_AXI_WDATA),
        .M_AXI_wlast(s00_couplers_to_m_axi_interconnect_M02_AXI_WLAST),
        .M_AXI_wready(s00_couplers_to_m_axi_interconnect_M02_AXI_WREADY),
        .M_AXI_wstrb(s00_couplers_to_m_axi_interconnect_M02_AXI_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_m_axi_interconnect_M02_AXI_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(m_axi_interconnect_M02_AXI_to_s00_couplers_ARADDR),
        .S_AXI_arburst(m_axi_interconnect_M02_AXI_to_s00_couplers_ARBURST),
        .S_AXI_arcache(m_axi_interconnect_M02_AXI_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(m_axi_interconnect_M02_AXI_to_s00_couplers_ARLEN),
        .S_AXI_arlock(m_axi_interconnect_M02_AXI_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(m_axi_interconnect_M02_AXI_to_s00_couplers_ARPROT),
        .S_AXI_arqos(m_axi_interconnect_M02_AXI_to_s00_couplers_ARQOS),
        .S_AXI_arready(m_axi_interconnect_M02_AXI_to_s00_couplers_ARREADY),
        .S_AXI_arregion(m_axi_interconnect_M02_AXI_to_s00_couplers_ARREGION),
        .S_AXI_arsize(m_axi_interconnect_M02_AXI_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(m_axi_interconnect_M02_AXI_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(m_axi_interconnect_M02_AXI_to_s00_couplers_AWADDR),
        .S_AXI_awburst(m_axi_interconnect_M02_AXI_to_s00_couplers_AWBURST),
        .S_AXI_awcache(m_axi_interconnect_M02_AXI_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(m_axi_interconnect_M02_AXI_to_s00_couplers_AWLEN),
        .S_AXI_awlock(m_axi_interconnect_M02_AXI_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(m_axi_interconnect_M02_AXI_to_s00_couplers_AWPROT),
        .S_AXI_awqos(m_axi_interconnect_M02_AXI_to_s00_couplers_AWQOS),
        .S_AXI_awready(m_axi_interconnect_M02_AXI_to_s00_couplers_AWREADY),
        .S_AXI_awregion(m_axi_interconnect_M02_AXI_to_s00_couplers_AWREGION),
        .S_AXI_awsize(m_axi_interconnect_M02_AXI_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(m_axi_interconnect_M02_AXI_to_s00_couplers_AWVALID),
        .S_AXI_bready(m_axi_interconnect_M02_AXI_to_s00_couplers_BREADY),
        .S_AXI_bresp(m_axi_interconnect_M02_AXI_to_s00_couplers_BRESP),
        .S_AXI_bvalid(m_axi_interconnect_M02_AXI_to_s00_couplers_BVALID),
        .S_AXI_rdata(m_axi_interconnect_M02_AXI_to_s00_couplers_RDATA),
        .S_AXI_rlast(m_axi_interconnect_M02_AXI_to_s00_couplers_RLAST),
        .S_AXI_rready(m_axi_interconnect_M02_AXI_to_s00_couplers_RREADY),
        .S_AXI_rresp(m_axi_interconnect_M02_AXI_to_s00_couplers_RRESP),
        .S_AXI_rvalid(m_axi_interconnect_M02_AXI_to_s00_couplers_RVALID),
        .S_AXI_wdata(m_axi_interconnect_M02_AXI_to_s00_couplers_WDATA),
        .S_AXI_wlast(m_axi_interconnect_M02_AXI_to_s00_couplers_WLAST),
        .S_AXI_wready(m_axi_interconnect_M02_AXI_to_s00_couplers_WREADY),
        .S_AXI_wstrb(m_axi_interconnect_M02_AXI_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(m_axi_interconnect_M02_AXI_to_s00_couplers_WVALID));
endmodule

module bd_2fd7_m_axi_interconnect_M03_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [33:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [33:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire m_axi_interconnect_M03_AXI_ACLK_net;
  wire m_axi_interconnect_M03_AXI_ARESETN_net;
  wire [33:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARADDR;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARBURST;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARCACHE;
  wire [7:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARLEN;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARLOCK;
  wire [2:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARPROT;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARQOS;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_ARREADY;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARREGION;
  wire [2:0]m_axi_interconnect_M03_AXI_to_s00_couplers_ARSIZE;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_ARVALID;
  wire [33:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWADDR;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWBURST;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWCACHE;
  wire [7:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWLEN;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWLOCK;
  wire [2:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWPROT;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWQOS;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_AWREADY;
  wire [3:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWREGION;
  wire [2:0]m_axi_interconnect_M03_AXI_to_s00_couplers_AWSIZE;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_AWVALID;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_BREADY;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_BRESP;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_BVALID;
  wire [511:0]m_axi_interconnect_M03_AXI_to_s00_couplers_RDATA;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_RLAST;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_RREADY;
  wire [1:0]m_axi_interconnect_M03_AXI_to_s00_couplers_RRESP;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_RVALID;
  wire [511:0]m_axi_interconnect_M03_AXI_to_s00_couplers_WDATA;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_WLAST;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_WREADY;
  wire [63:0]m_axi_interconnect_M03_AXI_to_s00_couplers_WSTRB;
  wire m_axi_interconnect_M03_AXI_to_s00_couplers_WVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARQOS;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_ARREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M03_AXI_ARSIZE;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_ARVALID;
  wire [33:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWADDR;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWBURST;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWCACHE;
  wire [7:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWLEN;
  wire [0:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWLOCK;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWPROT;
  wire [3:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWQOS;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_AWREADY;
  wire [2:0]s00_couplers_to_m_axi_interconnect_M03_AXI_AWSIZE;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_AWVALID;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_BREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M03_AXI_BRESP;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_BVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M03_AXI_RDATA;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_RLAST;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_RREADY;
  wire [1:0]s00_couplers_to_m_axi_interconnect_M03_AXI_RRESP;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_RVALID;
  wire [511:0]s00_couplers_to_m_axi_interconnect_M03_AXI_WDATA;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_WLAST;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_WREADY;
  wire [63:0]s00_couplers_to_m_axi_interconnect_M03_AXI_WSTRB;
  wire s00_couplers_to_m_axi_interconnect_M03_AXI_WVALID;

  assign M00_AXI_araddr[33:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_m_axi_interconnect_M03_AXI_ARVALID;
  assign M00_AXI_awaddr[33:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_m_axi_interconnect_M03_AXI_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_m_axi_interconnect_M03_AXI_BREADY;
  assign M00_AXI_rready = s00_couplers_to_m_axi_interconnect_M03_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_m_axi_interconnect_M03_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_m_axi_interconnect_M03_AXI_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_m_axi_interconnect_M03_AXI_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = m_axi_interconnect_M03_AXI_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = m_axi_interconnect_M03_AXI_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = m_axi_interconnect_M03_AXI_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = m_axi_interconnect_M03_AXI_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = m_axi_interconnect_M03_AXI_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = m_axi_interconnect_M03_AXI_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = m_axi_interconnect_M03_AXI_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = m_axi_interconnect_M03_AXI_to_s00_couplers_RVALID;
  assign S00_AXI_wready = m_axi_interconnect_M03_AXI_to_s00_couplers_WREADY;
  assign m_axi_interconnect_M03_AXI_ACLK_net = M00_ACLK;
  assign m_axi_interconnect_M03_AXI_ARESETN_net = M00_ARESETN;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARADDR = S00_AXI_araddr[33:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWADDR = S00_AXI_awaddr[33:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_BREADY = S00_AXI_bready;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_RREADY = S00_AXI_rready;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign m_axi_interconnect_M03_AXI_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_m_axi_interconnect_M03_AXI_WREADY = M00_AXI_wready;
  s00_couplers_imp_1FDD540 s00_couplers
       (.M_ACLK(m_axi_interconnect_M03_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M03_AXI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_m_axi_interconnect_M03_AXI_ARADDR),
        .M_AXI_arburst(s00_couplers_to_m_axi_interconnect_M03_AXI_ARBURST),
        .M_AXI_arcache(s00_couplers_to_m_axi_interconnect_M03_AXI_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_m_axi_interconnect_M03_AXI_ARLEN),
        .M_AXI_arlock(s00_couplers_to_m_axi_interconnect_M03_AXI_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_m_axi_interconnect_M03_AXI_ARPROT),
        .M_AXI_arqos(s00_couplers_to_m_axi_interconnect_M03_AXI_ARQOS),
        .M_AXI_arready(s00_couplers_to_m_axi_interconnect_M03_AXI_ARREADY),
        .M_AXI_arsize(s00_couplers_to_m_axi_interconnect_M03_AXI_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_m_axi_interconnect_M03_AXI_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_m_axi_interconnect_M03_AXI_AWADDR),
        .M_AXI_awburst(s00_couplers_to_m_axi_interconnect_M03_AXI_AWBURST),
        .M_AXI_awcache(s00_couplers_to_m_axi_interconnect_M03_AXI_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_m_axi_interconnect_M03_AXI_AWLEN),
        .M_AXI_awlock(s00_couplers_to_m_axi_interconnect_M03_AXI_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_m_axi_interconnect_M03_AXI_AWPROT),
        .M_AXI_awqos(s00_couplers_to_m_axi_interconnect_M03_AXI_AWQOS),
        .M_AXI_awready(s00_couplers_to_m_axi_interconnect_M03_AXI_AWREADY),
        .M_AXI_awsize(s00_couplers_to_m_axi_interconnect_M03_AXI_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_m_axi_interconnect_M03_AXI_AWVALID),
        .M_AXI_bready(s00_couplers_to_m_axi_interconnect_M03_AXI_BREADY),
        .M_AXI_bresp(s00_couplers_to_m_axi_interconnect_M03_AXI_BRESP),
        .M_AXI_bvalid(s00_couplers_to_m_axi_interconnect_M03_AXI_BVALID),
        .M_AXI_rdata(s00_couplers_to_m_axi_interconnect_M03_AXI_RDATA),
        .M_AXI_rlast(s00_couplers_to_m_axi_interconnect_M03_AXI_RLAST),
        .M_AXI_rready(s00_couplers_to_m_axi_interconnect_M03_AXI_RREADY),
        .M_AXI_rresp(s00_couplers_to_m_axi_interconnect_M03_AXI_RRESP),
        .M_AXI_rvalid(s00_couplers_to_m_axi_interconnect_M03_AXI_RVALID),
        .M_AXI_wdata(s00_couplers_to_m_axi_interconnect_M03_AXI_WDATA),
        .M_AXI_wlast(s00_couplers_to_m_axi_interconnect_M03_AXI_WLAST),
        .M_AXI_wready(s00_couplers_to_m_axi_interconnect_M03_AXI_WREADY),
        .M_AXI_wstrb(s00_couplers_to_m_axi_interconnect_M03_AXI_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_m_axi_interconnect_M03_AXI_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(m_axi_interconnect_M03_AXI_to_s00_couplers_ARADDR),
        .S_AXI_arburst(m_axi_interconnect_M03_AXI_to_s00_couplers_ARBURST),
        .S_AXI_arcache(m_axi_interconnect_M03_AXI_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(m_axi_interconnect_M03_AXI_to_s00_couplers_ARLEN),
        .S_AXI_arlock(m_axi_interconnect_M03_AXI_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(m_axi_interconnect_M03_AXI_to_s00_couplers_ARPROT),
        .S_AXI_arqos(m_axi_interconnect_M03_AXI_to_s00_couplers_ARQOS),
        .S_AXI_arready(m_axi_interconnect_M03_AXI_to_s00_couplers_ARREADY),
        .S_AXI_arregion(m_axi_interconnect_M03_AXI_to_s00_couplers_ARREGION),
        .S_AXI_arsize(m_axi_interconnect_M03_AXI_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(m_axi_interconnect_M03_AXI_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(m_axi_interconnect_M03_AXI_to_s00_couplers_AWADDR),
        .S_AXI_awburst(m_axi_interconnect_M03_AXI_to_s00_couplers_AWBURST),
        .S_AXI_awcache(m_axi_interconnect_M03_AXI_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(m_axi_interconnect_M03_AXI_to_s00_couplers_AWLEN),
        .S_AXI_awlock(m_axi_interconnect_M03_AXI_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(m_axi_interconnect_M03_AXI_to_s00_couplers_AWPROT),
        .S_AXI_awqos(m_axi_interconnect_M03_AXI_to_s00_couplers_AWQOS),
        .S_AXI_awready(m_axi_interconnect_M03_AXI_to_s00_couplers_AWREADY),
        .S_AXI_awregion(m_axi_interconnect_M03_AXI_to_s00_couplers_AWREGION),
        .S_AXI_awsize(m_axi_interconnect_M03_AXI_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(m_axi_interconnect_M03_AXI_to_s00_couplers_AWVALID),
        .S_AXI_bready(m_axi_interconnect_M03_AXI_to_s00_couplers_BREADY),
        .S_AXI_bresp(m_axi_interconnect_M03_AXI_to_s00_couplers_BRESP),
        .S_AXI_bvalid(m_axi_interconnect_M03_AXI_to_s00_couplers_BVALID),
        .S_AXI_rdata(m_axi_interconnect_M03_AXI_to_s00_couplers_RDATA),
        .S_AXI_rlast(m_axi_interconnect_M03_AXI_to_s00_couplers_RLAST),
        .S_AXI_rready(m_axi_interconnect_M03_AXI_to_s00_couplers_RREADY),
        .S_AXI_rresp(m_axi_interconnect_M03_AXI_to_s00_couplers_RRESP),
        .S_AXI_rvalid(m_axi_interconnect_M03_AXI_to_s00_couplers_RVALID),
        .S_AXI_wdata(m_axi_interconnect_M03_AXI_to_s00_couplers_WDATA),
        .S_AXI_wlast(m_axi_interconnect_M03_AXI_to_s00_couplers_WLAST),
        .S_AXI_wready(m_axi_interconnect_M03_AXI_to_s00_couplers_WREADY),
        .S_AXI_wstrb(m_axi_interconnect_M03_AXI_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(m_axi_interconnect_M03_AXI_to_s00_couplers_WVALID));
endmodule

module bd_2fd7_s_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [5:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [5:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [5:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [5:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [5:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [5:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [5:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [16:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [16:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [5:0]m00_couplers_to_s_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_s_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_s_axi_interconnect_0_ARVALID;
  wire [5:0]m00_couplers_to_s_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_s_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_s_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_s_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_s_axi_interconnect_0_BRESP;
  wire m00_couplers_to_s_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_s_axi_interconnect_0_RDATA;
  wire m00_couplers_to_s_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_s_axi_interconnect_0_RRESP;
  wire m00_couplers_to_s_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_s_axi_interconnect_0_WDATA;
  wire m00_couplers_to_s_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_s_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_s_axi_interconnect_0_WVALID;
  wire [5:0]m01_couplers_to_s_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_s_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_s_axi_interconnect_0_ARVALID;
  wire [5:0]m01_couplers_to_s_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_s_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_s_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_s_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_s_axi_interconnect_0_BRESP;
  wire m01_couplers_to_s_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_s_axi_interconnect_0_RDATA;
  wire m01_couplers_to_s_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_s_axi_interconnect_0_RRESP;
  wire m01_couplers_to_s_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_s_axi_interconnect_0_WDATA;
  wire m01_couplers_to_s_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_s_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_s_axi_interconnect_0_WVALID;
  wire [5:0]m02_couplers_to_s_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_s_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_s_axi_interconnect_0_ARVALID;
  wire [5:0]m02_couplers_to_s_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_s_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_s_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_s_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_s_axi_interconnect_0_BRESP;
  wire m02_couplers_to_s_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_s_axi_interconnect_0_RDATA;
  wire m02_couplers_to_s_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_s_axi_interconnect_0_RRESP;
  wire m02_couplers_to_s_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_s_axi_interconnect_0_WDATA;
  wire m02_couplers_to_s_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_s_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_s_axi_interconnect_0_WVALID;
  wire [5:0]m03_couplers_to_s_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_s_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_s_axi_interconnect_0_ARVALID;
  wire [5:0]m03_couplers_to_s_axi_interconnect_0_AWADDR;
  wire m03_couplers_to_s_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_s_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_s_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_s_axi_interconnect_0_BRESP;
  wire m03_couplers_to_s_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_s_axi_interconnect_0_RDATA;
  wire m03_couplers_to_s_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_s_axi_interconnect_0_RRESP;
  wire m03_couplers_to_s_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_s_axi_interconnect_0_WDATA;
  wire m03_couplers_to_s_axi_interconnect_0_WREADY;
  wire [3:0]m03_couplers_to_s_axi_interconnect_0_WSTRB;
  wire m03_couplers_to_s_axi_interconnect_0_WVALID;
  wire [16:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [16:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire s_axi_interconnect_0_ACLK_net;
  wire s_axi_interconnect_0_ARESETN_net;
  wire [16:0]s_axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]s_axi_interconnect_0_to_s00_couplers_ARPROT;
  wire s_axi_interconnect_0_to_s00_couplers_ARREADY;
  wire s_axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [16:0]s_axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]s_axi_interconnect_0_to_s00_couplers_AWPROT;
  wire s_axi_interconnect_0_to_s00_couplers_AWREADY;
  wire s_axi_interconnect_0_to_s00_couplers_AWVALID;
  wire s_axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]s_axi_interconnect_0_to_s00_couplers_BRESP;
  wire s_axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]s_axi_interconnect_0_to_s00_couplers_RDATA;
  wire s_axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]s_axi_interconnect_0_to_s00_couplers_RRESP;
  wire s_axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]s_axi_interconnect_0_to_s00_couplers_WDATA;
  wire s_axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]s_axi_interconnect_0_to_s00_couplers_WSTRB;
  wire s_axi_interconnect_0_to_s00_couplers_WVALID;
  wire [16:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [16:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [33:17]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [33:17]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [50:34]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [50:34]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [67:51]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [67:51]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[5:0] = m00_couplers_to_s_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_s_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[5:0] = m00_couplers_to_s_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_s_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_s_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_s_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_s_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_s_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_s_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[5:0] = m01_couplers_to_s_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_s_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[5:0] = m01_couplers_to_s_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_s_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_s_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_s_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_s_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_s_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_s_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[5:0] = m02_couplers_to_s_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_s_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[5:0] = m02_couplers_to_s_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_s_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_s_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_s_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_s_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_s_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_s_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[5:0] = m03_couplers_to_s_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_s_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[5:0] = m03_couplers_to_s_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_s_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_s_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_s_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_s_axi_interconnect_0_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_s_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_s_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = s_axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = s_axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = s_axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = s_axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = s_axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = s_axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = s_axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = s_axi_interconnect_0_to_s00_couplers_WREADY;
  assign m00_couplers_to_s_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_s_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_s_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_s_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_s_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_s_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_s_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_s_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_s_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_s_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_s_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_s_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_s_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_s_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_s_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_s_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_s_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_s_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_s_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_s_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_s_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_s_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_s_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_s_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_s_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_s_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_s_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_s_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_s_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_s_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_s_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_s_axi_interconnect_0_WREADY = M03_AXI_wready;
  assign s_axi_interconnect_0_ACLK_net = ACLK;
  assign s_axi_interconnect_0_ARESETN_net = ARESETN;
  assign s_axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[16:0];
  assign s_axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign s_axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign s_axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[16:0];
  assign s_axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign s_axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign s_axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign s_axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign s_axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign s_axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign s_axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_J7A2MO m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_s_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_s_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_s_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_s_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_s_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_s_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_s_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_s_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_s_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_s_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_s_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_s_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_s_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_s_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_s_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_s_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_s_axi_interconnect_0_WVALID),
        .S_ACLK(s_axi_interconnect_0_ACLK_net),
        .S_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1HZIYDV m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_s_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_s_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_s_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_s_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_s_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_s_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_s_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_s_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_s_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_s_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_s_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_s_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_s_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_s_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_s_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_s_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_s_axi_interconnect_0_WVALID),
        .S_ACLK(s_axi_interconnect_0_ACLK_net),
        .S_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_148OM53 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_s_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_s_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_s_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_s_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_s_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_s_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_s_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_s_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_s_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_s_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_s_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_s_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_s_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_s_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_s_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_s_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_s_axi_interconnect_0_WVALID),
        .S_ACLK(s_axi_interconnect_0_ACLK_net),
        .S_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_6AKQJ8 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_s_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_s_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_s_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_s_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_s_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_s_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_s_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_s_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_s_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_s_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_s_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_s_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_s_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_s_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_s_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_s_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_s_axi_interconnect_0_WVALID),
        .S_ACLK(s_axi_interconnect_0_ACLK_net),
        .S_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_1HU9HL8 s00_couplers
       (.M_ACLK(s_axi_interconnect_0_ACLK_net),
        .M_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(s_axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(s_axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(s_axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(s_axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(s_axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(s_axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(s_axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(s_axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(s_axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(s_axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(s_axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(s_axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(s_axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(s_axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(s_axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(s_axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(s_axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(s_axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(s_axi_interconnect_0_to_s00_couplers_WVALID));
  bd_2fd7_xbar_0 xbar
       (.aclk(s_axi_interconnect_0_ACLK_net),
        .aresetn(s_axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_J7A2MO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m00_regslice_ARADDR;
  wire [2:0]auto_cc_to_m00_regslice_ARPROT;
  wire auto_cc_to_m00_regslice_ARREADY;
  wire auto_cc_to_m00_regslice_ARVALID;
  wire [5:0]auto_cc_to_m00_regslice_AWADDR;
  wire [2:0]auto_cc_to_m00_regslice_AWPROT;
  wire auto_cc_to_m00_regslice_AWREADY;
  wire auto_cc_to_m00_regslice_AWVALID;
  wire auto_cc_to_m00_regslice_BREADY;
  wire [1:0]auto_cc_to_m00_regslice_BRESP;
  wire auto_cc_to_m00_regslice_BVALID;
  wire [31:0]auto_cc_to_m00_regslice_RDATA;
  wire auto_cc_to_m00_regslice_RREADY;
  wire [1:0]auto_cc_to_m00_regslice_RRESP;
  wire auto_cc_to_m00_regslice_RVALID;
  wire [31:0]auto_cc_to_m00_regslice_WDATA;
  wire auto_cc_to_m00_regslice_WREADY;
  wire [3:0]auto_cc_to_m00_regslice_WSTRB;
  wire auto_cc_to_m00_regslice_WVALID;
  wire [16:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [16:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;
  wire [5:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [5:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[16:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[16:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  bd_2fd7_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
  bd_2fd7_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_1HZIYDV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [5:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [16:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [16:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [5:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [5:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[16:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[16:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  bd_2fd7_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  bd_2fd7_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_148OM53
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m02_regslice_ARADDR;
  wire [2:0]auto_cc_to_m02_regslice_ARPROT;
  wire auto_cc_to_m02_regslice_ARREADY;
  wire auto_cc_to_m02_regslice_ARVALID;
  wire [5:0]auto_cc_to_m02_regslice_AWADDR;
  wire [2:0]auto_cc_to_m02_regslice_AWPROT;
  wire auto_cc_to_m02_regslice_AWREADY;
  wire auto_cc_to_m02_regslice_AWVALID;
  wire auto_cc_to_m02_regslice_BREADY;
  wire [1:0]auto_cc_to_m02_regslice_BRESP;
  wire auto_cc_to_m02_regslice_BVALID;
  wire [31:0]auto_cc_to_m02_regslice_RDATA;
  wire auto_cc_to_m02_regslice_RREADY;
  wire [1:0]auto_cc_to_m02_regslice_RRESP;
  wire auto_cc_to_m02_regslice_RVALID;
  wire [31:0]auto_cc_to_m02_regslice_WDATA;
  wire auto_cc_to_m02_regslice_WREADY;
  wire [3:0]auto_cc_to_m02_regslice_WSTRB;
  wire auto_cc_to_m02_regslice_WVALID;
  wire [16:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [16:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;
  wire [5:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [5:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[16:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[16:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  bd_2fd7_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m02_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m02_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m02_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m02_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m02_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m02_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m02_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m02_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m02_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m02_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m02_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
  bd_2fd7_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m02_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m02_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m02_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m02_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m02_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m02_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m02_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m02_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m02_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m02_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m02_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m02_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m02_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m02_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m02_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m02_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m02_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m02_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_6AKQJ8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m03_regslice_ARADDR;
  wire [2:0]auto_cc_to_m03_regslice_ARPROT;
  wire auto_cc_to_m03_regslice_ARREADY;
  wire auto_cc_to_m03_regslice_ARVALID;
  wire [5:0]auto_cc_to_m03_regslice_AWADDR;
  wire [2:0]auto_cc_to_m03_regslice_AWPROT;
  wire auto_cc_to_m03_regslice_AWREADY;
  wire auto_cc_to_m03_regslice_AWVALID;
  wire auto_cc_to_m03_regslice_BREADY;
  wire [1:0]auto_cc_to_m03_regslice_BRESP;
  wire auto_cc_to_m03_regslice_BVALID;
  wire [31:0]auto_cc_to_m03_regslice_RDATA;
  wire auto_cc_to_m03_regslice_RREADY;
  wire [1:0]auto_cc_to_m03_regslice_RRESP;
  wire auto_cc_to_m03_regslice_RVALID;
  wire [31:0]auto_cc_to_m03_regslice_WDATA;
  wire auto_cc_to_m03_regslice_WREADY;
  wire [3:0]auto_cc_to_m03_regslice_WSTRB;
  wire auto_cc_to_m03_regslice_WVALID;
  wire [16:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [16:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;
  wire [5:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [5:0]m03_regslice_to_m03_couplers_AWADDR;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[16:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[16:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  bd_2fd7_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m03_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
  bd_2fd7_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m03_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m03_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m03_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m03_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m03_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m03_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m03_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m03_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m03_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m03_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m03_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m03_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m03_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m03_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m03_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m03_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m03_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m03_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m03_regslice_WVALID));
endmodule

module s00_couplers_imp_1328SXF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [33:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [33:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [33:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[33:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[33:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[33:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  bd_2fd7_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1FDD540
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [33:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [33:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [33:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[33:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[33:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[33:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  bd_2fd7_s00_regslice_3 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1HU9HL8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [16:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [16:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[16:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[16:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_7YHXYM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [33:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [33:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [33:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[33:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[33:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[33:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  bd_2fd7_s00_regslice_2 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_BG5KE5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [33:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [33:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [33:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [33:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [33:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[33:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[33:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[33:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  bd_2fd7_s00_regslice_1 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule
