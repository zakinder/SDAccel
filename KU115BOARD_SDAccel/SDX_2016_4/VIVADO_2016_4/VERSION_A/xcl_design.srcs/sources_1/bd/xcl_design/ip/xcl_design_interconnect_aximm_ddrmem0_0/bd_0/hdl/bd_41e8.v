//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Tue May 16 05:37:31 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target bd_41e8.bd
//Design      : bd_41e8
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_41e8,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_41e8,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=43,numReposBlks=35,numNonXlnxBlks=0,numHierBlks=8,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xcl_design_interconnect_aximm_ddrmem0_0.hwdef" *) 
module bd_41e8
   (M00_AXI_araddr,
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
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    aclk,
    aclk1,
    aclk2,
    aresetn);
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
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
  input [33:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [113:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [33:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [113:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [113:0]S00_AXI_buser;
  output S00_AXI_bvalid;
  output [255:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [13:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [255:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [31:0]S00_AXI_wstrb;
  input [13:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input [33:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [33:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input aclk;
  input aclk1;
  input aclk2;
  input aresetn;

  wire [33:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [3:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [113:0]S00_AXI_1_ARUSER;
  wire S00_AXI_1_ARVALID;
  wire [33:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [3:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [113:0]S00_AXI_1_AWUSER;
  wire S00_AXI_1_AWVALID;
  wire [3:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [113:0]S00_AXI_1_BUSER;
  wire S00_AXI_1_BVALID;
  wire [255:0]S00_AXI_1_RDATA;
  wire [3:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [13:0]S00_AXI_1_RUSER;
  wire S00_AXI_1_RVALID;
  wire [255:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [31:0]S00_AXI_1_WSTRB;
  wire [13:0]S00_AXI_1_WUSER;
  wire S00_AXI_1_WVALID;
  wire [33:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [3:0]S01_AXI_1_ARID;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [0:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [33:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [3:0]S01_AXI_1_AWID;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [0:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire [3:0]S01_AXI_1_BID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [511:0]S01_AXI_1_RDATA;
  wire [3:0]S01_AXI_1_RID;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [511:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [63:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [0:0]S_SC_AR_1_INFO;
  wire [258:0]S_SC_AR_1_PAYLD;
  wire [0:0]S_SC_AR_1_RECV;
  wire S_SC_AR_1_REQ;
  wire S_SC_AR_1_SEND;
  wire [0:0]S_SC_AR_2_INFO;
  wire [258:0]S_SC_AR_2_PAYLD;
  wire [0:0]S_SC_AR_2_RECV;
  wire S_SC_AR_2_REQ;
  wire S_SC_AR_2_SEND;
  wire [1:0]S_SC_AR_3_INFO;
  wire [258:0]S_SC_AR_3_PAYLD;
  wire [1:0]S_SC_AR_3_RECV;
  wire [1:0]S_SC_AR_3_REQ;
  wire [1:0]S_SC_AR_3_SEND;
  wire [0:0]S_SC_AW_1_INFO;
  wire [258:0]S_SC_AW_1_PAYLD;
  wire [0:0]S_SC_AW_1_RECV;
  wire S_SC_AW_1_REQ;
  wire S_SC_AW_1_SEND;
  wire [0:0]S_SC_AW_2_INFO;
  wire [258:0]S_SC_AW_2_PAYLD;
  wire [0:0]S_SC_AW_2_RECV;
  wire S_SC_AW_2_REQ;
  wire S_SC_AW_2_SEND;
  wire [1:0]S_SC_AW_3_INFO;
  wire [258:0]S_SC_AW_3_PAYLD;
  wire [1:0]S_SC_AW_3_RECV;
  wire [1:0]S_SC_AW_3_REQ;
  wire [1:0]S_SC_AW_3_SEND;
  wire [0:0]S_SC_B_1_INFO;
  wire [121:0]S_SC_B_1_PAYLD;
  wire [0:0]S_SC_B_1_RECV;
  wire [0:0]S_SC_B_1_REQ;
  wire [0:0]S_SC_B_1_SEND;
  wire [0:0]S_SC_B_2_INFO;
  wire [121:0]S_SC_B_2_PAYLD;
  wire [0:0]S_SC_B_2_RECV;
  wire [0:0]S_SC_B_2_REQ;
  wire [0:0]S_SC_B_2_SEND;
  wire [0:0]S_SC_B_3_INFO;
  wire [121:0]S_SC_B_3_PAYLD;
  wire [0:0]S_SC_B_3_RECV;
  wire S_SC_B_3_REQ;
  wire S_SC_B_3_SEND;
  wire [0:0]S_SC_R_1_INFO;
  wire [534:0]S_SC_R_1_PAYLD;
  wire [0:0]S_SC_R_1_RECV;
  wire [0:0]S_SC_R_1_REQ;
  wire [0:0]S_SC_R_1_SEND;
  wire [0:0]S_SC_R_2_INFO;
  wire [534:0]S_SC_R_2_PAYLD;
  wire [0:0]S_SC_R_2_RECV;
  wire [0:0]S_SC_R_2_REQ;
  wire [0:0]S_SC_R_2_SEND;
  wire [0:0]S_SC_R_3_INFO;
  wire [534:0]S_SC_R_3_PAYLD;
  wire [0:0]S_SC_R_3_RECV;
  wire S_SC_R_3_REQ;
  wire S_SC_R_3_SEND;
  wire [0:0]S_SC_W_1_INFO;
  wire [591:0]S_SC_W_1_PAYLD;
  wire [0:0]S_SC_W_1_RECV;
  wire S_SC_W_1_REQ;
  wire S_SC_W_1_SEND;
  wire [0:0]S_SC_W_2_INFO;
  wire [591:0]S_SC_W_2_PAYLD;
  wire [0:0]S_SC_W_2_RECV;
  wire S_SC_W_2_REQ;
  wire S_SC_W_2_SEND;
  wire [1:0]S_SC_W_3_INFO;
  wire [591:0]S_SC_W_3_PAYLD;
  wire [1:0]S_SC_W_3_RECV;
  wire [1:0]S_SC_W_3_REQ;
  wire [1:0]S_SC_W_3_SEND;
  wire aclk1_1;
  wire aclk2_1;
  wire aclk_1;
  wire aclk_2;
  wire aclk_net;
  wire aresetn_1;
  wire [0:0]aresetn_2;
  wire [0:0]aresetn_3;
  wire aresetn_net;
  wire clk_map_M00_ACLK;
  wire [31:0]m00_exit_pipeline_m_axi_ARADDR;
  wire [1:0]m00_exit_pipeline_m_axi_ARBURST;
  wire [3:0]m00_exit_pipeline_m_axi_ARCACHE;
  wire [7:0]m00_exit_pipeline_m_axi_ARLEN;
  wire [0:0]m00_exit_pipeline_m_axi_ARLOCK;
  wire [2:0]m00_exit_pipeline_m_axi_ARPROT;
  wire [3:0]m00_exit_pipeline_m_axi_ARQOS;
  wire m00_exit_pipeline_m_axi_ARREADY;
  wire [2:0]m00_exit_pipeline_m_axi_ARSIZE;
  wire m00_exit_pipeline_m_axi_ARVALID;
  wire [31:0]m00_exit_pipeline_m_axi_AWADDR;
  wire [1:0]m00_exit_pipeline_m_axi_AWBURST;
  wire [3:0]m00_exit_pipeline_m_axi_AWCACHE;
  wire [7:0]m00_exit_pipeline_m_axi_AWLEN;
  wire [0:0]m00_exit_pipeline_m_axi_AWLOCK;
  wire [2:0]m00_exit_pipeline_m_axi_AWPROT;
  wire [3:0]m00_exit_pipeline_m_axi_AWQOS;
  wire m00_exit_pipeline_m_axi_AWREADY;
  wire [2:0]m00_exit_pipeline_m_axi_AWSIZE;
  wire m00_exit_pipeline_m_axi_AWVALID;
  wire m00_exit_pipeline_m_axi_BREADY;
  wire [1:0]m00_exit_pipeline_m_axi_BRESP;
  wire m00_exit_pipeline_m_axi_BVALID;
  wire [511:0]m00_exit_pipeline_m_axi_RDATA;
  wire m00_exit_pipeline_m_axi_RLAST;
  wire m00_exit_pipeline_m_axi_RREADY;
  wire [1:0]m00_exit_pipeline_m_axi_RRESP;
  wire m00_exit_pipeline_m_axi_RVALID;
  wire [511:0]m00_exit_pipeline_m_axi_WDATA;
  wire m00_exit_pipeline_m_axi_WLAST;
  wire m00_exit_pipeline_m_axi_WREADY;
  wire [63:0]m00_exit_pipeline_m_axi_WSTRB;
  wire m00_exit_pipeline_m_axi_WVALID;
  wire [0:0]m00_nodes_M_SC_AR_INFO;
  wire [258:0]m00_nodes_M_SC_AR_PAYLD;
  wire m00_nodes_M_SC_AR_RECV;
  wire [0:0]m00_nodes_M_SC_AR_REQ;
  wire [0:0]m00_nodes_M_SC_AR_SEND;
  wire [0:0]m00_nodes_M_SC_AW_INFO;
  wire [258:0]m00_nodes_M_SC_AW_PAYLD;
  wire m00_nodes_M_SC_AW_RECV;
  wire [0:0]m00_nodes_M_SC_AW_REQ;
  wire [0:0]m00_nodes_M_SC_AW_SEND;
  wire [1:0]m00_nodes_M_SC_B_INFO;
  wire [121:0]m00_nodes_M_SC_B_PAYLD;
  wire [1:0]m00_nodes_M_SC_B_RECV;
  wire [1:0]m00_nodes_M_SC_B_REQ;
  wire [1:0]m00_nodes_M_SC_B_SEND;
  wire [1:0]m00_nodes_M_SC_R_INFO;
  wire [534:0]m00_nodes_M_SC_R_PAYLD;
  wire [1:0]m00_nodes_M_SC_R_RECV;
  wire [1:0]m00_nodes_M_SC_R_REQ;
  wire [1:0]m00_nodes_M_SC_R_SEND;
  wire [0:0]m00_nodes_M_SC_W_INFO;
  wire [591:0]m00_nodes_M_SC_W_PAYLD;
  wire m00_nodes_M_SC_W_RECV;
  wire [0:0]m00_nodes_M_SC_W_REQ;
  wire [0:0]m00_nodes_M_SC_W_SEND;
  wire [31:0]m00_sc2axi_M_AXI_ARADDR;
  wire [3:0]m00_sc2axi_M_AXI_ARCACHE;
  wire [3:0]m00_sc2axi_M_AXI_ARID;
  wire [7:0]m00_sc2axi_M_AXI_ARLEN;
  wire [0:0]m00_sc2axi_M_AXI_ARLOCK;
  wire [2:0]m00_sc2axi_M_AXI_ARPROT;
  wire [3:0]m00_sc2axi_M_AXI_ARQOS;
  wire m00_sc2axi_M_AXI_ARREADY;
  wire [1023:0]m00_sc2axi_M_AXI_ARUSER;
  wire m00_sc2axi_M_AXI_ARVALID;
  wire [31:0]m00_sc2axi_M_AXI_AWADDR;
  wire [3:0]m00_sc2axi_M_AXI_AWCACHE;
  wire [3:0]m00_sc2axi_M_AXI_AWID;
  wire [7:0]m00_sc2axi_M_AXI_AWLEN;
  wire [0:0]m00_sc2axi_M_AXI_AWLOCK;
  wire [2:0]m00_sc2axi_M_AXI_AWPROT;
  wire [3:0]m00_sc2axi_M_AXI_AWQOS;
  wire m00_sc2axi_M_AXI_AWREADY;
  wire [1023:0]m00_sc2axi_M_AXI_AWUSER;
  wire m00_sc2axi_M_AXI_AWVALID;
  wire [3:0]m00_sc2axi_M_AXI_BID;
  wire m00_sc2axi_M_AXI_BREADY;
  wire [1:0]m00_sc2axi_M_AXI_BRESP;
  wire [1023:0]m00_sc2axi_M_AXI_BUSER;
  wire m00_sc2axi_M_AXI_BVALID;
  wire [511:0]m00_sc2axi_M_AXI_RDATA;
  wire [3:0]m00_sc2axi_M_AXI_RID;
  wire m00_sc2axi_M_AXI_RLAST;
  wire m00_sc2axi_M_AXI_RREADY;
  wire [1:0]m00_sc2axi_M_AXI_RRESP;
  wire [1023:0]m00_sc2axi_M_AXI_RUSER;
  wire m00_sc2axi_M_AXI_RVALID;
  wire [511:0]m00_sc2axi_M_AXI_WDATA;
  wire m00_sc2axi_M_AXI_WLAST;
  wire m00_sc2axi_M_AXI_WREADY;
  wire [63:0]m00_sc2axi_M_AXI_WSTRB;
  wire [1023:0]m00_sc2axi_M_AXI_WUSER;
  wire m00_sc2axi_M_AXI_WVALID;
  wire [0:0]m_axi_aresetn_1;
  wire [33:0]s00_entry_pipeline_m_axi_ARADDR;
  wire [3:0]s00_entry_pipeline_m_axi_ARCACHE;
  wire [3:0]s00_entry_pipeline_m_axi_ARID;
  wire [7:0]s00_entry_pipeline_m_axi_ARLEN;
  wire [0:0]s00_entry_pipeline_m_axi_ARLOCK;
  wire [2:0]s00_entry_pipeline_m_axi_ARPROT;
  wire [3:0]s00_entry_pipeline_m_axi_ARQOS;
  wire s00_entry_pipeline_m_axi_ARREADY;
  wire [1023:0]s00_entry_pipeline_m_axi_ARUSER;
  wire s00_entry_pipeline_m_axi_ARVALID;
  wire [33:0]s00_entry_pipeline_m_axi_AWADDR;
  wire [3:0]s00_entry_pipeline_m_axi_AWCACHE;
  wire [3:0]s00_entry_pipeline_m_axi_AWID;
  wire [7:0]s00_entry_pipeline_m_axi_AWLEN;
  wire [0:0]s00_entry_pipeline_m_axi_AWLOCK;
  wire [2:0]s00_entry_pipeline_m_axi_AWPROT;
  wire [3:0]s00_entry_pipeline_m_axi_AWQOS;
  wire s00_entry_pipeline_m_axi_AWREADY;
  wire [1023:0]s00_entry_pipeline_m_axi_AWUSER;
  wire s00_entry_pipeline_m_axi_AWVALID;
  wire [3:0]s00_entry_pipeline_m_axi_BID;
  wire s00_entry_pipeline_m_axi_BREADY;
  wire [1:0]s00_entry_pipeline_m_axi_BRESP;
  wire [1023:0]s00_entry_pipeline_m_axi_BUSER;
  wire s00_entry_pipeline_m_axi_BVALID;
  wire [255:0]s00_entry_pipeline_m_axi_RDATA;
  wire [3:0]s00_entry_pipeline_m_axi_RID;
  wire s00_entry_pipeline_m_axi_RLAST;
  wire s00_entry_pipeline_m_axi_RREADY;
  wire [1:0]s00_entry_pipeline_m_axi_RRESP;
  wire [1023:0]s00_entry_pipeline_m_axi_RUSER;
  wire s00_entry_pipeline_m_axi_RVALID;
  wire [255:0]s00_entry_pipeline_m_axi_WDATA;
  wire s00_entry_pipeline_m_axi_WLAST;
  wire s00_entry_pipeline_m_axi_WREADY;
  wire [31:0]s00_entry_pipeline_m_axi_WSTRB;
  wire [1023:0]s00_entry_pipeline_m_axi_WUSER;
  wire s00_entry_pipeline_m_axi_WVALID;
  wire [0:0]s00_nodes_M_SC_AR_INFO;
  wire [258:0]s00_nodes_M_SC_AR_PAYLD;
  wire [0:0]s00_nodes_M_SC_AR_RECV;
  wire [0:0]s00_nodes_M_SC_AR_REQ;
  wire [0:0]s00_nodes_M_SC_AR_SEND;
  wire [0:0]s00_nodes_M_SC_AW_INFO;
  wire [258:0]s00_nodes_M_SC_AW_PAYLD;
  wire [0:0]s00_nodes_M_SC_AW_RECV;
  wire [0:0]s00_nodes_M_SC_AW_REQ;
  wire [0:0]s00_nodes_M_SC_AW_SEND;
  wire [0:0]s00_nodes_M_SC_B_INFO;
  wire [121:0]s00_nodes_M_SC_B_PAYLD;
  wire s00_nodes_M_SC_B_RECV;
  wire [0:0]s00_nodes_M_SC_B_REQ;
  wire [0:0]s00_nodes_M_SC_B_SEND;
  wire [0:0]s00_nodes_M_SC_R_INFO;
  wire [534:0]s00_nodes_M_SC_R_PAYLD;
  wire s00_nodes_M_SC_R_RECV;
  wire [0:0]s00_nodes_M_SC_R_REQ;
  wire [0:0]s00_nodes_M_SC_R_SEND;
  wire [0:0]s00_nodes_M_SC_W_INFO;
  wire [591:0]s00_nodes_M_SC_W_PAYLD;
  wire [0:0]s00_nodes_M_SC_W_RECV;
  wire [0:0]s00_nodes_M_SC_W_REQ;
  wire [0:0]s00_nodes_M_SC_W_SEND;
  wire [33:0]s01_entry_pipeline_m_axi_ARADDR;
  wire [3:0]s01_entry_pipeline_m_axi_ARCACHE;
  wire [2:0]s01_entry_pipeline_m_axi_ARID;
  wire [7:0]s01_entry_pipeline_m_axi_ARLEN;
  wire [0:0]s01_entry_pipeline_m_axi_ARLOCK;
  wire [2:0]s01_entry_pipeline_m_axi_ARPROT;
  wire [3:0]s01_entry_pipeline_m_axi_ARQOS;
  wire s01_entry_pipeline_m_axi_ARREADY;
  wire [1023:0]s01_entry_pipeline_m_axi_ARUSER;
  wire s01_entry_pipeline_m_axi_ARVALID;
  wire [33:0]s01_entry_pipeline_m_axi_AWADDR;
  wire [3:0]s01_entry_pipeline_m_axi_AWCACHE;
  wire [2:0]s01_entry_pipeline_m_axi_AWID;
  wire [7:0]s01_entry_pipeline_m_axi_AWLEN;
  wire [0:0]s01_entry_pipeline_m_axi_AWLOCK;
  wire [2:0]s01_entry_pipeline_m_axi_AWPROT;
  wire [3:0]s01_entry_pipeline_m_axi_AWQOS;
  wire s01_entry_pipeline_m_axi_AWREADY;
  wire [1023:0]s01_entry_pipeline_m_axi_AWUSER;
  wire s01_entry_pipeline_m_axi_AWVALID;
  wire [2:0]s01_entry_pipeline_m_axi_BID;
  wire s01_entry_pipeline_m_axi_BREADY;
  wire [1:0]s01_entry_pipeline_m_axi_BRESP;
  wire [1023:0]s01_entry_pipeline_m_axi_BUSER;
  wire s01_entry_pipeline_m_axi_BVALID;
  wire [511:0]s01_entry_pipeline_m_axi_RDATA;
  wire [2:0]s01_entry_pipeline_m_axi_RID;
  wire s01_entry_pipeline_m_axi_RLAST;
  wire s01_entry_pipeline_m_axi_RREADY;
  wire [1:0]s01_entry_pipeline_m_axi_RRESP;
  wire [1023:0]s01_entry_pipeline_m_axi_RUSER;
  wire s01_entry_pipeline_m_axi_RVALID;
  wire [511:0]s01_entry_pipeline_m_axi_WDATA;
  wire s01_entry_pipeline_m_axi_WLAST;
  wire s01_entry_pipeline_m_axi_WREADY;
  wire [63:0]s01_entry_pipeline_m_axi_WSTRB;
  wire [1023:0]s01_entry_pipeline_m_axi_WUSER;
  wire s01_entry_pipeline_m_axi_WVALID;
  wire [0:0]s01_nodes_M_SC_AR_INFO;
  wire [258:0]s01_nodes_M_SC_AR_PAYLD;
  wire [0:0]s01_nodes_M_SC_AR_RECV;
  wire [0:0]s01_nodes_M_SC_AR_REQ;
  wire [0:0]s01_nodes_M_SC_AR_SEND;
  wire [0:0]s01_nodes_M_SC_AW_INFO;
  wire [258:0]s01_nodes_M_SC_AW_PAYLD;
  wire [0:0]s01_nodes_M_SC_AW_RECV;
  wire [0:0]s01_nodes_M_SC_AW_REQ;
  wire [0:0]s01_nodes_M_SC_AW_SEND;
  wire [0:0]s01_nodes_M_SC_B_INFO;
  wire [121:0]s01_nodes_M_SC_B_PAYLD;
  wire s01_nodes_M_SC_B_RECV;
  wire [0:0]s01_nodes_M_SC_B_REQ;
  wire [0:0]s01_nodes_M_SC_B_SEND;
  wire [0:0]s01_nodes_M_SC_R_INFO;
  wire [534:0]s01_nodes_M_SC_R_PAYLD;
  wire s01_nodes_M_SC_R_RECV;
  wire [0:0]s01_nodes_M_SC_R_REQ;
  wire [0:0]s01_nodes_M_SC_R_SEND;
  wire [0:0]s01_nodes_M_SC_W_INFO;
  wire [591:0]s01_nodes_M_SC_W_PAYLD;
  wire [0:0]s01_nodes_M_SC_W_RECV;
  wire [0:0]s01_nodes_M_SC_W_REQ;
  wire [0:0]s01_nodes_M_SC_W_SEND;
  wire swbd_aclk_net;
  wire [0:0]swbd_aresetn_net;

  assign M00_AXI_araddr[31:0] = m00_exit_pipeline_m_axi_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_exit_pipeline_m_axi_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_exit_pipeline_m_axi_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_exit_pipeline_m_axi_ARLEN;
  assign M00_AXI_arlock[0] = m00_exit_pipeline_m_axi_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_exit_pipeline_m_axi_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_exit_pipeline_m_axi_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_exit_pipeline_m_axi_ARSIZE;
  assign M00_AXI_arvalid = m00_exit_pipeline_m_axi_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_exit_pipeline_m_axi_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_exit_pipeline_m_axi_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_exit_pipeline_m_axi_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_exit_pipeline_m_axi_AWLEN;
  assign M00_AXI_awlock[0] = m00_exit_pipeline_m_axi_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_exit_pipeline_m_axi_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_exit_pipeline_m_axi_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_exit_pipeline_m_axi_AWSIZE;
  assign M00_AXI_awvalid = m00_exit_pipeline_m_axi_AWVALID;
  assign M00_AXI_bready = m00_exit_pipeline_m_axi_BREADY;
  assign M00_AXI_rready = m00_exit_pipeline_m_axi_RREADY;
  assign M00_AXI_wdata[511:0] = m00_exit_pipeline_m_axi_WDATA;
  assign M00_AXI_wlast = m00_exit_pipeline_m_axi_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_exit_pipeline_m_axi_WSTRB;
  assign M00_AXI_wvalid = m00_exit_pipeline_m_axi_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[33:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARUSER = S00_AXI_aruser[113:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[33:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWUSER = S00_AXI_awuser[113:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[255:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[31:0];
  assign S00_AXI_1_WUSER = S00_AXI_wuser[13:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[3:0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_buser[113:0] = S00_AXI_1_BUSER;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[255:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[3:0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_ruser[13:0] = S00_AXI_1_RUSER;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[33:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARID = S01_AXI_arid[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[33:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWID = S01_AXI_awid[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[511:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[63:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bid[3:0] = S01_AXI_1_BID;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[511:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rid[3:0] = S01_AXI_1_RID;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign aclk1_1 = aclk1;
  assign aclk2_1 = aclk2;
  assign aclk_net = aclk;
  assign aresetn_1 = aresetn;
  assign m00_exit_pipeline_m_axi_ARREADY = M00_AXI_arready;
  assign m00_exit_pipeline_m_axi_AWREADY = M00_AXI_awready;
  assign m00_exit_pipeline_m_axi_BRESP = M00_AXI_bresp[1:0];
  assign m00_exit_pipeline_m_axi_BVALID = M00_AXI_bvalid;
  assign m00_exit_pipeline_m_axi_RDATA = M00_AXI_rdata[511:0];
  assign m00_exit_pipeline_m_axi_RLAST = M00_AXI_rlast;
  assign m00_exit_pipeline_m_axi_RRESP = M00_AXI_rresp[1:0];
  assign m00_exit_pipeline_m_axi_RVALID = M00_AXI_rvalid;
  assign m00_exit_pipeline_m_axi_WREADY = M00_AXI_wready;
  clk_map_imp_I9UDSN clk_map
       (.M00_ACLK(clk_map_M00_ACLK),
        .M00_ARESETN(m_axi_aresetn_1),
        .S00_ACLK(aclk_1),
        .S00_ARESETN(aresetn_2),
        .S01_ACLK(aclk_2),
        .S01_ARESETN(aresetn_3),
        .aclk(aclk_net),
        .aclk1(aclk1_1),
        .aclk2(aclk2_1),
        .aresetn(aresetn_1),
        .aresetn_out(aresetn_net),
        .swbd_aclk(swbd_aclk_net),
        .swbd_aresetn(swbd_aresetn_net));
  m00_exit_pipeline_imp_1FGH6Z0 m00_exit_pipeline
       (.aclk(clk_map_M00_ACLK),
        .aresetn(m_axi_aresetn_1),
        .m_axi_araddr(m00_exit_pipeline_m_axi_ARADDR),
        .m_axi_arburst(m00_exit_pipeline_m_axi_ARBURST),
        .m_axi_arcache(m00_exit_pipeline_m_axi_ARCACHE),
        .m_axi_arlen(m00_exit_pipeline_m_axi_ARLEN),
        .m_axi_arlock(m00_exit_pipeline_m_axi_ARLOCK),
        .m_axi_arprot(m00_exit_pipeline_m_axi_ARPROT),
        .m_axi_arqos(m00_exit_pipeline_m_axi_ARQOS),
        .m_axi_arready(m00_exit_pipeline_m_axi_ARREADY),
        .m_axi_arsize(m00_exit_pipeline_m_axi_ARSIZE),
        .m_axi_arvalid(m00_exit_pipeline_m_axi_ARVALID),
        .m_axi_awaddr(m00_exit_pipeline_m_axi_AWADDR),
        .m_axi_awburst(m00_exit_pipeline_m_axi_AWBURST),
        .m_axi_awcache(m00_exit_pipeline_m_axi_AWCACHE),
        .m_axi_awlen(m00_exit_pipeline_m_axi_AWLEN),
        .m_axi_awlock(m00_exit_pipeline_m_axi_AWLOCK),
        .m_axi_awprot(m00_exit_pipeline_m_axi_AWPROT),
        .m_axi_awqos(m00_exit_pipeline_m_axi_AWQOS),
        .m_axi_awready(m00_exit_pipeline_m_axi_AWREADY),
        .m_axi_awsize(m00_exit_pipeline_m_axi_AWSIZE),
        .m_axi_awvalid(m00_exit_pipeline_m_axi_AWVALID),
        .m_axi_bready(m00_exit_pipeline_m_axi_BREADY),
        .m_axi_bresp(m00_exit_pipeline_m_axi_BRESP),
        .m_axi_bvalid(m00_exit_pipeline_m_axi_BVALID),
        .m_axi_rdata(m00_exit_pipeline_m_axi_RDATA),
        .m_axi_rlast(m00_exit_pipeline_m_axi_RLAST),
        .m_axi_rready(m00_exit_pipeline_m_axi_RREADY),
        .m_axi_rresp(m00_exit_pipeline_m_axi_RRESP),
        .m_axi_rvalid(m00_exit_pipeline_m_axi_RVALID),
        .m_axi_wdata(m00_exit_pipeline_m_axi_WDATA),
        .m_axi_wlast(m00_exit_pipeline_m_axi_WLAST),
        .m_axi_wready(m00_exit_pipeline_m_axi_WREADY),
        .m_axi_wstrb(m00_exit_pipeline_m_axi_WSTRB),
        .m_axi_wvalid(m00_exit_pipeline_m_axi_WVALID),
        .s_axi_araddr(m00_sc2axi_M_AXI_ARADDR),
        .s_axi_arcache(m00_sc2axi_M_AXI_ARCACHE),
        .s_axi_arid(m00_sc2axi_M_AXI_ARID),
        .s_axi_arlen(m00_sc2axi_M_AXI_ARLEN),
        .s_axi_arlock(m00_sc2axi_M_AXI_ARLOCK),
        .s_axi_arprot(m00_sc2axi_M_AXI_ARPROT),
        .s_axi_arqos(m00_sc2axi_M_AXI_ARQOS),
        .s_axi_arready(m00_sc2axi_M_AXI_ARREADY),
        .s_axi_aruser(m00_sc2axi_M_AXI_ARUSER),
        .s_axi_arvalid(m00_sc2axi_M_AXI_ARVALID),
        .s_axi_awaddr(m00_sc2axi_M_AXI_AWADDR),
        .s_axi_awcache(m00_sc2axi_M_AXI_AWCACHE),
        .s_axi_awid(m00_sc2axi_M_AXI_AWID),
        .s_axi_awlen(m00_sc2axi_M_AXI_AWLEN),
        .s_axi_awlock(m00_sc2axi_M_AXI_AWLOCK),
        .s_axi_awprot(m00_sc2axi_M_AXI_AWPROT),
        .s_axi_awqos(m00_sc2axi_M_AXI_AWQOS),
        .s_axi_awready(m00_sc2axi_M_AXI_AWREADY),
        .s_axi_awuser(m00_sc2axi_M_AXI_AWUSER),
        .s_axi_awvalid(m00_sc2axi_M_AXI_AWVALID),
        .s_axi_bid(m00_sc2axi_M_AXI_BID),
        .s_axi_bready(m00_sc2axi_M_AXI_BREADY),
        .s_axi_bresp(m00_sc2axi_M_AXI_BRESP),
        .s_axi_buser(m00_sc2axi_M_AXI_BUSER),
        .s_axi_bvalid(m00_sc2axi_M_AXI_BVALID),
        .s_axi_rdata(m00_sc2axi_M_AXI_RDATA),
        .s_axi_rid(m00_sc2axi_M_AXI_RID),
        .s_axi_rlast(m00_sc2axi_M_AXI_RLAST),
        .s_axi_rready(m00_sc2axi_M_AXI_RREADY),
        .s_axi_rresp(m00_sc2axi_M_AXI_RRESP),
        .s_axi_ruser(m00_sc2axi_M_AXI_RUSER),
        .s_axi_rvalid(m00_sc2axi_M_AXI_RVALID),
        .s_axi_wdata(m00_sc2axi_M_AXI_WDATA),
        .s_axi_wlast(m00_sc2axi_M_AXI_WLAST),
        .s_axi_wready(m00_sc2axi_M_AXI_WREADY),
        .s_axi_wstrb(m00_sc2axi_M_AXI_WSTRB),
        .s_axi_wuser(m00_sc2axi_M_AXI_WUSER),
        .s_axi_wvalid(m00_sc2axi_M_AXI_WVALID));
  m00_nodes_imp_1SPXK0W m00_nodes
       (.M_SC_AR_info(m00_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(m00_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(m00_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(m00_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(m00_nodes_M_SC_AR_SEND),
        .M_SC_AW_info(m00_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(m00_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(m00_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(m00_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(m00_nodes_M_SC_AW_SEND),
        .M_SC_B_info(m00_nodes_M_SC_B_INFO),
        .M_SC_B_payld(m00_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(m00_nodes_M_SC_B_RECV),
        .M_SC_B_req(m00_nodes_M_SC_B_REQ),
        .M_SC_B_send(m00_nodes_M_SC_B_SEND),
        .M_SC_R_info(m00_nodes_M_SC_R_INFO),
        .M_SC_R_payld(m00_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(m00_nodes_M_SC_R_RECV),
        .M_SC_R_req(m00_nodes_M_SC_R_REQ),
        .M_SC_R_send(m00_nodes_M_SC_R_SEND),
        .M_SC_W_info(m00_nodes_M_SC_W_INFO),
        .M_SC_W_payld(m00_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(m00_nodes_M_SC_W_RECV),
        .M_SC_W_req(m00_nodes_M_SC_W_REQ),
        .M_SC_W_send(m00_nodes_M_SC_W_SEND),
        .S_SC_AR_info(S_SC_AR_3_INFO),
        .S_SC_AR_payld(S_SC_AR_3_PAYLD),
        .S_SC_AR_recv(S_SC_AR_3_RECV),
        .S_SC_AR_req(S_SC_AR_3_REQ),
        .S_SC_AR_send(S_SC_AR_3_SEND),
        .S_SC_AW_info(S_SC_AW_3_INFO),
        .S_SC_AW_payld(S_SC_AW_3_PAYLD),
        .S_SC_AW_recv(S_SC_AW_3_RECV),
        .S_SC_AW_req(S_SC_AW_3_REQ),
        .S_SC_AW_send(S_SC_AW_3_SEND),
        .S_SC_B_info(S_SC_B_3_INFO),
        .S_SC_B_payld(S_SC_B_3_PAYLD),
        .S_SC_B_recv(S_SC_B_3_RECV),
        .S_SC_B_req(S_SC_B_3_REQ),
        .S_SC_B_send(S_SC_B_3_SEND),
        .S_SC_R_info(S_SC_R_3_INFO),
        .S_SC_R_payld(S_SC_R_3_PAYLD),
        .S_SC_R_recv(S_SC_R_3_RECV),
        .S_SC_R_req(S_SC_R_3_REQ),
        .S_SC_R_send(S_SC_R_3_SEND),
        .S_SC_W_info(S_SC_W_3_INFO),
        .S_SC_W_payld(S_SC_W_3_PAYLD),
        .S_SC_W_recv(S_SC_W_3_RECV),
        .S_SC_W_req(S_SC_W_3_REQ),
        .S_SC_W_send(S_SC_W_3_SEND),
        .m_axi_aclk(clk_map_M00_ACLK),
        .m_axi_aresetn(m_axi_aresetn_1),
        .s_axi_aclk(swbd_aclk_net),
        .s_axi_aresetn(swbd_aresetn_net));
  bd_41e8_m00s2a_0 m00_sc2axi
       (.aclk(clk_map_M00_ACLK),
        .m_axi_araddr(m00_sc2axi_M_AXI_ARADDR),
        .m_axi_arcache(m00_sc2axi_M_AXI_ARCACHE),
        .m_axi_arid(m00_sc2axi_M_AXI_ARID),
        .m_axi_arlen(m00_sc2axi_M_AXI_ARLEN),
        .m_axi_arlock(m00_sc2axi_M_AXI_ARLOCK),
        .m_axi_arprot(m00_sc2axi_M_AXI_ARPROT),
        .m_axi_arqos(m00_sc2axi_M_AXI_ARQOS),
        .m_axi_arready(m00_sc2axi_M_AXI_ARREADY),
        .m_axi_aruser(m00_sc2axi_M_AXI_ARUSER),
        .m_axi_arvalid(m00_sc2axi_M_AXI_ARVALID),
        .m_axi_awaddr(m00_sc2axi_M_AXI_AWADDR),
        .m_axi_awcache(m00_sc2axi_M_AXI_AWCACHE),
        .m_axi_awid(m00_sc2axi_M_AXI_AWID),
        .m_axi_awlen(m00_sc2axi_M_AXI_AWLEN),
        .m_axi_awlock(m00_sc2axi_M_AXI_AWLOCK),
        .m_axi_awprot(m00_sc2axi_M_AXI_AWPROT),
        .m_axi_awqos(m00_sc2axi_M_AXI_AWQOS),
        .m_axi_awready(m00_sc2axi_M_AXI_AWREADY),
        .m_axi_awuser(m00_sc2axi_M_AXI_AWUSER),
        .m_axi_awvalid(m00_sc2axi_M_AXI_AWVALID),
        .m_axi_bid(m00_sc2axi_M_AXI_BID),
        .m_axi_bready(m00_sc2axi_M_AXI_BREADY),
        .m_axi_bresp(m00_sc2axi_M_AXI_BRESP),
        .m_axi_buser(m00_sc2axi_M_AXI_BUSER),
        .m_axi_bvalid(m00_sc2axi_M_AXI_BVALID),
        .m_axi_rdata(m00_sc2axi_M_AXI_RDATA),
        .m_axi_rid(m00_sc2axi_M_AXI_RID),
        .m_axi_rlast(m00_sc2axi_M_AXI_RLAST),
        .m_axi_rready(m00_sc2axi_M_AXI_RREADY),
        .m_axi_rresp(m00_sc2axi_M_AXI_RRESP),
        .m_axi_ruser(m00_sc2axi_M_AXI_RUSER),
        .m_axi_rvalid(m00_sc2axi_M_AXI_RVALID),
        .m_axi_wdata(m00_sc2axi_M_AXI_WDATA),
        .m_axi_wlast(m00_sc2axi_M_AXI_WLAST),
        .m_axi_wready(m00_sc2axi_M_AXI_WREADY),
        .m_axi_wstrb(m00_sc2axi_M_AXI_WSTRB),
        .m_axi_wuser(m00_sc2axi_M_AXI_WUSER),
        .m_axi_wvalid(m00_sc2axi_M_AXI_WVALID),
        .m_sc_b_info(S_SC_B_3_INFO),
        .m_sc_b_payld(S_SC_B_3_PAYLD),
        .m_sc_b_recv(S_SC_B_3_RECV),
        .m_sc_b_req(S_SC_B_3_REQ),
        .m_sc_b_send(S_SC_B_3_SEND),
        .m_sc_r_info(S_SC_R_3_INFO),
        .m_sc_r_payld(S_SC_R_3_PAYLD),
        .m_sc_r_recv(S_SC_R_3_RECV),
        .m_sc_r_req(S_SC_R_3_REQ),
        .m_sc_r_send(S_SC_R_3_SEND),
        .s_sc_ar_info(m00_nodes_M_SC_AR_INFO),
        .s_sc_ar_payld(m00_nodes_M_SC_AR_PAYLD),
        .s_sc_ar_recv(m00_nodes_M_SC_AR_RECV),
        .s_sc_ar_req(m00_nodes_M_SC_AR_REQ),
        .s_sc_ar_send(m00_nodes_M_SC_AR_SEND),
        .s_sc_aw_info(m00_nodes_M_SC_AW_INFO),
        .s_sc_aw_payld(m00_nodes_M_SC_AW_PAYLD),
        .s_sc_aw_recv(m00_nodes_M_SC_AW_RECV),
        .s_sc_aw_req(m00_nodes_M_SC_AW_REQ),
        .s_sc_aw_send(m00_nodes_M_SC_AW_SEND),
        .s_sc_w_info(m00_nodes_M_SC_W_INFO),
        .s_sc_w_payld(m00_nodes_M_SC_W_PAYLD),
        .s_sc_w_recv(m00_nodes_M_SC_W_RECV),
        .s_sc_w_req(m00_nodes_M_SC_W_REQ),
        .s_sc_w_send(m00_nodes_M_SC_W_SEND));
  bd_41e8_s00a2s_0 s00_axi2sc
       (.aclk(aclk_1),
        .m_sc_ar_info(S_SC_AR_1_INFO),
        .m_sc_ar_payld(S_SC_AR_1_PAYLD),
        .m_sc_ar_recv(S_SC_AR_1_RECV),
        .m_sc_ar_req(S_SC_AR_1_REQ),
        .m_sc_ar_send(S_SC_AR_1_SEND),
        .m_sc_aw_info(S_SC_AW_1_INFO),
        .m_sc_aw_payld(S_SC_AW_1_PAYLD),
        .m_sc_aw_recv(S_SC_AW_1_RECV),
        .m_sc_aw_req(S_SC_AW_1_REQ),
        .m_sc_aw_send(S_SC_AW_1_SEND),
        .m_sc_w_info(S_SC_W_1_INFO),
        .m_sc_w_payld(S_SC_W_1_PAYLD),
        .m_sc_w_recv(S_SC_W_1_RECV),
        .m_sc_w_req(S_SC_W_1_REQ),
        .m_sc_w_send(S_SC_W_1_SEND),
        .s_axi_araddr(s00_entry_pipeline_m_axi_ARADDR),
        .s_axi_arcache(s00_entry_pipeline_m_axi_ARCACHE),
        .s_axi_arid(s00_entry_pipeline_m_axi_ARID),
        .s_axi_arlen(s00_entry_pipeline_m_axi_ARLEN),
        .s_axi_arlock(s00_entry_pipeline_m_axi_ARLOCK),
        .s_axi_arprot(s00_entry_pipeline_m_axi_ARPROT),
        .s_axi_arqos(s00_entry_pipeline_m_axi_ARQOS),
        .s_axi_arready(s00_entry_pipeline_m_axi_ARREADY),
        .s_axi_aruser(s00_entry_pipeline_m_axi_ARUSER),
        .s_axi_arvalid(s00_entry_pipeline_m_axi_ARVALID),
        .s_axi_awaddr(s00_entry_pipeline_m_axi_AWADDR),
        .s_axi_awcache(s00_entry_pipeline_m_axi_AWCACHE),
        .s_axi_awid(s00_entry_pipeline_m_axi_AWID),
        .s_axi_awlen(s00_entry_pipeline_m_axi_AWLEN),
        .s_axi_awlock(s00_entry_pipeline_m_axi_AWLOCK),
        .s_axi_awprot(s00_entry_pipeline_m_axi_AWPROT),
        .s_axi_awqos(s00_entry_pipeline_m_axi_AWQOS),
        .s_axi_awready(s00_entry_pipeline_m_axi_AWREADY),
        .s_axi_awuser(s00_entry_pipeline_m_axi_AWUSER),
        .s_axi_awvalid(s00_entry_pipeline_m_axi_AWVALID),
        .s_axi_bid(s00_entry_pipeline_m_axi_BID),
        .s_axi_bready(s00_entry_pipeline_m_axi_BREADY),
        .s_axi_bresp(s00_entry_pipeline_m_axi_BRESP),
        .s_axi_buser(s00_entry_pipeline_m_axi_BUSER),
        .s_axi_bvalid(s00_entry_pipeline_m_axi_BVALID),
        .s_axi_rdata(s00_entry_pipeline_m_axi_RDATA),
        .s_axi_rid(s00_entry_pipeline_m_axi_RID),
        .s_axi_rlast(s00_entry_pipeline_m_axi_RLAST),
        .s_axi_rready(s00_entry_pipeline_m_axi_RREADY),
        .s_axi_rresp(s00_entry_pipeline_m_axi_RRESP),
        .s_axi_ruser(s00_entry_pipeline_m_axi_RUSER),
        .s_axi_rvalid(s00_entry_pipeline_m_axi_RVALID),
        .s_axi_wdata(s00_entry_pipeline_m_axi_WDATA),
        .s_axi_wlast(s00_entry_pipeline_m_axi_WLAST),
        .s_axi_wready(s00_entry_pipeline_m_axi_WREADY),
        .s_axi_wstrb(s00_entry_pipeline_m_axi_WSTRB),
        .s_axi_wuser(s00_entry_pipeline_m_axi_WUSER),
        .s_axi_wvalid(s00_entry_pipeline_m_axi_WVALID),
        .s_sc_b_info(s00_nodes_M_SC_B_INFO),
        .s_sc_b_payld(s00_nodes_M_SC_B_PAYLD),
        .s_sc_b_recv(s00_nodes_M_SC_B_RECV),
        .s_sc_b_req(s00_nodes_M_SC_B_REQ),
        .s_sc_b_send(s00_nodes_M_SC_B_SEND),
        .s_sc_r_info(s00_nodes_M_SC_R_INFO),
        .s_sc_r_payld(s00_nodes_M_SC_R_PAYLD),
        .s_sc_r_recv(s00_nodes_M_SC_R_RECV),
        .s_sc_r_req(s00_nodes_M_SC_R_REQ),
        .s_sc_r_send(s00_nodes_M_SC_R_SEND));
  s00_entry_pipeline_imp_G6Z827 s00_entry_pipeline
       (.aclk(aclk_1),
        .aresetn(aresetn_2),
        .m_axi_araddr(s00_entry_pipeline_m_axi_ARADDR),
        .m_axi_arcache(s00_entry_pipeline_m_axi_ARCACHE),
        .m_axi_arid(s00_entry_pipeline_m_axi_ARID),
        .m_axi_arlen(s00_entry_pipeline_m_axi_ARLEN),
        .m_axi_arlock(s00_entry_pipeline_m_axi_ARLOCK),
        .m_axi_arprot(s00_entry_pipeline_m_axi_ARPROT),
        .m_axi_arqos(s00_entry_pipeline_m_axi_ARQOS),
        .m_axi_arready(s00_entry_pipeline_m_axi_ARREADY),
        .m_axi_aruser(s00_entry_pipeline_m_axi_ARUSER),
        .m_axi_arvalid(s00_entry_pipeline_m_axi_ARVALID),
        .m_axi_awaddr(s00_entry_pipeline_m_axi_AWADDR),
        .m_axi_awcache(s00_entry_pipeline_m_axi_AWCACHE),
        .m_axi_awid(s00_entry_pipeline_m_axi_AWID),
        .m_axi_awlen(s00_entry_pipeline_m_axi_AWLEN),
        .m_axi_awlock(s00_entry_pipeline_m_axi_AWLOCK),
        .m_axi_awprot(s00_entry_pipeline_m_axi_AWPROT),
        .m_axi_awqos(s00_entry_pipeline_m_axi_AWQOS),
        .m_axi_awready(s00_entry_pipeline_m_axi_AWREADY),
        .m_axi_awuser(s00_entry_pipeline_m_axi_AWUSER),
        .m_axi_awvalid(s00_entry_pipeline_m_axi_AWVALID),
        .m_axi_bid(s00_entry_pipeline_m_axi_BID),
        .m_axi_bready(s00_entry_pipeline_m_axi_BREADY),
        .m_axi_bresp(s00_entry_pipeline_m_axi_BRESP),
        .m_axi_buser(s00_entry_pipeline_m_axi_BUSER),
        .m_axi_bvalid(s00_entry_pipeline_m_axi_BVALID),
        .m_axi_rdata(s00_entry_pipeline_m_axi_RDATA),
        .m_axi_rid(s00_entry_pipeline_m_axi_RID),
        .m_axi_rlast(s00_entry_pipeline_m_axi_RLAST),
        .m_axi_rready(s00_entry_pipeline_m_axi_RREADY),
        .m_axi_rresp(s00_entry_pipeline_m_axi_RRESP),
        .m_axi_ruser(s00_entry_pipeline_m_axi_RUSER),
        .m_axi_rvalid(s00_entry_pipeline_m_axi_RVALID),
        .m_axi_wdata(s00_entry_pipeline_m_axi_WDATA),
        .m_axi_wlast(s00_entry_pipeline_m_axi_WLAST),
        .m_axi_wready(s00_entry_pipeline_m_axi_WREADY),
        .m_axi_wstrb(s00_entry_pipeline_m_axi_WSTRB),
        .m_axi_wuser(s00_entry_pipeline_m_axi_WUSER),
        .m_axi_wvalid(s00_entry_pipeline_m_axi_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arburst(S00_AXI_1_ARBURST),
        .s_axi_arcache(S00_AXI_1_ARCACHE),
        .s_axi_arid(S00_AXI_1_ARID),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arlock(S00_AXI_1_ARLOCK),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arqos(S00_AXI_1_ARQOS),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize(S00_AXI_1_ARSIZE),
        .s_axi_aruser(S00_AXI_1_ARUSER),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awburst(S00_AXI_1_AWBURST),
        .s_axi_awcache(S00_AXI_1_AWCACHE),
        .s_axi_awid(S00_AXI_1_AWID),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awlock(S00_AXI_1_AWLOCK),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awqos(S00_AXI_1_AWQOS),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awsize(S00_AXI_1_AWSIZE),
        .s_axi_awuser(S00_AXI_1_AWUSER),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bid(S00_AXI_1_BID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_buser(S00_AXI_1_BUSER),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rid(S00_AXI_1_RID),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_ruser(S00_AXI_1_RUSER),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wuser(S00_AXI_1_WUSER),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s00_nodes_imp_DADN6D s00_nodes
       (.M_SC_AR_info(s00_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(s00_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(s00_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(s00_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(s00_nodes_M_SC_AR_SEND),
        .M_SC_AW_info(s00_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(s00_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(s00_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(s00_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(s00_nodes_M_SC_AW_SEND),
        .M_SC_B_info(s00_nodes_M_SC_B_INFO),
        .M_SC_B_payld(s00_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(s00_nodes_M_SC_B_RECV),
        .M_SC_B_req(s00_nodes_M_SC_B_REQ),
        .M_SC_B_send(s00_nodes_M_SC_B_SEND),
        .M_SC_R_info(s00_nodes_M_SC_R_INFO),
        .M_SC_R_payld(s00_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(s00_nodes_M_SC_R_RECV),
        .M_SC_R_req(s00_nodes_M_SC_R_REQ),
        .M_SC_R_send(s00_nodes_M_SC_R_SEND),
        .M_SC_W_info(s00_nodes_M_SC_W_INFO),
        .M_SC_W_payld(s00_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(s00_nodes_M_SC_W_RECV),
        .M_SC_W_req(s00_nodes_M_SC_W_REQ),
        .M_SC_W_send(s00_nodes_M_SC_W_SEND),
        .S_SC_AR_info(S_SC_AR_1_INFO),
        .S_SC_AR_payld(S_SC_AR_1_PAYLD),
        .S_SC_AR_recv(S_SC_AR_1_RECV),
        .S_SC_AR_req(S_SC_AR_1_REQ),
        .S_SC_AR_send(S_SC_AR_1_SEND),
        .S_SC_AW_info(S_SC_AW_1_INFO),
        .S_SC_AW_payld(S_SC_AW_1_PAYLD),
        .S_SC_AW_recv(S_SC_AW_1_RECV),
        .S_SC_AW_req(S_SC_AW_1_REQ),
        .S_SC_AW_send(S_SC_AW_1_SEND),
        .S_SC_B_info(S_SC_B_1_INFO),
        .S_SC_B_payld(S_SC_B_1_PAYLD),
        .S_SC_B_recv(S_SC_B_1_RECV),
        .S_SC_B_req(S_SC_B_1_REQ),
        .S_SC_B_send(S_SC_B_1_SEND),
        .S_SC_R_info(S_SC_R_1_INFO),
        .S_SC_R_payld(S_SC_R_1_PAYLD),
        .S_SC_R_recv(S_SC_R_1_RECV),
        .S_SC_R_req(S_SC_R_1_REQ),
        .S_SC_R_send(S_SC_R_1_SEND),
        .S_SC_W_info(S_SC_W_1_INFO),
        .S_SC_W_payld(S_SC_W_1_PAYLD),
        .S_SC_W_recv(S_SC_W_1_RECV),
        .S_SC_W_req(S_SC_W_1_REQ),
        .S_SC_W_send(S_SC_W_1_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_1),
        .s_sc_resetn(aresetn_2));
  bd_41e8_s01a2s_0 s01_axi2sc
       (.aclk(aclk_2),
        .m_sc_ar_info(S_SC_AR_2_INFO),
        .m_sc_ar_payld(S_SC_AR_2_PAYLD),
        .m_sc_ar_recv(S_SC_AR_2_RECV),
        .m_sc_ar_req(S_SC_AR_2_REQ),
        .m_sc_ar_send(S_SC_AR_2_SEND),
        .m_sc_aw_info(S_SC_AW_2_INFO),
        .m_sc_aw_payld(S_SC_AW_2_PAYLD),
        .m_sc_aw_recv(S_SC_AW_2_RECV),
        .m_sc_aw_req(S_SC_AW_2_REQ),
        .m_sc_aw_send(S_SC_AW_2_SEND),
        .m_sc_w_info(S_SC_W_2_INFO),
        .m_sc_w_payld(S_SC_W_2_PAYLD),
        .m_sc_w_recv(S_SC_W_2_RECV),
        .m_sc_w_req(S_SC_W_2_REQ),
        .m_sc_w_send(S_SC_W_2_SEND),
        .s_axi_araddr(s01_entry_pipeline_m_axi_ARADDR),
        .s_axi_arcache(s01_entry_pipeline_m_axi_ARCACHE),
        .s_axi_arid(s01_entry_pipeline_m_axi_ARID),
        .s_axi_arlen(s01_entry_pipeline_m_axi_ARLEN),
        .s_axi_arlock(s01_entry_pipeline_m_axi_ARLOCK),
        .s_axi_arprot(s01_entry_pipeline_m_axi_ARPROT),
        .s_axi_arqos(s01_entry_pipeline_m_axi_ARQOS),
        .s_axi_arready(s01_entry_pipeline_m_axi_ARREADY),
        .s_axi_aruser(s01_entry_pipeline_m_axi_ARUSER),
        .s_axi_arvalid(s01_entry_pipeline_m_axi_ARVALID),
        .s_axi_awaddr(s01_entry_pipeline_m_axi_AWADDR),
        .s_axi_awcache(s01_entry_pipeline_m_axi_AWCACHE),
        .s_axi_awid(s01_entry_pipeline_m_axi_AWID),
        .s_axi_awlen(s01_entry_pipeline_m_axi_AWLEN),
        .s_axi_awlock(s01_entry_pipeline_m_axi_AWLOCK),
        .s_axi_awprot(s01_entry_pipeline_m_axi_AWPROT),
        .s_axi_awqos(s01_entry_pipeline_m_axi_AWQOS),
        .s_axi_awready(s01_entry_pipeline_m_axi_AWREADY),
        .s_axi_awuser(s01_entry_pipeline_m_axi_AWUSER),
        .s_axi_awvalid(s01_entry_pipeline_m_axi_AWVALID),
        .s_axi_bid(s01_entry_pipeline_m_axi_BID),
        .s_axi_bready(s01_entry_pipeline_m_axi_BREADY),
        .s_axi_bresp(s01_entry_pipeline_m_axi_BRESP),
        .s_axi_buser(s01_entry_pipeline_m_axi_BUSER),
        .s_axi_bvalid(s01_entry_pipeline_m_axi_BVALID),
        .s_axi_rdata(s01_entry_pipeline_m_axi_RDATA),
        .s_axi_rid(s01_entry_pipeline_m_axi_RID),
        .s_axi_rlast(s01_entry_pipeline_m_axi_RLAST),
        .s_axi_rready(s01_entry_pipeline_m_axi_RREADY),
        .s_axi_rresp(s01_entry_pipeline_m_axi_RRESP),
        .s_axi_ruser(s01_entry_pipeline_m_axi_RUSER),
        .s_axi_rvalid(s01_entry_pipeline_m_axi_RVALID),
        .s_axi_wdata(s01_entry_pipeline_m_axi_WDATA),
        .s_axi_wlast(s01_entry_pipeline_m_axi_WLAST),
        .s_axi_wready(s01_entry_pipeline_m_axi_WREADY),
        .s_axi_wstrb(s01_entry_pipeline_m_axi_WSTRB),
        .s_axi_wuser(s01_entry_pipeline_m_axi_WUSER),
        .s_axi_wvalid(s01_entry_pipeline_m_axi_WVALID),
        .s_sc_b_info(s01_nodes_M_SC_B_INFO),
        .s_sc_b_payld(s01_nodes_M_SC_B_PAYLD),
        .s_sc_b_recv(s01_nodes_M_SC_B_RECV),
        .s_sc_b_req(s01_nodes_M_SC_B_REQ),
        .s_sc_b_send(s01_nodes_M_SC_B_SEND),
        .s_sc_r_info(s01_nodes_M_SC_R_INFO),
        .s_sc_r_payld(s01_nodes_M_SC_R_PAYLD),
        .s_sc_r_recv(s01_nodes_M_SC_R_RECV),
        .s_sc_r_req(s01_nodes_M_SC_R_REQ),
        .s_sc_r_send(s01_nodes_M_SC_R_SEND));
  s01_entry_pipeline_imp_18Q0KT7 s01_entry_pipeline
       (.aclk(aclk_2),
        .aresetn(aresetn_3),
        .m_axi_araddr(s01_entry_pipeline_m_axi_ARADDR),
        .m_axi_arcache(s01_entry_pipeline_m_axi_ARCACHE),
        .m_axi_arid(s01_entry_pipeline_m_axi_ARID),
        .m_axi_arlen(s01_entry_pipeline_m_axi_ARLEN),
        .m_axi_arlock(s01_entry_pipeline_m_axi_ARLOCK),
        .m_axi_arprot(s01_entry_pipeline_m_axi_ARPROT),
        .m_axi_arqos(s01_entry_pipeline_m_axi_ARQOS),
        .m_axi_arready(s01_entry_pipeline_m_axi_ARREADY),
        .m_axi_aruser(s01_entry_pipeline_m_axi_ARUSER),
        .m_axi_arvalid(s01_entry_pipeline_m_axi_ARVALID),
        .m_axi_awaddr(s01_entry_pipeline_m_axi_AWADDR),
        .m_axi_awcache(s01_entry_pipeline_m_axi_AWCACHE),
        .m_axi_awid(s01_entry_pipeline_m_axi_AWID),
        .m_axi_awlen(s01_entry_pipeline_m_axi_AWLEN),
        .m_axi_awlock(s01_entry_pipeline_m_axi_AWLOCK),
        .m_axi_awprot(s01_entry_pipeline_m_axi_AWPROT),
        .m_axi_awqos(s01_entry_pipeline_m_axi_AWQOS),
        .m_axi_awready(s01_entry_pipeline_m_axi_AWREADY),
        .m_axi_awuser(s01_entry_pipeline_m_axi_AWUSER),
        .m_axi_awvalid(s01_entry_pipeline_m_axi_AWVALID),
        .m_axi_bid(s01_entry_pipeline_m_axi_BID),
        .m_axi_bready(s01_entry_pipeline_m_axi_BREADY),
        .m_axi_bresp(s01_entry_pipeline_m_axi_BRESP),
        .m_axi_buser(s01_entry_pipeline_m_axi_BUSER),
        .m_axi_bvalid(s01_entry_pipeline_m_axi_BVALID),
        .m_axi_rdata(s01_entry_pipeline_m_axi_RDATA),
        .m_axi_rid(s01_entry_pipeline_m_axi_RID),
        .m_axi_rlast(s01_entry_pipeline_m_axi_RLAST),
        .m_axi_rready(s01_entry_pipeline_m_axi_RREADY),
        .m_axi_rresp(s01_entry_pipeline_m_axi_RRESP),
        .m_axi_ruser(s01_entry_pipeline_m_axi_RUSER),
        .m_axi_rvalid(s01_entry_pipeline_m_axi_RVALID),
        .m_axi_wdata(s01_entry_pipeline_m_axi_WDATA),
        .m_axi_wlast(s01_entry_pipeline_m_axi_WLAST),
        .m_axi_wready(s01_entry_pipeline_m_axi_WREADY),
        .m_axi_wstrb(s01_entry_pipeline_m_axi_WSTRB),
        .m_axi_wuser(s01_entry_pipeline_m_axi_WUSER),
        .m_axi_wvalid(s01_entry_pipeline_m_axi_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arid(S01_AXI_1_ARID),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(S01_AXI_1_ARLOCK),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos(S01_AXI_1_ARQOS),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst(S01_AXI_1_AWBURST),
        .s_axi_awcache(S01_AXI_1_AWCACHE),
        .s_axi_awid(S01_AXI_1_AWID),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(S01_AXI_1_AWLOCK),
        .s_axi_awprot(S01_AXI_1_AWPROT),
        .s_axi_awqos(S01_AXI_1_AWQOS),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize(S01_AXI_1_AWSIZE),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bid(S01_AXI_1_BID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bresp(S01_AXI_1_BRESP),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rid(S01_AXI_1_RID),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  s01_nodes_imp_1DN6TIB s01_nodes
       (.M_SC_AR_info(s01_nodes_M_SC_AR_INFO),
        .M_SC_AR_payld(s01_nodes_M_SC_AR_PAYLD),
        .M_SC_AR_recv(s01_nodes_M_SC_AR_RECV),
        .M_SC_AR_req(s01_nodes_M_SC_AR_REQ),
        .M_SC_AR_send(s01_nodes_M_SC_AR_SEND),
        .M_SC_AW_info(s01_nodes_M_SC_AW_INFO),
        .M_SC_AW_payld(s01_nodes_M_SC_AW_PAYLD),
        .M_SC_AW_recv(s01_nodes_M_SC_AW_RECV),
        .M_SC_AW_req(s01_nodes_M_SC_AW_REQ),
        .M_SC_AW_send(s01_nodes_M_SC_AW_SEND),
        .M_SC_B_info(s01_nodes_M_SC_B_INFO),
        .M_SC_B_payld(s01_nodes_M_SC_B_PAYLD),
        .M_SC_B_recv(s01_nodes_M_SC_B_RECV),
        .M_SC_B_req(s01_nodes_M_SC_B_REQ),
        .M_SC_B_send(s01_nodes_M_SC_B_SEND),
        .M_SC_R_info(s01_nodes_M_SC_R_INFO),
        .M_SC_R_payld(s01_nodes_M_SC_R_PAYLD),
        .M_SC_R_recv(s01_nodes_M_SC_R_RECV),
        .M_SC_R_req(s01_nodes_M_SC_R_REQ),
        .M_SC_R_send(s01_nodes_M_SC_R_SEND),
        .M_SC_W_info(s01_nodes_M_SC_W_INFO),
        .M_SC_W_payld(s01_nodes_M_SC_W_PAYLD),
        .M_SC_W_recv(s01_nodes_M_SC_W_RECV),
        .M_SC_W_req(s01_nodes_M_SC_W_REQ),
        .M_SC_W_send(s01_nodes_M_SC_W_SEND),
        .S_SC_AR_info(S_SC_AR_2_INFO),
        .S_SC_AR_payld(S_SC_AR_2_PAYLD),
        .S_SC_AR_recv(S_SC_AR_2_RECV),
        .S_SC_AR_req(S_SC_AR_2_REQ),
        .S_SC_AR_send(S_SC_AR_2_SEND),
        .S_SC_AW_info(S_SC_AW_2_INFO),
        .S_SC_AW_payld(S_SC_AW_2_PAYLD),
        .S_SC_AW_recv(S_SC_AW_2_RECV),
        .S_SC_AW_req(S_SC_AW_2_REQ),
        .S_SC_AW_send(S_SC_AW_2_SEND),
        .S_SC_B_info(S_SC_B_2_INFO),
        .S_SC_B_payld(S_SC_B_2_PAYLD),
        .S_SC_B_recv(S_SC_B_2_RECV),
        .S_SC_B_req(S_SC_B_2_REQ),
        .S_SC_B_send(S_SC_B_2_SEND),
        .S_SC_R_info(S_SC_R_2_INFO),
        .S_SC_R_payld(S_SC_R_2_PAYLD),
        .S_SC_R_recv(S_SC_R_2_RECV),
        .S_SC_R_req(S_SC_R_2_REQ),
        .S_SC_R_send(S_SC_R_2_SEND),
        .S_SC_W_info(S_SC_W_2_INFO),
        .S_SC_W_payld(S_SC_W_2_PAYLD),
        .S_SC_W_recv(S_SC_W_2_RECV),
        .S_SC_W_req(S_SC_W_2_REQ),
        .S_SC_W_send(S_SC_W_2_SEND),
        .m_sc_clk(swbd_aclk_net),
        .m_sc_resetn(swbd_aresetn_net),
        .s_sc_clk(aclk_2),
        .s_sc_resetn(aresetn_3));
  switchboards_imp_IW09S1 switchboards
       (.M00_SC_AR_info(S_SC_AR_3_INFO),
        .M00_SC_AR_payld(S_SC_AR_3_PAYLD),
        .M00_SC_AR_recv(S_SC_AR_3_RECV),
        .M00_SC_AR_req(S_SC_AR_3_REQ),
        .M00_SC_AR_send(S_SC_AR_3_SEND),
        .M00_SC_AW_info(S_SC_AW_3_INFO),
        .M00_SC_AW_payld(S_SC_AW_3_PAYLD),
        .M00_SC_AW_recv(S_SC_AW_3_RECV),
        .M00_SC_AW_req(S_SC_AW_3_REQ),
        .M00_SC_AW_send(S_SC_AW_3_SEND),
        .M00_SC_B_info(S_SC_B_1_INFO),
        .M00_SC_B_payld(S_SC_B_1_PAYLD),
        .M00_SC_B_recv(S_SC_B_1_RECV),
        .M00_SC_B_req(S_SC_B_1_REQ),
        .M00_SC_B_send(S_SC_B_1_SEND),
        .M00_SC_R_info(S_SC_R_1_INFO),
        .M00_SC_R_payld(S_SC_R_1_PAYLD),
        .M00_SC_R_recv(S_SC_R_1_RECV),
        .M00_SC_R_req(S_SC_R_1_REQ),
        .M00_SC_R_send(S_SC_R_1_SEND),
        .M00_SC_W_info(S_SC_W_3_INFO),
        .M00_SC_W_payld(S_SC_W_3_PAYLD),
        .M00_SC_W_recv(S_SC_W_3_RECV),
        .M00_SC_W_req(S_SC_W_3_REQ),
        .M00_SC_W_send(S_SC_W_3_SEND),
        .M01_SC_B_info(S_SC_B_2_INFO),
        .M01_SC_B_payld(S_SC_B_2_PAYLD),
        .M01_SC_B_recv(S_SC_B_2_RECV),
        .M01_SC_B_req(S_SC_B_2_REQ),
        .M01_SC_B_send(S_SC_B_2_SEND),
        .M01_SC_R_info(S_SC_R_2_INFO),
        .M01_SC_R_payld(S_SC_R_2_PAYLD),
        .M01_SC_R_recv(S_SC_R_2_RECV),
        .M01_SC_R_req(S_SC_R_2_REQ),
        .M01_SC_R_send(S_SC_R_2_SEND),
        .S00_SC_AR_info(s00_nodes_M_SC_AR_INFO),
        .S00_SC_AR_payld(s00_nodes_M_SC_AR_PAYLD),
        .S00_SC_AR_recv(s00_nodes_M_SC_AR_RECV),
        .S00_SC_AR_req(s00_nodes_M_SC_AR_REQ),
        .S00_SC_AR_send(s00_nodes_M_SC_AR_SEND),
        .S00_SC_AW_info(s00_nodes_M_SC_AW_INFO),
        .S00_SC_AW_payld(s00_nodes_M_SC_AW_PAYLD),
        .S00_SC_AW_recv(s00_nodes_M_SC_AW_RECV),
        .S00_SC_AW_req(s00_nodes_M_SC_AW_REQ),
        .S00_SC_AW_send(s00_nodes_M_SC_AW_SEND),
        .S00_SC_B_info(m00_nodes_M_SC_B_INFO),
        .S00_SC_B_payld(m00_nodes_M_SC_B_PAYLD),
        .S00_SC_B_recv(m00_nodes_M_SC_B_RECV),
        .S00_SC_B_req(m00_nodes_M_SC_B_REQ),
        .S00_SC_B_send(m00_nodes_M_SC_B_SEND),
        .S00_SC_R_info(m00_nodes_M_SC_R_INFO),
        .S00_SC_R_payld(m00_nodes_M_SC_R_PAYLD),
        .S00_SC_R_recv(m00_nodes_M_SC_R_RECV),
        .S00_SC_R_req(m00_nodes_M_SC_R_REQ),
        .S00_SC_R_send(m00_nodes_M_SC_R_SEND),
        .S00_SC_W_info(s00_nodes_M_SC_W_INFO),
        .S00_SC_W_payld(s00_nodes_M_SC_W_PAYLD),
        .S00_SC_W_recv(s00_nodes_M_SC_W_RECV),
        .S00_SC_W_req(s00_nodes_M_SC_W_REQ),
        .S00_SC_W_send(s00_nodes_M_SC_W_SEND),
        .S01_SC_AR_info(s01_nodes_M_SC_AR_INFO),
        .S01_SC_AR_payld(s01_nodes_M_SC_AR_PAYLD),
        .S01_SC_AR_recv(s01_nodes_M_SC_AR_RECV),
        .S01_SC_AR_req(s01_nodes_M_SC_AR_REQ),
        .S01_SC_AR_send(s01_nodes_M_SC_AR_SEND),
        .S01_SC_AW_info(s01_nodes_M_SC_AW_INFO),
        .S01_SC_AW_payld(s01_nodes_M_SC_AW_PAYLD),
        .S01_SC_AW_recv(s01_nodes_M_SC_AW_RECV),
        .S01_SC_AW_req(s01_nodes_M_SC_AW_REQ),
        .S01_SC_AW_send(s01_nodes_M_SC_AW_SEND),
        .S01_SC_W_info(s01_nodes_M_SC_W_INFO),
        .S01_SC_W_payld(s01_nodes_M_SC_W_PAYLD),
        .S01_SC_W_recv(s01_nodes_M_SC_W_RECV),
        .S01_SC_W_req(s01_nodes_M_SC_W_REQ),
        .S01_SC_W_send(s01_nodes_M_SC_W_SEND),
        .aclk(swbd_aclk_net),
        .aresetn(swbd_aresetn_net));
endmodule

module clk_map_imp_I9UDSN
   (M00_ACLK,
    M00_ARESETN,
    S00_ACLK,
    S00_ARESETN,
    S01_ACLK,
    S01_ARESETN,
    aclk,
    aclk1,
    aclk2,
    aresetn,
    aresetn_out,
    swbd_aclk,
    swbd_aresetn);
  output M00_ACLK;
  output [0:0]M00_ARESETN;
  output S00_ACLK;
  output [0:0]S00_ARESETN;
  output S01_ACLK;
  output [0:0]S01_ARESETN;
  input aclk;
  input aclk1;
  input aclk2;
  input aresetn;
  output aresetn_out;
  output swbd_aclk;
  output [0:0]swbd_aresetn;

  wire clk_map_aclk1_net;
  wire clk_map_aclk2_net;
  wire clk_map_aclk_net;
  wire clk_map_aresetn_net;
  wire [0:0]one_dout;
  wire [0:0]psr0_interconnect_aresetn;
  wire [0:0]psr_aclk1_interconnect_aresetn;
  wire [0:0]psr_aclk2_interconnect_aresetn;
  wire [0:0]psr_aclk_interconnect_aresetn;

  assign M00_ACLK = clk_map_aclk_net;
  assign M00_ARESETN[0] = psr_aclk_interconnect_aresetn;
  assign S00_ACLK = clk_map_aclk1_net;
  assign S00_ARESETN[0] = psr_aclk1_interconnect_aresetn;
  assign S01_ACLK = clk_map_aclk2_net;
  assign S01_ARESETN[0] = psr_aclk2_interconnect_aresetn;
  assign clk_map_aclk1_net = aclk1;
  assign clk_map_aclk2_net = aclk2;
  assign clk_map_aclk_net = aclk;
  assign clk_map_aresetn_net = aresetn;
  assign swbd_aclk = clk_map_aclk_net;
  assign swbd_aresetn[0] = psr_aclk_interconnect_aresetn;
  bd_41e8_one_0 one
       (.dout(one_dout));
  bd_41e8_psr0_0 psr0
       (.aux_reset_in(clk_map_aresetn_net),
        .dcm_locked(1'b1),
        .ext_reset_in(one_dout),
        .interconnect_aresetn(psr0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_map_aclk1_net));
  bd_41e8_psr_aclk_0 psr_aclk
       (.aux_reset_in(clk_map_aresetn_net),
        .dcm_locked(1'b1),
        .ext_reset_in(psr0_interconnect_aresetn),
        .interconnect_aresetn(psr_aclk_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_map_aclk_net));
  bd_41e8_psr_aclk1_0 psr_aclk1
       (.aux_reset_in(clk_map_aresetn_net),
        .dcm_locked(1'b1),
        .ext_reset_in(psr0_interconnect_aresetn),
        .interconnect_aresetn(psr_aclk1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_map_aclk1_net));
  bd_41e8_psr_aclk2_0 psr_aclk2
       (.aux_reset_in(clk_map_aresetn_net),
        .dcm_locked(1'b1),
        .ext_reset_in(psr0_interconnect_aresetn),
        .interconnect_aresetn(psr_aclk2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_map_aclk2_net));
endmodule

module m00_exit_pipeline_imp_1FGH6Z0
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_arsize,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awsize,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wvalid,
    s_axi_araddr,
    s_axi_arcache,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awcache,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_bid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wuser,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [31:0]m_axi_araddr;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [2:0]m_axi_arsize;
  output m_axi_arvalid;
  output [31:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [2:0]m_axi_awsize;
  output m_axi_awvalid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input [511:0]m_axi_rdata;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output [511:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [63:0]m_axi_wstrb;
  output m_axi_wvalid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [1023:0]s_axi_aruser;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [1023:0]s_axi_awuser;
  input s_axi_awvalid;
  output [3:0]s_axi_bid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output [1023:0]s_axi_buser;
  output s_axi_bvalid;
  output [511:0]s_axi_rdata;
  output [3:0]s_axi_rid;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [1023:0]s_axi_ruser;
  output s_axi_rvalid;
  input [511:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [63:0]s_axi_wstrb;
  input [1023:0]s_axi_wuser;
  input s_axi_wvalid;

  wire aclk_1;
  wire aresetn_1;
  wire [31:0]m00_exit_M_AXI_ARADDR;
  wire [1:0]m00_exit_M_AXI_ARBURST;
  wire [3:0]m00_exit_M_AXI_ARCACHE;
  wire [7:0]m00_exit_M_AXI_ARLEN;
  wire [0:0]m00_exit_M_AXI_ARLOCK;
  wire [2:0]m00_exit_M_AXI_ARPROT;
  wire [3:0]m00_exit_M_AXI_ARQOS;
  wire m00_exit_M_AXI_ARREADY;
  wire [2:0]m00_exit_M_AXI_ARSIZE;
  wire m00_exit_M_AXI_ARVALID;
  wire [31:0]m00_exit_M_AXI_AWADDR;
  wire [1:0]m00_exit_M_AXI_AWBURST;
  wire [3:0]m00_exit_M_AXI_AWCACHE;
  wire [7:0]m00_exit_M_AXI_AWLEN;
  wire [0:0]m00_exit_M_AXI_AWLOCK;
  wire [2:0]m00_exit_M_AXI_AWPROT;
  wire [3:0]m00_exit_M_AXI_AWQOS;
  wire m00_exit_M_AXI_AWREADY;
  wire [2:0]m00_exit_M_AXI_AWSIZE;
  wire m00_exit_M_AXI_AWVALID;
  wire m00_exit_M_AXI_BREADY;
  wire [1:0]m00_exit_M_AXI_BRESP;
  wire m00_exit_M_AXI_BVALID;
  wire [511:0]m00_exit_M_AXI_RDATA;
  wire m00_exit_M_AXI_RLAST;
  wire m00_exit_M_AXI_RREADY;
  wire [1:0]m00_exit_M_AXI_RRESP;
  wire m00_exit_M_AXI_RVALID;
  wire [511:0]m00_exit_M_AXI_WDATA;
  wire m00_exit_M_AXI_WLAST;
  wire m00_exit_M_AXI_WREADY;
  wire [63:0]m00_exit_M_AXI_WSTRB;
  wire m00_exit_M_AXI_WVALID;
  wire [31:0]s_axi_1_ARADDR;
  wire [3:0]s_axi_1_ARCACHE;
  wire [3:0]s_axi_1_ARID;
  wire [7:0]s_axi_1_ARLEN;
  wire [0:0]s_axi_1_ARLOCK;
  wire [2:0]s_axi_1_ARPROT;
  wire [3:0]s_axi_1_ARQOS;
  wire s_axi_1_ARREADY;
  wire [1023:0]s_axi_1_ARUSER;
  wire s_axi_1_ARVALID;
  wire [31:0]s_axi_1_AWADDR;
  wire [3:0]s_axi_1_AWCACHE;
  wire [3:0]s_axi_1_AWID;
  wire [7:0]s_axi_1_AWLEN;
  wire [0:0]s_axi_1_AWLOCK;
  wire [2:0]s_axi_1_AWPROT;
  wire [3:0]s_axi_1_AWQOS;
  wire s_axi_1_AWREADY;
  wire [1023:0]s_axi_1_AWUSER;
  wire s_axi_1_AWVALID;
  wire [3:0]s_axi_1_BID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire [1023:0]s_axi_1_BUSER;
  wire s_axi_1_BVALID;
  wire [511:0]s_axi_1_RDATA;
  wire [3:0]s_axi_1_RID;
  wire s_axi_1_RLAST;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire [1023:0]s_axi_1_RUSER;
  wire s_axi_1_RVALID;
  wire [511:0]s_axi_1_WDATA;
  wire s_axi_1_WLAST;
  wire s_axi_1_WREADY;
  wire [63:0]s_axi_1_WSTRB;
  wire [1023:0]s_axi_1_WUSER;
  wire s_axi_1_WVALID;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign m00_exit_M_AXI_ARREADY = m_axi_arready;
  assign m00_exit_M_AXI_AWREADY = m_axi_awready;
  assign m00_exit_M_AXI_BRESP = m_axi_bresp[1:0];
  assign m00_exit_M_AXI_BVALID = m_axi_bvalid;
  assign m00_exit_M_AXI_RDATA = m_axi_rdata[511:0];
  assign m00_exit_M_AXI_RLAST = m_axi_rlast;
  assign m00_exit_M_AXI_RRESP = m_axi_rresp[1:0];
  assign m00_exit_M_AXI_RVALID = m_axi_rvalid;
  assign m00_exit_M_AXI_WREADY = m_axi_wready;
  assign m_axi_araddr[31:0] = m00_exit_M_AXI_ARADDR;
  assign m_axi_arburst[1:0] = m00_exit_M_AXI_ARBURST;
  assign m_axi_arcache[3:0] = m00_exit_M_AXI_ARCACHE;
  assign m_axi_arlen[7:0] = m00_exit_M_AXI_ARLEN;
  assign m_axi_arlock[0] = m00_exit_M_AXI_ARLOCK;
  assign m_axi_arprot[2:0] = m00_exit_M_AXI_ARPROT;
  assign m_axi_arqos[3:0] = m00_exit_M_AXI_ARQOS;
  assign m_axi_arsize[2:0] = m00_exit_M_AXI_ARSIZE;
  assign m_axi_arvalid = m00_exit_M_AXI_ARVALID;
  assign m_axi_awaddr[31:0] = m00_exit_M_AXI_AWADDR;
  assign m_axi_awburst[1:0] = m00_exit_M_AXI_AWBURST;
  assign m_axi_awcache[3:0] = m00_exit_M_AXI_AWCACHE;
  assign m_axi_awlen[7:0] = m00_exit_M_AXI_AWLEN;
  assign m_axi_awlock[0] = m00_exit_M_AXI_AWLOCK;
  assign m_axi_awprot[2:0] = m00_exit_M_AXI_AWPROT;
  assign m_axi_awqos[3:0] = m00_exit_M_AXI_AWQOS;
  assign m_axi_awsize[2:0] = m00_exit_M_AXI_AWSIZE;
  assign m_axi_awvalid = m00_exit_M_AXI_AWVALID;
  assign m_axi_bready = m00_exit_M_AXI_BREADY;
  assign m_axi_rready = m00_exit_M_AXI_RREADY;
  assign m_axi_wdata[511:0] = m00_exit_M_AXI_WDATA;
  assign m_axi_wlast = m00_exit_M_AXI_WLAST;
  assign m_axi_wstrb[63:0] = m00_exit_M_AXI_WSTRB;
  assign m_axi_wvalid = m00_exit_M_AXI_WVALID;
  assign s_axi_1_ARADDR = s_axi_araddr[31:0];
  assign s_axi_1_ARCACHE = s_axi_arcache[3:0];
  assign s_axi_1_ARID = s_axi_arid[3:0];
  assign s_axi_1_ARLEN = s_axi_arlen[7:0];
  assign s_axi_1_ARLOCK = s_axi_arlock[0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARQOS = s_axi_arqos[3:0];
  assign s_axi_1_ARUSER = s_axi_aruser[1023:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[31:0];
  assign s_axi_1_AWCACHE = s_axi_awcache[3:0];
  assign s_axi_1_AWID = s_axi_awid[3:0];
  assign s_axi_1_AWLEN = s_axi_awlen[7:0];
  assign s_axi_1_AWLOCK = s_axi_awlock[0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWQOS = s_axi_awqos[3:0];
  assign s_axi_1_AWUSER = s_axi_awuser[1023:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[511:0];
  assign s_axi_1_WLAST = s_axi_wlast;
  assign s_axi_1_WSTRB = s_axi_wstrb[63:0];
  assign s_axi_1_WUSER = s_axi_wuser[1023:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bid[3:0] = s_axi_1_BID;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_buser[1023:0] = s_axi_1_BUSER;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[511:0] = s_axi_1_RDATA;
  assign s_axi_rid[3:0] = s_axi_1_RID;
  assign s_axi_rlast = s_axi_1_RLAST;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_ruser[1023:0] = s_axi_1_RUSER;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  bd_41e8_m00e_0 m00_exit
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(m00_exit_M_AXI_ARADDR),
        .m_axi_arburst(m00_exit_M_AXI_ARBURST),
        .m_axi_arcache(m00_exit_M_AXI_ARCACHE),
        .m_axi_arlen(m00_exit_M_AXI_ARLEN),
        .m_axi_arlock(m00_exit_M_AXI_ARLOCK),
        .m_axi_arprot(m00_exit_M_AXI_ARPROT),
        .m_axi_arqos(m00_exit_M_AXI_ARQOS),
        .m_axi_arready(m00_exit_M_AXI_ARREADY),
        .m_axi_arsize(m00_exit_M_AXI_ARSIZE),
        .m_axi_arvalid(m00_exit_M_AXI_ARVALID),
        .m_axi_awaddr(m00_exit_M_AXI_AWADDR),
        .m_axi_awburst(m00_exit_M_AXI_AWBURST),
        .m_axi_awcache(m00_exit_M_AXI_AWCACHE),
        .m_axi_awlen(m00_exit_M_AXI_AWLEN),
        .m_axi_awlock(m00_exit_M_AXI_AWLOCK),
        .m_axi_awprot(m00_exit_M_AXI_AWPROT),
        .m_axi_awqos(m00_exit_M_AXI_AWQOS),
        .m_axi_awready(m00_exit_M_AXI_AWREADY),
        .m_axi_awsize(m00_exit_M_AXI_AWSIZE),
        .m_axi_awvalid(m00_exit_M_AXI_AWVALID),
        .m_axi_bready(m00_exit_M_AXI_BREADY),
        .m_axi_bresp(m00_exit_M_AXI_BRESP),
        .m_axi_bvalid(m00_exit_M_AXI_BVALID),
        .m_axi_rdata(m00_exit_M_AXI_RDATA),
        .m_axi_rlast(m00_exit_M_AXI_RLAST),
        .m_axi_rready(m00_exit_M_AXI_RREADY),
        .m_axi_rresp(m00_exit_M_AXI_RRESP),
        .m_axi_rvalid(m00_exit_M_AXI_RVALID),
        .m_axi_wdata(m00_exit_M_AXI_WDATA),
        .m_axi_wlast(m00_exit_M_AXI_WLAST),
        .m_axi_wready(m00_exit_M_AXI_WREADY),
        .m_axi_wstrb(m00_exit_M_AXI_WSTRB),
        .m_axi_wvalid(m00_exit_M_AXI_WVALID),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arcache(s_axi_1_ARCACHE),
        .s_axi_arid(s_axi_1_ARID),
        .s_axi_arlen(s_axi_1_ARLEN),
        .s_axi_arlock(s_axi_1_ARLOCK),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arqos(s_axi_1_ARQOS),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_aruser(s_axi_1_ARUSER),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awcache(s_axi_1_AWCACHE),
        .s_axi_awid(s_axi_1_AWID),
        .s_axi_awlen(s_axi_1_AWLEN),
        .s_axi_awlock(s_axi_1_AWLOCK),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awqos(s_axi_1_AWQOS),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awuser(s_axi_1_AWUSER),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bid(s_axi_1_BID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_buser(s_axi_1_BUSER),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rid(s_axi_1_RID),
        .s_axi_rlast(s_axi_1_RLAST),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_ruser(s_axi_1_RUSER),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wlast(s_axi_1_WLAST),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wuser(s_axi_1_WUSER),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module m00_nodes_imp_1SPXK0W
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_axi_aclk,
    m_axi_aresetn,
    s_axi_aclk,
    s_axi_aresetn);
  output [0:0]M_SC_AR_info;
  output [258:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_AW_info;
  output [258:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [1:0]M_SC_B_info;
  output [121:0]M_SC_B_payld;
  input [1:0]M_SC_B_recv;
  output [1:0]M_SC_B_req;
  output [1:0]M_SC_B_send;
  output [1:0]M_SC_R_info;
  output [534:0]M_SC_R_payld;
  input [1:0]M_SC_R_recv;
  output [1:0]M_SC_R_req;
  output [1:0]M_SC_R_send;
  output [0:0]M_SC_W_info;
  output [591:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [1:0]S_SC_AR_info;
  input [258:0]S_SC_AR_payld;
  output [1:0]S_SC_AR_recv;
  input [1:0]S_SC_AR_req;
  input [1:0]S_SC_AR_send;
  input [1:0]S_SC_AW_info;
  input [258:0]S_SC_AW_payld;
  output [1:0]S_SC_AW_recv;
  input [1:0]S_SC_AW_req;
  input [1:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [121:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_R_info;
  input [534:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input [1:0]S_SC_W_info;
  input [591:0]S_SC_W_payld;
  output [1:0]S_SC_W_recv;
  input [1:0]S_SC_W_req;
  input [1:0]S_SC_W_send;
  input m_axi_aclk;
  input m_axi_aresetn;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [1:0]S_SC_AR_1_INFO;
  wire [258:0]S_SC_AR_1_PAYLD;
  wire [1:0]S_SC_AR_1_RECV;
  wire [1:0]S_SC_AR_1_REQ;
  wire [1:0]S_SC_AR_1_SEND;
  wire [1:0]S_SC_AW_1_INFO;
  wire [258:0]S_SC_AW_1_PAYLD;
  wire [1:0]S_SC_AW_1_RECV;
  wire [1:0]S_SC_AW_1_REQ;
  wire [1:0]S_SC_AW_1_SEND;
  wire [0:0]S_SC_B_1_INFO;
  wire [121:0]S_SC_B_1_PAYLD;
  wire [0:0]S_SC_B_1_RECV;
  wire [0:0]S_SC_B_1_REQ;
  wire [0:0]S_SC_B_1_SEND;
  wire [0:0]S_SC_R_1_INFO;
  wire [534:0]S_SC_R_1_PAYLD;
  wire [0:0]S_SC_R_1_RECV;
  wire [0:0]S_SC_R_1_REQ;
  wire [0:0]S_SC_R_1_SEND;
  wire [1:0]S_SC_W_1_INFO;
  wire [591:0]S_SC_W_1_PAYLD;
  wire [1:0]S_SC_W_1_RECV;
  wire [1:0]S_SC_W_1_REQ;
  wire [1:0]S_SC_W_1_SEND;
  wire [0:0]m00_ar_node_M_SC_INFO;
  wire [258:0]m00_ar_node_M_SC_PAYLD;
  wire [0:0]m00_ar_node_M_SC_RECV;
  wire [0:0]m00_ar_node_M_SC_REQ;
  wire [0:0]m00_ar_node_M_SC_SEND;
  wire [15:0]m00_aw_node_M_AXIS_ARB_TDATA;
  wire m00_aw_node_M_AXIS_ARB_TREADY;
  wire m00_aw_node_M_AXIS_ARB_TVALID;
  wire [0:0]m00_aw_node_M_SC_INFO;
  wire [258:0]m00_aw_node_M_SC_PAYLD;
  wire [0:0]m00_aw_node_M_SC_RECV;
  wire [0:0]m00_aw_node_M_SC_REQ;
  wire [0:0]m00_aw_node_M_SC_SEND;
  wire [1:0]m00_b_node_M_SC_INFO;
  wire [121:0]m00_b_node_M_SC_PAYLD;
  wire [1:0]m00_b_node_M_SC_RECV;
  wire [1:0]m00_b_node_M_SC_REQ;
  wire [1:0]m00_b_node_M_SC_SEND;
  wire [1:0]m00_r_node_M_SC_INFO;
  wire [534:0]m00_r_node_M_SC_PAYLD;
  wire [1:0]m00_r_node_M_SC_RECV;
  wire [1:0]m00_r_node_M_SC_REQ;
  wire [1:0]m00_r_node_M_SC_SEND;
  wire [0:0]m00_w_node_M_SC_INFO;
  wire [591:0]m00_w_node_M_SC_PAYLD;
  wire [0:0]m00_w_node_M_SC_RECV;
  wire [0:0]m00_w_node_M_SC_REQ;
  wire [0:0]m00_w_node_M_SC_SEND;
  wire m_axi_aclk_1;
  wire m_axi_aresetn_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign M_SC_AR_info[0] = m00_ar_node_M_SC_INFO;
  assign M_SC_AR_payld[258:0] = m00_ar_node_M_SC_PAYLD;
  assign M_SC_AR_req[0] = m00_ar_node_M_SC_REQ;
  assign M_SC_AR_send[0] = m00_ar_node_M_SC_SEND;
  assign M_SC_AW_info[0] = m00_aw_node_M_SC_INFO;
  assign M_SC_AW_payld[258:0] = m00_aw_node_M_SC_PAYLD;
  assign M_SC_AW_req[0] = m00_aw_node_M_SC_REQ;
  assign M_SC_AW_send[0] = m00_aw_node_M_SC_SEND;
  assign M_SC_B_info[1:0] = m00_b_node_M_SC_INFO;
  assign M_SC_B_payld[121:0] = m00_b_node_M_SC_PAYLD;
  assign M_SC_B_req[1:0] = m00_b_node_M_SC_REQ;
  assign M_SC_B_send[1:0] = m00_b_node_M_SC_SEND;
  assign M_SC_R_info[1:0] = m00_r_node_M_SC_INFO;
  assign M_SC_R_payld[534:0] = m00_r_node_M_SC_PAYLD;
  assign M_SC_R_req[1:0] = m00_r_node_M_SC_REQ;
  assign M_SC_R_send[1:0] = m00_r_node_M_SC_SEND;
  assign M_SC_W_info[0] = m00_w_node_M_SC_INFO;
  assign M_SC_W_payld[591:0] = m00_w_node_M_SC_PAYLD;
  assign M_SC_W_req[0] = m00_w_node_M_SC_REQ;
  assign M_SC_W_send[0] = m00_w_node_M_SC_SEND;
  assign S_SC_AR_1_INFO = S_SC_AR_info[1:0];
  assign S_SC_AR_1_PAYLD = S_SC_AR_payld[258:0];
  assign S_SC_AR_1_REQ = S_SC_AR_req[1:0];
  assign S_SC_AR_1_SEND = S_SC_AR_send[1:0];
  assign S_SC_AR_recv[1:0] = S_SC_AR_1_RECV;
  assign S_SC_AW_1_INFO = S_SC_AW_info[1:0];
  assign S_SC_AW_1_PAYLD = S_SC_AW_payld[258:0];
  assign S_SC_AW_1_REQ = S_SC_AW_req[1:0];
  assign S_SC_AW_1_SEND = S_SC_AW_send[1:0];
  assign S_SC_AW_recv[1:0] = S_SC_AW_1_RECV;
  assign S_SC_B_1_INFO = S_SC_B_info[0];
  assign S_SC_B_1_PAYLD = S_SC_B_payld[121:0];
  assign S_SC_B_1_REQ = S_SC_B_req[0];
  assign S_SC_B_1_SEND = S_SC_B_send[0];
  assign S_SC_B_recv[0] = S_SC_B_1_RECV;
  assign S_SC_R_1_INFO = S_SC_R_info[0];
  assign S_SC_R_1_PAYLD = S_SC_R_payld[534:0];
  assign S_SC_R_1_REQ = S_SC_R_req[0];
  assign S_SC_R_1_SEND = S_SC_R_send[0];
  assign S_SC_R_recv[0] = S_SC_R_1_RECV;
  assign S_SC_W_1_INFO = S_SC_W_info[1:0];
  assign S_SC_W_1_PAYLD = S_SC_W_payld[591:0];
  assign S_SC_W_1_REQ = S_SC_W_req[1:0];
  assign S_SC_W_1_SEND = S_SC_W_send[1:0];
  assign S_SC_W_recv[1:0] = S_SC_W_1_RECV;
  assign m00_ar_node_M_SC_RECV = M_SC_AR_recv[0];
  assign m00_aw_node_M_SC_RECV = M_SC_AW_recv[0];
  assign m00_b_node_M_SC_RECV = M_SC_B_recv[1:0];
  assign m00_r_node_M_SC_RECV = M_SC_R_recv[1:0];
  assign m00_w_node_M_SC_RECV = M_SC_W_recv[0];
  assign m_axi_aclk_1 = m_axi_aclk;
  assign m_axi_aresetn_1 = m_axi_aresetn;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  bd_41e8_m00arn_0 m00_ar_node
       (.m_sc_aclk(m_axi_aclk_1),
        .m_sc_aresetn(m_axi_aresetn_1),
        .m_sc_info(m00_ar_node_M_SC_INFO),
        .m_sc_payld(m00_ar_node_M_SC_PAYLD),
        .m_sc_recv(m00_ar_node_M_SC_RECV),
        .m_sc_req(m00_ar_node_M_SC_REQ),
        .m_sc_send(m00_ar_node_M_SC_SEND),
        .s_sc_aclk(s_axi_aclk_1),
        .s_sc_aresetn(s_axi_aresetn_1),
        .s_sc_info(S_SC_AR_1_INFO),
        .s_sc_payld(S_SC_AR_1_PAYLD),
        .s_sc_recv(S_SC_AR_1_RECV),
        .s_sc_req(S_SC_AR_1_REQ),
        .s_sc_send(S_SC_AR_1_SEND));
  bd_41e8_m00awn_0 m00_aw_node
       (.m_axis_arb_tdata(m00_aw_node_M_AXIS_ARB_TDATA),
        .m_axis_arb_tready(m00_aw_node_M_AXIS_ARB_TREADY),
        .m_axis_arb_tvalid(m00_aw_node_M_AXIS_ARB_TVALID),
        .m_sc_aclk(m_axi_aclk_1),
        .m_sc_aresetn(m_axi_aresetn_1),
        .m_sc_info(m00_aw_node_M_SC_INFO),
        .m_sc_payld(m00_aw_node_M_SC_PAYLD),
        .m_sc_recv(m00_aw_node_M_SC_RECV),
        .m_sc_req(m00_aw_node_M_SC_REQ),
        .m_sc_send(m00_aw_node_M_SC_SEND),
        .s_sc_aclk(s_axi_aclk_1),
        .s_sc_aresetn(s_axi_aresetn_1),
        .s_sc_info(S_SC_AW_1_INFO),
        .s_sc_payld(S_SC_AW_1_PAYLD),
        .s_sc_recv(S_SC_AW_1_RECV),
        .s_sc_req(S_SC_AW_1_REQ),
        .s_sc_send(S_SC_AW_1_SEND));
  bd_41e8_m00bn_0 m00_b_node
       (.m_sc_aclk(s_axi_aclk_1),
        .m_sc_aresetn(s_axi_aresetn_1),
        .m_sc_info(m00_b_node_M_SC_INFO),
        .m_sc_payld(m00_b_node_M_SC_PAYLD),
        .m_sc_recv(m00_b_node_M_SC_RECV),
        .m_sc_req(m00_b_node_M_SC_REQ),
        .m_sc_send(m00_b_node_M_SC_SEND),
        .s_sc_aclk(m_axi_aclk_1),
        .s_sc_aresetn(m_axi_aresetn_1),
        .s_sc_info(S_SC_B_1_INFO),
        .s_sc_payld(S_SC_B_1_PAYLD),
        .s_sc_recv(S_SC_B_1_RECV),
        .s_sc_req(S_SC_B_1_REQ),
        .s_sc_send(S_SC_B_1_SEND));
  bd_41e8_m00rn_0 m00_r_node
       (.m_sc_aclk(s_axi_aclk_1),
        .m_sc_aresetn(s_axi_aresetn_1),
        .m_sc_info(m00_r_node_M_SC_INFO),
        .m_sc_payld(m00_r_node_M_SC_PAYLD),
        .m_sc_recv(m00_r_node_M_SC_RECV),
        .m_sc_req(m00_r_node_M_SC_REQ),
        .m_sc_send(m00_r_node_M_SC_SEND),
        .s_sc_aclk(m_axi_aclk_1),
        .s_sc_aresetn(m_axi_aresetn_1),
        .s_sc_info(S_SC_R_1_INFO),
        .s_sc_payld(S_SC_R_1_PAYLD),
        .s_sc_recv(S_SC_R_1_RECV),
        .s_sc_req(S_SC_R_1_REQ),
        .s_sc_send(S_SC_R_1_SEND));
  bd_41e8_m00wn_0 m00_w_node
       (.m_sc_aclk(m_axi_aclk_1),
        .m_sc_aresetn(m_axi_aresetn_1),
        .m_sc_info(m00_w_node_M_SC_INFO),
        .m_sc_payld(m00_w_node_M_SC_PAYLD),
        .m_sc_recv(m00_w_node_M_SC_RECV),
        .m_sc_req(m00_w_node_M_SC_REQ),
        .m_sc_send(m00_w_node_M_SC_SEND),
        .s_axis_arb_tdata(m00_aw_node_M_AXIS_ARB_TDATA),
        .s_axis_arb_tready(m00_aw_node_M_AXIS_ARB_TREADY),
        .s_axis_arb_tvalid(m00_aw_node_M_AXIS_ARB_TVALID),
        .s_sc_aclk(s_axi_aclk_1),
        .s_sc_aresetn(s_axi_aresetn_1),
        .s_sc_info(S_SC_W_1_INFO),
        .s_sc_payld(S_SC_W_1_PAYLD),
        .s_sc_recv(S_SC_W_1_RECV),
        .s_sc_req(S_SC_W_1_REQ),
        .s_sc_send(S_SC_W_1_SEND));
endmodule

module s00_entry_pipeline_imp_G6Z827
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awcache,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_bid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wuser,
    m_axi_wvalid,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_arsize,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awsize,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_bid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wuser,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [33:0]m_axi_araddr;
  output [3:0]m_axi_arcache;
  output [3:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [1023:0]m_axi_aruser;
  output m_axi_arvalid;
  output [33:0]m_axi_awaddr;
  output [3:0]m_axi_awcache;
  output [3:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [1023:0]m_axi_awuser;
  output m_axi_awvalid;
  input [3:0]m_axi_bid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input [1023:0]m_axi_buser;
  input m_axi_bvalid;
  input [255:0]m_axi_rdata;
  input [3:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input [1023:0]m_axi_ruser;
  input m_axi_rvalid;
  output [255:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [31:0]m_axi_wstrb;
  output [1023:0]m_axi_wuser;
  output m_axi_wvalid;
  input [33:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [2:0]s_axi_arsize;
  input [113:0]s_axi_aruser;
  input s_axi_arvalid;
  input [33:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [2:0]s_axi_awsize;
  input [113:0]s_axi_awuser;
  input s_axi_awvalid;
  output [3:0]s_axi_bid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output [113:0]s_axi_buser;
  output s_axi_bvalid;
  output [255:0]s_axi_rdata;
  output [3:0]s_axi_rid;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [13:0]s_axi_ruser;
  output s_axi_rvalid;
  input [255:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [31:0]s_axi_wstrb;
  input [13:0]s_axi_wuser;
  input s_axi_wvalid;

  wire aclk_1;
  wire aresetn_1;
  wire [33:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [3:0]s00_mmu_M_AXI_ARID;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire [1023:0]s00_mmu_M_AXI_ARUSER;
  wire s00_mmu_M_AXI_ARVALID;
  wire [33:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [3:0]s00_mmu_M_AXI_AWID;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire [1023:0]s00_mmu_M_AXI_AWUSER;
  wire s00_mmu_M_AXI_AWVALID;
  wire [3:0]s00_mmu_M_AXI_BID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire [1023:0]s00_mmu_M_AXI_BUSER;
  wire s00_mmu_M_AXI_BVALID;
  wire [255:0]s00_mmu_M_AXI_RDATA;
  wire [3:0]s00_mmu_M_AXI_RID;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire [1023:0]s00_mmu_M_AXI_RUSER;
  wire s00_mmu_M_AXI_RVALID;
  wire [255:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [31:0]s00_mmu_M_AXI_WSTRB;
  wire [1023:0]s00_mmu_M_AXI_WUSER;
  wire s00_mmu_M_AXI_WVALID;
  wire [33:0]s00_si_converter_M_AXI_ARADDR;
  wire [3:0]s00_si_converter_M_AXI_ARCACHE;
  wire [3:0]s00_si_converter_M_AXI_ARID;
  wire [7:0]s00_si_converter_M_AXI_ARLEN;
  wire [0:0]s00_si_converter_M_AXI_ARLOCK;
  wire [2:0]s00_si_converter_M_AXI_ARPROT;
  wire [3:0]s00_si_converter_M_AXI_ARQOS;
  wire s00_si_converter_M_AXI_ARREADY;
  wire [1023:0]s00_si_converter_M_AXI_ARUSER;
  wire s00_si_converter_M_AXI_ARVALID;
  wire [33:0]s00_si_converter_M_AXI_AWADDR;
  wire [3:0]s00_si_converter_M_AXI_AWCACHE;
  wire [3:0]s00_si_converter_M_AXI_AWID;
  wire [7:0]s00_si_converter_M_AXI_AWLEN;
  wire [0:0]s00_si_converter_M_AXI_AWLOCK;
  wire [2:0]s00_si_converter_M_AXI_AWPROT;
  wire [3:0]s00_si_converter_M_AXI_AWQOS;
  wire s00_si_converter_M_AXI_AWREADY;
  wire [1023:0]s00_si_converter_M_AXI_AWUSER;
  wire s00_si_converter_M_AXI_AWVALID;
  wire [3:0]s00_si_converter_M_AXI_BID;
  wire s00_si_converter_M_AXI_BREADY;
  wire [1:0]s00_si_converter_M_AXI_BRESP;
  wire [1023:0]s00_si_converter_M_AXI_BUSER;
  wire s00_si_converter_M_AXI_BVALID;
  wire [255:0]s00_si_converter_M_AXI_RDATA;
  wire [3:0]s00_si_converter_M_AXI_RID;
  wire s00_si_converter_M_AXI_RLAST;
  wire s00_si_converter_M_AXI_RREADY;
  wire [1:0]s00_si_converter_M_AXI_RRESP;
  wire [1023:0]s00_si_converter_M_AXI_RUSER;
  wire s00_si_converter_M_AXI_RVALID;
  wire [255:0]s00_si_converter_M_AXI_WDATA;
  wire s00_si_converter_M_AXI_WLAST;
  wire s00_si_converter_M_AXI_WREADY;
  wire [31:0]s00_si_converter_M_AXI_WSTRB;
  wire [1023:0]s00_si_converter_M_AXI_WUSER;
  wire s00_si_converter_M_AXI_WVALID;
  wire [33:0]s00_transaction_regulator_M_AXI_ARADDR;
  wire [3:0]s00_transaction_regulator_M_AXI_ARCACHE;
  wire [3:0]s00_transaction_regulator_M_AXI_ARID;
  wire [7:0]s00_transaction_regulator_M_AXI_ARLEN;
  wire [0:0]s00_transaction_regulator_M_AXI_ARLOCK;
  wire [2:0]s00_transaction_regulator_M_AXI_ARPROT;
  wire [3:0]s00_transaction_regulator_M_AXI_ARQOS;
  wire s00_transaction_regulator_M_AXI_ARREADY;
  wire [1023:0]s00_transaction_regulator_M_AXI_ARUSER;
  wire s00_transaction_regulator_M_AXI_ARVALID;
  wire [33:0]s00_transaction_regulator_M_AXI_AWADDR;
  wire [3:0]s00_transaction_regulator_M_AXI_AWCACHE;
  wire [3:0]s00_transaction_regulator_M_AXI_AWID;
  wire [7:0]s00_transaction_regulator_M_AXI_AWLEN;
  wire [0:0]s00_transaction_regulator_M_AXI_AWLOCK;
  wire [2:0]s00_transaction_regulator_M_AXI_AWPROT;
  wire [3:0]s00_transaction_regulator_M_AXI_AWQOS;
  wire s00_transaction_regulator_M_AXI_AWREADY;
  wire [1023:0]s00_transaction_regulator_M_AXI_AWUSER;
  wire s00_transaction_regulator_M_AXI_AWVALID;
  wire [3:0]s00_transaction_regulator_M_AXI_BID;
  wire s00_transaction_regulator_M_AXI_BREADY;
  wire [1:0]s00_transaction_regulator_M_AXI_BRESP;
  wire [1023:0]s00_transaction_regulator_M_AXI_BUSER;
  wire s00_transaction_regulator_M_AXI_BVALID;
  wire [255:0]s00_transaction_regulator_M_AXI_RDATA;
  wire [3:0]s00_transaction_regulator_M_AXI_RID;
  wire s00_transaction_regulator_M_AXI_RLAST;
  wire s00_transaction_regulator_M_AXI_RREADY;
  wire [1:0]s00_transaction_regulator_M_AXI_RRESP;
  wire [1023:0]s00_transaction_regulator_M_AXI_RUSER;
  wire s00_transaction_regulator_M_AXI_RVALID;
  wire [255:0]s00_transaction_regulator_M_AXI_WDATA;
  wire s00_transaction_regulator_M_AXI_WLAST;
  wire s00_transaction_regulator_M_AXI_WREADY;
  wire [31:0]s00_transaction_regulator_M_AXI_WSTRB;
  wire [1023:0]s00_transaction_regulator_M_AXI_WUSER;
  wire s00_transaction_regulator_M_AXI_WVALID;
  wire [33:0]s_axi_1_ARADDR;
  wire [1:0]s_axi_1_ARBURST;
  wire [3:0]s_axi_1_ARCACHE;
  wire [3:0]s_axi_1_ARID;
  wire [7:0]s_axi_1_ARLEN;
  wire [0:0]s_axi_1_ARLOCK;
  wire [2:0]s_axi_1_ARPROT;
  wire [3:0]s_axi_1_ARQOS;
  wire s_axi_1_ARREADY;
  wire [2:0]s_axi_1_ARSIZE;
  wire [113:0]s_axi_1_ARUSER;
  wire s_axi_1_ARVALID;
  wire [33:0]s_axi_1_AWADDR;
  wire [1:0]s_axi_1_AWBURST;
  wire [3:0]s_axi_1_AWCACHE;
  wire [3:0]s_axi_1_AWID;
  wire [7:0]s_axi_1_AWLEN;
  wire [0:0]s_axi_1_AWLOCK;
  wire [2:0]s_axi_1_AWPROT;
  wire [3:0]s_axi_1_AWQOS;
  wire s_axi_1_AWREADY;
  wire [2:0]s_axi_1_AWSIZE;
  wire [113:0]s_axi_1_AWUSER;
  wire s_axi_1_AWVALID;
  wire [3:0]s_axi_1_BID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire [113:0]s_axi_1_BUSER;
  wire s_axi_1_BVALID;
  wire [255:0]s_axi_1_RDATA;
  wire [3:0]s_axi_1_RID;
  wire s_axi_1_RLAST;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire [13:0]s_axi_1_RUSER;
  wire s_axi_1_RVALID;
  wire [255:0]s_axi_1_WDATA;
  wire s_axi_1_WLAST;
  wire s_axi_1_WREADY;
  wire [31:0]s_axi_1_WSTRB;
  wire [13:0]s_axi_1_WUSER;
  wire s_axi_1_WVALID;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign m_axi_araddr[33:0] = s00_si_converter_M_AXI_ARADDR;
  assign m_axi_arcache[3:0] = s00_si_converter_M_AXI_ARCACHE;
  assign m_axi_arid[3:0] = s00_si_converter_M_AXI_ARID;
  assign m_axi_arlen[7:0] = s00_si_converter_M_AXI_ARLEN;
  assign m_axi_arlock[0] = s00_si_converter_M_AXI_ARLOCK;
  assign m_axi_arprot[2:0] = s00_si_converter_M_AXI_ARPROT;
  assign m_axi_arqos[3:0] = s00_si_converter_M_AXI_ARQOS;
  assign m_axi_aruser[1023:0] = s00_si_converter_M_AXI_ARUSER;
  assign m_axi_arvalid = s00_si_converter_M_AXI_ARVALID;
  assign m_axi_awaddr[33:0] = s00_si_converter_M_AXI_AWADDR;
  assign m_axi_awcache[3:0] = s00_si_converter_M_AXI_AWCACHE;
  assign m_axi_awid[3:0] = s00_si_converter_M_AXI_AWID;
  assign m_axi_awlen[7:0] = s00_si_converter_M_AXI_AWLEN;
  assign m_axi_awlock[0] = s00_si_converter_M_AXI_AWLOCK;
  assign m_axi_awprot[2:0] = s00_si_converter_M_AXI_AWPROT;
  assign m_axi_awqos[3:0] = s00_si_converter_M_AXI_AWQOS;
  assign m_axi_awuser[1023:0] = s00_si_converter_M_AXI_AWUSER;
  assign m_axi_awvalid = s00_si_converter_M_AXI_AWVALID;
  assign m_axi_bready = s00_si_converter_M_AXI_BREADY;
  assign m_axi_rready = s00_si_converter_M_AXI_RREADY;
  assign m_axi_wdata[255:0] = s00_si_converter_M_AXI_WDATA;
  assign m_axi_wlast = s00_si_converter_M_AXI_WLAST;
  assign m_axi_wstrb[31:0] = s00_si_converter_M_AXI_WSTRB;
  assign m_axi_wuser[1023:0] = s00_si_converter_M_AXI_WUSER;
  assign m_axi_wvalid = s00_si_converter_M_AXI_WVALID;
  assign s00_si_converter_M_AXI_ARREADY = m_axi_arready;
  assign s00_si_converter_M_AXI_AWREADY = m_axi_awready;
  assign s00_si_converter_M_AXI_BID = m_axi_bid[3:0];
  assign s00_si_converter_M_AXI_BRESP = m_axi_bresp[1:0];
  assign s00_si_converter_M_AXI_BUSER = m_axi_buser[1023:0];
  assign s00_si_converter_M_AXI_BVALID = m_axi_bvalid;
  assign s00_si_converter_M_AXI_RDATA = m_axi_rdata[255:0];
  assign s00_si_converter_M_AXI_RID = m_axi_rid[3:0];
  assign s00_si_converter_M_AXI_RLAST = m_axi_rlast;
  assign s00_si_converter_M_AXI_RRESP = m_axi_rresp[1:0];
  assign s00_si_converter_M_AXI_RUSER = m_axi_ruser[1023:0];
  assign s00_si_converter_M_AXI_RVALID = m_axi_rvalid;
  assign s00_si_converter_M_AXI_WREADY = m_axi_wready;
  assign s_axi_1_ARADDR = s_axi_araddr[33:0];
  assign s_axi_1_ARBURST = s_axi_arburst[1:0];
  assign s_axi_1_ARCACHE = s_axi_arcache[3:0];
  assign s_axi_1_ARID = s_axi_arid[3:0];
  assign s_axi_1_ARLEN = s_axi_arlen[7:0];
  assign s_axi_1_ARLOCK = s_axi_arlock[0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARQOS = s_axi_arqos[3:0];
  assign s_axi_1_ARSIZE = s_axi_arsize[2:0];
  assign s_axi_1_ARUSER = s_axi_aruser[113:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[33:0];
  assign s_axi_1_AWBURST = s_axi_awburst[1:0];
  assign s_axi_1_AWCACHE = s_axi_awcache[3:0];
  assign s_axi_1_AWID = s_axi_awid[3:0];
  assign s_axi_1_AWLEN = s_axi_awlen[7:0];
  assign s_axi_1_AWLOCK = s_axi_awlock[0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWQOS = s_axi_awqos[3:0];
  assign s_axi_1_AWSIZE = s_axi_awsize[2:0];
  assign s_axi_1_AWUSER = s_axi_awuser[113:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[255:0];
  assign s_axi_1_WLAST = s_axi_wlast;
  assign s_axi_1_WSTRB = s_axi_wstrb[31:0];
  assign s_axi_1_WUSER = s_axi_wuser[13:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bid[3:0] = s_axi_1_BID;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_buser[113:0] = s_axi_1_BUSER;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[255:0] = s_axi_1_RDATA;
  assign s_axi_rid[3:0] = s_axi_1_RID;
  assign s_axi_rlast = s_axi_1_RLAST;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_ruser[13:0] = s_axi_1_RUSER;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  bd_41e8_s00mmu_0 s00_mmu
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s00_mmu_M_AXI_ARID),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_aruser(s00_mmu_M_AXI_ARUSER),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s00_mmu_M_AXI_AWID),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awuser(s00_mmu_M_AXI_AWUSER),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bid(s00_mmu_M_AXI_BID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_buser(s00_mmu_M_AXI_BUSER),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rid(s00_mmu_M_AXI_RID),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_ruser(s00_mmu_M_AXI_RUSER),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wuser(s00_mmu_M_AXI_WUSER),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arburst(s_axi_1_ARBURST),
        .s_axi_arcache(s_axi_1_ARCACHE),
        .s_axi_arid(s_axi_1_ARID),
        .s_axi_arlen(s_axi_1_ARLEN),
        .s_axi_arlock(s_axi_1_ARLOCK),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arqos(s_axi_1_ARQOS),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arsize(s_axi_1_ARSIZE),
        .s_axi_aruser(s_axi_1_ARUSER),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awburst(s_axi_1_AWBURST),
        .s_axi_awcache(s_axi_1_AWCACHE),
        .s_axi_awid(s_axi_1_AWID),
        .s_axi_awlen(s_axi_1_AWLEN),
        .s_axi_awlock(s_axi_1_AWLOCK),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awqos(s_axi_1_AWQOS),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awsize(s_axi_1_AWSIZE),
        .s_axi_awuser(s_axi_1_AWUSER),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bid(s_axi_1_BID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_buser(s_axi_1_BUSER),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rid(s_axi_1_RID),
        .s_axi_rlast(s_axi_1_RLAST),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_ruser(s_axi_1_RUSER),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wlast(s_axi_1_WLAST),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wuser(s_axi_1_WUSER),
        .s_axi_wvalid(s_axi_1_WVALID));
  bd_41e8_s00sic_0 s00_si_converter
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s00_si_converter_M_AXI_ARADDR),
        .m_axi_arcache(s00_si_converter_M_AXI_ARCACHE),
        .m_axi_arid(s00_si_converter_M_AXI_ARID),
        .m_axi_arlen(s00_si_converter_M_AXI_ARLEN),
        .m_axi_arlock(s00_si_converter_M_AXI_ARLOCK),
        .m_axi_arprot(s00_si_converter_M_AXI_ARPROT),
        .m_axi_arqos(s00_si_converter_M_AXI_ARQOS),
        .m_axi_arready(s00_si_converter_M_AXI_ARREADY),
        .m_axi_aruser(s00_si_converter_M_AXI_ARUSER),
        .m_axi_arvalid(s00_si_converter_M_AXI_ARVALID),
        .m_axi_awaddr(s00_si_converter_M_AXI_AWADDR),
        .m_axi_awcache(s00_si_converter_M_AXI_AWCACHE),
        .m_axi_awid(s00_si_converter_M_AXI_AWID),
        .m_axi_awlen(s00_si_converter_M_AXI_AWLEN),
        .m_axi_awlock(s00_si_converter_M_AXI_AWLOCK),
        .m_axi_awprot(s00_si_converter_M_AXI_AWPROT),
        .m_axi_awqos(s00_si_converter_M_AXI_AWQOS),
        .m_axi_awready(s00_si_converter_M_AXI_AWREADY),
        .m_axi_awuser(s00_si_converter_M_AXI_AWUSER),
        .m_axi_awvalid(s00_si_converter_M_AXI_AWVALID),
        .m_axi_bid(s00_si_converter_M_AXI_BID),
        .m_axi_bready(s00_si_converter_M_AXI_BREADY),
        .m_axi_bresp(s00_si_converter_M_AXI_BRESP),
        .m_axi_buser(s00_si_converter_M_AXI_BUSER),
        .m_axi_bvalid(s00_si_converter_M_AXI_BVALID),
        .m_axi_rdata(s00_si_converter_M_AXI_RDATA),
        .m_axi_rid(s00_si_converter_M_AXI_RID),
        .m_axi_rlast(s00_si_converter_M_AXI_RLAST),
        .m_axi_rready(s00_si_converter_M_AXI_RREADY),
        .m_axi_rresp(s00_si_converter_M_AXI_RRESP),
        .m_axi_ruser(s00_si_converter_M_AXI_RUSER),
        .m_axi_rvalid(s00_si_converter_M_AXI_RVALID),
        .m_axi_wdata(s00_si_converter_M_AXI_WDATA),
        .m_axi_wlast(s00_si_converter_M_AXI_WLAST),
        .m_axi_wready(s00_si_converter_M_AXI_WREADY),
        .m_axi_wstrb(s00_si_converter_M_AXI_WSTRB),
        .m_axi_wuser(s00_si_converter_M_AXI_WUSER),
        .m_axi_wvalid(s00_si_converter_M_AXI_WVALID),
        .s_axi_araddr(s00_transaction_regulator_M_AXI_ARADDR),
        .s_axi_arcache(s00_transaction_regulator_M_AXI_ARCACHE),
        .s_axi_arid(s00_transaction_regulator_M_AXI_ARID),
        .s_axi_arlen(s00_transaction_regulator_M_AXI_ARLEN),
        .s_axi_arlock(s00_transaction_regulator_M_AXI_ARLOCK),
        .s_axi_arprot(s00_transaction_regulator_M_AXI_ARPROT),
        .s_axi_arqos(s00_transaction_regulator_M_AXI_ARQOS),
        .s_axi_arready(s00_transaction_regulator_M_AXI_ARREADY),
        .s_axi_aruser(s00_transaction_regulator_M_AXI_ARUSER),
        .s_axi_arvalid(s00_transaction_regulator_M_AXI_ARVALID),
        .s_axi_awaddr(s00_transaction_regulator_M_AXI_AWADDR),
        .s_axi_awcache(s00_transaction_regulator_M_AXI_AWCACHE),
        .s_axi_awid(s00_transaction_regulator_M_AXI_AWID),
        .s_axi_awlen(s00_transaction_regulator_M_AXI_AWLEN),
        .s_axi_awlock(s00_transaction_regulator_M_AXI_AWLOCK),
        .s_axi_awprot(s00_transaction_regulator_M_AXI_AWPROT),
        .s_axi_awqos(s00_transaction_regulator_M_AXI_AWQOS),
        .s_axi_awready(s00_transaction_regulator_M_AXI_AWREADY),
        .s_axi_awuser(s00_transaction_regulator_M_AXI_AWUSER),
        .s_axi_awvalid(s00_transaction_regulator_M_AXI_AWVALID),
        .s_axi_bid(s00_transaction_regulator_M_AXI_BID),
        .s_axi_bready(s00_transaction_regulator_M_AXI_BREADY),
        .s_axi_bresp(s00_transaction_regulator_M_AXI_BRESP),
        .s_axi_buser(s00_transaction_regulator_M_AXI_BUSER),
        .s_axi_bvalid(s00_transaction_regulator_M_AXI_BVALID),
        .s_axi_rdata(s00_transaction_regulator_M_AXI_RDATA),
        .s_axi_rid(s00_transaction_regulator_M_AXI_RID),
        .s_axi_rlast(s00_transaction_regulator_M_AXI_RLAST),
        .s_axi_rready(s00_transaction_regulator_M_AXI_RREADY),
        .s_axi_rresp(s00_transaction_regulator_M_AXI_RRESP),
        .s_axi_ruser(s00_transaction_regulator_M_AXI_RUSER),
        .s_axi_rvalid(s00_transaction_regulator_M_AXI_RVALID),
        .s_axi_wdata(s00_transaction_regulator_M_AXI_WDATA),
        .s_axi_wlast(s00_transaction_regulator_M_AXI_WLAST),
        .s_axi_wready(s00_transaction_regulator_M_AXI_WREADY),
        .s_axi_wstrb(s00_transaction_regulator_M_AXI_WSTRB),
        .s_axi_wuser(s00_transaction_regulator_M_AXI_WUSER),
        .s_axi_wvalid(s00_transaction_regulator_M_AXI_WVALID));
  bd_41e8_s00tr_0 s00_transaction_regulator
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s00_transaction_regulator_M_AXI_ARADDR),
        .m_axi_arcache(s00_transaction_regulator_M_AXI_ARCACHE),
        .m_axi_arid(s00_transaction_regulator_M_AXI_ARID),
        .m_axi_arlen(s00_transaction_regulator_M_AXI_ARLEN),
        .m_axi_arlock(s00_transaction_regulator_M_AXI_ARLOCK),
        .m_axi_arprot(s00_transaction_regulator_M_AXI_ARPROT),
        .m_axi_arqos(s00_transaction_regulator_M_AXI_ARQOS),
        .m_axi_arready(s00_transaction_regulator_M_AXI_ARREADY),
        .m_axi_aruser(s00_transaction_regulator_M_AXI_ARUSER),
        .m_axi_arvalid(s00_transaction_regulator_M_AXI_ARVALID),
        .m_axi_awaddr(s00_transaction_regulator_M_AXI_AWADDR),
        .m_axi_awcache(s00_transaction_regulator_M_AXI_AWCACHE),
        .m_axi_awid(s00_transaction_regulator_M_AXI_AWID),
        .m_axi_awlen(s00_transaction_regulator_M_AXI_AWLEN),
        .m_axi_awlock(s00_transaction_regulator_M_AXI_AWLOCK),
        .m_axi_awprot(s00_transaction_regulator_M_AXI_AWPROT),
        .m_axi_awqos(s00_transaction_regulator_M_AXI_AWQOS),
        .m_axi_awready(s00_transaction_regulator_M_AXI_AWREADY),
        .m_axi_awuser(s00_transaction_regulator_M_AXI_AWUSER),
        .m_axi_awvalid(s00_transaction_regulator_M_AXI_AWVALID),
        .m_axi_bid(s00_transaction_regulator_M_AXI_BID),
        .m_axi_bready(s00_transaction_regulator_M_AXI_BREADY),
        .m_axi_bresp(s00_transaction_regulator_M_AXI_BRESP),
        .m_axi_buser(s00_transaction_regulator_M_AXI_BUSER),
        .m_axi_bvalid(s00_transaction_regulator_M_AXI_BVALID),
        .m_axi_rdata(s00_transaction_regulator_M_AXI_RDATA),
        .m_axi_rid(s00_transaction_regulator_M_AXI_RID),
        .m_axi_rlast(s00_transaction_regulator_M_AXI_RLAST),
        .m_axi_rready(s00_transaction_regulator_M_AXI_RREADY),
        .m_axi_rresp(s00_transaction_regulator_M_AXI_RRESP),
        .m_axi_ruser(s00_transaction_regulator_M_AXI_RUSER),
        .m_axi_rvalid(s00_transaction_regulator_M_AXI_RVALID),
        .m_axi_wdata(s00_transaction_regulator_M_AXI_WDATA),
        .m_axi_wlast(s00_transaction_regulator_M_AXI_WLAST),
        .m_axi_wready(s00_transaction_regulator_M_AXI_WREADY),
        .m_axi_wstrb(s00_transaction_regulator_M_AXI_WSTRB),
        .m_axi_wuser(s00_transaction_regulator_M_AXI_WUSER),
        .m_axi_wvalid(s00_transaction_regulator_M_AXI_WVALID),
        .s_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .s_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .s_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .s_axi_arid(s00_mmu_M_AXI_ARID),
        .s_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .s_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .s_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .s_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .s_axi_arready(s00_mmu_M_AXI_ARREADY),
        .s_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .s_axi_aruser(s00_mmu_M_AXI_ARUSER),
        .s_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .s_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .s_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .s_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .s_axi_awid(s00_mmu_M_AXI_AWID),
        .s_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .s_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .s_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .s_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .s_axi_awready(s00_mmu_M_AXI_AWREADY),
        .s_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .s_axi_awuser(s00_mmu_M_AXI_AWUSER),
        .s_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .s_axi_bid(s00_mmu_M_AXI_BID),
        .s_axi_bready(s00_mmu_M_AXI_BREADY),
        .s_axi_bresp(s00_mmu_M_AXI_BRESP),
        .s_axi_buser(s00_mmu_M_AXI_BUSER),
        .s_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .s_axi_rdata(s00_mmu_M_AXI_RDATA),
        .s_axi_rid(s00_mmu_M_AXI_RID),
        .s_axi_rlast(s00_mmu_M_AXI_RLAST),
        .s_axi_rready(s00_mmu_M_AXI_RREADY),
        .s_axi_rresp(s00_mmu_M_AXI_RRESP),
        .s_axi_ruser(s00_mmu_M_AXI_RUSER),
        .s_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .s_axi_wdata(s00_mmu_M_AXI_WDATA),
        .s_axi_wlast(s00_mmu_M_AXI_WLAST),
        .s_axi_wready(s00_mmu_M_AXI_WREADY),
        .s_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .s_axi_wuser(s00_mmu_M_AXI_WUSER),
        .s_axi_wvalid(s00_mmu_M_AXI_WVALID));
endmodule

module s00_nodes_imp_DADN6D
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AR_info;
  output [258:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_AW_info;
  output [258:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [0:0]M_SC_B_info;
  output [121:0]M_SC_B_payld;
  input [0:0]M_SC_B_recv;
  output [0:0]M_SC_B_req;
  output [0:0]M_SC_B_send;
  output [0:0]M_SC_R_info;
  output [534:0]M_SC_R_payld;
  input [0:0]M_SC_R_recv;
  output [0:0]M_SC_R_req;
  output [0:0]M_SC_R_send;
  output [0:0]M_SC_W_info;
  output [591:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [0:0]S_SC_AR_info;
  input [258:0]S_SC_AR_payld;
  output [0:0]S_SC_AR_recv;
  input [0:0]S_SC_AR_req;
  input [0:0]S_SC_AR_send;
  input [0:0]S_SC_AW_info;
  input [258:0]S_SC_AW_payld;
  output [0:0]S_SC_AW_recv;
  input [0:0]S_SC_AW_req;
  input [0:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [121:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_R_info;
  input [534:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input [0:0]S_SC_W_info;
  input [591:0]S_SC_W_payld;
  output [0:0]S_SC_W_recv;
  input [0:0]S_SC_W_req;
  input [0:0]S_SC_W_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]S_SC_AR_1_INFO;
  wire [258:0]S_SC_AR_1_PAYLD;
  wire [0:0]S_SC_AR_1_RECV;
  wire [0:0]S_SC_AR_1_REQ;
  wire [0:0]S_SC_AR_1_SEND;
  wire [0:0]S_SC_AW_1_INFO;
  wire [258:0]S_SC_AW_1_PAYLD;
  wire [0:0]S_SC_AW_1_RECV;
  wire [0:0]S_SC_AW_1_REQ;
  wire [0:0]S_SC_AW_1_SEND;
  wire [0:0]S_SC_B_1_INFO;
  wire [121:0]S_SC_B_1_PAYLD;
  wire [0:0]S_SC_B_1_RECV;
  wire [0:0]S_SC_B_1_REQ;
  wire [0:0]S_SC_B_1_SEND;
  wire [0:0]S_SC_R_1_INFO;
  wire [534:0]S_SC_R_1_PAYLD;
  wire [0:0]S_SC_R_1_RECV;
  wire [0:0]S_SC_R_1_REQ;
  wire [0:0]S_SC_R_1_SEND;
  wire [0:0]S_SC_W_1_INFO;
  wire [591:0]S_SC_W_1_PAYLD;
  wire [0:0]S_SC_W_1_RECV;
  wire [0:0]S_SC_W_1_REQ;
  wire [0:0]S_SC_W_1_SEND;
  wire m_sc_clk_1;
  wire m_sc_resetn_1;
  wire [0:0]s00_ar_node_M_SC_INFO;
  wire [258:0]s00_ar_node_M_SC_PAYLD;
  wire [0:0]s00_ar_node_M_SC_RECV;
  wire [0:0]s00_ar_node_M_SC_REQ;
  wire [0:0]s00_ar_node_M_SC_SEND;
  wire [0:0]s00_aw_node_M_SC_INFO;
  wire [258:0]s00_aw_node_M_SC_PAYLD;
  wire [0:0]s00_aw_node_M_SC_RECV;
  wire [0:0]s00_aw_node_M_SC_REQ;
  wire [0:0]s00_aw_node_M_SC_SEND;
  wire [0:0]s00_b_node_M_SC_INFO;
  wire [121:0]s00_b_node_M_SC_PAYLD;
  wire [0:0]s00_b_node_M_SC_RECV;
  wire [0:0]s00_b_node_M_SC_REQ;
  wire [0:0]s00_b_node_M_SC_SEND;
  wire [0:0]s00_r_node_M_SC_INFO;
  wire [534:0]s00_r_node_M_SC_PAYLD;
  wire [0:0]s00_r_node_M_SC_RECV;
  wire [0:0]s00_r_node_M_SC_REQ;
  wire [0:0]s00_r_node_M_SC_SEND;
  wire [0:0]s00_w_node_M_SC_INFO;
  wire [591:0]s00_w_node_M_SC_PAYLD;
  wire [0:0]s00_w_node_M_SC_RECV;
  wire [0:0]s00_w_node_M_SC_REQ;
  wire [0:0]s00_w_node_M_SC_SEND;
  wire s_sc_clk_1;
  wire s_sc_resetn_1;

  assign M_SC_AR_info[0] = s00_ar_node_M_SC_INFO;
  assign M_SC_AR_payld[258:0] = s00_ar_node_M_SC_PAYLD;
  assign M_SC_AR_req[0] = s00_ar_node_M_SC_REQ;
  assign M_SC_AR_send[0] = s00_ar_node_M_SC_SEND;
  assign M_SC_AW_info[0] = s00_aw_node_M_SC_INFO;
  assign M_SC_AW_payld[258:0] = s00_aw_node_M_SC_PAYLD;
  assign M_SC_AW_req[0] = s00_aw_node_M_SC_REQ;
  assign M_SC_AW_send[0] = s00_aw_node_M_SC_SEND;
  assign M_SC_B_info[0] = s00_b_node_M_SC_INFO;
  assign M_SC_B_payld[121:0] = s00_b_node_M_SC_PAYLD;
  assign M_SC_B_req[0] = s00_b_node_M_SC_REQ;
  assign M_SC_B_send[0] = s00_b_node_M_SC_SEND;
  assign M_SC_R_info[0] = s00_r_node_M_SC_INFO;
  assign M_SC_R_payld[534:0] = s00_r_node_M_SC_PAYLD;
  assign M_SC_R_req[0] = s00_r_node_M_SC_REQ;
  assign M_SC_R_send[0] = s00_r_node_M_SC_SEND;
  assign M_SC_W_info[0] = s00_w_node_M_SC_INFO;
  assign M_SC_W_payld[591:0] = s00_w_node_M_SC_PAYLD;
  assign M_SC_W_req[0] = s00_w_node_M_SC_REQ;
  assign M_SC_W_send[0] = s00_w_node_M_SC_SEND;
  assign S_SC_AR_1_INFO = S_SC_AR_info[0];
  assign S_SC_AR_1_PAYLD = S_SC_AR_payld[258:0];
  assign S_SC_AR_1_REQ = S_SC_AR_req[0];
  assign S_SC_AR_1_SEND = S_SC_AR_send[0];
  assign S_SC_AR_recv[0] = S_SC_AR_1_RECV;
  assign S_SC_AW_1_INFO = S_SC_AW_info[0];
  assign S_SC_AW_1_PAYLD = S_SC_AW_payld[258:0];
  assign S_SC_AW_1_REQ = S_SC_AW_req[0];
  assign S_SC_AW_1_SEND = S_SC_AW_send[0];
  assign S_SC_AW_recv[0] = S_SC_AW_1_RECV;
  assign S_SC_B_1_INFO = S_SC_B_info[0];
  assign S_SC_B_1_PAYLD = S_SC_B_payld[121:0];
  assign S_SC_B_1_REQ = S_SC_B_req[0];
  assign S_SC_B_1_SEND = S_SC_B_send[0];
  assign S_SC_B_recv[0] = S_SC_B_1_RECV;
  assign S_SC_R_1_INFO = S_SC_R_info[0];
  assign S_SC_R_1_PAYLD = S_SC_R_payld[534:0];
  assign S_SC_R_1_REQ = S_SC_R_req[0];
  assign S_SC_R_1_SEND = S_SC_R_send[0];
  assign S_SC_R_recv[0] = S_SC_R_1_RECV;
  assign S_SC_W_1_INFO = S_SC_W_info[0];
  assign S_SC_W_1_PAYLD = S_SC_W_payld[591:0];
  assign S_SC_W_1_REQ = S_SC_W_req[0];
  assign S_SC_W_1_SEND = S_SC_W_send[0];
  assign S_SC_W_recv[0] = S_SC_W_1_RECV;
  assign m_sc_clk_1 = m_sc_clk;
  assign m_sc_resetn_1 = m_sc_resetn;
  assign s00_ar_node_M_SC_RECV = M_SC_AR_recv[0];
  assign s00_aw_node_M_SC_RECV = M_SC_AW_recv[0];
  assign s00_b_node_M_SC_RECV = M_SC_B_recv[0];
  assign s00_r_node_M_SC_RECV = M_SC_R_recv[0];
  assign s00_w_node_M_SC_RECV = M_SC_W_recv[0];
  assign s_sc_clk_1 = s_sc_clk;
  assign s_sc_resetn_1 = s_sc_resetn;
  bd_41e8_sarn_0 s00_ar_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s00_ar_node_M_SC_INFO),
        .m_sc_payld(s00_ar_node_M_SC_PAYLD),
        .m_sc_recv(s00_ar_node_M_SC_RECV),
        .m_sc_req(s00_ar_node_M_SC_REQ),
        .m_sc_send(s00_ar_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_AR_1_INFO),
        .s_sc_payld(S_SC_AR_1_PAYLD),
        .s_sc_recv(S_SC_AR_1_RECV),
        .s_sc_req(S_SC_AR_1_REQ),
        .s_sc_send(S_SC_AR_1_SEND));
  bd_41e8_sawn_0 s00_aw_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s00_aw_node_M_SC_INFO),
        .m_sc_payld(s00_aw_node_M_SC_PAYLD),
        .m_sc_recv(s00_aw_node_M_SC_RECV),
        .m_sc_req(s00_aw_node_M_SC_REQ),
        .m_sc_send(s00_aw_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_AW_1_INFO),
        .s_sc_payld(S_SC_AW_1_PAYLD),
        .s_sc_recv(S_SC_AW_1_RECV),
        .s_sc_req(S_SC_AW_1_REQ),
        .s_sc_send(S_SC_AW_1_SEND));
  bd_41e8_sbn_0 s00_b_node
       (.m_sc_aclk(s_sc_clk_1),
        .m_sc_aresetn(s_sc_resetn_1),
        .m_sc_info(s00_b_node_M_SC_INFO),
        .m_sc_payld(s00_b_node_M_SC_PAYLD),
        .m_sc_recv(s00_b_node_M_SC_RECV),
        .m_sc_req(s00_b_node_M_SC_REQ),
        .m_sc_send(s00_b_node_M_SC_SEND),
        .s_sc_aclk(m_sc_clk_1),
        .s_sc_aresetn(m_sc_resetn_1),
        .s_sc_info(S_SC_B_1_INFO),
        .s_sc_payld(S_SC_B_1_PAYLD),
        .s_sc_recv(S_SC_B_1_RECV),
        .s_sc_req(S_SC_B_1_REQ),
        .s_sc_send(S_SC_B_1_SEND));
  bd_41e8_srn_0 s00_r_node
       (.m_sc_aclk(s_sc_clk_1),
        .m_sc_aresetn(s_sc_resetn_1),
        .m_sc_info(s00_r_node_M_SC_INFO),
        .m_sc_payld(s00_r_node_M_SC_PAYLD),
        .m_sc_recv(s00_r_node_M_SC_RECV),
        .m_sc_req(s00_r_node_M_SC_REQ),
        .m_sc_send(s00_r_node_M_SC_SEND),
        .s_sc_aclk(m_sc_clk_1),
        .s_sc_aresetn(m_sc_resetn_1),
        .s_sc_info(S_SC_R_1_INFO),
        .s_sc_payld(S_SC_R_1_PAYLD),
        .s_sc_recv(S_SC_R_1_RECV),
        .s_sc_req(S_SC_R_1_REQ),
        .s_sc_send(S_SC_R_1_SEND));
  bd_41e8_swn_0 s00_w_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s00_w_node_M_SC_INFO),
        .m_sc_payld(s00_w_node_M_SC_PAYLD),
        .m_sc_recv(s00_w_node_M_SC_RECV),
        .m_sc_req(s00_w_node_M_SC_REQ),
        .m_sc_send(s00_w_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_W_1_INFO),
        .s_sc_payld(S_SC_W_1_PAYLD),
        .s_sc_recv(S_SC_W_1_RECV),
        .s_sc_req(S_SC_W_1_REQ),
        .s_sc_send(S_SC_W_1_SEND));
endmodule

module s01_entry_pipeline_imp_18Q0KT7
   (aclk,
    aresetn,
    m_axi_araddr,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awcache,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_bid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wuser,
    m_axi_wvalid,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arready,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awready,
    s_axi_awsize,
    s_axi_awvalid,
    s_axi_bid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input aclk;
  input aresetn;
  output [33:0]m_axi_araddr;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [1023:0]m_axi_aruser;
  output m_axi_arvalid;
  output [33:0]m_axi_awaddr;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [1023:0]m_axi_awuser;
  output m_axi_awvalid;
  input [2:0]m_axi_bid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input [1023:0]m_axi_buser;
  input m_axi_bvalid;
  input [511:0]m_axi_rdata;
  input [2:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input [1023:0]m_axi_ruser;
  input m_axi_rvalid;
  output [511:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [63:0]m_axi_wstrb;
  output [1023:0]m_axi_wuser;
  output m_axi_wvalid;
  input [33:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  output s_axi_arready;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  input [33:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  output s_axi_awready;
  input [2:0]s_axi_awsize;
  input s_axi_awvalid;
  output [3:0]s_axi_bid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [511:0]s_axi_rdata;
  output [3:0]s_axi_rid;
  output s_axi_rlast;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [511:0]s_axi_wdata;
  input s_axi_wlast;
  output s_axi_wready;
  input [63:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire aclk_1;
  wire aresetn_1;
  wire [33:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [3:0]s01_mmu_M_AXI_ARID;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire [1023:0]s01_mmu_M_AXI_ARUSER;
  wire s01_mmu_M_AXI_ARVALID;
  wire [33:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [3:0]s01_mmu_M_AXI_AWID;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire [1023:0]s01_mmu_M_AXI_AWUSER;
  wire s01_mmu_M_AXI_AWVALID;
  wire [3:0]s01_mmu_M_AXI_BID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire [1023:0]s01_mmu_M_AXI_BUSER;
  wire s01_mmu_M_AXI_BVALID;
  wire [511:0]s01_mmu_M_AXI_RDATA;
  wire [3:0]s01_mmu_M_AXI_RID;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire [1023:0]s01_mmu_M_AXI_RUSER;
  wire s01_mmu_M_AXI_RVALID;
  wire [511:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [63:0]s01_mmu_M_AXI_WSTRB;
  wire [1023:0]s01_mmu_M_AXI_WUSER;
  wire s01_mmu_M_AXI_WVALID;
  wire [33:0]s01_si_converter_M_AXI_ARADDR;
  wire [3:0]s01_si_converter_M_AXI_ARCACHE;
  wire [2:0]s01_si_converter_M_AXI_ARID;
  wire [7:0]s01_si_converter_M_AXI_ARLEN;
  wire [0:0]s01_si_converter_M_AXI_ARLOCK;
  wire [2:0]s01_si_converter_M_AXI_ARPROT;
  wire [3:0]s01_si_converter_M_AXI_ARQOS;
  wire s01_si_converter_M_AXI_ARREADY;
  wire [1023:0]s01_si_converter_M_AXI_ARUSER;
  wire s01_si_converter_M_AXI_ARVALID;
  wire [33:0]s01_si_converter_M_AXI_AWADDR;
  wire [3:0]s01_si_converter_M_AXI_AWCACHE;
  wire [2:0]s01_si_converter_M_AXI_AWID;
  wire [7:0]s01_si_converter_M_AXI_AWLEN;
  wire [0:0]s01_si_converter_M_AXI_AWLOCK;
  wire [2:0]s01_si_converter_M_AXI_AWPROT;
  wire [3:0]s01_si_converter_M_AXI_AWQOS;
  wire s01_si_converter_M_AXI_AWREADY;
  wire [1023:0]s01_si_converter_M_AXI_AWUSER;
  wire s01_si_converter_M_AXI_AWVALID;
  wire [2:0]s01_si_converter_M_AXI_BID;
  wire s01_si_converter_M_AXI_BREADY;
  wire [1:0]s01_si_converter_M_AXI_BRESP;
  wire [1023:0]s01_si_converter_M_AXI_BUSER;
  wire s01_si_converter_M_AXI_BVALID;
  wire [511:0]s01_si_converter_M_AXI_RDATA;
  wire [2:0]s01_si_converter_M_AXI_RID;
  wire s01_si_converter_M_AXI_RLAST;
  wire s01_si_converter_M_AXI_RREADY;
  wire [1:0]s01_si_converter_M_AXI_RRESP;
  wire [1023:0]s01_si_converter_M_AXI_RUSER;
  wire s01_si_converter_M_AXI_RVALID;
  wire [511:0]s01_si_converter_M_AXI_WDATA;
  wire s01_si_converter_M_AXI_WLAST;
  wire s01_si_converter_M_AXI_WREADY;
  wire [63:0]s01_si_converter_M_AXI_WSTRB;
  wire [1023:0]s01_si_converter_M_AXI_WUSER;
  wire s01_si_converter_M_AXI_WVALID;
  wire [33:0]s01_transaction_regulator_M_AXI_ARADDR;
  wire [3:0]s01_transaction_regulator_M_AXI_ARCACHE;
  wire [2:0]s01_transaction_regulator_M_AXI_ARID;
  wire [7:0]s01_transaction_regulator_M_AXI_ARLEN;
  wire [0:0]s01_transaction_regulator_M_AXI_ARLOCK;
  wire [2:0]s01_transaction_regulator_M_AXI_ARPROT;
  wire [3:0]s01_transaction_regulator_M_AXI_ARQOS;
  wire s01_transaction_regulator_M_AXI_ARREADY;
  wire [1023:0]s01_transaction_regulator_M_AXI_ARUSER;
  wire s01_transaction_regulator_M_AXI_ARVALID;
  wire [33:0]s01_transaction_regulator_M_AXI_AWADDR;
  wire [3:0]s01_transaction_regulator_M_AXI_AWCACHE;
  wire [2:0]s01_transaction_regulator_M_AXI_AWID;
  wire [7:0]s01_transaction_regulator_M_AXI_AWLEN;
  wire [0:0]s01_transaction_regulator_M_AXI_AWLOCK;
  wire [2:0]s01_transaction_regulator_M_AXI_AWPROT;
  wire [3:0]s01_transaction_regulator_M_AXI_AWQOS;
  wire s01_transaction_regulator_M_AXI_AWREADY;
  wire [1023:0]s01_transaction_regulator_M_AXI_AWUSER;
  wire s01_transaction_regulator_M_AXI_AWVALID;
  wire [2:0]s01_transaction_regulator_M_AXI_BID;
  wire s01_transaction_regulator_M_AXI_BREADY;
  wire [1:0]s01_transaction_regulator_M_AXI_BRESP;
  wire [1023:0]s01_transaction_regulator_M_AXI_BUSER;
  wire s01_transaction_regulator_M_AXI_BVALID;
  wire [511:0]s01_transaction_regulator_M_AXI_RDATA;
  wire [2:0]s01_transaction_regulator_M_AXI_RID;
  wire s01_transaction_regulator_M_AXI_RLAST;
  wire s01_transaction_regulator_M_AXI_RREADY;
  wire [1:0]s01_transaction_regulator_M_AXI_RRESP;
  wire [1023:0]s01_transaction_regulator_M_AXI_RUSER;
  wire s01_transaction_regulator_M_AXI_RVALID;
  wire [511:0]s01_transaction_regulator_M_AXI_WDATA;
  wire s01_transaction_regulator_M_AXI_WLAST;
  wire s01_transaction_regulator_M_AXI_WREADY;
  wire [63:0]s01_transaction_regulator_M_AXI_WSTRB;
  wire [1023:0]s01_transaction_regulator_M_AXI_WUSER;
  wire s01_transaction_regulator_M_AXI_WVALID;
  wire [33:0]s_axi_1_ARADDR;
  wire [1:0]s_axi_1_ARBURST;
  wire [3:0]s_axi_1_ARCACHE;
  wire [3:0]s_axi_1_ARID;
  wire [7:0]s_axi_1_ARLEN;
  wire [0:0]s_axi_1_ARLOCK;
  wire [2:0]s_axi_1_ARPROT;
  wire [3:0]s_axi_1_ARQOS;
  wire s_axi_1_ARREADY;
  wire [2:0]s_axi_1_ARSIZE;
  wire s_axi_1_ARVALID;
  wire [33:0]s_axi_1_AWADDR;
  wire [1:0]s_axi_1_AWBURST;
  wire [3:0]s_axi_1_AWCACHE;
  wire [3:0]s_axi_1_AWID;
  wire [7:0]s_axi_1_AWLEN;
  wire [0:0]s_axi_1_AWLOCK;
  wire [2:0]s_axi_1_AWPROT;
  wire [3:0]s_axi_1_AWQOS;
  wire s_axi_1_AWREADY;
  wire [2:0]s_axi_1_AWSIZE;
  wire s_axi_1_AWVALID;
  wire [3:0]s_axi_1_BID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [511:0]s_axi_1_RDATA;
  wire [3:0]s_axi_1_RID;
  wire s_axi_1_RLAST;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [511:0]s_axi_1_WDATA;
  wire s_axi_1_WLAST;
  wire s_axi_1_WREADY;
  wire [63:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign m_axi_araddr[33:0] = s01_si_converter_M_AXI_ARADDR;
  assign m_axi_arcache[3:0] = s01_si_converter_M_AXI_ARCACHE;
  assign m_axi_arid[2:0] = s01_si_converter_M_AXI_ARID;
  assign m_axi_arlen[7:0] = s01_si_converter_M_AXI_ARLEN;
  assign m_axi_arlock[0] = s01_si_converter_M_AXI_ARLOCK;
  assign m_axi_arprot[2:0] = s01_si_converter_M_AXI_ARPROT;
  assign m_axi_arqos[3:0] = s01_si_converter_M_AXI_ARQOS;
  assign m_axi_aruser[1023:0] = s01_si_converter_M_AXI_ARUSER;
  assign m_axi_arvalid = s01_si_converter_M_AXI_ARVALID;
  assign m_axi_awaddr[33:0] = s01_si_converter_M_AXI_AWADDR;
  assign m_axi_awcache[3:0] = s01_si_converter_M_AXI_AWCACHE;
  assign m_axi_awid[2:0] = s01_si_converter_M_AXI_AWID;
  assign m_axi_awlen[7:0] = s01_si_converter_M_AXI_AWLEN;
  assign m_axi_awlock[0] = s01_si_converter_M_AXI_AWLOCK;
  assign m_axi_awprot[2:0] = s01_si_converter_M_AXI_AWPROT;
  assign m_axi_awqos[3:0] = s01_si_converter_M_AXI_AWQOS;
  assign m_axi_awuser[1023:0] = s01_si_converter_M_AXI_AWUSER;
  assign m_axi_awvalid = s01_si_converter_M_AXI_AWVALID;
  assign m_axi_bready = s01_si_converter_M_AXI_BREADY;
  assign m_axi_rready = s01_si_converter_M_AXI_RREADY;
  assign m_axi_wdata[511:0] = s01_si_converter_M_AXI_WDATA;
  assign m_axi_wlast = s01_si_converter_M_AXI_WLAST;
  assign m_axi_wstrb[63:0] = s01_si_converter_M_AXI_WSTRB;
  assign m_axi_wuser[1023:0] = s01_si_converter_M_AXI_WUSER;
  assign m_axi_wvalid = s01_si_converter_M_AXI_WVALID;
  assign s01_si_converter_M_AXI_ARREADY = m_axi_arready;
  assign s01_si_converter_M_AXI_AWREADY = m_axi_awready;
  assign s01_si_converter_M_AXI_BID = m_axi_bid[2:0];
  assign s01_si_converter_M_AXI_BRESP = m_axi_bresp[1:0];
  assign s01_si_converter_M_AXI_BUSER = m_axi_buser[1023:0];
  assign s01_si_converter_M_AXI_BVALID = m_axi_bvalid;
  assign s01_si_converter_M_AXI_RDATA = m_axi_rdata[511:0];
  assign s01_si_converter_M_AXI_RID = m_axi_rid[2:0];
  assign s01_si_converter_M_AXI_RLAST = m_axi_rlast;
  assign s01_si_converter_M_AXI_RRESP = m_axi_rresp[1:0];
  assign s01_si_converter_M_AXI_RUSER = m_axi_ruser[1023:0];
  assign s01_si_converter_M_AXI_RVALID = m_axi_rvalid;
  assign s01_si_converter_M_AXI_WREADY = m_axi_wready;
  assign s_axi_1_ARADDR = s_axi_araddr[33:0];
  assign s_axi_1_ARBURST = s_axi_arburst[1:0];
  assign s_axi_1_ARCACHE = s_axi_arcache[3:0];
  assign s_axi_1_ARID = s_axi_arid[3:0];
  assign s_axi_1_ARLEN = s_axi_arlen[7:0];
  assign s_axi_1_ARLOCK = s_axi_arlock[0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARQOS = s_axi_arqos[3:0];
  assign s_axi_1_ARSIZE = s_axi_arsize[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[33:0];
  assign s_axi_1_AWBURST = s_axi_awburst[1:0];
  assign s_axi_1_AWCACHE = s_axi_awcache[3:0];
  assign s_axi_1_AWID = s_axi_awid[3:0];
  assign s_axi_1_AWLEN = s_axi_awlen[7:0];
  assign s_axi_1_AWLOCK = s_axi_awlock[0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWQOS = s_axi_awqos[3:0];
  assign s_axi_1_AWSIZE = s_axi_awsize[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[511:0];
  assign s_axi_1_WLAST = s_axi_wlast;
  assign s_axi_1_WSTRB = s_axi_wstrb[63:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bid[3:0] = s_axi_1_BID;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[511:0] = s_axi_1_RDATA;
  assign s_axi_rid[3:0] = s_axi_1_RID;
  assign s_axi_rlast = s_axi_1_RLAST;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  bd_41e8_s01mmu_0 s01_mmu
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s01_mmu_M_AXI_ARID),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_aruser(s01_mmu_M_AXI_ARUSER),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s01_mmu_M_AXI_AWID),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awuser(s01_mmu_M_AXI_AWUSER),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bid(s01_mmu_M_AXI_BID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_buser(s01_mmu_M_AXI_BUSER),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rid(s01_mmu_M_AXI_RID),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_ruser(s01_mmu_M_AXI_RUSER),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wuser(s01_mmu_M_AXI_WUSER),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_arburst(s_axi_1_ARBURST),
        .s_axi_arcache(s_axi_1_ARCACHE),
        .s_axi_arid(s_axi_1_ARID),
        .s_axi_arlen(s_axi_1_ARLEN),
        .s_axi_arlock(s_axi_1_ARLOCK),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arqos(s_axi_1_ARQOS),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arsize(s_axi_1_ARSIZE),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awburst(s_axi_1_AWBURST),
        .s_axi_awcache(s_axi_1_AWCACHE),
        .s_axi_awid(s_axi_1_AWID),
        .s_axi_awlen(s_axi_1_AWLEN),
        .s_axi_awlock(s_axi_1_AWLOCK),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awqos(s_axi_1_AWQOS),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awsize(s_axi_1_AWSIZE),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bid(s_axi_1_BID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rid(s_axi_1_RID),
        .s_axi_rlast(s_axi_1_RLAST),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wlast(s_axi_1_WLAST),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
  bd_41e8_s01sic_0 s01_si_converter
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s01_si_converter_M_AXI_ARADDR),
        .m_axi_arcache(s01_si_converter_M_AXI_ARCACHE),
        .m_axi_arid(s01_si_converter_M_AXI_ARID),
        .m_axi_arlen(s01_si_converter_M_AXI_ARLEN),
        .m_axi_arlock(s01_si_converter_M_AXI_ARLOCK),
        .m_axi_arprot(s01_si_converter_M_AXI_ARPROT),
        .m_axi_arqos(s01_si_converter_M_AXI_ARQOS),
        .m_axi_arready(s01_si_converter_M_AXI_ARREADY),
        .m_axi_aruser(s01_si_converter_M_AXI_ARUSER),
        .m_axi_arvalid(s01_si_converter_M_AXI_ARVALID),
        .m_axi_awaddr(s01_si_converter_M_AXI_AWADDR),
        .m_axi_awcache(s01_si_converter_M_AXI_AWCACHE),
        .m_axi_awid(s01_si_converter_M_AXI_AWID),
        .m_axi_awlen(s01_si_converter_M_AXI_AWLEN),
        .m_axi_awlock(s01_si_converter_M_AXI_AWLOCK),
        .m_axi_awprot(s01_si_converter_M_AXI_AWPROT),
        .m_axi_awqos(s01_si_converter_M_AXI_AWQOS),
        .m_axi_awready(s01_si_converter_M_AXI_AWREADY),
        .m_axi_awuser(s01_si_converter_M_AXI_AWUSER),
        .m_axi_awvalid(s01_si_converter_M_AXI_AWVALID),
        .m_axi_bid(s01_si_converter_M_AXI_BID),
        .m_axi_bready(s01_si_converter_M_AXI_BREADY),
        .m_axi_bresp(s01_si_converter_M_AXI_BRESP),
        .m_axi_buser(s01_si_converter_M_AXI_BUSER),
        .m_axi_bvalid(s01_si_converter_M_AXI_BVALID),
        .m_axi_rdata(s01_si_converter_M_AXI_RDATA),
        .m_axi_rid(s01_si_converter_M_AXI_RID),
        .m_axi_rlast(s01_si_converter_M_AXI_RLAST),
        .m_axi_rready(s01_si_converter_M_AXI_RREADY),
        .m_axi_rresp(s01_si_converter_M_AXI_RRESP),
        .m_axi_ruser(s01_si_converter_M_AXI_RUSER),
        .m_axi_rvalid(s01_si_converter_M_AXI_RVALID),
        .m_axi_wdata(s01_si_converter_M_AXI_WDATA),
        .m_axi_wlast(s01_si_converter_M_AXI_WLAST),
        .m_axi_wready(s01_si_converter_M_AXI_WREADY),
        .m_axi_wstrb(s01_si_converter_M_AXI_WSTRB),
        .m_axi_wuser(s01_si_converter_M_AXI_WUSER),
        .m_axi_wvalid(s01_si_converter_M_AXI_WVALID),
        .s_axi_araddr(s01_transaction_regulator_M_AXI_ARADDR),
        .s_axi_arcache(s01_transaction_regulator_M_AXI_ARCACHE),
        .s_axi_arid(s01_transaction_regulator_M_AXI_ARID),
        .s_axi_arlen(s01_transaction_regulator_M_AXI_ARLEN),
        .s_axi_arlock(s01_transaction_regulator_M_AXI_ARLOCK),
        .s_axi_arprot(s01_transaction_regulator_M_AXI_ARPROT),
        .s_axi_arqos(s01_transaction_regulator_M_AXI_ARQOS),
        .s_axi_arready(s01_transaction_regulator_M_AXI_ARREADY),
        .s_axi_aruser(s01_transaction_regulator_M_AXI_ARUSER),
        .s_axi_arvalid(s01_transaction_regulator_M_AXI_ARVALID),
        .s_axi_awaddr(s01_transaction_regulator_M_AXI_AWADDR),
        .s_axi_awcache(s01_transaction_regulator_M_AXI_AWCACHE),
        .s_axi_awid(s01_transaction_regulator_M_AXI_AWID),
        .s_axi_awlen(s01_transaction_regulator_M_AXI_AWLEN),
        .s_axi_awlock(s01_transaction_regulator_M_AXI_AWLOCK),
        .s_axi_awprot(s01_transaction_regulator_M_AXI_AWPROT),
        .s_axi_awqos(s01_transaction_regulator_M_AXI_AWQOS),
        .s_axi_awready(s01_transaction_regulator_M_AXI_AWREADY),
        .s_axi_awuser(s01_transaction_regulator_M_AXI_AWUSER),
        .s_axi_awvalid(s01_transaction_regulator_M_AXI_AWVALID),
        .s_axi_bid(s01_transaction_regulator_M_AXI_BID),
        .s_axi_bready(s01_transaction_regulator_M_AXI_BREADY),
        .s_axi_bresp(s01_transaction_regulator_M_AXI_BRESP),
        .s_axi_buser(s01_transaction_regulator_M_AXI_BUSER),
        .s_axi_bvalid(s01_transaction_regulator_M_AXI_BVALID),
        .s_axi_rdata(s01_transaction_regulator_M_AXI_RDATA),
        .s_axi_rid(s01_transaction_regulator_M_AXI_RID),
        .s_axi_rlast(s01_transaction_regulator_M_AXI_RLAST),
        .s_axi_rready(s01_transaction_regulator_M_AXI_RREADY),
        .s_axi_rresp(s01_transaction_regulator_M_AXI_RRESP),
        .s_axi_ruser(s01_transaction_regulator_M_AXI_RUSER),
        .s_axi_rvalid(s01_transaction_regulator_M_AXI_RVALID),
        .s_axi_wdata(s01_transaction_regulator_M_AXI_WDATA),
        .s_axi_wlast(s01_transaction_regulator_M_AXI_WLAST),
        .s_axi_wready(s01_transaction_regulator_M_AXI_WREADY),
        .s_axi_wstrb(s01_transaction_regulator_M_AXI_WSTRB),
        .s_axi_wuser(s01_transaction_regulator_M_AXI_WUSER),
        .s_axi_wvalid(s01_transaction_regulator_M_AXI_WVALID));
  bd_41e8_s01tr_0 s01_transaction_regulator
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(s01_transaction_regulator_M_AXI_ARADDR),
        .m_axi_arcache(s01_transaction_regulator_M_AXI_ARCACHE),
        .m_axi_arid(s01_transaction_regulator_M_AXI_ARID),
        .m_axi_arlen(s01_transaction_regulator_M_AXI_ARLEN),
        .m_axi_arlock(s01_transaction_regulator_M_AXI_ARLOCK),
        .m_axi_arprot(s01_transaction_regulator_M_AXI_ARPROT),
        .m_axi_arqos(s01_transaction_regulator_M_AXI_ARQOS),
        .m_axi_arready(s01_transaction_regulator_M_AXI_ARREADY),
        .m_axi_aruser(s01_transaction_regulator_M_AXI_ARUSER),
        .m_axi_arvalid(s01_transaction_regulator_M_AXI_ARVALID),
        .m_axi_awaddr(s01_transaction_regulator_M_AXI_AWADDR),
        .m_axi_awcache(s01_transaction_regulator_M_AXI_AWCACHE),
        .m_axi_awid(s01_transaction_regulator_M_AXI_AWID),
        .m_axi_awlen(s01_transaction_regulator_M_AXI_AWLEN),
        .m_axi_awlock(s01_transaction_regulator_M_AXI_AWLOCK),
        .m_axi_awprot(s01_transaction_regulator_M_AXI_AWPROT),
        .m_axi_awqos(s01_transaction_regulator_M_AXI_AWQOS),
        .m_axi_awready(s01_transaction_regulator_M_AXI_AWREADY),
        .m_axi_awuser(s01_transaction_regulator_M_AXI_AWUSER),
        .m_axi_awvalid(s01_transaction_regulator_M_AXI_AWVALID),
        .m_axi_bid(s01_transaction_regulator_M_AXI_BID),
        .m_axi_bready(s01_transaction_regulator_M_AXI_BREADY),
        .m_axi_bresp(s01_transaction_regulator_M_AXI_BRESP),
        .m_axi_buser(s01_transaction_regulator_M_AXI_BUSER),
        .m_axi_bvalid(s01_transaction_regulator_M_AXI_BVALID),
        .m_axi_rdata(s01_transaction_regulator_M_AXI_RDATA),
        .m_axi_rid(s01_transaction_regulator_M_AXI_RID),
        .m_axi_rlast(s01_transaction_regulator_M_AXI_RLAST),
        .m_axi_rready(s01_transaction_regulator_M_AXI_RREADY),
        .m_axi_rresp(s01_transaction_regulator_M_AXI_RRESP),
        .m_axi_ruser(s01_transaction_regulator_M_AXI_RUSER),
        .m_axi_rvalid(s01_transaction_regulator_M_AXI_RVALID),
        .m_axi_wdata(s01_transaction_regulator_M_AXI_WDATA),
        .m_axi_wlast(s01_transaction_regulator_M_AXI_WLAST),
        .m_axi_wready(s01_transaction_regulator_M_AXI_WREADY),
        .m_axi_wstrb(s01_transaction_regulator_M_AXI_WSTRB),
        .m_axi_wuser(s01_transaction_regulator_M_AXI_WUSER),
        .m_axi_wvalid(s01_transaction_regulator_M_AXI_WVALID),
        .s_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .s_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .s_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .s_axi_arid(s01_mmu_M_AXI_ARID),
        .s_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .s_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .s_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .s_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .s_axi_arready(s01_mmu_M_AXI_ARREADY),
        .s_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .s_axi_aruser(s01_mmu_M_AXI_ARUSER),
        .s_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .s_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .s_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .s_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .s_axi_awid(s01_mmu_M_AXI_AWID),
        .s_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .s_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .s_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .s_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .s_axi_awready(s01_mmu_M_AXI_AWREADY),
        .s_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .s_axi_awuser(s01_mmu_M_AXI_AWUSER),
        .s_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .s_axi_bid(s01_mmu_M_AXI_BID),
        .s_axi_bready(s01_mmu_M_AXI_BREADY),
        .s_axi_bresp(s01_mmu_M_AXI_BRESP),
        .s_axi_buser(s01_mmu_M_AXI_BUSER),
        .s_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .s_axi_rdata(s01_mmu_M_AXI_RDATA),
        .s_axi_rid(s01_mmu_M_AXI_RID),
        .s_axi_rlast(s01_mmu_M_AXI_RLAST),
        .s_axi_rready(s01_mmu_M_AXI_RREADY),
        .s_axi_rresp(s01_mmu_M_AXI_RRESP),
        .s_axi_ruser(s01_mmu_M_AXI_RUSER),
        .s_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .s_axi_wdata(s01_mmu_M_AXI_WDATA),
        .s_axi_wlast(s01_mmu_M_AXI_WLAST),
        .s_axi_wready(s01_mmu_M_AXI_WREADY),
        .s_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .s_axi_wuser(s01_mmu_M_AXI_WUSER),
        .s_axi_wvalid(s01_mmu_M_AXI_WVALID));
endmodule

module s01_nodes_imp_1DN6TIB
   (M_SC_AR_info,
    M_SC_AR_payld,
    M_SC_AR_recv,
    M_SC_AR_req,
    M_SC_AR_send,
    M_SC_AW_info,
    M_SC_AW_payld,
    M_SC_AW_recv,
    M_SC_AW_req,
    M_SC_AW_send,
    M_SC_B_info,
    M_SC_B_payld,
    M_SC_B_recv,
    M_SC_B_req,
    M_SC_B_send,
    M_SC_R_info,
    M_SC_R_payld,
    M_SC_R_recv,
    M_SC_R_req,
    M_SC_R_send,
    M_SC_W_info,
    M_SC_W_payld,
    M_SC_W_recv,
    M_SC_W_req,
    M_SC_W_send,
    S_SC_AR_info,
    S_SC_AR_payld,
    S_SC_AR_recv,
    S_SC_AR_req,
    S_SC_AR_send,
    S_SC_AW_info,
    S_SC_AW_payld,
    S_SC_AW_recv,
    S_SC_AW_req,
    S_SC_AW_send,
    S_SC_B_info,
    S_SC_B_payld,
    S_SC_B_recv,
    S_SC_B_req,
    S_SC_B_send,
    S_SC_R_info,
    S_SC_R_payld,
    S_SC_R_recv,
    S_SC_R_req,
    S_SC_R_send,
    S_SC_W_info,
    S_SC_W_payld,
    S_SC_W_recv,
    S_SC_W_req,
    S_SC_W_send,
    m_sc_clk,
    m_sc_resetn,
    s_sc_clk,
    s_sc_resetn);
  output [0:0]M_SC_AR_info;
  output [258:0]M_SC_AR_payld;
  input [0:0]M_SC_AR_recv;
  output [0:0]M_SC_AR_req;
  output [0:0]M_SC_AR_send;
  output [0:0]M_SC_AW_info;
  output [258:0]M_SC_AW_payld;
  input [0:0]M_SC_AW_recv;
  output [0:0]M_SC_AW_req;
  output [0:0]M_SC_AW_send;
  output [0:0]M_SC_B_info;
  output [121:0]M_SC_B_payld;
  input [0:0]M_SC_B_recv;
  output [0:0]M_SC_B_req;
  output [0:0]M_SC_B_send;
  output [0:0]M_SC_R_info;
  output [534:0]M_SC_R_payld;
  input [0:0]M_SC_R_recv;
  output [0:0]M_SC_R_req;
  output [0:0]M_SC_R_send;
  output [0:0]M_SC_W_info;
  output [591:0]M_SC_W_payld;
  input [0:0]M_SC_W_recv;
  output [0:0]M_SC_W_req;
  output [0:0]M_SC_W_send;
  input [0:0]S_SC_AR_info;
  input [258:0]S_SC_AR_payld;
  output [0:0]S_SC_AR_recv;
  input [0:0]S_SC_AR_req;
  input [0:0]S_SC_AR_send;
  input [0:0]S_SC_AW_info;
  input [258:0]S_SC_AW_payld;
  output [0:0]S_SC_AW_recv;
  input [0:0]S_SC_AW_req;
  input [0:0]S_SC_AW_send;
  input [0:0]S_SC_B_info;
  input [121:0]S_SC_B_payld;
  output [0:0]S_SC_B_recv;
  input [0:0]S_SC_B_req;
  input [0:0]S_SC_B_send;
  input [0:0]S_SC_R_info;
  input [534:0]S_SC_R_payld;
  output [0:0]S_SC_R_recv;
  input [0:0]S_SC_R_req;
  input [0:0]S_SC_R_send;
  input [0:0]S_SC_W_info;
  input [591:0]S_SC_W_payld;
  output [0:0]S_SC_W_recv;
  input [0:0]S_SC_W_req;
  input [0:0]S_SC_W_send;
  input m_sc_clk;
  input m_sc_resetn;
  input s_sc_clk;
  input s_sc_resetn;

  wire [0:0]S_SC_AR_1_INFO;
  wire [258:0]S_SC_AR_1_PAYLD;
  wire [0:0]S_SC_AR_1_RECV;
  wire [0:0]S_SC_AR_1_REQ;
  wire [0:0]S_SC_AR_1_SEND;
  wire [0:0]S_SC_AW_1_INFO;
  wire [258:0]S_SC_AW_1_PAYLD;
  wire [0:0]S_SC_AW_1_RECV;
  wire [0:0]S_SC_AW_1_REQ;
  wire [0:0]S_SC_AW_1_SEND;
  wire [0:0]S_SC_B_1_INFO;
  wire [121:0]S_SC_B_1_PAYLD;
  wire [0:0]S_SC_B_1_RECV;
  wire [0:0]S_SC_B_1_REQ;
  wire [0:0]S_SC_B_1_SEND;
  wire [0:0]S_SC_R_1_INFO;
  wire [534:0]S_SC_R_1_PAYLD;
  wire [0:0]S_SC_R_1_RECV;
  wire [0:0]S_SC_R_1_REQ;
  wire [0:0]S_SC_R_1_SEND;
  wire [0:0]S_SC_W_1_INFO;
  wire [591:0]S_SC_W_1_PAYLD;
  wire [0:0]S_SC_W_1_RECV;
  wire [0:0]S_SC_W_1_REQ;
  wire [0:0]S_SC_W_1_SEND;
  wire m_sc_clk_1;
  wire m_sc_resetn_1;
  wire [0:0]s01_ar_node_M_SC_INFO;
  wire [258:0]s01_ar_node_M_SC_PAYLD;
  wire [0:0]s01_ar_node_M_SC_RECV;
  wire [0:0]s01_ar_node_M_SC_REQ;
  wire [0:0]s01_ar_node_M_SC_SEND;
  wire [0:0]s01_aw_node_M_SC_INFO;
  wire [258:0]s01_aw_node_M_SC_PAYLD;
  wire [0:0]s01_aw_node_M_SC_RECV;
  wire [0:0]s01_aw_node_M_SC_REQ;
  wire [0:0]s01_aw_node_M_SC_SEND;
  wire [0:0]s01_b_node_M_SC_INFO;
  wire [121:0]s01_b_node_M_SC_PAYLD;
  wire [0:0]s01_b_node_M_SC_RECV;
  wire [0:0]s01_b_node_M_SC_REQ;
  wire [0:0]s01_b_node_M_SC_SEND;
  wire [0:0]s01_r_node_M_SC_INFO;
  wire [534:0]s01_r_node_M_SC_PAYLD;
  wire [0:0]s01_r_node_M_SC_RECV;
  wire [0:0]s01_r_node_M_SC_REQ;
  wire [0:0]s01_r_node_M_SC_SEND;
  wire [0:0]s01_w_node_M_SC_INFO;
  wire [591:0]s01_w_node_M_SC_PAYLD;
  wire [0:0]s01_w_node_M_SC_RECV;
  wire [0:0]s01_w_node_M_SC_REQ;
  wire [0:0]s01_w_node_M_SC_SEND;
  wire s_sc_clk_1;
  wire s_sc_resetn_1;

  assign M_SC_AR_info[0] = s01_ar_node_M_SC_INFO;
  assign M_SC_AR_payld[258:0] = s01_ar_node_M_SC_PAYLD;
  assign M_SC_AR_req[0] = s01_ar_node_M_SC_REQ;
  assign M_SC_AR_send[0] = s01_ar_node_M_SC_SEND;
  assign M_SC_AW_info[0] = s01_aw_node_M_SC_INFO;
  assign M_SC_AW_payld[258:0] = s01_aw_node_M_SC_PAYLD;
  assign M_SC_AW_req[0] = s01_aw_node_M_SC_REQ;
  assign M_SC_AW_send[0] = s01_aw_node_M_SC_SEND;
  assign M_SC_B_info[0] = s01_b_node_M_SC_INFO;
  assign M_SC_B_payld[121:0] = s01_b_node_M_SC_PAYLD;
  assign M_SC_B_req[0] = s01_b_node_M_SC_REQ;
  assign M_SC_B_send[0] = s01_b_node_M_SC_SEND;
  assign M_SC_R_info[0] = s01_r_node_M_SC_INFO;
  assign M_SC_R_payld[534:0] = s01_r_node_M_SC_PAYLD;
  assign M_SC_R_req[0] = s01_r_node_M_SC_REQ;
  assign M_SC_R_send[0] = s01_r_node_M_SC_SEND;
  assign M_SC_W_info[0] = s01_w_node_M_SC_INFO;
  assign M_SC_W_payld[591:0] = s01_w_node_M_SC_PAYLD;
  assign M_SC_W_req[0] = s01_w_node_M_SC_REQ;
  assign M_SC_W_send[0] = s01_w_node_M_SC_SEND;
  assign S_SC_AR_1_INFO = S_SC_AR_info[0];
  assign S_SC_AR_1_PAYLD = S_SC_AR_payld[258:0];
  assign S_SC_AR_1_REQ = S_SC_AR_req[0];
  assign S_SC_AR_1_SEND = S_SC_AR_send[0];
  assign S_SC_AR_recv[0] = S_SC_AR_1_RECV;
  assign S_SC_AW_1_INFO = S_SC_AW_info[0];
  assign S_SC_AW_1_PAYLD = S_SC_AW_payld[258:0];
  assign S_SC_AW_1_REQ = S_SC_AW_req[0];
  assign S_SC_AW_1_SEND = S_SC_AW_send[0];
  assign S_SC_AW_recv[0] = S_SC_AW_1_RECV;
  assign S_SC_B_1_INFO = S_SC_B_info[0];
  assign S_SC_B_1_PAYLD = S_SC_B_payld[121:0];
  assign S_SC_B_1_REQ = S_SC_B_req[0];
  assign S_SC_B_1_SEND = S_SC_B_send[0];
  assign S_SC_B_recv[0] = S_SC_B_1_RECV;
  assign S_SC_R_1_INFO = S_SC_R_info[0];
  assign S_SC_R_1_PAYLD = S_SC_R_payld[534:0];
  assign S_SC_R_1_REQ = S_SC_R_req[0];
  assign S_SC_R_1_SEND = S_SC_R_send[0];
  assign S_SC_R_recv[0] = S_SC_R_1_RECV;
  assign S_SC_W_1_INFO = S_SC_W_info[0];
  assign S_SC_W_1_PAYLD = S_SC_W_payld[591:0];
  assign S_SC_W_1_REQ = S_SC_W_req[0];
  assign S_SC_W_1_SEND = S_SC_W_send[0];
  assign S_SC_W_recv[0] = S_SC_W_1_RECV;
  assign m_sc_clk_1 = m_sc_clk;
  assign m_sc_resetn_1 = m_sc_resetn;
  assign s01_ar_node_M_SC_RECV = M_SC_AR_recv[0];
  assign s01_aw_node_M_SC_RECV = M_SC_AW_recv[0];
  assign s01_b_node_M_SC_RECV = M_SC_B_recv[0];
  assign s01_r_node_M_SC_RECV = M_SC_R_recv[0];
  assign s01_w_node_M_SC_RECV = M_SC_W_recv[0];
  assign s_sc_clk_1 = s_sc_clk;
  assign s_sc_resetn_1 = s_sc_resetn;
  bd_41e8_sarn_1 s01_ar_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s01_ar_node_M_SC_INFO),
        .m_sc_payld(s01_ar_node_M_SC_PAYLD),
        .m_sc_recv(s01_ar_node_M_SC_RECV),
        .m_sc_req(s01_ar_node_M_SC_REQ),
        .m_sc_send(s01_ar_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_AR_1_INFO),
        .s_sc_payld(S_SC_AR_1_PAYLD),
        .s_sc_recv(S_SC_AR_1_RECV),
        .s_sc_req(S_SC_AR_1_REQ),
        .s_sc_send(S_SC_AR_1_SEND));
  bd_41e8_sawn_1 s01_aw_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s01_aw_node_M_SC_INFO),
        .m_sc_payld(s01_aw_node_M_SC_PAYLD),
        .m_sc_recv(s01_aw_node_M_SC_RECV),
        .m_sc_req(s01_aw_node_M_SC_REQ),
        .m_sc_send(s01_aw_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_AW_1_INFO),
        .s_sc_payld(S_SC_AW_1_PAYLD),
        .s_sc_recv(S_SC_AW_1_RECV),
        .s_sc_req(S_SC_AW_1_REQ),
        .s_sc_send(S_SC_AW_1_SEND));
  bd_41e8_sbn_1 s01_b_node
       (.m_sc_aclk(s_sc_clk_1),
        .m_sc_aresetn(s_sc_resetn_1),
        .m_sc_info(s01_b_node_M_SC_INFO),
        .m_sc_payld(s01_b_node_M_SC_PAYLD),
        .m_sc_recv(s01_b_node_M_SC_RECV),
        .m_sc_req(s01_b_node_M_SC_REQ),
        .m_sc_send(s01_b_node_M_SC_SEND),
        .s_sc_aclk(m_sc_clk_1),
        .s_sc_aresetn(m_sc_resetn_1),
        .s_sc_info(S_SC_B_1_INFO),
        .s_sc_payld(S_SC_B_1_PAYLD),
        .s_sc_recv(S_SC_B_1_RECV),
        .s_sc_req(S_SC_B_1_REQ),
        .s_sc_send(S_SC_B_1_SEND));
  bd_41e8_srn_1 s01_r_node
       (.m_sc_aclk(s_sc_clk_1),
        .m_sc_aresetn(s_sc_resetn_1),
        .m_sc_info(s01_r_node_M_SC_INFO),
        .m_sc_payld(s01_r_node_M_SC_PAYLD),
        .m_sc_recv(s01_r_node_M_SC_RECV),
        .m_sc_req(s01_r_node_M_SC_REQ),
        .m_sc_send(s01_r_node_M_SC_SEND),
        .s_sc_aclk(m_sc_clk_1),
        .s_sc_aresetn(m_sc_resetn_1),
        .s_sc_info(S_SC_R_1_INFO),
        .s_sc_payld(S_SC_R_1_PAYLD),
        .s_sc_recv(S_SC_R_1_RECV),
        .s_sc_req(S_SC_R_1_REQ),
        .s_sc_send(S_SC_R_1_SEND));
  bd_41e8_swn_1 s01_w_node
       (.m_sc_aclk(m_sc_clk_1),
        .m_sc_aresetn(m_sc_resetn_1),
        .m_sc_info(s01_w_node_M_SC_INFO),
        .m_sc_payld(s01_w_node_M_SC_PAYLD),
        .m_sc_recv(s01_w_node_M_SC_RECV),
        .m_sc_req(s01_w_node_M_SC_REQ),
        .m_sc_send(s01_w_node_M_SC_SEND),
        .s_sc_aclk(s_sc_clk_1),
        .s_sc_aresetn(s_sc_resetn_1),
        .s_sc_info(S_SC_W_1_INFO),
        .s_sc_payld(S_SC_W_1_PAYLD),
        .s_sc_recv(S_SC_W_1_RECV),
        .s_sc_req(S_SC_W_1_REQ),
        .s_sc_send(S_SC_W_1_SEND));
endmodule

module switchboards_imp_IW09S1
   (M00_SC_AR_info,
    M00_SC_AR_payld,
    M00_SC_AR_recv,
    M00_SC_AR_req,
    M00_SC_AR_send,
    M00_SC_AW_info,
    M00_SC_AW_payld,
    M00_SC_AW_recv,
    M00_SC_AW_req,
    M00_SC_AW_send,
    M00_SC_B_info,
    M00_SC_B_payld,
    M00_SC_B_recv,
    M00_SC_B_req,
    M00_SC_B_send,
    M00_SC_R_info,
    M00_SC_R_payld,
    M00_SC_R_recv,
    M00_SC_R_req,
    M00_SC_R_send,
    M00_SC_W_info,
    M00_SC_W_payld,
    M00_SC_W_recv,
    M00_SC_W_req,
    M00_SC_W_send,
    M01_SC_B_info,
    M01_SC_B_payld,
    M01_SC_B_recv,
    M01_SC_B_req,
    M01_SC_B_send,
    M01_SC_R_info,
    M01_SC_R_payld,
    M01_SC_R_recv,
    M01_SC_R_req,
    M01_SC_R_send,
    S00_SC_AR_info,
    S00_SC_AR_payld,
    S00_SC_AR_recv,
    S00_SC_AR_req,
    S00_SC_AR_send,
    S00_SC_AW_info,
    S00_SC_AW_payld,
    S00_SC_AW_recv,
    S00_SC_AW_req,
    S00_SC_AW_send,
    S00_SC_B_info,
    S00_SC_B_payld,
    S00_SC_B_recv,
    S00_SC_B_req,
    S00_SC_B_send,
    S00_SC_R_info,
    S00_SC_R_payld,
    S00_SC_R_recv,
    S00_SC_R_req,
    S00_SC_R_send,
    S00_SC_W_info,
    S00_SC_W_payld,
    S00_SC_W_recv,
    S00_SC_W_req,
    S00_SC_W_send,
    S01_SC_AR_info,
    S01_SC_AR_payld,
    S01_SC_AR_recv,
    S01_SC_AR_req,
    S01_SC_AR_send,
    S01_SC_AW_info,
    S01_SC_AW_payld,
    S01_SC_AW_recv,
    S01_SC_AW_req,
    S01_SC_AW_send,
    S01_SC_W_info,
    S01_SC_W_payld,
    S01_SC_W_recv,
    S01_SC_W_req,
    S01_SC_W_send,
    aclk,
    aresetn);
  output [1:0]M00_SC_AR_info;
  output [258:0]M00_SC_AR_payld;
  input [1:0]M00_SC_AR_recv;
  output [1:0]M00_SC_AR_req;
  output [1:0]M00_SC_AR_send;
  output [1:0]M00_SC_AW_info;
  output [258:0]M00_SC_AW_payld;
  input [1:0]M00_SC_AW_recv;
  output [1:0]M00_SC_AW_req;
  output [1:0]M00_SC_AW_send;
  output [0:0]M00_SC_B_info;
  output [121:0]M00_SC_B_payld;
  input [0:0]M00_SC_B_recv;
  output [0:0]M00_SC_B_req;
  output [0:0]M00_SC_B_send;
  output [0:0]M00_SC_R_info;
  output [534:0]M00_SC_R_payld;
  input [0:0]M00_SC_R_recv;
  output [0:0]M00_SC_R_req;
  output [0:0]M00_SC_R_send;
  output [1:0]M00_SC_W_info;
  output [591:0]M00_SC_W_payld;
  input [1:0]M00_SC_W_recv;
  output [1:0]M00_SC_W_req;
  output [1:0]M00_SC_W_send;
  output [0:0]M01_SC_B_info;
  output [121:0]M01_SC_B_payld;
  input [0:0]M01_SC_B_recv;
  output [0:0]M01_SC_B_req;
  output [0:0]M01_SC_B_send;
  output [0:0]M01_SC_R_info;
  output [534:0]M01_SC_R_payld;
  input [0:0]M01_SC_R_recv;
  output [0:0]M01_SC_R_req;
  output [0:0]M01_SC_R_send;
  input [0:0]S00_SC_AR_info;
  input [258:0]S00_SC_AR_payld;
  output [0:0]S00_SC_AR_recv;
  input [0:0]S00_SC_AR_req;
  input [0:0]S00_SC_AR_send;
  input [0:0]S00_SC_AW_info;
  input [258:0]S00_SC_AW_payld;
  output [0:0]S00_SC_AW_recv;
  input [0:0]S00_SC_AW_req;
  input [0:0]S00_SC_AW_send;
  input [1:0]S00_SC_B_info;
  input [121:0]S00_SC_B_payld;
  output [1:0]S00_SC_B_recv;
  input [1:0]S00_SC_B_req;
  input [1:0]S00_SC_B_send;
  input [1:0]S00_SC_R_info;
  input [534:0]S00_SC_R_payld;
  output [1:0]S00_SC_R_recv;
  input [1:0]S00_SC_R_req;
  input [1:0]S00_SC_R_send;
  input [0:0]S00_SC_W_info;
  input [591:0]S00_SC_W_payld;
  output [0:0]S00_SC_W_recv;
  input [0:0]S00_SC_W_req;
  input [0:0]S00_SC_W_send;
  input [0:0]S01_SC_AR_info;
  input [258:0]S01_SC_AR_payld;
  output [0:0]S01_SC_AR_recv;
  input [0:0]S01_SC_AR_req;
  input [0:0]S01_SC_AR_send;
  input [0:0]S01_SC_AW_info;
  input [258:0]S01_SC_AW_payld;
  output [0:0]S01_SC_AW_recv;
  input [0:0]S01_SC_AW_req;
  input [0:0]S01_SC_AW_send;
  input [0:0]S01_SC_W_info;
  input [591:0]S01_SC_W_payld;
  output [0:0]S01_SC_W_recv;
  input [0:0]S01_SC_W_req;
  input [0:0]S01_SC_W_send;
  input aclk;
  input aresetn;

  wire [0:0]S00_SC_AR_1_INFO;
  wire [258:0]S00_SC_AR_1_PAYLD;
  wire [0:0]S00_SC_AR_1_RECV;
  wire [0:0]S00_SC_AR_1_REQ;
  wire [0:0]S00_SC_AR_1_SEND;
  wire [0:0]S00_SC_AW_1_INFO;
  wire [258:0]S00_SC_AW_1_PAYLD;
  wire [0:0]S00_SC_AW_1_RECV;
  wire [0:0]S00_SC_AW_1_REQ;
  wire [0:0]S00_SC_AW_1_SEND;
  wire [1:0]S00_SC_B_1_INFO;
  wire [121:0]S00_SC_B_1_PAYLD;
  wire [1:0]S00_SC_B_1_RECV;
  wire [1:0]S00_SC_B_1_REQ;
  wire [1:0]S00_SC_B_1_SEND;
  wire [1:0]S00_SC_R_1_INFO;
  wire [534:0]S00_SC_R_1_PAYLD;
  wire [1:0]S00_SC_R_1_RECV;
  wire [1:0]S00_SC_R_1_REQ;
  wire [1:0]S00_SC_R_1_SEND;
  wire [0:0]S00_SC_W_1_INFO;
  wire [591:0]S00_SC_W_1_PAYLD;
  wire [0:0]S00_SC_W_1_RECV;
  wire [0:0]S00_SC_W_1_REQ;
  wire [0:0]S00_SC_W_1_SEND;
  wire [0:0]S01_SC_AR_1_INFO;
  wire [258:0]S01_SC_AR_1_PAYLD;
  wire [1:1]S01_SC_AR_1_RECV;
  wire [0:0]S01_SC_AR_1_REQ;
  wire [0:0]S01_SC_AR_1_SEND;
  wire [0:0]S01_SC_AW_1_INFO;
  wire [258:0]S01_SC_AW_1_PAYLD;
  wire [1:1]S01_SC_AW_1_RECV;
  wire [0:0]S01_SC_AW_1_REQ;
  wire [0:0]S01_SC_AW_1_SEND;
  wire [0:0]S01_SC_W_1_INFO;
  wire [591:0]S01_SC_W_1_PAYLD;
  wire [1:1]S01_SC_W_1_RECV;
  wire [0:0]S01_SC_W_1_REQ;
  wire [0:0]S01_SC_W_1_SEND;
  wire aclk_1;
  wire [1:0]ar_switchboard_M00_SC_INFO;
  wire [258:0]ar_switchboard_M00_SC_PAYLD;
  wire [1:0]ar_switchboard_M00_SC_RECV;
  wire [1:0]ar_switchboard_M00_SC_REQ;
  wire [1:0]ar_switchboard_M00_SC_SEND;
  wire [1:0]aw_switchboard_M00_SC_INFO;
  wire [258:0]aw_switchboard_M00_SC_PAYLD;
  wire [1:0]aw_switchboard_M00_SC_RECV;
  wire [1:0]aw_switchboard_M00_SC_REQ;
  wire [1:0]aw_switchboard_M00_SC_SEND;
  wire [0:0]b_switchboard_M00_SC_INFO;
  wire [121:0]b_switchboard_M00_SC_PAYLD;
  wire [0:0]b_switchboard_M00_SC_RECV;
  wire [0:0]b_switchboard_M00_SC_REQ;
  wire [0:0]b_switchboard_M00_SC_SEND;
  wire [1:1]b_switchboard_M01_SC_INFO;
  wire [243:122]b_switchboard_M01_SC_PAYLD;
  wire [0:0]b_switchboard_M01_SC_RECV;
  wire [1:1]b_switchboard_M01_SC_REQ;
  wire [1:1]b_switchboard_M01_SC_SEND;
  wire [0:0]r_switchboard_M00_SC_INFO;
  wire [534:0]r_switchboard_M00_SC_PAYLD;
  wire [0:0]r_switchboard_M00_SC_RECV;
  wire [0:0]r_switchboard_M00_SC_REQ;
  wire [0:0]r_switchboard_M00_SC_SEND;
  wire [1:1]r_switchboard_M01_SC_INFO;
  wire [1069:535]r_switchboard_M01_SC_PAYLD;
  wire [0:0]r_switchboard_M01_SC_RECV;
  wire [1:1]r_switchboard_M01_SC_REQ;
  wire [1:1]r_switchboard_M01_SC_SEND;
  wire [1:0]w_switchboard_M00_SC_INFO;
  wire [591:0]w_switchboard_M00_SC_PAYLD;
  wire [1:0]w_switchboard_M00_SC_RECV;
  wire [1:0]w_switchboard_M00_SC_REQ;
  wire [1:0]w_switchboard_M00_SC_SEND;

  assign M00_SC_AR_info[1:0] = ar_switchboard_M00_SC_INFO;
  assign M00_SC_AR_payld[258:0] = ar_switchboard_M00_SC_PAYLD;
  assign M00_SC_AR_req[1:0] = ar_switchboard_M00_SC_REQ;
  assign M00_SC_AR_send[1:0] = ar_switchboard_M00_SC_SEND;
  assign M00_SC_AW_info[1:0] = aw_switchboard_M00_SC_INFO;
  assign M00_SC_AW_payld[258:0] = aw_switchboard_M00_SC_PAYLD;
  assign M00_SC_AW_req[1:0] = aw_switchboard_M00_SC_REQ;
  assign M00_SC_AW_send[1:0] = aw_switchboard_M00_SC_SEND;
  assign M00_SC_B_info[0] = b_switchboard_M00_SC_INFO;
  assign M00_SC_B_payld[121:0] = b_switchboard_M00_SC_PAYLD;
  assign M00_SC_B_req[0] = b_switchboard_M00_SC_REQ;
  assign M00_SC_B_send[0] = b_switchboard_M00_SC_SEND;
  assign M00_SC_R_info[0] = r_switchboard_M00_SC_INFO;
  assign M00_SC_R_payld[534:0] = r_switchboard_M00_SC_PAYLD;
  assign M00_SC_R_req[0] = r_switchboard_M00_SC_REQ;
  assign M00_SC_R_send[0] = r_switchboard_M00_SC_SEND;
  assign M00_SC_W_info[1:0] = w_switchboard_M00_SC_INFO;
  assign M00_SC_W_payld[591:0] = w_switchboard_M00_SC_PAYLD;
  assign M00_SC_W_req[1:0] = w_switchboard_M00_SC_REQ;
  assign M00_SC_W_send[1:0] = w_switchboard_M00_SC_SEND;
  assign M01_SC_B_info[0] = b_switchboard_M01_SC_INFO;
  assign M01_SC_B_payld[121:0] = b_switchboard_M01_SC_PAYLD;
  assign M01_SC_B_req[0] = b_switchboard_M01_SC_REQ;
  assign M01_SC_B_send[0] = b_switchboard_M01_SC_SEND;
  assign M01_SC_R_info[0] = r_switchboard_M01_SC_INFO;
  assign M01_SC_R_payld[534:0] = r_switchboard_M01_SC_PAYLD;
  assign M01_SC_R_req[0] = r_switchboard_M01_SC_REQ;
  assign M01_SC_R_send[0] = r_switchboard_M01_SC_SEND;
  assign S00_SC_AR_1_INFO = S00_SC_AR_info[0];
  assign S00_SC_AR_1_PAYLD = S00_SC_AR_payld[258:0];
  assign S00_SC_AR_1_REQ = S00_SC_AR_req[0];
  assign S00_SC_AR_1_SEND = S00_SC_AR_send[0];
  assign S00_SC_AR_recv[0] = S00_SC_AR_1_RECV;
  assign S00_SC_AW_1_INFO = S00_SC_AW_info[0];
  assign S00_SC_AW_1_PAYLD = S00_SC_AW_payld[258:0];
  assign S00_SC_AW_1_REQ = S00_SC_AW_req[0];
  assign S00_SC_AW_1_SEND = S00_SC_AW_send[0];
  assign S00_SC_AW_recv[0] = S00_SC_AW_1_RECV;
  assign S00_SC_B_1_INFO = S00_SC_B_info[1:0];
  assign S00_SC_B_1_PAYLD = S00_SC_B_payld[121:0];
  assign S00_SC_B_1_REQ = S00_SC_B_req[1:0];
  assign S00_SC_B_1_SEND = S00_SC_B_send[1:0];
  assign S00_SC_B_recv[1:0] = S00_SC_B_1_RECV;
  assign S00_SC_R_1_INFO = S00_SC_R_info[1:0];
  assign S00_SC_R_1_PAYLD = S00_SC_R_payld[534:0];
  assign S00_SC_R_1_REQ = S00_SC_R_req[1:0];
  assign S00_SC_R_1_SEND = S00_SC_R_send[1:0];
  assign S00_SC_R_recv[1:0] = S00_SC_R_1_RECV;
  assign S00_SC_W_1_INFO = S00_SC_W_info[0];
  assign S00_SC_W_1_PAYLD = S00_SC_W_payld[591:0];
  assign S00_SC_W_1_REQ = S00_SC_W_req[0];
  assign S00_SC_W_1_SEND = S00_SC_W_send[0];
  assign S00_SC_W_recv[0] = S00_SC_W_1_RECV;
  assign S01_SC_AR_1_INFO = S01_SC_AR_info[0];
  assign S01_SC_AR_1_PAYLD = S01_SC_AR_payld[258:0];
  assign S01_SC_AR_1_REQ = S01_SC_AR_req[0];
  assign S01_SC_AR_1_SEND = S01_SC_AR_send[0];
  assign S01_SC_AR_recv[0] = S01_SC_AR_1_RECV;
  assign S01_SC_AW_1_INFO = S01_SC_AW_info[0];
  assign S01_SC_AW_1_PAYLD = S01_SC_AW_payld[258:0];
  assign S01_SC_AW_1_REQ = S01_SC_AW_req[0];
  assign S01_SC_AW_1_SEND = S01_SC_AW_send[0];
  assign S01_SC_AW_recv[0] = S01_SC_AW_1_RECV;
  assign S01_SC_W_1_INFO = S01_SC_W_info[0];
  assign S01_SC_W_1_PAYLD = S01_SC_W_payld[591:0];
  assign S01_SC_W_1_REQ = S01_SC_W_req[0];
  assign S01_SC_W_1_SEND = S01_SC_W_send[0];
  assign S01_SC_W_recv[0] = S01_SC_W_1_RECV;
  assign aclk_1 = aclk;
  assign ar_switchboard_M00_SC_RECV = M00_SC_AR_recv[1:0];
  assign aw_switchboard_M00_SC_RECV = M00_SC_AW_recv[1:0];
  assign b_switchboard_M00_SC_RECV = M00_SC_B_recv[0];
  assign b_switchboard_M01_SC_RECV = M01_SC_B_recv[0];
  assign r_switchboard_M00_SC_RECV = M00_SC_R_recv[0];
  assign r_switchboard_M01_SC_RECV = M01_SC_R_recv[0];
  assign w_switchboard_M00_SC_RECV = M00_SC_W_recv[1:0];
  bd_41e8_arsw_0 ar_switchboard
       (.aclk(aclk_1),
        .aclken(1'b1),
        .m_sc_info(ar_switchboard_M00_SC_INFO),
        .m_sc_payld(ar_switchboard_M00_SC_PAYLD),
        .m_sc_recv(ar_switchboard_M00_SC_RECV),
        .m_sc_req(ar_switchboard_M00_SC_REQ),
        .m_sc_send(ar_switchboard_M00_SC_SEND),
        .s_sc_info({S01_SC_AR_1_INFO,S00_SC_AR_1_INFO}),
        .s_sc_payld({S01_SC_AR_1_PAYLD,S00_SC_AR_1_PAYLD}),
        .s_sc_recv({S01_SC_AR_1_RECV,S00_SC_AR_1_RECV}),
        .s_sc_req({S01_SC_AR_1_REQ,S00_SC_AR_1_REQ}),
        .s_sc_send({S01_SC_AR_1_SEND,S00_SC_AR_1_SEND}));
  bd_41e8_awsw_0 aw_switchboard
       (.aclk(aclk_1),
        .aclken(1'b1),
        .m_sc_info(aw_switchboard_M00_SC_INFO),
        .m_sc_payld(aw_switchboard_M00_SC_PAYLD),
        .m_sc_recv(aw_switchboard_M00_SC_RECV),
        .m_sc_req(aw_switchboard_M00_SC_REQ),
        .m_sc_send(aw_switchboard_M00_SC_SEND),
        .s_sc_info({S01_SC_AW_1_INFO,S00_SC_AW_1_INFO}),
        .s_sc_payld({S01_SC_AW_1_PAYLD,S00_SC_AW_1_PAYLD}),
        .s_sc_recv({S01_SC_AW_1_RECV,S00_SC_AW_1_RECV}),
        .s_sc_req({S01_SC_AW_1_REQ,S00_SC_AW_1_REQ}),
        .s_sc_send({S01_SC_AW_1_SEND,S00_SC_AW_1_SEND}));
  bd_41e8_bsw_0 b_switchboard
       (.aclk(aclk_1),
        .aclken(1'b1),
        .m_sc_info({b_switchboard_M01_SC_INFO,b_switchboard_M00_SC_INFO}),
        .m_sc_payld({b_switchboard_M01_SC_PAYLD,b_switchboard_M00_SC_PAYLD}),
        .m_sc_recv({b_switchboard_M01_SC_RECV,b_switchboard_M00_SC_RECV}),
        .m_sc_req({b_switchboard_M01_SC_REQ,b_switchboard_M00_SC_REQ}),
        .m_sc_send({b_switchboard_M01_SC_SEND,b_switchboard_M00_SC_SEND}),
        .s_sc_info(S00_SC_B_1_INFO),
        .s_sc_payld(S00_SC_B_1_PAYLD),
        .s_sc_recv(S00_SC_B_1_RECV),
        .s_sc_req(S00_SC_B_1_REQ),
        .s_sc_send(S00_SC_B_1_SEND));
  bd_41e8_rsw_0 r_switchboard
       (.aclk(aclk_1),
        .aclken(1'b1),
        .m_sc_info({r_switchboard_M01_SC_INFO,r_switchboard_M00_SC_INFO}),
        .m_sc_payld({r_switchboard_M01_SC_PAYLD,r_switchboard_M00_SC_PAYLD}),
        .m_sc_recv({r_switchboard_M01_SC_RECV,r_switchboard_M00_SC_RECV}),
        .m_sc_req({r_switchboard_M01_SC_REQ,r_switchboard_M00_SC_REQ}),
        .m_sc_send({r_switchboard_M01_SC_SEND,r_switchboard_M00_SC_SEND}),
        .s_sc_info(S00_SC_R_1_INFO),
        .s_sc_payld(S00_SC_R_1_PAYLD),
        .s_sc_recv(S00_SC_R_1_RECV),
        .s_sc_req(S00_SC_R_1_REQ),
        .s_sc_send(S00_SC_R_1_SEND));
  bd_41e8_wsw_0 w_switchboard
       (.aclk(aclk_1),
        .aclken(1'b1),
        .m_sc_info(w_switchboard_M00_SC_INFO),
        .m_sc_payld(w_switchboard_M00_SC_PAYLD),
        .m_sc_recv(w_switchboard_M00_SC_RECV),
        .m_sc_req(w_switchboard_M00_SC_REQ),
        .m_sc_send(w_switchboard_M00_SC_SEND),
        .s_sc_info({S01_SC_W_1_INFO,S00_SC_W_1_INFO}),
        .s_sc_payld({S01_SC_W_1_PAYLD,S00_SC_W_1_PAYLD}),
        .s_sc_recv({S01_SC_W_1_RECV,S00_SC_W_1_RECV}),
        .s_sc_req({S01_SC_W_1_REQ,S00_SC_W_1_REQ}),
        .s_sc_send({S01_SC_W_1_SEND,S00_SC_W_1_SEND}));
endmodule
