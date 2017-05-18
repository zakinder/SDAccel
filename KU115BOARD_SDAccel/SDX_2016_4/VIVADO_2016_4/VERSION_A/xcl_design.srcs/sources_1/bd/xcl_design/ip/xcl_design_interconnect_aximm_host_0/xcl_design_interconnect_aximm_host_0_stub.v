// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
// Date        : Tue May 16 10:22:37 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top xcl_design_interconnect_aximm_host_0 -prefix
//               xcl_design_interconnect_aximm_host_0_ xcl_design_interconnect_aximm_host_0_stub.v
// Design      : xcl_design_interconnect_aximm_host_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_d184,Vivado 2016.4_sdx" *)
module xcl_design_interconnect_aximm_host_0(aclk, aclk1, aresetn, S00_AXI_awid, 
  S00_AXI_awaddr, S00_AXI_awlen, S00_AXI_awsize, S00_AXI_awburst, S00_AXI_awlock, 
  S00_AXI_awcache, S00_AXI_awprot, S00_AXI_awqos, S00_AXI_awvalid, S00_AXI_awready, 
  S00_AXI_wdata, S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bid, 
  S00_AXI_bresp, S00_AXI_bvalid, S00_AXI_bready, S00_AXI_arid, S00_AXI_araddr, S00_AXI_arlen, 
  S00_AXI_arsize, S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, S00_AXI_arprot, 
  S00_AXI_arqos, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rid, S00_AXI_rdata, S00_AXI_rresp, 
  S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, M00_AXI_awid, M00_AXI_awaddr, M00_AXI_awlen, 
  M00_AXI_awsize, M00_AXI_awburst, M00_AXI_awlock, M00_AXI_awcache, M00_AXI_awprot, 
  M00_AXI_awqos, M00_AXI_awuser, M00_AXI_awvalid, M00_AXI_awready, M00_AXI_wdata, 
  M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wuser, M00_AXI_wvalid, M00_AXI_wready, M00_AXI_bid, 
  M00_AXI_bresp, M00_AXI_buser, M00_AXI_bvalid, M00_AXI_bready, M00_AXI_arid, M00_AXI_araddr, 
  M00_AXI_arlen, M00_AXI_arsize, M00_AXI_arburst, M00_AXI_arlock, M00_AXI_arcache, 
  M00_AXI_arprot, M00_AXI_arqos, M00_AXI_aruser, M00_AXI_arvalid, M00_AXI_arready, 
  M00_AXI_rid, M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rlast, M00_AXI_ruser, M00_AXI_rvalid, 
  M00_AXI_rready, M01_AXI_awid, M01_AXI_awaddr, M01_AXI_awlen, M01_AXI_awsize, 
  M01_AXI_awburst, M01_AXI_awlock, M01_AXI_awcache, M01_AXI_awprot, M01_AXI_awqos, 
  M01_AXI_awuser, M01_AXI_awvalid, M01_AXI_awready, M01_AXI_wdata, M01_AXI_wstrb, 
  M01_AXI_wlast, M01_AXI_wuser, M01_AXI_wvalid, M01_AXI_wready, M01_AXI_bid, M01_AXI_bresp, 
  M01_AXI_buser, M01_AXI_bvalid, M01_AXI_bready, M01_AXI_arid, M01_AXI_araddr, M01_AXI_arlen, 
  M01_AXI_arsize, M01_AXI_arburst, M01_AXI_arlock, M01_AXI_arcache, M01_AXI_arprot, 
  M01_AXI_arqos, M01_AXI_aruser, M01_AXI_arvalid, M01_AXI_arready, M01_AXI_rid, 
  M01_AXI_rdata, M01_AXI_rresp, M01_AXI_rlast, M01_AXI_ruser, M01_AXI_rvalid, M01_AXI_rready, 
  M02_AXI_awid, M02_AXI_awaddr, M02_AXI_awlen, M02_AXI_awsize, M02_AXI_awburst, 
  M02_AXI_awlock, M02_AXI_awcache, M02_AXI_awprot, M02_AXI_awqos, M02_AXI_awuser, 
  M02_AXI_awvalid, M02_AXI_awready, M02_AXI_wdata, M02_AXI_wstrb, M02_AXI_wlast, 
  M02_AXI_wuser, M02_AXI_wvalid, M02_AXI_wready, M02_AXI_bid, M02_AXI_bresp, M02_AXI_buser, 
  M02_AXI_bvalid, M02_AXI_bready, M02_AXI_arid, M02_AXI_araddr, M02_AXI_arlen, 
  M02_AXI_arsize, M02_AXI_arburst, M02_AXI_arlock, M02_AXI_arcache, M02_AXI_arprot, 
  M02_AXI_arqos, M02_AXI_aruser, M02_AXI_arvalid, M02_AXI_arready, M02_AXI_rid, 
  M02_AXI_rdata, M02_AXI_rresp, M02_AXI_rlast, M02_AXI_ruser, M02_AXI_rvalid, M02_AXI_rready, 
  M03_AXI_awid, M03_AXI_awaddr, M03_AXI_awlen, M03_AXI_awsize, M03_AXI_awburst, 
  M03_AXI_awlock, M03_AXI_awcache, M03_AXI_awprot, M03_AXI_awqos, M03_AXI_awuser, 
  M03_AXI_awvalid, M03_AXI_awready, M03_AXI_wdata, M03_AXI_wstrb, M03_AXI_wlast, 
  M03_AXI_wuser, M03_AXI_wvalid, M03_AXI_wready, M03_AXI_bid, M03_AXI_bresp, M03_AXI_buser, 
  M03_AXI_bvalid, M03_AXI_bready, M03_AXI_arid, M03_AXI_araddr, M03_AXI_arlen, 
  M03_AXI_arsize, M03_AXI_arburst, M03_AXI_arlock, M03_AXI_arcache, M03_AXI_arprot, 
  M03_AXI_arqos, M03_AXI_aruser, M03_AXI_arvalid, M03_AXI_arready, M03_AXI_rid, 
  M03_AXI_rdata, M03_AXI_rresp, M03_AXI_rlast, M03_AXI_ruser, M03_AXI_rvalid, M03_AXI_rready, 
  M04_AXI_araddr, M04_AXI_arlen, M04_AXI_arsize, M04_AXI_arburst, M04_AXI_arlock, 
  M04_AXI_arcache, M04_AXI_arprot, M04_AXI_arqos, M04_AXI_arvalid, M04_AXI_arready, 
  M04_AXI_rdata, M04_AXI_rresp, M04_AXI_rlast, M04_AXI_rvalid, M04_AXI_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclk1,aresetn,S00_AXI_awid[3:0],S00_AXI_awaddr[37:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awqos[3:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[255:0],S00_AXI_wstrb[31:0],S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bid[3:0],S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S00_AXI_arid[3:0],S00_AXI_araddr[37:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arqos[3:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rid[3:0],S00_AXI_rdata[255:0],S00_AXI_rresp[1:0],S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,M00_AXI_awid[3:0],M00_AXI_awaddr[37:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awuser[113:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[255:0],M00_AXI_wstrb[31:0],M00_AXI_wlast,M00_AXI_wuser[13:0],M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bid[3:0],M00_AXI_bresp[1:0],M00_AXI_buser[113:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_arid[3:0],M00_AXI_araddr[37:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arqos[3:0],M00_AXI_aruser[113:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rid[3:0],M00_AXI_rdata[255:0],M00_AXI_rresp[1:0],M00_AXI_rlast,M00_AXI_ruser[13:0],M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awid[3:0],M01_AXI_awaddr[37:0],M01_AXI_awlen[7:0],M01_AXI_awsize[2:0],M01_AXI_awburst[1:0],M01_AXI_awlock[0:0],M01_AXI_awcache[3:0],M01_AXI_awprot[2:0],M01_AXI_awqos[3:0],M01_AXI_awuser[113:0],M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata[255:0],M01_AXI_wstrb[31:0],M01_AXI_wlast,M01_AXI_wuser[13:0],M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bid[3:0],M01_AXI_bresp[1:0],M01_AXI_buser[113:0],M01_AXI_bvalid,M01_AXI_bready,M01_AXI_arid[3:0],M01_AXI_araddr[37:0],M01_AXI_arlen[7:0],M01_AXI_arsize[2:0],M01_AXI_arburst[1:0],M01_AXI_arlock[0:0],M01_AXI_arcache[3:0],M01_AXI_arprot[2:0],M01_AXI_arqos[3:0],M01_AXI_aruser[113:0],M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rid[3:0],M01_AXI_rdata[255:0],M01_AXI_rresp[1:0],M01_AXI_rlast,M01_AXI_ruser[13:0],M01_AXI_rvalid,M01_AXI_rready,M02_AXI_awid[3:0],M02_AXI_awaddr[37:0],M02_AXI_awlen[7:0],M02_AXI_awsize[2:0],M02_AXI_awburst[1:0],M02_AXI_awlock[0:0],M02_AXI_awcache[3:0],M02_AXI_awprot[2:0],M02_AXI_awqos[3:0],M02_AXI_awuser[113:0],M02_AXI_awvalid,M02_AXI_awready,M02_AXI_wdata[255:0],M02_AXI_wstrb[31:0],M02_AXI_wlast,M02_AXI_wuser[13:0],M02_AXI_wvalid,M02_AXI_wready,M02_AXI_bid[3:0],M02_AXI_bresp[1:0],M02_AXI_buser[113:0],M02_AXI_bvalid,M02_AXI_bready,M02_AXI_arid[3:0],M02_AXI_araddr[37:0],M02_AXI_arlen[7:0],M02_AXI_arsize[2:0],M02_AXI_arburst[1:0],M02_AXI_arlock[0:0],M02_AXI_arcache[3:0],M02_AXI_arprot[2:0],M02_AXI_arqos[3:0],M02_AXI_aruser[113:0],M02_AXI_arvalid,M02_AXI_arready,M02_AXI_rid[3:0],M02_AXI_rdata[255:0],M02_AXI_rresp[1:0],M02_AXI_rlast,M02_AXI_ruser[13:0],M02_AXI_rvalid,M02_AXI_rready,M03_AXI_awid[3:0],M03_AXI_awaddr[37:0],M03_AXI_awlen[7:0],M03_AXI_awsize[2:0],M03_AXI_awburst[1:0],M03_AXI_awlock[0:0],M03_AXI_awcache[3:0],M03_AXI_awprot[2:0],M03_AXI_awqos[3:0],M03_AXI_awuser[113:0],M03_AXI_awvalid,M03_AXI_awready,M03_AXI_wdata[255:0],M03_AXI_wstrb[31:0],M03_AXI_wlast,M03_AXI_wuser[13:0],M03_AXI_wvalid,M03_AXI_wready,M03_AXI_bid[3:0],M03_AXI_bresp[1:0],M03_AXI_buser[113:0],M03_AXI_bvalid,M03_AXI_bready,M03_AXI_arid[3:0],M03_AXI_araddr[37:0],M03_AXI_arlen[7:0],M03_AXI_arsize[2:0],M03_AXI_arburst[1:0],M03_AXI_arlock[0:0],M03_AXI_arcache[3:0],M03_AXI_arprot[2:0],M03_AXI_arqos[3:0],M03_AXI_aruser[113:0],M03_AXI_arvalid,M03_AXI_arready,M03_AXI_rid[3:0],M03_AXI_rdata[255:0],M03_AXI_rresp[1:0],M03_AXI_rlast,M03_AXI_ruser[13:0],M03_AXI_rvalid,M03_AXI_rready,M04_AXI_araddr[31:0],M04_AXI_arlen[7:0],M04_AXI_arsize[2:0],M04_AXI_arburst[1:0],M04_AXI_arlock[0:0],M04_AXI_arcache[3:0],M04_AXI_arprot[2:0],M04_AXI_arqos[3:0],M04_AXI_arvalid,M04_AXI_arready,M04_AXI_rdata[255:0],M04_AXI_rresp[1:0],M04_AXI_rlast,M04_AXI_rvalid,M04_AXI_rready" */;
  input aclk;
  input aclk1;
  input aresetn;
  input [3:0]S00_AXI_awid;
  input [37:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [255:0]S00_AXI_wdata;
  input [31:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [37:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [255:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [3:0]M00_AXI_awid;
  output [37:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output [113:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [255:0]M00_AXI_wdata;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output [13:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [3:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input [113:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [3:0]M00_AXI_arid;
  output [37:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output [113:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [3:0]M00_AXI_rid;
  input [255:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input [13:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [3:0]M01_AXI_awid;
  output [37:0]M01_AXI_awaddr;
  output [7:0]M01_AXI_awlen;
  output [2:0]M01_AXI_awsize;
  output [1:0]M01_AXI_awburst;
  output [0:0]M01_AXI_awlock;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  output [113:0]M01_AXI_awuser;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [255:0]M01_AXI_wdata;
  output [31:0]M01_AXI_wstrb;
  output M01_AXI_wlast;
  output [13:0]M01_AXI_wuser;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [3:0]M01_AXI_bid;
  input [1:0]M01_AXI_bresp;
  input [113:0]M01_AXI_buser;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [3:0]M01_AXI_arid;
  output [37:0]M01_AXI_araddr;
  output [7:0]M01_AXI_arlen;
  output [2:0]M01_AXI_arsize;
  output [1:0]M01_AXI_arburst;
  output [0:0]M01_AXI_arlock;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  output [113:0]M01_AXI_aruser;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [3:0]M01_AXI_rid;
  input [255:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rlast;
  input [13:0]M01_AXI_ruser;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  output [3:0]M02_AXI_awid;
  output [37:0]M02_AXI_awaddr;
  output [7:0]M02_AXI_awlen;
  output [2:0]M02_AXI_awsize;
  output [1:0]M02_AXI_awburst;
  output [0:0]M02_AXI_awlock;
  output [3:0]M02_AXI_awcache;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  output [113:0]M02_AXI_awuser;
  output M02_AXI_awvalid;
  input M02_AXI_awready;
  output [255:0]M02_AXI_wdata;
  output [31:0]M02_AXI_wstrb;
  output M02_AXI_wlast;
  output [13:0]M02_AXI_wuser;
  output M02_AXI_wvalid;
  input M02_AXI_wready;
  input [3:0]M02_AXI_bid;
  input [1:0]M02_AXI_bresp;
  input [113:0]M02_AXI_buser;
  input M02_AXI_bvalid;
  output M02_AXI_bready;
  output [3:0]M02_AXI_arid;
  output [37:0]M02_AXI_araddr;
  output [7:0]M02_AXI_arlen;
  output [2:0]M02_AXI_arsize;
  output [1:0]M02_AXI_arburst;
  output [0:0]M02_AXI_arlock;
  output [3:0]M02_AXI_arcache;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  output [113:0]M02_AXI_aruser;
  output M02_AXI_arvalid;
  input M02_AXI_arready;
  input [3:0]M02_AXI_rid;
  input [255:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rlast;
  input [13:0]M02_AXI_ruser;
  input M02_AXI_rvalid;
  output M02_AXI_rready;
  output [3:0]M03_AXI_awid;
  output [37:0]M03_AXI_awaddr;
  output [7:0]M03_AXI_awlen;
  output [2:0]M03_AXI_awsize;
  output [1:0]M03_AXI_awburst;
  output [0:0]M03_AXI_awlock;
  output [3:0]M03_AXI_awcache;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  output [113:0]M03_AXI_awuser;
  output M03_AXI_awvalid;
  input M03_AXI_awready;
  output [255:0]M03_AXI_wdata;
  output [31:0]M03_AXI_wstrb;
  output M03_AXI_wlast;
  output [13:0]M03_AXI_wuser;
  output M03_AXI_wvalid;
  input M03_AXI_wready;
  input [3:0]M03_AXI_bid;
  input [1:0]M03_AXI_bresp;
  input [113:0]M03_AXI_buser;
  input M03_AXI_bvalid;
  output M03_AXI_bready;
  output [3:0]M03_AXI_arid;
  output [37:0]M03_AXI_araddr;
  output [7:0]M03_AXI_arlen;
  output [2:0]M03_AXI_arsize;
  output [1:0]M03_AXI_arburst;
  output [0:0]M03_AXI_arlock;
  output [3:0]M03_AXI_arcache;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  output [113:0]M03_AXI_aruser;
  output M03_AXI_arvalid;
  input M03_AXI_arready;
  input [3:0]M03_AXI_rid;
  input [255:0]M03_AXI_rdata;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rlast;
  input [13:0]M03_AXI_ruser;
  input M03_AXI_rvalid;
  output M03_AXI_rready;
  output [31:0]M04_AXI_araddr;
  output [7:0]M04_AXI_arlen;
  output [2:0]M04_AXI_arsize;
  output [1:0]M04_AXI_arburst;
  output [0:0]M04_AXI_arlock;
  output [3:0]M04_AXI_arcache;
  output [2:0]M04_AXI_arprot;
  output [3:0]M04_AXI_arqos;
  output M04_AXI_arvalid;
  input M04_AXI_arready;
  input [255:0]M04_AXI_rdata;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rlast;
  input M04_AXI_rvalid;
  output M04_AXI_rready;
endmodule
