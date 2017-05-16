// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Tue May 16 06:41:40 2017
// Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_u_ocl_region_0_stub.v
// Design      : xcl_design_u_ocl_region_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_2fd7,Vivado 2016.3_sdx" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DATA_CLK, DATA_RESET, CONTROL_CLK, 
  CONTROL_RESET, KERNEL_CLK2, KERNEL_RESET2, S_AXI_awaddr, S_AXI_awprot, S_AXI_awqos, 
  S_AXI_awvalid, S_AXI_awready, S_AXI_wdata, S_AXI_wstrb, S_AXI_wvalid, S_AXI_wready, 
  S_AXI_bresp, S_AXI_bvalid, S_AXI_bready, S_AXI_araddr, S_AXI_arprot, S_AXI_arqos, 
  S_AXI_arvalid, S_AXI_arready, S_AXI_rdata, S_AXI_rresp, S_AXI_rvalid, S_AXI_rready, 
  M00_AXI_awid, M00_AXI_awaddr, M00_AXI_awlen, M00_AXI_awsize, M00_AXI_awburst, 
  M00_AXI_awlock, M00_AXI_awcache, M00_AXI_awprot, M00_AXI_awqos, M00_AXI_awvalid, 
  M00_AXI_awready, M00_AXI_wdata, M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wvalid, 
  M00_AXI_wready, M00_AXI_bid, M00_AXI_bresp, M00_AXI_bvalid, M00_AXI_bready, M00_AXI_arid, 
  M00_AXI_araddr, M00_AXI_arlen, M00_AXI_arsize, M00_AXI_arburst, M00_AXI_arlock, 
  M00_AXI_arcache, M00_AXI_arprot, M00_AXI_arqos, M00_AXI_arvalid, M00_AXI_arready, 
  M00_AXI_rid, M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rlast, M00_AXI_rvalid, M00_AXI_rready, 
  M01_AXI_awid, M01_AXI_awaddr, M01_AXI_awlen, M01_AXI_awsize, M01_AXI_awburst, 
  M01_AXI_awlock, M01_AXI_awcache, M01_AXI_awprot, M01_AXI_awqos, M01_AXI_awvalid, 
  M01_AXI_awready, M01_AXI_wdata, M01_AXI_wstrb, M01_AXI_wlast, M01_AXI_wvalid, 
  M01_AXI_wready, M01_AXI_bid, M01_AXI_bresp, M01_AXI_bvalid, M01_AXI_bready, M01_AXI_arid, 
  M01_AXI_araddr, M01_AXI_arlen, M01_AXI_arsize, M01_AXI_arburst, M01_AXI_arlock, 
  M01_AXI_arcache, M01_AXI_arprot, M01_AXI_arqos, M01_AXI_arvalid, M01_AXI_arready, 
  M01_AXI_rid, M01_AXI_rdata, M01_AXI_rresp, M01_AXI_rlast, M01_AXI_rvalid, M01_AXI_rready, 
  M02_AXI_awid, M02_AXI_awaddr, M02_AXI_awlen, M02_AXI_awsize, M02_AXI_awburst, 
  M02_AXI_awlock, M02_AXI_awcache, M02_AXI_awprot, M02_AXI_awqos, M02_AXI_awvalid, 
  M02_AXI_awready, M02_AXI_wdata, M02_AXI_wstrb, M02_AXI_wlast, M02_AXI_wvalid, 
  M02_AXI_wready, M02_AXI_bid, M02_AXI_bresp, M02_AXI_bvalid, M02_AXI_bready, M02_AXI_arid, 
  M02_AXI_araddr, M02_AXI_arlen, M02_AXI_arsize, M02_AXI_arburst, M02_AXI_arlock, 
  M02_AXI_arcache, M02_AXI_arprot, M02_AXI_arqos, M02_AXI_arvalid, M02_AXI_arready, 
  M02_AXI_rid, M02_AXI_rdata, M02_AXI_rresp, M02_AXI_rlast, M02_AXI_rvalid, M02_AXI_rready, 
  M03_AXI_awid, M03_AXI_awaddr, M03_AXI_awlen, M03_AXI_awsize, M03_AXI_awburst, 
  M03_AXI_awlock, M03_AXI_awcache, M03_AXI_awprot, M03_AXI_awqos, M03_AXI_awvalid, 
  M03_AXI_awready, M03_AXI_wdata, M03_AXI_wstrb, M03_AXI_wlast, M03_AXI_wvalid, 
  M03_AXI_wready, M03_AXI_bid, M03_AXI_bresp, M03_AXI_bvalid, M03_AXI_bready, M03_AXI_arid, 
  M03_AXI_araddr, M03_AXI_arlen, M03_AXI_arsize, M03_AXI_arburst, M03_AXI_arlock, 
  M03_AXI_arcache, M03_AXI_arprot, M03_AXI_arqos, M03_AXI_arvalid, M03_AXI_arready, 
  M03_AXI_rid, M03_AXI_rdata, M03_AXI_rresp, M03_AXI_rlast, M03_AXI_rvalid, M03_AXI_rready)
/* synthesis syn_black_box black_box_pad_pin="DATA_CLK,DATA_RESET,CONTROL_CLK,CONTROL_RESET,KERNEL_CLK2,KERNEL_RESET2,S_AXI_awaddr[16:0],S_AXI_awprot[2:0],S_AXI_awqos[3:0],S_AXI_awvalid,S_AXI_awready,S_AXI_wdata[31:0],S_AXI_wstrb[3:0],S_AXI_wvalid,S_AXI_wready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_bready,S_AXI_araddr[16:0],S_AXI_arprot[2:0],S_AXI_arqos[3:0],S_AXI_arvalid,S_AXI_arready,S_AXI_rdata[31:0],S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_rready,M00_AXI_awid[3:0],M00_AXI_awaddr[33:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[511:0],M00_AXI_wstrb[63:0],M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bid[3:0],M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_arid[3:0],M00_AXI_araddr[33:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arqos[3:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rid[3:0],M00_AXI_rdata[511:0],M00_AXI_rresp[1:0],M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awid[3:0],M01_AXI_awaddr[33:0],M01_AXI_awlen[7:0],M01_AXI_awsize[2:0],M01_AXI_awburst[1:0],M01_AXI_awlock[0:0],M01_AXI_awcache[3:0],M01_AXI_awprot[2:0],M01_AXI_awqos[3:0],M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata[511:0],M01_AXI_wstrb[63:0],M01_AXI_wlast,M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bid[3:0],M01_AXI_bresp[1:0],M01_AXI_bvalid,M01_AXI_bready,M01_AXI_arid[3:0],M01_AXI_araddr[33:0],M01_AXI_arlen[7:0],M01_AXI_arsize[2:0],M01_AXI_arburst[1:0],M01_AXI_arlock[0:0],M01_AXI_arcache[3:0],M01_AXI_arprot[2:0],M01_AXI_arqos[3:0],M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rid[3:0],M01_AXI_rdata[511:0],M01_AXI_rresp[1:0],M01_AXI_rlast,M01_AXI_rvalid,M01_AXI_rready,M02_AXI_awid[3:0],M02_AXI_awaddr[33:0],M02_AXI_awlen[7:0],M02_AXI_awsize[2:0],M02_AXI_awburst[1:0],M02_AXI_awlock[0:0],M02_AXI_awcache[3:0],M02_AXI_awprot[2:0],M02_AXI_awqos[3:0],M02_AXI_awvalid,M02_AXI_awready,M02_AXI_wdata[511:0],M02_AXI_wstrb[63:0],M02_AXI_wlast,M02_AXI_wvalid,M02_AXI_wready,M02_AXI_bid[3:0],M02_AXI_bresp[1:0],M02_AXI_bvalid,M02_AXI_bready,M02_AXI_arid[3:0],M02_AXI_araddr[33:0],M02_AXI_arlen[7:0],M02_AXI_arsize[2:0],M02_AXI_arburst[1:0],M02_AXI_arlock[0:0],M02_AXI_arcache[3:0],M02_AXI_arprot[2:0],M02_AXI_arqos[3:0],M02_AXI_arvalid,M02_AXI_arready,M02_AXI_rid[3:0],M02_AXI_rdata[511:0],M02_AXI_rresp[1:0],M02_AXI_rlast,M02_AXI_rvalid,M02_AXI_rready,M03_AXI_awid[3:0],M03_AXI_awaddr[33:0],M03_AXI_awlen[7:0],M03_AXI_awsize[2:0],M03_AXI_awburst[1:0],M03_AXI_awlock[0:0],M03_AXI_awcache[3:0],M03_AXI_awprot[2:0],M03_AXI_awqos[3:0],M03_AXI_awvalid,M03_AXI_awready,M03_AXI_wdata[511:0],M03_AXI_wstrb[63:0],M03_AXI_wlast,M03_AXI_wvalid,M03_AXI_wready,M03_AXI_bid[3:0],M03_AXI_bresp[1:0],M03_AXI_bvalid,M03_AXI_bready,M03_AXI_arid[3:0],M03_AXI_araddr[33:0],M03_AXI_arlen[7:0],M03_AXI_arsize[2:0],M03_AXI_arburst[1:0],M03_AXI_arlock[0:0],M03_AXI_arcache[3:0],M03_AXI_arprot[2:0],M03_AXI_arqos[3:0],M03_AXI_arvalid,M03_AXI_arready,M03_AXI_rid[3:0],M03_AXI_rdata[511:0],M03_AXI_rresp[1:0],M03_AXI_rlast,M03_AXI_rvalid,M03_AXI_rready" */;
  input DATA_CLK;
  input DATA_RESET;
  input CONTROL_CLK;
  input CONTROL_RESET;
  input KERNEL_CLK2;
  input KERNEL_RESET2;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  input S_AXI_awvalid;
  output S_AXI_awready;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input S_AXI_bready;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  input S_AXI_arvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_rready;
  output [3:0]M00_AXI_awid;
  output [33:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [3:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [3:0]M00_AXI_arid;
  output [33:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [3:0]M00_AXI_rid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [3:0]M01_AXI_awid;
  output [33:0]M01_AXI_awaddr;
  output [7:0]M01_AXI_awlen;
  output [2:0]M01_AXI_awsize;
  output [1:0]M01_AXI_awburst;
  output [0:0]M01_AXI_awlock;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [511:0]M01_AXI_wdata;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wlast;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [3:0]M01_AXI_bid;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [3:0]M01_AXI_arid;
  output [33:0]M01_AXI_araddr;
  output [7:0]M01_AXI_arlen;
  output [2:0]M01_AXI_arsize;
  output [1:0]M01_AXI_arburst;
  output [0:0]M01_AXI_arlock;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [3:0]M01_AXI_rid;
  input [511:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rlast;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  output [3:0]M02_AXI_awid;
  output [33:0]M02_AXI_awaddr;
  output [7:0]M02_AXI_awlen;
  output [2:0]M02_AXI_awsize;
  output [1:0]M02_AXI_awburst;
  output [0:0]M02_AXI_awlock;
  output [3:0]M02_AXI_awcache;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  output M02_AXI_awvalid;
  input M02_AXI_awready;
  output [511:0]M02_AXI_wdata;
  output [63:0]M02_AXI_wstrb;
  output M02_AXI_wlast;
  output M02_AXI_wvalid;
  input M02_AXI_wready;
  input [3:0]M02_AXI_bid;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  output M02_AXI_bready;
  output [3:0]M02_AXI_arid;
  output [33:0]M02_AXI_araddr;
  output [7:0]M02_AXI_arlen;
  output [2:0]M02_AXI_arsize;
  output [1:0]M02_AXI_arburst;
  output [0:0]M02_AXI_arlock;
  output [3:0]M02_AXI_arcache;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  output M02_AXI_arvalid;
  input M02_AXI_arready;
  input [3:0]M02_AXI_rid;
  input [511:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rlast;
  input M02_AXI_rvalid;
  output M02_AXI_rready;
  output [3:0]M03_AXI_awid;
  output [33:0]M03_AXI_awaddr;
  output [7:0]M03_AXI_awlen;
  output [2:0]M03_AXI_awsize;
  output [1:0]M03_AXI_awburst;
  output [0:0]M03_AXI_awlock;
  output [3:0]M03_AXI_awcache;
  output [2:0]M03_AXI_awprot;
  output [3:0]M03_AXI_awqos;
  output M03_AXI_awvalid;
  input M03_AXI_awready;
  output [511:0]M03_AXI_wdata;
  output [63:0]M03_AXI_wstrb;
  output M03_AXI_wlast;
  output M03_AXI_wvalid;
  input M03_AXI_wready;
  input [3:0]M03_AXI_bid;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  output M03_AXI_bready;
  output [3:0]M03_AXI_arid;
  output [33:0]M03_AXI_araddr;
  output [7:0]M03_AXI_arlen;
  output [2:0]M03_AXI_arsize;
  output [1:0]M03_AXI_arburst;
  output [0:0]M03_AXI_arlock;
  output [3:0]M03_AXI_arcache;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  output M03_AXI_arvalid;
  input M03_AXI_arready;
  input [3:0]M03_AXI_rid;
  input [511:0]M03_AXI_rdata;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rlast;
  input M03_AXI_rvalid;
  output M03_AXI_rready;
endmodule
