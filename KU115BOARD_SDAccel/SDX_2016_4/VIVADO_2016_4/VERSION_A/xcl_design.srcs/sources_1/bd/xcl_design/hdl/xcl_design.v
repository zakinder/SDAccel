//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
//Date        : Tue May 16 15:33:48 2017
//Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
//Command     : generate_target xcl_design.bd
//Design      : xcl_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module apm_sys_imp_1WRTQ3I
   (clkwiz_kernel_clk_out1,
    clkwiz_sysclks_clk_out1,
    clkwiz_sysclks_clk_out2,
    dma_pcie_axi_aclk,
    interconnect_axilite_M01_AXI_araddr,
    interconnect_axilite_M01_AXI_arprot,
    interconnect_axilite_M01_AXI_arready,
    interconnect_axilite_M01_AXI_arvalid,
    interconnect_axilite_M01_AXI_awaddr,
    interconnect_axilite_M01_AXI_awprot,
    interconnect_axilite_M01_AXI_awready,
    interconnect_axilite_M01_AXI_awvalid,
    interconnect_axilite_M01_AXI_bready,
    interconnect_axilite_M01_AXI_bresp,
    interconnect_axilite_M01_AXI_bvalid,
    interconnect_axilite_M01_AXI_rdata,
    interconnect_axilite_M01_AXI_rready,
    interconnect_axilite_M01_AXI_rresp,
    interconnect_axilite_M01_AXI_rvalid,
    interconnect_axilite_M01_AXI_wdata,
    interconnect_axilite_M01_AXI_wready,
    interconnect_axilite_M01_AXI_wstrb,
    interconnect_axilite_M01_AXI_wvalid,
    interconnect_axilite_M02_AXI_araddr,
    interconnect_axilite_M02_AXI_arprot,
    interconnect_axilite_M02_AXI_arready,
    interconnect_axilite_M02_AXI_arvalid,
    interconnect_axilite_M02_AXI_awaddr,
    interconnect_axilite_M02_AXI_awprot,
    interconnect_axilite_M02_AXI_awready,
    interconnect_axilite_M02_AXI_awvalid,
    interconnect_axilite_M02_AXI_bready,
    interconnect_axilite_M02_AXI_bresp,
    interconnect_axilite_M02_AXI_bvalid,
    interconnect_axilite_M02_AXI_rdata,
    interconnect_axilite_M02_AXI_rready,
    interconnect_axilite_M02_AXI_rresp,
    interconnect_axilite_M02_AXI_rvalid,
    interconnect_axilite_M02_AXI_wdata,
    interconnect_axilite_M02_AXI_wready,
    interconnect_axilite_M02_AXI_wstrb,
    interconnect_axilite_M02_AXI_wvalid,
    interconnect_aximm_host_M04_AXI_araddr,
    interconnect_aximm_host_M04_AXI_arburst,
    interconnect_aximm_host_M04_AXI_arcache,
    interconnect_aximm_host_M04_AXI_arlen,
    interconnect_aximm_host_M04_AXI_arlock,
    interconnect_aximm_host_M04_AXI_arprot,
    interconnect_aximm_host_M04_AXI_arready,
    interconnect_aximm_host_M04_AXI_arsize,
    interconnect_aximm_host_M04_AXI_arvalid,
    interconnect_aximm_host_M04_AXI_rdata,
    interconnect_aximm_host_M04_AXI_rlast,
    interconnect_aximm_host_M04_AXI_rready,
    interconnect_aximm_host_M04_AXI_rresp,
    interconnect_aximm_host_M04_AXI_rvalid,
    psreset_gate_pr_apmclk_interconnect_aresetn,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_axiresetn,
    regslice_data_M_AXI_araddr,
    regslice_data_M_AXI_arburst,
    regslice_data_M_AXI_arcache,
    regslice_data_M_AXI_arid,
    regslice_data_M_AXI_arlen,
    regslice_data_M_AXI_arlock,
    regslice_data_M_AXI_arprot,
    regslice_data_M_AXI_arqos,
    regslice_data_M_AXI_arready,
    regslice_data_M_AXI_arsize,
    regslice_data_M_AXI_arvalid,
    regslice_data_M_AXI_awaddr,
    regslice_data_M_AXI_awburst,
    regslice_data_M_AXI_awcache,
    regslice_data_M_AXI_awid,
    regslice_data_M_AXI_awlen,
    regslice_data_M_AXI_awlock,
    regslice_data_M_AXI_awprot,
    regslice_data_M_AXI_awqos,
    regslice_data_M_AXI_awready,
    regslice_data_M_AXI_awsize,
    regslice_data_M_AXI_awvalid,
    regslice_data_M_AXI_bid,
    regslice_data_M_AXI_bready,
    regslice_data_M_AXI_bresp,
    regslice_data_M_AXI_bvalid,
    regslice_data_M_AXI_rdata,
    regslice_data_M_AXI_rid,
    regslice_data_M_AXI_rlast,
    regslice_data_M_AXI_rready,
    regslice_data_M_AXI_rresp,
    regslice_data_M_AXI_rvalid,
    regslice_data_M_AXI_wdata,
    regslice_data_M_AXI_wlast,
    regslice_data_M_AXI_wready,
    regslice_data_M_AXI_wstrb,
    regslice_data_M_AXI_wvalid,
    u_ocl_region_M00_AXI_araddr,
    u_ocl_region_M00_AXI_arburst,
    u_ocl_region_M00_AXI_arcache,
    u_ocl_region_M00_AXI_arid,
    u_ocl_region_M00_AXI_arlen,
    u_ocl_region_M00_AXI_arlock,
    u_ocl_region_M00_AXI_arprot,
    u_ocl_region_M00_AXI_arqos,
    u_ocl_region_M00_AXI_arready,
    u_ocl_region_M00_AXI_arsize,
    u_ocl_region_M00_AXI_arvalid,
    u_ocl_region_M00_AXI_awaddr,
    u_ocl_region_M00_AXI_awburst,
    u_ocl_region_M00_AXI_awcache,
    u_ocl_region_M00_AXI_awid,
    u_ocl_region_M00_AXI_awlen,
    u_ocl_region_M00_AXI_awlock,
    u_ocl_region_M00_AXI_awprot,
    u_ocl_region_M00_AXI_awqos,
    u_ocl_region_M00_AXI_awready,
    u_ocl_region_M00_AXI_awsize,
    u_ocl_region_M00_AXI_awvalid,
    u_ocl_region_M00_AXI_bid,
    u_ocl_region_M00_AXI_bready,
    u_ocl_region_M00_AXI_bresp,
    u_ocl_region_M00_AXI_bvalid,
    u_ocl_region_M00_AXI_rdata,
    u_ocl_region_M00_AXI_rid,
    u_ocl_region_M00_AXI_rlast,
    u_ocl_region_M00_AXI_rready,
    u_ocl_region_M00_AXI_rresp,
    u_ocl_region_M00_AXI_rvalid,
    u_ocl_region_M00_AXI_wdata,
    u_ocl_region_M00_AXI_wlast,
    u_ocl_region_M00_AXI_wready,
    u_ocl_region_M00_AXI_wstrb,
    u_ocl_region_M00_AXI_wvalid,
    u_ocl_region_M01_AXI_araddr,
    u_ocl_region_M01_AXI_arburst,
    u_ocl_region_M01_AXI_arcache,
    u_ocl_region_M01_AXI_arid,
    u_ocl_region_M01_AXI_arlen,
    u_ocl_region_M01_AXI_arlock,
    u_ocl_region_M01_AXI_arprot,
    u_ocl_region_M01_AXI_arqos,
    u_ocl_region_M01_AXI_arready,
    u_ocl_region_M01_AXI_arsize,
    u_ocl_region_M01_AXI_arvalid,
    u_ocl_region_M01_AXI_awaddr,
    u_ocl_region_M01_AXI_awburst,
    u_ocl_region_M01_AXI_awcache,
    u_ocl_region_M01_AXI_awid,
    u_ocl_region_M01_AXI_awlen,
    u_ocl_region_M01_AXI_awlock,
    u_ocl_region_M01_AXI_awprot,
    u_ocl_region_M01_AXI_awqos,
    u_ocl_region_M01_AXI_awready,
    u_ocl_region_M01_AXI_awsize,
    u_ocl_region_M01_AXI_awvalid,
    u_ocl_region_M01_AXI_bid,
    u_ocl_region_M01_AXI_bready,
    u_ocl_region_M01_AXI_bresp,
    u_ocl_region_M01_AXI_bvalid,
    u_ocl_region_M01_AXI_rdata,
    u_ocl_region_M01_AXI_rid,
    u_ocl_region_M01_AXI_rlast,
    u_ocl_region_M01_AXI_rready,
    u_ocl_region_M01_AXI_rresp,
    u_ocl_region_M01_AXI_rvalid,
    u_ocl_region_M01_AXI_wdata,
    u_ocl_region_M01_AXI_wlast,
    u_ocl_region_M01_AXI_wready,
    u_ocl_region_M01_AXI_wstrb,
    u_ocl_region_M01_AXI_wvalid,
    u_ocl_region_M02_AXI_araddr,
    u_ocl_region_M02_AXI_arburst,
    u_ocl_region_M02_AXI_arcache,
    u_ocl_region_M02_AXI_arid,
    u_ocl_region_M02_AXI_arlen,
    u_ocl_region_M02_AXI_arlock,
    u_ocl_region_M02_AXI_arprot,
    u_ocl_region_M02_AXI_arqos,
    u_ocl_region_M02_AXI_arready,
    u_ocl_region_M02_AXI_arsize,
    u_ocl_region_M02_AXI_arvalid,
    u_ocl_region_M02_AXI_awaddr,
    u_ocl_region_M02_AXI_awburst,
    u_ocl_region_M02_AXI_awcache,
    u_ocl_region_M02_AXI_awid,
    u_ocl_region_M02_AXI_awlen,
    u_ocl_region_M02_AXI_awlock,
    u_ocl_region_M02_AXI_awprot,
    u_ocl_region_M02_AXI_awqos,
    u_ocl_region_M02_AXI_awready,
    u_ocl_region_M02_AXI_awsize,
    u_ocl_region_M02_AXI_awvalid,
    u_ocl_region_M02_AXI_bid,
    u_ocl_region_M02_AXI_bready,
    u_ocl_region_M02_AXI_bresp,
    u_ocl_region_M02_AXI_bvalid,
    u_ocl_region_M02_AXI_rdata,
    u_ocl_region_M02_AXI_rid,
    u_ocl_region_M02_AXI_rlast,
    u_ocl_region_M02_AXI_rready,
    u_ocl_region_M02_AXI_rresp,
    u_ocl_region_M02_AXI_rvalid,
    u_ocl_region_M02_AXI_wdata,
    u_ocl_region_M02_AXI_wlast,
    u_ocl_region_M02_AXI_wready,
    u_ocl_region_M02_AXI_wstrb,
    u_ocl_region_M02_AXI_wvalid,
    u_ocl_region_M03_AXI_araddr,
    u_ocl_region_M03_AXI_arburst,
    u_ocl_region_M03_AXI_arcache,
    u_ocl_region_M03_AXI_arid,
    u_ocl_region_M03_AXI_arlen,
    u_ocl_region_M03_AXI_arlock,
    u_ocl_region_M03_AXI_arprot,
    u_ocl_region_M03_AXI_arqos,
    u_ocl_region_M03_AXI_arready,
    u_ocl_region_M03_AXI_arsize,
    u_ocl_region_M03_AXI_arvalid,
    u_ocl_region_M03_AXI_awaddr,
    u_ocl_region_M03_AXI_awburst,
    u_ocl_region_M03_AXI_awcache,
    u_ocl_region_M03_AXI_awid,
    u_ocl_region_M03_AXI_awlen,
    u_ocl_region_M03_AXI_awlock,
    u_ocl_region_M03_AXI_awprot,
    u_ocl_region_M03_AXI_awqos,
    u_ocl_region_M03_AXI_awready,
    u_ocl_region_M03_AXI_awsize,
    u_ocl_region_M03_AXI_awvalid,
    u_ocl_region_M03_AXI_bid,
    u_ocl_region_M03_AXI_bready,
    u_ocl_region_M03_AXI_bresp,
    u_ocl_region_M03_AXI_bvalid,
    u_ocl_region_M03_AXI_rdata,
    u_ocl_region_M03_AXI_rid,
    u_ocl_region_M03_AXI_rlast,
    u_ocl_region_M03_AXI_rready,
    u_ocl_region_M03_AXI_rresp,
    u_ocl_region_M03_AXI_rvalid,
    u_ocl_region_M03_AXI_wdata,
    u_ocl_region_M03_AXI_wlast,
    u_ocl_region_M03_AXI_wready,
    u_ocl_region_M03_AXI_wstrb,
    u_ocl_region_M03_AXI_wvalid);
  input clkwiz_kernel_clk_out1;
  input clkwiz_sysclks_clk_out1;
  input clkwiz_sysclks_clk_out2;
  input dma_pcie_axi_aclk;
  input [15:0]interconnect_axilite_M01_AXI_araddr;
  input [2:0]interconnect_axilite_M01_AXI_arprot;
  output interconnect_axilite_M01_AXI_arready;
  input interconnect_axilite_M01_AXI_arvalid;
  input [15:0]interconnect_axilite_M01_AXI_awaddr;
  input [2:0]interconnect_axilite_M01_AXI_awprot;
  output interconnect_axilite_M01_AXI_awready;
  input interconnect_axilite_M01_AXI_awvalid;
  input interconnect_axilite_M01_AXI_bready;
  output [1:0]interconnect_axilite_M01_AXI_bresp;
  output interconnect_axilite_M01_AXI_bvalid;
  output [31:0]interconnect_axilite_M01_AXI_rdata;
  input interconnect_axilite_M01_AXI_rready;
  output [1:0]interconnect_axilite_M01_AXI_rresp;
  output interconnect_axilite_M01_AXI_rvalid;
  input [31:0]interconnect_axilite_M01_AXI_wdata;
  output interconnect_axilite_M01_AXI_wready;
  input [3:0]interconnect_axilite_M01_AXI_wstrb;
  input interconnect_axilite_M01_AXI_wvalid;
  input [31:0]interconnect_axilite_M02_AXI_araddr;
  input [2:0]interconnect_axilite_M02_AXI_arprot;
  output interconnect_axilite_M02_AXI_arready;
  input interconnect_axilite_M02_AXI_arvalid;
  input [31:0]interconnect_axilite_M02_AXI_awaddr;
  input [2:0]interconnect_axilite_M02_AXI_awprot;
  output interconnect_axilite_M02_AXI_awready;
  input interconnect_axilite_M02_AXI_awvalid;
  input interconnect_axilite_M02_AXI_bready;
  output [1:0]interconnect_axilite_M02_AXI_bresp;
  output interconnect_axilite_M02_AXI_bvalid;
  output [31:0]interconnect_axilite_M02_AXI_rdata;
  input interconnect_axilite_M02_AXI_rready;
  output [1:0]interconnect_axilite_M02_AXI_rresp;
  output interconnect_axilite_M02_AXI_rvalid;
  input [31:0]interconnect_axilite_M02_AXI_wdata;
  output interconnect_axilite_M02_AXI_wready;
  input [3:0]interconnect_axilite_M02_AXI_wstrb;
  input interconnect_axilite_M02_AXI_wvalid;
  input [31:0]interconnect_aximm_host_M04_AXI_araddr;
  input [1:0]interconnect_aximm_host_M04_AXI_arburst;
  input [3:0]interconnect_aximm_host_M04_AXI_arcache;
  input [7:0]interconnect_aximm_host_M04_AXI_arlen;
  input [0:0]interconnect_aximm_host_M04_AXI_arlock;
  input [2:0]interconnect_aximm_host_M04_AXI_arprot;
  output interconnect_aximm_host_M04_AXI_arready;
  input [2:0]interconnect_aximm_host_M04_AXI_arsize;
  input interconnect_aximm_host_M04_AXI_arvalid;
  output [255:0]interconnect_aximm_host_M04_AXI_rdata;
  output interconnect_aximm_host_M04_AXI_rlast;
  input interconnect_aximm_host_M04_AXI_rready;
  output [1:0]interconnect_aximm_host_M04_AXI_rresp;
  output interconnect_aximm_host_M04_AXI_rvalid;
  input [0:0]psreset_gate_pr_apmclk_interconnect_aresetn;
  input [0:0]psreset_gate_pr_control_interconnect_aresetn;
  input [0:0]psreset_gate_pr_data_interconnect_aresetn;
  input [0:0]psreset_gate_pr_kernel_interconnect_axiresetn;
  input [37:0]regslice_data_M_AXI_araddr;
  input [1:0]regslice_data_M_AXI_arburst;
  input [3:0]regslice_data_M_AXI_arcache;
  input [3:0]regslice_data_M_AXI_arid;
  input [7:0]regslice_data_M_AXI_arlen;
  input [0:0]regslice_data_M_AXI_arlock;
  input [2:0]regslice_data_M_AXI_arprot;
  input [3:0]regslice_data_M_AXI_arqos;
  input regslice_data_M_AXI_arready;
  input [2:0]regslice_data_M_AXI_arsize;
  input regslice_data_M_AXI_arvalid;
  input [37:0]regslice_data_M_AXI_awaddr;
  input [1:0]regslice_data_M_AXI_awburst;
  input [3:0]regslice_data_M_AXI_awcache;
  input [3:0]regslice_data_M_AXI_awid;
  input [7:0]regslice_data_M_AXI_awlen;
  input [0:0]regslice_data_M_AXI_awlock;
  input [2:0]regslice_data_M_AXI_awprot;
  input [3:0]regslice_data_M_AXI_awqos;
  input regslice_data_M_AXI_awready;
  input [2:0]regslice_data_M_AXI_awsize;
  input regslice_data_M_AXI_awvalid;
  input [3:0]regslice_data_M_AXI_bid;
  input regslice_data_M_AXI_bready;
  input [1:0]regslice_data_M_AXI_bresp;
  input regslice_data_M_AXI_bvalid;
  input [255:0]regslice_data_M_AXI_rdata;
  input [3:0]regslice_data_M_AXI_rid;
  input regslice_data_M_AXI_rlast;
  input regslice_data_M_AXI_rready;
  input [1:0]regslice_data_M_AXI_rresp;
  input regslice_data_M_AXI_rvalid;
  input [255:0]regslice_data_M_AXI_wdata;
  input regslice_data_M_AXI_wlast;
  input regslice_data_M_AXI_wready;
  input [31:0]regslice_data_M_AXI_wstrb;
  input regslice_data_M_AXI_wvalid;
  input [33:0]u_ocl_region_M00_AXI_araddr;
  input [1:0]u_ocl_region_M00_AXI_arburst;
  input [3:0]u_ocl_region_M00_AXI_arcache;
  input [3:0]u_ocl_region_M00_AXI_arid;
  input [7:0]u_ocl_region_M00_AXI_arlen;
  input [0:0]u_ocl_region_M00_AXI_arlock;
  input [2:0]u_ocl_region_M00_AXI_arprot;
  input [3:0]u_ocl_region_M00_AXI_arqos;
  input u_ocl_region_M00_AXI_arready;
  input [2:0]u_ocl_region_M00_AXI_arsize;
  input u_ocl_region_M00_AXI_arvalid;
  input [33:0]u_ocl_region_M00_AXI_awaddr;
  input [1:0]u_ocl_region_M00_AXI_awburst;
  input [3:0]u_ocl_region_M00_AXI_awcache;
  input [3:0]u_ocl_region_M00_AXI_awid;
  input [7:0]u_ocl_region_M00_AXI_awlen;
  input [0:0]u_ocl_region_M00_AXI_awlock;
  input [2:0]u_ocl_region_M00_AXI_awprot;
  input [3:0]u_ocl_region_M00_AXI_awqos;
  input u_ocl_region_M00_AXI_awready;
  input [2:0]u_ocl_region_M00_AXI_awsize;
  input u_ocl_region_M00_AXI_awvalid;
  input [3:0]u_ocl_region_M00_AXI_bid;
  input u_ocl_region_M00_AXI_bready;
  input [1:0]u_ocl_region_M00_AXI_bresp;
  input u_ocl_region_M00_AXI_bvalid;
  input [511:0]u_ocl_region_M00_AXI_rdata;
  input [3:0]u_ocl_region_M00_AXI_rid;
  input u_ocl_region_M00_AXI_rlast;
  input u_ocl_region_M00_AXI_rready;
  input [1:0]u_ocl_region_M00_AXI_rresp;
  input u_ocl_region_M00_AXI_rvalid;
  input [511:0]u_ocl_region_M00_AXI_wdata;
  input u_ocl_region_M00_AXI_wlast;
  input u_ocl_region_M00_AXI_wready;
  input [63:0]u_ocl_region_M00_AXI_wstrb;
  input u_ocl_region_M00_AXI_wvalid;
  input [33:0]u_ocl_region_M01_AXI_araddr;
  input [1:0]u_ocl_region_M01_AXI_arburst;
  input [3:0]u_ocl_region_M01_AXI_arcache;
  input [3:0]u_ocl_region_M01_AXI_arid;
  input [7:0]u_ocl_region_M01_AXI_arlen;
  input [0:0]u_ocl_region_M01_AXI_arlock;
  input [2:0]u_ocl_region_M01_AXI_arprot;
  input [3:0]u_ocl_region_M01_AXI_arqos;
  input u_ocl_region_M01_AXI_arready;
  input [2:0]u_ocl_region_M01_AXI_arsize;
  input u_ocl_region_M01_AXI_arvalid;
  input [33:0]u_ocl_region_M01_AXI_awaddr;
  input [1:0]u_ocl_region_M01_AXI_awburst;
  input [3:0]u_ocl_region_M01_AXI_awcache;
  input [3:0]u_ocl_region_M01_AXI_awid;
  input [7:0]u_ocl_region_M01_AXI_awlen;
  input [0:0]u_ocl_region_M01_AXI_awlock;
  input [2:0]u_ocl_region_M01_AXI_awprot;
  input [3:0]u_ocl_region_M01_AXI_awqos;
  input u_ocl_region_M01_AXI_awready;
  input [2:0]u_ocl_region_M01_AXI_awsize;
  input u_ocl_region_M01_AXI_awvalid;
  input [3:0]u_ocl_region_M01_AXI_bid;
  input u_ocl_region_M01_AXI_bready;
  input [1:0]u_ocl_region_M01_AXI_bresp;
  input u_ocl_region_M01_AXI_bvalid;
  input [511:0]u_ocl_region_M01_AXI_rdata;
  input [3:0]u_ocl_region_M01_AXI_rid;
  input u_ocl_region_M01_AXI_rlast;
  input u_ocl_region_M01_AXI_rready;
  input [1:0]u_ocl_region_M01_AXI_rresp;
  input u_ocl_region_M01_AXI_rvalid;
  input [511:0]u_ocl_region_M01_AXI_wdata;
  input u_ocl_region_M01_AXI_wlast;
  input u_ocl_region_M01_AXI_wready;
  input [63:0]u_ocl_region_M01_AXI_wstrb;
  input u_ocl_region_M01_AXI_wvalid;
  input [33:0]u_ocl_region_M02_AXI_araddr;
  input [1:0]u_ocl_region_M02_AXI_arburst;
  input [3:0]u_ocl_region_M02_AXI_arcache;
  input [3:0]u_ocl_region_M02_AXI_arid;
  input [7:0]u_ocl_region_M02_AXI_arlen;
  input [0:0]u_ocl_region_M02_AXI_arlock;
  input [2:0]u_ocl_region_M02_AXI_arprot;
  input [3:0]u_ocl_region_M02_AXI_arqos;
  input u_ocl_region_M02_AXI_arready;
  input [2:0]u_ocl_region_M02_AXI_arsize;
  input u_ocl_region_M02_AXI_arvalid;
  input [33:0]u_ocl_region_M02_AXI_awaddr;
  input [1:0]u_ocl_region_M02_AXI_awburst;
  input [3:0]u_ocl_region_M02_AXI_awcache;
  input [3:0]u_ocl_region_M02_AXI_awid;
  input [7:0]u_ocl_region_M02_AXI_awlen;
  input [0:0]u_ocl_region_M02_AXI_awlock;
  input [2:0]u_ocl_region_M02_AXI_awprot;
  input [3:0]u_ocl_region_M02_AXI_awqos;
  input u_ocl_region_M02_AXI_awready;
  input [2:0]u_ocl_region_M02_AXI_awsize;
  input u_ocl_region_M02_AXI_awvalid;
  input [3:0]u_ocl_region_M02_AXI_bid;
  input u_ocl_region_M02_AXI_bready;
  input [1:0]u_ocl_region_M02_AXI_bresp;
  input u_ocl_region_M02_AXI_bvalid;
  input [511:0]u_ocl_region_M02_AXI_rdata;
  input [3:0]u_ocl_region_M02_AXI_rid;
  input u_ocl_region_M02_AXI_rlast;
  input u_ocl_region_M02_AXI_rready;
  input [1:0]u_ocl_region_M02_AXI_rresp;
  input u_ocl_region_M02_AXI_rvalid;
  input [511:0]u_ocl_region_M02_AXI_wdata;
  input u_ocl_region_M02_AXI_wlast;
  input u_ocl_region_M02_AXI_wready;
  input [63:0]u_ocl_region_M02_AXI_wstrb;
  input u_ocl_region_M02_AXI_wvalid;
  input [33:0]u_ocl_region_M03_AXI_araddr;
  input [1:0]u_ocl_region_M03_AXI_arburst;
  input [3:0]u_ocl_region_M03_AXI_arcache;
  input [3:0]u_ocl_region_M03_AXI_arid;
  input [7:0]u_ocl_region_M03_AXI_arlen;
  input [0:0]u_ocl_region_M03_AXI_arlock;
  input [2:0]u_ocl_region_M03_AXI_arprot;
  input [3:0]u_ocl_region_M03_AXI_arqos;
  input u_ocl_region_M03_AXI_arready;
  input [2:0]u_ocl_region_M03_AXI_arsize;
  input u_ocl_region_M03_AXI_arvalid;
  input [33:0]u_ocl_region_M03_AXI_awaddr;
  input [1:0]u_ocl_region_M03_AXI_awburst;
  input [3:0]u_ocl_region_M03_AXI_awcache;
  input [3:0]u_ocl_region_M03_AXI_awid;
  input [7:0]u_ocl_region_M03_AXI_awlen;
  input [0:0]u_ocl_region_M03_AXI_awlock;
  input [2:0]u_ocl_region_M03_AXI_awprot;
  input [3:0]u_ocl_region_M03_AXI_awqos;
  input u_ocl_region_M03_AXI_awready;
  input [2:0]u_ocl_region_M03_AXI_awsize;
  input u_ocl_region_M03_AXI_awvalid;
  input [3:0]u_ocl_region_M03_AXI_bid;
  input u_ocl_region_M03_AXI_bready;
  input [1:0]u_ocl_region_M03_AXI_bresp;
  input u_ocl_region_M03_AXI_bvalid;
  input [511:0]u_ocl_region_M03_AXI_rdata;
  input [3:0]u_ocl_region_M03_AXI_rid;
  input u_ocl_region_M03_AXI_rlast;
  input u_ocl_region_M03_AXI_rready;
  input [1:0]u_ocl_region_M03_AXI_rresp;
  input u_ocl_region_M03_AXI_rvalid;
  input [511:0]u_ocl_region_M03_AXI_wdata;
  input u_ocl_region_M03_AXI_wlast;
  input u_ocl_region_M03_AXI_wready;
  input [63:0]u_ocl_region_M03_AXI_wstrb;
  input u_ocl_region_M03_AXI_wvalid;

  wire [33:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [33:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [33:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [33:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [33:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [3:0]Conn3_ARID;
  wire [7:0]Conn3_ARLEN;
  wire [0:0]Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [33:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [3:0]Conn3_AWID;
  wire [7:0]Conn3_AWLEN;
  wire [0:0]Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire [3:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [511:0]Conn3_RDATA;
  wire [3:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [511:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [63:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [33:0]Conn4_ARADDR;
  wire [1:0]Conn4_ARBURST;
  wire [3:0]Conn4_ARCACHE;
  wire [3:0]Conn4_ARID;
  wire [7:0]Conn4_ARLEN;
  wire [0:0]Conn4_ARLOCK;
  wire [2:0]Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire [2:0]Conn4_ARSIZE;
  wire Conn4_ARVALID;
  wire [33:0]Conn4_AWADDR;
  wire [1:0]Conn4_AWBURST;
  wire [3:0]Conn4_AWCACHE;
  wire [3:0]Conn4_AWID;
  wire [7:0]Conn4_AWLEN;
  wire [0:0]Conn4_AWLOCK;
  wire [2:0]Conn4_AWPROT;
  wire Conn4_AWREADY;
  wire [2:0]Conn4_AWSIZE;
  wire Conn4_AWVALID;
  wire [3:0]Conn4_BID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [511:0]Conn4_RDATA;
  wire [3:0]Conn4_RID;
  wire Conn4_RLAST;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [511:0]Conn4_WDATA;
  wire Conn4_WLAST;
  wire Conn4_WREADY;
  wire [63:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [37:0]Conn5_ARADDR;
  wire [1:0]Conn5_ARBURST;
  wire [3:0]Conn5_ARCACHE;
  wire [3:0]Conn5_ARID;
  wire [7:0]Conn5_ARLEN;
  wire [0:0]Conn5_ARLOCK;
  wire [2:0]Conn5_ARPROT;
  wire Conn5_ARREADY;
  wire [2:0]Conn5_ARSIZE;
  wire Conn5_ARVALID;
  wire [37:0]Conn5_AWADDR;
  wire [1:0]Conn5_AWBURST;
  wire [3:0]Conn5_AWCACHE;
  wire [3:0]Conn5_AWID;
  wire [7:0]Conn5_AWLEN;
  wire [0:0]Conn5_AWLOCK;
  wire [2:0]Conn5_AWPROT;
  wire Conn5_AWREADY;
  wire [2:0]Conn5_AWSIZE;
  wire Conn5_AWVALID;
  wire [3:0]Conn5_BID;
  wire Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire Conn5_BVALID;
  wire [255:0]Conn5_RDATA;
  wire [3:0]Conn5_RID;
  wire Conn5_RLAST;
  wire Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire Conn5_RVALID;
  wire [255:0]Conn5_WDATA;
  wire Conn5_WLAST;
  wire Conn5_WREADY;
  wire [31:0]Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [31:0]S_AXI_FULL_1_ARADDR;
  wire [1:0]S_AXI_FULL_1_ARBURST;
  wire [3:0]S_AXI_FULL_1_ARCACHE;
  wire [7:0]S_AXI_FULL_1_ARLEN;
  wire [0:0]S_AXI_FULL_1_ARLOCK;
  wire [2:0]S_AXI_FULL_1_ARPROT;
  wire S_AXI_FULL_1_ARREADY;
  wire [2:0]S_AXI_FULL_1_ARSIZE;
  wire S_AXI_FULL_1_ARVALID;
  wire [255:0]S_AXI_FULL_1_RDATA;
  wire S_AXI_FULL_1_RLAST;
  wire S_AXI_FULL_1_RREADY;
  wire [1:0]S_AXI_FULL_1_RRESP;
  wire S_AXI_FULL_1_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI1_ARADDR;
  wire [2:0]axi_register_slice_0_M_AXI1_ARPROT;
  wire axi_register_slice_0_M_AXI1_ARREADY;
  wire axi_register_slice_0_M_AXI1_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI1_AWADDR;
  wire [2:0]axi_register_slice_0_M_AXI1_AWPROT;
  wire axi_register_slice_0_M_AXI1_AWREADY;
  wire axi_register_slice_0_M_AXI1_AWVALID;
  wire axi_register_slice_0_M_AXI1_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI1_BRESP;
  wire axi_register_slice_0_M_AXI1_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI1_RDATA;
  wire axi_register_slice_0_M_AXI1_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI1_RRESP;
  wire axi_register_slice_0_M_AXI1_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI1_WDATA;
  wire axi_register_slice_0_M_AXI1_WREADY;
  wire [3:0]axi_register_slice_0_M_AXI1_WSTRB;
  wire axi_register_slice_0_M_AXI1_WVALID;
  wire [15:0]axi_register_slice_0_M_AXI_ARADDR;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [15:0]axi_register_slice_0_M_AXI_AWADDR;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [3:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [31:0]axi_register_slice_1_M_AXI_ARADDR;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_1_M_AXI_AWADDR;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [31:0]axi_register_slice_1_M_AXI_RDATA;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [31:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire [3:0]axi_register_slice_1_M_AXI_WSTRB;
  wire axi_register_slice_1_M_AXI_WVALID;
  wire core_aclk_1;
  wire ext_clk_1_1;
  wire [15:0]interconnect_axilite_M01_AXI_1_ARADDR;
  wire [2:0]interconnect_axilite_M01_AXI_1_ARPROT;
  wire interconnect_axilite_M01_AXI_1_ARREADY;
  wire interconnect_axilite_M01_AXI_1_ARVALID;
  wire [15:0]interconnect_axilite_M01_AXI_1_AWADDR;
  wire [2:0]interconnect_axilite_M01_AXI_1_AWPROT;
  wire interconnect_axilite_M01_AXI_1_AWREADY;
  wire interconnect_axilite_M01_AXI_1_AWVALID;
  wire interconnect_axilite_M01_AXI_1_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_1_BRESP;
  wire interconnect_axilite_M01_AXI_1_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_1_RDATA;
  wire interconnect_axilite_M01_AXI_1_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_1_RRESP;
  wire interconnect_axilite_M01_AXI_1_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_1_WDATA;
  wire interconnect_axilite_M01_AXI_1_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_1_WSTRB;
  wire interconnect_axilite_M01_AXI_1_WVALID;
  wire [31:0]interconnect_axilite_M02_AXI_1_ARADDR;
  wire [2:0]interconnect_axilite_M02_AXI_1_ARPROT;
  wire interconnect_axilite_M02_AXI_1_ARREADY;
  wire interconnect_axilite_M02_AXI_1_ARVALID;
  wire [31:0]interconnect_axilite_M02_AXI_1_AWADDR;
  wire [2:0]interconnect_axilite_M02_AXI_1_AWPROT;
  wire interconnect_axilite_M02_AXI_1_AWREADY;
  wire interconnect_axilite_M02_AXI_1_AWVALID;
  wire interconnect_axilite_M02_AXI_1_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_1_BRESP;
  wire interconnect_axilite_M02_AXI_1_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_1_RDATA;
  wire interconnect_axilite_M02_AXI_1_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_1_RRESP;
  wire interconnect_axilite_M02_AXI_1_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_1_WDATA;
  wire interconnect_axilite_M02_AXI_1_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_1_WSTRB;
  wire interconnect_axilite_M02_AXI_1_WVALID;
  wire [0:0]m_axis_aresetn_1;
  wire [15:0]regslice_apm_a_M_AXI_ARADDR;
  wire [2:0]regslice_apm_a_M_AXI_ARPROT;
  wire regslice_apm_a_M_AXI_ARREADY;
  wire regslice_apm_a_M_AXI_ARVALID;
  wire [15:0]regslice_apm_a_M_AXI_AWADDR;
  wire [2:0]regslice_apm_a_M_AXI_AWPROT;
  wire regslice_apm_a_M_AXI_AWREADY;
  wire regslice_apm_a_M_AXI_AWVALID;
  wire regslice_apm_a_M_AXI_BREADY;
  wire [1:0]regslice_apm_a_M_AXI_BRESP;
  wire regslice_apm_a_M_AXI_BVALID;
  wire [31:0]regslice_apm_a_M_AXI_RDATA;
  wire regslice_apm_a_M_AXI_RREADY;
  wire [1:0]regslice_apm_a_M_AXI_RRESP;
  wire regslice_apm_a_M_AXI_RVALID;
  wire [31:0]regslice_apm_a_M_AXI_WDATA;
  wire regslice_apm_a_M_AXI_WREADY;
  wire [3:0]regslice_apm_a_M_AXI_WSTRB;
  wire regslice_apm_a_M_AXI_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aclk_2;
  wire [0:0]s_axi_aresetn_1;
  wire [0:0]slot_1_axi_aresetn_1;
  wire [0:0]slot_1_axi_aresetn_2;
  wire [151:0]xilmonitor_apm_M_AXIS_TDATA;
  wire [0:0]xilmonitor_apm_M_AXIS_TID;
  wire xilmonitor_apm_M_AXIS_TREADY;
  wire [18:0]xilmonitor_apm_M_AXIS_TSTRB;
  wire xilmonitor_apm_M_AXIS_TVALID;
  wire [255:0]xilmonitor_subset0_M_AXIS_TDATA;
  wire [0:0]xilmonitor_subset0_M_AXIS_TID;
  wire xilmonitor_subset0_M_AXIS_TREADY;
  wire xilmonitor_subset0_M_AXIS_TVALID;

  assign Conn1_ARADDR = u_ocl_region_M00_AXI_araddr[33:0];
  assign Conn1_ARBURST = u_ocl_region_M00_AXI_arburst[1:0];
  assign Conn1_ARCACHE = u_ocl_region_M00_AXI_arcache[3:0];
  assign Conn1_ARID = u_ocl_region_M00_AXI_arid[3:0];
  assign Conn1_ARLEN = u_ocl_region_M00_AXI_arlen[7:0];
  assign Conn1_ARLOCK = u_ocl_region_M00_AXI_arlock[0];
  assign Conn1_ARPROT = u_ocl_region_M00_AXI_arprot[2:0];
  assign Conn1_ARREADY = u_ocl_region_M00_AXI_arready;
  assign Conn1_ARSIZE = u_ocl_region_M00_AXI_arsize[2:0];
  assign Conn1_ARVALID = u_ocl_region_M00_AXI_arvalid;
  assign Conn1_AWADDR = u_ocl_region_M00_AXI_awaddr[33:0];
  assign Conn1_AWBURST = u_ocl_region_M00_AXI_awburst[1:0];
  assign Conn1_AWCACHE = u_ocl_region_M00_AXI_awcache[3:0];
  assign Conn1_AWID = u_ocl_region_M00_AXI_awid[3:0];
  assign Conn1_AWLEN = u_ocl_region_M00_AXI_awlen[7:0];
  assign Conn1_AWLOCK = u_ocl_region_M00_AXI_awlock[0];
  assign Conn1_AWPROT = u_ocl_region_M00_AXI_awprot[2:0];
  assign Conn1_AWREADY = u_ocl_region_M00_AXI_awready;
  assign Conn1_AWSIZE = u_ocl_region_M00_AXI_awsize[2:0];
  assign Conn1_AWVALID = u_ocl_region_M00_AXI_awvalid;
  assign Conn1_BID = u_ocl_region_M00_AXI_bid[3:0];
  assign Conn1_BREADY = u_ocl_region_M00_AXI_bready;
  assign Conn1_BRESP = u_ocl_region_M00_AXI_bresp[1:0];
  assign Conn1_BVALID = u_ocl_region_M00_AXI_bvalid;
  assign Conn1_RDATA = u_ocl_region_M00_AXI_rdata[511:0];
  assign Conn1_RID = u_ocl_region_M00_AXI_rid[3:0];
  assign Conn1_RLAST = u_ocl_region_M00_AXI_rlast;
  assign Conn1_RREADY = u_ocl_region_M00_AXI_rready;
  assign Conn1_RRESP = u_ocl_region_M00_AXI_rresp[1:0];
  assign Conn1_RVALID = u_ocl_region_M00_AXI_rvalid;
  assign Conn1_WDATA = u_ocl_region_M00_AXI_wdata[511:0];
  assign Conn1_WLAST = u_ocl_region_M00_AXI_wlast;
  assign Conn1_WREADY = u_ocl_region_M00_AXI_wready;
  assign Conn1_WSTRB = u_ocl_region_M00_AXI_wstrb[63:0];
  assign Conn1_WVALID = u_ocl_region_M00_AXI_wvalid;
  assign Conn2_ARADDR = u_ocl_region_M01_AXI_araddr[33:0];
  assign Conn2_ARBURST = u_ocl_region_M01_AXI_arburst[1:0];
  assign Conn2_ARCACHE = u_ocl_region_M01_AXI_arcache[3:0];
  assign Conn2_ARID = u_ocl_region_M01_AXI_arid[3:0];
  assign Conn2_ARLEN = u_ocl_region_M01_AXI_arlen[7:0];
  assign Conn2_ARLOCK = u_ocl_region_M01_AXI_arlock[0];
  assign Conn2_ARPROT = u_ocl_region_M01_AXI_arprot[2:0];
  assign Conn2_ARREADY = u_ocl_region_M01_AXI_arready;
  assign Conn2_ARSIZE = u_ocl_region_M01_AXI_arsize[2:0];
  assign Conn2_ARVALID = u_ocl_region_M01_AXI_arvalid;
  assign Conn2_AWADDR = u_ocl_region_M01_AXI_awaddr[33:0];
  assign Conn2_AWBURST = u_ocl_region_M01_AXI_awburst[1:0];
  assign Conn2_AWCACHE = u_ocl_region_M01_AXI_awcache[3:0];
  assign Conn2_AWID = u_ocl_region_M01_AXI_awid[3:0];
  assign Conn2_AWLEN = u_ocl_region_M01_AXI_awlen[7:0];
  assign Conn2_AWLOCK = u_ocl_region_M01_AXI_awlock[0];
  assign Conn2_AWPROT = u_ocl_region_M01_AXI_awprot[2:0];
  assign Conn2_AWREADY = u_ocl_region_M01_AXI_awready;
  assign Conn2_AWSIZE = u_ocl_region_M01_AXI_awsize[2:0];
  assign Conn2_AWVALID = u_ocl_region_M01_AXI_awvalid;
  assign Conn2_BID = u_ocl_region_M01_AXI_bid[3:0];
  assign Conn2_BREADY = u_ocl_region_M01_AXI_bready;
  assign Conn2_BRESP = u_ocl_region_M01_AXI_bresp[1:0];
  assign Conn2_BVALID = u_ocl_region_M01_AXI_bvalid;
  assign Conn2_RDATA = u_ocl_region_M01_AXI_rdata[511:0];
  assign Conn2_RID = u_ocl_region_M01_AXI_rid[3:0];
  assign Conn2_RLAST = u_ocl_region_M01_AXI_rlast;
  assign Conn2_RREADY = u_ocl_region_M01_AXI_rready;
  assign Conn2_RRESP = u_ocl_region_M01_AXI_rresp[1:0];
  assign Conn2_RVALID = u_ocl_region_M01_AXI_rvalid;
  assign Conn2_WDATA = u_ocl_region_M01_AXI_wdata[511:0];
  assign Conn2_WLAST = u_ocl_region_M01_AXI_wlast;
  assign Conn2_WREADY = u_ocl_region_M01_AXI_wready;
  assign Conn2_WSTRB = u_ocl_region_M01_AXI_wstrb[63:0];
  assign Conn2_WVALID = u_ocl_region_M01_AXI_wvalid;
  assign Conn3_ARADDR = u_ocl_region_M02_AXI_araddr[33:0];
  assign Conn3_ARBURST = u_ocl_region_M02_AXI_arburst[1:0];
  assign Conn3_ARCACHE = u_ocl_region_M02_AXI_arcache[3:0];
  assign Conn3_ARID = u_ocl_region_M02_AXI_arid[3:0];
  assign Conn3_ARLEN = u_ocl_region_M02_AXI_arlen[7:0];
  assign Conn3_ARLOCK = u_ocl_region_M02_AXI_arlock[0];
  assign Conn3_ARPROT = u_ocl_region_M02_AXI_arprot[2:0];
  assign Conn3_ARREADY = u_ocl_region_M02_AXI_arready;
  assign Conn3_ARSIZE = u_ocl_region_M02_AXI_arsize[2:0];
  assign Conn3_ARVALID = u_ocl_region_M02_AXI_arvalid;
  assign Conn3_AWADDR = u_ocl_region_M02_AXI_awaddr[33:0];
  assign Conn3_AWBURST = u_ocl_region_M02_AXI_awburst[1:0];
  assign Conn3_AWCACHE = u_ocl_region_M02_AXI_awcache[3:0];
  assign Conn3_AWID = u_ocl_region_M02_AXI_awid[3:0];
  assign Conn3_AWLEN = u_ocl_region_M02_AXI_awlen[7:0];
  assign Conn3_AWLOCK = u_ocl_region_M02_AXI_awlock[0];
  assign Conn3_AWPROT = u_ocl_region_M02_AXI_awprot[2:0];
  assign Conn3_AWREADY = u_ocl_region_M02_AXI_awready;
  assign Conn3_AWSIZE = u_ocl_region_M02_AXI_awsize[2:0];
  assign Conn3_AWVALID = u_ocl_region_M02_AXI_awvalid;
  assign Conn3_BID = u_ocl_region_M02_AXI_bid[3:0];
  assign Conn3_BREADY = u_ocl_region_M02_AXI_bready;
  assign Conn3_BRESP = u_ocl_region_M02_AXI_bresp[1:0];
  assign Conn3_BVALID = u_ocl_region_M02_AXI_bvalid;
  assign Conn3_RDATA = u_ocl_region_M02_AXI_rdata[511:0];
  assign Conn3_RID = u_ocl_region_M02_AXI_rid[3:0];
  assign Conn3_RLAST = u_ocl_region_M02_AXI_rlast;
  assign Conn3_RREADY = u_ocl_region_M02_AXI_rready;
  assign Conn3_RRESP = u_ocl_region_M02_AXI_rresp[1:0];
  assign Conn3_RVALID = u_ocl_region_M02_AXI_rvalid;
  assign Conn3_WDATA = u_ocl_region_M02_AXI_wdata[511:0];
  assign Conn3_WLAST = u_ocl_region_M02_AXI_wlast;
  assign Conn3_WREADY = u_ocl_region_M02_AXI_wready;
  assign Conn3_WSTRB = u_ocl_region_M02_AXI_wstrb[63:0];
  assign Conn3_WVALID = u_ocl_region_M02_AXI_wvalid;
  assign Conn4_ARADDR = u_ocl_region_M03_AXI_araddr[33:0];
  assign Conn4_ARBURST = u_ocl_region_M03_AXI_arburst[1:0];
  assign Conn4_ARCACHE = u_ocl_region_M03_AXI_arcache[3:0];
  assign Conn4_ARID = u_ocl_region_M03_AXI_arid[3:0];
  assign Conn4_ARLEN = u_ocl_region_M03_AXI_arlen[7:0];
  assign Conn4_ARLOCK = u_ocl_region_M03_AXI_arlock[0];
  assign Conn4_ARPROT = u_ocl_region_M03_AXI_arprot[2:0];
  assign Conn4_ARREADY = u_ocl_region_M03_AXI_arready;
  assign Conn4_ARSIZE = u_ocl_region_M03_AXI_arsize[2:0];
  assign Conn4_ARVALID = u_ocl_region_M03_AXI_arvalid;
  assign Conn4_AWADDR = u_ocl_region_M03_AXI_awaddr[33:0];
  assign Conn4_AWBURST = u_ocl_region_M03_AXI_awburst[1:0];
  assign Conn4_AWCACHE = u_ocl_region_M03_AXI_awcache[3:0];
  assign Conn4_AWID = u_ocl_region_M03_AXI_awid[3:0];
  assign Conn4_AWLEN = u_ocl_region_M03_AXI_awlen[7:0];
  assign Conn4_AWLOCK = u_ocl_region_M03_AXI_awlock[0];
  assign Conn4_AWPROT = u_ocl_region_M03_AXI_awprot[2:0];
  assign Conn4_AWREADY = u_ocl_region_M03_AXI_awready;
  assign Conn4_AWSIZE = u_ocl_region_M03_AXI_awsize[2:0];
  assign Conn4_AWVALID = u_ocl_region_M03_AXI_awvalid;
  assign Conn4_BID = u_ocl_region_M03_AXI_bid[3:0];
  assign Conn4_BREADY = u_ocl_region_M03_AXI_bready;
  assign Conn4_BRESP = u_ocl_region_M03_AXI_bresp[1:0];
  assign Conn4_BVALID = u_ocl_region_M03_AXI_bvalid;
  assign Conn4_RDATA = u_ocl_region_M03_AXI_rdata[511:0];
  assign Conn4_RID = u_ocl_region_M03_AXI_rid[3:0];
  assign Conn4_RLAST = u_ocl_region_M03_AXI_rlast;
  assign Conn4_RREADY = u_ocl_region_M03_AXI_rready;
  assign Conn4_RRESP = u_ocl_region_M03_AXI_rresp[1:0];
  assign Conn4_RVALID = u_ocl_region_M03_AXI_rvalid;
  assign Conn4_WDATA = u_ocl_region_M03_AXI_wdata[511:0];
  assign Conn4_WLAST = u_ocl_region_M03_AXI_wlast;
  assign Conn4_WREADY = u_ocl_region_M03_AXI_wready;
  assign Conn4_WSTRB = u_ocl_region_M03_AXI_wstrb[63:0];
  assign Conn4_WVALID = u_ocl_region_M03_AXI_wvalid;
  assign Conn5_ARADDR = regslice_data_M_AXI_araddr[37:0];
  assign Conn5_ARBURST = regslice_data_M_AXI_arburst[1:0];
  assign Conn5_ARCACHE = regslice_data_M_AXI_arcache[3:0];
  assign Conn5_ARID = regslice_data_M_AXI_arid[3:0];
  assign Conn5_ARLEN = regslice_data_M_AXI_arlen[7:0];
  assign Conn5_ARLOCK = regslice_data_M_AXI_arlock[0];
  assign Conn5_ARPROT = regslice_data_M_AXI_arprot[2:0];
  assign Conn5_ARREADY = regslice_data_M_AXI_arready;
  assign Conn5_ARSIZE = regslice_data_M_AXI_arsize[2:0];
  assign Conn5_ARVALID = regslice_data_M_AXI_arvalid;
  assign Conn5_AWADDR = regslice_data_M_AXI_awaddr[37:0];
  assign Conn5_AWBURST = regslice_data_M_AXI_awburst[1:0];
  assign Conn5_AWCACHE = regslice_data_M_AXI_awcache[3:0];
  assign Conn5_AWID = regslice_data_M_AXI_awid[3:0];
  assign Conn5_AWLEN = regslice_data_M_AXI_awlen[7:0];
  assign Conn5_AWLOCK = regslice_data_M_AXI_awlock[0];
  assign Conn5_AWPROT = regslice_data_M_AXI_awprot[2:0];
  assign Conn5_AWREADY = regslice_data_M_AXI_awready;
  assign Conn5_AWSIZE = regslice_data_M_AXI_awsize[2:0];
  assign Conn5_AWVALID = regslice_data_M_AXI_awvalid;
  assign Conn5_BID = regslice_data_M_AXI_bid[3:0];
  assign Conn5_BREADY = regslice_data_M_AXI_bready;
  assign Conn5_BRESP = regslice_data_M_AXI_bresp[1:0];
  assign Conn5_BVALID = regslice_data_M_AXI_bvalid;
  assign Conn5_RDATA = regslice_data_M_AXI_rdata[255:0];
  assign Conn5_RID = regslice_data_M_AXI_rid[3:0];
  assign Conn5_RLAST = regslice_data_M_AXI_rlast;
  assign Conn5_RREADY = regslice_data_M_AXI_rready;
  assign Conn5_RRESP = regslice_data_M_AXI_rresp[1:0];
  assign Conn5_RVALID = regslice_data_M_AXI_rvalid;
  assign Conn5_WDATA = regslice_data_M_AXI_wdata[255:0];
  assign Conn5_WLAST = regslice_data_M_AXI_wlast;
  assign Conn5_WREADY = regslice_data_M_AXI_wready;
  assign Conn5_WSTRB = regslice_data_M_AXI_wstrb[31:0];
  assign Conn5_WVALID = regslice_data_M_AXI_wvalid;
  assign S_AXI_FULL_1_ARADDR = interconnect_aximm_host_M04_AXI_araddr[31:0];
  assign S_AXI_FULL_1_ARBURST = interconnect_aximm_host_M04_AXI_arburst[1:0];
  assign S_AXI_FULL_1_ARCACHE = interconnect_aximm_host_M04_AXI_arcache[3:0];
  assign S_AXI_FULL_1_ARLEN = interconnect_aximm_host_M04_AXI_arlen[7:0];
  assign S_AXI_FULL_1_ARLOCK = interconnect_aximm_host_M04_AXI_arlock[0];
  assign S_AXI_FULL_1_ARPROT = interconnect_aximm_host_M04_AXI_arprot[2:0];
  assign S_AXI_FULL_1_ARSIZE = interconnect_aximm_host_M04_AXI_arsize[2:0];
  assign S_AXI_FULL_1_ARVALID = interconnect_aximm_host_M04_AXI_arvalid;
  assign S_AXI_FULL_1_RREADY = interconnect_aximm_host_M04_AXI_rready;
  assign core_aclk_1 = clkwiz_kernel_clk_out1;
  assign ext_clk_1_1 = dma_pcie_axi_aclk;
  assign interconnect_axilite_M01_AXI_1_ARADDR = interconnect_axilite_M01_AXI_araddr[15:0];
  assign interconnect_axilite_M01_AXI_1_ARPROT = interconnect_axilite_M01_AXI_arprot[2:0];
  assign interconnect_axilite_M01_AXI_1_ARVALID = interconnect_axilite_M01_AXI_arvalid;
  assign interconnect_axilite_M01_AXI_1_AWADDR = interconnect_axilite_M01_AXI_awaddr[15:0];
  assign interconnect_axilite_M01_AXI_1_AWPROT = interconnect_axilite_M01_AXI_awprot[2:0];
  assign interconnect_axilite_M01_AXI_1_AWVALID = interconnect_axilite_M01_AXI_awvalid;
  assign interconnect_axilite_M01_AXI_1_BREADY = interconnect_axilite_M01_AXI_bready;
  assign interconnect_axilite_M01_AXI_1_RREADY = interconnect_axilite_M01_AXI_rready;
  assign interconnect_axilite_M01_AXI_1_WDATA = interconnect_axilite_M01_AXI_wdata[31:0];
  assign interconnect_axilite_M01_AXI_1_WSTRB = interconnect_axilite_M01_AXI_wstrb[3:0];
  assign interconnect_axilite_M01_AXI_1_WVALID = interconnect_axilite_M01_AXI_wvalid;
  assign interconnect_axilite_M01_AXI_arready = interconnect_axilite_M01_AXI_1_ARREADY;
  assign interconnect_axilite_M01_AXI_awready = interconnect_axilite_M01_AXI_1_AWREADY;
  assign interconnect_axilite_M01_AXI_bresp[1:0] = interconnect_axilite_M01_AXI_1_BRESP;
  assign interconnect_axilite_M01_AXI_bvalid = interconnect_axilite_M01_AXI_1_BVALID;
  assign interconnect_axilite_M01_AXI_rdata[31:0] = interconnect_axilite_M01_AXI_1_RDATA;
  assign interconnect_axilite_M01_AXI_rresp[1:0] = interconnect_axilite_M01_AXI_1_RRESP;
  assign interconnect_axilite_M01_AXI_rvalid = interconnect_axilite_M01_AXI_1_RVALID;
  assign interconnect_axilite_M01_AXI_wready = interconnect_axilite_M01_AXI_1_WREADY;
  assign interconnect_axilite_M02_AXI_1_ARADDR = interconnect_axilite_M02_AXI_araddr[31:0];
  assign interconnect_axilite_M02_AXI_1_ARPROT = interconnect_axilite_M02_AXI_arprot[2:0];
  assign interconnect_axilite_M02_AXI_1_ARVALID = interconnect_axilite_M02_AXI_arvalid;
  assign interconnect_axilite_M02_AXI_1_AWADDR = interconnect_axilite_M02_AXI_awaddr[31:0];
  assign interconnect_axilite_M02_AXI_1_AWPROT = interconnect_axilite_M02_AXI_awprot[2:0];
  assign interconnect_axilite_M02_AXI_1_AWVALID = interconnect_axilite_M02_AXI_awvalid;
  assign interconnect_axilite_M02_AXI_1_BREADY = interconnect_axilite_M02_AXI_bready;
  assign interconnect_axilite_M02_AXI_1_RREADY = interconnect_axilite_M02_AXI_rready;
  assign interconnect_axilite_M02_AXI_1_WDATA = interconnect_axilite_M02_AXI_wdata[31:0];
  assign interconnect_axilite_M02_AXI_1_WSTRB = interconnect_axilite_M02_AXI_wstrb[3:0];
  assign interconnect_axilite_M02_AXI_1_WVALID = interconnect_axilite_M02_AXI_wvalid;
  assign interconnect_axilite_M02_AXI_arready = interconnect_axilite_M02_AXI_1_ARREADY;
  assign interconnect_axilite_M02_AXI_awready = interconnect_axilite_M02_AXI_1_AWREADY;
  assign interconnect_axilite_M02_AXI_bresp[1:0] = interconnect_axilite_M02_AXI_1_BRESP;
  assign interconnect_axilite_M02_AXI_bvalid = interconnect_axilite_M02_AXI_1_BVALID;
  assign interconnect_axilite_M02_AXI_rdata[31:0] = interconnect_axilite_M02_AXI_1_RDATA;
  assign interconnect_axilite_M02_AXI_rresp[1:0] = interconnect_axilite_M02_AXI_1_RRESP;
  assign interconnect_axilite_M02_AXI_rvalid = interconnect_axilite_M02_AXI_1_RVALID;
  assign interconnect_axilite_M02_AXI_wready = interconnect_axilite_M02_AXI_1_WREADY;
  assign interconnect_aximm_host_M04_AXI_arready = S_AXI_FULL_1_ARREADY;
  assign interconnect_aximm_host_M04_AXI_rdata[255:0] = S_AXI_FULL_1_RDATA;
  assign interconnect_aximm_host_M04_AXI_rlast = S_AXI_FULL_1_RLAST;
  assign interconnect_aximm_host_M04_AXI_rresp[1:0] = S_AXI_FULL_1_RRESP;
  assign interconnect_aximm_host_M04_AXI_rvalid = S_AXI_FULL_1_RVALID;
  assign m_axis_aresetn_1 = psreset_gate_pr_kernel_interconnect_axiresetn[0];
  assign s_axi_aclk_1 = clkwiz_sysclks_clk_out1;
  assign s_axi_aclk_2 = clkwiz_sysclks_clk_out2;
  assign s_axi_aresetn_1 = psreset_gate_pr_apmclk_interconnect_aresetn[0];
  assign slot_1_axi_aresetn_1 = psreset_gate_pr_control_interconnect_aresetn[0];
  assign slot_1_axi_aresetn_2 = psreset_gate_pr_data_interconnect_aresetn[0];
  xcl_design_regslice_apm_a_0 regslice_apm_a
       (.aclk(s_axi_aclk_2),
        .aresetn(slot_1_axi_aresetn_1),
        .m_axi_araddr(regslice_apm_a_M_AXI_ARADDR),
        .m_axi_arprot(regslice_apm_a_M_AXI_ARPROT),
        .m_axi_arready(regslice_apm_a_M_AXI_ARREADY),
        .m_axi_arvalid(regslice_apm_a_M_AXI_ARVALID),
        .m_axi_awaddr(regslice_apm_a_M_AXI_AWADDR),
        .m_axi_awprot(regslice_apm_a_M_AXI_AWPROT),
        .m_axi_awready(regslice_apm_a_M_AXI_AWREADY),
        .m_axi_awvalid(regslice_apm_a_M_AXI_AWVALID),
        .m_axi_bready(regslice_apm_a_M_AXI_BREADY),
        .m_axi_bresp(regslice_apm_a_M_AXI_BRESP),
        .m_axi_bvalid(regslice_apm_a_M_AXI_BVALID),
        .m_axi_rdata(regslice_apm_a_M_AXI_RDATA),
        .m_axi_rready(regslice_apm_a_M_AXI_RREADY),
        .m_axi_rresp(regslice_apm_a_M_AXI_RRESP),
        .m_axi_rvalid(regslice_apm_a_M_AXI_RVALID),
        .m_axi_wdata(regslice_apm_a_M_AXI_WDATA),
        .m_axi_wready(regslice_apm_a_M_AXI_WREADY),
        .m_axi_wstrb(regslice_apm_a_M_AXI_WSTRB),
        .m_axi_wvalid(regslice_apm_a_M_AXI_WVALID),
        .s_axi_araddr(interconnect_axilite_M01_AXI_1_ARADDR),
        .s_axi_arprot(interconnect_axilite_M01_AXI_1_ARPROT),
        .s_axi_arready(interconnect_axilite_M01_AXI_1_ARREADY),
        .s_axi_arvalid(interconnect_axilite_M01_AXI_1_ARVALID),
        .s_axi_awaddr(interconnect_axilite_M01_AXI_1_AWADDR),
        .s_axi_awprot(interconnect_axilite_M01_AXI_1_AWPROT),
        .s_axi_awready(interconnect_axilite_M01_AXI_1_AWREADY),
        .s_axi_awvalid(interconnect_axilite_M01_AXI_1_AWVALID),
        .s_axi_bready(interconnect_axilite_M01_AXI_1_BREADY),
        .s_axi_bresp(interconnect_axilite_M01_AXI_1_BRESP),
        .s_axi_bvalid(interconnect_axilite_M01_AXI_1_BVALID),
        .s_axi_rdata(interconnect_axilite_M01_AXI_1_RDATA),
        .s_axi_rready(interconnect_axilite_M01_AXI_1_RREADY),
        .s_axi_rresp(interconnect_axilite_M01_AXI_1_RRESP),
        .s_axi_rvalid(interconnect_axilite_M01_AXI_1_RVALID),
        .s_axi_wdata(interconnect_axilite_M01_AXI_1_WDATA),
        .s_axi_wready(interconnect_axilite_M01_AXI_1_WREADY),
        .s_axi_wstrb(interconnect_axilite_M01_AXI_1_WSTRB),
        .s_axi_wvalid(interconnect_axilite_M01_AXI_1_WVALID));
  xcl_design_regslice_apm_b_0 regslice_apm_b
       (.aclk(s_axi_aclk_2),
        .aresetn(slot_1_axi_aresetn_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(regslice_apm_a_M_AXI_ARADDR),
        .s_axi_arprot(regslice_apm_a_M_AXI_ARPROT),
        .s_axi_arready(regslice_apm_a_M_AXI_ARREADY),
        .s_axi_arvalid(regslice_apm_a_M_AXI_ARVALID),
        .s_axi_awaddr(regslice_apm_a_M_AXI_AWADDR),
        .s_axi_awprot(regslice_apm_a_M_AXI_AWPROT),
        .s_axi_awready(regslice_apm_a_M_AXI_AWREADY),
        .s_axi_awvalid(regslice_apm_a_M_AXI_AWVALID),
        .s_axi_bready(regslice_apm_a_M_AXI_BREADY),
        .s_axi_bresp(regslice_apm_a_M_AXI_BRESP),
        .s_axi_bvalid(regslice_apm_a_M_AXI_BVALID),
        .s_axi_rdata(regslice_apm_a_M_AXI_RDATA),
        .s_axi_rready(regslice_apm_a_M_AXI_RREADY),
        .s_axi_rresp(regslice_apm_a_M_AXI_RRESP),
        .s_axi_rvalid(regslice_apm_a_M_AXI_RVALID),
        .s_axi_wdata(regslice_apm_a_M_AXI_WDATA),
        .s_axi_wready(regslice_apm_a_M_AXI_WREADY),
        .s_axi_wstrb(regslice_apm_a_M_AXI_WSTRB),
        .s_axi_wvalid(regslice_apm_a_M_AXI_WVALID));
  xcl_design_regslice_fifo_a_0 regslice_fifo_a
       (.aclk(s_axi_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI1_ARADDR),
        .m_axi_arprot(axi_register_slice_0_M_AXI1_ARPROT),
        .m_axi_arready(axi_register_slice_0_M_AXI1_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI1_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI1_AWADDR),
        .m_axi_awprot(axi_register_slice_0_M_AXI1_AWPROT),
        .m_axi_awready(axi_register_slice_0_M_AXI1_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI1_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI1_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI1_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI1_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI1_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI1_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI1_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI1_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI1_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI1_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI1_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI1_WVALID),
        .s_axi_araddr(interconnect_axilite_M02_AXI_1_ARADDR),
        .s_axi_arprot(interconnect_axilite_M02_AXI_1_ARPROT),
        .s_axi_arready(interconnect_axilite_M02_AXI_1_ARREADY),
        .s_axi_arvalid(interconnect_axilite_M02_AXI_1_ARVALID),
        .s_axi_awaddr(interconnect_axilite_M02_AXI_1_AWADDR),
        .s_axi_awprot(interconnect_axilite_M02_AXI_1_AWPROT),
        .s_axi_awready(interconnect_axilite_M02_AXI_1_AWREADY),
        .s_axi_awvalid(interconnect_axilite_M02_AXI_1_AWVALID),
        .s_axi_bready(interconnect_axilite_M02_AXI_1_BREADY),
        .s_axi_bresp(interconnect_axilite_M02_AXI_1_BRESP),
        .s_axi_bvalid(interconnect_axilite_M02_AXI_1_BVALID),
        .s_axi_rdata(interconnect_axilite_M02_AXI_1_RDATA),
        .s_axi_rready(interconnect_axilite_M02_AXI_1_RREADY),
        .s_axi_rresp(interconnect_axilite_M02_AXI_1_RRESP),
        .s_axi_rvalid(interconnect_axilite_M02_AXI_1_RVALID),
        .s_axi_wdata(interconnect_axilite_M02_AXI_1_WDATA),
        .s_axi_wready(interconnect_axilite_M02_AXI_1_WREADY),
        .s_axi_wstrb(interconnect_axilite_M02_AXI_1_WSTRB),
        .s_axi_wvalid(interconnect_axilite_M02_AXI_1_WVALID));
  xcl_design_regslice_fifo_b_0 regslice_fifo_b
       (.aclk(s_axi_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(axi_register_slice_0_M_AXI1_ARADDR),
        .s_axi_arprot(axi_register_slice_0_M_AXI1_ARPROT),
        .s_axi_arready(axi_register_slice_0_M_AXI1_ARREADY),
        .s_axi_arvalid(axi_register_slice_0_M_AXI1_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI1_AWADDR),
        .s_axi_awprot(axi_register_slice_0_M_AXI1_AWPROT),
        .s_axi_awready(axi_register_slice_0_M_AXI1_AWREADY),
        .s_axi_awvalid(axi_register_slice_0_M_AXI1_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI1_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI1_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI1_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI1_RDATA),
        .s_axi_rready(axi_register_slice_0_M_AXI1_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI1_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI1_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI1_WDATA),
        .s_axi_wready(axi_register_slice_0_M_AXI1_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI1_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI1_WVALID));
  xcl_design_xilmonitor_apm_0 xilmonitor_apm
       (.capture_event(1'b0),
        .core_aclk(s_axi_aclk_1),
        .core_aresetn(s_axi_aresetn_1),
        .ext_clk_0(core_aclk_1),
        .ext_clk_1(ext_clk_1_1),
        .ext_clk_2(core_aclk_1),
        .ext_clk_3(core_aclk_1),
        .ext_clk_4(core_aclk_1),
        .ext_event_0(1'b0),
        .ext_event_0_cnt_start(1'b0),
        .ext_event_0_cnt_stop(1'b0),
        .ext_event_1(1'b0),
        .ext_event_1_cnt_start(1'b0),
        .ext_event_1_cnt_stop(1'b0),
        .ext_event_2(1'b0),
        .ext_event_2_cnt_start(1'b0),
        .ext_event_2_cnt_stop(1'b0),
        .ext_event_3(1'b0),
        .ext_event_3_cnt_start(1'b0),
        .ext_event_3_cnt_stop(1'b0),
        .ext_event_4(1'b0),
        .ext_event_4_cnt_start(1'b0),
        .ext_event_4_cnt_stop(1'b0),
        .ext_rstn_0(m_axis_aresetn_1),
        .ext_rstn_1(slot_1_axi_aresetn_2),
        .ext_rstn_2(m_axis_aresetn_1),
        .ext_rstn_3(m_axis_aresetn_1),
        .ext_rstn_4(m_axis_aresetn_1),
        .m_axis_aclk(s_axi_aclk_1),
        .m_axis_aresetn(s_axi_aresetn_1),
        .m_axis_tdata(xilmonitor_apm_M_AXIS_TDATA),
        .m_axis_tid(xilmonitor_apm_M_AXIS_TID),
        .m_axis_tready(xilmonitor_apm_M_AXIS_TREADY),
        .m_axis_tstrb(xilmonitor_apm_M_AXIS_TSTRB),
        .m_axis_tvalid(xilmonitor_apm_M_AXIS_TVALID),
        .reset_event(1'b0),
        .s_axi_aclk(s_axi_aclk_2),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_aresetn(slot_1_axi_aresetn_1),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .slot_0_axi_aclk(core_aclk_1),
        .slot_0_axi_araddr(Conn1_ARADDR),
        .slot_0_axi_arburst(Conn1_ARBURST),
        .slot_0_axi_arcache(Conn1_ARCACHE),
        .slot_0_axi_aresetn(m_axis_aresetn_1),
        .slot_0_axi_arid(Conn1_ARID),
        .slot_0_axi_arlen(Conn1_ARLEN),
        .slot_0_axi_arlock(Conn1_ARLOCK),
        .slot_0_axi_arprot(Conn1_ARPROT),
        .slot_0_axi_arready(Conn1_ARREADY),
        .slot_0_axi_arsize(Conn1_ARSIZE),
        .slot_0_axi_arvalid(Conn1_ARVALID),
        .slot_0_axi_awaddr(Conn1_AWADDR),
        .slot_0_axi_awburst(Conn1_AWBURST),
        .slot_0_axi_awcache(Conn1_AWCACHE),
        .slot_0_axi_awid(Conn1_AWID),
        .slot_0_axi_awlen(Conn1_AWLEN),
        .slot_0_axi_awlock(Conn1_AWLOCK),
        .slot_0_axi_awprot(Conn1_AWPROT),
        .slot_0_axi_awready(Conn1_AWREADY),
        .slot_0_axi_awsize(Conn1_AWSIZE),
        .slot_0_axi_awvalid(Conn1_AWVALID),
        .slot_0_axi_bid(Conn1_BID),
        .slot_0_axi_bready(Conn1_BREADY),
        .slot_0_axi_bresp(Conn1_BRESP),
        .slot_0_axi_bvalid(Conn1_BVALID),
        .slot_0_axi_rdata(Conn1_RDATA),
        .slot_0_axi_rid(Conn1_RID),
        .slot_0_axi_rlast(Conn1_RLAST),
        .slot_0_axi_rready(Conn1_RREADY),
        .slot_0_axi_rresp(Conn1_RRESP),
        .slot_0_axi_rvalid(Conn1_RVALID),
        .slot_0_axi_wdata(Conn1_WDATA),
        .slot_0_axi_wlast(Conn1_WLAST),
        .slot_0_axi_wready(Conn1_WREADY),
        .slot_0_axi_wstrb(Conn1_WSTRB),
        .slot_0_axi_wvalid(Conn1_WVALID),
        .slot_0_ext_trig(1'b0),
        .slot_0_ext_trig_stop(1'b0),
        .slot_1_axi_aclk(ext_clk_1_1),
        .slot_1_axi_araddr(Conn5_ARADDR),
        .slot_1_axi_arburst(Conn5_ARBURST),
        .slot_1_axi_arcache(Conn5_ARCACHE),
        .slot_1_axi_aresetn(slot_1_axi_aresetn_2),
        .slot_1_axi_arid(Conn5_ARID),
        .slot_1_axi_arlen(Conn5_ARLEN),
        .slot_1_axi_arlock(Conn5_ARLOCK),
        .slot_1_axi_arprot(Conn5_ARPROT),
        .slot_1_axi_arready(Conn5_ARREADY),
        .slot_1_axi_arsize(Conn5_ARSIZE),
        .slot_1_axi_arvalid(Conn5_ARVALID),
        .slot_1_axi_awaddr(Conn5_AWADDR),
        .slot_1_axi_awburst(Conn5_AWBURST),
        .slot_1_axi_awcache(Conn5_AWCACHE),
        .slot_1_axi_awid(Conn5_AWID),
        .slot_1_axi_awlen(Conn5_AWLEN),
        .slot_1_axi_awlock(Conn5_AWLOCK),
        .slot_1_axi_awprot(Conn5_AWPROT),
        .slot_1_axi_awready(Conn5_AWREADY),
        .slot_1_axi_awsize(Conn5_AWSIZE),
        .slot_1_axi_awvalid(Conn5_AWVALID),
        .slot_1_axi_bid(Conn5_BID),
        .slot_1_axi_bready(Conn5_BREADY),
        .slot_1_axi_bresp(Conn5_BRESP),
        .slot_1_axi_bvalid(Conn5_BVALID),
        .slot_1_axi_rdata(Conn5_RDATA),
        .slot_1_axi_rid(Conn5_RID),
        .slot_1_axi_rlast(Conn5_RLAST),
        .slot_1_axi_rready(Conn5_RREADY),
        .slot_1_axi_rresp(Conn5_RRESP),
        .slot_1_axi_rvalid(Conn5_RVALID),
        .slot_1_axi_wdata(Conn5_WDATA),
        .slot_1_axi_wlast(Conn5_WLAST),
        .slot_1_axi_wready(Conn5_WREADY),
        .slot_1_axi_wstrb(Conn5_WSTRB),
        .slot_1_axi_wvalid(Conn5_WVALID),
        .slot_1_ext_trig(1'b0),
        .slot_1_ext_trig_stop(1'b0),
        .slot_2_axi_aclk(core_aclk_1),
        .slot_2_axi_araddr(Conn2_ARADDR),
        .slot_2_axi_arburst(Conn2_ARBURST),
        .slot_2_axi_arcache(Conn2_ARCACHE),
        .slot_2_axi_aresetn(m_axis_aresetn_1),
        .slot_2_axi_arid(Conn2_ARID),
        .slot_2_axi_arlen(Conn2_ARLEN),
        .slot_2_axi_arlock(Conn2_ARLOCK),
        .slot_2_axi_arprot(Conn2_ARPROT),
        .slot_2_axi_arready(Conn2_ARREADY),
        .slot_2_axi_arsize(Conn2_ARSIZE),
        .slot_2_axi_arvalid(Conn2_ARVALID),
        .slot_2_axi_awaddr(Conn2_AWADDR),
        .slot_2_axi_awburst(Conn2_AWBURST),
        .slot_2_axi_awcache(Conn2_AWCACHE),
        .slot_2_axi_awid(Conn2_AWID),
        .slot_2_axi_awlen(Conn2_AWLEN),
        .slot_2_axi_awlock(Conn2_AWLOCK),
        .slot_2_axi_awprot(Conn2_AWPROT),
        .slot_2_axi_awready(Conn2_AWREADY),
        .slot_2_axi_awsize(Conn2_AWSIZE),
        .slot_2_axi_awvalid(Conn2_AWVALID),
        .slot_2_axi_bid(Conn2_BID),
        .slot_2_axi_bready(Conn2_BREADY),
        .slot_2_axi_bresp(Conn2_BRESP),
        .slot_2_axi_bvalid(Conn2_BVALID),
        .slot_2_axi_rdata(Conn2_RDATA),
        .slot_2_axi_rid(Conn2_RID),
        .slot_2_axi_rlast(Conn2_RLAST),
        .slot_2_axi_rready(Conn2_RREADY),
        .slot_2_axi_rresp(Conn2_RRESP),
        .slot_2_axi_rvalid(Conn2_RVALID),
        .slot_2_axi_wdata(Conn2_WDATA),
        .slot_2_axi_wlast(Conn2_WLAST),
        .slot_2_axi_wready(Conn2_WREADY),
        .slot_2_axi_wstrb(Conn2_WSTRB),
        .slot_2_axi_wvalid(Conn2_WVALID),
        .slot_2_ext_trig(1'b0),
        .slot_2_ext_trig_stop(1'b0),
        .slot_3_axi_aclk(core_aclk_1),
        .slot_3_axi_araddr(Conn3_ARADDR),
        .slot_3_axi_arburst(Conn3_ARBURST),
        .slot_3_axi_arcache(Conn3_ARCACHE),
        .slot_3_axi_aresetn(m_axis_aresetn_1),
        .slot_3_axi_arid(Conn3_ARID),
        .slot_3_axi_arlen(Conn3_ARLEN),
        .slot_3_axi_arlock(Conn3_ARLOCK),
        .slot_3_axi_arprot(Conn3_ARPROT),
        .slot_3_axi_arready(Conn3_ARREADY),
        .slot_3_axi_arsize(Conn3_ARSIZE),
        .slot_3_axi_arvalid(Conn3_ARVALID),
        .slot_3_axi_awaddr(Conn3_AWADDR),
        .slot_3_axi_awburst(Conn3_AWBURST),
        .slot_3_axi_awcache(Conn3_AWCACHE),
        .slot_3_axi_awid(Conn3_AWID),
        .slot_3_axi_awlen(Conn3_AWLEN),
        .slot_3_axi_awlock(Conn3_AWLOCK),
        .slot_3_axi_awprot(Conn3_AWPROT),
        .slot_3_axi_awready(Conn3_AWREADY),
        .slot_3_axi_awsize(Conn3_AWSIZE),
        .slot_3_axi_awvalid(Conn3_AWVALID),
        .slot_3_axi_bid(Conn3_BID),
        .slot_3_axi_bready(Conn3_BREADY),
        .slot_3_axi_bresp(Conn3_BRESP),
        .slot_3_axi_bvalid(Conn3_BVALID),
        .slot_3_axi_rdata(Conn3_RDATA),
        .slot_3_axi_rid(Conn3_RID),
        .slot_3_axi_rlast(Conn3_RLAST),
        .slot_3_axi_rready(Conn3_RREADY),
        .slot_3_axi_rresp(Conn3_RRESP),
        .slot_3_axi_rvalid(Conn3_RVALID),
        .slot_3_axi_wdata(Conn3_WDATA),
        .slot_3_axi_wlast(Conn3_WLAST),
        .slot_3_axi_wready(Conn3_WREADY),
        .slot_3_axi_wstrb(Conn3_WSTRB),
        .slot_3_axi_wvalid(Conn3_WVALID),
        .slot_3_ext_trig(1'b0),
        .slot_3_ext_trig_stop(1'b0),
        .slot_4_axi_aclk(core_aclk_1),
        .slot_4_axi_araddr(Conn4_ARADDR),
        .slot_4_axi_arburst(Conn4_ARBURST),
        .slot_4_axi_arcache(Conn4_ARCACHE),
        .slot_4_axi_aresetn(m_axis_aresetn_1),
        .slot_4_axi_arid(Conn4_ARID),
        .slot_4_axi_arlen(Conn4_ARLEN),
        .slot_4_axi_arlock(Conn4_ARLOCK),
        .slot_4_axi_arprot(Conn4_ARPROT),
        .slot_4_axi_arready(Conn4_ARREADY),
        .slot_4_axi_arsize(Conn4_ARSIZE),
        .slot_4_axi_arvalid(Conn4_ARVALID),
        .slot_4_axi_awaddr(Conn4_AWADDR),
        .slot_4_axi_awburst(Conn4_AWBURST),
        .slot_4_axi_awcache(Conn4_AWCACHE),
        .slot_4_axi_awid(Conn4_AWID),
        .slot_4_axi_awlen(Conn4_AWLEN),
        .slot_4_axi_awlock(Conn4_AWLOCK),
        .slot_4_axi_awprot(Conn4_AWPROT),
        .slot_4_axi_awready(Conn4_AWREADY),
        .slot_4_axi_awsize(Conn4_AWSIZE),
        .slot_4_axi_awvalid(Conn4_AWVALID),
        .slot_4_axi_bid(Conn4_BID),
        .slot_4_axi_bready(Conn4_BREADY),
        .slot_4_axi_bresp(Conn4_BRESP),
        .slot_4_axi_bvalid(Conn4_BVALID),
        .slot_4_axi_rdata(Conn4_RDATA),
        .slot_4_axi_rid(Conn4_RID),
        .slot_4_axi_rlast(Conn4_RLAST),
        .slot_4_axi_rready(Conn4_RREADY),
        .slot_4_axi_rresp(Conn4_RRESP),
        .slot_4_axi_rvalid(Conn4_RVALID),
        .slot_4_axi_wdata(Conn4_WDATA),
        .slot_4_axi_wlast(Conn4_WLAST),
        .slot_4_axi_wready(Conn4_WREADY),
        .slot_4_axi_wstrb(Conn4_WSTRB),
        .slot_4_axi_wvalid(Conn4_WVALID),
        .slot_4_ext_trig(1'b0),
        .slot_4_ext_trig_stop(1'b0));
  xcl_design_xilmonitor_fifo0_0 xilmonitor_fifo0
       (.axi_str_rxd_tdata(xilmonitor_subset0_M_AXIS_TDATA),
        .axi_str_rxd_tid(xilmonitor_subset0_M_AXIS_TID),
        .axi_str_rxd_tlast(1'b0),
        .axi_str_rxd_tready(xilmonitor_subset0_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(xilmonitor_subset0_M_AXIS_TVALID),
        .s_axi4_araddr(S_AXI_FULL_1_ARADDR),
        .s_axi4_arburst(S_AXI_FULL_1_ARBURST),
        .s_axi4_arcache(S_AXI_FULL_1_ARCACHE),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen(S_AXI_FULL_1_ARLEN),
        .s_axi4_arlock(S_AXI_FULL_1_ARLOCK),
        .s_axi4_arprot(S_AXI_FULL_1_ARPROT),
        .s_axi4_arready(S_AXI_FULL_1_ARREADY),
        .s_axi4_arsize(S_AXI_FULL_1_ARSIZE),
        .s_axi4_arvalid(S_AXI_FULL_1_ARVALID),
        .s_axi4_rdata(S_AXI_FULL_1_RDATA),
        .s_axi4_rlast(S_AXI_FULL_1_RLAST),
        .s_axi4_rready(S_AXI_FULL_1_RREADY),
        .s_axi4_rresp(S_AXI_FULL_1_RRESP),
        .s_axi4_rvalid(S_AXI_FULL_1_RVALID),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .s_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_1_M_AXI_WVALID));
  xcl_design_xilmonitor_subset0_0 xilmonitor_subset0
       (.aclk(s_axi_aclk_1),
        .aresetn(s_axi_aresetn_1),
        .m_axis_tdata(xilmonitor_subset0_M_AXIS_TDATA),
        .m_axis_tid(xilmonitor_subset0_M_AXIS_TID),
        .m_axis_tready(xilmonitor_subset0_M_AXIS_TREADY),
        .m_axis_tvalid(xilmonitor_subset0_M_AXIS_TVALID),
        .s_axis_tdata(xilmonitor_apm_M_AXIS_TDATA),
        .s_axis_tid(xilmonitor_apm_M_AXIS_TID),
        .s_axis_tready(xilmonitor_apm_M_AXIS_TREADY),
        .s_axis_tstrb(xilmonitor_apm_M_AXIS_TSTRB),
        .s_axis_tvalid(xilmonitor_apm_M_AXIS_TVALID));
endmodule

module base_clocking_imp_TFI73W
   (buf_refclk_ibuf_IBUF_DS_ODIV2,
    buf_refclk_ibuf_IBUF_OUT,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    const_gnd_1_dout,
    const_gnd_3_dout,
    const_vcc_1_dout,
    interconnect_axilite_static_M03_AXI_araddr,
    interconnect_axilite_static_M03_AXI_arready,
    interconnect_axilite_static_M03_AXI_arvalid,
    interconnect_axilite_static_M03_AXI_awaddr,
    interconnect_axilite_static_M03_AXI_awready,
    interconnect_axilite_static_M03_AXI_awvalid,
    interconnect_axilite_static_M03_AXI_bready,
    interconnect_axilite_static_M03_AXI_bresp,
    interconnect_axilite_static_M03_AXI_bvalid,
    interconnect_axilite_static_M03_AXI_rdata,
    interconnect_axilite_static_M03_AXI_rready,
    interconnect_axilite_static_M03_AXI_rresp,
    interconnect_axilite_static_M03_AXI_rvalid,
    interconnect_axilite_static_M03_AXI_wdata,
    interconnect_axilite_static_M03_AXI_wready,
    interconnect_axilite_static_M03_AXI_wstrb,
    interconnect_axilite_static_M03_AXI_wvalid,
    interconnect_axilite_static_M06_AXI_araddr,
    interconnect_axilite_static_M06_AXI_arready,
    interconnect_axilite_static_M06_AXI_arvalid,
    interconnect_axilite_static_M06_AXI_awaddr,
    interconnect_axilite_static_M06_AXI_awready,
    interconnect_axilite_static_M06_AXI_awvalid,
    interconnect_axilite_static_M06_AXI_bready,
    interconnect_axilite_static_M06_AXI_bresp,
    interconnect_axilite_static_M06_AXI_bvalid,
    interconnect_axilite_static_M06_AXI_rdata,
    interconnect_axilite_static_M06_AXI_rready,
    interconnect_axilite_static_M06_AXI_rresp,
    interconnect_axilite_static_M06_AXI_rvalid,
    interconnect_axilite_static_M06_AXI_wdata,
    interconnect_axilite_static_M06_AXI_wready,
    interconnect_axilite_static_M06_AXI_wstrb,
    interconnect_axilite_static_M06_AXI_wvalid,
    iob_static_perst_n_out,
    psreset_ctrlclk_interconnect_aresetn,
    ref_clk_clk_n,
    ref_clk_clk_p);
  output [0:0]buf_refclk_ibuf_IBUF_DS_ODIV2;
  output [0:0]buf_refclk_ibuf_IBUF_OUT;
  output clkwiz_kernel2_clk_out1;
  output clkwiz_kernel2_locked;
  output clkwiz_kernel_clk_out1;
  output clkwiz_kernel_locked;
  output clkwiz_sysclks_clk_out1;
  output clkwiz_sysclks_clk_out2;
  output clkwiz_sysclks_locked;
  input [0:0]const_gnd_1_dout;
  input [2:0]const_gnd_3_dout;
  input [0:0]const_vcc_1_dout;
  input [31:0]interconnect_axilite_static_M03_AXI_araddr;
  output [0:0]interconnect_axilite_static_M03_AXI_arready;
  input [0:0]interconnect_axilite_static_M03_AXI_arvalid;
  input [31:0]interconnect_axilite_static_M03_AXI_awaddr;
  output [0:0]interconnect_axilite_static_M03_AXI_awready;
  input [0:0]interconnect_axilite_static_M03_AXI_awvalid;
  input [0:0]interconnect_axilite_static_M03_AXI_bready;
  output [1:0]interconnect_axilite_static_M03_AXI_bresp;
  output [0:0]interconnect_axilite_static_M03_AXI_bvalid;
  output [31:0]interconnect_axilite_static_M03_AXI_rdata;
  input [0:0]interconnect_axilite_static_M03_AXI_rready;
  output [1:0]interconnect_axilite_static_M03_AXI_rresp;
  output [0:0]interconnect_axilite_static_M03_AXI_rvalid;
  input [31:0]interconnect_axilite_static_M03_AXI_wdata;
  output [0:0]interconnect_axilite_static_M03_AXI_wready;
  input [3:0]interconnect_axilite_static_M03_AXI_wstrb;
  input [0:0]interconnect_axilite_static_M03_AXI_wvalid;
  input [31:0]interconnect_axilite_static_M06_AXI_araddr;
  output [0:0]interconnect_axilite_static_M06_AXI_arready;
  input [0:0]interconnect_axilite_static_M06_AXI_arvalid;
  input [31:0]interconnect_axilite_static_M06_AXI_awaddr;
  output [0:0]interconnect_axilite_static_M06_AXI_awready;
  input [0:0]interconnect_axilite_static_M06_AXI_awvalid;
  input [0:0]interconnect_axilite_static_M06_AXI_bready;
  output [1:0]interconnect_axilite_static_M06_AXI_bresp;
  output [0:0]interconnect_axilite_static_M06_AXI_bvalid;
  output [31:0]interconnect_axilite_static_M06_AXI_rdata;
  input [0:0]interconnect_axilite_static_M06_AXI_rready;
  output [1:0]interconnect_axilite_static_M06_AXI_rresp;
  output [0:0]interconnect_axilite_static_M06_AXI_rvalid;
  input [31:0]interconnect_axilite_static_M06_AXI_wdata;
  output [0:0]interconnect_axilite_static_M06_AXI_wready;
  input [3:0]interconnect_axilite_static_M06_AXI_wstrb;
  input [0:0]interconnect_axilite_static_M06_AXI_wvalid;
  input iob_static_perst_n_out;
  output [0:0]psreset_ctrlclk_interconnect_aresetn;
  input [0:0]ref_clk_clk_n;
  input [0:0]ref_clk_clk_p;

  wire [0:0]BUFG_GT_CEMASK_1;
  wire [0:0]BUFG_GT_CE_1;
  wire [2:0]BUFG_GT_DIV_1;
  wire [0:0]Conn1_CLK_N;
  wire [0:0]Conn1_CLK_P;
  wire [0:0]buf_refclk_bufg_BUFG_GT_O;
  wire [0:0]buf_refclk_ibuf_IBUF_DS_ODIV2;
  wire [0:0]buf_refclk_ibuf_IBUF_OUT;
  wire clk_wiz_0_clk_out1;
  wire clkwiz_kernel2_clk_out1;
  wire clkwiz_kernel2_locked;
  wire clkwiz_kernel_clk_out1;
  wire clkwiz_kernel_locked;
  wire clkwiz_sysclks_clk_out2;
  wire clkwiz_sysclks_locked;
  wire [31:0]interconnect_axilite_static_M03_AXI_1_ARADDR;
  wire interconnect_axilite_static_M03_AXI_1_ARREADY;
  wire [0:0]interconnect_axilite_static_M03_AXI_1_ARVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_1_AWADDR;
  wire interconnect_axilite_static_M03_AXI_1_AWREADY;
  wire [0:0]interconnect_axilite_static_M03_AXI_1_AWVALID;
  wire [0:0]interconnect_axilite_static_M03_AXI_1_BREADY;
  wire [1:0]interconnect_axilite_static_M03_AXI_1_BRESP;
  wire interconnect_axilite_static_M03_AXI_1_BVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_1_RDATA;
  wire [0:0]interconnect_axilite_static_M03_AXI_1_RREADY;
  wire [1:0]interconnect_axilite_static_M03_AXI_1_RRESP;
  wire interconnect_axilite_static_M03_AXI_1_RVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_1_WDATA;
  wire interconnect_axilite_static_M03_AXI_1_WREADY;
  wire [3:0]interconnect_axilite_static_M03_AXI_1_WSTRB;
  wire [0:0]interconnect_axilite_static_M03_AXI_1_WVALID;
  wire iob_static_perst_n_out_1;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [31:0]s_axi_lite_1_ARADDR;
  wire s_axi_lite_1_ARREADY;
  wire [0:0]s_axi_lite_1_ARVALID;
  wire [31:0]s_axi_lite_1_AWADDR;
  wire s_axi_lite_1_AWREADY;
  wire [0:0]s_axi_lite_1_AWVALID;
  wire [0:0]s_axi_lite_1_BREADY;
  wire [1:0]s_axi_lite_1_BRESP;
  wire s_axi_lite_1_BVALID;
  wire [31:0]s_axi_lite_1_RDATA;
  wire [0:0]s_axi_lite_1_RREADY;
  wire [1:0]s_axi_lite_1_RRESP;
  wire s_axi_lite_1_RVALID;
  wire [31:0]s_axi_lite_1_WDATA;
  wire s_axi_lite_1_WREADY;
  wire [3:0]s_axi_lite_1_WSTRB;
  wire [0:0]s_axi_lite_1_WVALID;

  assign BUFG_GT_CEMASK_1 = const_gnd_1_dout[0];
  assign BUFG_GT_CE_1 = const_vcc_1_dout[0];
  assign BUFG_GT_DIV_1 = const_gnd_3_dout[2:0];
  assign Conn1_CLK_N = ref_clk_clk_n[0];
  assign Conn1_CLK_P = ref_clk_clk_p[0];
  assign clkwiz_sysclks_clk_out1 = clk_wiz_0_clk_out1;
  assign interconnect_axilite_static_M03_AXI_1_ARADDR = interconnect_axilite_static_M03_AXI_araddr[31:0];
  assign interconnect_axilite_static_M03_AXI_1_ARVALID = interconnect_axilite_static_M03_AXI_arvalid[0];
  assign interconnect_axilite_static_M03_AXI_1_AWADDR = interconnect_axilite_static_M03_AXI_awaddr[31:0];
  assign interconnect_axilite_static_M03_AXI_1_AWVALID = interconnect_axilite_static_M03_AXI_awvalid[0];
  assign interconnect_axilite_static_M03_AXI_1_BREADY = interconnect_axilite_static_M03_AXI_bready[0];
  assign interconnect_axilite_static_M03_AXI_1_RREADY = interconnect_axilite_static_M03_AXI_rready[0];
  assign interconnect_axilite_static_M03_AXI_1_WDATA = interconnect_axilite_static_M03_AXI_wdata[31:0];
  assign interconnect_axilite_static_M03_AXI_1_WSTRB = interconnect_axilite_static_M03_AXI_wstrb[3:0];
  assign interconnect_axilite_static_M03_AXI_1_WVALID = interconnect_axilite_static_M03_AXI_wvalid[0];
  assign interconnect_axilite_static_M03_AXI_arready[0] = interconnect_axilite_static_M03_AXI_1_ARREADY;
  assign interconnect_axilite_static_M03_AXI_awready[0] = interconnect_axilite_static_M03_AXI_1_AWREADY;
  assign interconnect_axilite_static_M03_AXI_bresp[1:0] = interconnect_axilite_static_M03_AXI_1_BRESP;
  assign interconnect_axilite_static_M03_AXI_bvalid[0] = interconnect_axilite_static_M03_AXI_1_BVALID;
  assign interconnect_axilite_static_M03_AXI_rdata[31:0] = interconnect_axilite_static_M03_AXI_1_RDATA;
  assign interconnect_axilite_static_M03_AXI_rresp[1:0] = interconnect_axilite_static_M03_AXI_1_RRESP;
  assign interconnect_axilite_static_M03_AXI_rvalid[0] = interconnect_axilite_static_M03_AXI_1_RVALID;
  assign interconnect_axilite_static_M03_AXI_wready[0] = interconnect_axilite_static_M03_AXI_1_WREADY;
  assign interconnect_axilite_static_M06_AXI_arready[0] = s_axi_lite_1_ARREADY;
  assign interconnect_axilite_static_M06_AXI_awready[0] = s_axi_lite_1_AWREADY;
  assign interconnect_axilite_static_M06_AXI_bresp[1:0] = s_axi_lite_1_BRESP;
  assign interconnect_axilite_static_M06_AXI_bvalid[0] = s_axi_lite_1_BVALID;
  assign interconnect_axilite_static_M06_AXI_rdata[31:0] = s_axi_lite_1_RDATA;
  assign interconnect_axilite_static_M06_AXI_rresp[1:0] = s_axi_lite_1_RRESP;
  assign interconnect_axilite_static_M06_AXI_rvalid[0] = s_axi_lite_1_RVALID;
  assign interconnect_axilite_static_M06_AXI_wready[0] = s_axi_lite_1_WREADY;
  assign iob_static_perst_n_out_1 = iob_static_perst_n_out;
  assign psreset_ctrlclk_interconnect_aresetn[0] = proc_sys_reset_0_interconnect_aresetn;
  assign s_axi_lite_1_ARADDR = interconnect_axilite_static_M06_AXI_araddr[31:0];
  assign s_axi_lite_1_ARVALID = interconnect_axilite_static_M06_AXI_arvalid[0];
  assign s_axi_lite_1_AWADDR = interconnect_axilite_static_M06_AXI_awaddr[31:0];
  assign s_axi_lite_1_AWVALID = interconnect_axilite_static_M06_AXI_awvalid[0];
  assign s_axi_lite_1_BREADY = interconnect_axilite_static_M06_AXI_bready[0];
  assign s_axi_lite_1_RREADY = interconnect_axilite_static_M06_AXI_rready[0];
  assign s_axi_lite_1_WDATA = interconnect_axilite_static_M06_AXI_wdata[31:0];
  assign s_axi_lite_1_WSTRB = interconnect_axilite_static_M06_AXI_wstrb[3:0];
  assign s_axi_lite_1_WVALID = interconnect_axilite_static_M06_AXI_wvalid[0];
  xcl_design_buf_refclk_bufg_0 buf_refclk_bufg
       (.BUFG_GT_CE(BUFG_GT_CE_1),
        .BUFG_GT_CEMASK(BUFG_GT_CEMASK_1),
        .BUFG_GT_CLR(BUFG_GT_CEMASK_1),
        .BUFG_GT_CLRMASK(BUFG_GT_CEMASK_1),
        .BUFG_GT_DIV(BUFG_GT_DIV_1),
        .BUFG_GT_I(buf_refclk_ibuf_IBUF_DS_ODIV2),
        .BUFG_GT_O(buf_refclk_bufg_BUFG_GT_O));
  xcl_design_buf_refclk_ibuf_0 buf_refclk_ibuf
       (.IBUF_DS_N(Conn1_CLK_N),
        .IBUF_DS_ODIV2(buf_refclk_ibuf_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn1_CLK_P),
        .IBUF_OUT(buf_refclk_ibuf_IBUF_OUT));
  xcl_design_clkwiz_kernel_0 clkwiz_kernel
       (.clk_in1(buf_refclk_bufg_BUFG_GT_O),
        .clk_out1(clkwiz_kernel_clk_out1),
        .locked(clkwiz_kernel_locked),
        .s_axi_aclk(clkwiz_sysclks_clk_out2),
        .s_axi_araddr(interconnect_axilite_static_M03_AXI_1_ARADDR[10:0]),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(interconnect_axilite_static_M03_AXI_1_ARREADY),
        .s_axi_arvalid(interconnect_axilite_static_M03_AXI_1_ARVALID),
        .s_axi_awaddr(interconnect_axilite_static_M03_AXI_1_AWADDR[10:0]),
        .s_axi_awready(interconnect_axilite_static_M03_AXI_1_AWREADY),
        .s_axi_awvalid(interconnect_axilite_static_M03_AXI_1_AWVALID),
        .s_axi_bready(interconnect_axilite_static_M03_AXI_1_BREADY),
        .s_axi_bresp(interconnect_axilite_static_M03_AXI_1_BRESP),
        .s_axi_bvalid(interconnect_axilite_static_M03_AXI_1_BVALID),
        .s_axi_rdata(interconnect_axilite_static_M03_AXI_1_RDATA),
        .s_axi_rready(interconnect_axilite_static_M03_AXI_1_RREADY),
        .s_axi_rresp(interconnect_axilite_static_M03_AXI_1_RRESP),
        .s_axi_rvalid(interconnect_axilite_static_M03_AXI_1_RVALID),
        .s_axi_wdata(interconnect_axilite_static_M03_AXI_1_WDATA),
        .s_axi_wready(interconnect_axilite_static_M03_AXI_1_WREADY),
        .s_axi_wstrb(interconnect_axilite_static_M03_AXI_1_WSTRB),
        .s_axi_wvalid(interconnect_axilite_static_M03_AXI_1_WVALID));
  xcl_design_clkwiz_kernel2_0 clkwiz_kernel2
       (.clk_in1(buf_refclk_bufg_BUFG_GT_O),
        .clk_out1(clkwiz_kernel2_clk_out1),
        .locked(clkwiz_kernel2_locked),
        .s_axi_aclk(clkwiz_sysclks_clk_out2),
        .s_axi_araddr(s_axi_lite_1_ARADDR[10:0]),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(s_axi_lite_1_ARREADY),
        .s_axi_arvalid(s_axi_lite_1_ARVALID),
        .s_axi_awaddr(s_axi_lite_1_AWADDR[10:0]),
        .s_axi_awready(s_axi_lite_1_AWREADY),
        .s_axi_awvalid(s_axi_lite_1_AWVALID),
        .s_axi_bready(s_axi_lite_1_BREADY),
        .s_axi_bresp(s_axi_lite_1_BRESP),
        .s_axi_bvalid(s_axi_lite_1_BVALID),
        .s_axi_rdata(s_axi_lite_1_RDATA),
        .s_axi_rready(s_axi_lite_1_RREADY),
        .s_axi_rresp(s_axi_lite_1_RRESP),
        .s_axi_rvalid(s_axi_lite_1_RVALID),
        .s_axi_wdata(s_axi_lite_1_WDATA),
        .s_axi_wready(s_axi_lite_1_WREADY),
        .s_axi_wstrb(s_axi_lite_1_WSTRB),
        .s_axi_wvalid(s_axi_lite_1_WVALID));
  xcl_design_clk_wiz_0_0 clkwiz_sysclkd
       (.clk_in1(buf_refclk_bufg_BUFG_GT_O),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clkwiz_sysclks_clk_out2),
        .locked(clkwiz_sysclks_locked),
        .resetn(iob_static_perst_n_out_1));
  xcl_design_psreset_ctrlclk_0 psreset_ctrlclk
       (.aux_reset_in(1'b1),
        .dcm_locked(clkwiz_sysclks_locked),
        .ext_reset_in(iob_static_perst_n_out_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_sysclks_clk_out2));
endmodule

module base_region_imp_1OPYDD2
   (axi_i2c_IIC_scl_i,
    axi_i2c_IIC_scl_o,
    axi_i2c_IIC_scl_t,
    axi_i2c_IIC_sda_i,
    axi_i2c_IIC_sda_o,
    axi_i2c_IIC_sda_t,
    axi_i2c_gpo,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    concat_flash_dq_o_dout,
    concat_flash_tri_dout,
    dma_pcie_axi_aclk,
    dma_pcie_pcie_mgt_rxn,
    dma_pcie_pcie_mgt_rxp,
    dma_pcie_pcie_mgt_txn,
    dma_pcie_pcie_mgt_txp,
    dma_pcie_user_lnk_up,
    emc_clk,
    flash_programmer_io0_o,
    flash_programmer_io0_t,
    flash_programmer_io1_o,
    flash_programmer_io1_t,
    flash_programmer_io2_o,
    flash_programmer_io2_t,
    flash_programmer_io3_o,
    flash_programmer_io3_t,
    flash_programmer_sck_o,
    flash_programmer_ss_t,
    iob_static_emc_clk_out,
    iob_static_init_calib_complete_out,
    iob_static_io0,
    iob_static_io0_i,
    iob_static_io1,
    iob_static_io1_i,
    iob_static_io2,
    iob_static_io2_i,
    iob_static_io3,
    iob_static_io3_i,
    iob_static_led_0_out,
    iob_static_perst_n_out,
    iob_static_ss,
    logic_ddrcalib_op_Res,
    perst_n,
    ref_clk_clk_n,
    ref_clk_clk_p,
    regslice_control_M_AXI_araddr,
    regslice_control_M_AXI_arprot,
    regslice_control_M_AXI_arready,
    regslice_control_M_AXI_arvalid,
    regslice_control_M_AXI_awaddr,
    regslice_control_M_AXI_awprot,
    regslice_control_M_AXI_awready,
    regslice_control_M_AXI_awvalid,
    regslice_control_M_AXI_bready,
    regslice_control_M_AXI_bresp,
    regslice_control_M_AXI_bvalid,
    regslice_control_M_AXI_rdata,
    regslice_control_M_AXI_rready,
    regslice_control_M_AXI_rresp,
    regslice_control_M_AXI_rvalid,
    regslice_control_M_AXI_wdata,
    regslice_control_M_AXI_wready,
    regslice_control_M_AXI_wstrb,
    regslice_control_M_AXI_wvalid,
    regslice_data_M_AXI_araddr,
    regslice_data_M_AXI_arburst,
    regslice_data_M_AXI_arcache,
    regslice_data_M_AXI_arid,
    regslice_data_M_AXI_arlen,
    regslice_data_M_AXI_arlock,
    regslice_data_M_AXI_arprot,
    regslice_data_M_AXI_arqos,
    regslice_data_M_AXI_arready,
    regslice_data_M_AXI_arsize,
    regslice_data_M_AXI_arvalid,
    regslice_data_M_AXI_awaddr,
    regslice_data_M_AXI_awburst,
    regslice_data_M_AXI_awcache,
    regslice_data_M_AXI_awid,
    regslice_data_M_AXI_awlen,
    regslice_data_M_AXI_awlock,
    regslice_data_M_AXI_awprot,
    regslice_data_M_AXI_awqos,
    regslice_data_M_AXI_awready,
    regslice_data_M_AXI_awsize,
    regslice_data_M_AXI_awvalid,
    regslice_data_M_AXI_bid,
    regslice_data_M_AXI_bready,
    regslice_data_M_AXI_bresp,
    regslice_data_M_AXI_bvalid,
    regslice_data_M_AXI_rdata,
    regslice_data_M_AXI_rid,
    regslice_data_M_AXI_rlast,
    regslice_data_M_AXI_rready,
    regslice_data_M_AXI_rresp,
    regslice_data_M_AXI_rvalid,
    regslice_data_M_AXI_wdata,
    regslice_data_M_AXI_wlast,
    regslice_data_M_AXI_wready,
    regslice_data_M_AXI_wstrb,
    regslice_data_M_AXI_wvalid,
    slice_reset_kernel_pr_Dout,
    slice_ss0_Dout,
    slice_ss_1_Dout);
  input axi_i2c_IIC_scl_i;
  output axi_i2c_IIC_scl_o;
  output axi_i2c_IIC_scl_t;
  input axi_i2c_IIC_sda_i;
  output axi_i2c_IIC_sda_o;
  output axi_i2c_IIC_sda_t;
  output [0:0]axi_i2c_gpo;
  output clkwiz_kernel2_clk_out1;
  output clkwiz_kernel2_locked;
  output clkwiz_kernel_clk_out1;
  output clkwiz_kernel_locked;
  output clkwiz_sysclks_clk_out1;
  output clkwiz_sysclks_clk_out2;
  output clkwiz_sysclks_locked;
  input [3:0]concat_flash_dq_o_dout;
  input [3:0]concat_flash_tri_dout;
  output dma_pcie_axi_aclk;
  input [7:0]dma_pcie_pcie_mgt_rxn;
  input [7:0]dma_pcie_pcie_mgt_rxp;
  output [7:0]dma_pcie_pcie_mgt_txn;
  output [7:0]dma_pcie_pcie_mgt_txp;
  output dma_pcie_user_lnk_up;
  input emc_clk;
  input flash_programmer_io0_o;
  input flash_programmer_io0_t;
  input flash_programmer_io1_o;
  input flash_programmer_io1_t;
  input flash_programmer_io2_o;
  input flash_programmer_io2_t;
  input flash_programmer_io3_o;
  input flash_programmer_io3_t;
  input flash_programmer_sck_o;
  input flash_programmer_ss_t;
  output iob_static_emc_clk_out;
  output iob_static_init_calib_complete_out;
  inout iob_static_io0;
  output iob_static_io0_i;
  inout iob_static_io1;
  output iob_static_io1_i;
  inout iob_static_io2;
  output iob_static_io2_i;
  inout iob_static_io3;
  output iob_static_io3_i;
  output iob_static_led_0_out;
  output iob_static_perst_n_out;
  inout iob_static_ss;
  input logic_ddrcalib_op_Res;
  input perst_n;
  input [0:0]ref_clk_clk_n;
  input [0:0]ref_clk_clk_p;
  output [31:0]regslice_control_M_AXI_araddr;
  output [2:0]regslice_control_M_AXI_arprot;
  input regslice_control_M_AXI_arready;
  output regslice_control_M_AXI_arvalid;
  output [31:0]regslice_control_M_AXI_awaddr;
  output [2:0]regslice_control_M_AXI_awprot;
  input regslice_control_M_AXI_awready;
  output regslice_control_M_AXI_awvalid;
  output regslice_control_M_AXI_bready;
  input [1:0]regslice_control_M_AXI_bresp;
  input regslice_control_M_AXI_bvalid;
  input [31:0]regslice_control_M_AXI_rdata;
  output regslice_control_M_AXI_rready;
  input [1:0]regslice_control_M_AXI_rresp;
  input regslice_control_M_AXI_rvalid;
  output [31:0]regslice_control_M_AXI_wdata;
  input regslice_control_M_AXI_wready;
  output [3:0]regslice_control_M_AXI_wstrb;
  output regslice_control_M_AXI_wvalid;
  output [37:0]regslice_data_M_AXI_araddr;
  output [1:0]regslice_data_M_AXI_arburst;
  output [3:0]regslice_data_M_AXI_arcache;
  output [3:0]regslice_data_M_AXI_arid;
  output [7:0]regslice_data_M_AXI_arlen;
  output [0:0]regslice_data_M_AXI_arlock;
  output [2:0]regslice_data_M_AXI_arprot;
  output [3:0]regslice_data_M_AXI_arqos;
  input regslice_data_M_AXI_arready;
  output [2:0]regslice_data_M_AXI_arsize;
  output regslice_data_M_AXI_arvalid;
  output [37:0]regslice_data_M_AXI_awaddr;
  output [1:0]regslice_data_M_AXI_awburst;
  output [3:0]regslice_data_M_AXI_awcache;
  output [3:0]regslice_data_M_AXI_awid;
  output [7:0]regslice_data_M_AXI_awlen;
  output [0:0]regslice_data_M_AXI_awlock;
  output [2:0]regslice_data_M_AXI_awprot;
  output [3:0]regslice_data_M_AXI_awqos;
  input regslice_data_M_AXI_awready;
  output [2:0]regslice_data_M_AXI_awsize;
  output regslice_data_M_AXI_awvalid;
  input [3:0]regslice_data_M_AXI_bid;
  output regslice_data_M_AXI_bready;
  input [1:0]regslice_data_M_AXI_bresp;
  input regslice_data_M_AXI_bvalid;
  input [255:0]regslice_data_M_AXI_rdata;
  input [3:0]regslice_data_M_AXI_rid;
  input regslice_data_M_AXI_rlast;
  output regslice_data_M_AXI_rready;
  input [1:0]regslice_data_M_AXI_rresp;
  input regslice_data_M_AXI_rvalid;
  output [255:0]regslice_data_M_AXI_wdata;
  output regslice_data_M_AXI_wlast;
  input regslice_data_M_AXI_wready;
  output [31:0]regslice_data_M_AXI_wstrb;
  output regslice_data_M_AXI_wvalid;
  output [0:0]slice_reset_kernel_pr_Dout;
  input [0:0]slice_ss0_Dout;
  input [0:0]slice_ss_1_Dout;

  wire [7:0]Conn1_rxn;
  wire [7:0]Conn1_rxp;
  wire [7:0]Conn1_txn;
  wire [7:0]Conn1_txp;
  wire [0:0]Conn2_CLK_N;
  wire [0:0]Conn2_CLK_P;
  wire Conn3_SCL_I;
  wire Conn3_SCL_O;
  wire Conn3_SCL_T;
  wire Conn3_SDA_I;
  wire Conn3_SDA_O;
  wire Conn3_SDA_T;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire [0:0]axi_i2c_gpo;
  wire [0:0]base_clocking_IBUF_DS_ODIV2;
  wire [0:0]base_clocking_IBUF_OUT;
  wire base_clocking_clk_out1;
  wire base_clocking_clk_out2;
  wire base_clocking_clk_out3;
  wire base_clocking_clk_out4;
  wire [0:0]base_clocking_interconnect_aresetn;
  wire base_clocking_locked;
  wire base_clocking_locked1;
  wire base_clocking_locked2;
  wire [0:0]base_tieoffs_dout;
  wire [2:0]base_tieoffs_dout1;
  wire [0:0]base_tieoffs_dout2;
  wire [63:0]dma_pcie_M_AXI_ARADDR;
  wire [1:0]dma_pcie_M_AXI_ARBURST;
  wire [3:0]dma_pcie_M_AXI_ARCACHE;
  wire [1:0]dma_pcie_M_AXI_ARID;
  wire [7:0]dma_pcie_M_AXI_ARLEN;
  wire dma_pcie_M_AXI_ARLOCK;
  wire [2:0]dma_pcie_M_AXI_ARPROT;
  wire dma_pcie_M_AXI_ARREADY;
  wire [2:0]dma_pcie_M_AXI_ARSIZE;
  wire dma_pcie_M_AXI_ARVALID;
  wire [63:0]dma_pcie_M_AXI_AWADDR;
  wire [1:0]dma_pcie_M_AXI_AWBURST;
  wire [3:0]dma_pcie_M_AXI_AWCACHE;
  wire [1:0]dma_pcie_M_AXI_AWID;
  wire [7:0]dma_pcie_M_AXI_AWLEN;
  wire dma_pcie_M_AXI_AWLOCK;
  wire [2:0]dma_pcie_M_AXI_AWPROT;
  wire dma_pcie_M_AXI_AWREADY;
  wire [2:0]dma_pcie_M_AXI_AWSIZE;
  wire dma_pcie_M_AXI_AWVALID;
  wire [3:0]dma_pcie_M_AXI_BID;
  wire dma_pcie_M_AXI_BREADY;
  wire [1:0]dma_pcie_M_AXI_BRESP;
  wire dma_pcie_M_AXI_BVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_ARADDR;
  wire [2:0]dma_pcie_M_AXI_LITE_ARPROT;
  wire dma_pcie_M_AXI_LITE_ARREADY;
  wire dma_pcie_M_AXI_LITE_ARVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_AWADDR;
  wire [2:0]dma_pcie_M_AXI_LITE_AWPROT;
  wire dma_pcie_M_AXI_LITE_AWREADY;
  wire dma_pcie_M_AXI_LITE_AWVALID;
  wire dma_pcie_M_AXI_LITE_BREADY;
  wire [1:0]dma_pcie_M_AXI_LITE_BRESP;
  wire dma_pcie_M_AXI_LITE_BVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_RDATA;
  wire dma_pcie_M_AXI_LITE_RREADY;
  wire [1:0]dma_pcie_M_AXI_LITE_RRESP;
  wire dma_pcie_M_AXI_LITE_RVALID;
  wire [31:0]dma_pcie_M_AXI_LITE_WDATA;
  wire dma_pcie_M_AXI_LITE_WREADY;
  wire [3:0]dma_pcie_M_AXI_LITE_WSTRB;
  wire dma_pcie_M_AXI_LITE_WVALID;
  wire [255:0]dma_pcie_M_AXI_RDATA;
  wire [3:0]dma_pcie_M_AXI_RID;
  wire dma_pcie_M_AXI_RLAST;
  wire dma_pcie_M_AXI_RREADY;
  wire [1:0]dma_pcie_M_AXI_RRESP;
  wire dma_pcie_M_AXI_RVALID;
  wire [255:0]dma_pcie_M_AXI_WDATA;
  wire dma_pcie_M_AXI_WLAST;
  wire dma_pcie_M_AXI_WREADY;
  wire [31:0]dma_pcie_M_AXI_WSTRB;
  wire dma_pcie_M_AXI_WVALID;
  wire dma_pcie_axi_aclk;
  wire dma_pcie_axi_aresetn;
  wire dma_pcie_user_lnk_up;
  wire emc_clk_in_1;
  wire [0:0]flash_CS_N_1;
  wire flash_CS_N_tri_ctrl_1;
  wire [3:0]flash_DQ_O_1;
  wire [3:0]flash_DQ_tri_ctrl_1;
  wire flash_clk_1;
  wire gpio_io_i_1;
  wire io0_o_1;
  wire io0_t_1;
  wire io1_o_1;
  wire io1_t_1;
  wire io2_o_1;
  wire io2_t_1;
  wire io3_o_1;
  wire io3_t_1;
  wire perst_n_in_1;
  wire [0:0]pr_isolation_expanded_Dout;
  wire [31:0]pr_isolation_expanded_M02_AXI_ARADDR;
  wire [0:0]pr_isolation_expanded_M02_AXI_ARREADY;
  wire [0:0]pr_isolation_expanded_M02_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M02_AXI_AWADDR;
  wire [0:0]pr_isolation_expanded_M02_AXI_AWREADY;
  wire [0:0]pr_isolation_expanded_M02_AXI_AWVALID;
  wire [0:0]pr_isolation_expanded_M02_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M02_AXI_BRESP;
  wire [0:0]pr_isolation_expanded_M02_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M02_AXI_RDATA;
  wire [0:0]pr_isolation_expanded_M02_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M02_AXI_RRESP;
  wire [0:0]pr_isolation_expanded_M02_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M02_AXI_WDATA;
  wire [0:0]pr_isolation_expanded_M02_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M02_AXI_WSTRB;
  wire [0:0]pr_isolation_expanded_M02_AXI_WVALID;
  wire [31:0]pr_isolation_expanded_M03_AXI_ARADDR;
  wire [0:0]pr_isolation_expanded_M03_AXI_ARREADY;
  wire [0:0]pr_isolation_expanded_M03_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M03_AXI_AWADDR;
  wire [0:0]pr_isolation_expanded_M03_AXI_AWREADY;
  wire [0:0]pr_isolation_expanded_M03_AXI_AWVALID;
  wire [0:0]pr_isolation_expanded_M03_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M03_AXI_BRESP;
  wire [0:0]pr_isolation_expanded_M03_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M03_AXI_RDATA;
  wire [0:0]pr_isolation_expanded_M03_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M03_AXI_RRESP;
  wire [0:0]pr_isolation_expanded_M03_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M03_AXI_WDATA;
  wire [0:0]pr_isolation_expanded_M03_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M03_AXI_WSTRB;
  wire [0:0]pr_isolation_expanded_M03_AXI_WVALID;
  wire [31:0]pr_isolation_expanded_M05_AXI_ARADDR;
  wire pr_isolation_expanded_M05_AXI_ARREADY;
  wire [0:0]pr_isolation_expanded_M05_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M05_AXI_AWADDR;
  wire pr_isolation_expanded_M05_AXI_AWREADY;
  wire [0:0]pr_isolation_expanded_M05_AXI_AWVALID;
  wire [0:0]pr_isolation_expanded_M05_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M05_AXI_BRESP;
  wire pr_isolation_expanded_M05_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M05_AXI_RDATA;
  wire [0:0]pr_isolation_expanded_M05_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M05_AXI_RRESP;
  wire pr_isolation_expanded_M05_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M05_AXI_WDATA;
  wire pr_isolation_expanded_M05_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M05_AXI_WSTRB;
  wire [0:0]pr_isolation_expanded_M05_AXI_WVALID;
  wire [31:0]pr_isolation_expanded_M06_AXI_ARADDR;
  wire [0:0]pr_isolation_expanded_M06_AXI_ARREADY;
  wire [0:0]pr_isolation_expanded_M06_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M06_AXI_AWADDR;
  wire [0:0]pr_isolation_expanded_M06_AXI_AWREADY;
  wire [0:0]pr_isolation_expanded_M06_AXI_AWVALID;
  wire [0:0]pr_isolation_expanded_M06_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M06_AXI_BRESP;
  wire [0:0]pr_isolation_expanded_M06_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M06_AXI_RDATA;
  wire [0:0]pr_isolation_expanded_M06_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M06_AXI_RRESP;
  wire [0:0]pr_isolation_expanded_M06_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M06_AXI_WDATA;
  wire [0:0]pr_isolation_expanded_M06_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M06_AXI_WSTRB;
  wire [0:0]pr_isolation_expanded_M06_AXI_WVALID;
  wire [31:0]pr_isolation_expanded_M07_AXI_ARADDR;
  wire pr_isolation_expanded_M07_AXI_ARREADY;
  wire pr_isolation_expanded_M07_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M07_AXI_AWADDR;
  wire pr_isolation_expanded_M07_AXI_AWREADY;
  wire pr_isolation_expanded_M07_AXI_AWVALID;
  wire pr_isolation_expanded_M07_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M07_AXI_BRESP;
  wire pr_isolation_expanded_M07_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M07_AXI_RDATA;
  wire pr_isolation_expanded_M07_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M07_AXI_RRESP;
  wire pr_isolation_expanded_M07_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M07_AXI_WDATA;
  wire pr_isolation_expanded_M07_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M07_AXI_WSTRB;
  wire pr_isolation_expanded_M07_AXI_WVALID;
  wire [37:0]pr_isolation_expanded_M_AXI1_ARADDR;
  wire [1:0]pr_isolation_expanded_M_AXI1_ARBURST;
  wire [3:0]pr_isolation_expanded_M_AXI1_ARCACHE;
  wire [3:0]pr_isolation_expanded_M_AXI1_ARID;
  wire [7:0]pr_isolation_expanded_M_AXI1_ARLEN;
  wire [0:0]pr_isolation_expanded_M_AXI1_ARLOCK;
  wire [2:0]pr_isolation_expanded_M_AXI1_ARPROT;
  wire [3:0]pr_isolation_expanded_M_AXI1_ARQOS;
  wire pr_isolation_expanded_M_AXI1_ARREADY;
  wire [2:0]pr_isolation_expanded_M_AXI1_ARSIZE;
  wire pr_isolation_expanded_M_AXI1_ARVALID;
  wire [37:0]pr_isolation_expanded_M_AXI1_AWADDR;
  wire [1:0]pr_isolation_expanded_M_AXI1_AWBURST;
  wire [3:0]pr_isolation_expanded_M_AXI1_AWCACHE;
  wire [3:0]pr_isolation_expanded_M_AXI1_AWID;
  wire [7:0]pr_isolation_expanded_M_AXI1_AWLEN;
  wire [0:0]pr_isolation_expanded_M_AXI1_AWLOCK;
  wire [2:0]pr_isolation_expanded_M_AXI1_AWPROT;
  wire [3:0]pr_isolation_expanded_M_AXI1_AWQOS;
  wire pr_isolation_expanded_M_AXI1_AWREADY;
  wire [2:0]pr_isolation_expanded_M_AXI1_AWSIZE;
  wire pr_isolation_expanded_M_AXI1_AWVALID;
  wire [3:0]pr_isolation_expanded_M_AXI1_BID;
  wire pr_isolation_expanded_M_AXI1_BREADY;
  wire [1:0]pr_isolation_expanded_M_AXI1_BRESP;
  wire pr_isolation_expanded_M_AXI1_BVALID;
  wire [255:0]pr_isolation_expanded_M_AXI1_RDATA;
  wire [3:0]pr_isolation_expanded_M_AXI1_RID;
  wire pr_isolation_expanded_M_AXI1_RLAST;
  wire pr_isolation_expanded_M_AXI1_RREADY;
  wire [1:0]pr_isolation_expanded_M_AXI1_RRESP;
  wire pr_isolation_expanded_M_AXI1_RVALID;
  wire [255:0]pr_isolation_expanded_M_AXI1_WDATA;
  wire pr_isolation_expanded_M_AXI1_WLAST;
  wire pr_isolation_expanded_M_AXI1_WREADY;
  wire [31:0]pr_isolation_expanded_M_AXI1_WSTRB;
  wire pr_isolation_expanded_M_AXI1_WVALID;
  wire [31:0]pr_isolation_expanded_M_AXI_ARADDR;
  wire [2:0]pr_isolation_expanded_M_AXI_ARPROT;
  wire pr_isolation_expanded_M_AXI_ARREADY;
  wire pr_isolation_expanded_M_AXI_ARVALID;
  wire [31:0]pr_isolation_expanded_M_AXI_AWADDR;
  wire [2:0]pr_isolation_expanded_M_AXI_AWPROT;
  wire pr_isolation_expanded_M_AXI_AWREADY;
  wire pr_isolation_expanded_M_AXI_AWVALID;
  wire pr_isolation_expanded_M_AXI_BREADY;
  wire [1:0]pr_isolation_expanded_M_AXI_BRESP;
  wire pr_isolation_expanded_M_AXI_BVALID;
  wire [31:0]pr_isolation_expanded_M_AXI_RDATA;
  wire pr_isolation_expanded_M_AXI_RREADY;
  wire [1:0]pr_isolation_expanded_M_AXI_RRESP;
  wire pr_isolation_expanded_M_AXI_RVALID;
  wire [31:0]pr_isolation_expanded_M_AXI_WDATA;
  wire pr_isolation_expanded_M_AXI_WREADY;
  wire [3:0]pr_isolation_expanded_M_AXI_WSTRB;
  wire pr_isolation_expanded_M_AXI_WVALID;
  wire pr_isolation_expanded_emc_clk_out;
  wire pr_isolation_expanded_init_calib_complete_out;
  wire pr_isolation_expanded_io0_i;
  wire pr_isolation_expanded_io1_i;
  wire pr_isolation_expanded_io2_i;
  wire pr_isolation_expanded_io3_i;
  wire pr_isolation_expanded_led_0_out;
  wire pr_isolation_expanded_perst_n_out;
  wire [0:0]ss_o_1;

  assign Conn1_rxn = dma_pcie_pcie_mgt_rxn[7:0];
  assign Conn1_rxp = dma_pcie_pcie_mgt_rxp[7:0];
  assign Conn2_CLK_N = ref_clk_clk_n[0];
  assign Conn2_CLK_P = ref_clk_clk_p[0];
  assign Conn3_SCL_I = axi_i2c_IIC_scl_i;
  assign Conn3_SDA_I = axi_i2c_IIC_sda_i;
  assign axi_i2c_IIC_scl_o = Conn3_SCL_O;
  assign axi_i2c_IIC_scl_t = Conn3_SCL_T;
  assign axi_i2c_IIC_sda_o = Conn3_SDA_O;
  assign axi_i2c_IIC_sda_t = Conn3_SDA_T;
  assign clkwiz_kernel2_clk_out1 = base_clocking_clk_out4;
  assign clkwiz_kernel2_locked = base_clocking_locked2;
  assign clkwiz_kernel_clk_out1 = base_clocking_clk_out1;
  assign clkwiz_kernel_locked = base_clocking_locked;
  assign clkwiz_sysclks_clk_out1 = base_clocking_clk_out3;
  assign clkwiz_sysclks_clk_out2 = base_clocking_clk_out2;
  assign clkwiz_sysclks_locked = base_clocking_locked1;
  assign dma_pcie_pcie_mgt_txn[7:0] = Conn1_txn;
  assign dma_pcie_pcie_mgt_txp[7:0] = Conn1_txp;
  assign emc_clk_in_1 = emc_clk;
  assign flash_CS_N_1 = slice_ss0_Dout[0];
  assign flash_CS_N_tri_ctrl_1 = flash_programmer_ss_t;
  assign flash_DQ_O_1 = concat_flash_dq_o_dout[3:0];
  assign flash_DQ_tri_ctrl_1 = concat_flash_tri_dout[3:0];
  assign flash_clk_1 = flash_programmer_sck_o;
  assign gpio_io_i_1 = logic_ddrcalib_op_Res;
  assign io0_o_1 = flash_programmer_io0_o;
  assign io0_t_1 = flash_programmer_io0_t;
  assign io1_o_1 = flash_programmer_io1_o;
  assign io1_t_1 = flash_programmer_io1_t;
  assign io2_o_1 = flash_programmer_io2_o;
  assign io2_t_1 = flash_programmer_io2_t;
  assign io3_o_1 = flash_programmer_io3_o;
  assign io3_t_1 = flash_programmer_io3_t;
  assign iob_static_emc_clk_out = pr_isolation_expanded_emc_clk_out;
  assign iob_static_init_calib_complete_out = pr_isolation_expanded_init_calib_complete_out;
  assign iob_static_io0_i = pr_isolation_expanded_io0_i;
  assign iob_static_io1_i = pr_isolation_expanded_io1_i;
  assign iob_static_io2_i = pr_isolation_expanded_io2_i;
  assign iob_static_io3_i = pr_isolation_expanded_io3_i;
  assign iob_static_led_0_out = pr_isolation_expanded_led_0_out;
  assign iob_static_perst_n_out = pr_isolation_expanded_perst_n_out;
  assign perst_n_in_1 = perst_n;
  assign pr_isolation_expanded_M_AXI1_ARREADY = regslice_data_M_AXI_arready;
  assign pr_isolation_expanded_M_AXI1_AWREADY = regslice_data_M_AXI_awready;
  assign pr_isolation_expanded_M_AXI1_BID = regslice_data_M_AXI_bid[3:0];
  assign pr_isolation_expanded_M_AXI1_BRESP = regslice_data_M_AXI_bresp[1:0];
  assign pr_isolation_expanded_M_AXI1_BVALID = regslice_data_M_AXI_bvalid;
  assign pr_isolation_expanded_M_AXI1_RDATA = regslice_data_M_AXI_rdata[255:0];
  assign pr_isolation_expanded_M_AXI1_RID = regslice_data_M_AXI_rid[3:0];
  assign pr_isolation_expanded_M_AXI1_RLAST = regslice_data_M_AXI_rlast;
  assign pr_isolation_expanded_M_AXI1_RRESP = regslice_data_M_AXI_rresp[1:0];
  assign pr_isolation_expanded_M_AXI1_RVALID = regslice_data_M_AXI_rvalid;
  assign pr_isolation_expanded_M_AXI1_WREADY = regslice_data_M_AXI_wready;
  assign pr_isolation_expanded_M_AXI_ARREADY = regslice_control_M_AXI_arready;
  assign pr_isolation_expanded_M_AXI_AWREADY = regslice_control_M_AXI_awready;
  assign pr_isolation_expanded_M_AXI_BRESP = regslice_control_M_AXI_bresp[1:0];
  assign pr_isolation_expanded_M_AXI_BVALID = regslice_control_M_AXI_bvalid;
  assign pr_isolation_expanded_M_AXI_RDATA = regslice_control_M_AXI_rdata[31:0];
  assign pr_isolation_expanded_M_AXI_RRESP = regslice_control_M_AXI_rresp[1:0];
  assign pr_isolation_expanded_M_AXI_RVALID = regslice_control_M_AXI_rvalid;
  assign pr_isolation_expanded_M_AXI_WREADY = regslice_control_M_AXI_wready;
  assign regslice_control_M_AXI_araddr[31:0] = pr_isolation_expanded_M_AXI_ARADDR;
  assign regslice_control_M_AXI_arprot[2:0] = pr_isolation_expanded_M_AXI_ARPROT;
  assign regslice_control_M_AXI_arvalid = pr_isolation_expanded_M_AXI_ARVALID;
  assign regslice_control_M_AXI_awaddr[31:0] = pr_isolation_expanded_M_AXI_AWADDR;
  assign regslice_control_M_AXI_awprot[2:0] = pr_isolation_expanded_M_AXI_AWPROT;
  assign regslice_control_M_AXI_awvalid = pr_isolation_expanded_M_AXI_AWVALID;
  assign regslice_control_M_AXI_bready = pr_isolation_expanded_M_AXI_BREADY;
  assign regslice_control_M_AXI_rready = pr_isolation_expanded_M_AXI_RREADY;
  assign regslice_control_M_AXI_wdata[31:0] = pr_isolation_expanded_M_AXI_WDATA;
  assign regslice_control_M_AXI_wstrb[3:0] = pr_isolation_expanded_M_AXI_WSTRB;
  assign regslice_control_M_AXI_wvalid = pr_isolation_expanded_M_AXI_WVALID;
  assign regslice_data_M_AXI_araddr[37:0] = pr_isolation_expanded_M_AXI1_ARADDR;
  assign regslice_data_M_AXI_arburst[1:0] = pr_isolation_expanded_M_AXI1_ARBURST;
  assign regslice_data_M_AXI_arcache[3:0] = pr_isolation_expanded_M_AXI1_ARCACHE;
  assign regslice_data_M_AXI_arid[3:0] = pr_isolation_expanded_M_AXI1_ARID;
  assign regslice_data_M_AXI_arlen[7:0] = pr_isolation_expanded_M_AXI1_ARLEN;
  assign regslice_data_M_AXI_arlock[0] = pr_isolation_expanded_M_AXI1_ARLOCK;
  assign regslice_data_M_AXI_arprot[2:0] = pr_isolation_expanded_M_AXI1_ARPROT;
  assign regslice_data_M_AXI_arqos[3:0] = pr_isolation_expanded_M_AXI1_ARQOS;
  assign regslice_data_M_AXI_arsize[2:0] = pr_isolation_expanded_M_AXI1_ARSIZE;
  assign regslice_data_M_AXI_arvalid = pr_isolation_expanded_M_AXI1_ARVALID;
  assign regslice_data_M_AXI_awaddr[37:0] = pr_isolation_expanded_M_AXI1_AWADDR;
  assign regslice_data_M_AXI_awburst[1:0] = pr_isolation_expanded_M_AXI1_AWBURST;
  assign regslice_data_M_AXI_awcache[3:0] = pr_isolation_expanded_M_AXI1_AWCACHE;
  assign regslice_data_M_AXI_awid[3:0] = pr_isolation_expanded_M_AXI1_AWID;
  assign regslice_data_M_AXI_awlen[7:0] = pr_isolation_expanded_M_AXI1_AWLEN;
  assign regslice_data_M_AXI_awlock[0] = pr_isolation_expanded_M_AXI1_AWLOCK;
  assign regslice_data_M_AXI_awprot[2:0] = pr_isolation_expanded_M_AXI1_AWPROT;
  assign regslice_data_M_AXI_awqos[3:0] = pr_isolation_expanded_M_AXI1_AWQOS;
  assign regslice_data_M_AXI_awsize[2:0] = pr_isolation_expanded_M_AXI1_AWSIZE;
  assign regslice_data_M_AXI_awvalid = pr_isolation_expanded_M_AXI1_AWVALID;
  assign regslice_data_M_AXI_bready = pr_isolation_expanded_M_AXI1_BREADY;
  assign regslice_data_M_AXI_rready = pr_isolation_expanded_M_AXI1_RREADY;
  assign regslice_data_M_AXI_wdata[255:0] = pr_isolation_expanded_M_AXI1_WDATA;
  assign regslice_data_M_AXI_wlast = pr_isolation_expanded_M_AXI1_WLAST;
  assign regslice_data_M_AXI_wstrb[31:0] = pr_isolation_expanded_M_AXI1_WSTRB;
  assign regslice_data_M_AXI_wvalid = pr_isolation_expanded_M_AXI1_WVALID;
  assign slice_reset_kernel_pr_Dout[0] = pr_isolation_expanded_Dout;
  assign ss_o_1 = slice_ss_1_Dout[0];
  xcl_design_axi_i2c_0 axi_i2c
       (.gpo(axi_i2c_gpo),
        .s_axi_aclk(base_clocking_clk_out2),
        .s_axi_araddr(pr_isolation_expanded_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(base_clocking_interconnect_aresetn),
        .s_axi_arready(pr_isolation_expanded_M05_AXI_ARREADY),
        .s_axi_arvalid(pr_isolation_expanded_M05_AXI_ARVALID),
        .s_axi_awaddr(pr_isolation_expanded_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(pr_isolation_expanded_M05_AXI_AWREADY),
        .s_axi_awvalid(pr_isolation_expanded_M05_AXI_AWVALID),
        .s_axi_bready(pr_isolation_expanded_M05_AXI_BREADY),
        .s_axi_bresp(pr_isolation_expanded_M05_AXI_BRESP),
        .s_axi_bvalid(pr_isolation_expanded_M05_AXI_BVALID),
        .s_axi_rdata(pr_isolation_expanded_M05_AXI_RDATA),
        .s_axi_rready(pr_isolation_expanded_M05_AXI_RREADY),
        .s_axi_rresp(pr_isolation_expanded_M05_AXI_RRESP),
        .s_axi_rvalid(pr_isolation_expanded_M05_AXI_RVALID),
        .s_axi_wdata(pr_isolation_expanded_M05_AXI_WDATA),
        .s_axi_wready(pr_isolation_expanded_M05_AXI_WREADY),
        .s_axi_wstrb(pr_isolation_expanded_M05_AXI_WSTRB),
        .s_axi_wvalid(pr_isolation_expanded_M05_AXI_WVALID),
        .scl_i(Conn3_SCL_I),
        .scl_o(Conn3_SCL_O),
        .scl_t(Conn3_SCL_T),
        .sda_i(Conn3_SDA_I),
        .sda_o(Conn3_SDA_O),
        .sda_t(Conn3_SDA_T));
  base_clocking_imp_TFI73W base_clocking
       (.buf_refclk_ibuf_IBUF_DS_ODIV2(base_clocking_IBUF_DS_ODIV2),
        .buf_refclk_ibuf_IBUF_OUT(base_clocking_IBUF_OUT),
        .clkwiz_kernel2_clk_out1(base_clocking_clk_out4),
        .clkwiz_kernel2_locked(base_clocking_locked2),
        .clkwiz_kernel_clk_out1(base_clocking_clk_out1),
        .clkwiz_kernel_locked(base_clocking_locked),
        .clkwiz_sysclks_clk_out1(base_clocking_clk_out3),
        .clkwiz_sysclks_clk_out2(base_clocking_clk_out2),
        .clkwiz_sysclks_locked(base_clocking_locked1),
        .const_gnd_1_dout(base_tieoffs_dout),
        .const_gnd_3_dout(base_tieoffs_dout1),
        .const_vcc_1_dout(base_tieoffs_dout2),
        .interconnect_axilite_static_M03_AXI_araddr(pr_isolation_expanded_M03_AXI_ARADDR),
        .interconnect_axilite_static_M03_AXI_arready(pr_isolation_expanded_M03_AXI_ARREADY),
        .interconnect_axilite_static_M03_AXI_arvalid(pr_isolation_expanded_M03_AXI_ARVALID),
        .interconnect_axilite_static_M03_AXI_awaddr(pr_isolation_expanded_M03_AXI_AWADDR),
        .interconnect_axilite_static_M03_AXI_awready(pr_isolation_expanded_M03_AXI_AWREADY),
        .interconnect_axilite_static_M03_AXI_awvalid(pr_isolation_expanded_M03_AXI_AWVALID),
        .interconnect_axilite_static_M03_AXI_bready(pr_isolation_expanded_M03_AXI_BREADY),
        .interconnect_axilite_static_M03_AXI_bresp(pr_isolation_expanded_M03_AXI_BRESP),
        .interconnect_axilite_static_M03_AXI_bvalid(pr_isolation_expanded_M03_AXI_BVALID),
        .interconnect_axilite_static_M03_AXI_rdata(pr_isolation_expanded_M03_AXI_RDATA),
        .interconnect_axilite_static_M03_AXI_rready(pr_isolation_expanded_M03_AXI_RREADY),
        .interconnect_axilite_static_M03_AXI_rresp(pr_isolation_expanded_M03_AXI_RRESP),
        .interconnect_axilite_static_M03_AXI_rvalid(pr_isolation_expanded_M03_AXI_RVALID),
        .interconnect_axilite_static_M03_AXI_wdata(pr_isolation_expanded_M03_AXI_WDATA),
        .interconnect_axilite_static_M03_AXI_wready(pr_isolation_expanded_M03_AXI_WREADY),
        .interconnect_axilite_static_M03_AXI_wstrb(pr_isolation_expanded_M03_AXI_WSTRB),
        .interconnect_axilite_static_M03_AXI_wvalid(pr_isolation_expanded_M03_AXI_WVALID),
        .interconnect_axilite_static_M06_AXI_araddr(pr_isolation_expanded_M06_AXI_ARADDR),
        .interconnect_axilite_static_M06_AXI_arready(pr_isolation_expanded_M06_AXI_ARREADY),
        .interconnect_axilite_static_M06_AXI_arvalid(pr_isolation_expanded_M06_AXI_ARVALID),
        .interconnect_axilite_static_M06_AXI_awaddr(pr_isolation_expanded_M06_AXI_AWADDR),
        .interconnect_axilite_static_M06_AXI_awready(pr_isolation_expanded_M06_AXI_AWREADY),
        .interconnect_axilite_static_M06_AXI_awvalid(pr_isolation_expanded_M06_AXI_AWVALID),
        .interconnect_axilite_static_M06_AXI_bready(pr_isolation_expanded_M06_AXI_BREADY),
        .interconnect_axilite_static_M06_AXI_bresp(pr_isolation_expanded_M06_AXI_BRESP),
        .interconnect_axilite_static_M06_AXI_bvalid(pr_isolation_expanded_M06_AXI_BVALID),
        .interconnect_axilite_static_M06_AXI_rdata(pr_isolation_expanded_M06_AXI_RDATA),
        .interconnect_axilite_static_M06_AXI_rready(pr_isolation_expanded_M06_AXI_RREADY),
        .interconnect_axilite_static_M06_AXI_rresp(pr_isolation_expanded_M06_AXI_RRESP),
        .interconnect_axilite_static_M06_AXI_rvalid(pr_isolation_expanded_M06_AXI_RVALID),
        .interconnect_axilite_static_M06_AXI_wdata(pr_isolation_expanded_M06_AXI_WDATA),
        .interconnect_axilite_static_M06_AXI_wready(pr_isolation_expanded_M06_AXI_WREADY),
        .interconnect_axilite_static_M06_AXI_wstrb(pr_isolation_expanded_M06_AXI_WSTRB),
        .interconnect_axilite_static_M06_AXI_wvalid(pr_isolation_expanded_M06_AXI_WVALID),
        .iob_static_perst_n_out(pr_isolation_expanded_perst_n_out),
        .psreset_ctrlclk_interconnect_aresetn(base_clocking_interconnect_aresetn),
        .ref_clk_clk_n(Conn2_CLK_N),
        .ref_clk_clk_p(Conn2_CLK_P));
  base_tieoffs_imp_15UYBSQ base_tieoffs
       (.const_gnd_1_dout(base_tieoffs_dout),
        .const_gnd_3_dout(base_tieoffs_dout1),
        .const_vcc_1_dout(base_tieoffs_dout2));
  xcl_design_dma_pcie_0 dma_pcie
       (.axi_aclk(dma_pcie_axi_aclk),
        .axi_aresetn(dma_pcie_axi_aresetn),
        .cap_gnt(1'b1),
        .cap_rel(1'b0),
        .m_axi_araddr(dma_pcie_M_AXI_ARADDR),
        .m_axi_arburst(dma_pcie_M_AXI_ARBURST),
        .m_axi_arcache(dma_pcie_M_AXI_ARCACHE),
        .m_axi_arid(dma_pcie_M_AXI_ARID),
        .m_axi_arlen(dma_pcie_M_AXI_ARLEN),
        .m_axi_arlock(dma_pcie_M_AXI_ARLOCK),
        .m_axi_arprot(dma_pcie_M_AXI_ARPROT),
        .m_axi_arready(dma_pcie_M_AXI_ARREADY),
        .m_axi_arsize(dma_pcie_M_AXI_ARSIZE),
        .m_axi_arvalid(dma_pcie_M_AXI_ARVALID),
        .m_axi_awaddr(dma_pcie_M_AXI_AWADDR),
        .m_axi_awburst(dma_pcie_M_AXI_AWBURST),
        .m_axi_awcache(dma_pcie_M_AXI_AWCACHE),
        .m_axi_awid(dma_pcie_M_AXI_AWID),
        .m_axi_awlen(dma_pcie_M_AXI_AWLEN),
        .m_axi_awlock(dma_pcie_M_AXI_AWLOCK),
        .m_axi_awprot(dma_pcie_M_AXI_AWPROT),
        .m_axi_awready(dma_pcie_M_AXI_AWREADY),
        .m_axi_awsize(dma_pcie_M_AXI_AWSIZE),
        .m_axi_awvalid(dma_pcie_M_AXI_AWVALID),
        .m_axi_bid(dma_pcie_M_AXI_BID[1:0]),
        .m_axi_bready(dma_pcie_M_AXI_BREADY),
        .m_axi_bresp(dma_pcie_M_AXI_BRESP),
        .m_axi_bvalid(dma_pcie_M_AXI_BVALID),
        .m_axi_rdata(dma_pcie_M_AXI_RDATA),
        .m_axi_rid(dma_pcie_M_AXI_RID[1:0]),
        .m_axi_rlast(dma_pcie_M_AXI_RLAST),
        .m_axi_rready(dma_pcie_M_AXI_RREADY),
        .m_axi_rresp(dma_pcie_M_AXI_RRESP),
        .m_axi_rvalid(dma_pcie_M_AXI_RVALID),
        .m_axi_wdata(dma_pcie_M_AXI_WDATA),
        .m_axi_wlast(dma_pcie_M_AXI_WLAST),
        .m_axi_wready(dma_pcie_M_AXI_WREADY),
        .m_axi_wstrb(dma_pcie_M_AXI_WSTRB),
        .m_axi_wvalid(dma_pcie_M_AXI_WVALID),
        .m_axil_araddr(dma_pcie_M_AXI_LITE_ARADDR),
        .m_axil_arprot(dma_pcie_M_AXI_LITE_ARPROT),
        .m_axil_arready(dma_pcie_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(dma_pcie_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(dma_pcie_M_AXI_LITE_AWADDR),
        .m_axil_awprot(dma_pcie_M_AXI_LITE_AWPROT),
        .m_axil_awready(dma_pcie_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(dma_pcie_M_AXI_LITE_AWVALID),
        .m_axil_bready(dma_pcie_M_AXI_LITE_BREADY),
        .m_axil_bresp(dma_pcie_M_AXI_LITE_BRESP),
        .m_axil_bvalid(dma_pcie_M_AXI_LITE_BVALID),
        .m_axil_rdata(dma_pcie_M_AXI_LITE_RDATA),
        .m_axil_rready(dma_pcie_M_AXI_LITE_RREADY),
        .m_axil_rresp(dma_pcie_M_AXI_LITE_RRESP),
        .m_axil_rvalid(dma_pcie_M_AXI_LITE_RVALID),
        .m_axil_wdata(dma_pcie_M_AXI_LITE_WDATA),
        .m_axil_wready(dma_pcie_M_AXI_LITE_WREADY),
        .m_axil_wstrb(dma_pcie_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(dma_pcie_M_AXI_LITE_WVALID),
        .pci_exp_rxn(Conn1_rxn),
        .pci_exp_rxp(Conn1_rxp),
        .pci_exp_txn(Conn1_txn),
        .pci_exp_txp(Conn1_txp),
        .sys_clk(base_clocking_IBUF_DS_ODIV2),
        .sys_clk_gt(base_clocking_IBUF_OUT),
        .sys_rst_n(pr_isolation_expanded_perst_n_out),
        .user_lnk_up(dma_pcie_user_lnk_up),
        .usr_irq_req({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  featureid_imp_1OS8HUC featureid
       (.clkwiz_sysclks_clk_out2(base_clocking_clk_out2),
        .interconnect_axilite_static_M02_AXI_araddr(pr_isolation_expanded_M02_AXI_ARADDR),
        .interconnect_axilite_static_M02_AXI_arready(pr_isolation_expanded_M02_AXI_ARREADY),
        .interconnect_axilite_static_M02_AXI_arvalid(pr_isolation_expanded_M02_AXI_ARVALID),
        .interconnect_axilite_static_M02_AXI_awaddr(pr_isolation_expanded_M02_AXI_AWADDR),
        .interconnect_axilite_static_M02_AXI_awready(pr_isolation_expanded_M02_AXI_AWREADY),
        .interconnect_axilite_static_M02_AXI_awvalid(pr_isolation_expanded_M02_AXI_AWVALID),
        .interconnect_axilite_static_M02_AXI_bready(pr_isolation_expanded_M02_AXI_BREADY),
        .interconnect_axilite_static_M02_AXI_bresp(pr_isolation_expanded_M02_AXI_BRESP),
        .interconnect_axilite_static_M02_AXI_bvalid(pr_isolation_expanded_M02_AXI_BVALID),
        .interconnect_axilite_static_M02_AXI_rdata(pr_isolation_expanded_M02_AXI_RDATA),
        .interconnect_axilite_static_M02_AXI_rready(pr_isolation_expanded_M02_AXI_RREADY),
        .interconnect_axilite_static_M02_AXI_rresp(pr_isolation_expanded_M02_AXI_RRESP),
        .interconnect_axilite_static_M02_AXI_rvalid(pr_isolation_expanded_M02_AXI_RVALID),
        .interconnect_axilite_static_M02_AXI_wdata(pr_isolation_expanded_M02_AXI_WDATA),
        .interconnect_axilite_static_M02_AXI_wready(pr_isolation_expanded_M02_AXI_WREADY),
        .interconnect_axilite_static_M02_AXI_wstrb(pr_isolation_expanded_M02_AXI_WSTRB),
        .interconnect_axilite_static_M02_AXI_wvalid(pr_isolation_expanded_M02_AXI_WVALID),
        .psreset_ctrlclk_interconnect_aresetn(base_clocking_interconnect_aresetn));
  pr_isolation_expanded_imp_SLGSJL pr_isolation_expanded
       (.clkwiz_sysclks_clk_out2(base_clocking_clk_out2),
        .clkwiz_sysclks_locked(base_clocking_locked1),
        .concat_flash_dq_o_dout(flash_DQ_O_1),
        .concat_flash_tri_dout(flash_DQ_tri_ctrl_1),
        .dma_pcie_M_AXI_LITE_araddr(dma_pcie_M_AXI_LITE_ARADDR),
        .dma_pcie_M_AXI_LITE_arprot(dma_pcie_M_AXI_LITE_ARPROT),
        .dma_pcie_M_AXI_LITE_arready(dma_pcie_M_AXI_LITE_ARREADY),
        .dma_pcie_M_AXI_LITE_arvalid(dma_pcie_M_AXI_LITE_ARVALID),
        .dma_pcie_M_AXI_LITE_awaddr(dma_pcie_M_AXI_LITE_AWADDR),
        .dma_pcie_M_AXI_LITE_awprot(dma_pcie_M_AXI_LITE_AWPROT),
        .dma_pcie_M_AXI_LITE_awready(dma_pcie_M_AXI_LITE_AWREADY),
        .dma_pcie_M_AXI_LITE_awvalid(dma_pcie_M_AXI_LITE_AWVALID),
        .dma_pcie_M_AXI_LITE_bready(dma_pcie_M_AXI_LITE_BREADY),
        .dma_pcie_M_AXI_LITE_bresp(dma_pcie_M_AXI_LITE_BRESP),
        .dma_pcie_M_AXI_LITE_bvalid(dma_pcie_M_AXI_LITE_BVALID),
        .dma_pcie_M_AXI_LITE_rdata(dma_pcie_M_AXI_LITE_RDATA),
        .dma_pcie_M_AXI_LITE_rready(dma_pcie_M_AXI_LITE_RREADY),
        .dma_pcie_M_AXI_LITE_rresp(dma_pcie_M_AXI_LITE_RRESP),
        .dma_pcie_M_AXI_LITE_rvalid(dma_pcie_M_AXI_LITE_RVALID),
        .dma_pcie_M_AXI_LITE_wdata(dma_pcie_M_AXI_LITE_WDATA),
        .dma_pcie_M_AXI_LITE_wready(dma_pcie_M_AXI_LITE_WREADY),
        .dma_pcie_M_AXI_LITE_wstrb(dma_pcie_M_AXI_LITE_WSTRB),
        .dma_pcie_M_AXI_LITE_wvalid(dma_pcie_M_AXI_LITE_WVALID),
        .dma_pcie_M_AXI_araddr(dma_pcie_M_AXI_ARADDR),
        .dma_pcie_M_AXI_arburst(dma_pcie_M_AXI_ARBURST),
        .dma_pcie_M_AXI_arcache(dma_pcie_M_AXI_ARCACHE),
        .dma_pcie_M_AXI_arid(dma_pcie_M_AXI_ARID),
        .dma_pcie_M_AXI_arlen(dma_pcie_M_AXI_ARLEN),
        .dma_pcie_M_AXI_arlock(dma_pcie_M_AXI_ARLOCK),
        .dma_pcie_M_AXI_arprot(dma_pcie_M_AXI_ARPROT),
        .dma_pcie_M_AXI_arready(dma_pcie_M_AXI_ARREADY),
        .dma_pcie_M_AXI_arsize(dma_pcie_M_AXI_ARSIZE),
        .dma_pcie_M_AXI_arvalid(dma_pcie_M_AXI_ARVALID),
        .dma_pcie_M_AXI_awaddr(dma_pcie_M_AXI_AWADDR),
        .dma_pcie_M_AXI_awburst(dma_pcie_M_AXI_AWBURST),
        .dma_pcie_M_AXI_awcache(dma_pcie_M_AXI_AWCACHE),
        .dma_pcie_M_AXI_awid(dma_pcie_M_AXI_AWID),
        .dma_pcie_M_AXI_awlen(dma_pcie_M_AXI_AWLEN),
        .dma_pcie_M_AXI_awlock(dma_pcie_M_AXI_AWLOCK),
        .dma_pcie_M_AXI_awprot(dma_pcie_M_AXI_AWPROT),
        .dma_pcie_M_AXI_awready(dma_pcie_M_AXI_AWREADY),
        .dma_pcie_M_AXI_awsize(dma_pcie_M_AXI_AWSIZE),
        .dma_pcie_M_AXI_awvalid(dma_pcie_M_AXI_AWVALID),
        .dma_pcie_M_AXI_bid(dma_pcie_M_AXI_BID),
        .dma_pcie_M_AXI_bready(dma_pcie_M_AXI_BREADY),
        .dma_pcie_M_AXI_bresp(dma_pcie_M_AXI_BRESP),
        .dma_pcie_M_AXI_bvalid(dma_pcie_M_AXI_BVALID),
        .dma_pcie_M_AXI_rdata(dma_pcie_M_AXI_RDATA),
        .dma_pcie_M_AXI_rid(dma_pcie_M_AXI_RID),
        .dma_pcie_M_AXI_rlast(dma_pcie_M_AXI_RLAST),
        .dma_pcie_M_AXI_rready(dma_pcie_M_AXI_RREADY),
        .dma_pcie_M_AXI_rresp(dma_pcie_M_AXI_RRESP),
        .dma_pcie_M_AXI_rvalid(dma_pcie_M_AXI_RVALID),
        .dma_pcie_M_AXI_wdata(dma_pcie_M_AXI_WDATA),
        .dma_pcie_M_AXI_wlast(dma_pcie_M_AXI_WLAST),
        .dma_pcie_M_AXI_wready(dma_pcie_M_AXI_WREADY),
        .dma_pcie_M_AXI_wstrb(dma_pcie_M_AXI_WSTRB),
        .dma_pcie_M_AXI_wvalid(dma_pcie_M_AXI_WVALID),
        .dma_pcie_axi_aclk(dma_pcie_axi_aclk),
        .dma_pcie_axi_aresetn(dma_pcie_axi_aresetn),
        .dma_pcie_user_lnk_up(dma_pcie_user_lnk_up),
        .emc_clk(emc_clk_in_1),
        .flash_programmer_io0_o(io0_o_1),
        .flash_programmer_io0_t(io0_t_1),
        .flash_programmer_io1_o(io1_o_1),
        .flash_programmer_io1_t(io1_t_1),
        .flash_programmer_io2_o(io2_o_1),
        .flash_programmer_io2_t(io2_t_1),
        .flash_programmer_io3_o(io3_o_1),
        .flash_programmer_io3_t(io3_t_1),
        .flash_programmer_sck_o(flash_clk_1),
        .flash_programmer_ss_t(flash_CS_N_tri_ctrl_1),
        .interconnect_axilite_static_M02_AXI_araddr(pr_isolation_expanded_M02_AXI_ARADDR),
        .interconnect_axilite_static_M02_AXI_arready(pr_isolation_expanded_M02_AXI_ARREADY),
        .interconnect_axilite_static_M02_AXI_arvalid(pr_isolation_expanded_M02_AXI_ARVALID),
        .interconnect_axilite_static_M02_AXI_awaddr(pr_isolation_expanded_M02_AXI_AWADDR),
        .interconnect_axilite_static_M02_AXI_awready(pr_isolation_expanded_M02_AXI_AWREADY),
        .interconnect_axilite_static_M02_AXI_awvalid(pr_isolation_expanded_M02_AXI_AWVALID),
        .interconnect_axilite_static_M02_AXI_bready(pr_isolation_expanded_M02_AXI_BREADY),
        .interconnect_axilite_static_M02_AXI_bresp(pr_isolation_expanded_M02_AXI_BRESP),
        .interconnect_axilite_static_M02_AXI_bvalid(pr_isolation_expanded_M02_AXI_BVALID),
        .interconnect_axilite_static_M02_AXI_rdata(pr_isolation_expanded_M02_AXI_RDATA),
        .interconnect_axilite_static_M02_AXI_rready(pr_isolation_expanded_M02_AXI_RREADY),
        .interconnect_axilite_static_M02_AXI_rresp(pr_isolation_expanded_M02_AXI_RRESP),
        .interconnect_axilite_static_M02_AXI_rvalid(pr_isolation_expanded_M02_AXI_RVALID),
        .interconnect_axilite_static_M02_AXI_wdata(pr_isolation_expanded_M02_AXI_WDATA),
        .interconnect_axilite_static_M02_AXI_wready(pr_isolation_expanded_M02_AXI_WREADY),
        .interconnect_axilite_static_M02_AXI_wstrb(pr_isolation_expanded_M02_AXI_WSTRB),
        .interconnect_axilite_static_M02_AXI_wvalid(pr_isolation_expanded_M02_AXI_WVALID),
        .interconnect_axilite_static_M03_AXI_araddr(pr_isolation_expanded_M03_AXI_ARADDR),
        .interconnect_axilite_static_M03_AXI_arready(pr_isolation_expanded_M03_AXI_ARREADY),
        .interconnect_axilite_static_M03_AXI_arvalid(pr_isolation_expanded_M03_AXI_ARVALID),
        .interconnect_axilite_static_M03_AXI_awaddr(pr_isolation_expanded_M03_AXI_AWADDR),
        .interconnect_axilite_static_M03_AXI_awready(pr_isolation_expanded_M03_AXI_AWREADY),
        .interconnect_axilite_static_M03_AXI_awvalid(pr_isolation_expanded_M03_AXI_AWVALID),
        .interconnect_axilite_static_M03_AXI_bready(pr_isolation_expanded_M03_AXI_BREADY),
        .interconnect_axilite_static_M03_AXI_bresp(pr_isolation_expanded_M03_AXI_BRESP),
        .interconnect_axilite_static_M03_AXI_bvalid(pr_isolation_expanded_M03_AXI_BVALID),
        .interconnect_axilite_static_M03_AXI_rdata(pr_isolation_expanded_M03_AXI_RDATA),
        .interconnect_axilite_static_M03_AXI_rready(pr_isolation_expanded_M03_AXI_RREADY),
        .interconnect_axilite_static_M03_AXI_rresp(pr_isolation_expanded_M03_AXI_RRESP),
        .interconnect_axilite_static_M03_AXI_rvalid(pr_isolation_expanded_M03_AXI_RVALID),
        .interconnect_axilite_static_M03_AXI_wdata(pr_isolation_expanded_M03_AXI_WDATA),
        .interconnect_axilite_static_M03_AXI_wready(pr_isolation_expanded_M03_AXI_WREADY),
        .interconnect_axilite_static_M03_AXI_wstrb(pr_isolation_expanded_M03_AXI_WSTRB),
        .interconnect_axilite_static_M03_AXI_wvalid(pr_isolation_expanded_M03_AXI_WVALID),
        .interconnect_axilite_static_M05_AXI_araddr(pr_isolation_expanded_M05_AXI_ARADDR),
        .interconnect_axilite_static_M05_AXI_arready(pr_isolation_expanded_M05_AXI_ARREADY),
        .interconnect_axilite_static_M05_AXI_arvalid(pr_isolation_expanded_M05_AXI_ARVALID),
        .interconnect_axilite_static_M05_AXI_awaddr(pr_isolation_expanded_M05_AXI_AWADDR),
        .interconnect_axilite_static_M05_AXI_awready(pr_isolation_expanded_M05_AXI_AWREADY),
        .interconnect_axilite_static_M05_AXI_awvalid(pr_isolation_expanded_M05_AXI_AWVALID),
        .interconnect_axilite_static_M05_AXI_bready(pr_isolation_expanded_M05_AXI_BREADY),
        .interconnect_axilite_static_M05_AXI_bresp(pr_isolation_expanded_M05_AXI_BRESP),
        .interconnect_axilite_static_M05_AXI_bvalid(pr_isolation_expanded_M05_AXI_BVALID),
        .interconnect_axilite_static_M05_AXI_rdata(pr_isolation_expanded_M05_AXI_RDATA),
        .interconnect_axilite_static_M05_AXI_rready(pr_isolation_expanded_M05_AXI_RREADY),
        .interconnect_axilite_static_M05_AXI_rresp(pr_isolation_expanded_M05_AXI_RRESP),
        .interconnect_axilite_static_M05_AXI_rvalid(pr_isolation_expanded_M05_AXI_RVALID),
        .interconnect_axilite_static_M05_AXI_wdata(pr_isolation_expanded_M05_AXI_WDATA),
        .interconnect_axilite_static_M05_AXI_wready(pr_isolation_expanded_M05_AXI_WREADY),
        .interconnect_axilite_static_M05_AXI_wstrb(pr_isolation_expanded_M05_AXI_WSTRB),
        .interconnect_axilite_static_M05_AXI_wvalid(pr_isolation_expanded_M05_AXI_WVALID),
        .interconnect_axilite_static_M06_AXI_araddr(pr_isolation_expanded_M06_AXI_ARADDR),
        .interconnect_axilite_static_M06_AXI_arready(pr_isolation_expanded_M06_AXI_ARREADY),
        .interconnect_axilite_static_M06_AXI_arvalid(pr_isolation_expanded_M06_AXI_ARVALID),
        .interconnect_axilite_static_M06_AXI_awaddr(pr_isolation_expanded_M06_AXI_AWADDR),
        .interconnect_axilite_static_M06_AXI_awready(pr_isolation_expanded_M06_AXI_AWREADY),
        .interconnect_axilite_static_M06_AXI_awvalid(pr_isolation_expanded_M06_AXI_AWVALID),
        .interconnect_axilite_static_M06_AXI_bready(pr_isolation_expanded_M06_AXI_BREADY),
        .interconnect_axilite_static_M06_AXI_bresp(pr_isolation_expanded_M06_AXI_BRESP),
        .interconnect_axilite_static_M06_AXI_bvalid(pr_isolation_expanded_M06_AXI_BVALID),
        .interconnect_axilite_static_M06_AXI_rdata(pr_isolation_expanded_M06_AXI_RDATA),
        .interconnect_axilite_static_M06_AXI_rready(pr_isolation_expanded_M06_AXI_RREADY),
        .interconnect_axilite_static_M06_AXI_rresp(pr_isolation_expanded_M06_AXI_RRESP),
        .interconnect_axilite_static_M06_AXI_rvalid(pr_isolation_expanded_M06_AXI_RVALID),
        .interconnect_axilite_static_M06_AXI_wdata(pr_isolation_expanded_M06_AXI_WDATA),
        .interconnect_axilite_static_M06_AXI_wready(pr_isolation_expanded_M06_AXI_WREADY),
        .interconnect_axilite_static_M06_AXI_wstrb(pr_isolation_expanded_M06_AXI_WSTRB),
        .interconnect_axilite_static_M06_AXI_wvalid(pr_isolation_expanded_M06_AXI_WVALID),
        .interconnect_axilite_static_M07_AXI_araddr(pr_isolation_expanded_M07_AXI_ARADDR),
        .interconnect_axilite_static_M07_AXI_arready(pr_isolation_expanded_M07_AXI_ARREADY),
        .interconnect_axilite_static_M07_AXI_arvalid(pr_isolation_expanded_M07_AXI_ARVALID),
        .interconnect_axilite_static_M07_AXI_awaddr(pr_isolation_expanded_M07_AXI_AWADDR),
        .interconnect_axilite_static_M07_AXI_awready(pr_isolation_expanded_M07_AXI_AWREADY),
        .interconnect_axilite_static_M07_AXI_awvalid(pr_isolation_expanded_M07_AXI_AWVALID),
        .interconnect_axilite_static_M07_AXI_bready(pr_isolation_expanded_M07_AXI_BREADY),
        .interconnect_axilite_static_M07_AXI_bresp(pr_isolation_expanded_M07_AXI_BRESP),
        .interconnect_axilite_static_M07_AXI_bvalid(pr_isolation_expanded_M07_AXI_BVALID),
        .interconnect_axilite_static_M07_AXI_rdata(pr_isolation_expanded_M07_AXI_RDATA),
        .interconnect_axilite_static_M07_AXI_rready(pr_isolation_expanded_M07_AXI_RREADY),
        .interconnect_axilite_static_M07_AXI_rresp(pr_isolation_expanded_M07_AXI_RRESP),
        .interconnect_axilite_static_M07_AXI_rvalid(pr_isolation_expanded_M07_AXI_RVALID),
        .interconnect_axilite_static_M07_AXI_wdata(pr_isolation_expanded_M07_AXI_WDATA),
        .interconnect_axilite_static_M07_AXI_wready(pr_isolation_expanded_M07_AXI_WREADY),
        .interconnect_axilite_static_M07_AXI_wstrb(pr_isolation_expanded_M07_AXI_WSTRB),
        .interconnect_axilite_static_M07_AXI_wvalid(pr_isolation_expanded_M07_AXI_WVALID),
        .iob_static_emc_clk_out(pr_isolation_expanded_emc_clk_out),
        .iob_static_init_calib_complete_out(pr_isolation_expanded_init_calib_complete_out),
        .iob_static_io0(iob_static_io0),
        .iob_static_io0_i(pr_isolation_expanded_io0_i),
        .iob_static_io1(iob_static_io1),
        .iob_static_io1_i(pr_isolation_expanded_io1_i),
        .iob_static_io2(iob_static_io2),
        .iob_static_io2_i(pr_isolation_expanded_io2_i),
        .iob_static_io3(iob_static_io3),
        .iob_static_io3_i(pr_isolation_expanded_io3_i),
        .iob_static_led_0_out(pr_isolation_expanded_led_0_out),
        .iob_static_perst_n_out(pr_isolation_expanded_perst_n_out),
        .iob_static_ss(iob_static_ss),
        .logic_ddrcalib_op_Res(gpio_io_i_1),
        .perst_n(perst_n_in_1),
        .psreset_ctrlclk_interconnect_aresetn(base_clocking_interconnect_aresetn),
        .regslice_control_M_AXI_araddr(pr_isolation_expanded_M_AXI_ARADDR),
        .regslice_control_M_AXI_arprot(pr_isolation_expanded_M_AXI_ARPROT),
        .regslice_control_M_AXI_arready(pr_isolation_expanded_M_AXI_ARREADY),
        .regslice_control_M_AXI_arvalid(pr_isolation_expanded_M_AXI_ARVALID),
        .regslice_control_M_AXI_awaddr(pr_isolation_expanded_M_AXI_AWADDR),
        .regslice_control_M_AXI_awprot(pr_isolation_expanded_M_AXI_AWPROT),
        .regslice_control_M_AXI_awready(pr_isolation_expanded_M_AXI_AWREADY),
        .regslice_control_M_AXI_awvalid(pr_isolation_expanded_M_AXI_AWVALID),
        .regslice_control_M_AXI_bready(pr_isolation_expanded_M_AXI_BREADY),
        .regslice_control_M_AXI_bresp(pr_isolation_expanded_M_AXI_BRESP),
        .regslice_control_M_AXI_bvalid(pr_isolation_expanded_M_AXI_BVALID),
        .regslice_control_M_AXI_rdata(pr_isolation_expanded_M_AXI_RDATA),
        .regslice_control_M_AXI_rready(pr_isolation_expanded_M_AXI_RREADY),
        .regslice_control_M_AXI_rresp(pr_isolation_expanded_M_AXI_RRESP),
        .regslice_control_M_AXI_rvalid(pr_isolation_expanded_M_AXI_RVALID),
        .regslice_control_M_AXI_wdata(pr_isolation_expanded_M_AXI_WDATA),
        .regslice_control_M_AXI_wready(pr_isolation_expanded_M_AXI_WREADY),
        .regslice_control_M_AXI_wstrb(pr_isolation_expanded_M_AXI_WSTRB),
        .regslice_control_M_AXI_wvalid(pr_isolation_expanded_M_AXI_WVALID),
        .regslice_data_M_AXI_araddr(pr_isolation_expanded_M_AXI1_ARADDR),
        .regslice_data_M_AXI_arburst(pr_isolation_expanded_M_AXI1_ARBURST),
        .regslice_data_M_AXI_arcache(pr_isolation_expanded_M_AXI1_ARCACHE),
        .regslice_data_M_AXI_arid(pr_isolation_expanded_M_AXI1_ARID),
        .regslice_data_M_AXI_arlen(pr_isolation_expanded_M_AXI1_ARLEN),
        .regslice_data_M_AXI_arlock(pr_isolation_expanded_M_AXI1_ARLOCK),
        .regslice_data_M_AXI_arprot(pr_isolation_expanded_M_AXI1_ARPROT),
        .regslice_data_M_AXI_arqos(pr_isolation_expanded_M_AXI1_ARQOS),
        .regslice_data_M_AXI_arready(pr_isolation_expanded_M_AXI1_ARREADY),
        .regslice_data_M_AXI_arsize(pr_isolation_expanded_M_AXI1_ARSIZE),
        .regslice_data_M_AXI_arvalid(pr_isolation_expanded_M_AXI1_ARVALID),
        .regslice_data_M_AXI_awaddr(pr_isolation_expanded_M_AXI1_AWADDR),
        .regslice_data_M_AXI_awburst(pr_isolation_expanded_M_AXI1_AWBURST),
        .regslice_data_M_AXI_awcache(pr_isolation_expanded_M_AXI1_AWCACHE),
        .regslice_data_M_AXI_awid(pr_isolation_expanded_M_AXI1_AWID),
        .regslice_data_M_AXI_awlen(pr_isolation_expanded_M_AXI1_AWLEN),
        .regslice_data_M_AXI_awlock(pr_isolation_expanded_M_AXI1_AWLOCK),
        .regslice_data_M_AXI_awprot(pr_isolation_expanded_M_AXI1_AWPROT),
        .regslice_data_M_AXI_awqos(pr_isolation_expanded_M_AXI1_AWQOS),
        .regslice_data_M_AXI_awready(pr_isolation_expanded_M_AXI1_AWREADY),
        .regslice_data_M_AXI_awsize(pr_isolation_expanded_M_AXI1_AWSIZE),
        .regslice_data_M_AXI_awvalid(pr_isolation_expanded_M_AXI1_AWVALID),
        .regslice_data_M_AXI_bid(pr_isolation_expanded_M_AXI1_BID),
        .regslice_data_M_AXI_bready(pr_isolation_expanded_M_AXI1_BREADY),
        .regslice_data_M_AXI_bresp(pr_isolation_expanded_M_AXI1_BRESP),
        .regslice_data_M_AXI_bvalid(pr_isolation_expanded_M_AXI1_BVALID),
        .regslice_data_M_AXI_rdata(pr_isolation_expanded_M_AXI1_RDATA),
        .regslice_data_M_AXI_rid(pr_isolation_expanded_M_AXI1_RID),
        .regslice_data_M_AXI_rlast(pr_isolation_expanded_M_AXI1_RLAST),
        .regslice_data_M_AXI_rready(pr_isolation_expanded_M_AXI1_RREADY),
        .regslice_data_M_AXI_rresp(pr_isolation_expanded_M_AXI1_RRESP),
        .regslice_data_M_AXI_rvalid(pr_isolation_expanded_M_AXI1_RVALID),
        .regslice_data_M_AXI_wdata(pr_isolation_expanded_M_AXI1_WDATA),
        .regslice_data_M_AXI_wlast(pr_isolation_expanded_M_AXI1_WLAST),
        .regslice_data_M_AXI_wready(pr_isolation_expanded_M_AXI1_WREADY),
        .regslice_data_M_AXI_wstrb(pr_isolation_expanded_M_AXI1_WSTRB),
        .regslice_data_M_AXI_wvalid(pr_isolation_expanded_M_AXI1_WVALID),
        .slice_reset_kernel_pr_Dout(pr_isolation_expanded_Dout),
        .slice_ss0_Dout(flash_CS_N_1),
        .slice_ss_1_Dout(ss_o_1));
  xcl_design_sys_mgmt_wiz_0 sys_mgmt_wiz
       (.s_axi_aclk(base_clocking_clk_out2),
        .s_axi_araddr(pr_isolation_expanded_M07_AXI_ARADDR[12:0]),
        .s_axi_aresetn(base_clocking_interconnect_aresetn),
        .s_axi_arready(pr_isolation_expanded_M07_AXI_ARREADY),
        .s_axi_arvalid(pr_isolation_expanded_M07_AXI_ARVALID),
        .s_axi_awaddr(pr_isolation_expanded_M07_AXI_AWADDR[12:0]),
        .s_axi_awready(pr_isolation_expanded_M07_AXI_AWREADY),
        .s_axi_awvalid(pr_isolation_expanded_M07_AXI_AWVALID),
        .s_axi_bready(pr_isolation_expanded_M07_AXI_BREADY),
        .s_axi_bresp(pr_isolation_expanded_M07_AXI_BRESP),
        .s_axi_bvalid(pr_isolation_expanded_M07_AXI_BVALID),
        .s_axi_rdata(pr_isolation_expanded_M07_AXI_RDATA),
        .s_axi_rready(pr_isolation_expanded_M07_AXI_RREADY),
        .s_axi_rresp(pr_isolation_expanded_M07_AXI_RRESP),
        .s_axi_rvalid(pr_isolation_expanded_M07_AXI_RVALID),
        .s_axi_wdata(pr_isolation_expanded_M07_AXI_WDATA),
        .s_axi_wready(pr_isolation_expanded_M07_AXI_WREADY),
        .s_axi_wstrb(pr_isolation_expanded_M07_AXI_WSTRB),
        .s_axi_wvalid(pr_isolation_expanded_M07_AXI_WVALID));
endmodule

module base_tieoffs_imp_15UYBSQ
   (const_gnd_1_dout,
    const_gnd_3_dout,
    const_vcc_1_dout);
  output [0:0]const_gnd_1_dout;
  output [2:0]const_gnd_3_dout;
  output [0:0]const_vcc_1_dout;

  wire [0:0]const_gnd_1_dout;
  wire [2:0]const_gnd_3_dout;
  wire [0:0]const_vcc_1_dout;

  xcl_design_const_gnd_1_0 const_gnd_1
       (.dout(const_gnd_1_dout));
  xcl_design_const_gnd_3_0 const_gnd_3
       (.dout(const_gnd_3_dout));
  xcl_design_const_vcc_1_0 const_vcc_1
       (.dout(const_vcc_1_dout));
endmodule

module expanded_region_imp_112GC7E
   (bscanid,
    c0_sys_clk_n,
    c0_sys_clk_p,
    c1_sys_clk_n,
    c1_sys_clk_p,
    c2_sys_clk_n,
    c2_sys_clk_p,
    c3_sys_clk_n,
    c3_sys_clk_p,
    capture,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    concat_flash_dq_o_dout,
    concat_flash_tri_dout,
    ddrmem_0_C0_DDR4_act_n,
    ddrmem_0_C0_DDR4_adr,
    ddrmem_0_C0_DDR4_ba,
    ddrmem_0_C0_DDR4_bg,
    ddrmem_0_C0_DDR4_ck_c,
    ddrmem_0_C0_DDR4_ck_t,
    ddrmem_0_C0_DDR4_cke,
    ddrmem_0_C0_DDR4_cs_n,
    ddrmem_0_C0_DDR4_dm_n,
    ddrmem_0_C0_DDR4_dq,
    ddrmem_0_C0_DDR4_dqs_c,
    ddrmem_0_C0_DDR4_dqs_t,
    ddrmem_0_C0_DDR4_odt,
    ddrmem_0_C0_DDR4_reset_n,
    ddrmem_1_C0_DDR4_act_n,
    ddrmem_1_C0_DDR4_adr,
    ddrmem_1_C0_DDR4_ba,
    ddrmem_1_C0_DDR4_bg,
    ddrmem_1_C0_DDR4_ck_c,
    ddrmem_1_C0_DDR4_ck_t,
    ddrmem_1_C0_DDR4_cke,
    ddrmem_1_C0_DDR4_cs_n,
    ddrmem_1_C0_DDR4_dm_n,
    ddrmem_1_C0_DDR4_dq,
    ddrmem_1_C0_DDR4_dqs_c,
    ddrmem_1_C0_DDR4_dqs_t,
    ddrmem_1_C0_DDR4_odt,
    ddrmem_1_C0_DDR4_reset_n,
    ddrmem_2_C0_DDR4_act_n,
    ddrmem_2_C0_DDR4_adr,
    ddrmem_2_C0_DDR4_ba,
    ddrmem_2_C0_DDR4_bg,
    ddrmem_2_C0_DDR4_ck_c,
    ddrmem_2_C0_DDR4_ck_t,
    ddrmem_2_C0_DDR4_cke,
    ddrmem_2_C0_DDR4_cs_n,
    ddrmem_2_C0_DDR4_dm_n,
    ddrmem_2_C0_DDR4_dq,
    ddrmem_2_C0_DDR4_dqs_c,
    ddrmem_2_C0_DDR4_dqs_t,
    ddrmem_2_C0_DDR4_odt,
    ddrmem_2_C0_DDR4_reset_n,
    ddrmem_3_C0_DDR4_act_n,
    ddrmem_3_C0_DDR4_adr,
    ddrmem_3_C0_DDR4_ba,
    ddrmem_3_C0_DDR4_bg,
    ddrmem_3_C0_DDR4_ck_c,
    ddrmem_3_C0_DDR4_ck_t,
    ddrmem_3_C0_DDR4_cke,
    ddrmem_3_C0_DDR4_cs_n,
    ddrmem_3_C0_DDR4_dm_n,
    ddrmem_3_C0_DDR4_dq,
    ddrmem_3_C0_DDR4_dqs_c,
    ddrmem_3_C0_DDR4_dqs_t,
    ddrmem_3_C0_DDR4_odt,
    ddrmem_3_C0_DDR4_reset_n,
    dma_pcie_axi_aclk,
    dma_pcie_user_lnk_up,
    drck,
    flash_programmer_io0_o,
    flash_programmer_io0_t,
    flash_programmer_io1_o,
    flash_programmer_io1_t,
    flash_programmer_io2_o,
    flash_programmer_io2_t,
    flash_programmer_io3_o,
    flash_programmer_io3_t,
    flash_programmer_sck_o,
    flash_programmer_ss_t,
    iob_static_emc_clk_out,
    iob_static_io0_i,
    iob_static_io1_i,
    iob_static_io2_i,
    iob_static_io3_i,
    iob_static_perst_n_out,
    logic_ddrcalib_op_Res,
    regslice_control_M_AXI_araddr,
    regslice_control_M_AXI_arprot,
    regslice_control_M_AXI_arready,
    regslice_control_M_AXI_arvalid,
    regslice_control_M_AXI_awaddr,
    regslice_control_M_AXI_awprot,
    regslice_control_M_AXI_awready,
    regslice_control_M_AXI_awvalid,
    regslice_control_M_AXI_bready,
    regslice_control_M_AXI_bresp,
    regslice_control_M_AXI_bvalid,
    regslice_control_M_AXI_rdata,
    regslice_control_M_AXI_rready,
    regslice_control_M_AXI_rresp,
    regslice_control_M_AXI_rvalid,
    regslice_control_M_AXI_wdata,
    regslice_control_M_AXI_wready,
    regslice_control_M_AXI_wstrb,
    regslice_control_M_AXI_wvalid,
    regslice_data_M_AXI_araddr,
    regslice_data_M_AXI_arburst,
    regslice_data_M_AXI_arcache,
    regslice_data_M_AXI_arid,
    regslice_data_M_AXI_arlen,
    regslice_data_M_AXI_arlock,
    regslice_data_M_AXI_arprot,
    regslice_data_M_AXI_arqos,
    regslice_data_M_AXI_arready,
    regslice_data_M_AXI_arsize,
    regslice_data_M_AXI_arvalid,
    regslice_data_M_AXI_awaddr,
    regslice_data_M_AXI_awburst,
    regslice_data_M_AXI_awcache,
    regslice_data_M_AXI_awid,
    regslice_data_M_AXI_awlen,
    regslice_data_M_AXI_awlock,
    regslice_data_M_AXI_awprot,
    regslice_data_M_AXI_awqos,
    regslice_data_M_AXI_awready,
    regslice_data_M_AXI_awsize,
    regslice_data_M_AXI_awvalid,
    regslice_data_M_AXI_bid,
    regslice_data_M_AXI_bready,
    regslice_data_M_AXI_bresp,
    regslice_data_M_AXI_bvalid,
    regslice_data_M_AXI_rdata,
    regslice_data_M_AXI_rid,
    regslice_data_M_AXI_rlast,
    regslice_data_M_AXI_rready,
    regslice_data_M_AXI_rresp,
    regslice_data_M_AXI_rvalid,
    regslice_data_M_AXI_wdata,
    regslice_data_M_AXI_wlast,
    regslice_data_M_AXI_wready,
    regslice_data_M_AXI_wstrb,
    regslice_data_M_AXI_wvalid,
    reset,
    runtest,
    sel,
    shift,
    slice_reset_kernel_pr_Dout,
    slice_ss_0_Dout,
    slice_ss_1_Dout,
    tck,
    tdi,
    tdo,
    tms,
    update);
  output [31:0]bscanid;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  input c1_sys_clk_n;
  input c1_sys_clk_p;
  input c2_sys_clk_n;
  input c2_sys_clk_p;
  input c3_sys_clk_n;
  input c3_sys_clk_p;
  input capture;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked;
  input clkwiz_sysclks_clk_out1;
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked;
  output [3:0]concat_flash_dq_o_dout;
  output [3:0]concat_flash_tri_dout;
  output ddrmem_0_C0_DDR4_act_n;
  output [16:0]ddrmem_0_C0_DDR4_adr;
  output [1:0]ddrmem_0_C0_DDR4_ba;
  output [0:0]ddrmem_0_C0_DDR4_bg;
  output [0:0]ddrmem_0_C0_DDR4_ck_c;
  output [0:0]ddrmem_0_C0_DDR4_ck_t;
  output [0:0]ddrmem_0_C0_DDR4_cke;
  output [0:0]ddrmem_0_C0_DDR4_cs_n;
  inout [8:0]ddrmem_0_C0_DDR4_dm_n;
  inout [71:0]ddrmem_0_C0_DDR4_dq;
  inout [8:0]ddrmem_0_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_0_C0_DDR4_dqs_t;
  output [0:0]ddrmem_0_C0_DDR4_odt;
  output ddrmem_0_C0_DDR4_reset_n;
  output ddrmem_1_C0_DDR4_act_n;
  output [16:0]ddrmem_1_C0_DDR4_adr;
  output [1:0]ddrmem_1_C0_DDR4_ba;
  output [0:0]ddrmem_1_C0_DDR4_bg;
  output [0:0]ddrmem_1_C0_DDR4_ck_c;
  output [0:0]ddrmem_1_C0_DDR4_ck_t;
  output [0:0]ddrmem_1_C0_DDR4_cke;
  output [0:0]ddrmem_1_C0_DDR4_cs_n;
  inout [7:0]ddrmem_1_C0_DDR4_dm_n;
  inout [63:0]ddrmem_1_C0_DDR4_dq;
  inout [7:0]ddrmem_1_C0_DDR4_dqs_c;
  inout [7:0]ddrmem_1_C0_DDR4_dqs_t;
  output [0:0]ddrmem_1_C0_DDR4_odt;
  output ddrmem_1_C0_DDR4_reset_n;
  output ddrmem_2_C0_DDR4_act_n;
  output [16:0]ddrmem_2_C0_DDR4_adr;
  output [1:0]ddrmem_2_C0_DDR4_ba;
  output [0:0]ddrmem_2_C0_DDR4_bg;
  output [0:0]ddrmem_2_C0_DDR4_ck_c;
  output [0:0]ddrmem_2_C0_DDR4_ck_t;
  output [0:0]ddrmem_2_C0_DDR4_cke;
  output [0:0]ddrmem_2_C0_DDR4_cs_n;
  inout [8:0]ddrmem_2_C0_DDR4_dm_n;
  inout [71:0]ddrmem_2_C0_DDR4_dq;
  inout [8:0]ddrmem_2_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_2_C0_DDR4_dqs_t;
  output [0:0]ddrmem_2_C0_DDR4_odt;
  output ddrmem_2_C0_DDR4_reset_n;
  output ddrmem_3_C0_DDR4_act_n;
  output [16:0]ddrmem_3_C0_DDR4_adr;
  output [1:0]ddrmem_3_C0_DDR4_ba;
  output [0:0]ddrmem_3_C0_DDR4_bg;
  output [0:0]ddrmem_3_C0_DDR4_ck_c;
  output [0:0]ddrmem_3_C0_DDR4_ck_t;
  output [0:0]ddrmem_3_C0_DDR4_cke;
  output [0:0]ddrmem_3_C0_DDR4_cs_n;
  inout [8:0]ddrmem_3_C0_DDR4_dm_n;
  inout [71:0]ddrmem_3_C0_DDR4_dq;
  inout [8:0]ddrmem_3_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_3_C0_DDR4_dqs_t;
  output [0:0]ddrmem_3_C0_DDR4_odt;
  output ddrmem_3_C0_DDR4_reset_n;
  input dma_pcie_axi_aclk;
  input dma_pcie_user_lnk_up;
  input drck;
  output flash_programmer_io0_o;
  output flash_programmer_io0_t;
  output flash_programmer_io1_o;
  output flash_programmer_io1_t;
  output flash_programmer_io2_o;
  output flash_programmer_io2_t;
  output flash_programmer_io3_o;
  output flash_programmer_io3_t;
  output flash_programmer_sck_o;
  output flash_programmer_ss_t;
  input iob_static_emc_clk_out;
  input iob_static_io0_i;
  input iob_static_io1_i;
  input iob_static_io2_i;
  input iob_static_io3_i;
  input iob_static_perst_n_out;
  output logic_ddrcalib_op_Res;
  input [31:0]regslice_control_M_AXI_araddr;
  input [2:0]regslice_control_M_AXI_arprot;
  output regslice_control_M_AXI_arready;
  input regslice_control_M_AXI_arvalid;
  input [31:0]regslice_control_M_AXI_awaddr;
  input [2:0]regslice_control_M_AXI_awprot;
  output regslice_control_M_AXI_awready;
  input regslice_control_M_AXI_awvalid;
  input regslice_control_M_AXI_bready;
  output [1:0]regslice_control_M_AXI_bresp;
  output regslice_control_M_AXI_bvalid;
  output [31:0]regslice_control_M_AXI_rdata;
  input regslice_control_M_AXI_rready;
  output [1:0]regslice_control_M_AXI_rresp;
  output regslice_control_M_AXI_rvalid;
  input [31:0]regslice_control_M_AXI_wdata;
  output regslice_control_M_AXI_wready;
  input [3:0]regslice_control_M_AXI_wstrb;
  input regslice_control_M_AXI_wvalid;
  input [37:0]regslice_data_M_AXI_araddr;
  input [1:0]regslice_data_M_AXI_arburst;
  input [3:0]regslice_data_M_AXI_arcache;
  input [3:0]regslice_data_M_AXI_arid;
  input [7:0]regslice_data_M_AXI_arlen;
  input [0:0]regslice_data_M_AXI_arlock;
  input [2:0]regslice_data_M_AXI_arprot;
  input [3:0]regslice_data_M_AXI_arqos;
  output regslice_data_M_AXI_arready;
  input [2:0]regslice_data_M_AXI_arsize;
  input regslice_data_M_AXI_arvalid;
  input [37:0]regslice_data_M_AXI_awaddr;
  input [1:0]regslice_data_M_AXI_awburst;
  input [3:0]regslice_data_M_AXI_awcache;
  input [3:0]regslice_data_M_AXI_awid;
  input [7:0]regslice_data_M_AXI_awlen;
  input [0:0]regslice_data_M_AXI_awlock;
  input [2:0]regslice_data_M_AXI_awprot;
  input [3:0]regslice_data_M_AXI_awqos;
  output regslice_data_M_AXI_awready;
  input [2:0]regslice_data_M_AXI_awsize;
  input regslice_data_M_AXI_awvalid;
  output [3:0]regslice_data_M_AXI_bid;
  input regslice_data_M_AXI_bready;
  output [1:0]regslice_data_M_AXI_bresp;
  output regslice_data_M_AXI_bvalid;
  output [255:0]regslice_data_M_AXI_rdata;
  output [3:0]regslice_data_M_AXI_rid;
  output regslice_data_M_AXI_rlast;
  input regslice_data_M_AXI_rready;
  output [1:0]regslice_data_M_AXI_rresp;
  output regslice_data_M_AXI_rvalid;
  input [255:0]regslice_data_M_AXI_wdata;
  input regslice_data_M_AXI_wlast;
  output regslice_data_M_AXI_wready;
  input [31:0]regslice_data_M_AXI_wstrb;
  input regslice_data_M_AXI_wvalid;
  input reset;
  input runtest;
  input sel;
  input shift;
  input [0:0]slice_reset_kernel_pr_Dout;
  output [0:0]slice_ss_0_Dout;
  output [0:0]slice_ss_1_Dout;
  input tck;
  input tdi;
  output tdo;
  input tms;
  input update;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire Conn2_ACT_N;
  wire [16:0]Conn2_ADR;
  wire [1:0]Conn2_BA;
  wire [0:0]Conn2_BG;
  wire [0:0]Conn2_CKE;
  wire [0:0]Conn2_CK_C;
  wire [0:0]Conn2_CK_T;
  wire [0:0]Conn2_CS_N;
  wire [8:0]Conn2_DM_N;
  wire [71:0]Conn2_DQ;
  wire [8:0]Conn2_DQS_C;
  wire [8:0]Conn2_DQS_T;
  wire [0:0]Conn2_ODT;
  wire Conn2_RESET_N;
  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire Conn4_ACT_N;
  wire [16:0]Conn4_ADR;
  wire [1:0]Conn4_BA;
  wire [0:0]Conn4_BG;
  wire [0:0]Conn4_CKE;
  wire [0:0]Conn4_CK_C;
  wire [0:0]Conn4_CK_T;
  wire [0:0]Conn4_CS_N;
  wire [7:0]Conn4_DM_N;
  wire [63:0]Conn4_DQ;
  wire [7:0]Conn4_DQS_C;
  wire [7:0]Conn4_DQS_T;
  wire [0:0]Conn4_ODT;
  wire Conn4_RESET_N;
  wire Conn5_CLK_N;
  wire Conn5_CLK_P;
  wire Conn6_ACT_N;
  wire [16:0]Conn6_ADR;
  wire [1:0]Conn6_BA;
  wire [0:0]Conn6_BG;
  wire [0:0]Conn6_CKE;
  wire [0:0]Conn6_CK_C;
  wire [0:0]Conn6_CK_T;
  wire [0:0]Conn6_CS_N;
  wire [8:0]Conn6_DM_N;
  wire [71:0]Conn6_DQ;
  wire [8:0]Conn6_DQS_C;
  wire [8:0]Conn6_DQS_T;
  wire [0:0]Conn6_ODT;
  wire Conn6_RESET_N;
  wire Conn7_CLK_N;
  wire Conn7_CLK_P;
  wire Conn8_ACT_N;
  wire [16:0]Conn8_ADR;
  wire [1:0]Conn8_BA;
  wire [0:0]Conn8_BG;
  wire [0:0]Conn8_CKE;
  wire [0:0]Conn8_CK_C;
  wire [0:0]Conn8_CK_T;
  wire [0:0]Conn8_CS_N;
  wire [8:0]Conn8_DM_N;
  wire [71:0]Conn8_DQ;
  wire [8:0]Conn8_DQS_C;
  wire [8:0]Conn8_DQS_T;
  wire [0:0]Conn8_ODT;
  wire Conn8_RESET_N;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire [0:0]M03_ARESETN_1;
  wire Op1_1;
  wire S00_ACLK_1;
  wire [37:0]S00_AXI1_1_ARADDR;
  wire [1:0]S00_AXI1_1_ARBURST;
  wire [3:0]S00_AXI1_1_ARCACHE;
  wire [3:0]S00_AXI1_1_ARID;
  wire [7:0]S00_AXI1_1_ARLEN;
  wire [0:0]S00_AXI1_1_ARLOCK;
  wire [2:0]S00_AXI1_1_ARPROT;
  wire [3:0]S00_AXI1_1_ARQOS;
  wire S00_AXI1_1_ARREADY;
  wire [2:0]S00_AXI1_1_ARSIZE;
  wire S00_AXI1_1_ARVALID;
  wire [37:0]S00_AXI1_1_AWADDR;
  wire [1:0]S00_AXI1_1_AWBURST;
  wire [3:0]S00_AXI1_1_AWCACHE;
  wire [3:0]S00_AXI1_1_AWID;
  wire [7:0]S00_AXI1_1_AWLEN;
  wire [0:0]S00_AXI1_1_AWLOCK;
  wire [2:0]S00_AXI1_1_AWPROT;
  wire [3:0]S00_AXI1_1_AWQOS;
  wire S00_AXI1_1_AWREADY;
  wire [2:0]S00_AXI1_1_AWSIZE;
  wire S00_AXI1_1_AWVALID;
  wire [3:0]S00_AXI1_1_BID;
  wire S00_AXI1_1_BREADY;
  wire [1:0]S00_AXI1_1_BRESP;
  wire S00_AXI1_1_BVALID;
  wire [255:0]S00_AXI1_1_RDATA;
  wire [3:0]S00_AXI1_1_RID;
  wire S00_AXI1_1_RLAST;
  wire S00_AXI1_1_RREADY;
  wire [1:0]S00_AXI1_1_RRESP;
  wire S00_AXI1_1_RVALID;
  wire [255:0]S00_AXI1_1_WDATA;
  wire S00_AXI1_1_WLAST;
  wire S00_AXI1_1_WREADY;
  wire [31:0]S00_AXI1_1_WSTRB;
  wire S00_AXI1_1_WVALID;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire capture_1;
  wire dcm_locked_1;
  wire dcm_locked_2;
  wire dcm_locked_3;
  wire drck_1;
  wire [0:0]expanded_resets_Res;
  wire [0:0]expanded_resets_interconnect_aresetn;
  wire [0:0]expanded_resets_interconnect_aresetn1;
  wire [0:0]expanded_resets_interconnect_aresetn2;
  wire [0:0]expanded_resets_interconnect_aresetn3;
  wire [0:0]expanded_resets_interconnect_aresetn4;
  wire [0:0]expanded_resets_interconnect_aresetn5;
  wire [0:0]ext_reset_in_1;
  wire ext_spi_clk_1;
  wire [31:0]interconnect_M00_AXI1_ARADDR;
  wire [1:0]interconnect_M00_AXI1_ARBURST;
  wire [3:0]interconnect_M00_AXI1_ARCACHE;
  wire [7:0]interconnect_M00_AXI1_ARLEN;
  wire [0:0]interconnect_M00_AXI1_ARLOCK;
  wire [2:0]interconnect_M00_AXI1_ARPROT;
  wire [3:0]interconnect_M00_AXI1_ARQOS;
  wire interconnect_M00_AXI1_ARREADY;
  wire [2:0]interconnect_M00_AXI1_ARSIZE;
  wire interconnect_M00_AXI1_ARVALID;
  wire [31:0]interconnect_M00_AXI1_AWADDR;
  wire [1:0]interconnect_M00_AXI1_AWBURST;
  wire [3:0]interconnect_M00_AXI1_AWCACHE;
  wire [7:0]interconnect_M00_AXI1_AWLEN;
  wire [0:0]interconnect_M00_AXI1_AWLOCK;
  wire [2:0]interconnect_M00_AXI1_AWPROT;
  wire [3:0]interconnect_M00_AXI1_AWQOS;
  wire interconnect_M00_AXI1_AWREADY;
  wire [2:0]interconnect_M00_AXI1_AWSIZE;
  wire interconnect_M00_AXI1_AWVALID;
  wire interconnect_M00_AXI1_BREADY;
  wire [1:0]interconnect_M00_AXI1_BRESP;
  wire interconnect_M00_AXI1_BVALID;
  wire [511:0]interconnect_M00_AXI1_RDATA;
  wire interconnect_M00_AXI1_RLAST;
  wire interconnect_M00_AXI1_RREADY;
  wire [1:0]interconnect_M00_AXI1_RRESP;
  wire interconnect_M00_AXI1_RVALID;
  wire [511:0]interconnect_M00_AXI1_WDATA;
  wire interconnect_M00_AXI1_WLAST;
  wire interconnect_M00_AXI1_WREADY;
  wire [63:0]interconnect_M00_AXI1_WSTRB;
  wire interconnect_M00_AXI1_WVALID;
  wire [31:0]interconnect_M00_AXI2_ARADDR;
  wire [1:0]interconnect_M00_AXI2_ARBURST;
  wire [3:0]interconnect_M00_AXI2_ARCACHE;
  wire [7:0]interconnect_M00_AXI2_ARLEN;
  wire [0:0]interconnect_M00_AXI2_ARLOCK;
  wire [2:0]interconnect_M00_AXI2_ARPROT;
  wire [3:0]interconnect_M00_AXI2_ARQOS;
  wire interconnect_M00_AXI2_ARREADY;
  wire [2:0]interconnect_M00_AXI2_ARSIZE;
  wire interconnect_M00_AXI2_ARVALID;
  wire [31:0]interconnect_M00_AXI2_AWADDR;
  wire [1:0]interconnect_M00_AXI2_AWBURST;
  wire [3:0]interconnect_M00_AXI2_AWCACHE;
  wire [7:0]interconnect_M00_AXI2_AWLEN;
  wire [0:0]interconnect_M00_AXI2_AWLOCK;
  wire [2:0]interconnect_M00_AXI2_AWPROT;
  wire [3:0]interconnect_M00_AXI2_AWQOS;
  wire interconnect_M00_AXI2_AWREADY;
  wire [2:0]interconnect_M00_AXI2_AWSIZE;
  wire interconnect_M00_AXI2_AWVALID;
  wire interconnect_M00_AXI2_BREADY;
  wire [1:0]interconnect_M00_AXI2_BRESP;
  wire interconnect_M00_AXI2_BVALID;
  wire [511:0]interconnect_M00_AXI2_RDATA;
  wire interconnect_M00_AXI2_RLAST;
  wire interconnect_M00_AXI2_RREADY;
  wire [1:0]interconnect_M00_AXI2_RRESP;
  wire interconnect_M00_AXI2_RVALID;
  wire [511:0]interconnect_M00_AXI2_WDATA;
  wire interconnect_M00_AXI2_WLAST;
  wire interconnect_M00_AXI2_WREADY;
  wire [63:0]interconnect_M00_AXI2_WSTRB;
  wire interconnect_M00_AXI2_WVALID;
  wire [31:0]interconnect_M00_AXI3_ARADDR;
  wire [1:0]interconnect_M00_AXI3_ARBURST;
  wire [3:0]interconnect_M00_AXI3_ARCACHE;
  wire [7:0]interconnect_M00_AXI3_ARLEN;
  wire [0:0]interconnect_M00_AXI3_ARLOCK;
  wire [2:0]interconnect_M00_AXI3_ARPROT;
  wire [3:0]interconnect_M00_AXI3_ARQOS;
  wire interconnect_M00_AXI3_ARREADY;
  wire [2:0]interconnect_M00_AXI3_ARSIZE;
  wire interconnect_M00_AXI3_ARVALID;
  wire [31:0]interconnect_M00_AXI3_AWADDR;
  wire [1:0]interconnect_M00_AXI3_AWBURST;
  wire [3:0]interconnect_M00_AXI3_AWCACHE;
  wire [7:0]interconnect_M00_AXI3_AWLEN;
  wire [0:0]interconnect_M00_AXI3_AWLOCK;
  wire [2:0]interconnect_M00_AXI3_AWPROT;
  wire [3:0]interconnect_M00_AXI3_AWQOS;
  wire interconnect_M00_AXI3_AWREADY;
  wire [2:0]interconnect_M00_AXI3_AWSIZE;
  wire interconnect_M00_AXI3_AWVALID;
  wire interconnect_M00_AXI3_BREADY;
  wire [1:0]interconnect_M00_AXI3_BRESP;
  wire interconnect_M00_AXI3_BVALID;
  wire [511:0]interconnect_M00_AXI3_RDATA;
  wire interconnect_M00_AXI3_RLAST;
  wire interconnect_M00_AXI3_RREADY;
  wire [1:0]interconnect_M00_AXI3_RRESP;
  wire interconnect_M00_AXI3_RVALID;
  wire [511:0]interconnect_M00_AXI3_WDATA;
  wire interconnect_M00_AXI3_WLAST;
  wire interconnect_M00_AXI3_WREADY;
  wire [63:0]interconnect_M00_AXI3_WSTRB;
  wire interconnect_M00_AXI3_WVALID;
  wire [31:0]interconnect_M00_AXI_ARADDR;
  wire [1:0]interconnect_M00_AXI_ARBURST;
  wire [3:0]interconnect_M00_AXI_ARCACHE;
  wire [7:0]interconnect_M00_AXI_ARLEN;
  wire [0:0]interconnect_M00_AXI_ARLOCK;
  wire [2:0]interconnect_M00_AXI_ARPROT;
  wire [3:0]interconnect_M00_AXI_ARQOS;
  wire interconnect_M00_AXI_ARREADY;
  wire [2:0]interconnect_M00_AXI_ARSIZE;
  wire interconnect_M00_AXI_ARVALID;
  wire [31:0]interconnect_M00_AXI_AWADDR;
  wire [1:0]interconnect_M00_AXI_AWBURST;
  wire [3:0]interconnect_M00_AXI_AWCACHE;
  wire [7:0]interconnect_M00_AXI_AWLEN;
  wire [0:0]interconnect_M00_AXI_AWLOCK;
  wire [2:0]interconnect_M00_AXI_AWPROT;
  wire [3:0]interconnect_M00_AXI_AWQOS;
  wire interconnect_M00_AXI_AWREADY;
  wire [2:0]interconnect_M00_AXI_AWSIZE;
  wire interconnect_M00_AXI_AWVALID;
  wire interconnect_M00_AXI_BREADY;
  wire [1:0]interconnect_M00_AXI_BRESP;
  wire interconnect_M00_AXI_BVALID;
  wire [511:0]interconnect_M00_AXI_RDATA;
  wire interconnect_M00_AXI_RLAST;
  wire interconnect_M00_AXI_RREADY;
  wire [1:0]interconnect_M00_AXI_RRESP;
  wire interconnect_M00_AXI_RVALID;
  wire [511:0]interconnect_M00_AXI_WDATA;
  wire interconnect_M00_AXI_WLAST;
  wire interconnect_M00_AXI_WREADY;
  wire [63:0]interconnect_M00_AXI_WSTRB;
  wire interconnect_M00_AXI_WVALID;
  wire [31:0]interconnect_M04_AXI_ARADDR;
  wire [1:0]interconnect_M04_AXI_ARBURST;
  wire [3:0]interconnect_M04_AXI_ARCACHE;
  wire [7:0]interconnect_M04_AXI_ARLEN;
  wire [0:0]interconnect_M04_AXI_ARLOCK;
  wire [2:0]interconnect_M04_AXI_ARPROT;
  wire interconnect_M04_AXI_ARREADY;
  wire [2:0]interconnect_M04_AXI_ARSIZE;
  wire interconnect_M04_AXI_ARVALID;
  wire [255:0]interconnect_M04_AXI_RDATA;
  wire interconnect_M04_AXI_RLAST;
  wire interconnect_M04_AXI_RREADY;
  wire [1:0]interconnect_M04_AXI_RRESP;
  wire interconnect_M04_AXI_RVALID;
  wire [6:0]interconnect_axilite_M00_AXI_ARADDR;
  wire interconnect_axilite_M00_AXI_ARREADY;
  wire interconnect_axilite_M00_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M00_AXI_AWADDR;
  wire interconnect_axilite_M00_AXI_AWREADY;
  wire interconnect_axilite_M00_AXI_AWVALID;
  wire interconnect_axilite_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_M00_AXI_BRESP;
  wire interconnect_axilite_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_M00_AXI_RDATA;
  wire interconnect_axilite_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_M00_AXI_RRESP;
  wire interconnect_axilite_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_M00_AXI_WDATA;
  wire interconnect_axilite_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_M00_AXI_WSTRB;
  wire interconnect_axilite_M00_AXI_WVALID;
  wire [15:0]interconnect_axilite_M01_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M01_AXI_ARPROT;
  wire interconnect_axilite_M01_AXI_ARREADY;
  wire interconnect_axilite_M01_AXI_ARVALID;
  wire [15:0]interconnect_axilite_M01_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M01_AXI_AWPROT;
  wire interconnect_axilite_M01_AXI_AWREADY;
  wire interconnect_axilite_M01_AXI_AWVALID;
  wire interconnect_axilite_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_BRESP;
  wire interconnect_axilite_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_RDATA;
  wire interconnect_axilite_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_RRESP;
  wire interconnect_axilite_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_WDATA;
  wire interconnect_axilite_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_WSTRB;
  wire interconnect_axilite_M01_AXI_WVALID;
  wire [31:0]interconnect_axilite_M02_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M02_AXI_ARPROT;
  wire interconnect_axilite_M02_AXI_ARREADY;
  wire interconnect_axilite_M02_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M02_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M02_AXI_AWPROT;
  wire interconnect_axilite_M02_AXI_AWREADY;
  wire interconnect_axilite_M02_AXI_AWVALID;
  wire interconnect_axilite_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_BRESP;
  wire interconnect_axilite_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_RDATA;
  wire interconnect_axilite_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_RRESP;
  wire interconnect_axilite_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_WDATA;
  wire interconnect_axilite_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_WSTRB;
  wire interconnect_axilite_M02_AXI_WVALID;
  wire [31:0]interconnect_axilite_M03_AXI_ARADDR;
  wire interconnect_axilite_M03_AXI_ARREADY;
  wire interconnect_axilite_M03_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M03_AXI_AWADDR;
  wire interconnect_axilite_M03_AXI_AWREADY;
  wire interconnect_axilite_M03_AXI_AWVALID;
  wire interconnect_axilite_M03_AXI_BREADY;
  wire [1:0]interconnect_axilite_M03_AXI_BRESP;
  wire interconnect_axilite_M03_AXI_BVALID;
  wire [31:0]interconnect_axilite_M03_AXI_RDATA;
  wire interconnect_axilite_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_M03_AXI_RRESP;
  wire interconnect_axilite_M03_AXI_RVALID;
  wire [31:0]interconnect_axilite_M03_AXI_WDATA;
  wire interconnect_axilite_M03_AXI_WREADY;
  wire interconnect_axilite_M03_AXI_WVALID;
  wire [31:0]interconnect_axilite_M04_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M04_AXI_ARPROT;
  wire interconnect_axilite_M04_AXI_ARREADY;
  wire interconnect_axilite_M04_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M04_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M04_AXI_AWPROT;
  wire interconnect_axilite_M04_AXI_AWREADY;
  wire interconnect_axilite_M04_AXI_AWVALID;
  wire interconnect_axilite_M04_AXI_BREADY;
  wire [1:0]interconnect_axilite_M04_AXI_BRESP;
  wire interconnect_axilite_M04_AXI_BVALID;
  wire [31:0]interconnect_axilite_M04_AXI_RDATA;
  wire interconnect_axilite_M04_AXI_RREADY;
  wire [1:0]interconnect_axilite_M04_AXI_RRESP;
  wire interconnect_axilite_M04_AXI_RVALID;
  wire [31:0]interconnect_axilite_M04_AXI_WDATA;
  wire interconnect_axilite_M04_AXI_WREADY;
  wire [3:0]interconnect_axilite_M04_AXI_WSTRB;
  wire interconnect_axilite_M04_AXI_WVALID;
  wire [31:0]interconnect_axilite_M05_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M05_AXI_ARPROT;
  wire interconnect_axilite_M05_AXI_ARREADY;
  wire interconnect_axilite_M05_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M05_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M05_AXI_AWPROT;
  wire interconnect_axilite_M05_AXI_AWREADY;
  wire interconnect_axilite_M05_AXI_AWVALID;
  wire interconnect_axilite_M05_AXI_BREADY;
  wire [1:0]interconnect_axilite_M05_AXI_BRESP;
  wire interconnect_axilite_M05_AXI_BVALID;
  wire [31:0]interconnect_axilite_M05_AXI_RDATA;
  wire interconnect_axilite_M05_AXI_RREADY;
  wire [1:0]interconnect_axilite_M05_AXI_RRESP;
  wire interconnect_axilite_M05_AXI_RVALID;
  wire [31:0]interconnect_axilite_M05_AXI_WDATA;
  wire interconnect_axilite_M05_AXI_WREADY;
  wire [3:0]interconnect_axilite_M05_AXI_WSTRB;
  wire interconnect_axilite_M05_AXI_WVALID;
  wire [16:0]interconnect_axilite_M06_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M06_AXI_ARPROT;
  wire interconnect_axilite_M06_AXI_ARREADY;
  wire interconnect_axilite_M06_AXI_ARVALID;
  wire [16:0]interconnect_axilite_M06_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M06_AXI_AWPROT;
  wire interconnect_axilite_M06_AXI_AWREADY;
  wire interconnect_axilite_M06_AXI_AWVALID;
  wire interconnect_axilite_M06_AXI_BREADY;
  wire [1:0]interconnect_axilite_M06_AXI_BRESP;
  wire interconnect_axilite_M06_AXI_BVALID;
  wire [31:0]interconnect_axilite_M06_AXI_RDATA;
  wire interconnect_axilite_M06_AXI_RREADY;
  wire [1:0]interconnect_axilite_M06_AXI_RRESP;
  wire interconnect_axilite_M06_AXI_RVALID;
  wire [31:0]interconnect_axilite_M06_AXI_WDATA;
  wire interconnect_axilite_M06_AXI_WREADY;
  wire [3:0]interconnect_axilite_M06_AXI_WSTRB;
  wire interconnect_axilite_M06_AXI_WVALID;
  wire io0_i_1;
  wire io1_i_1;
  wire io2_i_1;
  wire io3_i_1;
  wire logic_reset_op_Res_1;
  wire memory_Res;
  wire memory_c0_ddr4_ui_clk;
  wire memory_c0_ddr4_ui_clk1;
  wire memory_c0_ddr4_ui_clk2;
  wire memory_c0_ddr4_ui_clk3;
  wire memory_c0_ddr4_ui_clk_sync_rst;
  wire memory_c0_ddr4_ui_clk_sync_rst1;
  wire memory_c0_ddr4_ui_clk_sync_rst2;
  wire memory_c0_ddr4_ui_clk_sync_rst3;
  wire [0:0]pr_support_expanded_Dout1;
  wire [0:0]pr_support_expanded_Dout2;
  wire [31:0]pr_support_expanded_bscanid;
  wire [3:0]pr_support_expanded_dout;
  wire [3:0]pr_support_expanded_dout3;
  wire pr_support_expanded_io0_o;
  wire pr_support_expanded_io0_t;
  wire pr_support_expanded_io1_o;
  wire pr_support_expanded_io1_t;
  wire pr_support_expanded_io2_o;
  wire pr_support_expanded_io2_t;
  wire pr_support_expanded_io3_o;
  wire pr_support_expanded_io3_t;
  wire pr_support_expanded_sck_o;
  wire pr_support_expanded_ss_t;
  wire pr_support_expanded_tdo;
  wire reset_1;
  wire runtest_1;
  wire [0:0]s_axi_aresetn_1;
  wire sel_1;
  wire shift_1;
  wire slowest_sync_clk_1;
  wire slowest_sync_clk_2;
  wire slowest_sync_clk_3;
  wire tck_1;
  wire tdi_1;
  wire tms_1;
  wire [33:0]u_ocl_region_M00_AXI_ARADDR;
  wire [1:0]u_ocl_region_M00_AXI_ARBURST;
  wire [3:0]u_ocl_region_M00_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M00_AXI_ARID;
  wire [7:0]u_ocl_region_M00_AXI_ARLEN;
  wire [0:0]u_ocl_region_M00_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M00_AXI_ARPROT;
  wire [3:0]u_ocl_region_M00_AXI_ARQOS;
  wire u_ocl_region_M00_AXI_ARREADY;
  wire [2:0]u_ocl_region_M00_AXI_ARSIZE;
  wire u_ocl_region_M00_AXI_ARVALID;
  wire [33:0]u_ocl_region_M00_AXI_AWADDR;
  wire [1:0]u_ocl_region_M00_AXI_AWBURST;
  wire [3:0]u_ocl_region_M00_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M00_AXI_AWID;
  wire [7:0]u_ocl_region_M00_AXI_AWLEN;
  wire [0:0]u_ocl_region_M00_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M00_AXI_AWPROT;
  wire [3:0]u_ocl_region_M00_AXI_AWQOS;
  wire u_ocl_region_M00_AXI_AWREADY;
  wire [2:0]u_ocl_region_M00_AXI_AWSIZE;
  wire u_ocl_region_M00_AXI_AWVALID;
  wire [3:0]u_ocl_region_M00_AXI_BID;
  wire u_ocl_region_M00_AXI_BREADY;
  wire [1:0]u_ocl_region_M00_AXI_BRESP;
  wire u_ocl_region_M00_AXI_BVALID;
  wire [511:0]u_ocl_region_M00_AXI_RDATA;
  wire [3:0]u_ocl_region_M00_AXI_RID;
  wire u_ocl_region_M00_AXI_RLAST;
  wire u_ocl_region_M00_AXI_RREADY;
  wire [1:0]u_ocl_region_M00_AXI_RRESP;
  wire u_ocl_region_M00_AXI_RVALID;
  wire [511:0]u_ocl_region_M00_AXI_WDATA;
  wire u_ocl_region_M00_AXI_WLAST;
  wire u_ocl_region_M00_AXI_WREADY;
  wire [63:0]u_ocl_region_M00_AXI_WSTRB;
  wire u_ocl_region_M00_AXI_WVALID;
  wire [33:0]u_ocl_region_M01_AXI_ARADDR;
  wire [1:0]u_ocl_region_M01_AXI_ARBURST;
  wire [3:0]u_ocl_region_M01_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M01_AXI_ARID;
  wire [7:0]u_ocl_region_M01_AXI_ARLEN;
  wire [0:0]u_ocl_region_M01_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M01_AXI_ARPROT;
  wire [3:0]u_ocl_region_M01_AXI_ARQOS;
  wire u_ocl_region_M01_AXI_ARREADY;
  wire [2:0]u_ocl_region_M01_AXI_ARSIZE;
  wire u_ocl_region_M01_AXI_ARVALID;
  wire [33:0]u_ocl_region_M01_AXI_AWADDR;
  wire [1:0]u_ocl_region_M01_AXI_AWBURST;
  wire [3:0]u_ocl_region_M01_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M01_AXI_AWID;
  wire [7:0]u_ocl_region_M01_AXI_AWLEN;
  wire [0:0]u_ocl_region_M01_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M01_AXI_AWPROT;
  wire [3:0]u_ocl_region_M01_AXI_AWQOS;
  wire u_ocl_region_M01_AXI_AWREADY;
  wire [2:0]u_ocl_region_M01_AXI_AWSIZE;
  wire u_ocl_region_M01_AXI_AWVALID;
  wire [3:0]u_ocl_region_M01_AXI_BID;
  wire u_ocl_region_M01_AXI_BREADY;
  wire [1:0]u_ocl_region_M01_AXI_BRESP;
  wire u_ocl_region_M01_AXI_BVALID;
  wire [511:0]u_ocl_region_M01_AXI_RDATA;
  wire [3:0]u_ocl_region_M01_AXI_RID;
  wire u_ocl_region_M01_AXI_RLAST;
  wire u_ocl_region_M01_AXI_RREADY;
  wire [1:0]u_ocl_region_M01_AXI_RRESP;
  wire u_ocl_region_M01_AXI_RVALID;
  wire [511:0]u_ocl_region_M01_AXI_WDATA;
  wire u_ocl_region_M01_AXI_WLAST;
  wire u_ocl_region_M01_AXI_WREADY;
  wire [63:0]u_ocl_region_M01_AXI_WSTRB;
  wire u_ocl_region_M01_AXI_WVALID;
  wire [33:0]u_ocl_region_M02_AXI_ARADDR;
  wire [1:0]u_ocl_region_M02_AXI_ARBURST;
  wire [3:0]u_ocl_region_M02_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M02_AXI_ARID;
  wire [7:0]u_ocl_region_M02_AXI_ARLEN;
  wire [0:0]u_ocl_region_M02_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M02_AXI_ARPROT;
  wire [3:0]u_ocl_region_M02_AXI_ARQOS;
  wire u_ocl_region_M02_AXI_ARREADY;
  wire [2:0]u_ocl_region_M02_AXI_ARSIZE;
  wire u_ocl_region_M02_AXI_ARVALID;
  wire [33:0]u_ocl_region_M02_AXI_AWADDR;
  wire [1:0]u_ocl_region_M02_AXI_AWBURST;
  wire [3:0]u_ocl_region_M02_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M02_AXI_AWID;
  wire [7:0]u_ocl_region_M02_AXI_AWLEN;
  wire [0:0]u_ocl_region_M02_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M02_AXI_AWPROT;
  wire [3:0]u_ocl_region_M02_AXI_AWQOS;
  wire u_ocl_region_M02_AXI_AWREADY;
  wire [2:0]u_ocl_region_M02_AXI_AWSIZE;
  wire u_ocl_region_M02_AXI_AWVALID;
  wire [3:0]u_ocl_region_M02_AXI_BID;
  wire u_ocl_region_M02_AXI_BREADY;
  wire [1:0]u_ocl_region_M02_AXI_BRESP;
  wire u_ocl_region_M02_AXI_BVALID;
  wire [511:0]u_ocl_region_M02_AXI_RDATA;
  wire [3:0]u_ocl_region_M02_AXI_RID;
  wire u_ocl_region_M02_AXI_RLAST;
  wire u_ocl_region_M02_AXI_RREADY;
  wire [1:0]u_ocl_region_M02_AXI_RRESP;
  wire u_ocl_region_M02_AXI_RVALID;
  wire [511:0]u_ocl_region_M02_AXI_WDATA;
  wire u_ocl_region_M02_AXI_WLAST;
  wire u_ocl_region_M02_AXI_WREADY;
  wire [63:0]u_ocl_region_M02_AXI_WSTRB;
  wire u_ocl_region_M02_AXI_WVALID;
  wire [33:0]u_ocl_region_M03_AXI_ARADDR;
  wire [1:0]u_ocl_region_M03_AXI_ARBURST;
  wire [3:0]u_ocl_region_M03_AXI_ARCACHE;
  wire [3:0]u_ocl_region_M03_AXI_ARID;
  wire [7:0]u_ocl_region_M03_AXI_ARLEN;
  wire [0:0]u_ocl_region_M03_AXI_ARLOCK;
  wire [2:0]u_ocl_region_M03_AXI_ARPROT;
  wire [3:0]u_ocl_region_M03_AXI_ARQOS;
  wire u_ocl_region_M03_AXI_ARREADY;
  wire [2:0]u_ocl_region_M03_AXI_ARSIZE;
  wire u_ocl_region_M03_AXI_ARVALID;
  wire [33:0]u_ocl_region_M03_AXI_AWADDR;
  wire [1:0]u_ocl_region_M03_AXI_AWBURST;
  wire [3:0]u_ocl_region_M03_AXI_AWCACHE;
  wire [3:0]u_ocl_region_M03_AXI_AWID;
  wire [7:0]u_ocl_region_M03_AXI_AWLEN;
  wire [0:0]u_ocl_region_M03_AXI_AWLOCK;
  wire [2:0]u_ocl_region_M03_AXI_AWPROT;
  wire [3:0]u_ocl_region_M03_AXI_AWQOS;
  wire u_ocl_region_M03_AXI_AWREADY;
  wire [2:0]u_ocl_region_M03_AXI_AWSIZE;
  wire u_ocl_region_M03_AXI_AWVALID;
  wire [3:0]u_ocl_region_M03_AXI_BID;
  wire u_ocl_region_M03_AXI_BREADY;
  wire [1:0]u_ocl_region_M03_AXI_BRESP;
  wire u_ocl_region_M03_AXI_BVALID;
  wire [511:0]u_ocl_region_M03_AXI_RDATA;
  wire [3:0]u_ocl_region_M03_AXI_RID;
  wire u_ocl_region_M03_AXI_RLAST;
  wire u_ocl_region_M03_AXI_RREADY;
  wire [1:0]u_ocl_region_M03_AXI_RRESP;
  wire u_ocl_region_M03_AXI_RVALID;
  wire [511:0]u_ocl_region_M03_AXI_WDATA;
  wire u_ocl_region_M03_AXI_WLAST;
  wire u_ocl_region_M03_AXI_WREADY;
  wire [63:0]u_ocl_region_M03_AXI_WSTRB;
  wire u_ocl_region_M03_AXI_WVALID;
  wire update_1;

  assign Conn1_CLK_N = c1_sys_clk_n;
  assign Conn1_CLK_P = c1_sys_clk_p;
  assign Conn3_CLK_N = c0_sys_clk_n;
  assign Conn3_CLK_P = c0_sys_clk_p;
  assign Conn5_CLK_N = c2_sys_clk_n;
  assign Conn5_CLK_P = c2_sys_clk_p;
  assign Conn7_CLK_N = c3_sys_clk_n;
  assign Conn7_CLK_P = c3_sys_clk_p;
  assign M01_ACLK_1 = clkwiz_kernel_clk_out1;
  assign Op1_1 = iob_static_perst_n_out;
  assign S00_ACLK_1 = dma_pcie_axi_aclk;
  assign S00_AXI1_1_ARADDR = regslice_data_M_AXI_araddr[37:0];
  assign S00_AXI1_1_ARBURST = regslice_data_M_AXI_arburst[1:0];
  assign S00_AXI1_1_ARCACHE = regslice_data_M_AXI_arcache[3:0];
  assign S00_AXI1_1_ARID = regslice_data_M_AXI_arid[3:0];
  assign S00_AXI1_1_ARLEN = regslice_data_M_AXI_arlen[7:0];
  assign S00_AXI1_1_ARLOCK = regslice_data_M_AXI_arlock[0];
  assign S00_AXI1_1_ARPROT = regslice_data_M_AXI_arprot[2:0];
  assign S00_AXI1_1_ARQOS = regslice_data_M_AXI_arqos[3:0];
  assign S00_AXI1_1_ARSIZE = regslice_data_M_AXI_arsize[2:0];
  assign S00_AXI1_1_ARVALID = regslice_data_M_AXI_arvalid;
  assign S00_AXI1_1_AWADDR = regslice_data_M_AXI_awaddr[37:0];
  assign S00_AXI1_1_AWBURST = regslice_data_M_AXI_awburst[1:0];
  assign S00_AXI1_1_AWCACHE = regslice_data_M_AXI_awcache[3:0];
  assign S00_AXI1_1_AWID = regslice_data_M_AXI_awid[3:0];
  assign S00_AXI1_1_AWLEN = regslice_data_M_AXI_awlen[7:0];
  assign S00_AXI1_1_AWLOCK = regslice_data_M_AXI_awlock[0];
  assign S00_AXI1_1_AWPROT = regslice_data_M_AXI_awprot[2:0];
  assign S00_AXI1_1_AWQOS = regslice_data_M_AXI_awqos[3:0];
  assign S00_AXI1_1_AWSIZE = regslice_data_M_AXI_awsize[2:0];
  assign S00_AXI1_1_AWVALID = regslice_data_M_AXI_awvalid;
  assign S00_AXI1_1_BREADY = regslice_data_M_AXI_bready;
  assign S00_AXI1_1_RREADY = regslice_data_M_AXI_rready;
  assign S00_AXI1_1_WDATA = regslice_data_M_AXI_wdata[255:0];
  assign S00_AXI1_1_WLAST = regslice_data_M_AXI_wlast;
  assign S00_AXI1_1_WSTRB = regslice_data_M_AXI_wstrb[31:0];
  assign S00_AXI1_1_WVALID = regslice_data_M_AXI_wvalid;
  assign S00_AXI_1_ARADDR = regslice_control_M_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = regslice_control_M_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = regslice_control_M_AXI_arvalid;
  assign S00_AXI_1_AWADDR = regslice_control_M_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = regslice_control_M_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = regslice_control_M_AXI_awvalid;
  assign S00_AXI_1_BREADY = regslice_control_M_AXI_bready;
  assign S00_AXI_1_RREADY = regslice_control_M_AXI_rready;
  assign S00_AXI_1_WDATA = regslice_control_M_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = regslice_control_M_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = regslice_control_M_AXI_wvalid;
  assign bscanid[31:0] = pr_support_expanded_bscanid;
  assign capture_1 = capture;
  assign concat_flash_dq_o_dout[3:0] = pr_support_expanded_dout;
  assign concat_flash_tri_dout[3:0] = pr_support_expanded_dout3;
  assign dcm_locked_1 = clkwiz_kernel_locked;
  assign dcm_locked_2 = dma_pcie_user_lnk_up;
  assign dcm_locked_3 = clkwiz_kernel2_locked;
  assign ddrmem_0_C0_DDR4_act_n = Conn2_ACT_N;
  assign ddrmem_0_C0_DDR4_adr[16:0] = Conn2_ADR;
  assign ddrmem_0_C0_DDR4_ba[1:0] = Conn2_BA;
  assign ddrmem_0_C0_DDR4_bg[0] = Conn2_BG;
  assign ddrmem_0_C0_DDR4_ck_c[0] = Conn2_CK_C;
  assign ddrmem_0_C0_DDR4_ck_t[0] = Conn2_CK_T;
  assign ddrmem_0_C0_DDR4_cke[0] = Conn2_CKE;
  assign ddrmem_0_C0_DDR4_cs_n[0] = Conn2_CS_N;
  assign ddrmem_0_C0_DDR4_odt[0] = Conn2_ODT;
  assign ddrmem_0_C0_DDR4_reset_n = Conn2_RESET_N;
  assign ddrmem_1_C0_DDR4_act_n = Conn4_ACT_N;
  assign ddrmem_1_C0_DDR4_adr[16:0] = Conn4_ADR;
  assign ddrmem_1_C0_DDR4_ba[1:0] = Conn4_BA;
  assign ddrmem_1_C0_DDR4_bg[0] = Conn4_BG;
  assign ddrmem_1_C0_DDR4_ck_c[0] = Conn4_CK_C;
  assign ddrmem_1_C0_DDR4_ck_t[0] = Conn4_CK_T;
  assign ddrmem_1_C0_DDR4_cke[0] = Conn4_CKE;
  assign ddrmem_1_C0_DDR4_cs_n[0] = Conn4_CS_N;
  assign ddrmem_1_C0_DDR4_odt[0] = Conn4_ODT;
  assign ddrmem_1_C0_DDR4_reset_n = Conn4_RESET_N;
  assign ddrmem_2_C0_DDR4_act_n = Conn6_ACT_N;
  assign ddrmem_2_C0_DDR4_adr[16:0] = Conn6_ADR;
  assign ddrmem_2_C0_DDR4_ba[1:0] = Conn6_BA;
  assign ddrmem_2_C0_DDR4_bg[0] = Conn6_BG;
  assign ddrmem_2_C0_DDR4_ck_c[0] = Conn6_CK_C;
  assign ddrmem_2_C0_DDR4_ck_t[0] = Conn6_CK_T;
  assign ddrmem_2_C0_DDR4_cke[0] = Conn6_CKE;
  assign ddrmem_2_C0_DDR4_cs_n[0] = Conn6_CS_N;
  assign ddrmem_2_C0_DDR4_odt[0] = Conn6_ODT;
  assign ddrmem_2_C0_DDR4_reset_n = Conn6_RESET_N;
  assign ddrmem_3_C0_DDR4_act_n = Conn8_ACT_N;
  assign ddrmem_3_C0_DDR4_adr[16:0] = Conn8_ADR;
  assign ddrmem_3_C0_DDR4_ba[1:0] = Conn8_BA;
  assign ddrmem_3_C0_DDR4_bg[0] = Conn8_BG;
  assign ddrmem_3_C0_DDR4_ck_c[0] = Conn8_CK_C;
  assign ddrmem_3_C0_DDR4_ck_t[0] = Conn8_CK_T;
  assign ddrmem_3_C0_DDR4_cke[0] = Conn8_CKE;
  assign ddrmem_3_C0_DDR4_cs_n[0] = Conn8_CS_N;
  assign ddrmem_3_C0_DDR4_odt[0] = Conn8_ODT;
  assign ddrmem_3_C0_DDR4_reset_n = Conn8_RESET_N;
  assign drck_1 = drck;
  assign ext_reset_in_1 = slice_reset_kernel_pr_Dout[0];
  assign ext_spi_clk_1 = iob_static_emc_clk_out;
  assign flash_programmer_io0_o = pr_support_expanded_io0_o;
  assign flash_programmer_io0_t = pr_support_expanded_io0_t;
  assign flash_programmer_io1_o = pr_support_expanded_io1_o;
  assign flash_programmer_io1_t = pr_support_expanded_io1_t;
  assign flash_programmer_io2_o = pr_support_expanded_io2_o;
  assign flash_programmer_io2_t = pr_support_expanded_io2_t;
  assign flash_programmer_io3_o = pr_support_expanded_io3_o;
  assign flash_programmer_io3_t = pr_support_expanded_io3_t;
  assign flash_programmer_sck_o = pr_support_expanded_sck_o;
  assign flash_programmer_ss_t = pr_support_expanded_ss_t;
  assign io0_i_1 = iob_static_io0_i;
  assign io1_i_1 = iob_static_io1_i;
  assign io2_i_1 = iob_static_io2_i;
  assign io3_i_1 = iob_static_io3_i;
  assign logic_ddrcalib_op_Res = memory_Res;
  assign logic_reset_op_Res_1 = clkwiz_sysclks_locked;
  assign regslice_control_M_AXI_arready = S00_AXI_1_ARREADY;
  assign regslice_control_M_AXI_awready = S00_AXI_1_AWREADY;
  assign regslice_control_M_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign regslice_control_M_AXI_bvalid = S00_AXI_1_BVALID;
  assign regslice_control_M_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign regslice_control_M_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign regslice_control_M_AXI_rvalid = S00_AXI_1_RVALID;
  assign regslice_control_M_AXI_wready = S00_AXI_1_WREADY;
  assign regslice_data_M_AXI_arready = S00_AXI1_1_ARREADY;
  assign regslice_data_M_AXI_awready = S00_AXI1_1_AWREADY;
  assign regslice_data_M_AXI_bid[3:0] = S00_AXI1_1_BID;
  assign regslice_data_M_AXI_bresp[1:0] = S00_AXI1_1_BRESP;
  assign regslice_data_M_AXI_bvalid = S00_AXI1_1_BVALID;
  assign regslice_data_M_AXI_rdata[255:0] = S00_AXI1_1_RDATA;
  assign regslice_data_M_AXI_rid[3:0] = S00_AXI1_1_RID;
  assign regslice_data_M_AXI_rlast = S00_AXI1_1_RLAST;
  assign regslice_data_M_AXI_rresp[1:0] = S00_AXI1_1_RRESP;
  assign regslice_data_M_AXI_rvalid = S00_AXI1_1_RVALID;
  assign regslice_data_M_AXI_wready = S00_AXI1_1_WREADY;
  assign reset_1 = reset;
  assign runtest_1 = runtest;
  assign sel_1 = sel;
  assign shift_1 = shift;
  assign slice_ss_0_Dout[0] = pr_support_expanded_Dout1;
  assign slice_ss_1_Dout[0] = pr_support_expanded_Dout2;
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  assign slowest_sync_clk_2 = clkwiz_sysclks_clk_out1;
  assign slowest_sync_clk_3 = clkwiz_kernel2_clk_out1;
  assign tck_1 = tck;
  assign tdi_1 = tdi;
  assign tdo = pr_support_expanded_tdo;
  assign tms_1 = tms;
  assign update_1 = update;
  apm_sys_imp_1WRTQ3I apm_sys
       (.clkwiz_kernel_clk_out1(M01_ACLK_1),
        .clkwiz_sysclks_clk_out1(slowest_sync_clk_2),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .dma_pcie_axi_aclk(S00_ACLK_1),
        .interconnect_axilite_M01_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .interconnect_axilite_M01_AXI_arprot(interconnect_axilite_M01_AXI_ARPROT),
        .interconnect_axilite_M01_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .interconnect_axilite_M01_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .interconnect_axilite_M01_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .interconnect_axilite_M01_AXI_awprot(interconnect_axilite_M01_AXI_AWPROT),
        .interconnect_axilite_M01_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .interconnect_axilite_M01_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .interconnect_axilite_M01_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .interconnect_axilite_M01_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .interconnect_axilite_M01_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .interconnect_axilite_M01_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .interconnect_axilite_M01_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .interconnect_axilite_M01_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .interconnect_axilite_M01_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .interconnect_axilite_M01_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .interconnect_axilite_M01_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .interconnect_axilite_M01_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .interconnect_axilite_M01_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .interconnect_axilite_M02_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .interconnect_axilite_M02_AXI_arprot(interconnect_axilite_M02_AXI_ARPROT),
        .interconnect_axilite_M02_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .interconnect_axilite_M02_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .interconnect_axilite_M02_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .interconnect_axilite_M02_AXI_awprot(interconnect_axilite_M02_AXI_AWPROT),
        .interconnect_axilite_M02_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .interconnect_axilite_M02_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .interconnect_axilite_M02_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .interconnect_axilite_M02_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .interconnect_axilite_M02_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .interconnect_axilite_M02_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .interconnect_axilite_M02_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .interconnect_axilite_M02_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .interconnect_axilite_M02_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .interconnect_axilite_M02_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .interconnect_axilite_M02_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .interconnect_axilite_M02_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .interconnect_axilite_M02_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .interconnect_aximm_host_M04_AXI_araddr(interconnect_M04_AXI_ARADDR),
        .interconnect_aximm_host_M04_AXI_arburst(interconnect_M04_AXI_ARBURST),
        .interconnect_aximm_host_M04_AXI_arcache(interconnect_M04_AXI_ARCACHE),
        .interconnect_aximm_host_M04_AXI_arlen(interconnect_M04_AXI_ARLEN),
        .interconnect_aximm_host_M04_AXI_arlock(interconnect_M04_AXI_ARLOCK),
        .interconnect_aximm_host_M04_AXI_arprot(interconnect_M04_AXI_ARPROT),
        .interconnect_aximm_host_M04_AXI_arready(interconnect_M04_AXI_ARREADY),
        .interconnect_aximm_host_M04_AXI_arsize(interconnect_M04_AXI_ARSIZE),
        .interconnect_aximm_host_M04_AXI_arvalid(interconnect_M04_AXI_ARVALID),
        .interconnect_aximm_host_M04_AXI_rdata(interconnect_M04_AXI_RDATA),
        .interconnect_aximm_host_M04_AXI_rlast(interconnect_M04_AXI_RLAST),
        .interconnect_aximm_host_M04_AXI_rready(interconnect_M04_AXI_RREADY),
        .interconnect_aximm_host_M04_AXI_rresp(interconnect_M04_AXI_RRESP),
        .interconnect_aximm_host_M04_AXI_rvalid(interconnect_M04_AXI_RVALID),
        .psreset_gate_pr_apmclk_interconnect_aresetn(s_axi_aresetn_1),
        .psreset_gate_pr_control_interconnect_aresetn(expanded_resets_interconnect_aresetn1),
        .psreset_gate_pr_data_interconnect_aresetn(expanded_resets_interconnect_aresetn),
        .psreset_gate_pr_kernel_interconnect_axiresetn(M01_ARESETN_1),
        .regslice_data_M_AXI_araddr(S00_AXI1_1_ARADDR),
        .regslice_data_M_AXI_arburst(S00_AXI1_1_ARBURST),
        .regslice_data_M_AXI_arcache(S00_AXI1_1_ARCACHE),
        .regslice_data_M_AXI_arid(S00_AXI1_1_ARID),
        .regslice_data_M_AXI_arlen(S00_AXI1_1_ARLEN),
        .regslice_data_M_AXI_arlock(S00_AXI1_1_ARLOCK),
        .regslice_data_M_AXI_arprot(S00_AXI1_1_ARPROT),
        .regslice_data_M_AXI_arqos(S00_AXI1_1_ARQOS),
        .regslice_data_M_AXI_arready(S00_AXI1_1_ARREADY),
        .regslice_data_M_AXI_arsize(S00_AXI1_1_ARSIZE),
        .regslice_data_M_AXI_arvalid(S00_AXI1_1_ARVALID),
        .regslice_data_M_AXI_awaddr(S00_AXI1_1_AWADDR),
        .regslice_data_M_AXI_awburst(S00_AXI1_1_AWBURST),
        .regslice_data_M_AXI_awcache(S00_AXI1_1_AWCACHE),
        .regslice_data_M_AXI_awid(S00_AXI1_1_AWID),
        .regslice_data_M_AXI_awlen(S00_AXI1_1_AWLEN),
        .regslice_data_M_AXI_awlock(S00_AXI1_1_AWLOCK),
        .regslice_data_M_AXI_awprot(S00_AXI1_1_AWPROT),
        .regslice_data_M_AXI_awqos(S00_AXI1_1_AWQOS),
        .regslice_data_M_AXI_awready(S00_AXI1_1_AWREADY),
        .regslice_data_M_AXI_awsize(S00_AXI1_1_AWSIZE),
        .regslice_data_M_AXI_awvalid(S00_AXI1_1_AWVALID),
        .regslice_data_M_AXI_bid(S00_AXI1_1_BID),
        .regslice_data_M_AXI_bready(S00_AXI1_1_BREADY),
        .regslice_data_M_AXI_bresp(S00_AXI1_1_BRESP),
        .regslice_data_M_AXI_bvalid(S00_AXI1_1_BVALID),
        .regslice_data_M_AXI_rdata(S00_AXI1_1_RDATA),
        .regslice_data_M_AXI_rid(S00_AXI1_1_RID),
        .regslice_data_M_AXI_rlast(S00_AXI1_1_RLAST),
        .regslice_data_M_AXI_rready(S00_AXI1_1_RREADY),
        .regslice_data_M_AXI_rresp(S00_AXI1_1_RRESP),
        .regslice_data_M_AXI_rvalid(S00_AXI1_1_RVALID),
        .regslice_data_M_AXI_wdata(S00_AXI1_1_WDATA),
        .regslice_data_M_AXI_wlast(S00_AXI1_1_WLAST),
        .regslice_data_M_AXI_wready(S00_AXI1_1_WREADY),
        .regslice_data_M_AXI_wstrb(S00_AXI1_1_WSTRB),
        .regslice_data_M_AXI_wvalid(S00_AXI1_1_WVALID),
        .u_ocl_region_M00_AXI_araddr(u_ocl_region_M00_AXI_ARADDR),
        .u_ocl_region_M00_AXI_arburst(u_ocl_region_M00_AXI_ARBURST),
        .u_ocl_region_M00_AXI_arcache(u_ocl_region_M00_AXI_ARCACHE),
        .u_ocl_region_M00_AXI_arid(u_ocl_region_M00_AXI_ARID),
        .u_ocl_region_M00_AXI_arlen(u_ocl_region_M00_AXI_ARLEN),
        .u_ocl_region_M00_AXI_arlock(u_ocl_region_M00_AXI_ARLOCK),
        .u_ocl_region_M00_AXI_arprot(u_ocl_region_M00_AXI_ARPROT),
        .u_ocl_region_M00_AXI_arqos(u_ocl_region_M00_AXI_ARQOS),
        .u_ocl_region_M00_AXI_arready(u_ocl_region_M00_AXI_ARREADY),
        .u_ocl_region_M00_AXI_arsize(u_ocl_region_M00_AXI_ARSIZE),
        .u_ocl_region_M00_AXI_arvalid(u_ocl_region_M00_AXI_ARVALID),
        .u_ocl_region_M00_AXI_awaddr(u_ocl_region_M00_AXI_AWADDR),
        .u_ocl_region_M00_AXI_awburst(u_ocl_region_M00_AXI_AWBURST),
        .u_ocl_region_M00_AXI_awcache(u_ocl_region_M00_AXI_AWCACHE),
        .u_ocl_region_M00_AXI_awid(u_ocl_region_M00_AXI_AWID),
        .u_ocl_region_M00_AXI_awlen(u_ocl_region_M00_AXI_AWLEN),
        .u_ocl_region_M00_AXI_awlock(u_ocl_region_M00_AXI_AWLOCK),
        .u_ocl_region_M00_AXI_awprot(u_ocl_region_M00_AXI_AWPROT),
        .u_ocl_region_M00_AXI_awqos(u_ocl_region_M00_AXI_AWQOS),
        .u_ocl_region_M00_AXI_awready(u_ocl_region_M00_AXI_AWREADY),
        .u_ocl_region_M00_AXI_awsize(u_ocl_region_M00_AXI_AWSIZE),
        .u_ocl_region_M00_AXI_awvalid(u_ocl_region_M00_AXI_AWVALID),
        .u_ocl_region_M00_AXI_bid(u_ocl_region_M00_AXI_BID),
        .u_ocl_region_M00_AXI_bready(u_ocl_region_M00_AXI_BREADY),
        .u_ocl_region_M00_AXI_bresp(u_ocl_region_M00_AXI_BRESP),
        .u_ocl_region_M00_AXI_bvalid(u_ocl_region_M00_AXI_BVALID),
        .u_ocl_region_M00_AXI_rdata(u_ocl_region_M00_AXI_RDATA),
        .u_ocl_region_M00_AXI_rid(u_ocl_region_M00_AXI_RID),
        .u_ocl_region_M00_AXI_rlast(u_ocl_region_M00_AXI_RLAST),
        .u_ocl_region_M00_AXI_rready(u_ocl_region_M00_AXI_RREADY),
        .u_ocl_region_M00_AXI_rresp(u_ocl_region_M00_AXI_RRESP),
        .u_ocl_region_M00_AXI_rvalid(u_ocl_region_M00_AXI_RVALID),
        .u_ocl_region_M00_AXI_wdata(u_ocl_region_M00_AXI_WDATA),
        .u_ocl_region_M00_AXI_wlast(u_ocl_region_M00_AXI_WLAST),
        .u_ocl_region_M00_AXI_wready(u_ocl_region_M00_AXI_WREADY),
        .u_ocl_region_M00_AXI_wstrb(u_ocl_region_M00_AXI_WSTRB),
        .u_ocl_region_M00_AXI_wvalid(u_ocl_region_M00_AXI_WVALID),
        .u_ocl_region_M01_AXI_araddr(u_ocl_region_M01_AXI_ARADDR),
        .u_ocl_region_M01_AXI_arburst(u_ocl_region_M01_AXI_ARBURST),
        .u_ocl_region_M01_AXI_arcache(u_ocl_region_M01_AXI_ARCACHE),
        .u_ocl_region_M01_AXI_arid(u_ocl_region_M01_AXI_ARID),
        .u_ocl_region_M01_AXI_arlen(u_ocl_region_M01_AXI_ARLEN),
        .u_ocl_region_M01_AXI_arlock(u_ocl_region_M01_AXI_ARLOCK),
        .u_ocl_region_M01_AXI_arprot(u_ocl_region_M01_AXI_ARPROT),
        .u_ocl_region_M01_AXI_arqos(u_ocl_region_M01_AXI_ARQOS),
        .u_ocl_region_M01_AXI_arready(u_ocl_region_M01_AXI_ARREADY),
        .u_ocl_region_M01_AXI_arsize(u_ocl_region_M01_AXI_ARSIZE),
        .u_ocl_region_M01_AXI_arvalid(u_ocl_region_M01_AXI_ARVALID),
        .u_ocl_region_M01_AXI_awaddr(u_ocl_region_M01_AXI_AWADDR),
        .u_ocl_region_M01_AXI_awburst(u_ocl_region_M01_AXI_AWBURST),
        .u_ocl_region_M01_AXI_awcache(u_ocl_region_M01_AXI_AWCACHE),
        .u_ocl_region_M01_AXI_awid(u_ocl_region_M01_AXI_AWID),
        .u_ocl_region_M01_AXI_awlen(u_ocl_region_M01_AXI_AWLEN),
        .u_ocl_region_M01_AXI_awlock(u_ocl_region_M01_AXI_AWLOCK),
        .u_ocl_region_M01_AXI_awprot(u_ocl_region_M01_AXI_AWPROT),
        .u_ocl_region_M01_AXI_awqos(u_ocl_region_M01_AXI_AWQOS),
        .u_ocl_region_M01_AXI_awready(u_ocl_region_M01_AXI_AWREADY),
        .u_ocl_region_M01_AXI_awsize(u_ocl_region_M01_AXI_AWSIZE),
        .u_ocl_region_M01_AXI_awvalid(u_ocl_region_M01_AXI_AWVALID),
        .u_ocl_region_M01_AXI_bid(u_ocl_region_M01_AXI_BID),
        .u_ocl_region_M01_AXI_bready(u_ocl_region_M01_AXI_BREADY),
        .u_ocl_region_M01_AXI_bresp(u_ocl_region_M01_AXI_BRESP),
        .u_ocl_region_M01_AXI_bvalid(u_ocl_region_M01_AXI_BVALID),
        .u_ocl_region_M01_AXI_rdata(u_ocl_region_M01_AXI_RDATA),
        .u_ocl_region_M01_AXI_rid(u_ocl_region_M01_AXI_RID),
        .u_ocl_region_M01_AXI_rlast(u_ocl_region_M01_AXI_RLAST),
        .u_ocl_region_M01_AXI_rready(u_ocl_region_M01_AXI_RREADY),
        .u_ocl_region_M01_AXI_rresp(u_ocl_region_M01_AXI_RRESP),
        .u_ocl_region_M01_AXI_rvalid(u_ocl_region_M01_AXI_RVALID),
        .u_ocl_region_M01_AXI_wdata(u_ocl_region_M01_AXI_WDATA),
        .u_ocl_region_M01_AXI_wlast(u_ocl_region_M01_AXI_WLAST),
        .u_ocl_region_M01_AXI_wready(u_ocl_region_M01_AXI_WREADY),
        .u_ocl_region_M01_AXI_wstrb(u_ocl_region_M01_AXI_WSTRB),
        .u_ocl_region_M01_AXI_wvalid(u_ocl_region_M01_AXI_WVALID),
        .u_ocl_region_M02_AXI_araddr(u_ocl_region_M02_AXI_ARADDR),
        .u_ocl_region_M02_AXI_arburst(u_ocl_region_M02_AXI_ARBURST),
        .u_ocl_region_M02_AXI_arcache(u_ocl_region_M02_AXI_ARCACHE),
        .u_ocl_region_M02_AXI_arid(u_ocl_region_M02_AXI_ARID),
        .u_ocl_region_M02_AXI_arlen(u_ocl_region_M02_AXI_ARLEN),
        .u_ocl_region_M02_AXI_arlock(u_ocl_region_M02_AXI_ARLOCK),
        .u_ocl_region_M02_AXI_arprot(u_ocl_region_M02_AXI_ARPROT),
        .u_ocl_region_M02_AXI_arqos(u_ocl_region_M02_AXI_ARQOS),
        .u_ocl_region_M02_AXI_arready(u_ocl_region_M02_AXI_ARREADY),
        .u_ocl_region_M02_AXI_arsize(u_ocl_region_M02_AXI_ARSIZE),
        .u_ocl_region_M02_AXI_arvalid(u_ocl_region_M02_AXI_ARVALID),
        .u_ocl_region_M02_AXI_awaddr(u_ocl_region_M02_AXI_AWADDR),
        .u_ocl_region_M02_AXI_awburst(u_ocl_region_M02_AXI_AWBURST),
        .u_ocl_region_M02_AXI_awcache(u_ocl_region_M02_AXI_AWCACHE),
        .u_ocl_region_M02_AXI_awid(u_ocl_region_M02_AXI_AWID),
        .u_ocl_region_M02_AXI_awlen(u_ocl_region_M02_AXI_AWLEN),
        .u_ocl_region_M02_AXI_awlock(u_ocl_region_M02_AXI_AWLOCK),
        .u_ocl_region_M02_AXI_awprot(u_ocl_region_M02_AXI_AWPROT),
        .u_ocl_region_M02_AXI_awqos(u_ocl_region_M02_AXI_AWQOS),
        .u_ocl_region_M02_AXI_awready(u_ocl_region_M02_AXI_AWREADY),
        .u_ocl_region_M02_AXI_awsize(u_ocl_region_M02_AXI_AWSIZE),
        .u_ocl_region_M02_AXI_awvalid(u_ocl_region_M02_AXI_AWVALID),
        .u_ocl_region_M02_AXI_bid(u_ocl_region_M02_AXI_BID),
        .u_ocl_region_M02_AXI_bready(u_ocl_region_M02_AXI_BREADY),
        .u_ocl_region_M02_AXI_bresp(u_ocl_region_M02_AXI_BRESP),
        .u_ocl_region_M02_AXI_bvalid(u_ocl_region_M02_AXI_BVALID),
        .u_ocl_region_M02_AXI_rdata(u_ocl_region_M02_AXI_RDATA),
        .u_ocl_region_M02_AXI_rid(u_ocl_region_M02_AXI_RID),
        .u_ocl_region_M02_AXI_rlast(u_ocl_region_M02_AXI_RLAST),
        .u_ocl_region_M02_AXI_rready(u_ocl_region_M02_AXI_RREADY),
        .u_ocl_region_M02_AXI_rresp(u_ocl_region_M02_AXI_RRESP),
        .u_ocl_region_M02_AXI_rvalid(u_ocl_region_M02_AXI_RVALID),
        .u_ocl_region_M02_AXI_wdata(u_ocl_region_M02_AXI_WDATA),
        .u_ocl_region_M02_AXI_wlast(u_ocl_region_M02_AXI_WLAST),
        .u_ocl_region_M02_AXI_wready(u_ocl_region_M02_AXI_WREADY),
        .u_ocl_region_M02_AXI_wstrb(u_ocl_region_M02_AXI_WSTRB),
        .u_ocl_region_M02_AXI_wvalid(u_ocl_region_M02_AXI_WVALID),
        .u_ocl_region_M03_AXI_araddr(u_ocl_region_M03_AXI_ARADDR),
        .u_ocl_region_M03_AXI_arburst(u_ocl_region_M03_AXI_ARBURST),
        .u_ocl_region_M03_AXI_arcache(u_ocl_region_M03_AXI_ARCACHE),
        .u_ocl_region_M03_AXI_arid(u_ocl_region_M03_AXI_ARID),
        .u_ocl_region_M03_AXI_arlen(u_ocl_region_M03_AXI_ARLEN),
        .u_ocl_region_M03_AXI_arlock(u_ocl_region_M03_AXI_ARLOCK),
        .u_ocl_region_M03_AXI_arprot(u_ocl_region_M03_AXI_ARPROT),
        .u_ocl_region_M03_AXI_arqos(u_ocl_region_M03_AXI_ARQOS),
        .u_ocl_region_M03_AXI_arready(u_ocl_region_M03_AXI_ARREADY),
        .u_ocl_region_M03_AXI_arsize(u_ocl_region_M03_AXI_ARSIZE),
        .u_ocl_region_M03_AXI_arvalid(u_ocl_region_M03_AXI_ARVALID),
        .u_ocl_region_M03_AXI_awaddr(u_ocl_region_M03_AXI_AWADDR),
        .u_ocl_region_M03_AXI_awburst(u_ocl_region_M03_AXI_AWBURST),
        .u_ocl_region_M03_AXI_awcache(u_ocl_region_M03_AXI_AWCACHE),
        .u_ocl_region_M03_AXI_awid(u_ocl_region_M03_AXI_AWID),
        .u_ocl_region_M03_AXI_awlen(u_ocl_region_M03_AXI_AWLEN),
        .u_ocl_region_M03_AXI_awlock(u_ocl_region_M03_AXI_AWLOCK),
        .u_ocl_region_M03_AXI_awprot(u_ocl_region_M03_AXI_AWPROT),
        .u_ocl_region_M03_AXI_awqos(u_ocl_region_M03_AXI_AWQOS),
        .u_ocl_region_M03_AXI_awready(u_ocl_region_M03_AXI_AWREADY),
        .u_ocl_region_M03_AXI_awsize(u_ocl_region_M03_AXI_AWSIZE),
        .u_ocl_region_M03_AXI_awvalid(u_ocl_region_M03_AXI_AWVALID),
        .u_ocl_region_M03_AXI_bid(u_ocl_region_M03_AXI_BID),
        .u_ocl_region_M03_AXI_bready(u_ocl_region_M03_AXI_BREADY),
        .u_ocl_region_M03_AXI_bresp(u_ocl_region_M03_AXI_BRESP),
        .u_ocl_region_M03_AXI_bvalid(u_ocl_region_M03_AXI_BVALID),
        .u_ocl_region_M03_AXI_rdata(u_ocl_region_M03_AXI_RDATA),
        .u_ocl_region_M03_AXI_rid(u_ocl_region_M03_AXI_RID),
        .u_ocl_region_M03_AXI_rlast(u_ocl_region_M03_AXI_RLAST),
        .u_ocl_region_M03_AXI_rready(u_ocl_region_M03_AXI_RREADY),
        .u_ocl_region_M03_AXI_rresp(u_ocl_region_M03_AXI_RRESP),
        .u_ocl_region_M03_AXI_rvalid(u_ocl_region_M03_AXI_RVALID),
        .u_ocl_region_M03_AXI_wdata(u_ocl_region_M03_AXI_WDATA),
        .u_ocl_region_M03_AXI_wlast(u_ocl_region_M03_AXI_WLAST),
        .u_ocl_region_M03_AXI_wready(u_ocl_region_M03_AXI_WREADY),
        .u_ocl_region_M03_AXI_wstrb(u_ocl_region_M03_AXI_WSTRB),
        .u_ocl_region_M03_AXI_wvalid(u_ocl_region_M03_AXI_WVALID));
  expanded_resets_imp_1KYY8TE expanded_resets
       (.clkwiz_kernel2_clk_out1(slowest_sync_clk_3),
        .clkwiz_kernel2_locked(dcm_locked_3),
        .clkwiz_kernel_clk_out1(M01_ACLK_1),
        .clkwiz_kernel_locked(dcm_locked_1),
        .clkwiz_sysclks_clk_out1(slowest_sync_clk_2),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .clkwiz_sysclks_locked(logic_reset_op_Res_1),
        .ddrmem_0_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk),
        .ddrmem_0_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst),
        .ddrmem_1_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk1),
        .ddrmem_1_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst1),
        .ddrmem_2_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk2),
        .ddrmem_2_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst2),
        .ddrmem_3_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk3),
        .ddrmem_3_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst3),
        .dma_pcie_axi_aclk(S00_ACLK_1),
        .dma_pcie_user_lnk_up(dcm_locked_2),
        .iob_static_perst_n_out(Op1_1),
        .logic_reset_op_Res(expanded_resets_Res),
        .psreset_ddrmem_n_2_interconnect_aresetn(expanded_resets_interconnect_aresetn3),
        .psreset_ddrmem_n_3_interconnect_aresetn(expanded_resets_interconnect_aresetn4),
        .psreset_ddrmem_n_4_interconnect_aresetn(expanded_resets_interconnect_aresetn5),
        .psreset_ddrmem_n_interconnect_aresetn(M03_ARESETN_1),
        .psreset_gate_pr_apmclk_interconnect_aresetn(s_axi_aresetn_1),
        .psreset_gate_pr_control_interconnect_aresetn(expanded_resets_interconnect_aresetn1),
        .psreset_gate_pr_data_interconnect_aresetn(expanded_resets_interconnect_aresetn),
        .psreset_gate_pr_kernel2_interconnect_aresetn(expanded_resets_interconnect_aresetn2),
        .psreset_gate_pr_kernel_interconnect_aresetn(M01_ARESETN_1),
        .slice_reset_kernel_pr_Dout(ext_reset_in_1));
  interconnect_imp_1XZEBA9 interconnect
       (.clkwiz_kernel_clk_out1(M01_ACLK_1),
        .clkwiz_sysclks_clk_out1(slowest_sync_clk_2),
        .ddrmem_0_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk),
        .ddrmem_1_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk1),
        .ddrmem_2_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk2),
        .ddrmem_3_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk3),
        .dma_pcie_axi_aclk(S00_ACLK_1),
        .interconnect_aximm_ddrmem0_M00_AXI_araddr(interconnect_M00_AXI_ARADDR),
        .interconnect_aximm_ddrmem0_M00_AXI_arburst(interconnect_M00_AXI_ARBURST),
        .interconnect_aximm_ddrmem0_M00_AXI_arcache(interconnect_M00_AXI_ARCACHE),
        .interconnect_aximm_ddrmem0_M00_AXI_arlen(interconnect_M00_AXI_ARLEN),
        .interconnect_aximm_ddrmem0_M00_AXI_arlock(interconnect_M00_AXI_ARLOCK),
        .interconnect_aximm_ddrmem0_M00_AXI_arprot(interconnect_M00_AXI_ARPROT),
        .interconnect_aximm_ddrmem0_M00_AXI_arqos(interconnect_M00_AXI_ARQOS),
        .interconnect_aximm_ddrmem0_M00_AXI_arready(interconnect_M00_AXI_ARREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_arsize(interconnect_M00_AXI_ARSIZE),
        .interconnect_aximm_ddrmem0_M00_AXI_arvalid(interconnect_M00_AXI_ARVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_awaddr(interconnect_M00_AXI_AWADDR),
        .interconnect_aximm_ddrmem0_M00_AXI_awburst(interconnect_M00_AXI_AWBURST),
        .interconnect_aximm_ddrmem0_M00_AXI_awcache(interconnect_M00_AXI_AWCACHE),
        .interconnect_aximm_ddrmem0_M00_AXI_awlen(interconnect_M00_AXI_AWLEN),
        .interconnect_aximm_ddrmem0_M00_AXI_awlock(interconnect_M00_AXI_AWLOCK),
        .interconnect_aximm_ddrmem0_M00_AXI_awprot(interconnect_M00_AXI_AWPROT),
        .interconnect_aximm_ddrmem0_M00_AXI_awqos(interconnect_M00_AXI_AWQOS),
        .interconnect_aximm_ddrmem0_M00_AXI_awready(interconnect_M00_AXI_AWREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_awsize(interconnect_M00_AXI_AWSIZE),
        .interconnect_aximm_ddrmem0_M00_AXI_awvalid(interconnect_M00_AXI_AWVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_bready(interconnect_M00_AXI_BREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_bresp(interconnect_M00_AXI_BRESP),
        .interconnect_aximm_ddrmem0_M00_AXI_bvalid(interconnect_M00_AXI_BVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_rdata(interconnect_M00_AXI_RDATA),
        .interconnect_aximm_ddrmem0_M00_AXI_rlast(interconnect_M00_AXI_RLAST),
        .interconnect_aximm_ddrmem0_M00_AXI_rready(interconnect_M00_AXI_RREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_rresp(interconnect_M00_AXI_RRESP),
        .interconnect_aximm_ddrmem0_M00_AXI_rvalid(interconnect_M00_AXI_RVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_wdata(interconnect_M00_AXI_WDATA),
        .interconnect_aximm_ddrmem0_M00_AXI_wlast(interconnect_M00_AXI_WLAST),
        .interconnect_aximm_ddrmem0_M00_AXI_wready(interconnect_M00_AXI_WREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_wstrb(interconnect_M00_AXI_WSTRB),
        .interconnect_aximm_ddrmem0_M00_AXI_wvalid(interconnect_M00_AXI_WVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_araddr(interconnect_M00_AXI1_ARADDR),
        .interconnect_aximm_ddrmem1_M00_AXI_arburst(interconnect_M00_AXI1_ARBURST),
        .interconnect_aximm_ddrmem1_M00_AXI_arcache(interconnect_M00_AXI1_ARCACHE),
        .interconnect_aximm_ddrmem1_M00_AXI_arlen(interconnect_M00_AXI1_ARLEN),
        .interconnect_aximm_ddrmem1_M00_AXI_arlock(interconnect_M00_AXI1_ARLOCK),
        .interconnect_aximm_ddrmem1_M00_AXI_arprot(interconnect_M00_AXI1_ARPROT),
        .interconnect_aximm_ddrmem1_M00_AXI_arqos(interconnect_M00_AXI1_ARQOS),
        .interconnect_aximm_ddrmem1_M00_AXI_arready(interconnect_M00_AXI1_ARREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_arsize(interconnect_M00_AXI1_ARSIZE),
        .interconnect_aximm_ddrmem1_M00_AXI_arvalid(interconnect_M00_AXI1_ARVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_awaddr(interconnect_M00_AXI1_AWADDR),
        .interconnect_aximm_ddrmem1_M00_AXI_awburst(interconnect_M00_AXI1_AWBURST),
        .interconnect_aximm_ddrmem1_M00_AXI_awcache(interconnect_M00_AXI1_AWCACHE),
        .interconnect_aximm_ddrmem1_M00_AXI_awlen(interconnect_M00_AXI1_AWLEN),
        .interconnect_aximm_ddrmem1_M00_AXI_awlock(interconnect_M00_AXI1_AWLOCK),
        .interconnect_aximm_ddrmem1_M00_AXI_awprot(interconnect_M00_AXI1_AWPROT),
        .interconnect_aximm_ddrmem1_M00_AXI_awqos(interconnect_M00_AXI1_AWQOS),
        .interconnect_aximm_ddrmem1_M00_AXI_awready(interconnect_M00_AXI1_AWREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_awsize(interconnect_M00_AXI1_AWSIZE),
        .interconnect_aximm_ddrmem1_M00_AXI_awvalid(interconnect_M00_AXI1_AWVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_bready(interconnect_M00_AXI1_BREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_bresp(interconnect_M00_AXI1_BRESP),
        .interconnect_aximm_ddrmem1_M00_AXI_bvalid(interconnect_M00_AXI1_BVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_rdata(interconnect_M00_AXI1_RDATA),
        .interconnect_aximm_ddrmem1_M00_AXI_rlast(interconnect_M00_AXI1_RLAST),
        .interconnect_aximm_ddrmem1_M00_AXI_rready(interconnect_M00_AXI1_RREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_rresp(interconnect_M00_AXI1_RRESP),
        .interconnect_aximm_ddrmem1_M00_AXI_rvalid(interconnect_M00_AXI1_RVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_wdata(interconnect_M00_AXI1_WDATA),
        .interconnect_aximm_ddrmem1_M00_AXI_wlast(interconnect_M00_AXI1_WLAST),
        .interconnect_aximm_ddrmem1_M00_AXI_wready(interconnect_M00_AXI1_WREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_wstrb(interconnect_M00_AXI1_WSTRB),
        .interconnect_aximm_ddrmem1_M00_AXI_wvalid(interconnect_M00_AXI1_WVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_araddr(interconnect_M00_AXI2_ARADDR),
        .interconnect_aximm_ddrmem2_M00_AXI_arburst(interconnect_M00_AXI2_ARBURST),
        .interconnect_aximm_ddrmem2_M00_AXI_arcache(interconnect_M00_AXI2_ARCACHE),
        .interconnect_aximm_ddrmem2_M00_AXI_arlen(interconnect_M00_AXI2_ARLEN),
        .interconnect_aximm_ddrmem2_M00_AXI_arlock(interconnect_M00_AXI2_ARLOCK),
        .interconnect_aximm_ddrmem2_M00_AXI_arprot(interconnect_M00_AXI2_ARPROT),
        .interconnect_aximm_ddrmem2_M00_AXI_arqos(interconnect_M00_AXI2_ARQOS),
        .interconnect_aximm_ddrmem2_M00_AXI_arready(interconnect_M00_AXI2_ARREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_arsize(interconnect_M00_AXI2_ARSIZE),
        .interconnect_aximm_ddrmem2_M00_AXI_arvalid(interconnect_M00_AXI2_ARVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_awaddr(interconnect_M00_AXI2_AWADDR),
        .interconnect_aximm_ddrmem2_M00_AXI_awburst(interconnect_M00_AXI2_AWBURST),
        .interconnect_aximm_ddrmem2_M00_AXI_awcache(interconnect_M00_AXI2_AWCACHE),
        .interconnect_aximm_ddrmem2_M00_AXI_awlen(interconnect_M00_AXI2_AWLEN),
        .interconnect_aximm_ddrmem2_M00_AXI_awlock(interconnect_M00_AXI2_AWLOCK),
        .interconnect_aximm_ddrmem2_M00_AXI_awprot(interconnect_M00_AXI2_AWPROT),
        .interconnect_aximm_ddrmem2_M00_AXI_awqos(interconnect_M00_AXI2_AWQOS),
        .interconnect_aximm_ddrmem2_M00_AXI_awready(interconnect_M00_AXI2_AWREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_awsize(interconnect_M00_AXI2_AWSIZE),
        .interconnect_aximm_ddrmem2_M00_AXI_awvalid(interconnect_M00_AXI2_AWVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_bready(interconnect_M00_AXI2_BREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_bresp(interconnect_M00_AXI2_BRESP),
        .interconnect_aximm_ddrmem2_M00_AXI_bvalid(interconnect_M00_AXI2_BVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_rdata(interconnect_M00_AXI2_RDATA),
        .interconnect_aximm_ddrmem2_M00_AXI_rlast(interconnect_M00_AXI2_RLAST),
        .interconnect_aximm_ddrmem2_M00_AXI_rready(interconnect_M00_AXI2_RREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_rresp(interconnect_M00_AXI2_RRESP),
        .interconnect_aximm_ddrmem2_M00_AXI_rvalid(interconnect_M00_AXI2_RVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_wdata(interconnect_M00_AXI2_WDATA),
        .interconnect_aximm_ddrmem2_M00_AXI_wlast(interconnect_M00_AXI2_WLAST),
        .interconnect_aximm_ddrmem2_M00_AXI_wready(interconnect_M00_AXI2_WREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_wstrb(interconnect_M00_AXI2_WSTRB),
        .interconnect_aximm_ddrmem2_M00_AXI_wvalid(interconnect_M00_AXI2_WVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_araddr(interconnect_M00_AXI3_ARADDR),
        .interconnect_aximm_ddrmem3_M00_AXI_arburst(interconnect_M00_AXI3_ARBURST),
        .interconnect_aximm_ddrmem3_M00_AXI_arcache(interconnect_M00_AXI3_ARCACHE),
        .interconnect_aximm_ddrmem3_M00_AXI_arlen(interconnect_M00_AXI3_ARLEN),
        .interconnect_aximm_ddrmem3_M00_AXI_arlock(interconnect_M00_AXI3_ARLOCK),
        .interconnect_aximm_ddrmem3_M00_AXI_arprot(interconnect_M00_AXI3_ARPROT),
        .interconnect_aximm_ddrmem3_M00_AXI_arqos(interconnect_M00_AXI3_ARQOS),
        .interconnect_aximm_ddrmem3_M00_AXI_arready(interconnect_M00_AXI3_ARREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_arsize(interconnect_M00_AXI3_ARSIZE),
        .interconnect_aximm_ddrmem3_M00_AXI_arvalid(interconnect_M00_AXI3_ARVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_awaddr(interconnect_M00_AXI3_AWADDR),
        .interconnect_aximm_ddrmem3_M00_AXI_awburst(interconnect_M00_AXI3_AWBURST),
        .interconnect_aximm_ddrmem3_M00_AXI_awcache(interconnect_M00_AXI3_AWCACHE),
        .interconnect_aximm_ddrmem3_M00_AXI_awlen(interconnect_M00_AXI3_AWLEN),
        .interconnect_aximm_ddrmem3_M00_AXI_awlock(interconnect_M00_AXI3_AWLOCK),
        .interconnect_aximm_ddrmem3_M00_AXI_awprot(interconnect_M00_AXI3_AWPROT),
        .interconnect_aximm_ddrmem3_M00_AXI_awqos(interconnect_M00_AXI3_AWQOS),
        .interconnect_aximm_ddrmem3_M00_AXI_awready(interconnect_M00_AXI3_AWREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_awsize(interconnect_M00_AXI3_AWSIZE),
        .interconnect_aximm_ddrmem3_M00_AXI_awvalid(interconnect_M00_AXI3_AWVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_bready(interconnect_M00_AXI3_BREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_bresp(interconnect_M00_AXI3_BRESP),
        .interconnect_aximm_ddrmem3_M00_AXI_bvalid(interconnect_M00_AXI3_BVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_rdata(interconnect_M00_AXI3_RDATA),
        .interconnect_aximm_ddrmem3_M00_AXI_rlast(interconnect_M00_AXI3_RLAST),
        .interconnect_aximm_ddrmem3_M00_AXI_rready(interconnect_M00_AXI3_RREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_rresp(interconnect_M00_AXI3_RRESP),
        .interconnect_aximm_ddrmem3_M00_AXI_rvalid(interconnect_M00_AXI3_RVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_wdata(interconnect_M00_AXI3_WDATA),
        .interconnect_aximm_ddrmem3_M00_AXI_wlast(interconnect_M00_AXI3_WLAST),
        .interconnect_aximm_ddrmem3_M00_AXI_wready(interconnect_M00_AXI3_WREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_wstrb(interconnect_M00_AXI3_WSTRB),
        .interconnect_aximm_ddrmem3_M00_AXI_wvalid(interconnect_M00_AXI3_WVALID),
        .interconnect_aximm_host_M04_AXI_araddr(interconnect_M04_AXI_ARADDR),
        .interconnect_aximm_host_M04_AXI_arburst(interconnect_M04_AXI_ARBURST),
        .interconnect_aximm_host_M04_AXI_arcache(interconnect_M04_AXI_ARCACHE),
        .interconnect_aximm_host_M04_AXI_arlen(interconnect_M04_AXI_ARLEN),
        .interconnect_aximm_host_M04_AXI_arlock(interconnect_M04_AXI_ARLOCK),
        .interconnect_aximm_host_M04_AXI_arprot(interconnect_M04_AXI_ARPROT),
        .interconnect_aximm_host_M04_AXI_arready(interconnect_M04_AXI_ARREADY),
        .interconnect_aximm_host_M04_AXI_arsize(interconnect_M04_AXI_ARSIZE),
        .interconnect_aximm_host_M04_AXI_arvalid(interconnect_M04_AXI_ARVALID),
        .interconnect_aximm_host_M04_AXI_rdata(interconnect_M04_AXI_RDATA),
        .interconnect_aximm_host_M04_AXI_rlast(interconnect_M04_AXI_RLAST),
        .interconnect_aximm_host_M04_AXI_rready(interconnect_M04_AXI_RREADY),
        .interconnect_aximm_host_M04_AXI_rresp(interconnect_M04_AXI_RRESP),
        .interconnect_aximm_host_M04_AXI_rvalid(interconnect_M04_AXI_RVALID),
        .psreset_gate_pr_data_interconnect_aresetn(expanded_resets_interconnect_aresetn),
        .regslice_data_M_AXI_araddr(S00_AXI1_1_ARADDR),
        .regslice_data_M_AXI_arburst(S00_AXI1_1_ARBURST),
        .regslice_data_M_AXI_arcache(S00_AXI1_1_ARCACHE),
        .regslice_data_M_AXI_arid(S00_AXI1_1_ARID),
        .regslice_data_M_AXI_arlen(S00_AXI1_1_ARLEN),
        .regslice_data_M_AXI_arlock(S00_AXI1_1_ARLOCK),
        .regslice_data_M_AXI_arprot(S00_AXI1_1_ARPROT),
        .regslice_data_M_AXI_arqos(S00_AXI1_1_ARQOS),
        .regslice_data_M_AXI_arready(S00_AXI1_1_ARREADY),
        .regslice_data_M_AXI_arsize(S00_AXI1_1_ARSIZE),
        .regslice_data_M_AXI_arvalid(S00_AXI1_1_ARVALID),
        .regslice_data_M_AXI_awaddr(S00_AXI1_1_AWADDR),
        .regslice_data_M_AXI_awburst(S00_AXI1_1_AWBURST),
        .regslice_data_M_AXI_awcache(S00_AXI1_1_AWCACHE),
        .regslice_data_M_AXI_awid(S00_AXI1_1_AWID),
        .regslice_data_M_AXI_awlen(S00_AXI1_1_AWLEN),
        .regslice_data_M_AXI_awlock(S00_AXI1_1_AWLOCK),
        .regslice_data_M_AXI_awprot(S00_AXI1_1_AWPROT),
        .regslice_data_M_AXI_awqos(S00_AXI1_1_AWQOS),
        .regslice_data_M_AXI_awready(S00_AXI1_1_AWREADY),
        .regslice_data_M_AXI_awsize(S00_AXI1_1_AWSIZE),
        .regslice_data_M_AXI_awvalid(S00_AXI1_1_AWVALID),
        .regslice_data_M_AXI_bid(S00_AXI1_1_BID),
        .regslice_data_M_AXI_bready(S00_AXI1_1_BREADY),
        .regslice_data_M_AXI_bresp(S00_AXI1_1_BRESP),
        .regslice_data_M_AXI_bvalid(S00_AXI1_1_BVALID),
        .regslice_data_M_AXI_rdata(S00_AXI1_1_RDATA),
        .regslice_data_M_AXI_rid(S00_AXI1_1_RID),
        .regslice_data_M_AXI_rlast(S00_AXI1_1_RLAST),
        .regslice_data_M_AXI_rready(S00_AXI1_1_RREADY),
        .regslice_data_M_AXI_rresp(S00_AXI1_1_RRESP),
        .regslice_data_M_AXI_rvalid(S00_AXI1_1_RVALID),
        .regslice_data_M_AXI_wdata(S00_AXI1_1_WDATA),
        .regslice_data_M_AXI_wlast(S00_AXI1_1_WLAST),
        .regslice_data_M_AXI_wready(S00_AXI1_1_WREADY),
        .regslice_data_M_AXI_wstrb(S00_AXI1_1_WSTRB),
        .regslice_data_M_AXI_wvalid(S00_AXI1_1_WVALID),
        .u_ocl_region_M00_AXI_araddr(u_ocl_region_M00_AXI_ARADDR),
        .u_ocl_region_M00_AXI_arburst(u_ocl_region_M00_AXI_ARBURST),
        .u_ocl_region_M00_AXI_arcache(u_ocl_region_M00_AXI_ARCACHE),
        .u_ocl_region_M00_AXI_arid(u_ocl_region_M00_AXI_ARID),
        .u_ocl_region_M00_AXI_arlen(u_ocl_region_M00_AXI_ARLEN),
        .u_ocl_region_M00_AXI_arlock(u_ocl_region_M00_AXI_ARLOCK),
        .u_ocl_region_M00_AXI_arprot(u_ocl_region_M00_AXI_ARPROT),
        .u_ocl_region_M00_AXI_arqos(u_ocl_region_M00_AXI_ARQOS),
        .u_ocl_region_M00_AXI_arready(u_ocl_region_M00_AXI_ARREADY),
        .u_ocl_region_M00_AXI_arsize(u_ocl_region_M00_AXI_ARSIZE),
        .u_ocl_region_M00_AXI_arvalid(u_ocl_region_M00_AXI_ARVALID),
        .u_ocl_region_M00_AXI_awaddr(u_ocl_region_M00_AXI_AWADDR),
        .u_ocl_region_M00_AXI_awburst(u_ocl_region_M00_AXI_AWBURST),
        .u_ocl_region_M00_AXI_awcache(u_ocl_region_M00_AXI_AWCACHE),
        .u_ocl_region_M00_AXI_awid(u_ocl_region_M00_AXI_AWID),
        .u_ocl_region_M00_AXI_awlen(u_ocl_region_M00_AXI_AWLEN),
        .u_ocl_region_M00_AXI_awlock(u_ocl_region_M00_AXI_AWLOCK),
        .u_ocl_region_M00_AXI_awprot(u_ocl_region_M00_AXI_AWPROT),
        .u_ocl_region_M00_AXI_awqos(u_ocl_region_M00_AXI_AWQOS),
        .u_ocl_region_M00_AXI_awready(u_ocl_region_M00_AXI_AWREADY),
        .u_ocl_region_M00_AXI_awsize(u_ocl_region_M00_AXI_AWSIZE),
        .u_ocl_region_M00_AXI_awvalid(u_ocl_region_M00_AXI_AWVALID),
        .u_ocl_region_M00_AXI_bid(u_ocl_region_M00_AXI_BID),
        .u_ocl_region_M00_AXI_bready(u_ocl_region_M00_AXI_BREADY),
        .u_ocl_region_M00_AXI_bresp(u_ocl_region_M00_AXI_BRESP),
        .u_ocl_region_M00_AXI_bvalid(u_ocl_region_M00_AXI_BVALID),
        .u_ocl_region_M00_AXI_rdata(u_ocl_region_M00_AXI_RDATA),
        .u_ocl_region_M00_AXI_rid(u_ocl_region_M00_AXI_RID),
        .u_ocl_region_M00_AXI_rlast(u_ocl_region_M00_AXI_RLAST),
        .u_ocl_region_M00_AXI_rready(u_ocl_region_M00_AXI_RREADY),
        .u_ocl_region_M00_AXI_rresp(u_ocl_region_M00_AXI_RRESP),
        .u_ocl_region_M00_AXI_rvalid(u_ocl_region_M00_AXI_RVALID),
        .u_ocl_region_M00_AXI_wdata(u_ocl_region_M00_AXI_WDATA),
        .u_ocl_region_M00_AXI_wlast(u_ocl_region_M00_AXI_WLAST),
        .u_ocl_region_M00_AXI_wready(u_ocl_region_M00_AXI_WREADY),
        .u_ocl_region_M00_AXI_wstrb(u_ocl_region_M00_AXI_WSTRB),
        .u_ocl_region_M00_AXI_wvalid(u_ocl_region_M00_AXI_WVALID),
        .u_ocl_region_M01_AXI_araddr(u_ocl_region_M01_AXI_ARADDR),
        .u_ocl_region_M01_AXI_arburst(u_ocl_region_M01_AXI_ARBURST),
        .u_ocl_region_M01_AXI_arcache(u_ocl_region_M01_AXI_ARCACHE),
        .u_ocl_region_M01_AXI_arid(u_ocl_region_M01_AXI_ARID),
        .u_ocl_region_M01_AXI_arlen(u_ocl_region_M01_AXI_ARLEN),
        .u_ocl_region_M01_AXI_arlock(u_ocl_region_M01_AXI_ARLOCK),
        .u_ocl_region_M01_AXI_arprot(u_ocl_region_M01_AXI_ARPROT),
        .u_ocl_region_M01_AXI_arqos(u_ocl_region_M01_AXI_ARQOS),
        .u_ocl_region_M01_AXI_arready(u_ocl_region_M01_AXI_ARREADY),
        .u_ocl_region_M01_AXI_arsize(u_ocl_region_M01_AXI_ARSIZE),
        .u_ocl_region_M01_AXI_arvalid(u_ocl_region_M01_AXI_ARVALID),
        .u_ocl_region_M01_AXI_awaddr(u_ocl_region_M01_AXI_AWADDR),
        .u_ocl_region_M01_AXI_awburst(u_ocl_region_M01_AXI_AWBURST),
        .u_ocl_region_M01_AXI_awcache(u_ocl_region_M01_AXI_AWCACHE),
        .u_ocl_region_M01_AXI_awid(u_ocl_region_M01_AXI_AWID),
        .u_ocl_region_M01_AXI_awlen(u_ocl_region_M01_AXI_AWLEN),
        .u_ocl_region_M01_AXI_awlock(u_ocl_region_M01_AXI_AWLOCK),
        .u_ocl_region_M01_AXI_awprot(u_ocl_region_M01_AXI_AWPROT),
        .u_ocl_region_M01_AXI_awqos(u_ocl_region_M01_AXI_AWQOS),
        .u_ocl_region_M01_AXI_awready(u_ocl_region_M01_AXI_AWREADY),
        .u_ocl_region_M01_AXI_awsize(u_ocl_region_M01_AXI_AWSIZE),
        .u_ocl_region_M01_AXI_awvalid(u_ocl_region_M01_AXI_AWVALID),
        .u_ocl_region_M01_AXI_bid(u_ocl_region_M01_AXI_BID),
        .u_ocl_region_M01_AXI_bready(u_ocl_region_M01_AXI_BREADY),
        .u_ocl_region_M01_AXI_bresp(u_ocl_region_M01_AXI_BRESP),
        .u_ocl_region_M01_AXI_bvalid(u_ocl_region_M01_AXI_BVALID),
        .u_ocl_region_M01_AXI_rdata(u_ocl_region_M01_AXI_RDATA),
        .u_ocl_region_M01_AXI_rid(u_ocl_region_M01_AXI_RID),
        .u_ocl_region_M01_AXI_rlast(u_ocl_region_M01_AXI_RLAST),
        .u_ocl_region_M01_AXI_rready(u_ocl_region_M01_AXI_RREADY),
        .u_ocl_region_M01_AXI_rresp(u_ocl_region_M01_AXI_RRESP),
        .u_ocl_region_M01_AXI_rvalid(u_ocl_region_M01_AXI_RVALID),
        .u_ocl_region_M01_AXI_wdata(u_ocl_region_M01_AXI_WDATA),
        .u_ocl_region_M01_AXI_wlast(u_ocl_region_M01_AXI_WLAST),
        .u_ocl_region_M01_AXI_wready(u_ocl_region_M01_AXI_WREADY),
        .u_ocl_region_M01_AXI_wstrb(u_ocl_region_M01_AXI_WSTRB),
        .u_ocl_region_M01_AXI_wvalid(u_ocl_region_M01_AXI_WVALID),
        .u_ocl_region_M02_AXI_araddr(u_ocl_region_M02_AXI_ARADDR),
        .u_ocl_region_M02_AXI_arburst(u_ocl_region_M02_AXI_ARBURST),
        .u_ocl_region_M02_AXI_arcache(u_ocl_region_M02_AXI_ARCACHE),
        .u_ocl_region_M02_AXI_arid(u_ocl_region_M02_AXI_ARID),
        .u_ocl_region_M02_AXI_arlen(u_ocl_region_M02_AXI_ARLEN),
        .u_ocl_region_M02_AXI_arlock(u_ocl_region_M02_AXI_ARLOCK),
        .u_ocl_region_M02_AXI_arprot(u_ocl_region_M02_AXI_ARPROT),
        .u_ocl_region_M02_AXI_arqos(u_ocl_region_M02_AXI_ARQOS),
        .u_ocl_region_M02_AXI_arready(u_ocl_region_M02_AXI_ARREADY),
        .u_ocl_region_M02_AXI_arsize(u_ocl_region_M02_AXI_ARSIZE),
        .u_ocl_region_M02_AXI_arvalid(u_ocl_region_M02_AXI_ARVALID),
        .u_ocl_region_M02_AXI_awaddr(u_ocl_region_M02_AXI_AWADDR),
        .u_ocl_region_M02_AXI_awburst(u_ocl_region_M02_AXI_AWBURST),
        .u_ocl_region_M02_AXI_awcache(u_ocl_region_M02_AXI_AWCACHE),
        .u_ocl_region_M02_AXI_awid(u_ocl_region_M02_AXI_AWID),
        .u_ocl_region_M02_AXI_awlen(u_ocl_region_M02_AXI_AWLEN),
        .u_ocl_region_M02_AXI_awlock(u_ocl_region_M02_AXI_AWLOCK),
        .u_ocl_region_M02_AXI_awprot(u_ocl_region_M02_AXI_AWPROT),
        .u_ocl_region_M02_AXI_awqos(u_ocl_region_M02_AXI_AWQOS),
        .u_ocl_region_M02_AXI_awready(u_ocl_region_M02_AXI_AWREADY),
        .u_ocl_region_M02_AXI_awsize(u_ocl_region_M02_AXI_AWSIZE),
        .u_ocl_region_M02_AXI_awvalid(u_ocl_region_M02_AXI_AWVALID),
        .u_ocl_region_M02_AXI_bid(u_ocl_region_M02_AXI_BID),
        .u_ocl_region_M02_AXI_bready(u_ocl_region_M02_AXI_BREADY),
        .u_ocl_region_M02_AXI_bresp(u_ocl_region_M02_AXI_BRESP),
        .u_ocl_region_M02_AXI_bvalid(u_ocl_region_M02_AXI_BVALID),
        .u_ocl_region_M02_AXI_rdata(u_ocl_region_M02_AXI_RDATA),
        .u_ocl_region_M02_AXI_rid(u_ocl_region_M02_AXI_RID),
        .u_ocl_region_M02_AXI_rlast(u_ocl_region_M02_AXI_RLAST),
        .u_ocl_region_M02_AXI_rready(u_ocl_region_M02_AXI_RREADY),
        .u_ocl_region_M02_AXI_rresp(u_ocl_region_M02_AXI_RRESP),
        .u_ocl_region_M02_AXI_rvalid(u_ocl_region_M02_AXI_RVALID),
        .u_ocl_region_M02_AXI_wdata(u_ocl_region_M02_AXI_WDATA),
        .u_ocl_region_M02_AXI_wlast(u_ocl_region_M02_AXI_WLAST),
        .u_ocl_region_M02_AXI_wready(u_ocl_region_M02_AXI_WREADY),
        .u_ocl_region_M02_AXI_wstrb(u_ocl_region_M02_AXI_WSTRB),
        .u_ocl_region_M02_AXI_wvalid(u_ocl_region_M02_AXI_WVALID),
        .u_ocl_region_M03_AXI_araddr(u_ocl_region_M03_AXI_ARADDR),
        .u_ocl_region_M03_AXI_arburst(u_ocl_region_M03_AXI_ARBURST),
        .u_ocl_region_M03_AXI_arcache(u_ocl_region_M03_AXI_ARCACHE),
        .u_ocl_region_M03_AXI_arid(u_ocl_region_M03_AXI_ARID),
        .u_ocl_region_M03_AXI_arlen(u_ocl_region_M03_AXI_ARLEN),
        .u_ocl_region_M03_AXI_arlock(u_ocl_region_M03_AXI_ARLOCK),
        .u_ocl_region_M03_AXI_arprot(u_ocl_region_M03_AXI_ARPROT),
        .u_ocl_region_M03_AXI_arqos(u_ocl_region_M03_AXI_ARQOS),
        .u_ocl_region_M03_AXI_arready(u_ocl_region_M03_AXI_ARREADY),
        .u_ocl_region_M03_AXI_arsize(u_ocl_region_M03_AXI_ARSIZE),
        .u_ocl_region_M03_AXI_arvalid(u_ocl_region_M03_AXI_ARVALID),
        .u_ocl_region_M03_AXI_awaddr(u_ocl_region_M03_AXI_AWADDR),
        .u_ocl_region_M03_AXI_awburst(u_ocl_region_M03_AXI_AWBURST),
        .u_ocl_region_M03_AXI_awcache(u_ocl_region_M03_AXI_AWCACHE),
        .u_ocl_region_M03_AXI_awid(u_ocl_region_M03_AXI_AWID),
        .u_ocl_region_M03_AXI_awlen(u_ocl_region_M03_AXI_AWLEN),
        .u_ocl_region_M03_AXI_awlock(u_ocl_region_M03_AXI_AWLOCK),
        .u_ocl_region_M03_AXI_awprot(u_ocl_region_M03_AXI_AWPROT),
        .u_ocl_region_M03_AXI_awqos(u_ocl_region_M03_AXI_AWQOS),
        .u_ocl_region_M03_AXI_awready(u_ocl_region_M03_AXI_AWREADY),
        .u_ocl_region_M03_AXI_awsize(u_ocl_region_M03_AXI_AWSIZE),
        .u_ocl_region_M03_AXI_awvalid(u_ocl_region_M03_AXI_AWVALID),
        .u_ocl_region_M03_AXI_bid(u_ocl_region_M03_AXI_BID),
        .u_ocl_region_M03_AXI_bready(u_ocl_region_M03_AXI_BREADY),
        .u_ocl_region_M03_AXI_bresp(u_ocl_region_M03_AXI_BRESP),
        .u_ocl_region_M03_AXI_bvalid(u_ocl_region_M03_AXI_BVALID),
        .u_ocl_region_M03_AXI_rdata(u_ocl_region_M03_AXI_RDATA),
        .u_ocl_region_M03_AXI_rid(u_ocl_region_M03_AXI_RID),
        .u_ocl_region_M03_AXI_rlast(u_ocl_region_M03_AXI_RLAST),
        .u_ocl_region_M03_AXI_rready(u_ocl_region_M03_AXI_RREADY),
        .u_ocl_region_M03_AXI_rresp(u_ocl_region_M03_AXI_RRESP),
        .u_ocl_region_M03_AXI_rvalid(u_ocl_region_M03_AXI_RVALID),
        .u_ocl_region_M03_AXI_wdata(u_ocl_region_M03_AXI_WDATA),
        .u_ocl_region_M03_AXI_wlast(u_ocl_region_M03_AXI_WLAST),
        .u_ocl_region_M03_AXI_wready(u_ocl_region_M03_AXI_WREADY),
        .u_ocl_region_M03_AXI_wstrb(u_ocl_region_M03_AXI_WSTRB),
        .u_ocl_region_M03_AXI_wvalid(u_ocl_region_M03_AXI_WVALID));
  xcl_design_interconnect_axilite_0 interconnect_axilite
       (.ACLK(slowest_sync_clk_1),
        .ARESETN(expanded_resets_interconnect_aresetn1),
        .M00_ACLK(slowest_sync_clk_1),
        .M00_ARESETN(expanded_resets_interconnect_aresetn1),
        .M00_AXI_araddr(interconnect_axilite_M00_AXI_ARADDR),
        .M00_AXI_arready(interconnect_axilite_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_M00_AXI_AWADDR),
        .M00_AXI_awready(interconnect_axilite_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_M00_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_1),
        .M01_ARESETN(expanded_resets_interconnect_aresetn1),
        .M01_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .M01_AXI_arprot(interconnect_axilite_M01_AXI_ARPROT),
        .M01_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .M01_AXI_awprot(interconnect_axilite_M01_AXI_AWPROT),
        .M01_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .M02_ACLK(slowest_sync_clk_2),
        .M02_ARESETN(s_axi_aresetn_1),
        .M02_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .M02_AXI_arprot(interconnect_axilite_M02_AXI_ARPROT),
        .M02_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .M02_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .M02_AXI_awprot(interconnect_axilite_M02_AXI_AWPROT),
        .M02_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .M02_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .M02_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .M02_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .M02_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .M02_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .M02_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .M03_ACLK(memory_c0_ddr4_ui_clk),
        .M03_ARESETN(M03_ARESETN_1),
        .M03_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .M03_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .M03_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .M03_AXI_awaddr(interconnect_axilite_M03_AXI_AWADDR),
        .M03_AXI_awready(interconnect_axilite_M03_AXI_AWREADY),
        .M03_AXI_awvalid(interconnect_axilite_M03_AXI_AWVALID),
        .M03_AXI_bready(interconnect_axilite_M03_AXI_BREADY),
        .M03_AXI_bresp(interconnect_axilite_M03_AXI_BRESP),
        .M03_AXI_bvalid(interconnect_axilite_M03_AXI_BVALID),
        .M03_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .M03_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .M03_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .M03_AXI_wdata(interconnect_axilite_M03_AXI_WDATA),
        .M03_AXI_wready(interconnect_axilite_M03_AXI_WREADY),
        .M03_AXI_wvalid(interconnect_axilite_M03_AXI_WVALID),
        .M04_ACLK(slowest_sync_clk_1),
        .M04_ARESETN(expanded_resets_interconnect_aresetn1),
        .M04_AXI_araddr(interconnect_axilite_M04_AXI_ARADDR),
        .M04_AXI_arprot(interconnect_axilite_M04_AXI_ARPROT),
        .M04_AXI_arready(interconnect_axilite_M04_AXI_ARREADY),
        .M04_AXI_arvalid(interconnect_axilite_M04_AXI_ARVALID),
        .M04_AXI_awaddr(interconnect_axilite_M04_AXI_AWADDR),
        .M04_AXI_awprot(interconnect_axilite_M04_AXI_AWPROT),
        .M04_AXI_awready(interconnect_axilite_M04_AXI_AWREADY),
        .M04_AXI_awvalid(interconnect_axilite_M04_AXI_AWVALID),
        .M04_AXI_bready(interconnect_axilite_M04_AXI_BREADY),
        .M04_AXI_bresp(interconnect_axilite_M04_AXI_BRESP),
        .M04_AXI_bvalid(interconnect_axilite_M04_AXI_BVALID),
        .M04_AXI_rdata(interconnect_axilite_M04_AXI_RDATA),
        .M04_AXI_rready(interconnect_axilite_M04_AXI_RREADY),
        .M04_AXI_rresp(interconnect_axilite_M04_AXI_RRESP),
        .M04_AXI_rvalid(interconnect_axilite_M04_AXI_RVALID),
        .M04_AXI_wdata(interconnect_axilite_M04_AXI_WDATA),
        .M04_AXI_wready(interconnect_axilite_M04_AXI_WREADY),
        .M04_AXI_wstrb(interconnect_axilite_M04_AXI_WSTRB),
        .M04_AXI_wvalid(interconnect_axilite_M04_AXI_WVALID),
        .M05_ACLK(slowest_sync_clk_1),
        .M05_ARESETN(expanded_resets_interconnect_aresetn1),
        .M05_AXI_araddr(interconnect_axilite_M05_AXI_ARADDR),
        .M05_AXI_arprot(interconnect_axilite_M05_AXI_ARPROT),
        .M05_AXI_arready(interconnect_axilite_M05_AXI_ARREADY),
        .M05_AXI_arvalid(interconnect_axilite_M05_AXI_ARVALID),
        .M05_AXI_awaddr(interconnect_axilite_M05_AXI_AWADDR),
        .M05_AXI_awprot(interconnect_axilite_M05_AXI_AWPROT),
        .M05_AXI_awready(interconnect_axilite_M05_AXI_AWREADY),
        .M05_AXI_awvalid(interconnect_axilite_M05_AXI_AWVALID),
        .M05_AXI_bready(interconnect_axilite_M05_AXI_BREADY),
        .M05_AXI_bresp(interconnect_axilite_M05_AXI_BRESP),
        .M05_AXI_bvalid(interconnect_axilite_M05_AXI_BVALID),
        .M05_AXI_rdata(interconnect_axilite_M05_AXI_RDATA),
        .M05_AXI_rready(interconnect_axilite_M05_AXI_RREADY),
        .M05_AXI_rresp(interconnect_axilite_M05_AXI_RRESP),
        .M05_AXI_rvalid(interconnect_axilite_M05_AXI_RVALID),
        .M05_AXI_wdata(interconnect_axilite_M05_AXI_WDATA),
        .M05_AXI_wready(interconnect_axilite_M05_AXI_WREADY),
        .M05_AXI_wstrb(interconnect_axilite_M05_AXI_WSTRB),
        .M05_AXI_wvalid(interconnect_axilite_M05_AXI_WVALID),
        .M06_ACLK(slowest_sync_clk_1),
        .M06_ARESETN(expanded_resets_interconnect_aresetn1),
        .M06_AXI_araddr(interconnect_axilite_M06_AXI_ARADDR),
        .M06_AXI_arprot(interconnect_axilite_M06_AXI_ARPROT),
        .M06_AXI_arready(interconnect_axilite_M06_AXI_ARREADY),
        .M06_AXI_arvalid(interconnect_axilite_M06_AXI_ARVALID),
        .M06_AXI_awaddr(interconnect_axilite_M06_AXI_AWADDR),
        .M06_AXI_awprot(interconnect_axilite_M06_AXI_AWPROT),
        .M06_AXI_awready(interconnect_axilite_M06_AXI_AWREADY),
        .M06_AXI_awvalid(interconnect_axilite_M06_AXI_AWVALID),
        .M06_AXI_bready(interconnect_axilite_M06_AXI_BREADY),
        .M06_AXI_bresp(interconnect_axilite_M06_AXI_BRESP),
        .M06_AXI_bvalid(interconnect_axilite_M06_AXI_BVALID),
        .M06_AXI_rdata(interconnect_axilite_M06_AXI_RDATA),
        .M06_AXI_rready(interconnect_axilite_M06_AXI_RREADY),
        .M06_AXI_rresp(interconnect_axilite_M06_AXI_RRESP),
        .M06_AXI_rvalid(interconnect_axilite_M06_AXI_RVALID),
        .M06_AXI_wdata(interconnect_axilite_M06_AXI_WDATA),
        .M06_AXI_wready(interconnect_axilite_M06_AXI_WREADY),
        .M06_AXI_wstrb(interconnect_axilite_M06_AXI_WSTRB),
        .M06_AXI_wvalid(interconnect_axilite_M06_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1),
        .S00_ARESETN(expanded_resets_interconnect_aresetn1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  memc_imp_178JFS5 memc
       (.c0_sys_clk_n(Conn3_CLK_N),
        .c0_sys_clk_p(Conn3_CLK_P),
        .c1_sys_clk_n(Conn1_CLK_N),
        .c1_sys_clk_p(Conn1_CLK_P),
        .c2_sys_clk_n(Conn5_CLK_N),
        .c2_sys_clk_p(Conn5_CLK_P),
        .c3_sys_clk_n(Conn7_CLK_N),
        .c3_sys_clk_p(Conn7_CLK_P),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .ddrmem_0_C0_DDR4_act_n(Conn2_ACT_N),
        .ddrmem_0_C0_DDR4_adr(Conn2_ADR),
        .ddrmem_0_C0_DDR4_ba(Conn2_BA),
        .ddrmem_0_C0_DDR4_bg(Conn2_BG),
        .ddrmem_0_C0_DDR4_ck_c(Conn2_CK_C),
        .ddrmem_0_C0_DDR4_ck_t(Conn2_CK_T),
        .ddrmem_0_C0_DDR4_cke(Conn2_CKE),
        .ddrmem_0_C0_DDR4_cs_n(Conn2_CS_N),
        .ddrmem_0_C0_DDR4_dm_n(ddrmem_0_C0_DDR4_dm_n[8:0]),
        .ddrmem_0_C0_DDR4_dq(ddrmem_0_C0_DDR4_dq[71:0]),
        .ddrmem_0_C0_DDR4_dqs_c(ddrmem_0_C0_DDR4_dqs_c[8:0]),
        .ddrmem_0_C0_DDR4_dqs_t(ddrmem_0_C0_DDR4_dqs_t[8:0]),
        .ddrmem_0_C0_DDR4_odt(Conn2_ODT),
        .ddrmem_0_C0_DDR4_reset_n(Conn2_RESET_N),
        .ddrmem_0_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk),
        .ddrmem_0_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst),
        .ddrmem_1_C0_DDR4_act_n(Conn4_ACT_N),
        .ddrmem_1_C0_DDR4_adr(Conn4_ADR),
        .ddrmem_1_C0_DDR4_ba(Conn4_BA),
        .ddrmem_1_C0_DDR4_bg(Conn4_BG),
        .ddrmem_1_C0_DDR4_ck_c(Conn4_CK_C),
        .ddrmem_1_C0_DDR4_ck_t(Conn4_CK_T),
        .ddrmem_1_C0_DDR4_cke(Conn4_CKE),
        .ddrmem_1_C0_DDR4_cs_n(Conn4_CS_N),
        .ddrmem_1_C0_DDR4_dm_n(ddrmem_1_C0_DDR4_dm_n[7:0]),
        .ddrmem_1_C0_DDR4_dq(ddrmem_1_C0_DDR4_dq[63:0]),
        .ddrmem_1_C0_DDR4_dqs_c(ddrmem_1_C0_DDR4_dqs_c[7:0]),
        .ddrmem_1_C0_DDR4_dqs_t(ddrmem_1_C0_DDR4_dqs_t[7:0]),
        .ddrmem_1_C0_DDR4_odt(Conn4_ODT),
        .ddrmem_1_C0_DDR4_reset_n(Conn4_RESET_N),
        .ddrmem_1_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk1),
        .ddrmem_1_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst1),
        .ddrmem_2_C0_DDR4_act_n(Conn6_ACT_N),
        .ddrmem_2_C0_DDR4_adr(Conn6_ADR),
        .ddrmem_2_C0_DDR4_ba(Conn6_BA),
        .ddrmem_2_C0_DDR4_bg(Conn6_BG),
        .ddrmem_2_C0_DDR4_ck_c(Conn6_CK_C),
        .ddrmem_2_C0_DDR4_ck_t(Conn6_CK_T),
        .ddrmem_2_C0_DDR4_cke(Conn6_CKE),
        .ddrmem_2_C0_DDR4_cs_n(Conn6_CS_N),
        .ddrmem_2_C0_DDR4_dm_n(ddrmem_2_C0_DDR4_dm_n[8:0]),
        .ddrmem_2_C0_DDR4_dq(ddrmem_2_C0_DDR4_dq[71:0]),
        .ddrmem_2_C0_DDR4_dqs_c(ddrmem_2_C0_DDR4_dqs_c[8:0]),
        .ddrmem_2_C0_DDR4_dqs_t(ddrmem_2_C0_DDR4_dqs_t[8:0]),
        .ddrmem_2_C0_DDR4_odt(Conn6_ODT),
        .ddrmem_2_C0_DDR4_reset_n(Conn6_RESET_N),
        .ddrmem_2_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk2),
        .ddrmem_2_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst2),
        .ddrmem_3_C0_DDR4_act_n(Conn8_ACT_N),
        .ddrmem_3_C0_DDR4_adr(Conn8_ADR),
        .ddrmem_3_C0_DDR4_ba(Conn8_BA),
        .ddrmem_3_C0_DDR4_bg(Conn8_BG),
        .ddrmem_3_C0_DDR4_ck_c(Conn8_CK_C),
        .ddrmem_3_C0_DDR4_ck_t(Conn8_CK_T),
        .ddrmem_3_C0_DDR4_cke(Conn8_CKE),
        .ddrmem_3_C0_DDR4_cs_n(Conn8_CS_N),
        .ddrmem_3_C0_DDR4_dm_n(ddrmem_3_C0_DDR4_dm_n[8:0]),
        .ddrmem_3_C0_DDR4_dq(ddrmem_3_C0_DDR4_dq[71:0]),
        .ddrmem_3_C0_DDR4_dqs_c(ddrmem_3_C0_DDR4_dqs_c[8:0]),
        .ddrmem_3_C0_DDR4_dqs_t(ddrmem_3_C0_DDR4_dqs_t[8:0]),
        .ddrmem_3_C0_DDR4_odt(Conn8_ODT),
        .ddrmem_3_C0_DDR4_reset_n(Conn8_RESET_N),
        .ddrmem_3_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk3),
        .ddrmem_3_c0_ddr4_ui_clk_sync_rst(memory_c0_ddr4_ui_clk_sync_rst3),
        .interconnect_axilite_M03_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .interconnect_axilite_M03_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .interconnect_axilite_M03_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .interconnect_axilite_M03_AXI_awaddr(interconnect_axilite_M03_AXI_AWADDR),
        .interconnect_axilite_M03_AXI_awready(interconnect_axilite_M03_AXI_AWREADY),
        .interconnect_axilite_M03_AXI_awvalid(interconnect_axilite_M03_AXI_AWVALID),
        .interconnect_axilite_M03_AXI_bready(interconnect_axilite_M03_AXI_BREADY),
        .interconnect_axilite_M03_AXI_bresp(interconnect_axilite_M03_AXI_BRESP),
        .interconnect_axilite_M03_AXI_bvalid(interconnect_axilite_M03_AXI_BVALID),
        .interconnect_axilite_M03_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .interconnect_axilite_M03_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .interconnect_axilite_M03_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .interconnect_axilite_M03_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .interconnect_axilite_M03_AXI_wdata(interconnect_axilite_M03_AXI_WDATA),
        .interconnect_axilite_M03_AXI_wready(interconnect_axilite_M03_AXI_WREADY),
        .interconnect_axilite_M03_AXI_wvalid(interconnect_axilite_M03_AXI_WVALID),
        .interconnect_axilite_M04_AXI_araddr(interconnect_axilite_M04_AXI_ARADDR),
        .interconnect_axilite_M04_AXI_arprot(interconnect_axilite_M04_AXI_ARPROT),
        .interconnect_axilite_M04_AXI_arready(interconnect_axilite_M04_AXI_ARREADY),
        .interconnect_axilite_M04_AXI_arvalid(interconnect_axilite_M04_AXI_ARVALID),
        .interconnect_axilite_M04_AXI_awaddr(interconnect_axilite_M04_AXI_AWADDR),
        .interconnect_axilite_M04_AXI_awprot(interconnect_axilite_M04_AXI_AWPROT),
        .interconnect_axilite_M04_AXI_awready(interconnect_axilite_M04_AXI_AWREADY),
        .interconnect_axilite_M04_AXI_awvalid(interconnect_axilite_M04_AXI_AWVALID),
        .interconnect_axilite_M04_AXI_bready(interconnect_axilite_M04_AXI_BREADY),
        .interconnect_axilite_M04_AXI_bresp(interconnect_axilite_M04_AXI_BRESP),
        .interconnect_axilite_M04_AXI_bvalid(interconnect_axilite_M04_AXI_BVALID),
        .interconnect_axilite_M04_AXI_rdata(interconnect_axilite_M04_AXI_RDATA),
        .interconnect_axilite_M04_AXI_rready(interconnect_axilite_M04_AXI_RREADY),
        .interconnect_axilite_M04_AXI_rresp(interconnect_axilite_M04_AXI_RRESP),
        .interconnect_axilite_M04_AXI_rvalid(interconnect_axilite_M04_AXI_RVALID),
        .interconnect_axilite_M04_AXI_wdata(interconnect_axilite_M04_AXI_WDATA),
        .interconnect_axilite_M04_AXI_wready(interconnect_axilite_M04_AXI_WREADY),
        .interconnect_axilite_M04_AXI_wstrb(interconnect_axilite_M04_AXI_WSTRB),
        .interconnect_axilite_M04_AXI_wvalid(interconnect_axilite_M04_AXI_WVALID),
        .interconnect_axilite_M05_AXI_araddr(interconnect_axilite_M05_AXI_ARADDR),
        .interconnect_axilite_M05_AXI_arprot(interconnect_axilite_M05_AXI_ARPROT),
        .interconnect_axilite_M05_AXI_arready(interconnect_axilite_M05_AXI_ARREADY),
        .interconnect_axilite_M05_AXI_arvalid(interconnect_axilite_M05_AXI_ARVALID),
        .interconnect_axilite_M05_AXI_awaddr(interconnect_axilite_M05_AXI_AWADDR),
        .interconnect_axilite_M05_AXI_awprot(interconnect_axilite_M05_AXI_AWPROT),
        .interconnect_axilite_M05_AXI_awready(interconnect_axilite_M05_AXI_AWREADY),
        .interconnect_axilite_M05_AXI_awvalid(interconnect_axilite_M05_AXI_AWVALID),
        .interconnect_axilite_M05_AXI_bready(interconnect_axilite_M05_AXI_BREADY),
        .interconnect_axilite_M05_AXI_bresp(interconnect_axilite_M05_AXI_BRESP),
        .interconnect_axilite_M05_AXI_bvalid(interconnect_axilite_M05_AXI_BVALID),
        .interconnect_axilite_M05_AXI_rdata(interconnect_axilite_M05_AXI_RDATA),
        .interconnect_axilite_M05_AXI_rready(interconnect_axilite_M05_AXI_RREADY),
        .interconnect_axilite_M05_AXI_rresp(interconnect_axilite_M05_AXI_RRESP),
        .interconnect_axilite_M05_AXI_rvalid(interconnect_axilite_M05_AXI_RVALID),
        .interconnect_axilite_M05_AXI_wdata(interconnect_axilite_M05_AXI_WDATA),
        .interconnect_axilite_M05_AXI_wready(interconnect_axilite_M05_AXI_WREADY),
        .interconnect_axilite_M05_AXI_wstrb(interconnect_axilite_M05_AXI_WSTRB),
        .interconnect_axilite_M05_AXI_wvalid(interconnect_axilite_M05_AXI_WVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_araddr(interconnect_M00_AXI_ARADDR),
        .interconnect_aximm_ddrmem0_M00_AXI_arburst(interconnect_M00_AXI_ARBURST),
        .interconnect_aximm_ddrmem0_M00_AXI_arcache(interconnect_M00_AXI_ARCACHE),
        .interconnect_aximm_ddrmem0_M00_AXI_arlen(interconnect_M00_AXI_ARLEN),
        .interconnect_aximm_ddrmem0_M00_AXI_arlock(interconnect_M00_AXI_ARLOCK),
        .interconnect_aximm_ddrmem0_M00_AXI_arprot(interconnect_M00_AXI_ARPROT),
        .interconnect_aximm_ddrmem0_M00_AXI_arqos(interconnect_M00_AXI_ARQOS),
        .interconnect_aximm_ddrmem0_M00_AXI_arready(interconnect_M00_AXI_ARREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_arsize(interconnect_M00_AXI_ARSIZE),
        .interconnect_aximm_ddrmem0_M00_AXI_arvalid(interconnect_M00_AXI_ARVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_awaddr(interconnect_M00_AXI_AWADDR),
        .interconnect_aximm_ddrmem0_M00_AXI_awburst(interconnect_M00_AXI_AWBURST),
        .interconnect_aximm_ddrmem0_M00_AXI_awcache(interconnect_M00_AXI_AWCACHE),
        .interconnect_aximm_ddrmem0_M00_AXI_awlen(interconnect_M00_AXI_AWLEN),
        .interconnect_aximm_ddrmem0_M00_AXI_awlock(interconnect_M00_AXI_AWLOCK),
        .interconnect_aximm_ddrmem0_M00_AXI_awprot(interconnect_M00_AXI_AWPROT),
        .interconnect_aximm_ddrmem0_M00_AXI_awqos(interconnect_M00_AXI_AWQOS),
        .interconnect_aximm_ddrmem0_M00_AXI_awready(interconnect_M00_AXI_AWREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_awsize(interconnect_M00_AXI_AWSIZE),
        .interconnect_aximm_ddrmem0_M00_AXI_awvalid(interconnect_M00_AXI_AWVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_bready(interconnect_M00_AXI_BREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_bresp(interconnect_M00_AXI_BRESP),
        .interconnect_aximm_ddrmem0_M00_AXI_bvalid(interconnect_M00_AXI_BVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_rdata(interconnect_M00_AXI_RDATA),
        .interconnect_aximm_ddrmem0_M00_AXI_rlast(interconnect_M00_AXI_RLAST),
        .interconnect_aximm_ddrmem0_M00_AXI_rready(interconnect_M00_AXI_RREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_rresp(interconnect_M00_AXI_RRESP),
        .interconnect_aximm_ddrmem0_M00_AXI_rvalid(interconnect_M00_AXI_RVALID),
        .interconnect_aximm_ddrmem0_M00_AXI_wdata(interconnect_M00_AXI_WDATA),
        .interconnect_aximm_ddrmem0_M00_AXI_wlast(interconnect_M00_AXI_WLAST),
        .interconnect_aximm_ddrmem0_M00_AXI_wready(interconnect_M00_AXI_WREADY),
        .interconnect_aximm_ddrmem0_M00_AXI_wstrb(interconnect_M00_AXI_WSTRB),
        .interconnect_aximm_ddrmem0_M00_AXI_wvalid(interconnect_M00_AXI_WVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_araddr(interconnect_M00_AXI1_ARADDR),
        .interconnect_aximm_ddrmem1_M00_AXI_arburst(interconnect_M00_AXI1_ARBURST),
        .interconnect_aximm_ddrmem1_M00_AXI_arcache(interconnect_M00_AXI1_ARCACHE),
        .interconnect_aximm_ddrmem1_M00_AXI_arlen(interconnect_M00_AXI1_ARLEN),
        .interconnect_aximm_ddrmem1_M00_AXI_arlock(interconnect_M00_AXI1_ARLOCK),
        .interconnect_aximm_ddrmem1_M00_AXI_arprot(interconnect_M00_AXI1_ARPROT),
        .interconnect_aximm_ddrmem1_M00_AXI_arqos(interconnect_M00_AXI1_ARQOS),
        .interconnect_aximm_ddrmem1_M00_AXI_arready(interconnect_M00_AXI1_ARREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_arsize(interconnect_M00_AXI1_ARSIZE),
        .interconnect_aximm_ddrmem1_M00_AXI_arvalid(interconnect_M00_AXI1_ARVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_awaddr(interconnect_M00_AXI1_AWADDR),
        .interconnect_aximm_ddrmem1_M00_AXI_awburst(interconnect_M00_AXI1_AWBURST),
        .interconnect_aximm_ddrmem1_M00_AXI_awcache(interconnect_M00_AXI1_AWCACHE),
        .interconnect_aximm_ddrmem1_M00_AXI_awlen(interconnect_M00_AXI1_AWLEN),
        .interconnect_aximm_ddrmem1_M00_AXI_awlock(interconnect_M00_AXI1_AWLOCK),
        .interconnect_aximm_ddrmem1_M00_AXI_awprot(interconnect_M00_AXI1_AWPROT),
        .interconnect_aximm_ddrmem1_M00_AXI_awqos(interconnect_M00_AXI1_AWQOS),
        .interconnect_aximm_ddrmem1_M00_AXI_awready(interconnect_M00_AXI1_AWREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_awsize(interconnect_M00_AXI1_AWSIZE),
        .interconnect_aximm_ddrmem1_M00_AXI_awvalid(interconnect_M00_AXI1_AWVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_bready(interconnect_M00_AXI1_BREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_bresp(interconnect_M00_AXI1_BRESP),
        .interconnect_aximm_ddrmem1_M00_AXI_bvalid(interconnect_M00_AXI1_BVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_rdata(interconnect_M00_AXI1_RDATA),
        .interconnect_aximm_ddrmem1_M00_AXI_rlast(interconnect_M00_AXI1_RLAST),
        .interconnect_aximm_ddrmem1_M00_AXI_rready(interconnect_M00_AXI1_RREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_rresp(interconnect_M00_AXI1_RRESP),
        .interconnect_aximm_ddrmem1_M00_AXI_rvalid(interconnect_M00_AXI1_RVALID),
        .interconnect_aximm_ddrmem1_M00_AXI_wdata(interconnect_M00_AXI1_WDATA),
        .interconnect_aximm_ddrmem1_M00_AXI_wlast(interconnect_M00_AXI1_WLAST),
        .interconnect_aximm_ddrmem1_M00_AXI_wready(interconnect_M00_AXI1_WREADY),
        .interconnect_aximm_ddrmem1_M00_AXI_wstrb(interconnect_M00_AXI1_WSTRB),
        .interconnect_aximm_ddrmem1_M00_AXI_wvalid(interconnect_M00_AXI1_WVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_araddr(interconnect_M00_AXI2_ARADDR),
        .interconnect_aximm_ddrmem2_M00_AXI_arburst(interconnect_M00_AXI2_ARBURST),
        .interconnect_aximm_ddrmem2_M00_AXI_arcache(interconnect_M00_AXI2_ARCACHE),
        .interconnect_aximm_ddrmem2_M00_AXI_arlen(interconnect_M00_AXI2_ARLEN),
        .interconnect_aximm_ddrmem2_M00_AXI_arlock(interconnect_M00_AXI2_ARLOCK),
        .interconnect_aximm_ddrmem2_M00_AXI_arprot(interconnect_M00_AXI2_ARPROT),
        .interconnect_aximm_ddrmem2_M00_AXI_arqos(interconnect_M00_AXI2_ARQOS),
        .interconnect_aximm_ddrmem2_M00_AXI_arready(interconnect_M00_AXI2_ARREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_arsize(interconnect_M00_AXI2_ARSIZE),
        .interconnect_aximm_ddrmem2_M00_AXI_arvalid(interconnect_M00_AXI2_ARVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_awaddr(interconnect_M00_AXI2_AWADDR),
        .interconnect_aximm_ddrmem2_M00_AXI_awburst(interconnect_M00_AXI2_AWBURST),
        .interconnect_aximm_ddrmem2_M00_AXI_awcache(interconnect_M00_AXI2_AWCACHE),
        .interconnect_aximm_ddrmem2_M00_AXI_awlen(interconnect_M00_AXI2_AWLEN),
        .interconnect_aximm_ddrmem2_M00_AXI_awlock(interconnect_M00_AXI2_AWLOCK),
        .interconnect_aximm_ddrmem2_M00_AXI_awprot(interconnect_M00_AXI2_AWPROT),
        .interconnect_aximm_ddrmem2_M00_AXI_awqos(interconnect_M00_AXI2_AWQOS),
        .interconnect_aximm_ddrmem2_M00_AXI_awready(interconnect_M00_AXI2_AWREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_awsize(interconnect_M00_AXI2_AWSIZE),
        .interconnect_aximm_ddrmem2_M00_AXI_awvalid(interconnect_M00_AXI2_AWVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_bready(interconnect_M00_AXI2_BREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_bresp(interconnect_M00_AXI2_BRESP),
        .interconnect_aximm_ddrmem2_M00_AXI_bvalid(interconnect_M00_AXI2_BVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_rdata(interconnect_M00_AXI2_RDATA),
        .interconnect_aximm_ddrmem2_M00_AXI_rlast(interconnect_M00_AXI2_RLAST),
        .interconnect_aximm_ddrmem2_M00_AXI_rready(interconnect_M00_AXI2_RREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_rresp(interconnect_M00_AXI2_RRESP),
        .interconnect_aximm_ddrmem2_M00_AXI_rvalid(interconnect_M00_AXI2_RVALID),
        .interconnect_aximm_ddrmem2_M00_AXI_wdata(interconnect_M00_AXI2_WDATA),
        .interconnect_aximm_ddrmem2_M00_AXI_wlast(interconnect_M00_AXI2_WLAST),
        .interconnect_aximm_ddrmem2_M00_AXI_wready(interconnect_M00_AXI2_WREADY),
        .interconnect_aximm_ddrmem2_M00_AXI_wstrb(interconnect_M00_AXI2_WSTRB),
        .interconnect_aximm_ddrmem2_M00_AXI_wvalid(interconnect_M00_AXI2_WVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_araddr(interconnect_M00_AXI3_ARADDR),
        .interconnect_aximm_ddrmem3_M00_AXI_arburst(interconnect_M00_AXI3_ARBURST),
        .interconnect_aximm_ddrmem3_M00_AXI_arcache(interconnect_M00_AXI3_ARCACHE),
        .interconnect_aximm_ddrmem3_M00_AXI_arlen(interconnect_M00_AXI3_ARLEN),
        .interconnect_aximm_ddrmem3_M00_AXI_arlock(interconnect_M00_AXI3_ARLOCK),
        .interconnect_aximm_ddrmem3_M00_AXI_arprot(interconnect_M00_AXI3_ARPROT),
        .interconnect_aximm_ddrmem3_M00_AXI_arqos(interconnect_M00_AXI3_ARQOS),
        .interconnect_aximm_ddrmem3_M00_AXI_arready(interconnect_M00_AXI3_ARREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_arsize(interconnect_M00_AXI3_ARSIZE),
        .interconnect_aximm_ddrmem3_M00_AXI_arvalid(interconnect_M00_AXI3_ARVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_awaddr(interconnect_M00_AXI3_AWADDR),
        .interconnect_aximm_ddrmem3_M00_AXI_awburst(interconnect_M00_AXI3_AWBURST),
        .interconnect_aximm_ddrmem3_M00_AXI_awcache(interconnect_M00_AXI3_AWCACHE),
        .interconnect_aximm_ddrmem3_M00_AXI_awlen(interconnect_M00_AXI3_AWLEN),
        .interconnect_aximm_ddrmem3_M00_AXI_awlock(interconnect_M00_AXI3_AWLOCK),
        .interconnect_aximm_ddrmem3_M00_AXI_awprot(interconnect_M00_AXI3_AWPROT),
        .interconnect_aximm_ddrmem3_M00_AXI_awqos(interconnect_M00_AXI3_AWQOS),
        .interconnect_aximm_ddrmem3_M00_AXI_awready(interconnect_M00_AXI3_AWREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_awsize(interconnect_M00_AXI3_AWSIZE),
        .interconnect_aximm_ddrmem3_M00_AXI_awvalid(interconnect_M00_AXI3_AWVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_bready(interconnect_M00_AXI3_BREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_bresp(interconnect_M00_AXI3_BRESP),
        .interconnect_aximm_ddrmem3_M00_AXI_bvalid(interconnect_M00_AXI3_BVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_rdata(interconnect_M00_AXI3_RDATA),
        .interconnect_aximm_ddrmem3_M00_AXI_rlast(interconnect_M00_AXI3_RLAST),
        .interconnect_aximm_ddrmem3_M00_AXI_rready(interconnect_M00_AXI3_RREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_rresp(interconnect_M00_AXI3_RRESP),
        .interconnect_aximm_ddrmem3_M00_AXI_rvalid(interconnect_M00_AXI3_RVALID),
        .interconnect_aximm_ddrmem3_M00_AXI_wdata(interconnect_M00_AXI3_WDATA),
        .interconnect_aximm_ddrmem3_M00_AXI_wlast(interconnect_M00_AXI3_WLAST),
        .interconnect_aximm_ddrmem3_M00_AXI_wready(interconnect_M00_AXI3_WREADY),
        .interconnect_aximm_ddrmem3_M00_AXI_wstrb(interconnect_M00_AXI3_WSTRB),
        .interconnect_aximm_ddrmem3_M00_AXI_wvalid(interconnect_M00_AXI3_WVALID),
        .logic_ddrcalib_op_Res(memory_Res),
        .logic_reset_op_Res(expanded_resets_Res),
        .psreset_ddrmem_n_2_interconnect_aresetn(expanded_resets_interconnect_aresetn3),
        .psreset_ddrmem_n_3_interconnect_aresetn(expanded_resets_interconnect_aresetn4),
        .psreset_ddrmem_n_4_interconnect_aresetn(expanded_resets_interconnect_aresetn5),
        .psreset_ddrmem_n_interconnect_aresetn(M03_ARESETN_1),
        .psreset_gate_pr_control_interconnect_aresetn(expanded_resets_interconnect_aresetn1));
  pr_support_expanded_imp_14IOC6O pr_support_expanded
       (.bscanid(pr_support_expanded_bscanid),
        .capture(capture_1),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .concast_flash_tri_dout(pr_support_expanded_dout3),
        .concat_flash_dq_o_dout(pr_support_expanded_dout),
        .ddrmem_0_c0_ddr4_ui_clk(memory_c0_ddr4_ui_clk),
        .debug_bridge_xsdbm_update(update_1),
        .drck(drck_1),
        .flash_programmer_io0_o(pr_support_expanded_io0_o),
        .flash_programmer_io0_t(pr_support_expanded_io0_t),
        .flash_programmer_io1_o(pr_support_expanded_io1_o),
        .flash_programmer_io1_t(pr_support_expanded_io1_t),
        .flash_programmer_io2_o(pr_support_expanded_io2_o),
        .flash_programmer_io2_t(pr_support_expanded_io2_t),
        .flash_programmer_io3_o(pr_support_expanded_io3_o),
        .flash_programmer_io3_t(pr_support_expanded_io3_t),
        .flash_programmer_sck_o(pr_support_expanded_sck_o),
        .flash_programmer_ss_t(pr_support_expanded_ss_t),
        .interconnect_axilite_M00_AXI_araddr(interconnect_axilite_M00_AXI_ARADDR),
        .interconnect_axilite_M00_AXI_arready(interconnect_axilite_M00_AXI_ARREADY),
        .interconnect_axilite_M00_AXI_arvalid(interconnect_axilite_M00_AXI_ARVALID),
        .interconnect_axilite_M00_AXI_awaddr(interconnect_axilite_M00_AXI_AWADDR),
        .interconnect_axilite_M00_AXI_awready(interconnect_axilite_M00_AXI_AWREADY),
        .interconnect_axilite_M00_AXI_awvalid(interconnect_axilite_M00_AXI_AWVALID),
        .interconnect_axilite_M00_AXI_bready(interconnect_axilite_M00_AXI_BREADY),
        .interconnect_axilite_M00_AXI_bresp(interconnect_axilite_M00_AXI_BRESP),
        .interconnect_axilite_M00_AXI_bvalid(interconnect_axilite_M00_AXI_BVALID),
        .interconnect_axilite_M00_AXI_rdata(interconnect_axilite_M00_AXI_RDATA),
        .interconnect_axilite_M00_AXI_rready(interconnect_axilite_M00_AXI_RREADY),
        .interconnect_axilite_M00_AXI_rresp(interconnect_axilite_M00_AXI_RRESP),
        .interconnect_axilite_M00_AXI_rvalid(interconnect_axilite_M00_AXI_RVALID),
        .interconnect_axilite_M00_AXI_wdata(interconnect_axilite_M00_AXI_WDATA),
        .interconnect_axilite_M00_AXI_wready(interconnect_axilite_M00_AXI_WREADY),
        .interconnect_axilite_M00_AXI_wstrb(interconnect_axilite_M00_AXI_WSTRB),
        .interconnect_axilite_M00_AXI_wvalid(interconnect_axilite_M00_AXI_WVALID),
        .iob_static_emc_clk_out(ext_spi_clk_1),
        .iob_static_io0_i(io0_i_1),
        .iob_static_io1_i(io1_i_1),
        .iob_static_io2_i(io2_i_1),
        .iob_static_io3_i(io3_i_1),
        .psreset_gate_pr_control_interconnect_aresetn(expanded_resets_interconnect_aresetn1),
        .reset(reset_1),
        .runtest(runtest_1),
        .sel(sel_1),
        .shift(shift_1),
        .slice_ss_0_Dout(pr_support_expanded_Dout1),
        .slice_ss_1_Dout(pr_support_expanded_Dout2),
        .tck(tck_1),
        .tdi(tdi_1),
        .tdo(pr_support_expanded_tdo),
        .tms(tms_1));
  (* \HD.RECONFIGURABLE  = 0 *) 
  xcl_design_u_ocl_region_0 u_ocl_region
       (.CONTROL_CLK(slowest_sync_clk_1),
        .CONTROL_RESET(expanded_resets_interconnect_aresetn1),
        .DATA_CLK(M01_ACLK_1),
        .DATA_RESET(M01_ARESETN_1),
        .KERNEL_CLK2(slowest_sync_clk_3),
        .KERNEL_RESET2(expanded_resets_interconnect_aresetn2),
        .M00_AXI_araddr(u_ocl_region_M00_AXI_ARADDR),
        .M00_AXI_arburst(u_ocl_region_M00_AXI_ARBURST),
        .M00_AXI_arcache(u_ocl_region_M00_AXI_ARCACHE),
        .M00_AXI_arid(u_ocl_region_M00_AXI_ARID),
        .M00_AXI_arlen(u_ocl_region_M00_AXI_ARLEN),
        .M00_AXI_arlock(u_ocl_region_M00_AXI_ARLOCK),
        .M00_AXI_arprot(u_ocl_region_M00_AXI_ARPROT),
        .M00_AXI_arqos(u_ocl_region_M00_AXI_ARQOS),
        .M00_AXI_arready(u_ocl_region_M00_AXI_ARREADY),
        .M00_AXI_arsize(u_ocl_region_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(u_ocl_region_M00_AXI_ARVALID),
        .M00_AXI_awaddr(u_ocl_region_M00_AXI_AWADDR),
        .M00_AXI_awburst(u_ocl_region_M00_AXI_AWBURST),
        .M00_AXI_awcache(u_ocl_region_M00_AXI_AWCACHE),
        .M00_AXI_awid(u_ocl_region_M00_AXI_AWID),
        .M00_AXI_awlen(u_ocl_region_M00_AXI_AWLEN),
        .M00_AXI_awlock(u_ocl_region_M00_AXI_AWLOCK),
        .M00_AXI_awprot(u_ocl_region_M00_AXI_AWPROT),
        .M00_AXI_awqos(u_ocl_region_M00_AXI_AWQOS),
        .M00_AXI_awready(u_ocl_region_M00_AXI_AWREADY),
        .M00_AXI_awsize(u_ocl_region_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(u_ocl_region_M00_AXI_AWVALID),
        .M00_AXI_bid(u_ocl_region_M00_AXI_BID),
        .M00_AXI_bready(u_ocl_region_M00_AXI_BREADY),
        .M00_AXI_bresp(u_ocl_region_M00_AXI_BRESP),
        .M00_AXI_bvalid(u_ocl_region_M00_AXI_BVALID),
        .M00_AXI_rdata(u_ocl_region_M00_AXI_RDATA),
        .M00_AXI_rid(u_ocl_region_M00_AXI_RID),
        .M00_AXI_rlast(u_ocl_region_M00_AXI_RLAST),
        .M00_AXI_rready(u_ocl_region_M00_AXI_RREADY),
        .M00_AXI_rresp(u_ocl_region_M00_AXI_RRESP),
        .M00_AXI_rvalid(u_ocl_region_M00_AXI_RVALID),
        .M00_AXI_wdata(u_ocl_region_M00_AXI_WDATA),
        .M00_AXI_wlast(u_ocl_region_M00_AXI_WLAST),
        .M00_AXI_wready(u_ocl_region_M00_AXI_WREADY),
        .M00_AXI_wstrb(u_ocl_region_M00_AXI_WSTRB),
        .M00_AXI_wvalid(u_ocl_region_M00_AXI_WVALID),
        .M01_AXI_araddr(u_ocl_region_M01_AXI_ARADDR),
        .M01_AXI_arburst(u_ocl_region_M01_AXI_ARBURST),
        .M01_AXI_arcache(u_ocl_region_M01_AXI_ARCACHE),
        .M01_AXI_arid(u_ocl_region_M01_AXI_ARID),
        .M01_AXI_arlen(u_ocl_region_M01_AXI_ARLEN),
        .M01_AXI_arlock(u_ocl_region_M01_AXI_ARLOCK),
        .M01_AXI_arprot(u_ocl_region_M01_AXI_ARPROT),
        .M01_AXI_arqos(u_ocl_region_M01_AXI_ARQOS),
        .M01_AXI_arready(u_ocl_region_M01_AXI_ARREADY),
        .M01_AXI_arsize(u_ocl_region_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(u_ocl_region_M01_AXI_ARVALID),
        .M01_AXI_awaddr(u_ocl_region_M01_AXI_AWADDR),
        .M01_AXI_awburst(u_ocl_region_M01_AXI_AWBURST),
        .M01_AXI_awcache(u_ocl_region_M01_AXI_AWCACHE),
        .M01_AXI_awid(u_ocl_region_M01_AXI_AWID),
        .M01_AXI_awlen(u_ocl_region_M01_AXI_AWLEN),
        .M01_AXI_awlock(u_ocl_region_M01_AXI_AWLOCK),
        .M01_AXI_awprot(u_ocl_region_M01_AXI_AWPROT),
        .M01_AXI_awqos(u_ocl_region_M01_AXI_AWQOS),
        .M01_AXI_awready(u_ocl_region_M01_AXI_AWREADY),
        .M01_AXI_awsize(u_ocl_region_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(u_ocl_region_M01_AXI_AWVALID),
        .M01_AXI_bid(u_ocl_region_M01_AXI_BID),
        .M01_AXI_bready(u_ocl_region_M01_AXI_BREADY),
        .M01_AXI_bresp(u_ocl_region_M01_AXI_BRESP),
        .M01_AXI_bvalid(u_ocl_region_M01_AXI_BVALID),
        .M01_AXI_rdata(u_ocl_region_M01_AXI_RDATA),
        .M01_AXI_rid(u_ocl_region_M01_AXI_RID),
        .M01_AXI_rlast(u_ocl_region_M01_AXI_RLAST),
        .M01_AXI_rready(u_ocl_region_M01_AXI_RREADY),
        .M01_AXI_rresp(u_ocl_region_M01_AXI_RRESP),
        .M01_AXI_rvalid(u_ocl_region_M01_AXI_RVALID),
        .M01_AXI_wdata(u_ocl_region_M01_AXI_WDATA),
        .M01_AXI_wlast(u_ocl_region_M01_AXI_WLAST),
        .M01_AXI_wready(u_ocl_region_M01_AXI_WREADY),
        .M01_AXI_wstrb(u_ocl_region_M01_AXI_WSTRB),
        .M01_AXI_wvalid(u_ocl_region_M01_AXI_WVALID),
        .M02_AXI_araddr(u_ocl_region_M02_AXI_ARADDR),
        .M02_AXI_arburst(u_ocl_region_M02_AXI_ARBURST),
        .M02_AXI_arcache(u_ocl_region_M02_AXI_ARCACHE),
        .M02_AXI_arid(u_ocl_region_M02_AXI_ARID),
        .M02_AXI_arlen(u_ocl_region_M02_AXI_ARLEN),
        .M02_AXI_arlock(u_ocl_region_M02_AXI_ARLOCK),
        .M02_AXI_arprot(u_ocl_region_M02_AXI_ARPROT),
        .M02_AXI_arqos(u_ocl_region_M02_AXI_ARQOS),
        .M02_AXI_arready(u_ocl_region_M02_AXI_ARREADY),
        .M02_AXI_arsize(u_ocl_region_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(u_ocl_region_M02_AXI_ARVALID),
        .M02_AXI_awaddr(u_ocl_region_M02_AXI_AWADDR),
        .M02_AXI_awburst(u_ocl_region_M02_AXI_AWBURST),
        .M02_AXI_awcache(u_ocl_region_M02_AXI_AWCACHE),
        .M02_AXI_awid(u_ocl_region_M02_AXI_AWID),
        .M02_AXI_awlen(u_ocl_region_M02_AXI_AWLEN),
        .M02_AXI_awlock(u_ocl_region_M02_AXI_AWLOCK),
        .M02_AXI_awprot(u_ocl_region_M02_AXI_AWPROT),
        .M02_AXI_awqos(u_ocl_region_M02_AXI_AWQOS),
        .M02_AXI_awready(u_ocl_region_M02_AXI_AWREADY),
        .M02_AXI_awsize(u_ocl_region_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(u_ocl_region_M02_AXI_AWVALID),
        .M02_AXI_bid(u_ocl_region_M02_AXI_BID),
        .M02_AXI_bready(u_ocl_region_M02_AXI_BREADY),
        .M02_AXI_bresp(u_ocl_region_M02_AXI_BRESP),
        .M02_AXI_bvalid(u_ocl_region_M02_AXI_BVALID),
        .M02_AXI_rdata(u_ocl_region_M02_AXI_RDATA),
        .M02_AXI_rid(u_ocl_region_M02_AXI_RID),
        .M02_AXI_rlast(u_ocl_region_M02_AXI_RLAST),
        .M02_AXI_rready(u_ocl_region_M02_AXI_RREADY),
        .M02_AXI_rresp(u_ocl_region_M02_AXI_RRESP),
        .M02_AXI_rvalid(u_ocl_region_M02_AXI_RVALID),
        .M02_AXI_wdata(u_ocl_region_M02_AXI_WDATA),
        .M02_AXI_wlast(u_ocl_region_M02_AXI_WLAST),
        .M02_AXI_wready(u_ocl_region_M02_AXI_WREADY),
        .M02_AXI_wstrb(u_ocl_region_M02_AXI_WSTRB),
        .M02_AXI_wvalid(u_ocl_region_M02_AXI_WVALID),
        .M03_AXI_araddr(u_ocl_region_M03_AXI_ARADDR),
        .M03_AXI_arburst(u_ocl_region_M03_AXI_ARBURST),
        .M03_AXI_arcache(u_ocl_region_M03_AXI_ARCACHE),
        .M03_AXI_arid(u_ocl_region_M03_AXI_ARID),
        .M03_AXI_arlen(u_ocl_region_M03_AXI_ARLEN),
        .M03_AXI_arlock(u_ocl_region_M03_AXI_ARLOCK),
        .M03_AXI_arprot(u_ocl_region_M03_AXI_ARPROT),
        .M03_AXI_arqos(u_ocl_region_M03_AXI_ARQOS),
        .M03_AXI_arready(u_ocl_region_M03_AXI_ARREADY),
        .M03_AXI_arsize(u_ocl_region_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(u_ocl_region_M03_AXI_ARVALID),
        .M03_AXI_awaddr(u_ocl_region_M03_AXI_AWADDR),
        .M03_AXI_awburst(u_ocl_region_M03_AXI_AWBURST),
        .M03_AXI_awcache(u_ocl_region_M03_AXI_AWCACHE),
        .M03_AXI_awid(u_ocl_region_M03_AXI_AWID),
        .M03_AXI_awlen(u_ocl_region_M03_AXI_AWLEN),
        .M03_AXI_awlock(u_ocl_region_M03_AXI_AWLOCK),
        .M03_AXI_awprot(u_ocl_region_M03_AXI_AWPROT),
        .M03_AXI_awqos(u_ocl_region_M03_AXI_AWQOS),
        .M03_AXI_awready(u_ocl_region_M03_AXI_AWREADY),
        .M03_AXI_awsize(u_ocl_region_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(u_ocl_region_M03_AXI_AWVALID),
        .M03_AXI_bid(u_ocl_region_M03_AXI_BID),
        .M03_AXI_bready(u_ocl_region_M03_AXI_BREADY),
        .M03_AXI_bresp(u_ocl_region_M03_AXI_BRESP),
        .M03_AXI_bvalid(u_ocl_region_M03_AXI_BVALID),
        .M03_AXI_rdata(u_ocl_region_M03_AXI_RDATA),
        .M03_AXI_rid(u_ocl_region_M03_AXI_RID),
        .M03_AXI_rlast(u_ocl_region_M03_AXI_RLAST),
        .M03_AXI_rready(u_ocl_region_M03_AXI_RREADY),
        .M03_AXI_rresp(u_ocl_region_M03_AXI_RRESP),
        .M03_AXI_rvalid(u_ocl_region_M03_AXI_RVALID),
        .M03_AXI_wdata(u_ocl_region_M03_AXI_WDATA),
        .M03_AXI_wlast(u_ocl_region_M03_AXI_WLAST),
        .M03_AXI_wready(u_ocl_region_M03_AXI_WREADY),
        .M03_AXI_wstrb(u_ocl_region_M03_AXI_WSTRB),
        .M03_AXI_wvalid(u_ocl_region_M03_AXI_WVALID),
        .S_AXI_araddr(interconnect_axilite_M06_AXI_ARADDR),
        .S_AXI_arprot(interconnect_axilite_M06_AXI_ARPROT),
        .S_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_arready(interconnect_axilite_M06_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_M06_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_M06_AXI_AWADDR),
        .S_AXI_awprot(interconnect_axilite_M06_AXI_AWPROT),
        .S_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_awready(interconnect_axilite_M06_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_M06_AXI_AWVALID),
        .S_AXI_bready(interconnect_axilite_M06_AXI_BREADY),
        .S_AXI_bresp(interconnect_axilite_M06_AXI_BRESP),
        .S_AXI_bvalid(interconnect_axilite_M06_AXI_BVALID),
        .S_AXI_rdata(interconnect_axilite_M06_AXI_RDATA),
        .S_AXI_rready(interconnect_axilite_M06_AXI_RREADY),
        .S_AXI_rresp(interconnect_axilite_M06_AXI_RRESP),
        .S_AXI_rvalid(interconnect_axilite_M06_AXI_RVALID),
        .S_AXI_wdata(interconnect_axilite_M06_AXI_WDATA),
        .S_AXI_wready(interconnect_axilite_M06_AXI_WREADY),
        .S_AXI_wstrb(interconnect_axilite_M06_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_M06_AXI_WVALID));
endmodule

module expanded_resets_imp_1KYY8TE
   (clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    ddrmem_0_c0_ddr4_ui_clk,
    ddrmem_0_c0_ddr4_ui_clk_sync_rst,
    ddrmem_1_c0_ddr4_ui_clk,
    ddrmem_1_c0_ddr4_ui_clk_sync_rst,
    ddrmem_2_c0_ddr4_ui_clk,
    ddrmem_2_c0_ddr4_ui_clk_sync_rst,
    ddrmem_3_c0_ddr4_ui_clk,
    ddrmem_3_c0_ddr4_ui_clk_sync_rst,
    dma_pcie_axi_aclk,
    dma_pcie_user_lnk_up,
    iob_static_perst_n_out,
    logic_reset_op_Res,
    psreset_ddrmem_n_2_interconnect_aresetn,
    psreset_ddrmem_n_3_interconnect_aresetn,
    psreset_ddrmem_n_4_interconnect_aresetn,
    psreset_ddrmem_n_interconnect_aresetn,
    psreset_gate_pr_apmclk_interconnect_aresetn,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    psreset_gate_pr_kernel2_interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_aresetn,
    slice_reset_kernel_pr_Dout);
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked;
  input clkwiz_sysclks_clk_out1;
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked;
  input ddrmem_0_c0_ddr4_ui_clk;
  input ddrmem_0_c0_ddr4_ui_clk_sync_rst;
  input ddrmem_1_c0_ddr4_ui_clk;
  input ddrmem_1_c0_ddr4_ui_clk_sync_rst;
  input ddrmem_2_c0_ddr4_ui_clk;
  input ddrmem_2_c0_ddr4_ui_clk_sync_rst;
  input ddrmem_3_c0_ddr4_ui_clk;
  input ddrmem_3_c0_ddr4_ui_clk_sync_rst;
  input dma_pcie_axi_aclk;
  input dma_pcie_user_lnk_up;
  input [0:0]iob_static_perst_n_out;
  output [0:0]logic_reset_op_Res;
  output [0:0]psreset_ddrmem_n_2_interconnect_aresetn;
  output [0:0]psreset_ddrmem_n_3_interconnect_aresetn;
  output [0:0]psreset_ddrmem_n_4_interconnect_aresetn;
  output [0:0]psreset_ddrmem_n_interconnect_aresetn;
  output [0:0]psreset_gate_pr_apmclk_interconnect_aresetn;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [0:0]psreset_gate_pr_data_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel2_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  input [0:0]slice_reset_kernel_pr_Dout;

  wire [0:0]Op1_1;
  wire aux_reset_in1_1;
  wire aux_reset_in_1;
  wire clkwiz_kernel_clk_out1;
  wire dcm_locked_1;
  wire dcm_locked_2;
  wire dcm_locked_3;
  wire dcm_locked_4;
  wire ext_reset_in1_1;
  wire ext_reset_in4_1;
  wire [0:0]ext_reset_in_1;
  wire [0:0]logic_reset_op_Res;
  wire [0:0]psreset_ddrmem_n_2_interconnect_aresetn;
  wire [0:0]psreset_ddrmem_n_3_interconnect_aresetn;
  wire [0:0]psreset_ddrmem_n_4_interconnect_aresetn;
  wire [0:0]psreset_ddrmem_n_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_apmclk_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_data_interconnect_aresetn1;
  wire [0:0]psreset_gate_pr_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel2_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  wire slowest_sync_clk2_1;
  wire slowest_sync_clk3_1;
  wire slowest_sync_clk4_1;
  wire slowest_sync_clk5_1;
  wire slowest_sync_clk_1;
  wire slowest_sync_clk_2;
  wire slowest_sync_clk_3;
  wire slowest_sync_clk_4;

  assign Op1_1 = iob_static_perst_n_out[0];
  assign aux_reset_in1_1 = ddrmem_2_c0_ddr4_ui_clk_sync_rst;
  assign aux_reset_in_1 = ddrmem_1_c0_ddr4_ui_clk_sync_rst;
  assign dcm_locked_1 = clkwiz_kernel_locked;
  assign dcm_locked_2 = clkwiz_sysclks_locked;
  assign dcm_locked_3 = dma_pcie_user_lnk_up;
  assign dcm_locked_4 = clkwiz_kernel2_locked;
  assign ext_reset_in1_1 = ddrmem_0_c0_ddr4_ui_clk_sync_rst;
  assign ext_reset_in4_1 = ddrmem_3_c0_ddr4_ui_clk_sync_rst;
  assign ext_reset_in_1 = slice_reset_kernel_pr_Dout[0];
  assign psreset_gate_pr_control_interconnect_aresetn[0] = psreset_gate_pr_interconnect_aresetn;
  assign psreset_gate_pr_data_interconnect_aresetn[0] = psreset_gate_pr_data_interconnect_aresetn1;
  assign slowest_sync_clk2_1 = ddrmem_0_c0_ddr4_ui_clk;
  assign slowest_sync_clk3_1 = ddrmem_1_c0_ddr4_ui_clk;
  assign slowest_sync_clk4_1 = ddrmem_2_c0_ddr4_ui_clk;
  assign slowest_sync_clk5_1 = ddrmem_3_c0_ddr4_ui_clk;
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  assign slowest_sync_clk_2 = clkwiz_sysclks_clk_out1;
  assign slowest_sync_clk_3 = dma_pcie_axi_aclk;
  assign slowest_sync_clk_4 = clkwiz_kernel2_clk_out1;
  xcl_design_logic_reset_op_0 logic_reset_op
       (.Op1(Op1_1),
        .Res(logic_reset_op_Res));
  xcl_design_psreset_ddrmem_n_0 psreset_ddrmem_n
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in1_1),
        .interconnect_aresetn(psreset_ddrmem_n_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk2_1));
  xcl_design_psreset_ddrmem_n_2_0 psreset_ddrmem_n_2
       (.aux_reset_in(aux_reset_in1_1),
        .dcm_locked(1'b1),
        .ext_reset_in(aux_reset_in_1),
        .interconnect_aresetn(psreset_ddrmem_n_2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk3_1));
  xcl_design_psreset_ddrmem_n_3_0 psreset_ddrmem_n_3
       (.aux_reset_in(ext_reset_in4_1),
        .dcm_locked(1'b1),
        .ext_reset_in(aux_reset_in1_1),
        .interconnect_aresetn(psreset_ddrmem_n_3_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk4_1));
  xcl_design_psreset_ddrmem_n_4_0 psreset_ddrmem_n_4
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in4_1),
        .interconnect_aresetn(psreset_ddrmem_n_4_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk5_1));
  xcl_design_psreset_gate_pr_apmclk_0 psreset_gate_pr_apmclk
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_2),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_apmclk_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_2));
  xcl_design_psreset_gate_pr_control_0 psreset_gate_pr_control
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_2),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_1));
  xcl_design_psreset_gate_pr_data_0 psreset_gate_pr_data
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_3),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_data_interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_3));
  xcl_design_psreset_gate_pr_kernel_0 psreset_gate_pr_kernel
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_kernel_clk_out1));
  xcl_design_psreset_gate_pr_kernel2_0 psreset_gate_pr_kernel2
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_4),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_4));
endmodule

module featureid_imp_1OS8HUC
   (clkwiz_sysclks_clk_out2,
    interconnect_axilite_static_M02_AXI_araddr,
    interconnect_axilite_static_M02_AXI_arready,
    interconnect_axilite_static_M02_AXI_arvalid,
    interconnect_axilite_static_M02_AXI_awaddr,
    interconnect_axilite_static_M02_AXI_awready,
    interconnect_axilite_static_M02_AXI_awvalid,
    interconnect_axilite_static_M02_AXI_bready,
    interconnect_axilite_static_M02_AXI_bresp,
    interconnect_axilite_static_M02_AXI_bvalid,
    interconnect_axilite_static_M02_AXI_rdata,
    interconnect_axilite_static_M02_AXI_rready,
    interconnect_axilite_static_M02_AXI_rresp,
    interconnect_axilite_static_M02_AXI_rvalid,
    interconnect_axilite_static_M02_AXI_wdata,
    interconnect_axilite_static_M02_AXI_wready,
    interconnect_axilite_static_M02_AXI_wstrb,
    interconnect_axilite_static_M02_AXI_wvalid,
    psreset_ctrlclk_interconnect_aresetn);
  input clkwiz_sysclks_clk_out2;
  input [31:0]interconnect_axilite_static_M02_AXI_araddr;
  output [0:0]interconnect_axilite_static_M02_AXI_arready;
  input [0:0]interconnect_axilite_static_M02_AXI_arvalid;
  input [31:0]interconnect_axilite_static_M02_AXI_awaddr;
  output [0:0]interconnect_axilite_static_M02_AXI_awready;
  input [0:0]interconnect_axilite_static_M02_AXI_awvalid;
  input [0:0]interconnect_axilite_static_M02_AXI_bready;
  output [1:0]interconnect_axilite_static_M02_AXI_bresp;
  output [0:0]interconnect_axilite_static_M02_AXI_bvalid;
  output [31:0]interconnect_axilite_static_M02_AXI_rdata;
  input [0:0]interconnect_axilite_static_M02_AXI_rready;
  output [1:0]interconnect_axilite_static_M02_AXI_rresp;
  output [0:0]interconnect_axilite_static_M02_AXI_rvalid;
  input [31:0]interconnect_axilite_static_M02_AXI_wdata;
  output [0:0]interconnect_axilite_static_M02_AXI_wready;
  input [3:0]interconnect_axilite_static_M02_AXI_wstrb;
  input [0:0]interconnect_axilite_static_M02_AXI_wvalid;
  input [0:0]psreset_ctrlclk_interconnect_aresetn;

  wire [31:0]S_AXI_1_ARADDR;
  wire S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [31:0]const_featureid_high_dout;
  wire [31:0]const_featureid_low_dout;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;

  assign S_AXI_1_ARADDR = interconnect_axilite_static_M02_AXI_araddr[31:0];
  assign S_AXI_1_ARVALID = interconnect_axilite_static_M02_AXI_arvalid[0];
  assign S_AXI_1_AWADDR = interconnect_axilite_static_M02_AXI_awaddr[31:0];
  assign S_AXI_1_AWVALID = interconnect_axilite_static_M02_AXI_awvalid[0];
  assign S_AXI_1_BREADY = interconnect_axilite_static_M02_AXI_bready[0];
  assign S_AXI_1_RREADY = interconnect_axilite_static_M02_AXI_rready[0];
  assign S_AXI_1_WDATA = interconnect_axilite_static_M02_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = interconnect_axilite_static_M02_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = interconnect_axilite_static_M02_AXI_wvalid[0];
  assign interconnect_axilite_static_M02_AXI_arready[0] = S_AXI_1_ARREADY;
  assign interconnect_axilite_static_M02_AXI_awready[0] = S_AXI_1_AWREADY;
  assign interconnect_axilite_static_M02_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign interconnect_axilite_static_M02_AXI_bvalid[0] = S_AXI_1_BVALID;
  assign interconnect_axilite_static_M02_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign interconnect_axilite_static_M02_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign interconnect_axilite_static_M02_AXI_rvalid[0] = S_AXI_1_RVALID;
  assign interconnect_axilite_static_M02_AXI_wready[0] = S_AXI_1_WREADY;
  assign s_axi_aclk_1 = clkwiz_sysclks_clk_out2;
  assign s_axi_aresetn_1 = psreset_ctrlclk_interconnect_aresetn[0];
  xcl_design_const_featureid_high_0 const_featureid_high
       (.dout(const_featureid_high_dout));
  xcl_design_const_featureid_low_0 const_featureid_low
       (.dout(const_featureid_low_dout));
  xcl_design_gpio_featureid_0 gpio_featureid
       (.gpio2_io_i(const_featureid_high_dout),
        .gpio_io_i(const_featureid_low_dout),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(S_AXI_1_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR[8:0]),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
endmodule

module interconnect_imp_1XZEBA9
   (clkwiz_kernel_clk_out1,
    clkwiz_sysclks_clk_out1,
    ddrmem_0_c0_ddr4_ui_clk,
    ddrmem_1_c0_ddr4_ui_clk,
    ddrmem_2_c0_ddr4_ui_clk,
    ddrmem_3_c0_ddr4_ui_clk,
    dma_pcie_axi_aclk,
    interconnect_aximm_ddrmem0_M00_AXI_araddr,
    interconnect_aximm_ddrmem0_M00_AXI_arburst,
    interconnect_aximm_ddrmem0_M00_AXI_arcache,
    interconnect_aximm_ddrmem0_M00_AXI_arlen,
    interconnect_aximm_ddrmem0_M00_AXI_arlock,
    interconnect_aximm_ddrmem0_M00_AXI_arprot,
    interconnect_aximm_ddrmem0_M00_AXI_arqos,
    interconnect_aximm_ddrmem0_M00_AXI_arready,
    interconnect_aximm_ddrmem0_M00_AXI_arsize,
    interconnect_aximm_ddrmem0_M00_AXI_arvalid,
    interconnect_aximm_ddrmem0_M00_AXI_awaddr,
    interconnect_aximm_ddrmem0_M00_AXI_awburst,
    interconnect_aximm_ddrmem0_M00_AXI_awcache,
    interconnect_aximm_ddrmem0_M00_AXI_awlen,
    interconnect_aximm_ddrmem0_M00_AXI_awlock,
    interconnect_aximm_ddrmem0_M00_AXI_awprot,
    interconnect_aximm_ddrmem0_M00_AXI_awqos,
    interconnect_aximm_ddrmem0_M00_AXI_awready,
    interconnect_aximm_ddrmem0_M00_AXI_awsize,
    interconnect_aximm_ddrmem0_M00_AXI_awvalid,
    interconnect_aximm_ddrmem0_M00_AXI_bready,
    interconnect_aximm_ddrmem0_M00_AXI_bresp,
    interconnect_aximm_ddrmem0_M00_AXI_bvalid,
    interconnect_aximm_ddrmem0_M00_AXI_rdata,
    interconnect_aximm_ddrmem0_M00_AXI_rlast,
    interconnect_aximm_ddrmem0_M00_AXI_rready,
    interconnect_aximm_ddrmem0_M00_AXI_rresp,
    interconnect_aximm_ddrmem0_M00_AXI_rvalid,
    interconnect_aximm_ddrmem0_M00_AXI_wdata,
    interconnect_aximm_ddrmem0_M00_AXI_wlast,
    interconnect_aximm_ddrmem0_M00_AXI_wready,
    interconnect_aximm_ddrmem0_M00_AXI_wstrb,
    interconnect_aximm_ddrmem0_M00_AXI_wvalid,
    interconnect_aximm_ddrmem1_M00_AXI_araddr,
    interconnect_aximm_ddrmem1_M00_AXI_arburst,
    interconnect_aximm_ddrmem1_M00_AXI_arcache,
    interconnect_aximm_ddrmem1_M00_AXI_arlen,
    interconnect_aximm_ddrmem1_M00_AXI_arlock,
    interconnect_aximm_ddrmem1_M00_AXI_arprot,
    interconnect_aximm_ddrmem1_M00_AXI_arqos,
    interconnect_aximm_ddrmem1_M00_AXI_arready,
    interconnect_aximm_ddrmem1_M00_AXI_arsize,
    interconnect_aximm_ddrmem1_M00_AXI_arvalid,
    interconnect_aximm_ddrmem1_M00_AXI_awaddr,
    interconnect_aximm_ddrmem1_M00_AXI_awburst,
    interconnect_aximm_ddrmem1_M00_AXI_awcache,
    interconnect_aximm_ddrmem1_M00_AXI_awlen,
    interconnect_aximm_ddrmem1_M00_AXI_awlock,
    interconnect_aximm_ddrmem1_M00_AXI_awprot,
    interconnect_aximm_ddrmem1_M00_AXI_awqos,
    interconnect_aximm_ddrmem1_M00_AXI_awready,
    interconnect_aximm_ddrmem1_M00_AXI_awsize,
    interconnect_aximm_ddrmem1_M00_AXI_awvalid,
    interconnect_aximm_ddrmem1_M00_AXI_bready,
    interconnect_aximm_ddrmem1_M00_AXI_bresp,
    interconnect_aximm_ddrmem1_M00_AXI_bvalid,
    interconnect_aximm_ddrmem1_M00_AXI_rdata,
    interconnect_aximm_ddrmem1_M00_AXI_rlast,
    interconnect_aximm_ddrmem1_M00_AXI_rready,
    interconnect_aximm_ddrmem1_M00_AXI_rresp,
    interconnect_aximm_ddrmem1_M00_AXI_rvalid,
    interconnect_aximm_ddrmem1_M00_AXI_wdata,
    interconnect_aximm_ddrmem1_M00_AXI_wlast,
    interconnect_aximm_ddrmem1_M00_AXI_wready,
    interconnect_aximm_ddrmem1_M00_AXI_wstrb,
    interconnect_aximm_ddrmem1_M00_AXI_wvalid,
    interconnect_aximm_ddrmem2_M00_AXI_araddr,
    interconnect_aximm_ddrmem2_M00_AXI_arburst,
    interconnect_aximm_ddrmem2_M00_AXI_arcache,
    interconnect_aximm_ddrmem2_M00_AXI_arlen,
    interconnect_aximm_ddrmem2_M00_AXI_arlock,
    interconnect_aximm_ddrmem2_M00_AXI_arprot,
    interconnect_aximm_ddrmem2_M00_AXI_arqos,
    interconnect_aximm_ddrmem2_M00_AXI_arready,
    interconnect_aximm_ddrmem2_M00_AXI_arsize,
    interconnect_aximm_ddrmem2_M00_AXI_arvalid,
    interconnect_aximm_ddrmem2_M00_AXI_awaddr,
    interconnect_aximm_ddrmem2_M00_AXI_awburst,
    interconnect_aximm_ddrmem2_M00_AXI_awcache,
    interconnect_aximm_ddrmem2_M00_AXI_awlen,
    interconnect_aximm_ddrmem2_M00_AXI_awlock,
    interconnect_aximm_ddrmem2_M00_AXI_awprot,
    interconnect_aximm_ddrmem2_M00_AXI_awqos,
    interconnect_aximm_ddrmem2_M00_AXI_awready,
    interconnect_aximm_ddrmem2_M00_AXI_awsize,
    interconnect_aximm_ddrmem2_M00_AXI_awvalid,
    interconnect_aximm_ddrmem2_M00_AXI_bready,
    interconnect_aximm_ddrmem2_M00_AXI_bresp,
    interconnect_aximm_ddrmem2_M00_AXI_bvalid,
    interconnect_aximm_ddrmem2_M00_AXI_rdata,
    interconnect_aximm_ddrmem2_M00_AXI_rlast,
    interconnect_aximm_ddrmem2_M00_AXI_rready,
    interconnect_aximm_ddrmem2_M00_AXI_rresp,
    interconnect_aximm_ddrmem2_M00_AXI_rvalid,
    interconnect_aximm_ddrmem2_M00_AXI_wdata,
    interconnect_aximm_ddrmem2_M00_AXI_wlast,
    interconnect_aximm_ddrmem2_M00_AXI_wready,
    interconnect_aximm_ddrmem2_M00_AXI_wstrb,
    interconnect_aximm_ddrmem2_M00_AXI_wvalid,
    interconnect_aximm_ddrmem3_M00_AXI_araddr,
    interconnect_aximm_ddrmem3_M00_AXI_arburst,
    interconnect_aximm_ddrmem3_M00_AXI_arcache,
    interconnect_aximm_ddrmem3_M00_AXI_arlen,
    interconnect_aximm_ddrmem3_M00_AXI_arlock,
    interconnect_aximm_ddrmem3_M00_AXI_arprot,
    interconnect_aximm_ddrmem3_M00_AXI_arqos,
    interconnect_aximm_ddrmem3_M00_AXI_arready,
    interconnect_aximm_ddrmem3_M00_AXI_arsize,
    interconnect_aximm_ddrmem3_M00_AXI_arvalid,
    interconnect_aximm_ddrmem3_M00_AXI_awaddr,
    interconnect_aximm_ddrmem3_M00_AXI_awburst,
    interconnect_aximm_ddrmem3_M00_AXI_awcache,
    interconnect_aximm_ddrmem3_M00_AXI_awlen,
    interconnect_aximm_ddrmem3_M00_AXI_awlock,
    interconnect_aximm_ddrmem3_M00_AXI_awprot,
    interconnect_aximm_ddrmem3_M00_AXI_awqos,
    interconnect_aximm_ddrmem3_M00_AXI_awready,
    interconnect_aximm_ddrmem3_M00_AXI_awsize,
    interconnect_aximm_ddrmem3_M00_AXI_awvalid,
    interconnect_aximm_ddrmem3_M00_AXI_bready,
    interconnect_aximm_ddrmem3_M00_AXI_bresp,
    interconnect_aximm_ddrmem3_M00_AXI_bvalid,
    interconnect_aximm_ddrmem3_M00_AXI_rdata,
    interconnect_aximm_ddrmem3_M00_AXI_rlast,
    interconnect_aximm_ddrmem3_M00_AXI_rready,
    interconnect_aximm_ddrmem3_M00_AXI_rresp,
    interconnect_aximm_ddrmem3_M00_AXI_rvalid,
    interconnect_aximm_ddrmem3_M00_AXI_wdata,
    interconnect_aximm_ddrmem3_M00_AXI_wlast,
    interconnect_aximm_ddrmem3_M00_AXI_wready,
    interconnect_aximm_ddrmem3_M00_AXI_wstrb,
    interconnect_aximm_ddrmem3_M00_AXI_wvalid,
    interconnect_aximm_host_M04_AXI_araddr,
    interconnect_aximm_host_M04_AXI_arburst,
    interconnect_aximm_host_M04_AXI_arcache,
    interconnect_aximm_host_M04_AXI_arlen,
    interconnect_aximm_host_M04_AXI_arlock,
    interconnect_aximm_host_M04_AXI_arprot,
    interconnect_aximm_host_M04_AXI_arready,
    interconnect_aximm_host_M04_AXI_arsize,
    interconnect_aximm_host_M04_AXI_arvalid,
    interconnect_aximm_host_M04_AXI_rdata,
    interconnect_aximm_host_M04_AXI_rlast,
    interconnect_aximm_host_M04_AXI_rready,
    interconnect_aximm_host_M04_AXI_rresp,
    interconnect_aximm_host_M04_AXI_rvalid,
    psreset_gate_pr_data_interconnect_aresetn,
    regslice_data_M_AXI_araddr,
    regslice_data_M_AXI_arburst,
    regslice_data_M_AXI_arcache,
    regslice_data_M_AXI_arid,
    regslice_data_M_AXI_arlen,
    regslice_data_M_AXI_arlock,
    regslice_data_M_AXI_arprot,
    regslice_data_M_AXI_arqos,
    regslice_data_M_AXI_arready,
    regslice_data_M_AXI_arsize,
    regslice_data_M_AXI_arvalid,
    regslice_data_M_AXI_awaddr,
    regslice_data_M_AXI_awburst,
    regslice_data_M_AXI_awcache,
    regslice_data_M_AXI_awid,
    regslice_data_M_AXI_awlen,
    regslice_data_M_AXI_awlock,
    regslice_data_M_AXI_awprot,
    regslice_data_M_AXI_awqos,
    regslice_data_M_AXI_awready,
    regslice_data_M_AXI_awsize,
    regslice_data_M_AXI_awvalid,
    regslice_data_M_AXI_bid,
    regslice_data_M_AXI_bready,
    regslice_data_M_AXI_bresp,
    regslice_data_M_AXI_bvalid,
    regslice_data_M_AXI_rdata,
    regslice_data_M_AXI_rid,
    regslice_data_M_AXI_rlast,
    regslice_data_M_AXI_rready,
    regslice_data_M_AXI_rresp,
    regslice_data_M_AXI_rvalid,
    regslice_data_M_AXI_wdata,
    regslice_data_M_AXI_wlast,
    regslice_data_M_AXI_wready,
    regslice_data_M_AXI_wstrb,
    regslice_data_M_AXI_wvalid,
    u_ocl_region_M00_AXI_araddr,
    u_ocl_region_M00_AXI_arburst,
    u_ocl_region_M00_AXI_arcache,
    u_ocl_region_M00_AXI_arid,
    u_ocl_region_M00_AXI_arlen,
    u_ocl_region_M00_AXI_arlock,
    u_ocl_region_M00_AXI_arprot,
    u_ocl_region_M00_AXI_arqos,
    u_ocl_region_M00_AXI_arready,
    u_ocl_region_M00_AXI_arsize,
    u_ocl_region_M00_AXI_arvalid,
    u_ocl_region_M00_AXI_awaddr,
    u_ocl_region_M00_AXI_awburst,
    u_ocl_region_M00_AXI_awcache,
    u_ocl_region_M00_AXI_awid,
    u_ocl_region_M00_AXI_awlen,
    u_ocl_region_M00_AXI_awlock,
    u_ocl_region_M00_AXI_awprot,
    u_ocl_region_M00_AXI_awqos,
    u_ocl_region_M00_AXI_awready,
    u_ocl_region_M00_AXI_awsize,
    u_ocl_region_M00_AXI_awvalid,
    u_ocl_region_M00_AXI_bid,
    u_ocl_region_M00_AXI_bready,
    u_ocl_region_M00_AXI_bresp,
    u_ocl_region_M00_AXI_bvalid,
    u_ocl_region_M00_AXI_rdata,
    u_ocl_region_M00_AXI_rid,
    u_ocl_region_M00_AXI_rlast,
    u_ocl_region_M00_AXI_rready,
    u_ocl_region_M00_AXI_rresp,
    u_ocl_region_M00_AXI_rvalid,
    u_ocl_region_M00_AXI_wdata,
    u_ocl_region_M00_AXI_wlast,
    u_ocl_region_M00_AXI_wready,
    u_ocl_region_M00_AXI_wstrb,
    u_ocl_region_M00_AXI_wvalid,
    u_ocl_region_M01_AXI_araddr,
    u_ocl_region_M01_AXI_arburst,
    u_ocl_region_M01_AXI_arcache,
    u_ocl_region_M01_AXI_arid,
    u_ocl_region_M01_AXI_arlen,
    u_ocl_region_M01_AXI_arlock,
    u_ocl_region_M01_AXI_arprot,
    u_ocl_region_M01_AXI_arqos,
    u_ocl_region_M01_AXI_arready,
    u_ocl_region_M01_AXI_arsize,
    u_ocl_region_M01_AXI_arvalid,
    u_ocl_region_M01_AXI_awaddr,
    u_ocl_region_M01_AXI_awburst,
    u_ocl_region_M01_AXI_awcache,
    u_ocl_region_M01_AXI_awid,
    u_ocl_region_M01_AXI_awlen,
    u_ocl_region_M01_AXI_awlock,
    u_ocl_region_M01_AXI_awprot,
    u_ocl_region_M01_AXI_awqos,
    u_ocl_region_M01_AXI_awready,
    u_ocl_region_M01_AXI_awsize,
    u_ocl_region_M01_AXI_awvalid,
    u_ocl_region_M01_AXI_bid,
    u_ocl_region_M01_AXI_bready,
    u_ocl_region_M01_AXI_bresp,
    u_ocl_region_M01_AXI_bvalid,
    u_ocl_region_M01_AXI_rdata,
    u_ocl_region_M01_AXI_rid,
    u_ocl_region_M01_AXI_rlast,
    u_ocl_region_M01_AXI_rready,
    u_ocl_region_M01_AXI_rresp,
    u_ocl_region_M01_AXI_rvalid,
    u_ocl_region_M01_AXI_wdata,
    u_ocl_region_M01_AXI_wlast,
    u_ocl_region_M01_AXI_wready,
    u_ocl_region_M01_AXI_wstrb,
    u_ocl_region_M01_AXI_wvalid,
    u_ocl_region_M02_AXI_araddr,
    u_ocl_region_M02_AXI_arburst,
    u_ocl_region_M02_AXI_arcache,
    u_ocl_region_M02_AXI_arid,
    u_ocl_region_M02_AXI_arlen,
    u_ocl_region_M02_AXI_arlock,
    u_ocl_region_M02_AXI_arprot,
    u_ocl_region_M02_AXI_arqos,
    u_ocl_region_M02_AXI_arready,
    u_ocl_region_M02_AXI_arsize,
    u_ocl_region_M02_AXI_arvalid,
    u_ocl_region_M02_AXI_awaddr,
    u_ocl_region_M02_AXI_awburst,
    u_ocl_region_M02_AXI_awcache,
    u_ocl_region_M02_AXI_awid,
    u_ocl_region_M02_AXI_awlen,
    u_ocl_region_M02_AXI_awlock,
    u_ocl_region_M02_AXI_awprot,
    u_ocl_region_M02_AXI_awqos,
    u_ocl_region_M02_AXI_awready,
    u_ocl_region_M02_AXI_awsize,
    u_ocl_region_M02_AXI_awvalid,
    u_ocl_region_M02_AXI_bid,
    u_ocl_region_M02_AXI_bready,
    u_ocl_region_M02_AXI_bresp,
    u_ocl_region_M02_AXI_bvalid,
    u_ocl_region_M02_AXI_rdata,
    u_ocl_region_M02_AXI_rid,
    u_ocl_region_M02_AXI_rlast,
    u_ocl_region_M02_AXI_rready,
    u_ocl_region_M02_AXI_rresp,
    u_ocl_region_M02_AXI_rvalid,
    u_ocl_region_M02_AXI_wdata,
    u_ocl_region_M02_AXI_wlast,
    u_ocl_region_M02_AXI_wready,
    u_ocl_region_M02_AXI_wstrb,
    u_ocl_region_M02_AXI_wvalid,
    u_ocl_region_M03_AXI_araddr,
    u_ocl_region_M03_AXI_arburst,
    u_ocl_region_M03_AXI_arcache,
    u_ocl_region_M03_AXI_arid,
    u_ocl_region_M03_AXI_arlen,
    u_ocl_region_M03_AXI_arlock,
    u_ocl_region_M03_AXI_arprot,
    u_ocl_region_M03_AXI_arqos,
    u_ocl_region_M03_AXI_arready,
    u_ocl_region_M03_AXI_arsize,
    u_ocl_region_M03_AXI_arvalid,
    u_ocl_region_M03_AXI_awaddr,
    u_ocl_region_M03_AXI_awburst,
    u_ocl_region_M03_AXI_awcache,
    u_ocl_region_M03_AXI_awid,
    u_ocl_region_M03_AXI_awlen,
    u_ocl_region_M03_AXI_awlock,
    u_ocl_region_M03_AXI_awprot,
    u_ocl_region_M03_AXI_awqos,
    u_ocl_region_M03_AXI_awready,
    u_ocl_region_M03_AXI_awsize,
    u_ocl_region_M03_AXI_awvalid,
    u_ocl_region_M03_AXI_bid,
    u_ocl_region_M03_AXI_bready,
    u_ocl_region_M03_AXI_bresp,
    u_ocl_region_M03_AXI_bvalid,
    u_ocl_region_M03_AXI_rdata,
    u_ocl_region_M03_AXI_rid,
    u_ocl_region_M03_AXI_rlast,
    u_ocl_region_M03_AXI_rready,
    u_ocl_region_M03_AXI_rresp,
    u_ocl_region_M03_AXI_rvalid,
    u_ocl_region_M03_AXI_wdata,
    u_ocl_region_M03_AXI_wlast,
    u_ocl_region_M03_AXI_wready,
    u_ocl_region_M03_AXI_wstrb,
    u_ocl_region_M03_AXI_wvalid);
  input clkwiz_kernel_clk_out1;
  input clkwiz_sysclks_clk_out1;
  input ddrmem_0_c0_ddr4_ui_clk;
  input ddrmem_1_c0_ddr4_ui_clk;
  input ddrmem_2_c0_ddr4_ui_clk;
  input ddrmem_3_c0_ddr4_ui_clk;
  input dma_pcie_axi_aclk;
  output [31:0]interconnect_aximm_ddrmem0_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem0_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem0_M00_AXI_arcache;
  output [7:0]interconnect_aximm_ddrmem0_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem0_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem0_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem0_M00_AXI_arqos;
  input interconnect_aximm_ddrmem0_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem0_M00_AXI_arsize;
  output interconnect_aximm_ddrmem0_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem0_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem0_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem0_M00_AXI_awcache;
  output [7:0]interconnect_aximm_ddrmem0_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem0_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem0_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem0_M00_AXI_awqos;
  input interconnect_aximm_ddrmem0_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem0_M00_AXI_awsize;
  output interconnect_aximm_ddrmem0_M00_AXI_awvalid;
  output interconnect_aximm_ddrmem0_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem0_M00_AXI_bresp;
  input interconnect_aximm_ddrmem0_M00_AXI_bvalid;
  input [511:0]interconnect_aximm_ddrmem0_M00_AXI_rdata;
  input interconnect_aximm_ddrmem0_M00_AXI_rlast;
  output interconnect_aximm_ddrmem0_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem0_M00_AXI_rresp;
  input interconnect_aximm_ddrmem0_M00_AXI_rvalid;
  output [511:0]interconnect_aximm_ddrmem0_M00_AXI_wdata;
  output interconnect_aximm_ddrmem0_M00_AXI_wlast;
  input interconnect_aximm_ddrmem0_M00_AXI_wready;
  output [63:0]interconnect_aximm_ddrmem0_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem0_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem1_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem1_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem1_M00_AXI_arcache;
  output [7:0]interconnect_aximm_ddrmem1_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem1_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem1_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem1_M00_AXI_arqos;
  input interconnect_aximm_ddrmem1_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem1_M00_AXI_arsize;
  output interconnect_aximm_ddrmem1_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem1_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem1_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem1_M00_AXI_awcache;
  output [7:0]interconnect_aximm_ddrmem1_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem1_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem1_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem1_M00_AXI_awqos;
  input interconnect_aximm_ddrmem1_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem1_M00_AXI_awsize;
  output interconnect_aximm_ddrmem1_M00_AXI_awvalid;
  output interconnect_aximm_ddrmem1_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem1_M00_AXI_bresp;
  input interconnect_aximm_ddrmem1_M00_AXI_bvalid;
  input [511:0]interconnect_aximm_ddrmem1_M00_AXI_rdata;
  input interconnect_aximm_ddrmem1_M00_AXI_rlast;
  output interconnect_aximm_ddrmem1_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem1_M00_AXI_rresp;
  input interconnect_aximm_ddrmem1_M00_AXI_rvalid;
  output [511:0]interconnect_aximm_ddrmem1_M00_AXI_wdata;
  output interconnect_aximm_ddrmem1_M00_AXI_wlast;
  input interconnect_aximm_ddrmem1_M00_AXI_wready;
  output [63:0]interconnect_aximm_ddrmem1_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem1_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem2_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arcache;
  output [7:0]interconnect_aximm_ddrmem2_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem2_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arqos;
  input interconnect_aximm_ddrmem2_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arsize;
  output interconnect_aximm_ddrmem2_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem2_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awcache;
  output [7:0]interconnect_aximm_ddrmem2_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem2_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awqos;
  input interconnect_aximm_ddrmem2_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awsize;
  output interconnect_aximm_ddrmem2_M00_AXI_awvalid;
  output interconnect_aximm_ddrmem2_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_bresp;
  input interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  input [511:0]interconnect_aximm_ddrmem2_M00_AXI_rdata;
  input interconnect_aximm_ddrmem2_M00_AXI_rlast;
  output interconnect_aximm_ddrmem2_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_rresp;
  input interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  output [511:0]interconnect_aximm_ddrmem2_M00_AXI_wdata;
  output interconnect_aximm_ddrmem2_M00_AXI_wlast;
  input interconnect_aximm_ddrmem2_M00_AXI_wready;
  output [63:0]interconnect_aximm_ddrmem2_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem2_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem3_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arcache;
  output [7:0]interconnect_aximm_ddrmem3_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem3_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arqos;
  input interconnect_aximm_ddrmem3_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arsize;
  output interconnect_aximm_ddrmem3_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem3_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awcache;
  output [7:0]interconnect_aximm_ddrmem3_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem3_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awqos;
  input interconnect_aximm_ddrmem3_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awsize;
  output interconnect_aximm_ddrmem3_M00_AXI_awvalid;
  output interconnect_aximm_ddrmem3_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_bresp;
  input interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  input [511:0]interconnect_aximm_ddrmem3_M00_AXI_rdata;
  input interconnect_aximm_ddrmem3_M00_AXI_rlast;
  output interconnect_aximm_ddrmem3_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_rresp;
  input interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  output [511:0]interconnect_aximm_ddrmem3_M00_AXI_wdata;
  output interconnect_aximm_ddrmem3_M00_AXI_wlast;
  input interconnect_aximm_ddrmem3_M00_AXI_wready;
  output [63:0]interconnect_aximm_ddrmem3_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem3_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_host_M04_AXI_araddr;
  output [1:0]interconnect_aximm_host_M04_AXI_arburst;
  output [3:0]interconnect_aximm_host_M04_AXI_arcache;
  output [7:0]interconnect_aximm_host_M04_AXI_arlen;
  output [0:0]interconnect_aximm_host_M04_AXI_arlock;
  output [2:0]interconnect_aximm_host_M04_AXI_arprot;
  input interconnect_aximm_host_M04_AXI_arready;
  output [2:0]interconnect_aximm_host_M04_AXI_arsize;
  output interconnect_aximm_host_M04_AXI_arvalid;
  input [255:0]interconnect_aximm_host_M04_AXI_rdata;
  input interconnect_aximm_host_M04_AXI_rlast;
  output interconnect_aximm_host_M04_AXI_rready;
  input [1:0]interconnect_aximm_host_M04_AXI_rresp;
  input interconnect_aximm_host_M04_AXI_rvalid;
  input [0:0]psreset_gate_pr_data_interconnect_aresetn;
  input [37:0]regslice_data_M_AXI_araddr;
  input [1:0]regslice_data_M_AXI_arburst;
  input [3:0]regslice_data_M_AXI_arcache;
  input [3:0]regslice_data_M_AXI_arid;
  input [7:0]regslice_data_M_AXI_arlen;
  input [0:0]regslice_data_M_AXI_arlock;
  input [2:0]regslice_data_M_AXI_arprot;
  input [3:0]regslice_data_M_AXI_arqos;
  output regslice_data_M_AXI_arready;
  input [2:0]regslice_data_M_AXI_arsize;
  input regslice_data_M_AXI_arvalid;
  input [37:0]regslice_data_M_AXI_awaddr;
  input [1:0]regslice_data_M_AXI_awburst;
  input [3:0]regslice_data_M_AXI_awcache;
  input [3:0]regslice_data_M_AXI_awid;
  input [7:0]regslice_data_M_AXI_awlen;
  input [0:0]regslice_data_M_AXI_awlock;
  input [2:0]regslice_data_M_AXI_awprot;
  input [3:0]regslice_data_M_AXI_awqos;
  output regslice_data_M_AXI_awready;
  input [2:0]regslice_data_M_AXI_awsize;
  input regslice_data_M_AXI_awvalid;
  output [3:0]regslice_data_M_AXI_bid;
  input regslice_data_M_AXI_bready;
  output [1:0]regslice_data_M_AXI_bresp;
  output regslice_data_M_AXI_bvalid;
  output [255:0]regslice_data_M_AXI_rdata;
  output [3:0]regslice_data_M_AXI_rid;
  output regslice_data_M_AXI_rlast;
  input regslice_data_M_AXI_rready;
  output [1:0]regslice_data_M_AXI_rresp;
  output regslice_data_M_AXI_rvalid;
  input [255:0]regslice_data_M_AXI_wdata;
  input regslice_data_M_AXI_wlast;
  output regslice_data_M_AXI_wready;
  input [31:0]regslice_data_M_AXI_wstrb;
  input regslice_data_M_AXI_wvalid;
  input [33:0]u_ocl_region_M00_AXI_araddr;
  input [1:0]u_ocl_region_M00_AXI_arburst;
  input [3:0]u_ocl_region_M00_AXI_arcache;
  input [3:0]u_ocl_region_M00_AXI_arid;
  input [7:0]u_ocl_region_M00_AXI_arlen;
  input [0:0]u_ocl_region_M00_AXI_arlock;
  input [2:0]u_ocl_region_M00_AXI_arprot;
  input [3:0]u_ocl_region_M00_AXI_arqos;
  output u_ocl_region_M00_AXI_arready;
  input [2:0]u_ocl_region_M00_AXI_arsize;
  input u_ocl_region_M00_AXI_arvalid;
  input [33:0]u_ocl_region_M00_AXI_awaddr;
  input [1:0]u_ocl_region_M00_AXI_awburst;
  input [3:0]u_ocl_region_M00_AXI_awcache;
  input [3:0]u_ocl_region_M00_AXI_awid;
  input [7:0]u_ocl_region_M00_AXI_awlen;
  input [0:0]u_ocl_region_M00_AXI_awlock;
  input [2:0]u_ocl_region_M00_AXI_awprot;
  input [3:0]u_ocl_region_M00_AXI_awqos;
  output u_ocl_region_M00_AXI_awready;
  input [2:0]u_ocl_region_M00_AXI_awsize;
  input u_ocl_region_M00_AXI_awvalid;
  output [3:0]u_ocl_region_M00_AXI_bid;
  input u_ocl_region_M00_AXI_bready;
  output [1:0]u_ocl_region_M00_AXI_bresp;
  output u_ocl_region_M00_AXI_bvalid;
  output [511:0]u_ocl_region_M00_AXI_rdata;
  output [3:0]u_ocl_region_M00_AXI_rid;
  output u_ocl_region_M00_AXI_rlast;
  input u_ocl_region_M00_AXI_rready;
  output [1:0]u_ocl_region_M00_AXI_rresp;
  output u_ocl_region_M00_AXI_rvalid;
  input [511:0]u_ocl_region_M00_AXI_wdata;
  input u_ocl_region_M00_AXI_wlast;
  output u_ocl_region_M00_AXI_wready;
  input [63:0]u_ocl_region_M00_AXI_wstrb;
  input u_ocl_region_M00_AXI_wvalid;
  input [33:0]u_ocl_region_M01_AXI_araddr;
  input [1:0]u_ocl_region_M01_AXI_arburst;
  input [3:0]u_ocl_region_M01_AXI_arcache;
  input [3:0]u_ocl_region_M01_AXI_arid;
  input [7:0]u_ocl_region_M01_AXI_arlen;
  input [0:0]u_ocl_region_M01_AXI_arlock;
  input [2:0]u_ocl_region_M01_AXI_arprot;
  input [3:0]u_ocl_region_M01_AXI_arqos;
  output u_ocl_region_M01_AXI_arready;
  input [2:0]u_ocl_region_M01_AXI_arsize;
  input u_ocl_region_M01_AXI_arvalid;
  input [33:0]u_ocl_region_M01_AXI_awaddr;
  input [1:0]u_ocl_region_M01_AXI_awburst;
  input [3:0]u_ocl_region_M01_AXI_awcache;
  input [3:0]u_ocl_region_M01_AXI_awid;
  input [7:0]u_ocl_region_M01_AXI_awlen;
  input [0:0]u_ocl_region_M01_AXI_awlock;
  input [2:0]u_ocl_region_M01_AXI_awprot;
  input [3:0]u_ocl_region_M01_AXI_awqos;
  output u_ocl_region_M01_AXI_awready;
  input [2:0]u_ocl_region_M01_AXI_awsize;
  input u_ocl_region_M01_AXI_awvalid;
  output [3:0]u_ocl_region_M01_AXI_bid;
  input u_ocl_region_M01_AXI_bready;
  output [1:0]u_ocl_region_M01_AXI_bresp;
  output u_ocl_region_M01_AXI_bvalid;
  output [511:0]u_ocl_region_M01_AXI_rdata;
  output [3:0]u_ocl_region_M01_AXI_rid;
  output u_ocl_region_M01_AXI_rlast;
  input u_ocl_region_M01_AXI_rready;
  output [1:0]u_ocl_region_M01_AXI_rresp;
  output u_ocl_region_M01_AXI_rvalid;
  input [511:0]u_ocl_region_M01_AXI_wdata;
  input u_ocl_region_M01_AXI_wlast;
  output u_ocl_region_M01_AXI_wready;
  input [63:0]u_ocl_region_M01_AXI_wstrb;
  input u_ocl_region_M01_AXI_wvalid;
  input [33:0]u_ocl_region_M02_AXI_araddr;
  input [1:0]u_ocl_region_M02_AXI_arburst;
  input [3:0]u_ocl_region_M02_AXI_arcache;
  input [3:0]u_ocl_region_M02_AXI_arid;
  input [7:0]u_ocl_region_M02_AXI_arlen;
  input [0:0]u_ocl_region_M02_AXI_arlock;
  input [2:0]u_ocl_region_M02_AXI_arprot;
  input [3:0]u_ocl_region_M02_AXI_arqos;
  output u_ocl_region_M02_AXI_arready;
  input [2:0]u_ocl_region_M02_AXI_arsize;
  input u_ocl_region_M02_AXI_arvalid;
  input [33:0]u_ocl_region_M02_AXI_awaddr;
  input [1:0]u_ocl_region_M02_AXI_awburst;
  input [3:0]u_ocl_region_M02_AXI_awcache;
  input [3:0]u_ocl_region_M02_AXI_awid;
  input [7:0]u_ocl_region_M02_AXI_awlen;
  input [0:0]u_ocl_region_M02_AXI_awlock;
  input [2:0]u_ocl_region_M02_AXI_awprot;
  input [3:0]u_ocl_region_M02_AXI_awqos;
  output u_ocl_region_M02_AXI_awready;
  input [2:0]u_ocl_region_M02_AXI_awsize;
  input u_ocl_region_M02_AXI_awvalid;
  output [3:0]u_ocl_region_M02_AXI_bid;
  input u_ocl_region_M02_AXI_bready;
  output [1:0]u_ocl_region_M02_AXI_bresp;
  output u_ocl_region_M02_AXI_bvalid;
  output [511:0]u_ocl_region_M02_AXI_rdata;
  output [3:0]u_ocl_region_M02_AXI_rid;
  output u_ocl_region_M02_AXI_rlast;
  input u_ocl_region_M02_AXI_rready;
  output [1:0]u_ocl_region_M02_AXI_rresp;
  output u_ocl_region_M02_AXI_rvalid;
  input [511:0]u_ocl_region_M02_AXI_wdata;
  input u_ocl_region_M02_AXI_wlast;
  output u_ocl_region_M02_AXI_wready;
  input [63:0]u_ocl_region_M02_AXI_wstrb;
  input u_ocl_region_M02_AXI_wvalid;
  input [33:0]u_ocl_region_M03_AXI_araddr;
  input [1:0]u_ocl_region_M03_AXI_arburst;
  input [3:0]u_ocl_region_M03_AXI_arcache;
  input [3:0]u_ocl_region_M03_AXI_arid;
  input [7:0]u_ocl_region_M03_AXI_arlen;
  input [0:0]u_ocl_region_M03_AXI_arlock;
  input [2:0]u_ocl_region_M03_AXI_arprot;
  input [3:0]u_ocl_region_M03_AXI_arqos;
  output u_ocl_region_M03_AXI_arready;
  input [2:0]u_ocl_region_M03_AXI_arsize;
  input u_ocl_region_M03_AXI_arvalid;
  input [33:0]u_ocl_region_M03_AXI_awaddr;
  input [1:0]u_ocl_region_M03_AXI_awburst;
  input [3:0]u_ocl_region_M03_AXI_awcache;
  input [3:0]u_ocl_region_M03_AXI_awid;
  input [7:0]u_ocl_region_M03_AXI_awlen;
  input [0:0]u_ocl_region_M03_AXI_awlock;
  input [2:0]u_ocl_region_M03_AXI_awprot;
  input [3:0]u_ocl_region_M03_AXI_awqos;
  output u_ocl_region_M03_AXI_awready;
  input [2:0]u_ocl_region_M03_AXI_awsize;
  input u_ocl_region_M03_AXI_awvalid;
  output [3:0]u_ocl_region_M03_AXI_bid;
  input u_ocl_region_M03_AXI_bready;
  output [1:0]u_ocl_region_M03_AXI_bresp;
  output u_ocl_region_M03_AXI_bvalid;
  output [511:0]u_ocl_region_M03_AXI_rdata;
  output [3:0]u_ocl_region_M03_AXI_rid;
  output u_ocl_region_M03_AXI_rlast;
  input u_ocl_region_M03_AXI_rready;
  output [1:0]u_ocl_region_M03_AXI_rresp;
  output u_ocl_region_M03_AXI_rvalid;
  input [511:0]u_ocl_region_M03_AXI_wdata;
  input u_ocl_region_M03_AXI_wlast;
  output u_ocl_region_M03_AXI_wready;
  input [63:0]u_ocl_region_M03_AXI_wstrb;
  input u_ocl_region_M03_AXI_wvalid;

  wire ACLK1_1;
  wire ACLK2_1;
  wire ACLK3_1;
  wire ACLK4_1;
  wire ACLK_1;
  wire [37:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [3:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [37:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [3:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [3:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [255:0]S00_AXI_1_RDATA;
  wire [3:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [255:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [31:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [33:0]S01_AXI1_1_ARADDR;
  wire [1:0]S01_AXI1_1_ARBURST;
  wire [3:0]S01_AXI1_1_ARCACHE;
  wire [3:0]S01_AXI1_1_ARID;
  wire [7:0]S01_AXI1_1_ARLEN;
  wire [0:0]S01_AXI1_1_ARLOCK;
  wire [2:0]S01_AXI1_1_ARPROT;
  wire [3:0]S01_AXI1_1_ARQOS;
  wire S01_AXI1_1_ARREADY;
  wire [2:0]S01_AXI1_1_ARSIZE;
  wire S01_AXI1_1_ARVALID;
  wire [33:0]S01_AXI1_1_AWADDR;
  wire [1:0]S01_AXI1_1_AWBURST;
  wire [3:0]S01_AXI1_1_AWCACHE;
  wire [3:0]S01_AXI1_1_AWID;
  wire [7:0]S01_AXI1_1_AWLEN;
  wire [0:0]S01_AXI1_1_AWLOCK;
  wire [2:0]S01_AXI1_1_AWPROT;
  wire [3:0]S01_AXI1_1_AWQOS;
  wire S01_AXI1_1_AWREADY;
  wire [2:0]S01_AXI1_1_AWSIZE;
  wire S01_AXI1_1_AWVALID;
  wire [3:0]S01_AXI1_1_BID;
  wire S01_AXI1_1_BREADY;
  wire [1:0]S01_AXI1_1_BRESP;
  wire S01_AXI1_1_BVALID;
  wire [511:0]S01_AXI1_1_RDATA;
  wire [3:0]S01_AXI1_1_RID;
  wire S01_AXI1_1_RLAST;
  wire S01_AXI1_1_RREADY;
  wire [1:0]S01_AXI1_1_RRESP;
  wire S01_AXI1_1_RVALID;
  wire [511:0]S01_AXI1_1_WDATA;
  wire S01_AXI1_1_WLAST;
  wire S01_AXI1_1_WREADY;
  wire [63:0]S01_AXI1_1_WSTRB;
  wire S01_AXI1_1_WVALID;
  wire [33:0]S01_AXI2_1_ARADDR;
  wire [1:0]S01_AXI2_1_ARBURST;
  wire [3:0]S01_AXI2_1_ARCACHE;
  wire [3:0]S01_AXI2_1_ARID;
  wire [7:0]S01_AXI2_1_ARLEN;
  wire [0:0]S01_AXI2_1_ARLOCK;
  wire [2:0]S01_AXI2_1_ARPROT;
  wire [3:0]S01_AXI2_1_ARQOS;
  wire S01_AXI2_1_ARREADY;
  wire [2:0]S01_AXI2_1_ARSIZE;
  wire S01_AXI2_1_ARVALID;
  wire [33:0]S01_AXI2_1_AWADDR;
  wire [1:0]S01_AXI2_1_AWBURST;
  wire [3:0]S01_AXI2_1_AWCACHE;
  wire [3:0]S01_AXI2_1_AWID;
  wire [7:0]S01_AXI2_1_AWLEN;
  wire [0:0]S01_AXI2_1_AWLOCK;
  wire [2:0]S01_AXI2_1_AWPROT;
  wire [3:0]S01_AXI2_1_AWQOS;
  wire S01_AXI2_1_AWREADY;
  wire [2:0]S01_AXI2_1_AWSIZE;
  wire S01_AXI2_1_AWVALID;
  wire [3:0]S01_AXI2_1_BID;
  wire S01_AXI2_1_BREADY;
  wire [1:0]S01_AXI2_1_BRESP;
  wire S01_AXI2_1_BVALID;
  wire [511:0]S01_AXI2_1_RDATA;
  wire [3:0]S01_AXI2_1_RID;
  wire S01_AXI2_1_RLAST;
  wire S01_AXI2_1_RREADY;
  wire [1:0]S01_AXI2_1_RRESP;
  wire S01_AXI2_1_RVALID;
  wire [511:0]S01_AXI2_1_WDATA;
  wire S01_AXI2_1_WLAST;
  wire S01_AXI2_1_WREADY;
  wire [63:0]S01_AXI2_1_WSTRB;
  wire S01_AXI2_1_WVALID;
  wire [33:0]S01_AXI3_1_ARADDR;
  wire [1:0]S01_AXI3_1_ARBURST;
  wire [3:0]S01_AXI3_1_ARCACHE;
  wire [3:0]S01_AXI3_1_ARID;
  wire [7:0]S01_AXI3_1_ARLEN;
  wire [0:0]S01_AXI3_1_ARLOCK;
  wire [2:0]S01_AXI3_1_ARPROT;
  wire [3:0]S01_AXI3_1_ARQOS;
  wire S01_AXI3_1_ARREADY;
  wire [2:0]S01_AXI3_1_ARSIZE;
  wire S01_AXI3_1_ARVALID;
  wire [33:0]S01_AXI3_1_AWADDR;
  wire [1:0]S01_AXI3_1_AWBURST;
  wire [3:0]S01_AXI3_1_AWCACHE;
  wire [3:0]S01_AXI3_1_AWID;
  wire [7:0]S01_AXI3_1_AWLEN;
  wire [0:0]S01_AXI3_1_AWLOCK;
  wire [2:0]S01_AXI3_1_AWPROT;
  wire [3:0]S01_AXI3_1_AWQOS;
  wire S01_AXI3_1_AWREADY;
  wire [2:0]S01_AXI3_1_AWSIZE;
  wire S01_AXI3_1_AWVALID;
  wire [3:0]S01_AXI3_1_BID;
  wire S01_AXI3_1_BREADY;
  wire [1:0]S01_AXI3_1_BRESP;
  wire S01_AXI3_1_BVALID;
  wire [511:0]S01_AXI3_1_RDATA;
  wire [3:0]S01_AXI3_1_RID;
  wire S01_AXI3_1_RLAST;
  wire S01_AXI3_1_RREADY;
  wire [1:0]S01_AXI3_1_RRESP;
  wire S01_AXI3_1_RVALID;
  wire [511:0]S01_AXI3_1_WDATA;
  wire S01_AXI3_1_WLAST;
  wire S01_AXI3_1_WREADY;
  wire [63:0]S01_AXI3_1_WSTRB;
  wire S01_AXI3_1_WVALID;
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
  wire aclk1_2;
  wire [0:0]aresetn_1;
  wire clkwiz_kernel_clk_out1_1;
  wire [37:0]smartconnect_0_M00_AXI1_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI1_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI1_ARCACHE;
  wire [3:0]smartconnect_0_M00_AXI1_ARID;
  wire [7:0]smartconnect_0_M00_AXI1_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI1_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI1_ARQOS;
  wire smartconnect_0_M00_AXI1_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI1_ARSIZE;
  wire [113:0]smartconnect_0_M00_AXI1_ARUSER;
  wire smartconnect_0_M00_AXI1_ARVALID;
  wire [37:0]smartconnect_0_M00_AXI1_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI1_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI1_AWCACHE;
  wire [3:0]smartconnect_0_M00_AXI1_AWID;
  wire [7:0]smartconnect_0_M00_AXI1_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI1_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI1_AWQOS;
  wire smartconnect_0_M00_AXI1_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI1_AWSIZE;
  wire [113:0]smartconnect_0_M00_AXI1_AWUSER;
  wire smartconnect_0_M00_AXI1_AWVALID;
  wire [3:0]smartconnect_0_M00_AXI1_BID;
  wire smartconnect_0_M00_AXI1_BREADY;
  wire [1:0]smartconnect_0_M00_AXI1_BRESP;
  wire [113:0]smartconnect_0_M00_AXI1_BUSER;
  wire smartconnect_0_M00_AXI1_BVALID;
  wire [255:0]smartconnect_0_M00_AXI1_RDATA;
  wire [3:0]smartconnect_0_M00_AXI1_RID;
  wire smartconnect_0_M00_AXI1_RLAST;
  wire smartconnect_0_M00_AXI1_RREADY;
  wire [1:0]smartconnect_0_M00_AXI1_RRESP;
  wire [13:0]smartconnect_0_M00_AXI1_RUSER;
  wire smartconnect_0_M00_AXI1_RVALID;
  wire [255:0]smartconnect_0_M00_AXI1_WDATA;
  wire smartconnect_0_M00_AXI1_WLAST;
  wire smartconnect_0_M00_AXI1_WREADY;
  wire [31:0]smartconnect_0_M00_AXI1_WSTRB;
  wire [13:0]smartconnect_0_M00_AXI1_WUSER;
  wire smartconnect_0_M00_AXI1_WVALID;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [511:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [511:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [63:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [37:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M01_AXI_ARID;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M01_AXI_ARUSER;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [37:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M01_AXI_AWID;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M01_AXI_AWUSER;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire [3:0]smartconnect_0_M01_AXI_BID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire [113:0]smartconnect_0_M01_AXI_BUSER;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [255:0]smartconnect_0_M01_AXI_RDATA;
  wire [3:0]smartconnect_0_M01_AXI_RID;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire [13:0]smartconnect_0_M01_AXI_RUSER;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [255:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [31:0]smartconnect_0_M01_AXI_WSTRB;
  wire [13:0]smartconnect_0_M01_AXI_WUSER;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [37:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M02_AXI_ARID;
  wire [7:0]smartconnect_0_M02_AXI_ARLEN;
  wire [0:0]smartconnect_0_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire [3:0]smartconnect_0_M02_AXI_ARQOS;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M02_AXI_ARUSER;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [37:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M02_AXI_AWID;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire [3:0]smartconnect_0_M02_AXI_AWQOS;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M02_AXI_AWUSER;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire [3:0]smartconnect_0_M02_AXI_BID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire [113:0]smartconnect_0_M02_AXI_BUSER;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [255:0]smartconnect_0_M02_AXI_RDATA;
  wire [3:0]smartconnect_0_M02_AXI_RID;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire [13:0]smartconnect_0_M02_AXI_RUSER;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [255:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [31:0]smartconnect_0_M02_AXI_WSTRB;
  wire [13:0]smartconnect_0_M02_AXI_WUSER;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [37:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M03_AXI_ARID;
  wire [7:0]smartconnect_0_M03_AXI_ARLEN;
  wire [0:0]smartconnect_0_M03_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M03_AXI_ARPROT;
  wire [3:0]smartconnect_0_M03_AXI_ARQOS;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M03_AXI_ARUSER;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [37:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M03_AXI_AWID;
  wire [7:0]smartconnect_0_M03_AXI_AWLEN;
  wire [0:0]smartconnect_0_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire [3:0]smartconnect_0_M03_AXI_AWQOS;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M03_AXI_AWUSER;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire [3:0]smartconnect_0_M03_AXI_BID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire [113:0]smartconnect_0_M03_AXI_BUSER;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [255:0]smartconnect_0_M03_AXI_RDATA;
  wire [3:0]smartconnect_0_M03_AXI_RID;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire [13:0]smartconnect_0_M03_AXI_RUSER;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [255:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [31:0]smartconnect_0_M03_AXI_WSTRB;
  wire [13:0]smartconnect_0_M03_AXI_WUSER;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [31:0]smartconnect_0_M04_AXI_ARADDR;
  wire [1:0]smartconnect_0_M04_AXI_ARBURST;
  wire [3:0]smartconnect_0_M04_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M04_AXI_ARLEN;
  wire [0:0]smartconnect_0_M04_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M04_AXI_ARPROT;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire [2:0]smartconnect_0_M04_AXI_ARSIZE;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [255:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RLAST;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [31:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_1_M00_AXI_AWLEN;
  wire [0:0]smartconnect_1_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire [3:0]smartconnect_1_M00_AXI_AWQOS;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [511:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [511:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [63:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [31:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_2_M00_AXI_ARLEN;
  wire [0:0]smartconnect_2_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire [3:0]smartconnect_2_M00_AXI_ARQOS;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [31:0]smartconnect_2_M00_AXI_AWADDR;
  wire [1:0]smartconnect_2_M00_AXI_AWBURST;
  wire [3:0]smartconnect_2_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_2_M00_AXI_AWLEN;
  wire [0:0]smartconnect_2_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_2_M00_AXI_AWPROT;
  wire [3:0]smartconnect_2_M00_AXI_AWQOS;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire [2:0]smartconnect_2_M00_AXI_AWSIZE;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [511:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [511:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WLAST;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [63:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [31:0]smartconnect_3_M00_AXI_ARADDR;
  wire [1:0]smartconnect_3_M00_AXI_ARBURST;
  wire [3:0]smartconnect_3_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_3_M00_AXI_ARLEN;
  wire [0:0]smartconnect_3_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_3_M00_AXI_ARPROT;
  wire [3:0]smartconnect_3_M00_AXI_ARQOS;
  wire smartconnect_3_M00_AXI_ARREADY;
  wire [2:0]smartconnect_3_M00_AXI_ARSIZE;
  wire smartconnect_3_M00_AXI_ARVALID;
  wire [31:0]smartconnect_3_M00_AXI_AWADDR;
  wire [1:0]smartconnect_3_M00_AXI_AWBURST;
  wire [3:0]smartconnect_3_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_3_M00_AXI_AWLEN;
  wire [0:0]smartconnect_3_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_3_M00_AXI_AWPROT;
  wire [3:0]smartconnect_3_M00_AXI_AWQOS;
  wire smartconnect_3_M00_AXI_AWREADY;
  wire [2:0]smartconnect_3_M00_AXI_AWSIZE;
  wire smartconnect_3_M00_AXI_AWVALID;
  wire smartconnect_3_M00_AXI_BREADY;
  wire [1:0]smartconnect_3_M00_AXI_BRESP;
  wire smartconnect_3_M00_AXI_BVALID;
  wire [511:0]smartconnect_3_M00_AXI_RDATA;
  wire smartconnect_3_M00_AXI_RLAST;
  wire smartconnect_3_M00_AXI_RREADY;
  wire [1:0]smartconnect_3_M00_AXI_RRESP;
  wire smartconnect_3_M00_AXI_RVALID;
  wire [511:0]smartconnect_3_M00_AXI_WDATA;
  wire smartconnect_3_M00_AXI_WLAST;
  wire smartconnect_3_M00_AXI_WREADY;
  wire [63:0]smartconnect_3_M00_AXI_WSTRB;
  wire smartconnect_3_M00_AXI_WVALID;

  assign ACLK1_1 = ddrmem_0_c0_ddr4_ui_clk;
  assign ACLK2_1 = ddrmem_1_c0_ddr4_ui_clk;
  assign ACLK3_1 = ddrmem_2_c0_ddr4_ui_clk;
  assign ACLK4_1 = ddrmem_3_c0_ddr4_ui_clk;
  assign ACLK_1 = dma_pcie_axi_aclk;
  assign S00_AXI_1_ARADDR = regslice_data_M_AXI_araddr[37:0];
  assign S00_AXI_1_ARBURST = regslice_data_M_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = regslice_data_M_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = regslice_data_M_AXI_arid[3:0];
  assign S00_AXI_1_ARLEN = regslice_data_M_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = regslice_data_M_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = regslice_data_M_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = regslice_data_M_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = regslice_data_M_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = regslice_data_M_AXI_arvalid;
  assign S00_AXI_1_AWADDR = regslice_data_M_AXI_awaddr[37:0];
  assign S00_AXI_1_AWBURST = regslice_data_M_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = regslice_data_M_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = regslice_data_M_AXI_awid[3:0];
  assign S00_AXI_1_AWLEN = regslice_data_M_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = regslice_data_M_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = regslice_data_M_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = regslice_data_M_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = regslice_data_M_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = regslice_data_M_AXI_awvalid;
  assign S00_AXI_1_BREADY = regslice_data_M_AXI_bready;
  assign S00_AXI_1_RREADY = regslice_data_M_AXI_rready;
  assign S00_AXI_1_WDATA = regslice_data_M_AXI_wdata[255:0];
  assign S00_AXI_1_WLAST = regslice_data_M_AXI_wlast;
  assign S00_AXI_1_WSTRB = regslice_data_M_AXI_wstrb[31:0];
  assign S00_AXI_1_WVALID = regslice_data_M_AXI_wvalid;
  assign S01_AXI1_1_ARADDR = u_ocl_region_M01_AXI_araddr[33:0];
  assign S01_AXI1_1_ARBURST = u_ocl_region_M01_AXI_arburst[1:0];
  assign S01_AXI1_1_ARCACHE = u_ocl_region_M01_AXI_arcache[3:0];
  assign S01_AXI1_1_ARID = u_ocl_region_M01_AXI_arid[3:0];
  assign S01_AXI1_1_ARLEN = u_ocl_region_M01_AXI_arlen[7:0];
  assign S01_AXI1_1_ARLOCK = u_ocl_region_M01_AXI_arlock[0];
  assign S01_AXI1_1_ARPROT = u_ocl_region_M01_AXI_arprot[2:0];
  assign S01_AXI1_1_ARQOS = u_ocl_region_M01_AXI_arqos[3:0];
  assign S01_AXI1_1_ARSIZE = u_ocl_region_M01_AXI_arsize[2:0];
  assign S01_AXI1_1_ARVALID = u_ocl_region_M01_AXI_arvalid;
  assign S01_AXI1_1_AWADDR = u_ocl_region_M01_AXI_awaddr[33:0];
  assign S01_AXI1_1_AWBURST = u_ocl_region_M01_AXI_awburst[1:0];
  assign S01_AXI1_1_AWCACHE = u_ocl_region_M01_AXI_awcache[3:0];
  assign S01_AXI1_1_AWID = u_ocl_region_M01_AXI_awid[3:0];
  assign S01_AXI1_1_AWLEN = u_ocl_region_M01_AXI_awlen[7:0];
  assign S01_AXI1_1_AWLOCK = u_ocl_region_M01_AXI_awlock[0];
  assign S01_AXI1_1_AWPROT = u_ocl_region_M01_AXI_awprot[2:0];
  assign S01_AXI1_1_AWQOS = u_ocl_region_M01_AXI_awqos[3:0];
  assign S01_AXI1_1_AWSIZE = u_ocl_region_M01_AXI_awsize[2:0];
  assign S01_AXI1_1_AWVALID = u_ocl_region_M01_AXI_awvalid;
  assign S01_AXI1_1_BREADY = u_ocl_region_M01_AXI_bready;
  assign S01_AXI1_1_RREADY = u_ocl_region_M01_AXI_rready;
  assign S01_AXI1_1_WDATA = u_ocl_region_M01_AXI_wdata[511:0];
  assign S01_AXI1_1_WLAST = u_ocl_region_M01_AXI_wlast;
  assign S01_AXI1_1_WSTRB = u_ocl_region_M01_AXI_wstrb[63:0];
  assign S01_AXI1_1_WVALID = u_ocl_region_M01_AXI_wvalid;
  assign S01_AXI2_1_ARADDR = u_ocl_region_M02_AXI_araddr[33:0];
  assign S01_AXI2_1_ARBURST = u_ocl_region_M02_AXI_arburst[1:0];
  assign S01_AXI2_1_ARCACHE = u_ocl_region_M02_AXI_arcache[3:0];
  assign S01_AXI2_1_ARID = u_ocl_region_M02_AXI_arid[3:0];
  assign S01_AXI2_1_ARLEN = u_ocl_region_M02_AXI_arlen[7:0];
  assign S01_AXI2_1_ARLOCK = u_ocl_region_M02_AXI_arlock[0];
  assign S01_AXI2_1_ARPROT = u_ocl_region_M02_AXI_arprot[2:0];
  assign S01_AXI2_1_ARQOS = u_ocl_region_M02_AXI_arqos[3:0];
  assign S01_AXI2_1_ARSIZE = u_ocl_region_M02_AXI_arsize[2:0];
  assign S01_AXI2_1_ARVALID = u_ocl_region_M02_AXI_arvalid;
  assign S01_AXI2_1_AWADDR = u_ocl_region_M02_AXI_awaddr[33:0];
  assign S01_AXI2_1_AWBURST = u_ocl_region_M02_AXI_awburst[1:0];
  assign S01_AXI2_1_AWCACHE = u_ocl_region_M02_AXI_awcache[3:0];
  assign S01_AXI2_1_AWID = u_ocl_region_M02_AXI_awid[3:0];
  assign S01_AXI2_1_AWLEN = u_ocl_region_M02_AXI_awlen[7:0];
  assign S01_AXI2_1_AWLOCK = u_ocl_region_M02_AXI_awlock[0];
  assign S01_AXI2_1_AWPROT = u_ocl_region_M02_AXI_awprot[2:0];
  assign S01_AXI2_1_AWQOS = u_ocl_region_M02_AXI_awqos[3:0];
  assign S01_AXI2_1_AWSIZE = u_ocl_region_M02_AXI_awsize[2:0];
  assign S01_AXI2_1_AWVALID = u_ocl_region_M02_AXI_awvalid;
  assign S01_AXI2_1_BREADY = u_ocl_region_M02_AXI_bready;
  assign S01_AXI2_1_RREADY = u_ocl_region_M02_AXI_rready;
  assign S01_AXI2_1_WDATA = u_ocl_region_M02_AXI_wdata[511:0];
  assign S01_AXI2_1_WLAST = u_ocl_region_M02_AXI_wlast;
  assign S01_AXI2_1_WSTRB = u_ocl_region_M02_AXI_wstrb[63:0];
  assign S01_AXI2_1_WVALID = u_ocl_region_M02_AXI_wvalid;
  assign S01_AXI3_1_ARADDR = u_ocl_region_M03_AXI_araddr[33:0];
  assign S01_AXI3_1_ARBURST = u_ocl_region_M03_AXI_arburst[1:0];
  assign S01_AXI3_1_ARCACHE = u_ocl_region_M03_AXI_arcache[3:0];
  assign S01_AXI3_1_ARID = u_ocl_region_M03_AXI_arid[3:0];
  assign S01_AXI3_1_ARLEN = u_ocl_region_M03_AXI_arlen[7:0];
  assign S01_AXI3_1_ARLOCK = u_ocl_region_M03_AXI_arlock[0];
  assign S01_AXI3_1_ARPROT = u_ocl_region_M03_AXI_arprot[2:0];
  assign S01_AXI3_1_ARQOS = u_ocl_region_M03_AXI_arqos[3:0];
  assign S01_AXI3_1_ARSIZE = u_ocl_region_M03_AXI_arsize[2:0];
  assign S01_AXI3_1_ARVALID = u_ocl_region_M03_AXI_arvalid;
  assign S01_AXI3_1_AWADDR = u_ocl_region_M03_AXI_awaddr[33:0];
  assign S01_AXI3_1_AWBURST = u_ocl_region_M03_AXI_awburst[1:0];
  assign S01_AXI3_1_AWCACHE = u_ocl_region_M03_AXI_awcache[3:0];
  assign S01_AXI3_1_AWID = u_ocl_region_M03_AXI_awid[3:0];
  assign S01_AXI3_1_AWLEN = u_ocl_region_M03_AXI_awlen[7:0];
  assign S01_AXI3_1_AWLOCK = u_ocl_region_M03_AXI_awlock[0];
  assign S01_AXI3_1_AWPROT = u_ocl_region_M03_AXI_awprot[2:0];
  assign S01_AXI3_1_AWQOS = u_ocl_region_M03_AXI_awqos[3:0];
  assign S01_AXI3_1_AWSIZE = u_ocl_region_M03_AXI_awsize[2:0];
  assign S01_AXI3_1_AWVALID = u_ocl_region_M03_AXI_awvalid;
  assign S01_AXI3_1_BREADY = u_ocl_region_M03_AXI_bready;
  assign S01_AXI3_1_RREADY = u_ocl_region_M03_AXI_rready;
  assign S01_AXI3_1_WDATA = u_ocl_region_M03_AXI_wdata[511:0];
  assign S01_AXI3_1_WLAST = u_ocl_region_M03_AXI_wlast;
  assign S01_AXI3_1_WSTRB = u_ocl_region_M03_AXI_wstrb[63:0];
  assign S01_AXI3_1_WVALID = u_ocl_region_M03_AXI_wvalid;
  assign S01_AXI_1_ARADDR = u_ocl_region_M00_AXI_araddr[33:0];
  assign S01_AXI_1_ARBURST = u_ocl_region_M00_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = u_ocl_region_M00_AXI_arcache[3:0];
  assign S01_AXI_1_ARID = u_ocl_region_M00_AXI_arid[3:0];
  assign S01_AXI_1_ARLEN = u_ocl_region_M00_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = u_ocl_region_M00_AXI_arlock[0];
  assign S01_AXI_1_ARPROT = u_ocl_region_M00_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = u_ocl_region_M00_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = u_ocl_region_M00_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = u_ocl_region_M00_AXI_arvalid;
  assign S01_AXI_1_AWADDR = u_ocl_region_M00_AXI_awaddr[33:0];
  assign S01_AXI_1_AWBURST = u_ocl_region_M00_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = u_ocl_region_M00_AXI_awcache[3:0];
  assign S01_AXI_1_AWID = u_ocl_region_M00_AXI_awid[3:0];
  assign S01_AXI_1_AWLEN = u_ocl_region_M00_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = u_ocl_region_M00_AXI_awlock[0];
  assign S01_AXI_1_AWPROT = u_ocl_region_M00_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = u_ocl_region_M00_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = u_ocl_region_M00_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = u_ocl_region_M00_AXI_awvalid;
  assign S01_AXI_1_BREADY = u_ocl_region_M00_AXI_bready;
  assign S01_AXI_1_RREADY = u_ocl_region_M00_AXI_rready;
  assign S01_AXI_1_WDATA = u_ocl_region_M00_AXI_wdata[511:0];
  assign S01_AXI_1_WLAST = u_ocl_region_M00_AXI_wlast;
  assign S01_AXI_1_WSTRB = u_ocl_region_M00_AXI_wstrb[63:0];
  assign S01_AXI_1_WVALID = u_ocl_region_M00_AXI_wvalid;
  assign aclk1_2 = clkwiz_sysclks_clk_out1;
  assign aresetn_1 = psreset_gate_pr_data_interconnect_aresetn[0];
  assign clkwiz_kernel_clk_out1_1 = clkwiz_kernel_clk_out1;
  assign interconnect_aximm_ddrmem0_M00_AXI_araddr[31:0] = smartconnect_0_M00_AXI_ARADDR;
  assign interconnect_aximm_ddrmem0_M00_AXI_arburst[1:0] = smartconnect_0_M00_AXI_ARBURST;
  assign interconnect_aximm_ddrmem0_M00_AXI_arcache[3:0] = smartconnect_0_M00_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem0_M00_AXI_arlen[7:0] = smartconnect_0_M00_AXI_ARLEN;
  assign interconnect_aximm_ddrmem0_M00_AXI_arlock[0] = smartconnect_0_M00_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem0_M00_AXI_arprot[2:0] = smartconnect_0_M00_AXI_ARPROT;
  assign interconnect_aximm_ddrmem0_M00_AXI_arqos[3:0] = smartconnect_0_M00_AXI_ARQOS;
  assign interconnect_aximm_ddrmem0_M00_AXI_arsize[2:0] = smartconnect_0_M00_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem0_M00_AXI_arvalid = smartconnect_0_M00_AXI_ARVALID;
  assign interconnect_aximm_ddrmem0_M00_AXI_awaddr[31:0] = smartconnect_0_M00_AXI_AWADDR;
  assign interconnect_aximm_ddrmem0_M00_AXI_awburst[1:0] = smartconnect_0_M00_AXI_AWBURST;
  assign interconnect_aximm_ddrmem0_M00_AXI_awcache[3:0] = smartconnect_0_M00_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem0_M00_AXI_awlen[7:0] = smartconnect_0_M00_AXI_AWLEN;
  assign interconnect_aximm_ddrmem0_M00_AXI_awlock[0] = smartconnect_0_M00_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem0_M00_AXI_awprot[2:0] = smartconnect_0_M00_AXI_AWPROT;
  assign interconnect_aximm_ddrmem0_M00_AXI_awqos[3:0] = smartconnect_0_M00_AXI_AWQOS;
  assign interconnect_aximm_ddrmem0_M00_AXI_awsize[2:0] = smartconnect_0_M00_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem0_M00_AXI_awvalid = smartconnect_0_M00_AXI_AWVALID;
  assign interconnect_aximm_ddrmem0_M00_AXI_bready = smartconnect_0_M00_AXI_BREADY;
  assign interconnect_aximm_ddrmem0_M00_AXI_rready = smartconnect_0_M00_AXI_RREADY;
  assign interconnect_aximm_ddrmem0_M00_AXI_wdata[511:0] = smartconnect_0_M00_AXI_WDATA;
  assign interconnect_aximm_ddrmem0_M00_AXI_wlast = smartconnect_0_M00_AXI_WLAST;
  assign interconnect_aximm_ddrmem0_M00_AXI_wstrb[63:0] = smartconnect_0_M00_AXI_WSTRB;
  assign interconnect_aximm_ddrmem0_M00_AXI_wvalid = smartconnect_0_M00_AXI_WVALID;
  assign interconnect_aximm_ddrmem1_M00_AXI_araddr[31:0] = smartconnect_1_M00_AXI_ARADDR;
  assign interconnect_aximm_ddrmem1_M00_AXI_arburst[1:0] = smartconnect_1_M00_AXI_ARBURST;
  assign interconnect_aximm_ddrmem1_M00_AXI_arcache[3:0] = smartconnect_1_M00_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem1_M00_AXI_arlen[7:0] = smartconnect_1_M00_AXI_ARLEN;
  assign interconnect_aximm_ddrmem1_M00_AXI_arlock[0] = smartconnect_1_M00_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem1_M00_AXI_arprot[2:0] = smartconnect_1_M00_AXI_ARPROT;
  assign interconnect_aximm_ddrmem1_M00_AXI_arqos[3:0] = smartconnect_1_M00_AXI_ARQOS;
  assign interconnect_aximm_ddrmem1_M00_AXI_arsize[2:0] = smartconnect_1_M00_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem1_M00_AXI_arvalid = smartconnect_1_M00_AXI_ARVALID;
  assign interconnect_aximm_ddrmem1_M00_AXI_awaddr[31:0] = smartconnect_1_M00_AXI_AWADDR;
  assign interconnect_aximm_ddrmem1_M00_AXI_awburst[1:0] = smartconnect_1_M00_AXI_AWBURST;
  assign interconnect_aximm_ddrmem1_M00_AXI_awcache[3:0] = smartconnect_1_M00_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem1_M00_AXI_awlen[7:0] = smartconnect_1_M00_AXI_AWLEN;
  assign interconnect_aximm_ddrmem1_M00_AXI_awlock[0] = smartconnect_1_M00_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem1_M00_AXI_awprot[2:0] = smartconnect_1_M00_AXI_AWPROT;
  assign interconnect_aximm_ddrmem1_M00_AXI_awqos[3:0] = smartconnect_1_M00_AXI_AWQOS;
  assign interconnect_aximm_ddrmem1_M00_AXI_awsize[2:0] = smartconnect_1_M00_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem1_M00_AXI_awvalid = smartconnect_1_M00_AXI_AWVALID;
  assign interconnect_aximm_ddrmem1_M00_AXI_bready = smartconnect_1_M00_AXI_BREADY;
  assign interconnect_aximm_ddrmem1_M00_AXI_rready = smartconnect_1_M00_AXI_RREADY;
  assign interconnect_aximm_ddrmem1_M00_AXI_wdata[511:0] = smartconnect_1_M00_AXI_WDATA;
  assign interconnect_aximm_ddrmem1_M00_AXI_wlast = smartconnect_1_M00_AXI_WLAST;
  assign interconnect_aximm_ddrmem1_M00_AXI_wstrb[63:0] = smartconnect_1_M00_AXI_WSTRB;
  assign interconnect_aximm_ddrmem1_M00_AXI_wvalid = smartconnect_1_M00_AXI_WVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_araddr[31:0] = smartconnect_2_M00_AXI_ARADDR;
  assign interconnect_aximm_ddrmem2_M00_AXI_arburst[1:0] = smartconnect_2_M00_AXI_ARBURST;
  assign interconnect_aximm_ddrmem2_M00_AXI_arcache[3:0] = smartconnect_2_M00_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem2_M00_AXI_arlen[7:0] = smartconnect_2_M00_AXI_ARLEN;
  assign interconnect_aximm_ddrmem2_M00_AXI_arlock[0] = smartconnect_2_M00_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem2_M00_AXI_arprot[2:0] = smartconnect_2_M00_AXI_ARPROT;
  assign interconnect_aximm_ddrmem2_M00_AXI_arqos[3:0] = smartconnect_2_M00_AXI_ARQOS;
  assign interconnect_aximm_ddrmem2_M00_AXI_arsize[2:0] = smartconnect_2_M00_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem2_M00_AXI_arvalid = smartconnect_2_M00_AXI_ARVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_awaddr[31:0] = smartconnect_2_M00_AXI_AWADDR;
  assign interconnect_aximm_ddrmem2_M00_AXI_awburst[1:0] = smartconnect_2_M00_AXI_AWBURST;
  assign interconnect_aximm_ddrmem2_M00_AXI_awcache[3:0] = smartconnect_2_M00_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem2_M00_AXI_awlen[7:0] = smartconnect_2_M00_AXI_AWLEN;
  assign interconnect_aximm_ddrmem2_M00_AXI_awlock[0] = smartconnect_2_M00_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem2_M00_AXI_awprot[2:0] = smartconnect_2_M00_AXI_AWPROT;
  assign interconnect_aximm_ddrmem2_M00_AXI_awqos[3:0] = smartconnect_2_M00_AXI_AWQOS;
  assign interconnect_aximm_ddrmem2_M00_AXI_awsize[2:0] = smartconnect_2_M00_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem2_M00_AXI_awvalid = smartconnect_2_M00_AXI_AWVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_bready = smartconnect_2_M00_AXI_BREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_rready = smartconnect_2_M00_AXI_RREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_wdata[511:0] = smartconnect_2_M00_AXI_WDATA;
  assign interconnect_aximm_ddrmem2_M00_AXI_wlast = smartconnect_2_M00_AXI_WLAST;
  assign interconnect_aximm_ddrmem2_M00_AXI_wstrb[63:0] = smartconnect_2_M00_AXI_WSTRB;
  assign interconnect_aximm_ddrmem2_M00_AXI_wvalid = smartconnect_2_M00_AXI_WVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_araddr[31:0] = smartconnect_3_M00_AXI_ARADDR;
  assign interconnect_aximm_ddrmem3_M00_AXI_arburst[1:0] = smartconnect_3_M00_AXI_ARBURST;
  assign interconnect_aximm_ddrmem3_M00_AXI_arcache[3:0] = smartconnect_3_M00_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem3_M00_AXI_arlen[7:0] = smartconnect_3_M00_AXI_ARLEN;
  assign interconnect_aximm_ddrmem3_M00_AXI_arlock[0] = smartconnect_3_M00_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem3_M00_AXI_arprot[2:0] = smartconnect_3_M00_AXI_ARPROT;
  assign interconnect_aximm_ddrmem3_M00_AXI_arqos[3:0] = smartconnect_3_M00_AXI_ARQOS;
  assign interconnect_aximm_ddrmem3_M00_AXI_arsize[2:0] = smartconnect_3_M00_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem3_M00_AXI_arvalid = smartconnect_3_M00_AXI_ARVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_awaddr[31:0] = smartconnect_3_M00_AXI_AWADDR;
  assign interconnect_aximm_ddrmem3_M00_AXI_awburst[1:0] = smartconnect_3_M00_AXI_AWBURST;
  assign interconnect_aximm_ddrmem3_M00_AXI_awcache[3:0] = smartconnect_3_M00_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem3_M00_AXI_awlen[7:0] = smartconnect_3_M00_AXI_AWLEN;
  assign interconnect_aximm_ddrmem3_M00_AXI_awlock[0] = smartconnect_3_M00_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem3_M00_AXI_awprot[2:0] = smartconnect_3_M00_AXI_AWPROT;
  assign interconnect_aximm_ddrmem3_M00_AXI_awqos[3:0] = smartconnect_3_M00_AXI_AWQOS;
  assign interconnect_aximm_ddrmem3_M00_AXI_awsize[2:0] = smartconnect_3_M00_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem3_M00_AXI_awvalid = smartconnect_3_M00_AXI_AWVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_bready = smartconnect_3_M00_AXI_BREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_rready = smartconnect_3_M00_AXI_RREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_wdata[511:0] = smartconnect_3_M00_AXI_WDATA;
  assign interconnect_aximm_ddrmem3_M00_AXI_wlast = smartconnect_3_M00_AXI_WLAST;
  assign interconnect_aximm_ddrmem3_M00_AXI_wstrb[63:0] = smartconnect_3_M00_AXI_WSTRB;
  assign interconnect_aximm_ddrmem3_M00_AXI_wvalid = smartconnect_3_M00_AXI_WVALID;
  assign interconnect_aximm_host_M04_AXI_araddr[31:0] = smartconnect_0_M04_AXI_ARADDR;
  assign interconnect_aximm_host_M04_AXI_arburst[1:0] = smartconnect_0_M04_AXI_ARBURST;
  assign interconnect_aximm_host_M04_AXI_arcache[3:0] = smartconnect_0_M04_AXI_ARCACHE;
  assign interconnect_aximm_host_M04_AXI_arlen[7:0] = smartconnect_0_M04_AXI_ARLEN;
  assign interconnect_aximm_host_M04_AXI_arlock[0] = smartconnect_0_M04_AXI_ARLOCK;
  assign interconnect_aximm_host_M04_AXI_arprot[2:0] = smartconnect_0_M04_AXI_ARPROT;
  assign interconnect_aximm_host_M04_AXI_arsize[2:0] = smartconnect_0_M04_AXI_ARSIZE;
  assign interconnect_aximm_host_M04_AXI_arvalid = smartconnect_0_M04_AXI_ARVALID;
  assign interconnect_aximm_host_M04_AXI_rready = smartconnect_0_M04_AXI_RREADY;
  assign regslice_data_M_AXI_arready = S00_AXI_1_ARREADY;
  assign regslice_data_M_AXI_awready = S00_AXI_1_AWREADY;
  assign regslice_data_M_AXI_bid[3:0] = S00_AXI_1_BID;
  assign regslice_data_M_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign regslice_data_M_AXI_bvalid = S00_AXI_1_BVALID;
  assign regslice_data_M_AXI_rdata[255:0] = S00_AXI_1_RDATA;
  assign regslice_data_M_AXI_rid[3:0] = S00_AXI_1_RID;
  assign regslice_data_M_AXI_rlast = S00_AXI_1_RLAST;
  assign regslice_data_M_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign regslice_data_M_AXI_rvalid = S00_AXI_1_RVALID;
  assign regslice_data_M_AXI_wready = S00_AXI_1_WREADY;
  assign smartconnect_0_M00_AXI_ARREADY = interconnect_aximm_ddrmem0_M00_AXI_arready;
  assign smartconnect_0_M00_AXI_AWREADY = interconnect_aximm_ddrmem0_M00_AXI_awready;
  assign smartconnect_0_M00_AXI_BRESP = interconnect_aximm_ddrmem0_M00_AXI_bresp[1:0];
  assign smartconnect_0_M00_AXI_BVALID = interconnect_aximm_ddrmem0_M00_AXI_bvalid;
  assign smartconnect_0_M00_AXI_RDATA = interconnect_aximm_ddrmem0_M00_AXI_rdata[511:0];
  assign smartconnect_0_M00_AXI_RLAST = interconnect_aximm_ddrmem0_M00_AXI_rlast;
  assign smartconnect_0_M00_AXI_RRESP = interconnect_aximm_ddrmem0_M00_AXI_rresp[1:0];
  assign smartconnect_0_M00_AXI_RVALID = interconnect_aximm_ddrmem0_M00_AXI_rvalid;
  assign smartconnect_0_M00_AXI_WREADY = interconnect_aximm_ddrmem0_M00_AXI_wready;
  assign smartconnect_0_M04_AXI_ARREADY = interconnect_aximm_host_M04_AXI_arready;
  assign smartconnect_0_M04_AXI_RDATA = interconnect_aximm_host_M04_AXI_rdata[255:0];
  assign smartconnect_0_M04_AXI_RLAST = interconnect_aximm_host_M04_AXI_rlast;
  assign smartconnect_0_M04_AXI_RRESP = interconnect_aximm_host_M04_AXI_rresp[1:0];
  assign smartconnect_0_M04_AXI_RVALID = interconnect_aximm_host_M04_AXI_rvalid;
  assign smartconnect_1_M00_AXI_ARREADY = interconnect_aximm_ddrmem1_M00_AXI_arready;
  assign smartconnect_1_M00_AXI_AWREADY = interconnect_aximm_ddrmem1_M00_AXI_awready;
  assign smartconnect_1_M00_AXI_BRESP = interconnect_aximm_ddrmem1_M00_AXI_bresp[1:0];
  assign smartconnect_1_M00_AXI_BVALID = interconnect_aximm_ddrmem1_M00_AXI_bvalid;
  assign smartconnect_1_M00_AXI_RDATA = interconnect_aximm_ddrmem1_M00_AXI_rdata[511:0];
  assign smartconnect_1_M00_AXI_RLAST = interconnect_aximm_ddrmem1_M00_AXI_rlast;
  assign smartconnect_1_M00_AXI_RRESP = interconnect_aximm_ddrmem1_M00_AXI_rresp[1:0];
  assign smartconnect_1_M00_AXI_RVALID = interconnect_aximm_ddrmem1_M00_AXI_rvalid;
  assign smartconnect_1_M00_AXI_WREADY = interconnect_aximm_ddrmem1_M00_AXI_wready;
  assign smartconnect_2_M00_AXI_ARREADY = interconnect_aximm_ddrmem2_M00_AXI_arready;
  assign smartconnect_2_M00_AXI_AWREADY = interconnect_aximm_ddrmem2_M00_AXI_awready;
  assign smartconnect_2_M00_AXI_BRESP = interconnect_aximm_ddrmem2_M00_AXI_bresp[1:0];
  assign smartconnect_2_M00_AXI_BVALID = interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  assign smartconnect_2_M00_AXI_RDATA = interconnect_aximm_ddrmem2_M00_AXI_rdata[511:0];
  assign smartconnect_2_M00_AXI_RLAST = interconnect_aximm_ddrmem2_M00_AXI_rlast;
  assign smartconnect_2_M00_AXI_RRESP = interconnect_aximm_ddrmem2_M00_AXI_rresp[1:0];
  assign smartconnect_2_M00_AXI_RVALID = interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  assign smartconnect_2_M00_AXI_WREADY = interconnect_aximm_ddrmem2_M00_AXI_wready;
  assign smartconnect_3_M00_AXI_ARREADY = interconnect_aximm_ddrmem3_M00_AXI_arready;
  assign smartconnect_3_M00_AXI_AWREADY = interconnect_aximm_ddrmem3_M00_AXI_awready;
  assign smartconnect_3_M00_AXI_BRESP = interconnect_aximm_ddrmem3_M00_AXI_bresp[1:0];
  assign smartconnect_3_M00_AXI_BVALID = interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  assign smartconnect_3_M00_AXI_RDATA = interconnect_aximm_ddrmem3_M00_AXI_rdata[511:0];
  assign smartconnect_3_M00_AXI_RLAST = interconnect_aximm_ddrmem3_M00_AXI_rlast;
  assign smartconnect_3_M00_AXI_RRESP = interconnect_aximm_ddrmem3_M00_AXI_rresp[1:0];
  assign smartconnect_3_M00_AXI_RVALID = interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  assign smartconnect_3_M00_AXI_WREADY = interconnect_aximm_ddrmem3_M00_AXI_wready;
  assign u_ocl_region_M00_AXI_arready = S01_AXI_1_ARREADY;
  assign u_ocl_region_M00_AXI_awready = S01_AXI_1_AWREADY;
  assign u_ocl_region_M00_AXI_bid[3:0] = S01_AXI_1_BID;
  assign u_ocl_region_M00_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign u_ocl_region_M00_AXI_bvalid = S01_AXI_1_BVALID;
  assign u_ocl_region_M00_AXI_rdata[511:0] = S01_AXI_1_RDATA;
  assign u_ocl_region_M00_AXI_rid[3:0] = S01_AXI_1_RID;
  assign u_ocl_region_M00_AXI_rlast = S01_AXI_1_RLAST;
  assign u_ocl_region_M00_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign u_ocl_region_M00_AXI_rvalid = S01_AXI_1_RVALID;
  assign u_ocl_region_M00_AXI_wready = S01_AXI_1_WREADY;
  assign u_ocl_region_M01_AXI_arready = S01_AXI1_1_ARREADY;
  assign u_ocl_region_M01_AXI_awready = S01_AXI1_1_AWREADY;
  assign u_ocl_region_M01_AXI_bid[3:0] = S01_AXI1_1_BID;
  assign u_ocl_region_M01_AXI_bresp[1:0] = S01_AXI1_1_BRESP;
  assign u_ocl_region_M01_AXI_bvalid = S01_AXI1_1_BVALID;
  assign u_ocl_region_M01_AXI_rdata[511:0] = S01_AXI1_1_RDATA;
  assign u_ocl_region_M01_AXI_rid[3:0] = S01_AXI1_1_RID;
  assign u_ocl_region_M01_AXI_rlast = S01_AXI1_1_RLAST;
  assign u_ocl_region_M01_AXI_rresp[1:0] = S01_AXI1_1_RRESP;
  assign u_ocl_region_M01_AXI_rvalid = S01_AXI1_1_RVALID;
  assign u_ocl_region_M01_AXI_wready = S01_AXI1_1_WREADY;
  assign u_ocl_region_M02_AXI_arready = S01_AXI2_1_ARREADY;
  assign u_ocl_region_M02_AXI_awready = S01_AXI2_1_AWREADY;
  assign u_ocl_region_M02_AXI_bid[3:0] = S01_AXI2_1_BID;
  assign u_ocl_region_M02_AXI_bresp[1:0] = S01_AXI2_1_BRESP;
  assign u_ocl_region_M02_AXI_bvalid = S01_AXI2_1_BVALID;
  assign u_ocl_region_M02_AXI_rdata[511:0] = S01_AXI2_1_RDATA;
  assign u_ocl_region_M02_AXI_rid[3:0] = S01_AXI2_1_RID;
  assign u_ocl_region_M02_AXI_rlast = S01_AXI2_1_RLAST;
  assign u_ocl_region_M02_AXI_rresp[1:0] = S01_AXI2_1_RRESP;
  assign u_ocl_region_M02_AXI_rvalid = S01_AXI2_1_RVALID;
  assign u_ocl_region_M02_AXI_wready = S01_AXI2_1_WREADY;
  assign u_ocl_region_M03_AXI_arready = S01_AXI3_1_ARREADY;
  assign u_ocl_region_M03_AXI_awready = S01_AXI3_1_AWREADY;
  assign u_ocl_region_M03_AXI_bid[3:0] = S01_AXI3_1_BID;
  assign u_ocl_region_M03_AXI_bresp[1:0] = S01_AXI3_1_BRESP;
  assign u_ocl_region_M03_AXI_bvalid = S01_AXI3_1_BVALID;
  assign u_ocl_region_M03_AXI_rdata[511:0] = S01_AXI3_1_RDATA;
  assign u_ocl_region_M03_AXI_rid[3:0] = S01_AXI3_1_RID;
  assign u_ocl_region_M03_AXI_rlast = S01_AXI3_1_RLAST;
  assign u_ocl_region_M03_AXI_rresp[1:0] = S01_AXI3_1_RRESP;
  assign u_ocl_region_M03_AXI_rvalid = S01_AXI3_1_RVALID;
  assign u_ocl_region_M03_AXI_wready = S01_AXI3_1_WREADY;
  xcl_design_interconnect_aximm_ddrmem0_0 interconnect_aximm_ddrmem0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(smartconnect_0_M00_AXI1_ARADDR),
        .S00_AXI_arburst(smartconnect_0_M00_AXI1_ARBURST),
        .S00_AXI_arcache(smartconnect_0_M00_AXI1_ARCACHE),
        .S00_AXI_arid(smartconnect_0_M00_AXI1_ARID),
        .S00_AXI_arlen(smartconnect_0_M00_AXI1_ARLEN),
        .S00_AXI_arlock(smartconnect_0_M00_AXI1_ARLOCK),
        .S00_AXI_arprot(smartconnect_0_M00_AXI1_ARPROT),
        .S00_AXI_arqos(smartconnect_0_M00_AXI1_ARQOS),
        .S00_AXI_arready(smartconnect_0_M00_AXI1_ARREADY),
        .S00_AXI_arsize(smartconnect_0_M00_AXI1_ARSIZE),
        .S00_AXI_aruser(smartconnect_0_M00_AXI1_ARUSER),
        .S00_AXI_arvalid(smartconnect_0_M00_AXI1_ARVALID),
        .S00_AXI_awaddr(smartconnect_0_M00_AXI1_AWADDR),
        .S00_AXI_awburst(smartconnect_0_M00_AXI1_AWBURST),
        .S00_AXI_awcache(smartconnect_0_M00_AXI1_AWCACHE),
        .S00_AXI_awid(smartconnect_0_M00_AXI1_AWID),
        .S00_AXI_awlen(smartconnect_0_M00_AXI1_AWLEN),
        .S00_AXI_awlock(smartconnect_0_M00_AXI1_AWLOCK),
        .S00_AXI_awprot(smartconnect_0_M00_AXI1_AWPROT),
        .S00_AXI_awqos(smartconnect_0_M00_AXI1_AWQOS),
        .S00_AXI_awready(smartconnect_0_M00_AXI1_AWREADY),
        .S00_AXI_awsize(smartconnect_0_M00_AXI1_AWSIZE),
        .S00_AXI_awuser(smartconnect_0_M00_AXI1_AWUSER),
        .S00_AXI_awvalid(smartconnect_0_M00_AXI1_AWVALID),
        .S00_AXI_bid(smartconnect_0_M00_AXI1_BID),
        .S00_AXI_bready(smartconnect_0_M00_AXI1_BREADY),
        .S00_AXI_bresp(smartconnect_0_M00_AXI1_BRESP),
        .S00_AXI_buser(smartconnect_0_M00_AXI1_BUSER),
        .S00_AXI_bvalid(smartconnect_0_M00_AXI1_BVALID),
        .S00_AXI_rdata(smartconnect_0_M00_AXI1_RDATA),
        .S00_AXI_rid(smartconnect_0_M00_AXI1_RID),
        .S00_AXI_rlast(smartconnect_0_M00_AXI1_RLAST),
        .S00_AXI_rready(smartconnect_0_M00_AXI1_RREADY),
        .S00_AXI_rresp(smartconnect_0_M00_AXI1_RRESP),
        .S00_AXI_ruser(smartconnect_0_M00_AXI1_RUSER),
        .S00_AXI_rvalid(smartconnect_0_M00_AXI1_RVALID),
        .S00_AXI_wdata(smartconnect_0_M00_AXI1_WDATA),
        .S00_AXI_wlast(smartconnect_0_M00_AXI1_WLAST),
        .S00_AXI_wready(smartconnect_0_M00_AXI1_WREADY),
        .S00_AXI_wstrb(smartconnect_0_M00_AXI1_WSTRB),
        .S00_AXI_wuser(smartconnect_0_M00_AXI1_WUSER),
        .S00_AXI_wvalid(smartconnect_0_M00_AXI1_WVALID),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arid(S01_AXI_1_ARID),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arlock(S01_AXI_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arqos(S01_AXI_1_ARQOS),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_1_AWCACHE),
        .S01_AXI_awid(S01_AXI_1_AWID),
        .S01_AXI_awlen(S01_AXI_1_AWLEN),
        .S01_AXI_awlock(S01_AXI_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awqos(S01_AXI_1_AWQOS),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bid(S01_AXI_1_BID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rid(S01_AXI_1_RID),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wlast(S01_AXI_1_WLAST),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID),
        .aclk(ACLK1_1),
        .aclk1(ACLK_1),
        .aclk2(clkwiz_kernel_clk_out1_1),
        .aresetn(aresetn_1));
  xcl_design_interconnect_aximm_ddrmem1_0 interconnect_aximm_ddrmem1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .S00_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .S00_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .S00_AXI_arid(smartconnect_0_M01_AXI_ARID),
        .S00_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .S00_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .S00_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .S00_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .S00_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .S00_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .S00_AXI_aruser(smartconnect_0_M01_AXI_ARUSER),
        .S00_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .S00_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .S00_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .S00_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .S00_AXI_awid(smartconnect_0_M01_AXI_AWID),
        .S00_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .S00_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .S00_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .S00_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .S00_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .S00_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .S00_AXI_awuser(smartconnect_0_M01_AXI_AWUSER),
        .S00_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .S00_AXI_bid(smartconnect_0_M01_AXI_BID),
        .S00_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .S00_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .S00_AXI_buser(smartconnect_0_M01_AXI_BUSER),
        .S00_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .S00_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .S00_AXI_rid(smartconnect_0_M01_AXI_RID),
        .S00_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .S00_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .S00_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .S00_AXI_ruser(smartconnect_0_M01_AXI_RUSER),
        .S00_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .S00_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .S00_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .S00_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .S00_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .S00_AXI_wuser(smartconnect_0_M01_AXI_WUSER),
        .S00_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S01_AXI_araddr(S01_AXI1_1_ARADDR),
        .S01_AXI_arburst(S01_AXI1_1_ARBURST),
        .S01_AXI_arcache(S01_AXI1_1_ARCACHE),
        .S01_AXI_arid(S01_AXI1_1_ARID),
        .S01_AXI_arlen(S01_AXI1_1_ARLEN),
        .S01_AXI_arlock(S01_AXI1_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI1_1_ARPROT),
        .S01_AXI_arqos(S01_AXI1_1_ARQOS),
        .S01_AXI_arready(S01_AXI1_1_ARREADY),
        .S01_AXI_arsize(S01_AXI1_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI1_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI1_1_AWADDR),
        .S01_AXI_awburst(S01_AXI1_1_AWBURST),
        .S01_AXI_awcache(S01_AXI1_1_AWCACHE),
        .S01_AXI_awid(S01_AXI1_1_AWID),
        .S01_AXI_awlen(S01_AXI1_1_AWLEN),
        .S01_AXI_awlock(S01_AXI1_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI1_1_AWPROT),
        .S01_AXI_awqos(S01_AXI1_1_AWQOS),
        .S01_AXI_awready(S01_AXI1_1_AWREADY),
        .S01_AXI_awsize(S01_AXI1_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI1_1_AWVALID),
        .S01_AXI_bid(S01_AXI1_1_BID),
        .S01_AXI_bready(S01_AXI1_1_BREADY),
        .S01_AXI_bresp(S01_AXI1_1_BRESP),
        .S01_AXI_bvalid(S01_AXI1_1_BVALID),
        .S01_AXI_rdata(S01_AXI1_1_RDATA),
        .S01_AXI_rid(S01_AXI1_1_RID),
        .S01_AXI_rlast(S01_AXI1_1_RLAST),
        .S01_AXI_rready(S01_AXI1_1_RREADY),
        .S01_AXI_rresp(S01_AXI1_1_RRESP),
        .S01_AXI_rvalid(S01_AXI1_1_RVALID),
        .S01_AXI_wdata(S01_AXI1_1_WDATA),
        .S01_AXI_wlast(S01_AXI1_1_WLAST),
        .S01_AXI_wready(S01_AXI1_1_WREADY),
        .S01_AXI_wstrb(S01_AXI1_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI1_1_WVALID),
        .aclk(ACLK2_1),
        .aclk1(ACLK_1),
        .aclk2(clkwiz_kernel_clk_out1_1),
        .aresetn(aresetn_1));
  xcl_design_interconnect_aximm_ddrmem2_0 interconnect_aximm_ddrmem2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_2_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_2_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_2_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_2_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .S00_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .S00_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .S00_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .S00_AXI_arid(smartconnect_0_M02_AXI_ARID),
        .S00_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .S00_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .S00_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .S00_AXI_arqos(smartconnect_0_M02_AXI_ARQOS),
        .S00_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .S00_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .S00_AXI_aruser(smartconnect_0_M02_AXI_ARUSER),
        .S00_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .S00_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .S00_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .S00_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .S00_AXI_awid(smartconnect_0_M02_AXI_AWID),
        .S00_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .S00_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .S00_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .S00_AXI_awqos(smartconnect_0_M02_AXI_AWQOS),
        .S00_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .S00_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .S00_AXI_awuser(smartconnect_0_M02_AXI_AWUSER),
        .S00_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .S00_AXI_bid(smartconnect_0_M02_AXI_BID),
        .S00_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .S00_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .S00_AXI_buser(smartconnect_0_M02_AXI_BUSER),
        .S00_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .S00_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .S00_AXI_rid(smartconnect_0_M02_AXI_RID),
        .S00_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .S00_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .S00_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .S00_AXI_ruser(smartconnect_0_M02_AXI_RUSER),
        .S00_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .S00_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .S00_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .S00_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .S00_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .S00_AXI_wuser(smartconnect_0_M02_AXI_WUSER),
        .S00_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .S01_AXI_araddr(S01_AXI2_1_ARADDR),
        .S01_AXI_arburst(S01_AXI2_1_ARBURST),
        .S01_AXI_arcache(S01_AXI2_1_ARCACHE),
        .S01_AXI_arid(S01_AXI2_1_ARID),
        .S01_AXI_arlen(S01_AXI2_1_ARLEN),
        .S01_AXI_arlock(S01_AXI2_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI2_1_ARPROT),
        .S01_AXI_arqos(S01_AXI2_1_ARQOS),
        .S01_AXI_arready(S01_AXI2_1_ARREADY),
        .S01_AXI_arsize(S01_AXI2_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI2_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI2_1_AWADDR),
        .S01_AXI_awburst(S01_AXI2_1_AWBURST),
        .S01_AXI_awcache(S01_AXI2_1_AWCACHE),
        .S01_AXI_awid(S01_AXI2_1_AWID),
        .S01_AXI_awlen(S01_AXI2_1_AWLEN),
        .S01_AXI_awlock(S01_AXI2_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI2_1_AWPROT),
        .S01_AXI_awqos(S01_AXI2_1_AWQOS),
        .S01_AXI_awready(S01_AXI2_1_AWREADY),
        .S01_AXI_awsize(S01_AXI2_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI2_1_AWVALID),
        .S01_AXI_bid(S01_AXI2_1_BID),
        .S01_AXI_bready(S01_AXI2_1_BREADY),
        .S01_AXI_bresp(S01_AXI2_1_BRESP),
        .S01_AXI_bvalid(S01_AXI2_1_BVALID),
        .S01_AXI_rdata(S01_AXI2_1_RDATA),
        .S01_AXI_rid(S01_AXI2_1_RID),
        .S01_AXI_rlast(S01_AXI2_1_RLAST),
        .S01_AXI_rready(S01_AXI2_1_RREADY),
        .S01_AXI_rresp(S01_AXI2_1_RRESP),
        .S01_AXI_rvalid(S01_AXI2_1_RVALID),
        .S01_AXI_wdata(S01_AXI2_1_WDATA),
        .S01_AXI_wlast(S01_AXI2_1_WLAST),
        .S01_AXI_wready(S01_AXI2_1_WREADY),
        .S01_AXI_wstrb(S01_AXI2_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI2_1_WVALID),
        .aclk(ACLK3_1),
        .aclk1(ACLK_1),
        .aclk2(clkwiz_kernel_clk_out1_1),
        .aresetn(aresetn_1));
  xcl_design_interconnect_aximm_ddrmem3_0 interconnect_aximm_ddrmem3
       (.M00_AXI_araddr(smartconnect_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_3_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_3_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_3_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_3_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_3_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_3_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_3_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_3_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_3_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_3_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_3_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_3_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_3_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_3_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_3_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_3_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_3_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_3_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_3_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_3_M00_AXI_WVALID),
        .S00_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .S00_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .S00_AXI_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .S00_AXI_arid(smartconnect_0_M03_AXI_ARID),
        .S00_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .S00_AXI_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .S00_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .S00_AXI_arqos(smartconnect_0_M03_AXI_ARQOS),
        .S00_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .S00_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .S00_AXI_aruser(smartconnect_0_M03_AXI_ARUSER),
        .S00_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .S00_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .S00_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .S00_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .S00_AXI_awid(smartconnect_0_M03_AXI_AWID),
        .S00_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .S00_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .S00_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .S00_AXI_awqos(smartconnect_0_M03_AXI_AWQOS),
        .S00_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .S00_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .S00_AXI_awuser(smartconnect_0_M03_AXI_AWUSER),
        .S00_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .S00_AXI_bid(smartconnect_0_M03_AXI_BID),
        .S00_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .S00_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .S00_AXI_buser(smartconnect_0_M03_AXI_BUSER),
        .S00_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .S00_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .S00_AXI_rid(smartconnect_0_M03_AXI_RID),
        .S00_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .S00_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .S00_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .S00_AXI_ruser(smartconnect_0_M03_AXI_RUSER),
        .S00_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .S00_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .S00_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .S00_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .S00_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .S00_AXI_wuser(smartconnect_0_M03_AXI_WUSER),
        .S00_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .S01_AXI_araddr(S01_AXI3_1_ARADDR),
        .S01_AXI_arburst(S01_AXI3_1_ARBURST),
        .S01_AXI_arcache(S01_AXI3_1_ARCACHE),
        .S01_AXI_arid(S01_AXI3_1_ARID),
        .S01_AXI_arlen(S01_AXI3_1_ARLEN),
        .S01_AXI_arlock(S01_AXI3_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI3_1_ARPROT),
        .S01_AXI_arqos(S01_AXI3_1_ARQOS),
        .S01_AXI_arready(S01_AXI3_1_ARREADY),
        .S01_AXI_arsize(S01_AXI3_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI3_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI3_1_AWADDR),
        .S01_AXI_awburst(S01_AXI3_1_AWBURST),
        .S01_AXI_awcache(S01_AXI3_1_AWCACHE),
        .S01_AXI_awid(S01_AXI3_1_AWID),
        .S01_AXI_awlen(S01_AXI3_1_AWLEN),
        .S01_AXI_awlock(S01_AXI3_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI3_1_AWPROT),
        .S01_AXI_awqos(S01_AXI3_1_AWQOS),
        .S01_AXI_awready(S01_AXI3_1_AWREADY),
        .S01_AXI_awsize(S01_AXI3_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI3_1_AWVALID),
        .S01_AXI_bid(S01_AXI3_1_BID),
        .S01_AXI_bready(S01_AXI3_1_BREADY),
        .S01_AXI_bresp(S01_AXI3_1_BRESP),
        .S01_AXI_bvalid(S01_AXI3_1_BVALID),
        .S01_AXI_rdata(S01_AXI3_1_RDATA),
        .S01_AXI_rid(S01_AXI3_1_RID),
        .S01_AXI_rlast(S01_AXI3_1_RLAST),
        .S01_AXI_rready(S01_AXI3_1_RREADY),
        .S01_AXI_rresp(S01_AXI3_1_RRESP),
        .S01_AXI_rvalid(S01_AXI3_1_RVALID),
        .S01_AXI_wdata(S01_AXI3_1_WDATA),
        .S01_AXI_wlast(S01_AXI3_1_WLAST),
        .S01_AXI_wready(S01_AXI3_1_WREADY),
        .S01_AXI_wstrb(S01_AXI3_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI3_1_WVALID),
        .aclk(ACLK4_1),
        .aclk1(ACLK_1),
        .aclk2(clkwiz_kernel_clk_out1_1),
        .aresetn(aresetn_1));
  xcl_design_interconnect_aximm_host_0 interconnect_aximm_host
       (.M00_AXI_araddr(smartconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arid(smartconnect_0_M00_AXI1_ARID),
        .M00_AXI_arlen(smartconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI1_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awid(smartconnect_0_M00_AXI1_AWID),
        .M00_AXI_awlen(smartconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI1_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bid(smartconnect_0_M00_AXI1_BID),
        .M00_AXI_bready(smartconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI1_BRESP),
        .M00_AXI_buser(smartconnect_0_M00_AXI1_BUSER),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rid(smartconnect_0_M00_AXI1_RID),
        .M00_AXI_rlast(smartconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI1_RRESP),
        .M00_AXI_ruser(smartconnect_0_M00_AXI1_RUSER),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wuser(smartconnect_0_M00_AXI1_WUSER),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI1_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(smartconnect_0_M01_AXI_ARID),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_aruser(smartconnect_0_M01_AXI_ARUSER),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(smartconnect_0_M01_AXI_AWID),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awuser(smartconnect_0_M01_AXI_AWUSER),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(smartconnect_0_M01_AXI_BID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_buser(smartconnect_0_M01_AXI_BUSER),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(smartconnect_0_M01_AXI_RID),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_ruser(smartconnect_0_M01_AXI_RUSER),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wuser(smartconnect_0_M01_AXI_WUSER),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(smartconnect_0_M02_AXI_ARID),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(smartconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_aruser(smartconnect_0_M02_AXI_ARUSER),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(smartconnect_0_M02_AXI_AWID),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(smartconnect_0_M02_AXI_AWQOS),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awuser(smartconnect_0_M02_AXI_AWUSER),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bid(smartconnect_0_M02_AXI_BID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_buser(smartconnect_0_M02_AXI_BUSER),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rid(smartconnect_0_M02_AXI_RID),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_ruser(smartconnect_0_M02_AXI_RUSER),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wuser(smartconnect_0_M02_AXI_WUSER),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arid(smartconnect_0_M03_AXI_ARID),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arqos(smartconnect_0_M03_AXI_ARQOS),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_aruser(smartconnect_0_M03_AXI_ARUSER),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awid(smartconnect_0_M03_AXI_AWID),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awqos(smartconnect_0_M03_AXI_AWQOS),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awuser(smartconnect_0_M03_AXI_AWUSER),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bid(smartconnect_0_M03_AXI_BID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_buser(smartconnect_0_M03_AXI_BUSER),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rid(smartconnect_0_M03_AXI_RID),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_ruser(smartconnect_0_M03_AXI_RUSER),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wuser(smartconnect_0_M03_AXI_WUSER),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(smartconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arlen(smartconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rlast(smartconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(ACLK_1),
        .aclk1(aclk1_2),
        .aresetn(aresetn_1));
endmodule

module m00_couplers_imp_190CNN3
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1T8JY77
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
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [31:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [6:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [6:0]m00_regslice_to_m00_couplers_AWADDR;
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
  assign M_AXI_araddr[6:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  xcl_design_m00_regslice_0 m00_regslice
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
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[6:0]),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[6:0]),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_13J5K85
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
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [15:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [15:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
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
  assign M_AXI_araddr[15:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  xcl_design_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
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
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR[15:0]),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR[15:0]),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_1JAWVL5
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_9DRP7Z
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]auto_cc_to_m02_regslice_ARADDR;
  wire [2:0]auto_cc_to_m02_regslice_ARPROT;
  wire auto_cc_to_m02_regslice_ARREADY;
  wire auto_cc_to_m02_regslice_ARVALID;
  wire [31:0]auto_cc_to_m02_regslice_AWADDR;
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
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
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
  wire [31:0]m02_regslice_to_m02_couplers_ARADDR;
  wire [2:0]m02_regslice_to_m02_couplers_ARPROT;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [31:0]m02_regslice_to_m02_couplers_AWADDR;
  wire [2:0]m02_regslice_to_m02_couplers_AWPROT;
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
  assign M_AXI_araddr[31:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_regslice_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_regslice_to_m02_couplers_AWPROT;
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
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
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
  xcl_design_auto_cc_1 auto_cc
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
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR),
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
  xcl_design_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arprot(m02_regslice_to_m02_couplers_ARPROT),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awprot(m02_regslice_to_m02_couplers_AWPROT),
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

module m02_couplers_imp_T4KEUB
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_3S1IED
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_J2E8TL
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
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]auto_cc_to_m03_regslice_ARADDR;
  wire [2:0]auto_cc_to_m03_regslice_ARPROT;
  wire auto_cc_to_m03_regslice_ARREADY;
  wire auto_cc_to_m03_regslice_ARVALID;
  wire [31:0]auto_cc_to_m03_regslice_AWADDR;
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
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
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
  wire [31:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [31:0]m03_regslice_to_m03_couplers_AWADDR;
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
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
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
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
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
  xcl_design_auto_cc_2 auto_cc
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
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR),
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
  xcl_design_m03_regslice_0 m03_regslice
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

module m04_couplers_imp_1A1MMKA
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]m04_couplers_to_m04_regslice_ARADDR;
  wire [2:0]m04_couplers_to_m04_regslice_ARPROT;
  wire m04_couplers_to_m04_regslice_ARREADY;
  wire m04_couplers_to_m04_regslice_ARVALID;
  wire [31:0]m04_couplers_to_m04_regslice_AWADDR;
  wire [2:0]m04_couplers_to_m04_regslice_AWPROT;
  wire m04_couplers_to_m04_regslice_AWREADY;
  wire m04_couplers_to_m04_regslice_AWVALID;
  wire m04_couplers_to_m04_regslice_BREADY;
  wire [1:0]m04_couplers_to_m04_regslice_BRESP;
  wire m04_couplers_to_m04_regslice_BVALID;
  wire [31:0]m04_couplers_to_m04_regslice_RDATA;
  wire m04_couplers_to_m04_regslice_RREADY;
  wire [1:0]m04_couplers_to_m04_regslice_RRESP;
  wire m04_couplers_to_m04_regslice_RVALID;
  wire [31:0]m04_couplers_to_m04_regslice_WDATA;
  wire m04_couplers_to_m04_regslice_WREADY;
  wire [3:0]m04_couplers_to_m04_regslice_WSTRB;
  wire m04_couplers_to_m04_regslice_WVALID;
  wire [31:0]m04_regslice_to_m04_couplers_ARADDR;
  wire [2:0]m04_regslice_to_m04_couplers_ARPROT;
  wire m04_regslice_to_m04_couplers_ARREADY;
  wire m04_regslice_to_m04_couplers_ARVALID;
  wire [31:0]m04_regslice_to_m04_couplers_AWADDR;
  wire [2:0]m04_regslice_to_m04_couplers_AWPROT;
  wire m04_regslice_to_m04_couplers_AWREADY;
  wire m04_regslice_to_m04_couplers_AWVALID;
  wire m04_regslice_to_m04_couplers_BREADY;
  wire [1:0]m04_regslice_to_m04_couplers_BRESP;
  wire m04_regslice_to_m04_couplers_BVALID;
  wire [31:0]m04_regslice_to_m04_couplers_RDATA;
  wire m04_regslice_to_m04_couplers_RREADY;
  wire [1:0]m04_regslice_to_m04_couplers_RRESP;
  wire m04_regslice_to_m04_couplers_RVALID;
  wire [31:0]m04_regslice_to_m04_couplers_WDATA;
  wire m04_regslice_to_m04_couplers_WREADY;
  wire [3:0]m04_regslice_to_m04_couplers_WSTRB;
  wire m04_regslice_to_m04_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m04_regslice_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_regslice_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_regslice_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_regslice_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_regslice_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_regslice_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_regslice_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_regslice_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_regslice_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_regslice_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_regslice_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_regslice_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_regslice_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_regslice_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_regslice_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_regslice_WREADY;
  assign m04_couplers_to_m04_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_regslice_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_regslice_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_regslice_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_regslice_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_regslice_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_regslice_WVALID = S_AXI_wvalid;
  assign m04_regslice_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_regslice_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_regslice_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_regslice_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_regslice_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_regslice_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_regslice_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_regslice_to_m04_couplers_WREADY = M_AXI_wready;
  xcl_design_m04_regslice_0 m04_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m04_regslice_to_m04_couplers_ARADDR),
        .m_axi_arprot(m04_regslice_to_m04_couplers_ARPROT),
        .m_axi_arready(m04_regslice_to_m04_couplers_ARREADY),
        .m_axi_arvalid(m04_regslice_to_m04_couplers_ARVALID),
        .m_axi_awaddr(m04_regslice_to_m04_couplers_AWADDR),
        .m_axi_awprot(m04_regslice_to_m04_couplers_AWPROT),
        .m_axi_awready(m04_regslice_to_m04_couplers_AWREADY),
        .m_axi_awvalid(m04_regslice_to_m04_couplers_AWVALID),
        .m_axi_bready(m04_regslice_to_m04_couplers_BREADY),
        .m_axi_bresp(m04_regslice_to_m04_couplers_BRESP),
        .m_axi_bvalid(m04_regslice_to_m04_couplers_BVALID),
        .m_axi_rdata(m04_regslice_to_m04_couplers_RDATA),
        .m_axi_rready(m04_regslice_to_m04_couplers_RREADY),
        .m_axi_rresp(m04_regslice_to_m04_couplers_RRESP),
        .m_axi_rvalid(m04_regslice_to_m04_couplers_RVALID),
        .m_axi_wdata(m04_regslice_to_m04_couplers_WDATA),
        .m_axi_wready(m04_regslice_to_m04_couplers_WREADY),
        .m_axi_wstrb(m04_regslice_to_m04_couplers_WSTRB),
        .m_axi_wvalid(m04_regslice_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_m04_regslice_ARADDR),
        .s_axi_arprot(m04_couplers_to_m04_regslice_ARPROT),
        .s_axi_arready(m04_couplers_to_m04_regslice_ARREADY),
        .s_axi_arvalid(m04_couplers_to_m04_regslice_ARVALID),
        .s_axi_awaddr(m04_couplers_to_m04_regslice_AWADDR),
        .s_axi_awprot(m04_couplers_to_m04_regslice_AWPROT),
        .s_axi_awready(m04_couplers_to_m04_regslice_AWREADY),
        .s_axi_awvalid(m04_couplers_to_m04_regslice_AWVALID),
        .s_axi_bready(m04_couplers_to_m04_regslice_BREADY),
        .s_axi_bresp(m04_couplers_to_m04_regslice_BRESP),
        .s_axi_bvalid(m04_couplers_to_m04_regslice_BVALID),
        .s_axi_rdata(m04_couplers_to_m04_regslice_RDATA),
        .s_axi_rready(m04_couplers_to_m04_regslice_RREADY),
        .s_axi_rresp(m04_couplers_to_m04_regslice_RRESP),
        .s_axi_rvalid(m04_couplers_to_m04_regslice_RVALID),
        .s_axi_wdata(m04_couplers_to_m04_regslice_WDATA),
        .s_axi_wready(m04_couplers_to_m04_regslice_WREADY),
        .s_axi_wstrb(m04_couplers_to_m04_regslice_WSTRB),
        .s_axi_wvalid(m04_couplers_to_m04_regslice_WVALID));
endmodule

module m04_couplers_imp_1TPUQD2
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_127TW34
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_1HFM0OS
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]m05_couplers_to_m05_regslice_ARADDR;
  wire [2:0]m05_couplers_to_m05_regslice_ARPROT;
  wire m05_couplers_to_m05_regslice_ARREADY;
  wire m05_couplers_to_m05_regslice_ARVALID;
  wire [31:0]m05_couplers_to_m05_regslice_AWADDR;
  wire [2:0]m05_couplers_to_m05_regslice_AWPROT;
  wire m05_couplers_to_m05_regslice_AWREADY;
  wire m05_couplers_to_m05_regslice_AWVALID;
  wire m05_couplers_to_m05_regslice_BREADY;
  wire [1:0]m05_couplers_to_m05_regslice_BRESP;
  wire m05_couplers_to_m05_regslice_BVALID;
  wire [31:0]m05_couplers_to_m05_regslice_RDATA;
  wire m05_couplers_to_m05_regslice_RREADY;
  wire [1:0]m05_couplers_to_m05_regslice_RRESP;
  wire m05_couplers_to_m05_regslice_RVALID;
  wire [31:0]m05_couplers_to_m05_regslice_WDATA;
  wire m05_couplers_to_m05_regslice_WREADY;
  wire [3:0]m05_couplers_to_m05_regslice_WSTRB;
  wire m05_couplers_to_m05_regslice_WVALID;
  wire [31:0]m05_regslice_to_m05_couplers_ARADDR;
  wire [2:0]m05_regslice_to_m05_couplers_ARPROT;
  wire m05_regslice_to_m05_couplers_ARREADY;
  wire m05_regslice_to_m05_couplers_ARVALID;
  wire [31:0]m05_regslice_to_m05_couplers_AWADDR;
  wire [2:0]m05_regslice_to_m05_couplers_AWPROT;
  wire m05_regslice_to_m05_couplers_AWREADY;
  wire m05_regslice_to_m05_couplers_AWVALID;
  wire m05_regslice_to_m05_couplers_BREADY;
  wire [1:0]m05_regslice_to_m05_couplers_BRESP;
  wire m05_regslice_to_m05_couplers_BVALID;
  wire [31:0]m05_regslice_to_m05_couplers_RDATA;
  wire m05_regslice_to_m05_couplers_RREADY;
  wire [1:0]m05_regslice_to_m05_couplers_RRESP;
  wire m05_regslice_to_m05_couplers_RVALID;
  wire [31:0]m05_regslice_to_m05_couplers_WDATA;
  wire m05_regslice_to_m05_couplers_WREADY;
  wire [3:0]m05_regslice_to_m05_couplers_WSTRB;
  wire m05_regslice_to_m05_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m05_regslice_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_regslice_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_regslice_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_regslice_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_regslice_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_regslice_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_regslice_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_regslice_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_regslice_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_regslice_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_regslice_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_regslice_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_regslice_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_regslice_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_regslice_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_regslice_WREADY;
  assign m05_couplers_to_m05_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_regslice_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_regslice_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_regslice_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_regslice_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_regslice_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_regslice_WVALID = S_AXI_wvalid;
  assign m05_regslice_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_regslice_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_regslice_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_regslice_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_regslice_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_regslice_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_regslice_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_regslice_to_m05_couplers_WREADY = M_AXI_wready;
  xcl_design_m05_regslice_0 m05_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m05_regslice_to_m05_couplers_ARADDR),
        .m_axi_arprot(m05_regslice_to_m05_couplers_ARPROT),
        .m_axi_arready(m05_regslice_to_m05_couplers_ARREADY),
        .m_axi_arvalid(m05_regslice_to_m05_couplers_ARVALID),
        .m_axi_awaddr(m05_regslice_to_m05_couplers_AWADDR),
        .m_axi_awprot(m05_regslice_to_m05_couplers_AWPROT),
        .m_axi_awready(m05_regslice_to_m05_couplers_AWREADY),
        .m_axi_awvalid(m05_regslice_to_m05_couplers_AWVALID),
        .m_axi_bready(m05_regslice_to_m05_couplers_BREADY),
        .m_axi_bresp(m05_regslice_to_m05_couplers_BRESP),
        .m_axi_bvalid(m05_regslice_to_m05_couplers_BVALID),
        .m_axi_rdata(m05_regslice_to_m05_couplers_RDATA),
        .m_axi_rready(m05_regslice_to_m05_couplers_RREADY),
        .m_axi_rresp(m05_regslice_to_m05_couplers_RRESP),
        .m_axi_rvalid(m05_regslice_to_m05_couplers_RVALID),
        .m_axi_wdata(m05_regslice_to_m05_couplers_WDATA),
        .m_axi_wready(m05_regslice_to_m05_couplers_WREADY),
        .m_axi_wstrb(m05_regslice_to_m05_couplers_WSTRB),
        .m_axi_wvalid(m05_regslice_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_m05_regslice_ARADDR),
        .s_axi_arprot(m05_couplers_to_m05_regslice_ARPROT),
        .s_axi_arready(m05_couplers_to_m05_regslice_ARREADY),
        .s_axi_arvalid(m05_couplers_to_m05_regslice_ARVALID),
        .s_axi_awaddr(m05_couplers_to_m05_regslice_AWADDR),
        .s_axi_awprot(m05_couplers_to_m05_regslice_AWPROT),
        .s_axi_awready(m05_couplers_to_m05_regslice_AWREADY),
        .s_axi_awvalid(m05_couplers_to_m05_regslice_AWVALID),
        .s_axi_bready(m05_couplers_to_m05_regslice_BREADY),
        .s_axi_bresp(m05_couplers_to_m05_regslice_BRESP),
        .s_axi_bvalid(m05_couplers_to_m05_regslice_BVALID),
        .s_axi_rdata(m05_couplers_to_m05_regslice_RDATA),
        .s_axi_rready(m05_couplers_to_m05_regslice_RREADY),
        .s_axi_rresp(m05_couplers_to_m05_regslice_RRESP),
        .s_axi_rvalid(m05_couplers_to_m05_regslice_RVALID),
        .s_axi_wdata(m05_couplers_to_m05_regslice_WDATA),
        .s_axi_wready(m05_couplers_to_m05_regslice_WREADY),
        .s_axi_wstrb(m05_couplers_to_m05_regslice_WSTRB),
        .s_axi_wvalid(m05_couplers_to_m05_regslice_WVALID));
endmodule

module m06_couplers_imp_AKD2T6
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_UV4Z7A
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]m06_couplers_to_m06_regslice_ARADDR;
  wire [2:0]m06_couplers_to_m06_regslice_ARPROT;
  wire m06_couplers_to_m06_regslice_ARREADY;
  wire m06_couplers_to_m06_regslice_ARVALID;
  wire [31:0]m06_couplers_to_m06_regslice_AWADDR;
  wire [2:0]m06_couplers_to_m06_regslice_AWPROT;
  wire m06_couplers_to_m06_regslice_AWREADY;
  wire m06_couplers_to_m06_regslice_AWVALID;
  wire m06_couplers_to_m06_regslice_BREADY;
  wire [1:0]m06_couplers_to_m06_regslice_BRESP;
  wire m06_couplers_to_m06_regslice_BVALID;
  wire [31:0]m06_couplers_to_m06_regslice_RDATA;
  wire m06_couplers_to_m06_regslice_RREADY;
  wire [1:0]m06_couplers_to_m06_regslice_RRESP;
  wire m06_couplers_to_m06_regslice_RVALID;
  wire [31:0]m06_couplers_to_m06_regslice_WDATA;
  wire m06_couplers_to_m06_regslice_WREADY;
  wire [3:0]m06_couplers_to_m06_regslice_WSTRB;
  wire m06_couplers_to_m06_regslice_WVALID;
  wire [16:0]m06_regslice_to_m06_couplers_ARADDR;
  wire [2:0]m06_regslice_to_m06_couplers_ARPROT;
  wire m06_regslice_to_m06_couplers_ARREADY;
  wire m06_regslice_to_m06_couplers_ARVALID;
  wire [16:0]m06_regslice_to_m06_couplers_AWADDR;
  wire [2:0]m06_regslice_to_m06_couplers_AWPROT;
  wire m06_regslice_to_m06_couplers_AWREADY;
  wire m06_regslice_to_m06_couplers_AWVALID;
  wire m06_regslice_to_m06_couplers_BREADY;
  wire [1:0]m06_regslice_to_m06_couplers_BRESP;
  wire m06_regslice_to_m06_couplers_BVALID;
  wire [31:0]m06_regslice_to_m06_couplers_RDATA;
  wire m06_regslice_to_m06_couplers_RREADY;
  wire [1:0]m06_regslice_to_m06_couplers_RRESP;
  wire m06_regslice_to_m06_couplers_RVALID;
  wire [31:0]m06_regslice_to_m06_couplers_WDATA;
  wire m06_regslice_to_m06_couplers_WREADY;
  wire [3:0]m06_regslice_to_m06_couplers_WSTRB;
  wire m06_regslice_to_m06_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[16:0] = m06_regslice_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_regslice_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = m06_regslice_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m06_regslice_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_regslice_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = m06_regslice_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_regslice_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_regslice_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_regslice_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_regslice_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_regslice_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_regslice_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_regslice_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_regslice_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_regslice_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_regslice_WREADY;
  assign m06_couplers_to_m06_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_regslice_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_regslice_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_regslice_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_regslice_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_regslice_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_regslice_WVALID = S_AXI_wvalid;
  assign m06_regslice_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_regslice_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_regslice_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_regslice_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_regslice_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_regslice_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_regslice_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_regslice_to_m06_couplers_WREADY = M_AXI_wready;
  xcl_design_m06_regslice_0 m06_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m06_regslice_to_m06_couplers_ARADDR),
        .m_axi_arprot(m06_regslice_to_m06_couplers_ARPROT),
        .m_axi_arready(m06_regslice_to_m06_couplers_ARREADY),
        .m_axi_arvalid(m06_regslice_to_m06_couplers_ARVALID),
        .m_axi_awaddr(m06_regslice_to_m06_couplers_AWADDR),
        .m_axi_awprot(m06_regslice_to_m06_couplers_AWPROT),
        .m_axi_awready(m06_regslice_to_m06_couplers_AWREADY),
        .m_axi_awvalid(m06_regslice_to_m06_couplers_AWVALID),
        .m_axi_bready(m06_regslice_to_m06_couplers_BREADY),
        .m_axi_bresp(m06_regslice_to_m06_couplers_BRESP),
        .m_axi_bvalid(m06_regslice_to_m06_couplers_BVALID),
        .m_axi_rdata(m06_regslice_to_m06_couplers_RDATA),
        .m_axi_rready(m06_regslice_to_m06_couplers_RREADY),
        .m_axi_rresp(m06_regslice_to_m06_couplers_RRESP),
        .m_axi_rvalid(m06_regslice_to_m06_couplers_RVALID),
        .m_axi_wdata(m06_regslice_to_m06_couplers_WDATA),
        .m_axi_wready(m06_regslice_to_m06_couplers_WREADY),
        .m_axi_wstrb(m06_regslice_to_m06_couplers_WSTRB),
        .m_axi_wvalid(m06_regslice_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_m06_regslice_ARADDR[16:0]),
        .s_axi_arprot(m06_couplers_to_m06_regslice_ARPROT),
        .s_axi_arready(m06_couplers_to_m06_regslice_ARREADY),
        .s_axi_arvalid(m06_couplers_to_m06_regslice_ARVALID),
        .s_axi_awaddr(m06_couplers_to_m06_regslice_AWADDR[16:0]),
        .s_axi_awprot(m06_couplers_to_m06_regslice_AWPROT),
        .s_axi_awready(m06_couplers_to_m06_regslice_AWREADY),
        .s_axi_awvalid(m06_couplers_to_m06_regslice_AWVALID),
        .s_axi_bready(m06_couplers_to_m06_regslice_BREADY),
        .s_axi_bresp(m06_couplers_to_m06_regslice_BRESP),
        .s_axi_bvalid(m06_couplers_to_m06_regslice_BVALID),
        .s_axi_rdata(m06_couplers_to_m06_regslice_RDATA),
        .s_axi_rready(m06_couplers_to_m06_regslice_RREADY),
        .s_axi_rresp(m06_couplers_to_m06_regslice_RRESP),
        .s_axi_rvalid(m06_couplers_to_m06_regslice_RVALID),
        .s_axi_wdata(m06_couplers_to_m06_regslice_WDATA),
        .s_axi_wready(m06_couplers_to_m06_regslice_WREADY),
        .s_axi_wstrb(m06_couplers_to_m06_regslice_WSTRB),
        .s_axi_wvalid(m06_couplers_to_m06_regslice_WVALID));
endmodule

module m07_couplers_imp_IPQY4C
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
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
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
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module memc_imp_178JFS5
   (c0_sys_clk_n,
    c0_sys_clk_p,
    c1_sys_clk_n,
    c1_sys_clk_p,
    c2_sys_clk_n,
    c2_sys_clk_p,
    c3_sys_clk_n,
    c3_sys_clk_p,
    clkwiz_sysclks_clk_out2,
    ddrmem_0_C0_DDR4_act_n,
    ddrmem_0_C0_DDR4_adr,
    ddrmem_0_C0_DDR4_ba,
    ddrmem_0_C0_DDR4_bg,
    ddrmem_0_C0_DDR4_ck_c,
    ddrmem_0_C0_DDR4_ck_t,
    ddrmem_0_C0_DDR4_cke,
    ddrmem_0_C0_DDR4_cs_n,
    ddrmem_0_C0_DDR4_dm_n,
    ddrmem_0_C0_DDR4_dq,
    ddrmem_0_C0_DDR4_dqs_c,
    ddrmem_0_C0_DDR4_dqs_t,
    ddrmem_0_C0_DDR4_odt,
    ddrmem_0_C0_DDR4_reset_n,
    ddrmem_0_c0_ddr4_ui_clk,
    ddrmem_0_c0_ddr4_ui_clk_sync_rst,
    ddrmem_1_C0_DDR4_act_n,
    ddrmem_1_C0_DDR4_adr,
    ddrmem_1_C0_DDR4_ba,
    ddrmem_1_C0_DDR4_bg,
    ddrmem_1_C0_DDR4_ck_c,
    ddrmem_1_C0_DDR4_ck_t,
    ddrmem_1_C0_DDR4_cke,
    ddrmem_1_C0_DDR4_cs_n,
    ddrmem_1_C0_DDR4_dm_n,
    ddrmem_1_C0_DDR4_dq,
    ddrmem_1_C0_DDR4_dqs_c,
    ddrmem_1_C0_DDR4_dqs_t,
    ddrmem_1_C0_DDR4_odt,
    ddrmem_1_C0_DDR4_reset_n,
    ddrmem_1_c0_ddr4_ui_clk,
    ddrmem_1_c0_ddr4_ui_clk_sync_rst,
    ddrmem_2_C0_DDR4_act_n,
    ddrmem_2_C0_DDR4_adr,
    ddrmem_2_C0_DDR4_ba,
    ddrmem_2_C0_DDR4_bg,
    ddrmem_2_C0_DDR4_ck_c,
    ddrmem_2_C0_DDR4_ck_t,
    ddrmem_2_C0_DDR4_cke,
    ddrmem_2_C0_DDR4_cs_n,
    ddrmem_2_C0_DDR4_dm_n,
    ddrmem_2_C0_DDR4_dq,
    ddrmem_2_C0_DDR4_dqs_c,
    ddrmem_2_C0_DDR4_dqs_t,
    ddrmem_2_C0_DDR4_odt,
    ddrmem_2_C0_DDR4_reset_n,
    ddrmem_2_c0_ddr4_ui_clk,
    ddrmem_2_c0_ddr4_ui_clk_sync_rst,
    ddrmem_3_C0_DDR4_act_n,
    ddrmem_3_C0_DDR4_adr,
    ddrmem_3_C0_DDR4_ba,
    ddrmem_3_C0_DDR4_bg,
    ddrmem_3_C0_DDR4_ck_c,
    ddrmem_3_C0_DDR4_ck_t,
    ddrmem_3_C0_DDR4_cke,
    ddrmem_3_C0_DDR4_cs_n,
    ddrmem_3_C0_DDR4_dm_n,
    ddrmem_3_C0_DDR4_dq,
    ddrmem_3_C0_DDR4_dqs_c,
    ddrmem_3_C0_DDR4_dqs_t,
    ddrmem_3_C0_DDR4_odt,
    ddrmem_3_C0_DDR4_reset_n,
    ddrmem_3_c0_ddr4_ui_clk,
    ddrmem_3_c0_ddr4_ui_clk_sync_rst,
    interconnect_axilite_M03_AXI_araddr,
    interconnect_axilite_M03_AXI_arready,
    interconnect_axilite_M03_AXI_arvalid,
    interconnect_axilite_M03_AXI_awaddr,
    interconnect_axilite_M03_AXI_awready,
    interconnect_axilite_M03_AXI_awvalid,
    interconnect_axilite_M03_AXI_bready,
    interconnect_axilite_M03_AXI_bresp,
    interconnect_axilite_M03_AXI_bvalid,
    interconnect_axilite_M03_AXI_rdata,
    interconnect_axilite_M03_AXI_rready,
    interconnect_axilite_M03_AXI_rresp,
    interconnect_axilite_M03_AXI_rvalid,
    interconnect_axilite_M03_AXI_wdata,
    interconnect_axilite_M03_AXI_wready,
    interconnect_axilite_M03_AXI_wvalid,
    interconnect_axilite_M04_AXI_araddr,
    interconnect_axilite_M04_AXI_arprot,
    interconnect_axilite_M04_AXI_arready,
    interconnect_axilite_M04_AXI_arvalid,
    interconnect_axilite_M04_AXI_awaddr,
    interconnect_axilite_M04_AXI_awprot,
    interconnect_axilite_M04_AXI_awready,
    interconnect_axilite_M04_AXI_awvalid,
    interconnect_axilite_M04_AXI_bready,
    interconnect_axilite_M04_AXI_bresp,
    interconnect_axilite_M04_AXI_bvalid,
    interconnect_axilite_M04_AXI_rdata,
    interconnect_axilite_M04_AXI_rready,
    interconnect_axilite_M04_AXI_rresp,
    interconnect_axilite_M04_AXI_rvalid,
    interconnect_axilite_M04_AXI_wdata,
    interconnect_axilite_M04_AXI_wready,
    interconnect_axilite_M04_AXI_wstrb,
    interconnect_axilite_M04_AXI_wvalid,
    interconnect_axilite_M05_AXI_araddr,
    interconnect_axilite_M05_AXI_arprot,
    interconnect_axilite_M05_AXI_arready,
    interconnect_axilite_M05_AXI_arvalid,
    interconnect_axilite_M05_AXI_awaddr,
    interconnect_axilite_M05_AXI_awprot,
    interconnect_axilite_M05_AXI_awready,
    interconnect_axilite_M05_AXI_awvalid,
    interconnect_axilite_M05_AXI_bready,
    interconnect_axilite_M05_AXI_bresp,
    interconnect_axilite_M05_AXI_bvalid,
    interconnect_axilite_M05_AXI_rdata,
    interconnect_axilite_M05_AXI_rready,
    interconnect_axilite_M05_AXI_rresp,
    interconnect_axilite_M05_AXI_rvalid,
    interconnect_axilite_M05_AXI_wdata,
    interconnect_axilite_M05_AXI_wready,
    interconnect_axilite_M05_AXI_wstrb,
    interconnect_axilite_M05_AXI_wvalid,
    interconnect_aximm_ddrmem0_M00_AXI_araddr,
    interconnect_aximm_ddrmem0_M00_AXI_arburst,
    interconnect_aximm_ddrmem0_M00_AXI_arcache,
    interconnect_aximm_ddrmem0_M00_AXI_arlen,
    interconnect_aximm_ddrmem0_M00_AXI_arlock,
    interconnect_aximm_ddrmem0_M00_AXI_arprot,
    interconnect_aximm_ddrmem0_M00_AXI_arqos,
    interconnect_aximm_ddrmem0_M00_AXI_arready,
    interconnect_aximm_ddrmem0_M00_AXI_arsize,
    interconnect_aximm_ddrmem0_M00_AXI_arvalid,
    interconnect_aximm_ddrmem0_M00_AXI_awaddr,
    interconnect_aximm_ddrmem0_M00_AXI_awburst,
    interconnect_aximm_ddrmem0_M00_AXI_awcache,
    interconnect_aximm_ddrmem0_M00_AXI_awlen,
    interconnect_aximm_ddrmem0_M00_AXI_awlock,
    interconnect_aximm_ddrmem0_M00_AXI_awprot,
    interconnect_aximm_ddrmem0_M00_AXI_awqos,
    interconnect_aximm_ddrmem0_M00_AXI_awready,
    interconnect_aximm_ddrmem0_M00_AXI_awsize,
    interconnect_aximm_ddrmem0_M00_AXI_awvalid,
    interconnect_aximm_ddrmem0_M00_AXI_bready,
    interconnect_aximm_ddrmem0_M00_AXI_bresp,
    interconnect_aximm_ddrmem0_M00_AXI_bvalid,
    interconnect_aximm_ddrmem0_M00_AXI_rdata,
    interconnect_aximm_ddrmem0_M00_AXI_rlast,
    interconnect_aximm_ddrmem0_M00_AXI_rready,
    interconnect_aximm_ddrmem0_M00_AXI_rresp,
    interconnect_aximm_ddrmem0_M00_AXI_rvalid,
    interconnect_aximm_ddrmem0_M00_AXI_wdata,
    interconnect_aximm_ddrmem0_M00_AXI_wlast,
    interconnect_aximm_ddrmem0_M00_AXI_wready,
    interconnect_aximm_ddrmem0_M00_AXI_wstrb,
    interconnect_aximm_ddrmem0_M00_AXI_wvalid,
    interconnect_aximm_ddrmem1_M00_AXI_araddr,
    interconnect_aximm_ddrmem1_M00_AXI_arburst,
    interconnect_aximm_ddrmem1_M00_AXI_arcache,
    interconnect_aximm_ddrmem1_M00_AXI_arlen,
    interconnect_aximm_ddrmem1_M00_AXI_arlock,
    interconnect_aximm_ddrmem1_M00_AXI_arprot,
    interconnect_aximm_ddrmem1_M00_AXI_arqos,
    interconnect_aximm_ddrmem1_M00_AXI_arready,
    interconnect_aximm_ddrmem1_M00_AXI_arsize,
    interconnect_aximm_ddrmem1_M00_AXI_arvalid,
    interconnect_aximm_ddrmem1_M00_AXI_awaddr,
    interconnect_aximm_ddrmem1_M00_AXI_awburst,
    interconnect_aximm_ddrmem1_M00_AXI_awcache,
    interconnect_aximm_ddrmem1_M00_AXI_awlen,
    interconnect_aximm_ddrmem1_M00_AXI_awlock,
    interconnect_aximm_ddrmem1_M00_AXI_awprot,
    interconnect_aximm_ddrmem1_M00_AXI_awqos,
    interconnect_aximm_ddrmem1_M00_AXI_awready,
    interconnect_aximm_ddrmem1_M00_AXI_awsize,
    interconnect_aximm_ddrmem1_M00_AXI_awvalid,
    interconnect_aximm_ddrmem1_M00_AXI_bready,
    interconnect_aximm_ddrmem1_M00_AXI_bresp,
    interconnect_aximm_ddrmem1_M00_AXI_bvalid,
    interconnect_aximm_ddrmem1_M00_AXI_rdata,
    interconnect_aximm_ddrmem1_M00_AXI_rlast,
    interconnect_aximm_ddrmem1_M00_AXI_rready,
    interconnect_aximm_ddrmem1_M00_AXI_rresp,
    interconnect_aximm_ddrmem1_M00_AXI_rvalid,
    interconnect_aximm_ddrmem1_M00_AXI_wdata,
    interconnect_aximm_ddrmem1_M00_AXI_wlast,
    interconnect_aximm_ddrmem1_M00_AXI_wready,
    interconnect_aximm_ddrmem1_M00_AXI_wstrb,
    interconnect_aximm_ddrmem1_M00_AXI_wvalid,
    interconnect_aximm_ddrmem2_M00_AXI_araddr,
    interconnect_aximm_ddrmem2_M00_AXI_arburst,
    interconnect_aximm_ddrmem2_M00_AXI_arcache,
    interconnect_aximm_ddrmem2_M00_AXI_arlen,
    interconnect_aximm_ddrmem2_M00_AXI_arlock,
    interconnect_aximm_ddrmem2_M00_AXI_arprot,
    interconnect_aximm_ddrmem2_M00_AXI_arqos,
    interconnect_aximm_ddrmem2_M00_AXI_arready,
    interconnect_aximm_ddrmem2_M00_AXI_arsize,
    interconnect_aximm_ddrmem2_M00_AXI_arvalid,
    interconnect_aximm_ddrmem2_M00_AXI_awaddr,
    interconnect_aximm_ddrmem2_M00_AXI_awburst,
    interconnect_aximm_ddrmem2_M00_AXI_awcache,
    interconnect_aximm_ddrmem2_M00_AXI_awlen,
    interconnect_aximm_ddrmem2_M00_AXI_awlock,
    interconnect_aximm_ddrmem2_M00_AXI_awprot,
    interconnect_aximm_ddrmem2_M00_AXI_awqos,
    interconnect_aximm_ddrmem2_M00_AXI_awready,
    interconnect_aximm_ddrmem2_M00_AXI_awsize,
    interconnect_aximm_ddrmem2_M00_AXI_awvalid,
    interconnect_aximm_ddrmem2_M00_AXI_bready,
    interconnect_aximm_ddrmem2_M00_AXI_bresp,
    interconnect_aximm_ddrmem2_M00_AXI_bvalid,
    interconnect_aximm_ddrmem2_M00_AXI_rdata,
    interconnect_aximm_ddrmem2_M00_AXI_rlast,
    interconnect_aximm_ddrmem2_M00_AXI_rready,
    interconnect_aximm_ddrmem2_M00_AXI_rresp,
    interconnect_aximm_ddrmem2_M00_AXI_rvalid,
    interconnect_aximm_ddrmem2_M00_AXI_wdata,
    interconnect_aximm_ddrmem2_M00_AXI_wlast,
    interconnect_aximm_ddrmem2_M00_AXI_wready,
    interconnect_aximm_ddrmem2_M00_AXI_wstrb,
    interconnect_aximm_ddrmem2_M00_AXI_wvalid,
    interconnect_aximm_ddrmem3_M00_AXI_araddr,
    interconnect_aximm_ddrmem3_M00_AXI_arburst,
    interconnect_aximm_ddrmem3_M00_AXI_arcache,
    interconnect_aximm_ddrmem3_M00_AXI_arlen,
    interconnect_aximm_ddrmem3_M00_AXI_arlock,
    interconnect_aximm_ddrmem3_M00_AXI_arprot,
    interconnect_aximm_ddrmem3_M00_AXI_arqos,
    interconnect_aximm_ddrmem3_M00_AXI_arready,
    interconnect_aximm_ddrmem3_M00_AXI_arsize,
    interconnect_aximm_ddrmem3_M00_AXI_arvalid,
    interconnect_aximm_ddrmem3_M00_AXI_awaddr,
    interconnect_aximm_ddrmem3_M00_AXI_awburst,
    interconnect_aximm_ddrmem3_M00_AXI_awcache,
    interconnect_aximm_ddrmem3_M00_AXI_awlen,
    interconnect_aximm_ddrmem3_M00_AXI_awlock,
    interconnect_aximm_ddrmem3_M00_AXI_awprot,
    interconnect_aximm_ddrmem3_M00_AXI_awqos,
    interconnect_aximm_ddrmem3_M00_AXI_awready,
    interconnect_aximm_ddrmem3_M00_AXI_awsize,
    interconnect_aximm_ddrmem3_M00_AXI_awvalid,
    interconnect_aximm_ddrmem3_M00_AXI_bready,
    interconnect_aximm_ddrmem3_M00_AXI_bresp,
    interconnect_aximm_ddrmem3_M00_AXI_bvalid,
    interconnect_aximm_ddrmem3_M00_AXI_rdata,
    interconnect_aximm_ddrmem3_M00_AXI_rlast,
    interconnect_aximm_ddrmem3_M00_AXI_rready,
    interconnect_aximm_ddrmem3_M00_AXI_rresp,
    interconnect_aximm_ddrmem3_M00_AXI_rvalid,
    interconnect_aximm_ddrmem3_M00_AXI_wdata,
    interconnect_aximm_ddrmem3_M00_AXI_wlast,
    interconnect_aximm_ddrmem3_M00_AXI_wready,
    interconnect_aximm_ddrmem3_M00_AXI_wstrb,
    interconnect_aximm_ddrmem3_M00_AXI_wvalid,
    logic_ddrcalib_op_Res,
    logic_reset_op_Res,
    psreset_ddrmem_n_2_interconnect_aresetn,
    psreset_ddrmem_n_3_interconnect_aresetn,
    psreset_ddrmem_n_4_interconnect_aresetn,
    psreset_ddrmem_n_interconnect_aresetn,
    psreset_gate_pr_control_interconnect_aresetn);
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  input c1_sys_clk_n;
  input c1_sys_clk_p;
  input c2_sys_clk_n;
  input c2_sys_clk_p;
  input c3_sys_clk_n;
  input c3_sys_clk_p;
  input clkwiz_sysclks_clk_out2;
  output ddrmem_0_C0_DDR4_act_n;
  output [16:0]ddrmem_0_C0_DDR4_adr;
  output [1:0]ddrmem_0_C0_DDR4_ba;
  output [0:0]ddrmem_0_C0_DDR4_bg;
  output [0:0]ddrmem_0_C0_DDR4_ck_c;
  output [0:0]ddrmem_0_C0_DDR4_ck_t;
  output [0:0]ddrmem_0_C0_DDR4_cke;
  output [0:0]ddrmem_0_C0_DDR4_cs_n;
  inout [8:0]ddrmem_0_C0_DDR4_dm_n;
  inout [71:0]ddrmem_0_C0_DDR4_dq;
  inout [8:0]ddrmem_0_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_0_C0_DDR4_dqs_t;
  output [0:0]ddrmem_0_C0_DDR4_odt;
  output ddrmem_0_C0_DDR4_reset_n;
  output ddrmem_0_c0_ddr4_ui_clk;
  output ddrmem_0_c0_ddr4_ui_clk_sync_rst;
  output ddrmem_1_C0_DDR4_act_n;
  output [16:0]ddrmem_1_C0_DDR4_adr;
  output [1:0]ddrmem_1_C0_DDR4_ba;
  output [0:0]ddrmem_1_C0_DDR4_bg;
  output [0:0]ddrmem_1_C0_DDR4_ck_c;
  output [0:0]ddrmem_1_C0_DDR4_ck_t;
  output [0:0]ddrmem_1_C0_DDR4_cke;
  output [0:0]ddrmem_1_C0_DDR4_cs_n;
  inout [7:0]ddrmem_1_C0_DDR4_dm_n;
  inout [63:0]ddrmem_1_C0_DDR4_dq;
  inout [7:0]ddrmem_1_C0_DDR4_dqs_c;
  inout [7:0]ddrmem_1_C0_DDR4_dqs_t;
  output [0:0]ddrmem_1_C0_DDR4_odt;
  output ddrmem_1_C0_DDR4_reset_n;
  output ddrmem_1_c0_ddr4_ui_clk;
  output ddrmem_1_c0_ddr4_ui_clk_sync_rst;
  output ddrmem_2_C0_DDR4_act_n;
  output [16:0]ddrmem_2_C0_DDR4_adr;
  output [1:0]ddrmem_2_C0_DDR4_ba;
  output [0:0]ddrmem_2_C0_DDR4_bg;
  output [0:0]ddrmem_2_C0_DDR4_ck_c;
  output [0:0]ddrmem_2_C0_DDR4_ck_t;
  output [0:0]ddrmem_2_C0_DDR4_cke;
  output [0:0]ddrmem_2_C0_DDR4_cs_n;
  inout [8:0]ddrmem_2_C0_DDR4_dm_n;
  inout [71:0]ddrmem_2_C0_DDR4_dq;
  inout [8:0]ddrmem_2_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_2_C0_DDR4_dqs_t;
  output [0:0]ddrmem_2_C0_DDR4_odt;
  output ddrmem_2_C0_DDR4_reset_n;
  output ddrmem_2_c0_ddr4_ui_clk;
  output ddrmem_2_c0_ddr4_ui_clk_sync_rst;
  output ddrmem_3_C0_DDR4_act_n;
  output [16:0]ddrmem_3_C0_DDR4_adr;
  output [1:0]ddrmem_3_C0_DDR4_ba;
  output [0:0]ddrmem_3_C0_DDR4_bg;
  output [0:0]ddrmem_3_C0_DDR4_ck_c;
  output [0:0]ddrmem_3_C0_DDR4_ck_t;
  output [0:0]ddrmem_3_C0_DDR4_cke;
  output [0:0]ddrmem_3_C0_DDR4_cs_n;
  inout [8:0]ddrmem_3_C0_DDR4_dm_n;
  inout [71:0]ddrmem_3_C0_DDR4_dq;
  inout [8:0]ddrmem_3_C0_DDR4_dqs_c;
  inout [8:0]ddrmem_3_C0_DDR4_dqs_t;
  output [0:0]ddrmem_3_C0_DDR4_odt;
  output ddrmem_3_C0_DDR4_reset_n;
  output ddrmem_3_c0_ddr4_ui_clk;
  output ddrmem_3_c0_ddr4_ui_clk_sync_rst;
  input [31:0]interconnect_axilite_M03_AXI_araddr;
  output interconnect_axilite_M03_AXI_arready;
  input interconnect_axilite_M03_AXI_arvalid;
  input [31:0]interconnect_axilite_M03_AXI_awaddr;
  output interconnect_axilite_M03_AXI_awready;
  input interconnect_axilite_M03_AXI_awvalid;
  input interconnect_axilite_M03_AXI_bready;
  output [1:0]interconnect_axilite_M03_AXI_bresp;
  output interconnect_axilite_M03_AXI_bvalid;
  output [31:0]interconnect_axilite_M03_AXI_rdata;
  input interconnect_axilite_M03_AXI_rready;
  output [1:0]interconnect_axilite_M03_AXI_rresp;
  output interconnect_axilite_M03_AXI_rvalid;
  input [31:0]interconnect_axilite_M03_AXI_wdata;
  output interconnect_axilite_M03_AXI_wready;
  input interconnect_axilite_M03_AXI_wvalid;
  input [31:0]interconnect_axilite_M04_AXI_araddr;
  input [2:0]interconnect_axilite_M04_AXI_arprot;
  output interconnect_axilite_M04_AXI_arready;
  input interconnect_axilite_M04_AXI_arvalid;
  input [31:0]interconnect_axilite_M04_AXI_awaddr;
  input [2:0]interconnect_axilite_M04_AXI_awprot;
  output interconnect_axilite_M04_AXI_awready;
  input interconnect_axilite_M04_AXI_awvalid;
  input interconnect_axilite_M04_AXI_bready;
  output [1:0]interconnect_axilite_M04_AXI_bresp;
  output interconnect_axilite_M04_AXI_bvalid;
  output [31:0]interconnect_axilite_M04_AXI_rdata;
  input interconnect_axilite_M04_AXI_rready;
  output [1:0]interconnect_axilite_M04_AXI_rresp;
  output interconnect_axilite_M04_AXI_rvalid;
  input [31:0]interconnect_axilite_M04_AXI_wdata;
  output interconnect_axilite_M04_AXI_wready;
  input [3:0]interconnect_axilite_M04_AXI_wstrb;
  input interconnect_axilite_M04_AXI_wvalid;
  input [31:0]interconnect_axilite_M05_AXI_araddr;
  input [2:0]interconnect_axilite_M05_AXI_arprot;
  output interconnect_axilite_M05_AXI_arready;
  input interconnect_axilite_M05_AXI_arvalid;
  input [31:0]interconnect_axilite_M05_AXI_awaddr;
  input [2:0]interconnect_axilite_M05_AXI_awprot;
  output interconnect_axilite_M05_AXI_awready;
  input interconnect_axilite_M05_AXI_awvalid;
  input interconnect_axilite_M05_AXI_bready;
  output [1:0]interconnect_axilite_M05_AXI_bresp;
  output interconnect_axilite_M05_AXI_bvalid;
  output [31:0]interconnect_axilite_M05_AXI_rdata;
  input interconnect_axilite_M05_AXI_rready;
  output [1:0]interconnect_axilite_M05_AXI_rresp;
  output interconnect_axilite_M05_AXI_rvalid;
  input [31:0]interconnect_axilite_M05_AXI_wdata;
  output interconnect_axilite_M05_AXI_wready;
  input [3:0]interconnect_axilite_M05_AXI_wstrb;
  input interconnect_axilite_M05_AXI_wvalid;
  input [31:0]interconnect_aximm_ddrmem0_M00_AXI_araddr;
  input [1:0]interconnect_aximm_ddrmem0_M00_AXI_arburst;
  input [3:0]interconnect_aximm_ddrmem0_M00_AXI_arcache;
  input [7:0]interconnect_aximm_ddrmem0_M00_AXI_arlen;
  input [0:0]interconnect_aximm_ddrmem0_M00_AXI_arlock;
  input [2:0]interconnect_aximm_ddrmem0_M00_AXI_arprot;
  input [3:0]interconnect_aximm_ddrmem0_M00_AXI_arqos;
  output interconnect_aximm_ddrmem0_M00_AXI_arready;
  input [2:0]interconnect_aximm_ddrmem0_M00_AXI_arsize;
  input interconnect_aximm_ddrmem0_M00_AXI_arvalid;
  input [31:0]interconnect_aximm_ddrmem0_M00_AXI_awaddr;
  input [1:0]interconnect_aximm_ddrmem0_M00_AXI_awburst;
  input [3:0]interconnect_aximm_ddrmem0_M00_AXI_awcache;
  input [7:0]interconnect_aximm_ddrmem0_M00_AXI_awlen;
  input [0:0]interconnect_aximm_ddrmem0_M00_AXI_awlock;
  input [2:0]interconnect_aximm_ddrmem0_M00_AXI_awprot;
  input [3:0]interconnect_aximm_ddrmem0_M00_AXI_awqos;
  output interconnect_aximm_ddrmem0_M00_AXI_awready;
  input [2:0]interconnect_aximm_ddrmem0_M00_AXI_awsize;
  input interconnect_aximm_ddrmem0_M00_AXI_awvalid;
  input interconnect_aximm_ddrmem0_M00_AXI_bready;
  output [1:0]interconnect_aximm_ddrmem0_M00_AXI_bresp;
  output interconnect_aximm_ddrmem0_M00_AXI_bvalid;
  output [511:0]interconnect_aximm_ddrmem0_M00_AXI_rdata;
  output interconnect_aximm_ddrmem0_M00_AXI_rlast;
  input interconnect_aximm_ddrmem0_M00_AXI_rready;
  output [1:0]interconnect_aximm_ddrmem0_M00_AXI_rresp;
  output interconnect_aximm_ddrmem0_M00_AXI_rvalid;
  input [511:0]interconnect_aximm_ddrmem0_M00_AXI_wdata;
  input interconnect_aximm_ddrmem0_M00_AXI_wlast;
  output interconnect_aximm_ddrmem0_M00_AXI_wready;
  input [63:0]interconnect_aximm_ddrmem0_M00_AXI_wstrb;
  input interconnect_aximm_ddrmem0_M00_AXI_wvalid;
  input [31:0]interconnect_aximm_ddrmem1_M00_AXI_araddr;
  input [1:0]interconnect_aximm_ddrmem1_M00_AXI_arburst;
  input [3:0]interconnect_aximm_ddrmem1_M00_AXI_arcache;
  input [7:0]interconnect_aximm_ddrmem1_M00_AXI_arlen;
  input [0:0]interconnect_aximm_ddrmem1_M00_AXI_arlock;
  input [2:0]interconnect_aximm_ddrmem1_M00_AXI_arprot;
  input [3:0]interconnect_aximm_ddrmem1_M00_AXI_arqos;
  output interconnect_aximm_ddrmem1_M00_AXI_arready;
  input [2:0]interconnect_aximm_ddrmem1_M00_AXI_arsize;
  input interconnect_aximm_ddrmem1_M00_AXI_arvalid;
  input [31:0]interconnect_aximm_ddrmem1_M00_AXI_awaddr;
  input [1:0]interconnect_aximm_ddrmem1_M00_AXI_awburst;
  input [3:0]interconnect_aximm_ddrmem1_M00_AXI_awcache;
  input [7:0]interconnect_aximm_ddrmem1_M00_AXI_awlen;
  input [0:0]interconnect_aximm_ddrmem1_M00_AXI_awlock;
  input [2:0]interconnect_aximm_ddrmem1_M00_AXI_awprot;
  input [3:0]interconnect_aximm_ddrmem1_M00_AXI_awqos;
  output interconnect_aximm_ddrmem1_M00_AXI_awready;
  input [2:0]interconnect_aximm_ddrmem1_M00_AXI_awsize;
  input interconnect_aximm_ddrmem1_M00_AXI_awvalid;
  input interconnect_aximm_ddrmem1_M00_AXI_bready;
  output [1:0]interconnect_aximm_ddrmem1_M00_AXI_bresp;
  output interconnect_aximm_ddrmem1_M00_AXI_bvalid;
  output [511:0]interconnect_aximm_ddrmem1_M00_AXI_rdata;
  output interconnect_aximm_ddrmem1_M00_AXI_rlast;
  input interconnect_aximm_ddrmem1_M00_AXI_rready;
  output [1:0]interconnect_aximm_ddrmem1_M00_AXI_rresp;
  output interconnect_aximm_ddrmem1_M00_AXI_rvalid;
  input [511:0]interconnect_aximm_ddrmem1_M00_AXI_wdata;
  input interconnect_aximm_ddrmem1_M00_AXI_wlast;
  output interconnect_aximm_ddrmem1_M00_AXI_wready;
  input [63:0]interconnect_aximm_ddrmem1_M00_AXI_wstrb;
  input interconnect_aximm_ddrmem1_M00_AXI_wvalid;
  input [31:0]interconnect_aximm_ddrmem2_M00_AXI_araddr;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_arburst;
  input [3:0]interconnect_aximm_ddrmem2_M00_AXI_arcache;
  input [7:0]interconnect_aximm_ddrmem2_M00_AXI_arlen;
  input [0:0]interconnect_aximm_ddrmem2_M00_AXI_arlock;
  input [2:0]interconnect_aximm_ddrmem2_M00_AXI_arprot;
  input [3:0]interconnect_aximm_ddrmem2_M00_AXI_arqos;
  output interconnect_aximm_ddrmem2_M00_AXI_arready;
  input [2:0]interconnect_aximm_ddrmem2_M00_AXI_arsize;
  input interconnect_aximm_ddrmem2_M00_AXI_arvalid;
  input [31:0]interconnect_aximm_ddrmem2_M00_AXI_awaddr;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_awburst;
  input [3:0]interconnect_aximm_ddrmem2_M00_AXI_awcache;
  input [7:0]interconnect_aximm_ddrmem2_M00_AXI_awlen;
  input [0:0]interconnect_aximm_ddrmem2_M00_AXI_awlock;
  input [2:0]interconnect_aximm_ddrmem2_M00_AXI_awprot;
  input [3:0]interconnect_aximm_ddrmem2_M00_AXI_awqos;
  output interconnect_aximm_ddrmem2_M00_AXI_awready;
  input [2:0]interconnect_aximm_ddrmem2_M00_AXI_awsize;
  input interconnect_aximm_ddrmem2_M00_AXI_awvalid;
  input interconnect_aximm_ddrmem2_M00_AXI_bready;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_bresp;
  output interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  output [511:0]interconnect_aximm_ddrmem2_M00_AXI_rdata;
  output interconnect_aximm_ddrmem2_M00_AXI_rlast;
  input interconnect_aximm_ddrmem2_M00_AXI_rready;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_rresp;
  output interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  input [511:0]interconnect_aximm_ddrmem2_M00_AXI_wdata;
  input interconnect_aximm_ddrmem2_M00_AXI_wlast;
  output interconnect_aximm_ddrmem2_M00_AXI_wready;
  input [63:0]interconnect_aximm_ddrmem2_M00_AXI_wstrb;
  input interconnect_aximm_ddrmem2_M00_AXI_wvalid;
  input [31:0]interconnect_aximm_ddrmem3_M00_AXI_araddr;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_arburst;
  input [3:0]interconnect_aximm_ddrmem3_M00_AXI_arcache;
  input [7:0]interconnect_aximm_ddrmem3_M00_AXI_arlen;
  input [0:0]interconnect_aximm_ddrmem3_M00_AXI_arlock;
  input [2:0]interconnect_aximm_ddrmem3_M00_AXI_arprot;
  input [3:0]interconnect_aximm_ddrmem3_M00_AXI_arqos;
  output interconnect_aximm_ddrmem3_M00_AXI_arready;
  input [2:0]interconnect_aximm_ddrmem3_M00_AXI_arsize;
  input interconnect_aximm_ddrmem3_M00_AXI_arvalid;
  input [31:0]interconnect_aximm_ddrmem3_M00_AXI_awaddr;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_awburst;
  input [3:0]interconnect_aximm_ddrmem3_M00_AXI_awcache;
  input [7:0]interconnect_aximm_ddrmem3_M00_AXI_awlen;
  input [0:0]interconnect_aximm_ddrmem3_M00_AXI_awlock;
  input [2:0]interconnect_aximm_ddrmem3_M00_AXI_awprot;
  input [3:0]interconnect_aximm_ddrmem3_M00_AXI_awqos;
  output interconnect_aximm_ddrmem3_M00_AXI_awready;
  input [2:0]interconnect_aximm_ddrmem3_M00_AXI_awsize;
  input interconnect_aximm_ddrmem3_M00_AXI_awvalid;
  input interconnect_aximm_ddrmem3_M00_AXI_bready;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_bresp;
  output interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  output [511:0]interconnect_aximm_ddrmem3_M00_AXI_rdata;
  output interconnect_aximm_ddrmem3_M00_AXI_rlast;
  input interconnect_aximm_ddrmem3_M00_AXI_rready;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_rresp;
  output interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  input [511:0]interconnect_aximm_ddrmem3_M00_AXI_wdata;
  input interconnect_aximm_ddrmem3_M00_AXI_wlast;
  output interconnect_aximm_ddrmem3_M00_AXI_wready;
  input [63:0]interconnect_aximm_ddrmem3_M00_AXI_wstrb;
  input interconnect_aximm_ddrmem3_M00_AXI_wvalid;
  output logic_ddrcalib_op_Res;
  input [0:0]logic_reset_op_Res;
  input [0:0]psreset_ddrmem_n_2_interconnect_aresetn;
  input [0:0]psreset_ddrmem_n_3_interconnect_aresetn;
  input [0:0]psreset_ddrmem_n_4_interconnect_aresetn;
  input [0:0]psreset_ddrmem_n_interconnect_aresetn;
  input [0:0]psreset_gate_pr_control_interconnect_aresetn;

  wire [31:0]C0_DDR4_S_AXI1_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI1_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI1_1_ARCACHE;
  wire [7:0]C0_DDR4_S_AXI1_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI1_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI1_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI1_1_ARQOS;
  wire C0_DDR4_S_AXI1_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI1_1_ARSIZE;
  wire C0_DDR4_S_AXI1_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI1_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI1_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI1_1_AWCACHE;
  wire [7:0]C0_DDR4_S_AXI1_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI1_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI1_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI1_1_AWQOS;
  wire C0_DDR4_S_AXI1_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI1_1_AWSIZE;
  wire C0_DDR4_S_AXI1_1_AWVALID;
  wire C0_DDR4_S_AXI1_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI1_1_BRESP;
  wire C0_DDR4_S_AXI1_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI1_1_RDATA;
  wire C0_DDR4_S_AXI1_1_RLAST;
  wire C0_DDR4_S_AXI1_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI1_1_RRESP;
  wire C0_DDR4_S_AXI1_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI1_1_WDATA;
  wire C0_DDR4_S_AXI1_1_WLAST;
  wire C0_DDR4_S_AXI1_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI1_1_WSTRB;
  wire C0_DDR4_S_AXI1_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI2_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI2_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI2_1_ARCACHE;
  wire [7:0]C0_DDR4_S_AXI2_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI2_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI2_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI2_1_ARQOS;
  wire C0_DDR4_S_AXI2_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI2_1_ARSIZE;
  wire C0_DDR4_S_AXI2_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI2_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI2_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI2_1_AWCACHE;
  wire [7:0]C0_DDR4_S_AXI2_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI2_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI2_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI2_1_AWQOS;
  wire C0_DDR4_S_AXI2_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI2_1_AWSIZE;
  wire C0_DDR4_S_AXI2_1_AWVALID;
  wire C0_DDR4_S_AXI2_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI2_1_BRESP;
  wire C0_DDR4_S_AXI2_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI2_1_RDATA;
  wire C0_DDR4_S_AXI2_1_RLAST;
  wire C0_DDR4_S_AXI2_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI2_1_RRESP;
  wire C0_DDR4_S_AXI2_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI2_1_WDATA;
  wire C0_DDR4_S_AXI2_1_WLAST;
  wire C0_DDR4_S_AXI2_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI2_1_WSTRB;
  wire C0_DDR4_S_AXI2_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI3_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI3_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI3_1_ARCACHE;
  wire [7:0]C0_DDR4_S_AXI3_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI3_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI3_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI3_1_ARQOS;
  wire C0_DDR4_S_AXI3_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI3_1_ARSIZE;
  wire C0_DDR4_S_AXI3_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI3_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI3_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI3_1_AWCACHE;
  wire [7:0]C0_DDR4_S_AXI3_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI3_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI3_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI3_1_AWQOS;
  wire C0_DDR4_S_AXI3_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI3_1_AWSIZE;
  wire C0_DDR4_S_AXI3_1_AWVALID;
  wire C0_DDR4_S_AXI3_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI3_1_BRESP;
  wire C0_DDR4_S_AXI3_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI3_1_RDATA;
  wire C0_DDR4_S_AXI3_1_RLAST;
  wire C0_DDR4_S_AXI3_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI3_1_RRESP;
  wire C0_DDR4_S_AXI3_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI3_1_WDATA;
  wire C0_DDR4_S_AXI3_1_WLAST;
  wire C0_DDR4_S_AXI3_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI3_1_WSTRB;
  wire C0_DDR4_S_AXI3_1_WVALID;
  wire [31:0]C0_DDR4_S_AXI_1_ARADDR;
  wire [1:0]C0_DDR4_S_AXI_1_ARBURST;
  wire [3:0]C0_DDR4_S_AXI_1_ARCACHE;
  wire [7:0]C0_DDR4_S_AXI_1_ARLEN;
  wire [0:0]C0_DDR4_S_AXI_1_ARLOCK;
  wire [2:0]C0_DDR4_S_AXI_1_ARPROT;
  wire [3:0]C0_DDR4_S_AXI_1_ARQOS;
  wire C0_DDR4_S_AXI_1_ARREADY;
  wire [2:0]C0_DDR4_S_AXI_1_ARSIZE;
  wire C0_DDR4_S_AXI_1_ARVALID;
  wire [31:0]C0_DDR4_S_AXI_1_AWADDR;
  wire [1:0]C0_DDR4_S_AXI_1_AWBURST;
  wire [3:0]C0_DDR4_S_AXI_1_AWCACHE;
  wire [7:0]C0_DDR4_S_AXI_1_AWLEN;
  wire [0:0]C0_DDR4_S_AXI_1_AWLOCK;
  wire [2:0]C0_DDR4_S_AXI_1_AWPROT;
  wire [3:0]C0_DDR4_S_AXI_1_AWQOS;
  wire C0_DDR4_S_AXI_1_AWREADY;
  wire [2:0]C0_DDR4_S_AXI_1_AWSIZE;
  wire C0_DDR4_S_AXI_1_AWVALID;
  wire C0_DDR4_S_AXI_1_BREADY;
  wire [1:0]C0_DDR4_S_AXI_1_BRESP;
  wire C0_DDR4_S_AXI_1_BVALID;
  wire [511:0]C0_DDR4_S_AXI_1_RDATA;
  wire C0_DDR4_S_AXI_1_RLAST;
  wire C0_DDR4_S_AXI_1_RREADY;
  wire [1:0]C0_DDR4_S_AXI_1_RRESP;
  wire C0_DDR4_S_AXI_1_RVALID;
  wire [511:0]C0_DDR4_S_AXI_1_WDATA;
  wire C0_DDR4_S_AXI_1_WLAST;
  wire C0_DDR4_S_AXI_1_WREADY;
  wire [63:0]C0_DDR4_S_AXI_1_WSTRB;
  wire C0_DDR4_S_AXI_1_WVALID;
  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire Conn2_ACT_N;
  wire [16:0]Conn2_ADR;
  wire [1:0]Conn2_BA;
  wire [0:0]Conn2_BG;
  wire [0:0]Conn2_CKE;
  wire [0:0]Conn2_CK_C;
  wire [0:0]Conn2_CK_T;
  wire [0:0]Conn2_CS_N;
  wire [8:0]Conn2_DM_N;
  wire [71:0]Conn2_DQ;
  wire [8:0]Conn2_DQS_C;
  wire [8:0]Conn2_DQS_T;
  wire [0:0]Conn2_ODT;
  wire Conn2_RESET_N;
  wire Conn3_CLK_N;
  wire Conn3_CLK_P;
  wire Conn4_ACT_N;
  wire [16:0]Conn4_ADR;
  wire [1:0]Conn4_BA;
  wire [0:0]Conn4_BG;
  wire [0:0]Conn4_CKE;
  wire [0:0]Conn4_CK_C;
  wire [0:0]Conn4_CK_T;
  wire [0:0]Conn4_CS_N;
  wire [7:0]Conn4_DM_N;
  wire [63:0]Conn4_DQ;
  wire [7:0]Conn4_DQS_C;
  wire [7:0]Conn4_DQS_T;
  wire [0:0]Conn4_ODT;
  wire Conn4_RESET_N;
  wire Conn5_CLK_N;
  wire Conn5_CLK_P;
  wire Conn6_ACT_N;
  wire [16:0]Conn6_ADR;
  wire [1:0]Conn6_BA;
  wire [0:0]Conn6_BG;
  wire [0:0]Conn6_CKE;
  wire [0:0]Conn6_CK_C;
  wire [0:0]Conn6_CK_T;
  wire [0:0]Conn6_CS_N;
  wire [8:0]Conn6_DM_N;
  wire [71:0]Conn6_DQ;
  wire [8:0]Conn6_DQS_C;
  wire [8:0]Conn6_DQS_T;
  wire [0:0]Conn6_ODT;
  wire Conn6_RESET_N;
  wire Conn7_CLK_N;
  wire Conn7_CLK_P;
  wire Conn8_ACT_N;
  wire [16:0]Conn8_ADR;
  wire [1:0]Conn8_BA;
  wire [0:0]Conn8_BG;
  wire [0:0]Conn8_CKE;
  wire [0:0]Conn8_CK_C;
  wire [0:0]Conn8_CK_T;
  wire [0:0]Conn8_CS_N;
  wire [8:0]Conn8_DM_N;
  wire [71:0]Conn8_DQ;
  wire [8:0]Conn8_DQS_C;
  wire [8:0]Conn8_DQS_T;
  wire [0:0]Conn8_ODT;
  wire Conn8_RESET_N;
  wire [31:0]Conn9_ARADDR;
  wire Conn9_ARREADY;
  wire Conn9_ARVALID;
  wire [31:0]Conn9_AWADDR;
  wire Conn9_AWREADY;
  wire Conn9_AWVALID;
  wire Conn9_BREADY;
  wire [1:0]Conn9_BRESP;
  wire Conn9_BVALID;
  wire [31:0]Conn9_RDATA;
  wire Conn9_RREADY;
  wire [1:0]Conn9_RRESP;
  wire Conn9_RVALID;
  wire [31:0]Conn9_WDATA;
  wire Conn9_WREADY;
  wire Conn9_WVALID;
  wire [31:0]axi_clock_converter_0_M_AXI1_ARADDR;
  wire axi_clock_converter_0_M_AXI1_ARREADY;
  wire axi_clock_converter_0_M_AXI1_ARVALID;
  wire [31:0]axi_clock_converter_0_M_AXI1_AWADDR;
  wire axi_clock_converter_0_M_AXI1_AWREADY;
  wire axi_clock_converter_0_M_AXI1_AWVALID;
  wire axi_clock_converter_0_M_AXI1_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI1_BRESP;
  wire axi_clock_converter_0_M_AXI1_BVALID;
  wire [31:0]axi_clock_converter_0_M_AXI1_RDATA;
  wire axi_clock_converter_0_M_AXI1_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI1_RRESP;
  wire axi_clock_converter_0_M_AXI1_RVALID;
  wire [31:0]axi_clock_converter_0_M_AXI1_WDATA;
  wire axi_clock_converter_0_M_AXI1_WREADY;
  wire axi_clock_converter_0_M_AXI1_WVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_ARADDR;
  wire axi_clock_converter_0_M_AXI_ARREADY;
  wire axi_clock_converter_0_M_AXI_ARVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_RDATA;
  wire axi_clock_converter_0_M_AXI_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_RRESP;
  wire axi_clock_converter_0_M_AXI_RVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire [0:0]c0_ddr4_aresetn1_1;
  wire [0:0]c0_ddr4_aresetn2_1;
  wire [0:0]c0_ddr4_aresetn3_1;
  wire [0:0]c0_ddr4_aresetn_1;
  wire [3:0]concat_ddrcalib_dout;
  wire \^ddrmem_2_c0_ddr4_ui_clk ;
  wire \^ddrmem_2_c0_ddr4_ui_clk_sync_rst ;
  wire ddrmem_2_c0_init_calib_complete;
  wire \^ddrmem_3_c0_ddr4_ui_clk ;
  wire \^ddrmem_3_c0_ddr4_ui_clk_sync_rst ;
  wire ddrmem_3_c0_init_calib_complete;
  wire ddrmem_4_c0_ddr4_ui_clk;
  wire ddrmem_4_c0_ddr4_ui_clk_sync_rst;
  wire ddrmem_4_c0_init_calib_complete;
  wire ddrmem_c0_ddr4_ui_clk;
  wire ddrmem_c0_ddr4_ui_clk_sync_rst;
  wire ddrmem_c0_init_calib_complete;
  wire [31:0]interconnect_axilite_M04_AXI_1_ARADDR;
  wire [2:0]interconnect_axilite_M04_AXI_1_ARPROT;
  wire interconnect_axilite_M04_AXI_1_ARREADY;
  wire interconnect_axilite_M04_AXI_1_ARVALID;
  wire [31:0]interconnect_axilite_M04_AXI_1_AWADDR;
  wire [2:0]interconnect_axilite_M04_AXI_1_AWPROT;
  wire interconnect_axilite_M04_AXI_1_AWREADY;
  wire interconnect_axilite_M04_AXI_1_AWVALID;
  wire interconnect_axilite_M04_AXI_1_BREADY;
  wire [1:0]interconnect_axilite_M04_AXI_1_BRESP;
  wire interconnect_axilite_M04_AXI_1_BVALID;
  wire [31:0]interconnect_axilite_M04_AXI_1_RDATA;
  wire interconnect_axilite_M04_AXI_1_RREADY;
  wire [1:0]interconnect_axilite_M04_AXI_1_RRESP;
  wire interconnect_axilite_M04_AXI_1_RVALID;
  wire [31:0]interconnect_axilite_M04_AXI_1_WDATA;
  wire interconnect_axilite_M04_AXI_1_WREADY;
  wire [3:0]interconnect_axilite_M04_AXI_1_WSTRB;
  wire interconnect_axilite_M04_AXI_1_WVALID;
  wire [31:0]interconnect_axilite_M05_AXI_1_ARADDR;
  wire [2:0]interconnect_axilite_M05_AXI_1_ARPROT;
  wire interconnect_axilite_M05_AXI_1_ARREADY;
  wire interconnect_axilite_M05_AXI_1_ARVALID;
  wire [31:0]interconnect_axilite_M05_AXI_1_AWADDR;
  wire [2:0]interconnect_axilite_M05_AXI_1_AWPROT;
  wire interconnect_axilite_M05_AXI_1_AWREADY;
  wire interconnect_axilite_M05_AXI_1_AWVALID;
  wire interconnect_axilite_M05_AXI_1_BREADY;
  wire [1:0]interconnect_axilite_M05_AXI_1_BRESP;
  wire interconnect_axilite_M05_AXI_1_BVALID;
  wire [31:0]interconnect_axilite_M05_AXI_1_RDATA;
  wire interconnect_axilite_M05_AXI_1_RREADY;
  wire [1:0]interconnect_axilite_M05_AXI_1_RRESP;
  wire interconnect_axilite_M05_AXI_1_RVALID;
  wire [31:0]interconnect_axilite_M05_AXI_1_WDATA;
  wire interconnect_axilite_M05_AXI_1_WREADY;
  wire [3:0]interconnect_axilite_M05_AXI_1_WSTRB;
  wire interconnect_axilite_M05_AXI_1_WVALID;
  wire logic_ddrcalib_op_Res;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;
  wire [0:0]sys_rst_1;

  assign C0_DDR4_S_AXI1_1_ARADDR = interconnect_aximm_ddrmem1_M00_AXI_araddr[31:0];
  assign C0_DDR4_S_AXI1_1_ARBURST = interconnect_aximm_ddrmem1_M00_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI1_1_ARCACHE = interconnect_aximm_ddrmem1_M00_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI1_1_ARLEN = interconnect_aximm_ddrmem1_M00_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI1_1_ARLOCK = interconnect_aximm_ddrmem1_M00_AXI_arlock[0];
  assign C0_DDR4_S_AXI1_1_ARPROT = interconnect_aximm_ddrmem1_M00_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI1_1_ARQOS = interconnect_aximm_ddrmem1_M00_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI1_1_ARSIZE = interconnect_aximm_ddrmem1_M00_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI1_1_ARVALID = interconnect_aximm_ddrmem1_M00_AXI_arvalid;
  assign C0_DDR4_S_AXI1_1_AWADDR = interconnect_aximm_ddrmem1_M00_AXI_awaddr[31:0];
  assign C0_DDR4_S_AXI1_1_AWBURST = interconnect_aximm_ddrmem1_M00_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI1_1_AWCACHE = interconnect_aximm_ddrmem1_M00_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI1_1_AWLEN = interconnect_aximm_ddrmem1_M00_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI1_1_AWLOCK = interconnect_aximm_ddrmem1_M00_AXI_awlock[0];
  assign C0_DDR4_S_AXI1_1_AWPROT = interconnect_aximm_ddrmem1_M00_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI1_1_AWQOS = interconnect_aximm_ddrmem1_M00_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI1_1_AWSIZE = interconnect_aximm_ddrmem1_M00_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI1_1_AWVALID = interconnect_aximm_ddrmem1_M00_AXI_awvalid;
  assign C0_DDR4_S_AXI1_1_BREADY = interconnect_aximm_ddrmem1_M00_AXI_bready;
  assign C0_DDR4_S_AXI1_1_RREADY = interconnect_aximm_ddrmem1_M00_AXI_rready;
  assign C0_DDR4_S_AXI1_1_WDATA = interconnect_aximm_ddrmem1_M00_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI1_1_WLAST = interconnect_aximm_ddrmem1_M00_AXI_wlast;
  assign C0_DDR4_S_AXI1_1_WSTRB = interconnect_aximm_ddrmem1_M00_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI1_1_WVALID = interconnect_aximm_ddrmem1_M00_AXI_wvalid;
  assign C0_DDR4_S_AXI2_1_ARADDR = interconnect_aximm_ddrmem2_M00_AXI_araddr[31:0];
  assign C0_DDR4_S_AXI2_1_ARBURST = interconnect_aximm_ddrmem2_M00_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI2_1_ARCACHE = interconnect_aximm_ddrmem2_M00_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI2_1_ARLEN = interconnect_aximm_ddrmem2_M00_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI2_1_ARLOCK = interconnect_aximm_ddrmem2_M00_AXI_arlock[0];
  assign C0_DDR4_S_AXI2_1_ARPROT = interconnect_aximm_ddrmem2_M00_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI2_1_ARQOS = interconnect_aximm_ddrmem2_M00_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI2_1_ARSIZE = interconnect_aximm_ddrmem2_M00_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI2_1_ARVALID = interconnect_aximm_ddrmem2_M00_AXI_arvalid;
  assign C0_DDR4_S_AXI2_1_AWADDR = interconnect_aximm_ddrmem2_M00_AXI_awaddr[31:0];
  assign C0_DDR4_S_AXI2_1_AWBURST = interconnect_aximm_ddrmem2_M00_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI2_1_AWCACHE = interconnect_aximm_ddrmem2_M00_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI2_1_AWLEN = interconnect_aximm_ddrmem2_M00_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI2_1_AWLOCK = interconnect_aximm_ddrmem2_M00_AXI_awlock[0];
  assign C0_DDR4_S_AXI2_1_AWPROT = interconnect_aximm_ddrmem2_M00_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI2_1_AWQOS = interconnect_aximm_ddrmem2_M00_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI2_1_AWSIZE = interconnect_aximm_ddrmem2_M00_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI2_1_AWVALID = interconnect_aximm_ddrmem2_M00_AXI_awvalid;
  assign C0_DDR4_S_AXI2_1_BREADY = interconnect_aximm_ddrmem2_M00_AXI_bready;
  assign C0_DDR4_S_AXI2_1_RREADY = interconnect_aximm_ddrmem2_M00_AXI_rready;
  assign C0_DDR4_S_AXI2_1_WDATA = interconnect_aximm_ddrmem2_M00_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI2_1_WLAST = interconnect_aximm_ddrmem2_M00_AXI_wlast;
  assign C0_DDR4_S_AXI2_1_WSTRB = interconnect_aximm_ddrmem2_M00_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI2_1_WVALID = interconnect_aximm_ddrmem2_M00_AXI_wvalid;
  assign C0_DDR4_S_AXI3_1_ARADDR = interconnect_aximm_ddrmem3_M00_AXI_araddr[31:0];
  assign C0_DDR4_S_AXI3_1_ARBURST = interconnect_aximm_ddrmem3_M00_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI3_1_ARCACHE = interconnect_aximm_ddrmem3_M00_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI3_1_ARLEN = interconnect_aximm_ddrmem3_M00_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI3_1_ARLOCK = interconnect_aximm_ddrmem3_M00_AXI_arlock[0];
  assign C0_DDR4_S_AXI3_1_ARPROT = interconnect_aximm_ddrmem3_M00_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI3_1_ARQOS = interconnect_aximm_ddrmem3_M00_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI3_1_ARSIZE = interconnect_aximm_ddrmem3_M00_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI3_1_ARVALID = interconnect_aximm_ddrmem3_M00_AXI_arvalid;
  assign C0_DDR4_S_AXI3_1_AWADDR = interconnect_aximm_ddrmem3_M00_AXI_awaddr[31:0];
  assign C0_DDR4_S_AXI3_1_AWBURST = interconnect_aximm_ddrmem3_M00_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI3_1_AWCACHE = interconnect_aximm_ddrmem3_M00_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI3_1_AWLEN = interconnect_aximm_ddrmem3_M00_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI3_1_AWLOCK = interconnect_aximm_ddrmem3_M00_AXI_awlock[0];
  assign C0_DDR4_S_AXI3_1_AWPROT = interconnect_aximm_ddrmem3_M00_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI3_1_AWQOS = interconnect_aximm_ddrmem3_M00_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI3_1_AWSIZE = interconnect_aximm_ddrmem3_M00_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI3_1_AWVALID = interconnect_aximm_ddrmem3_M00_AXI_awvalid;
  assign C0_DDR4_S_AXI3_1_BREADY = interconnect_aximm_ddrmem3_M00_AXI_bready;
  assign C0_DDR4_S_AXI3_1_RREADY = interconnect_aximm_ddrmem3_M00_AXI_rready;
  assign C0_DDR4_S_AXI3_1_WDATA = interconnect_aximm_ddrmem3_M00_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI3_1_WLAST = interconnect_aximm_ddrmem3_M00_AXI_wlast;
  assign C0_DDR4_S_AXI3_1_WSTRB = interconnect_aximm_ddrmem3_M00_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI3_1_WVALID = interconnect_aximm_ddrmem3_M00_AXI_wvalid;
  assign C0_DDR4_S_AXI_1_ARADDR = interconnect_aximm_ddrmem0_M00_AXI_araddr[31:0];
  assign C0_DDR4_S_AXI_1_ARBURST = interconnect_aximm_ddrmem0_M00_AXI_arburst[1:0];
  assign C0_DDR4_S_AXI_1_ARCACHE = interconnect_aximm_ddrmem0_M00_AXI_arcache[3:0];
  assign C0_DDR4_S_AXI_1_ARLEN = interconnect_aximm_ddrmem0_M00_AXI_arlen[7:0];
  assign C0_DDR4_S_AXI_1_ARLOCK = interconnect_aximm_ddrmem0_M00_AXI_arlock[0];
  assign C0_DDR4_S_AXI_1_ARPROT = interconnect_aximm_ddrmem0_M00_AXI_arprot[2:0];
  assign C0_DDR4_S_AXI_1_ARQOS = interconnect_aximm_ddrmem0_M00_AXI_arqos[3:0];
  assign C0_DDR4_S_AXI_1_ARSIZE = interconnect_aximm_ddrmem0_M00_AXI_arsize[2:0];
  assign C0_DDR4_S_AXI_1_ARVALID = interconnect_aximm_ddrmem0_M00_AXI_arvalid;
  assign C0_DDR4_S_AXI_1_AWADDR = interconnect_aximm_ddrmem0_M00_AXI_awaddr[31:0];
  assign C0_DDR4_S_AXI_1_AWBURST = interconnect_aximm_ddrmem0_M00_AXI_awburst[1:0];
  assign C0_DDR4_S_AXI_1_AWCACHE = interconnect_aximm_ddrmem0_M00_AXI_awcache[3:0];
  assign C0_DDR4_S_AXI_1_AWLEN = interconnect_aximm_ddrmem0_M00_AXI_awlen[7:0];
  assign C0_DDR4_S_AXI_1_AWLOCK = interconnect_aximm_ddrmem0_M00_AXI_awlock[0];
  assign C0_DDR4_S_AXI_1_AWPROT = interconnect_aximm_ddrmem0_M00_AXI_awprot[2:0];
  assign C0_DDR4_S_AXI_1_AWQOS = interconnect_aximm_ddrmem0_M00_AXI_awqos[3:0];
  assign C0_DDR4_S_AXI_1_AWSIZE = interconnect_aximm_ddrmem0_M00_AXI_awsize[2:0];
  assign C0_DDR4_S_AXI_1_AWVALID = interconnect_aximm_ddrmem0_M00_AXI_awvalid;
  assign C0_DDR4_S_AXI_1_BREADY = interconnect_aximm_ddrmem0_M00_AXI_bready;
  assign C0_DDR4_S_AXI_1_RREADY = interconnect_aximm_ddrmem0_M00_AXI_rready;
  assign C0_DDR4_S_AXI_1_WDATA = interconnect_aximm_ddrmem0_M00_AXI_wdata[511:0];
  assign C0_DDR4_S_AXI_1_WLAST = interconnect_aximm_ddrmem0_M00_AXI_wlast;
  assign C0_DDR4_S_AXI_1_WSTRB = interconnect_aximm_ddrmem0_M00_AXI_wstrb[63:0];
  assign C0_DDR4_S_AXI_1_WVALID = interconnect_aximm_ddrmem0_M00_AXI_wvalid;
  assign Conn1_CLK_N = c1_sys_clk_n;
  assign Conn1_CLK_P = c1_sys_clk_p;
  assign Conn3_CLK_N = c0_sys_clk_n;
  assign Conn3_CLK_P = c0_sys_clk_p;
  assign Conn5_CLK_N = c2_sys_clk_n;
  assign Conn5_CLK_P = c2_sys_clk_p;
  assign Conn7_CLK_N = c3_sys_clk_n;
  assign Conn7_CLK_P = c3_sys_clk_p;
  assign Conn9_ARADDR = interconnect_axilite_M03_AXI_araddr[31:0];
  assign Conn9_ARVALID = interconnect_axilite_M03_AXI_arvalid;
  assign Conn9_AWADDR = interconnect_axilite_M03_AXI_awaddr[31:0];
  assign Conn9_AWVALID = interconnect_axilite_M03_AXI_awvalid;
  assign Conn9_BREADY = interconnect_axilite_M03_AXI_bready;
  assign Conn9_RREADY = interconnect_axilite_M03_AXI_rready;
  assign Conn9_WDATA = interconnect_axilite_M03_AXI_wdata[31:0];
  assign Conn9_WVALID = interconnect_axilite_M03_AXI_wvalid;
  assign c0_ddr4_aresetn1_1 = psreset_ddrmem_n_2_interconnect_aresetn[0];
  assign c0_ddr4_aresetn2_1 = psreset_ddrmem_n_3_interconnect_aresetn[0];
  assign c0_ddr4_aresetn3_1 = psreset_ddrmem_n_4_interconnect_aresetn[0];
  assign c0_ddr4_aresetn_1 = psreset_ddrmem_n_interconnect_aresetn[0];
  assign ddrmem_0_C0_DDR4_act_n = Conn2_ACT_N;
  assign ddrmem_0_C0_DDR4_adr[16:0] = Conn2_ADR;
  assign ddrmem_0_C0_DDR4_ba[1:0] = Conn2_BA;
  assign ddrmem_0_C0_DDR4_bg[0] = Conn2_BG;
  assign ddrmem_0_C0_DDR4_ck_c[0] = Conn2_CK_C;
  assign ddrmem_0_C0_DDR4_ck_t[0] = Conn2_CK_T;
  assign ddrmem_0_C0_DDR4_cke[0] = Conn2_CKE;
  assign ddrmem_0_C0_DDR4_cs_n[0] = Conn2_CS_N;
  assign ddrmem_0_C0_DDR4_odt[0] = Conn2_ODT;
  assign ddrmem_0_C0_DDR4_reset_n = Conn2_RESET_N;
  assign ddrmem_0_c0_ddr4_ui_clk = ddrmem_c0_ddr4_ui_clk;
  assign ddrmem_0_c0_ddr4_ui_clk_sync_rst = ddrmem_c0_ddr4_ui_clk_sync_rst;
  assign ddrmem_1_C0_DDR4_act_n = Conn4_ACT_N;
  assign ddrmem_1_C0_DDR4_adr[16:0] = Conn4_ADR;
  assign ddrmem_1_C0_DDR4_ba[1:0] = Conn4_BA;
  assign ddrmem_1_C0_DDR4_bg[0] = Conn4_BG;
  assign ddrmem_1_C0_DDR4_ck_c[0] = Conn4_CK_C;
  assign ddrmem_1_C0_DDR4_ck_t[0] = Conn4_CK_T;
  assign ddrmem_1_C0_DDR4_cke[0] = Conn4_CKE;
  assign ddrmem_1_C0_DDR4_cs_n[0] = Conn4_CS_N;
  assign ddrmem_1_C0_DDR4_odt[0] = Conn4_ODT;
  assign ddrmem_1_C0_DDR4_reset_n = Conn4_RESET_N;
  assign ddrmem_1_c0_ddr4_ui_clk = \^ddrmem_2_c0_ddr4_ui_clk ;
  assign ddrmem_1_c0_ddr4_ui_clk_sync_rst = \^ddrmem_2_c0_ddr4_ui_clk_sync_rst ;
  assign ddrmem_2_C0_DDR4_act_n = Conn6_ACT_N;
  assign ddrmem_2_C0_DDR4_adr[16:0] = Conn6_ADR;
  assign ddrmem_2_C0_DDR4_ba[1:0] = Conn6_BA;
  assign ddrmem_2_C0_DDR4_bg[0] = Conn6_BG;
  assign ddrmem_2_C0_DDR4_ck_c[0] = Conn6_CK_C;
  assign ddrmem_2_C0_DDR4_ck_t[0] = Conn6_CK_T;
  assign ddrmem_2_C0_DDR4_cke[0] = Conn6_CKE;
  assign ddrmem_2_C0_DDR4_cs_n[0] = Conn6_CS_N;
  assign ddrmem_2_C0_DDR4_odt[0] = Conn6_ODT;
  assign ddrmem_2_C0_DDR4_reset_n = Conn6_RESET_N;
  assign ddrmem_2_c0_ddr4_ui_clk = \^ddrmem_3_c0_ddr4_ui_clk ;
  assign ddrmem_2_c0_ddr4_ui_clk_sync_rst = \^ddrmem_3_c0_ddr4_ui_clk_sync_rst ;
  assign ddrmem_3_C0_DDR4_act_n = Conn8_ACT_N;
  assign ddrmem_3_C0_DDR4_adr[16:0] = Conn8_ADR;
  assign ddrmem_3_C0_DDR4_ba[1:0] = Conn8_BA;
  assign ddrmem_3_C0_DDR4_bg[0] = Conn8_BG;
  assign ddrmem_3_C0_DDR4_ck_c[0] = Conn8_CK_C;
  assign ddrmem_3_C0_DDR4_ck_t[0] = Conn8_CK_T;
  assign ddrmem_3_C0_DDR4_cke[0] = Conn8_CKE;
  assign ddrmem_3_C0_DDR4_cs_n[0] = Conn8_CS_N;
  assign ddrmem_3_C0_DDR4_odt[0] = Conn8_ODT;
  assign ddrmem_3_C0_DDR4_reset_n = Conn8_RESET_N;
  assign ddrmem_3_c0_ddr4_ui_clk = ddrmem_4_c0_ddr4_ui_clk;
  assign ddrmem_3_c0_ddr4_ui_clk_sync_rst = ddrmem_4_c0_ddr4_ui_clk_sync_rst;
  assign interconnect_axilite_M03_AXI_arready = Conn9_ARREADY;
  assign interconnect_axilite_M03_AXI_awready = Conn9_AWREADY;
  assign interconnect_axilite_M03_AXI_bresp[1:0] = Conn9_BRESP;
  assign interconnect_axilite_M03_AXI_bvalid = Conn9_BVALID;
  assign interconnect_axilite_M03_AXI_rdata[31:0] = Conn9_RDATA;
  assign interconnect_axilite_M03_AXI_rresp[1:0] = Conn9_RRESP;
  assign interconnect_axilite_M03_AXI_rvalid = Conn9_RVALID;
  assign interconnect_axilite_M03_AXI_wready = Conn9_WREADY;
  assign interconnect_axilite_M04_AXI_1_ARADDR = interconnect_axilite_M04_AXI_araddr[31:0];
  assign interconnect_axilite_M04_AXI_1_ARPROT = interconnect_axilite_M04_AXI_arprot[2:0];
  assign interconnect_axilite_M04_AXI_1_ARVALID = interconnect_axilite_M04_AXI_arvalid;
  assign interconnect_axilite_M04_AXI_1_AWADDR = interconnect_axilite_M04_AXI_awaddr[31:0];
  assign interconnect_axilite_M04_AXI_1_AWPROT = interconnect_axilite_M04_AXI_awprot[2:0];
  assign interconnect_axilite_M04_AXI_1_AWVALID = interconnect_axilite_M04_AXI_awvalid;
  assign interconnect_axilite_M04_AXI_1_BREADY = interconnect_axilite_M04_AXI_bready;
  assign interconnect_axilite_M04_AXI_1_RREADY = interconnect_axilite_M04_AXI_rready;
  assign interconnect_axilite_M04_AXI_1_WDATA = interconnect_axilite_M04_AXI_wdata[31:0];
  assign interconnect_axilite_M04_AXI_1_WSTRB = interconnect_axilite_M04_AXI_wstrb[3:0];
  assign interconnect_axilite_M04_AXI_1_WVALID = interconnect_axilite_M04_AXI_wvalid;
  assign interconnect_axilite_M04_AXI_arready = interconnect_axilite_M04_AXI_1_ARREADY;
  assign interconnect_axilite_M04_AXI_awready = interconnect_axilite_M04_AXI_1_AWREADY;
  assign interconnect_axilite_M04_AXI_bresp[1:0] = interconnect_axilite_M04_AXI_1_BRESP;
  assign interconnect_axilite_M04_AXI_bvalid = interconnect_axilite_M04_AXI_1_BVALID;
  assign interconnect_axilite_M04_AXI_rdata[31:0] = interconnect_axilite_M04_AXI_1_RDATA;
  assign interconnect_axilite_M04_AXI_rresp[1:0] = interconnect_axilite_M04_AXI_1_RRESP;
  assign interconnect_axilite_M04_AXI_rvalid = interconnect_axilite_M04_AXI_1_RVALID;
  assign interconnect_axilite_M04_AXI_wready = interconnect_axilite_M04_AXI_1_WREADY;
  assign interconnect_axilite_M05_AXI_1_ARADDR = interconnect_axilite_M05_AXI_araddr[31:0];
  assign interconnect_axilite_M05_AXI_1_ARPROT = interconnect_axilite_M05_AXI_arprot[2:0];
  assign interconnect_axilite_M05_AXI_1_ARVALID = interconnect_axilite_M05_AXI_arvalid;
  assign interconnect_axilite_M05_AXI_1_AWADDR = interconnect_axilite_M05_AXI_awaddr[31:0];
  assign interconnect_axilite_M05_AXI_1_AWPROT = interconnect_axilite_M05_AXI_awprot[2:0];
  assign interconnect_axilite_M05_AXI_1_AWVALID = interconnect_axilite_M05_AXI_awvalid;
  assign interconnect_axilite_M05_AXI_1_BREADY = interconnect_axilite_M05_AXI_bready;
  assign interconnect_axilite_M05_AXI_1_RREADY = interconnect_axilite_M05_AXI_rready;
  assign interconnect_axilite_M05_AXI_1_WDATA = interconnect_axilite_M05_AXI_wdata[31:0];
  assign interconnect_axilite_M05_AXI_1_WSTRB = interconnect_axilite_M05_AXI_wstrb[3:0];
  assign interconnect_axilite_M05_AXI_1_WVALID = interconnect_axilite_M05_AXI_wvalid;
  assign interconnect_axilite_M05_AXI_arready = interconnect_axilite_M05_AXI_1_ARREADY;
  assign interconnect_axilite_M05_AXI_awready = interconnect_axilite_M05_AXI_1_AWREADY;
  assign interconnect_axilite_M05_AXI_bresp[1:0] = interconnect_axilite_M05_AXI_1_BRESP;
  assign interconnect_axilite_M05_AXI_bvalid = interconnect_axilite_M05_AXI_1_BVALID;
  assign interconnect_axilite_M05_AXI_rdata[31:0] = interconnect_axilite_M05_AXI_1_RDATA;
  assign interconnect_axilite_M05_AXI_rresp[1:0] = interconnect_axilite_M05_AXI_1_RRESP;
  assign interconnect_axilite_M05_AXI_rvalid = interconnect_axilite_M05_AXI_1_RVALID;
  assign interconnect_axilite_M05_AXI_wready = interconnect_axilite_M05_AXI_1_WREADY;
  assign interconnect_aximm_ddrmem0_M00_AXI_arready = C0_DDR4_S_AXI_1_ARREADY;
  assign interconnect_aximm_ddrmem0_M00_AXI_awready = C0_DDR4_S_AXI_1_AWREADY;
  assign interconnect_aximm_ddrmem0_M00_AXI_bresp[1:0] = C0_DDR4_S_AXI_1_BRESP;
  assign interconnect_aximm_ddrmem0_M00_AXI_bvalid = C0_DDR4_S_AXI_1_BVALID;
  assign interconnect_aximm_ddrmem0_M00_AXI_rdata[511:0] = C0_DDR4_S_AXI_1_RDATA;
  assign interconnect_aximm_ddrmem0_M00_AXI_rlast = C0_DDR4_S_AXI_1_RLAST;
  assign interconnect_aximm_ddrmem0_M00_AXI_rresp[1:0] = C0_DDR4_S_AXI_1_RRESP;
  assign interconnect_aximm_ddrmem0_M00_AXI_rvalid = C0_DDR4_S_AXI_1_RVALID;
  assign interconnect_aximm_ddrmem0_M00_AXI_wready = C0_DDR4_S_AXI_1_WREADY;
  assign interconnect_aximm_ddrmem1_M00_AXI_arready = C0_DDR4_S_AXI1_1_ARREADY;
  assign interconnect_aximm_ddrmem1_M00_AXI_awready = C0_DDR4_S_AXI1_1_AWREADY;
  assign interconnect_aximm_ddrmem1_M00_AXI_bresp[1:0] = C0_DDR4_S_AXI1_1_BRESP;
  assign interconnect_aximm_ddrmem1_M00_AXI_bvalid = C0_DDR4_S_AXI1_1_BVALID;
  assign interconnect_aximm_ddrmem1_M00_AXI_rdata[511:0] = C0_DDR4_S_AXI1_1_RDATA;
  assign interconnect_aximm_ddrmem1_M00_AXI_rlast = C0_DDR4_S_AXI1_1_RLAST;
  assign interconnect_aximm_ddrmem1_M00_AXI_rresp[1:0] = C0_DDR4_S_AXI1_1_RRESP;
  assign interconnect_aximm_ddrmem1_M00_AXI_rvalid = C0_DDR4_S_AXI1_1_RVALID;
  assign interconnect_aximm_ddrmem1_M00_AXI_wready = C0_DDR4_S_AXI1_1_WREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_arready = C0_DDR4_S_AXI2_1_ARREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_awready = C0_DDR4_S_AXI2_1_AWREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_bresp[1:0] = C0_DDR4_S_AXI2_1_BRESP;
  assign interconnect_aximm_ddrmem2_M00_AXI_bvalid = C0_DDR4_S_AXI2_1_BVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_rdata[511:0] = C0_DDR4_S_AXI2_1_RDATA;
  assign interconnect_aximm_ddrmem2_M00_AXI_rlast = C0_DDR4_S_AXI2_1_RLAST;
  assign interconnect_aximm_ddrmem2_M00_AXI_rresp[1:0] = C0_DDR4_S_AXI2_1_RRESP;
  assign interconnect_aximm_ddrmem2_M00_AXI_rvalid = C0_DDR4_S_AXI2_1_RVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_wready = C0_DDR4_S_AXI2_1_WREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_arready = C0_DDR4_S_AXI3_1_ARREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_awready = C0_DDR4_S_AXI3_1_AWREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_bresp[1:0] = C0_DDR4_S_AXI3_1_BRESP;
  assign interconnect_aximm_ddrmem3_M00_AXI_bvalid = C0_DDR4_S_AXI3_1_BVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_rdata[511:0] = C0_DDR4_S_AXI3_1_RDATA;
  assign interconnect_aximm_ddrmem3_M00_AXI_rlast = C0_DDR4_S_AXI3_1_RLAST;
  assign interconnect_aximm_ddrmem3_M00_AXI_rresp[1:0] = C0_DDR4_S_AXI3_1_RRESP;
  assign interconnect_aximm_ddrmem3_M00_AXI_rvalid = C0_DDR4_S_AXI3_1_RVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_wready = C0_DDR4_S_AXI3_1_WREADY;
  assign s_axi_aclk_1 = clkwiz_sysclks_clk_out2;
  assign s_axi_aresetn_1 = psreset_gate_pr_control_interconnect_aresetn[0];
  assign sys_rst_1 = logic_reset_op_Res[0];
  xcl_design_axicc_ddrmem_2_ctrl_0 axicc_ddrmem_2_ctrl
       (.m_axi_aclk(\^ddrmem_3_c0_ddr4_ui_clk ),
        .m_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .m_axi_aresetn(c0_ddr4_aresetn2_1),
        .m_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .m_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .m_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .m_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(interconnect_axilite_M04_AXI_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(interconnect_axilite_M04_AXI_1_ARPROT),
        .s_axi_arready(interconnect_axilite_M04_AXI_1_ARREADY),
        .s_axi_arvalid(interconnect_axilite_M04_AXI_1_ARVALID),
        .s_axi_awaddr(interconnect_axilite_M04_AXI_1_AWADDR),
        .s_axi_awprot(interconnect_axilite_M04_AXI_1_AWPROT),
        .s_axi_awready(interconnect_axilite_M04_AXI_1_AWREADY),
        .s_axi_awvalid(interconnect_axilite_M04_AXI_1_AWVALID),
        .s_axi_bready(interconnect_axilite_M04_AXI_1_BREADY),
        .s_axi_bresp(interconnect_axilite_M04_AXI_1_BRESP),
        .s_axi_bvalid(interconnect_axilite_M04_AXI_1_BVALID),
        .s_axi_rdata(interconnect_axilite_M04_AXI_1_RDATA),
        .s_axi_rready(interconnect_axilite_M04_AXI_1_RREADY),
        .s_axi_rresp(interconnect_axilite_M04_AXI_1_RRESP),
        .s_axi_rvalid(interconnect_axilite_M04_AXI_1_RVALID),
        .s_axi_wdata(interconnect_axilite_M04_AXI_1_WDATA),
        .s_axi_wready(interconnect_axilite_M04_AXI_1_WREADY),
        .s_axi_wstrb(interconnect_axilite_M04_AXI_1_WSTRB),
        .s_axi_wvalid(interconnect_axilite_M04_AXI_1_WVALID));
  xcl_design_axicc_ddrmem_3_ctrl_0 axicc_ddrmem_3_ctrl
       (.m_axi_aclk(ddrmem_4_c0_ddr4_ui_clk),
        .m_axi_araddr(axi_clock_converter_0_M_AXI1_ARADDR),
        .m_axi_aresetn(c0_ddr4_aresetn3_1),
        .m_axi_arready(axi_clock_converter_0_M_AXI1_ARREADY),
        .m_axi_arvalid(axi_clock_converter_0_M_AXI1_ARVALID),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI1_AWADDR),
        .m_axi_awready(axi_clock_converter_0_M_AXI1_AWREADY),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI1_AWVALID),
        .m_axi_bready(axi_clock_converter_0_M_AXI1_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI1_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI1_BVALID),
        .m_axi_rdata(axi_clock_converter_0_M_AXI1_RDATA),
        .m_axi_rready(axi_clock_converter_0_M_AXI1_RREADY),
        .m_axi_rresp(axi_clock_converter_0_M_AXI1_RRESP),
        .m_axi_rvalid(axi_clock_converter_0_M_AXI1_RVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI1_WDATA),
        .m_axi_wready(axi_clock_converter_0_M_AXI1_WREADY),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI1_WVALID),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(interconnect_axilite_M05_AXI_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(interconnect_axilite_M05_AXI_1_ARPROT),
        .s_axi_arready(interconnect_axilite_M05_AXI_1_ARREADY),
        .s_axi_arvalid(interconnect_axilite_M05_AXI_1_ARVALID),
        .s_axi_awaddr(interconnect_axilite_M05_AXI_1_AWADDR),
        .s_axi_awprot(interconnect_axilite_M05_AXI_1_AWPROT),
        .s_axi_awready(interconnect_axilite_M05_AXI_1_AWREADY),
        .s_axi_awvalid(interconnect_axilite_M05_AXI_1_AWVALID),
        .s_axi_bready(interconnect_axilite_M05_AXI_1_BREADY),
        .s_axi_bresp(interconnect_axilite_M05_AXI_1_BRESP),
        .s_axi_bvalid(interconnect_axilite_M05_AXI_1_BVALID),
        .s_axi_rdata(interconnect_axilite_M05_AXI_1_RDATA),
        .s_axi_rready(interconnect_axilite_M05_AXI_1_RREADY),
        .s_axi_rresp(interconnect_axilite_M05_AXI_1_RRESP),
        .s_axi_rvalid(interconnect_axilite_M05_AXI_1_RVALID),
        .s_axi_wdata(interconnect_axilite_M05_AXI_1_WDATA),
        .s_axi_wready(interconnect_axilite_M05_AXI_1_WREADY),
        .s_axi_wstrb(interconnect_axilite_M05_AXI_1_WSTRB),
        .s_axi_wvalid(interconnect_axilite_M05_AXI_1_WVALID));
  xcl_design_concat_ddrcalib_0 concat_ddrcalib
       (.In0(ddrmem_c0_init_calib_complete),
        .In1(ddrmem_2_c0_init_calib_complete),
        .In2(ddrmem_3_c0_init_calib_complete),
        .In3(ddrmem_4_c0_init_calib_complete),
        .dout(concat_ddrcalib_dout));
  xcl_design_ddrmem_0_0 ddrmem_0
       (.c0_ddr4_act_n(Conn2_ACT_N),
        .c0_ddr4_adr(Conn2_ADR),
        .c0_ddr4_aresetn(c0_ddr4_aresetn_1),
        .c0_ddr4_ba(Conn2_BA),
        .c0_ddr4_bg(Conn2_BG),
        .c0_ddr4_ck_c(Conn2_CK_C),
        .c0_ddr4_ck_t(Conn2_CK_T),
        .c0_ddr4_cke(Conn2_CKE),
        .c0_ddr4_cs_n(Conn2_CS_N),
        .c0_ddr4_dm_dbi_n(ddrmem_0_C0_DDR4_dm_n[8:0]),
        .c0_ddr4_dq(ddrmem_0_C0_DDR4_dq[71:0]),
        .c0_ddr4_dqs_c(ddrmem_0_C0_DDR4_dqs_c[8:0]),
        .c0_ddr4_dqs_t(ddrmem_0_C0_DDR4_dqs_t[8:0]),
        .c0_ddr4_odt(Conn2_ODT),
        .c0_ddr4_reset_n(Conn2_RESET_N),
        .c0_ddr4_s_axi_araddr(C0_DDR4_S_AXI_1_ARADDR),
        .c0_ddr4_s_axi_arburst(C0_DDR4_S_AXI_1_ARBURST),
        .c0_ddr4_s_axi_arcache(C0_DDR4_S_AXI_1_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(C0_DDR4_S_AXI_1_ARLEN),
        .c0_ddr4_s_axi_arlock(C0_DDR4_S_AXI_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(C0_DDR4_S_AXI_1_ARPROT),
        .c0_ddr4_s_axi_arqos(C0_DDR4_S_AXI_1_ARQOS),
        .c0_ddr4_s_axi_arready(C0_DDR4_S_AXI_1_ARREADY),
        .c0_ddr4_s_axi_arsize(C0_DDR4_S_AXI_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(C0_DDR4_S_AXI_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(C0_DDR4_S_AXI_1_AWADDR),
        .c0_ddr4_s_axi_awburst(C0_DDR4_S_AXI_1_AWBURST),
        .c0_ddr4_s_axi_awcache(C0_DDR4_S_AXI_1_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(C0_DDR4_S_AXI_1_AWLEN),
        .c0_ddr4_s_axi_awlock(C0_DDR4_S_AXI_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(C0_DDR4_S_AXI_1_AWPROT),
        .c0_ddr4_s_axi_awqos(C0_DDR4_S_AXI_1_AWQOS),
        .c0_ddr4_s_axi_awready(C0_DDR4_S_AXI_1_AWREADY),
        .c0_ddr4_s_axi_awsize(C0_DDR4_S_AXI_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(C0_DDR4_S_AXI_1_AWVALID),
        .c0_ddr4_s_axi_bready(C0_DDR4_S_AXI_1_BREADY),
        .c0_ddr4_s_axi_bresp(C0_DDR4_S_AXI_1_BRESP),
        .c0_ddr4_s_axi_bvalid(C0_DDR4_S_AXI_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(Conn9_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(Conn9_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(Conn9_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(Conn9_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(Conn9_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(Conn9_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(Conn9_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(Conn9_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(Conn9_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(Conn9_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(Conn9_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(Conn9_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(Conn9_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(Conn9_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(Conn9_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(Conn9_WVALID),
        .c0_ddr4_s_axi_rdata(C0_DDR4_S_AXI_1_RDATA),
        .c0_ddr4_s_axi_rlast(C0_DDR4_S_AXI_1_RLAST),
        .c0_ddr4_s_axi_rready(C0_DDR4_S_AXI_1_RREADY),
        .c0_ddr4_s_axi_rresp(C0_DDR4_S_AXI_1_RRESP),
        .c0_ddr4_s_axi_rvalid(C0_DDR4_S_AXI_1_RVALID),
        .c0_ddr4_s_axi_wdata(C0_DDR4_S_AXI_1_WDATA),
        .c0_ddr4_s_axi_wlast(C0_DDR4_S_AXI_1_WLAST),
        .c0_ddr4_s_axi_wready(C0_DDR4_S_AXI_1_WREADY),
        .c0_ddr4_s_axi_wstrb(C0_DDR4_S_AXI_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(C0_DDR4_S_AXI_1_WVALID),
        .c0_ddr4_ui_clk(ddrmem_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddrmem_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddrmem_c0_init_calib_complete),
        .c0_sys_clk_n(Conn1_CLK_N),
        .c0_sys_clk_p(Conn1_CLK_P),
        .sys_rst(sys_rst_1));
  xcl_design_ddrmem_1_0 ddrmem_1
       (.c0_ddr4_act_n(Conn4_ACT_N),
        .c0_ddr4_adr(Conn4_ADR),
        .c0_ddr4_aresetn(c0_ddr4_aresetn1_1),
        .c0_ddr4_ba(Conn4_BA),
        .c0_ddr4_bg(Conn4_BG),
        .c0_ddr4_ck_c(Conn4_CK_C),
        .c0_ddr4_ck_t(Conn4_CK_T),
        .c0_ddr4_cke(Conn4_CKE),
        .c0_ddr4_cs_n(Conn4_CS_N),
        .c0_ddr4_dm_dbi_n(ddrmem_1_C0_DDR4_dm_n[7:0]),
        .c0_ddr4_dq(ddrmem_1_C0_DDR4_dq[63:0]),
        .c0_ddr4_dqs_c(ddrmem_1_C0_DDR4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(ddrmem_1_C0_DDR4_dqs_t[7:0]),
        .c0_ddr4_odt(Conn4_ODT),
        .c0_ddr4_reset_n(Conn4_RESET_N),
        .c0_ddr4_s_axi_araddr(C0_DDR4_S_AXI1_1_ARADDR),
        .c0_ddr4_s_axi_arburst(C0_DDR4_S_AXI1_1_ARBURST),
        .c0_ddr4_s_axi_arcache(C0_DDR4_S_AXI1_1_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(C0_DDR4_S_AXI1_1_ARLEN),
        .c0_ddr4_s_axi_arlock(C0_DDR4_S_AXI1_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(C0_DDR4_S_AXI1_1_ARPROT),
        .c0_ddr4_s_axi_arqos(C0_DDR4_S_AXI1_1_ARQOS),
        .c0_ddr4_s_axi_arready(C0_DDR4_S_AXI1_1_ARREADY),
        .c0_ddr4_s_axi_arsize(C0_DDR4_S_AXI1_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(C0_DDR4_S_AXI1_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(C0_DDR4_S_AXI1_1_AWADDR),
        .c0_ddr4_s_axi_awburst(C0_DDR4_S_AXI1_1_AWBURST),
        .c0_ddr4_s_axi_awcache(C0_DDR4_S_AXI1_1_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(C0_DDR4_S_AXI1_1_AWLEN),
        .c0_ddr4_s_axi_awlock(C0_DDR4_S_AXI1_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(C0_DDR4_S_AXI1_1_AWPROT),
        .c0_ddr4_s_axi_awqos(C0_DDR4_S_AXI1_1_AWQOS),
        .c0_ddr4_s_axi_awready(C0_DDR4_S_AXI1_1_AWREADY),
        .c0_ddr4_s_axi_awsize(C0_DDR4_S_AXI1_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(C0_DDR4_S_AXI1_1_AWVALID),
        .c0_ddr4_s_axi_bready(C0_DDR4_S_AXI1_1_BREADY),
        .c0_ddr4_s_axi_bresp(C0_DDR4_S_AXI1_1_BRESP),
        .c0_ddr4_s_axi_bvalid(C0_DDR4_S_AXI1_1_BVALID),
        .c0_ddr4_s_axi_rdata(C0_DDR4_S_AXI1_1_RDATA),
        .c0_ddr4_s_axi_rlast(C0_DDR4_S_AXI1_1_RLAST),
        .c0_ddr4_s_axi_rready(C0_DDR4_S_AXI1_1_RREADY),
        .c0_ddr4_s_axi_rresp(C0_DDR4_S_AXI1_1_RRESP),
        .c0_ddr4_s_axi_rvalid(C0_DDR4_S_AXI1_1_RVALID),
        .c0_ddr4_s_axi_wdata(C0_DDR4_S_AXI1_1_WDATA),
        .c0_ddr4_s_axi_wlast(C0_DDR4_S_AXI1_1_WLAST),
        .c0_ddr4_s_axi_wready(C0_DDR4_S_AXI1_1_WREADY),
        .c0_ddr4_s_axi_wstrb(C0_DDR4_S_AXI1_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(C0_DDR4_S_AXI1_1_WVALID),
        .c0_ddr4_ui_clk(\^ddrmem_2_c0_ddr4_ui_clk ),
        .c0_ddr4_ui_clk_sync_rst(\^ddrmem_2_c0_ddr4_ui_clk_sync_rst ),
        .c0_init_calib_complete(ddrmem_2_c0_init_calib_complete),
        .c0_sys_clk_n(Conn3_CLK_N),
        .c0_sys_clk_p(Conn3_CLK_P),
        .sys_rst(sys_rst_1));
  xcl_design_ddrmem_2_0 ddrmem_2
       (.c0_ddr4_act_n(Conn6_ACT_N),
        .c0_ddr4_adr(Conn6_ADR),
        .c0_ddr4_aresetn(c0_ddr4_aresetn2_1),
        .c0_ddr4_ba(Conn6_BA),
        .c0_ddr4_bg(Conn6_BG),
        .c0_ddr4_ck_c(Conn6_CK_C),
        .c0_ddr4_ck_t(Conn6_CK_T),
        .c0_ddr4_cke(Conn6_CKE),
        .c0_ddr4_cs_n(Conn6_CS_N),
        .c0_ddr4_dm_dbi_n(ddrmem_2_C0_DDR4_dm_n[8:0]),
        .c0_ddr4_dq(ddrmem_2_C0_DDR4_dq[71:0]),
        .c0_ddr4_dqs_c(ddrmem_2_C0_DDR4_dqs_c[8:0]),
        .c0_ddr4_dqs_t(ddrmem_2_C0_DDR4_dqs_t[8:0]),
        .c0_ddr4_odt(Conn6_ODT),
        .c0_ddr4_reset_n(Conn6_RESET_N),
        .c0_ddr4_s_axi_araddr(C0_DDR4_S_AXI2_1_ARADDR),
        .c0_ddr4_s_axi_arburst(C0_DDR4_S_AXI2_1_ARBURST),
        .c0_ddr4_s_axi_arcache(C0_DDR4_S_AXI2_1_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(C0_DDR4_S_AXI2_1_ARLEN),
        .c0_ddr4_s_axi_arlock(C0_DDR4_S_AXI2_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(C0_DDR4_S_AXI2_1_ARPROT),
        .c0_ddr4_s_axi_arqos(C0_DDR4_S_AXI2_1_ARQOS),
        .c0_ddr4_s_axi_arready(C0_DDR4_S_AXI2_1_ARREADY),
        .c0_ddr4_s_axi_arsize(C0_DDR4_S_AXI2_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(C0_DDR4_S_AXI2_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(C0_DDR4_S_AXI2_1_AWADDR),
        .c0_ddr4_s_axi_awburst(C0_DDR4_S_AXI2_1_AWBURST),
        .c0_ddr4_s_axi_awcache(C0_DDR4_S_AXI2_1_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(C0_DDR4_S_AXI2_1_AWLEN),
        .c0_ddr4_s_axi_awlock(C0_DDR4_S_AXI2_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(C0_DDR4_S_AXI2_1_AWPROT),
        .c0_ddr4_s_axi_awqos(C0_DDR4_S_AXI2_1_AWQOS),
        .c0_ddr4_s_axi_awready(C0_DDR4_S_AXI2_1_AWREADY),
        .c0_ddr4_s_axi_awsize(C0_DDR4_S_AXI2_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(C0_DDR4_S_AXI2_1_AWVALID),
        .c0_ddr4_s_axi_bready(C0_DDR4_S_AXI2_1_BREADY),
        .c0_ddr4_s_axi_bresp(C0_DDR4_S_AXI2_1_BRESP),
        .c0_ddr4_s_axi_bvalid(C0_DDR4_S_AXI2_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(axi_clock_converter_0_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(axi_clock_converter_0_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(axi_clock_converter_0_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(C0_DDR4_S_AXI2_1_RDATA),
        .c0_ddr4_s_axi_rlast(C0_DDR4_S_AXI2_1_RLAST),
        .c0_ddr4_s_axi_rready(C0_DDR4_S_AXI2_1_RREADY),
        .c0_ddr4_s_axi_rresp(C0_DDR4_S_AXI2_1_RRESP),
        .c0_ddr4_s_axi_rvalid(C0_DDR4_S_AXI2_1_RVALID),
        .c0_ddr4_s_axi_wdata(C0_DDR4_S_AXI2_1_WDATA),
        .c0_ddr4_s_axi_wlast(C0_DDR4_S_AXI2_1_WLAST),
        .c0_ddr4_s_axi_wready(C0_DDR4_S_AXI2_1_WREADY),
        .c0_ddr4_s_axi_wstrb(C0_DDR4_S_AXI2_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(C0_DDR4_S_AXI2_1_WVALID),
        .c0_ddr4_ui_clk(\^ddrmem_3_c0_ddr4_ui_clk ),
        .c0_ddr4_ui_clk_sync_rst(\^ddrmem_3_c0_ddr4_ui_clk_sync_rst ),
        .c0_init_calib_complete(ddrmem_3_c0_init_calib_complete),
        .c0_sys_clk_n(Conn5_CLK_N),
        .c0_sys_clk_p(Conn5_CLK_P),
        .sys_rst(sys_rst_1));
  xcl_design_ddrmem_3_0 ddrmem_3
       (.c0_ddr4_act_n(Conn8_ACT_N),
        .c0_ddr4_adr(Conn8_ADR),
        .c0_ddr4_aresetn(c0_ddr4_aresetn3_1),
        .c0_ddr4_ba(Conn8_BA),
        .c0_ddr4_bg(Conn8_BG),
        .c0_ddr4_ck_c(Conn8_CK_C),
        .c0_ddr4_ck_t(Conn8_CK_T),
        .c0_ddr4_cke(Conn8_CKE),
        .c0_ddr4_cs_n(Conn8_CS_N),
        .c0_ddr4_dm_dbi_n(ddrmem_3_C0_DDR4_dm_n[8:0]),
        .c0_ddr4_dq(ddrmem_3_C0_DDR4_dq[71:0]),
        .c0_ddr4_dqs_c(ddrmem_3_C0_DDR4_dqs_c[8:0]),
        .c0_ddr4_dqs_t(ddrmem_3_C0_DDR4_dqs_t[8:0]),
        .c0_ddr4_odt(Conn8_ODT),
        .c0_ddr4_reset_n(Conn8_RESET_N),
        .c0_ddr4_s_axi_araddr(C0_DDR4_S_AXI3_1_ARADDR),
        .c0_ddr4_s_axi_arburst(C0_DDR4_S_AXI3_1_ARBURST),
        .c0_ddr4_s_axi_arcache(C0_DDR4_S_AXI3_1_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(C0_DDR4_S_AXI3_1_ARLEN),
        .c0_ddr4_s_axi_arlock(C0_DDR4_S_AXI3_1_ARLOCK),
        .c0_ddr4_s_axi_arprot(C0_DDR4_S_AXI3_1_ARPROT),
        .c0_ddr4_s_axi_arqos(C0_DDR4_S_AXI3_1_ARQOS),
        .c0_ddr4_s_axi_arready(C0_DDR4_S_AXI3_1_ARREADY),
        .c0_ddr4_s_axi_arsize(C0_DDR4_S_AXI3_1_ARSIZE),
        .c0_ddr4_s_axi_arvalid(C0_DDR4_S_AXI3_1_ARVALID),
        .c0_ddr4_s_axi_awaddr(C0_DDR4_S_AXI3_1_AWADDR),
        .c0_ddr4_s_axi_awburst(C0_DDR4_S_AXI3_1_AWBURST),
        .c0_ddr4_s_axi_awcache(C0_DDR4_S_AXI3_1_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(C0_DDR4_S_AXI3_1_AWLEN),
        .c0_ddr4_s_axi_awlock(C0_DDR4_S_AXI3_1_AWLOCK),
        .c0_ddr4_s_axi_awprot(C0_DDR4_S_AXI3_1_AWPROT),
        .c0_ddr4_s_axi_awqos(C0_DDR4_S_AXI3_1_AWQOS),
        .c0_ddr4_s_axi_awready(C0_DDR4_S_AXI3_1_AWREADY),
        .c0_ddr4_s_axi_awsize(C0_DDR4_S_AXI3_1_AWSIZE),
        .c0_ddr4_s_axi_awvalid(C0_DDR4_S_AXI3_1_AWVALID),
        .c0_ddr4_s_axi_bready(C0_DDR4_S_AXI3_1_BREADY),
        .c0_ddr4_s_axi_bresp(C0_DDR4_S_AXI3_1_BRESP),
        .c0_ddr4_s_axi_bvalid(C0_DDR4_S_AXI3_1_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(axi_clock_converter_0_M_AXI1_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(axi_clock_converter_0_M_AXI1_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(axi_clock_converter_0_M_AXI1_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(axi_clock_converter_0_M_AXI1_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(axi_clock_converter_0_M_AXI1_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(axi_clock_converter_0_M_AXI1_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(axi_clock_converter_0_M_AXI1_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(axi_clock_converter_0_M_AXI1_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(axi_clock_converter_0_M_AXI1_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(axi_clock_converter_0_M_AXI1_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(axi_clock_converter_0_M_AXI1_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(axi_clock_converter_0_M_AXI1_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(axi_clock_converter_0_M_AXI1_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(axi_clock_converter_0_M_AXI1_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(axi_clock_converter_0_M_AXI1_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(axi_clock_converter_0_M_AXI1_WVALID),
        .c0_ddr4_s_axi_rdata(C0_DDR4_S_AXI3_1_RDATA),
        .c0_ddr4_s_axi_rlast(C0_DDR4_S_AXI3_1_RLAST),
        .c0_ddr4_s_axi_rready(C0_DDR4_S_AXI3_1_RREADY),
        .c0_ddr4_s_axi_rresp(C0_DDR4_S_AXI3_1_RRESP),
        .c0_ddr4_s_axi_rvalid(C0_DDR4_S_AXI3_1_RVALID),
        .c0_ddr4_s_axi_wdata(C0_DDR4_S_AXI3_1_WDATA),
        .c0_ddr4_s_axi_wlast(C0_DDR4_S_AXI3_1_WLAST),
        .c0_ddr4_s_axi_wready(C0_DDR4_S_AXI3_1_WREADY),
        .c0_ddr4_s_axi_wstrb(C0_DDR4_S_AXI3_1_WSTRB),
        .c0_ddr4_s_axi_wvalid(C0_DDR4_S_AXI3_1_WVALID),
        .c0_ddr4_ui_clk(ddrmem_4_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddrmem_4_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddrmem_4_c0_init_calib_complete),
        .c0_sys_clk_n(Conn7_CLK_N),
        .c0_sys_clk_p(Conn7_CLK_P),
        .sys_rst(sys_rst_1));
  xcl_design_logic_ddrcalib_op_0 logic_ddrcalib_op
       (.Op1(concat_ddrcalib_dout),
        .Res(logic_ddrcalib_op_Res));
endmodule

module pr_isolation_expanded_imp_SLGSJL
   (clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    concat_flash_dq_o_dout,
    concat_flash_tri_dout,
    dma_pcie_M_AXI_LITE_araddr,
    dma_pcie_M_AXI_LITE_arprot,
    dma_pcie_M_AXI_LITE_arready,
    dma_pcie_M_AXI_LITE_arvalid,
    dma_pcie_M_AXI_LITE_awaddr,
    dma_pcie_M_AXI_LITE_awprot,
    dma_pcie_M_AXI_LITE_awready,
    dma_pcie_M_AXI_LITE_awvalid,
    dma_pcie_M_AXI_LITE_bready,
    dma_pcie_M_AXI_LITE_bresp,
    dma_pcie_M_AXI_LITE_bvalid,
    dma_pcie_M_AXI_LITE_rdata,
    dma_pcie_M_AXI_LITE_rready,
    dma_pcie_M_AXI_LITE_rresp,
    dma_pcie_M_AXI_LITE_rvalid,
    dma_pcie_M_AXI_LITE_wdata,
    dma_pcie_M_AXI_LITE_wready,
    dma_pcie_M_AXI_LITE_wstrb,
    dma_pcie_M_AXI_LITE_wvalid,
    dma_pcie_M_AXI_araddr,
    dma_pcie_M_AXI_arburst,
    dma_pcie_M_AXI_arcache,
    dma_pcie_M_AXI_arid,
    dma_pcie_M_AXI_arlen,
    dma_pcie_M_AXI_arlock,
    dma_pcie_M_AXI_arprot,
    dma_pcie_M_AXI_arready,
    dma_pcie_M_AXI_arsize,
    dma_pcie_M_AXI_arvalid,
    dma_pcie_M_AXI_awaddr,
    dma_pcie_M_AXI_awburst,
    dma_pcie_M_AXI_awcache,
    dma_pcie_M_AXI_awid,
    dma_pcie_M_AXI_awlen,
    dma_pcie_M_AXI_awlock,
    dma_pcie_M_AXI_awprot,
    dma_pcie_M_AXI_awready,
    dma_pcie_M_AXI_awsize,
    dma_pcie_M_AXI_awvalid,
    dma_pcie_M_AXI_bid,
    dma_pcie_M_AXI_bready,
    dma_pcie_M_AXI_bresp,
    dma_pcie_M_AXI_bvalid,
    dma_pcie_M_AXI_rdata,
    dma_pcie_M_AXI_rid,
    dma_pcie_M_AXI_rlast,
    dma_pcie_M_AXI_rready,
    dma_pcie_M_AXI_rresp,
    dma_pcie_M_AXI_rvalid,
    dma_pcie_M_AXI_wdata,
    dma_pcie_M_AXI_wlast,
    dma_pcie_M_AXI_wready,
    dma_pcie_M_AXI_wstrb,
    dma_pcie_M_AXI_wvalid,
    dma_pcie_axi_aclk,
    dma_pcie_axi_aresetn,
    dma_pcie_user_lnk_up,
    emc_clk,
    flash_programmer_io0_o,
    flash_programmer_io0_t,
    flash_programmer_io1_o,
    flash_programmer_io1_t,
    flash_programmer_io2_o,
    flash_programmer_io2_t,
    flash_programmer_io3_o,
    flash_programmer_io3_t,
    flash_programmer_sck_o,
    flash_programmer_ss_t,
    interconnect_axilite_static_M02_AXI_araddr,
    interconnect_axilite_static_M02_AXI_arready,
    interconnect_axilite_static_M02_AXI_arvalid,
    interconnect_axilite_static_M02_AXI_awaddr,
    interconnect_axilite_static_M02_AXI_awready,
    interconnect_axilite_static_M02_AXI_awvalid,
    interconnect_axilite_static_M02_AXI_bready,
    interconnect_axilite_static_M02_AXI_bresp,
    interconnect_axilite_static_M02_AXI_bvalid,
    interconnect_axilite_static_M02_AXI_rdata,
    interconnect_axilite_static_M02_AXI_rready,
    interconnect_axilite_static_M02_AXI_rresp,
    interconnect_axilite_static_M02_AXI_rvalid,
    interconnect_axilite_static_M02_AXI_wdata,
    interconnect_axilite_static_M02_AXI_wready,
    interconnect_axilite_static_M02_AXI_wstrb,
    interconnect_axilite_static_M02_AXI_wvalid,
    interconnect_axilite_static_M03_AXI_araddr,
    interconnect_axilite_static_M03_AXI_arready,
    interconnect_axilite_static_M03_AXI_arvalid,
    interconnect_axilite_static_M03_AXI_awaddr,
    interconnect_axilite_static_M03_AXI_awready,
    interconnect_axilite_static_M03_AXI_awvalid,
    interconnect_axilite_static_M03_AXI_bready,
    interconnect_axilite_static_M03_AXI_bresp,
    interconnect_axilite_static_M03_AXI_bvalid,
    interconnect_axilite_static_M03_AXI_rdata,
    interconnect_axilite_static_M03_AXI_rready,
    interconnect_axilite_static_M03_AXI_rresp,
    interconnect_axilite_static_M03_AXI_rvalid,
    interconnect_axilite_static_M03_AXI_wdata,
    interconnect_axilite_static_M03_AXI_wready,
    interconnect_axilite_static_M03_AXI_wstrb,
    interconnect_axilite_static_M03_AXI_wvalid,
    interconnect_axilite_static_M05_AXI_araddr,
    interconnect_axilite_static_M05_AXI_arready,
    interconnect_axilite_static_M05_AXI_arvalid,
    interconnect_axilite_static_M05_AXI_awaddr,
    interconnect_axilite_static_M05_AXI_awready,
    interconnect_axilite_static_M05_AXI_awvalid,
    interconnect_axilite_static_M05_AXI_bready,
    interconnect_axilite_static_M05_AXI_bresp,
    interconnect_axilite_static_M05_AXI_bvalid,
    interconnect_axilite_static_M05_AXI_rdata,
    interconnect_axilite_static_M05_AXI_rready,
    interconnect_axilite_static_M05_AXI_rresp,
    interconnect_axilite_static_M05_AXI_rvalid,
    interconnect_axilite_static_M05_AXI_wdata,
    interconnect_axilite_static_M05_AXI_wready,
    interconnect_axilite_static_M05_AXI_wstrb,
    interconnect_axilite_static_M05_AXI_wvalid,
    interconnect_axilite_static_M06_AXI_araddr,
    interconnect_axilite_static_M06_AXI_arready,
    interconnect_axilite_static_M06_AXI_arvalid,
    interconnect_axilite_static_M06_AXI_awaddr,
    interconnect_axilite_static_M06_AXI_awready,
    interconnect_axilite_static_M06_AXI_awvalid,
    interconnect_axilite_static_M06_AXI_bready,
    interconnect_axilite_static_M06_AXI_bresp,
    interconnect_axilite_static_M06_AXI_bvalid,
    interconnect_axilite_static_M06_AXI_rdata,
    interconnect_axilite_static_M06_AXI_rready,
    interconnect_axilite_static_M06_AXI_rresp,
    interconnect_axilite_static_M06_AXI_rvalid,
    interconnect_axilite_static_M06_AXI_wdata,
    interconnect_axilite_static_M06_AXI_wready,
    interconnect_axilite_static_M06_AXI_wstrb,
    interconnect_axilite_static_M06_AXI_wvalid,
    interconnect_axilite_static_M07_AXI_araddr,
    interconnect_axilite_static_M07_AXI_arready,
    interconnect_axilite_static_M07_AXI_arvalid,
    interconnect_axilite_static_M07_AXI_awaddr,
    interconnect_axilite_static_M07_AXI_awready,
    interconnect_axilite_static_M07_AXI_awvalid,
    interconnect_axilite_static_M07_AXI_bready,
    interconnect_axilite_static_M07_AXI_bresp,
    interconnect_axilite_static_M07_AXI_bvalid,
    interconnect_axilite_static_M07_AXI_rdata,
    interconnect_axilite_static_M07_AXI_rready,
    interconnect_axilite_static_M07_AXI_rresp,
    interconnect_axilite_static_M07_AXI_rvalid,
    interconnect_axilite_static_M07_AXI_wdata,
    interconnect_axilite_static_M07_AXI_wready,
    interconnect_axilite_static_M07_AXI_wstrb,
    interconnect_axilite_static_M07_AXI_wvalid,
    iob_static_emc_clk_out,
    iob_static_init_calib_complete_out,
    iob_static_io0,
    iob_static_io0_i,
    iob_static_io1,
    iob_static_io1_i,
    iob_static_io2,
    iob_static_io2_i,
    iob_static_io3,
    iob_static_io3_i,
    iob_static_led_0_out,
    iob_static_perst_n_out,
    iob_static_ss,
    logic_ddrcalib_op_Res,
    perst_n,
    psreset_ctrlclk_interconnect_aresetn,
    regslice_control_M_AXI_araddr,
    regslice_control_M_AXI_arprot,
    regslice_control_M_AXI_arready,
    regslice_control_M_AXI_arvalid,
    regslice_control_M_AXI_awaddr,
    regslice_control_M_AXI_awprot,
    regslice_control_M_AXI_awready,
    regslice_control_M_AXI_awvalid,
    regslice_control_M_AXI_bready,
    regslice_control_M_AXI_bresp,
    regslice_control_M_AXI_bvalid,
    regslice_control_M_AXI_rdata,
    regslice_control_M_AXI_rready,
    regslice_control_M_AXI_rresp,
    regslice_control_M_AXI_rvalid,
    regslice_control_M_AXI_wdata,
    regslice_control_M_AXI_wready,
    regslice_control_M_AXI_wstrb,
    regslice_control_M_AXI_wvalid,
    regslice_data_M_AXI_araddr,
    regslice_data_M_AXI_arburst,
    regslice_data_M_AXI_arcache,
    regslice_data_M_AXI_arid,
    regslice_data_M_AXI_arlen,
    regslice_data_M_AXI_arlock,
    regslice_data_M_AXI_arprot,
    regslice_data_M_AXI_arqos,
    regslice_data_M_AXI_arready,
    regslice_data_M_AXI_arsize,
    regslice_data_M_AXI_arvalid,
    regslice_data_M_AXI_awaddr,
    regslice_data_M_AXI_awburst,
    regslice_data_M_AXI_awcache,
    regslice_data_M_AXI_awid,
    regslice_data_M_AXI_awlen,
    regslice_data_M_AXI_awlock,
    regslice_data_M_AXI_awprot,
    regslice_data_M_AXI_awqos,
    regslice_data_M_AXI_awready,
    regslice_data_M_AXI_awsize,
    regslice_data_M_AXI_awvalid,
    regslice_data_M_AXI_bid,
    regslice_data_M_AXI_bready,
    regslice_data_M_AXI_bresp,
    regslice_data_M_AXI_bvalid,
    regslice_data_M_AXI_rdata,
    regslice_data_M_AXI_rid,
    regslice_data_M_AXI_rlast,
    regslice_data_M_AXI_rready,
    regslice_data_M_AXI_rresp,
    regslice_data_M_AXI_rvalid,
    regslice_data_M_AXI_wdata,
    regslice_data_M_AXI_wlast,
    regslice_data_M_AXI_wready,
    regslice_data_M_AXI_wstrb,
    regslice_data_M_AXI_wvalid,
    slice_reset_kernel_pr_Dout,
    slice_ss0_Dout,
    slice_ss_1_Dout);
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked;
  input [3:0]concat_flash_dq_o_dout;
  input [3:0]concat_flash_tri_dout;
  input [31:0]dma_pcie_M_AXI_LITE_araddr;
  input [2:0]dma_pcie_M_AXI_LITE_arprot;
  output dma_pcie_M_AXI_LITE_arready;
  input dma_pcie_M_AXI_LITE_arvalid;
  input [31:0]dma_pcie_M_AXI_LITE_awaddr;
  input [2:0]dma_pcie_M_AXI_LITE_awprot;
  output dma_pcie_M_AXI_LITE_awready;
  input dma_pcie_M_AXI_LITE_awvalid;
  input dma_pcie_M_AXI_LITE_bready;
  output [1:0]dma_pcie_M_AXI_LITE_bresp;
  output dma_pcie_M_AXI_LITE_bvalid;
  output [31:0]dma_pcie_M_AXI_LITE_rdata;
  input dma_pcie_M_AXI_LITE_rready;
  output [1:0]dma_pcie_M_AXI_LITE_rresp;
  output dma_pcie_M_AXI_LITE_rvalid;
  input [31:0]dma_pcie_M_AXI_LITE_wdata;
  output dma_pcie_M_AXI_LITE_wready;
  input [3:0]dma_pcie_M_AXI_LITE_wstrb;
  input dma_pcie_M_AXI_LITE_wvalid;
  input [63:0]dma_pcie_M_AXI_araddr;
  input [1:0]dma_pcie_M_AXI_arburst;
  input [3:0]dma_pcie_M_AXI_arcache;
  input [1:0]dma_pcie_M_AXI_arid;
  input [7:0]dma_pcie_M_AXI_arlen;
  input [0:0]dma_pcie_M_AXI_arlock;
  input [2:0]dma_pcie_M_AXI_arprot;
  output dma_pcie_M_AXI_arready;
  input [2:0]dma_pcie_M_AXI_arsize;
  input dma_pcie_M_AXI_arvalid;
  input [63:0]dma_pcie_M_AXI_awaddr;
  input [1:0]dma_pcie_M_AXI_awburst;
  input [3:0]dma_pcie_M_AXI_awcache;
  input [1:0]dma_pcie_M_AXI_awid;
  input [7:0]dma_pcie_M_AXI_awlen;
  input [0:0]dma_pcie_M_AXI_awlock;
  input [2:0]dma_pcie_M_AXI_awprot;
  output dma_pcie_M_AXI_awready;
  input [2:0]dma_pcie_M_AXI_awsize;
  input dma_pcie_M_AXI_awvalid;
  output [3:0]dma_pcie_M_AXI_bid;
  input dma_pcie_M_AXI_bready;
  output [1:0]dma_pcie_M_AXI_bresp;
  output dma_pcie_M_AXI_bvalid;
  output [255:0]dma_pcie_M_AXI_rdata;
  output [3:0]dma_pcie_M_AXI_rid;
  output dma_pcie_M_AXI_rlast;
  input dma_pcie_M_AXI_rready;
  output [1:0]dma_pcie_M_AXI_rresp;
  output dma_pcie_M_AXI_rvalid;
  input [255:0]dma_pcie_M_AXI_wdata;
  input dma_pcie_M_AXI_wlast;
  output dma_pcie_M_AXI_wready;
  input [31:0]dma_pcie_M_AXI_wstrb;
  input dma_pcie_M_AXI_wvalid;
  input dma_pcie_axi_aclk;
  input dma_pcie_axi_aresetn;
  input dma_pcie_user_lnk_up;
  input emc_clk;
  input flash_programmer_io0_o;
  input flash_programmer_io0_t;
  input flash_programmer_io1_o;
  input flash_programmer_io1_t;
  input flash_programmer_io2_o;
  input flash_programmer_io2_t;
  input flash_programmer_io3_o;
  input flash_programmer_io3_t;
  input flash_programmer_sck_o;
  input flash_programmer_ss_t;
  output [31:0]interconnect_axilite_static_M02_AXI_araddr;
  input [0:0]interconnect_axilite_static_M02_AXI_arready;
  output [0:0]interconnect_axilite_static_M02_AXI_arvalid;
  output [31:0]interconnect_axilite_static_M02_AXI_awaddr;
  input [0:0]interconnect_axilite_static_M02_AXI_awready;
  output [0:0]interconnect_axilite_static_M02_AXI_awvalid;
  output [0:0]interconnect_axilite_static_M02_AXI_bready;
  input [1:0]interconnect_axilite_static_M02_AXI_bresp;
  input [0:0]interconnect_axilite_static_M02_AXI_bvalid;
  input [31:0]interconnect_axilite_static_M02_AXI_rdata;
  output [0:0]interconnect_axilite_static_M02_AXI_rready;
  input [1:0]interconnect_axilite_static_M02_AXI_rresp;
  input [0:0]interconnect_axilite_static_M02_AXI_rvalid;
  output [31:0]interconnect_axilite_static_M02_AXI_wdata;
  input [0:0]interconnect_axilite_static_M02_AXI_wready;
  output [3:0]interconnect_axilite_static_M02_AXI_wstrb;
  output [0:0]interconnect_axilite_static_M02_AXI_wvalid;
  output [31:0]interconnect_axilite_static_M03_AXI_araddr;
  input [0:0]interconnect_axilite_static_M03_AXI_arready;
  output [0:0]interconnect_axilite_static_M03_AXI_arvalid;
  output [31:0]interconnect_axilite_static_M03_AXI_awaddr;
  input [0:0]interconnect_axilite_static_M03_AXI_awready;
  output [0:0]interconnect_axilite_static_M03_AXI_awvalid;
  output [0:0]interconnect_axilite_static_M03_AXI_bready;
  input [1:0]interconnect_axilite_static_M03_AXI_bresp;
  input [0:0]interconnect_axilite_static_M03_AXI_bvalid;
  input [31:0]interconnect_axilite_static_M03_AXI_rdata;
  output [0:0]interconnect_axilite_static_M03_AXI_rready;
  input [1:0]interconnect_axilite_static_M03_AXI_rresp;
  input [0:0]interconnect_axilite_static_M03_AXI_rvalid;
  output [31:0]interconnect_axilite_static_M03_AXI_wdata;
  input [0:0]interconnect_axilite_static_M03_AXI_wready;
  output [3:0]interconnect_axilite_static_M03_AXI_wstrb;
  output [0:0]interconnect_axilite_static_M03_AXI_wvalid;
  output [31:0]interconnect_axilite_static_M05_AXI_araddr;
  input [0:0]interconnect_axilite_static_M05_AXI_arready;
  output [0:0]interconnect_axilite_static_M05_AXI_arvalid;
  output [31:0]interconnect_axilite_static_M05_AXI_awaddr;
  input [0:0]interconnect_axilite_static_M05_AXI_awready;
  output [0:0]interconnect_axilite_static_M05_AXI_awvalid;
  output [0:0]interconnect_axilite_static_M05_AXI_bready;
  input [1:0]interconnect_axilite_static_M05_AXI_bresp;
  input [0:0]interconnect_axilite_static_M05_AXI_bvalid;
  input [31:0]interconnect_axilite_static_M05_AXI_rdata;
  output [0:0]interconnect_axilite_static_M05_AXI_rready;
  input [1:0]interconnect_axilite_static_M05_AXI_rresp;
  input [0:0]interconnect_axilite_static_M05_AXI_rvalid;
  output [31:0]interconnect_axilite_static_M05_AXI_wdata;
  input [0:0]interconnect_axilite_static_M05_AXI_wready;
  output [3:0]interconnect_axilite_static_M05_AXI_wstrb;
  output [0:0]interconnect_axilite_static_M05_AXI_wvalid;
  output [31:0]interconnect_axilite_static_M06_AXI_araddr;
  input [0:0]interconnect_axilite_static_M06_AXI_arready;
  output [0:0]interconnect_axilite_static_M06_AXI_arvalid;
  output [31:0]interconnect_axilite_static_M06_AXI_awaddr;
  input [0:0]interconnect_axilite_static_M06_AXI_awready;
  output [0:0]interconnect_axilite_static_M06_AXI_awvalid;
  output [0:0]interconnect_axilite_static_M06_AXI_bready;
  input [1:0]interconnect_axilite_static_M06_AXI_bresp;
  input [0:0]interconnect_axilite_static_M06_AXI_bvalid;
  input [31:0]interconnect_axilite_static_M06_AXI_rdata;
  output [0:0]interconnect_axilite_static_M06_AXI_rready;
  input [1:0]interconnect_axilite_static_M06_AXI_rresp;
  input [0:0]interconnect_axilite_static_M06_AXI_rvalid;
  output [31:0]interconnect_axilite_static_M06_AXI_wdata;
  input [0:0]interconnect_axilite_static_M06_AXI_wready;
  output [3:0]interconnect_axilite_static_M06_AXI_wstrb;
  output [0:0]interconnect_axilite_static_M06_AXI_wvalid;
  output [31:0]interconnect_axilite_static_M07_AXI_araddr;
  input interconnect_axilite_static_M07_AXI_arready;
  output interconnect_axilite_static_M07_AXI_arvalid;
  output [31:0]interconnect_axilite_static_M07_AXI_awaddr;
  input interconnect_axilite_static_M07_AXI_awready;
  output interconnect_axilite_static_M07_AXI_awvalid;
  output interconnect_axilite_static_M07_AXI_bready;
  input [1:0]interconnect_axilite_static_M07_AXI_bresp;
  input interconnect_axilite_static_M07_AXI_bvalid;
  input [31:0]interconnect_axilite_static_M07_AXI_rdata;
  output interconnect_axilite_static_M07_AXI_rready;
  input [1:0]interconnect_axilite_static_M07_AXI_rresp;
  input interconnect_axilite_static_M07_AXI_rvalid;
  output [31:0]interconnect_axilite_static_M07_AXI_wdata;
  input interconnect_axilite_static_M07_AXI_wready;
  output [3:0]interconnect_axilite_static_M07_AXI_wstrb;
  output interconnect_axilite_static_M07_AXI_wvalid;
  output iob_static_emc_clk_out;
  output iob_static_init_calib_complete_out;
  inout iob_static_io0;
  output iob_static_io0_i;
  inout iob_static_io1;
  output iob_static_io1_i;
  inout iob_static_io2;
  output iob_static_io2_i;
  inout iob_static_io3;
  output iob_static_io3_i;
  output iob_static_led_0_out;
  output iob_static_perst_n_out;
  inout iob_static_ss;
  input [0:0]logic_ddrcalib_op_Res;
  input perst_n;
  input [0:0]psreset_ctrlclk_interconnect_aresetn;
  output [31:0]regslice_control_M_AXI_araddr;
  output [2:0]regslice_control_M_AXI_arprot;
  input regslice_control_M_AXI_arready;
  output regslice_control_M_AXI_arvalid;
  output [31:0]regslice_control_M_AXI_awaddr;
  output [2:0]regslice_control_M_AXI_awprot;
  input regslice_control_M_AXI_awready;
  output regslice_control_M_AXI_awvalid;
  output regslice_control_M_AXI_bready;
  input [1:0]regslice_control_M_AXI_bresp;
  input regslice_control_M_AXI_bvalid;
  input [31:0]regslice_control_M_AXI_rdata;
  output regslice_control_M_AXI_rready;
  input [1:0]regslice_control_M_AXI_rresp;
  input regslice_control_M_AXI_rvalid;
  output [31:0]regslice_control_M_AXI_wdata;
  input regslice_control_M_AXI_wready;
  output [3:0]regslice_control_M_AXI_wstrb;
  output regslice_control_M_AXI_wvalid;
  output [37:0]regslice_data_M_AXI_araddr;
  output [1:0]regslice_data_M_AXI_arburst;
  output [3:0]regslice_data_M_AXI_arcache;
  output [3:0]regslice_data_M_AXI_arid;
  output [7:0]regslice_data_M_AXI_arlen;
  output [0:0]regslice_data_M_AXI_arlock;
  output [2:0]regslice_data_M_AXI_arprot;
  output [3:0]regslice_data_M_AXI_arqos;
  input regslice_data_M_AXI_arready;
  output [2:0]regslice_data_M_AXI_arsize;
  output regslice_data_M_AXI_arvalid;
  output [37:0]regslice_data_M_AXI_awaddr;
  output [1:0]regslice_data_M_AXI_awburst;
  output [3:0]regslice_data_M_AXI_awcache;
  output [3:0]regslice_data_M_AXI_awid;
  output [7:0]regslice_data_M_AXI_awlen;
  output [0:0]regslice_data_M_AXI_awlock;
  output [2:0]regslice_data_M_AXI_awprot;
  output [3:0]regslice_data_M_AXI_awqos;
  input regslice_data_M_AXI_awready;
  output [2:0]regslice_data_M_AXI_awsize;
  output regslice_data_M_AXI_awvalid;
  input [3:0]regslice_data_M_AXI_bid;
  output regslice_data_M_AXI_bready;
  input [1:0]regslice_data_M_AXI_bresp;
  input regslice_data_M_AXI_bvalid;
  input [255:0]regslice_data_M_AXI_rdata;
  input [3:0]regslice_data_M_AXI_rid;
  input regslice_data_M_AXI_rlast;
  output regslice_data_M_AXI_rready;
  input [1:0]regslice_data_M_AXI_rresp;
  input regslice_data_M_AXI_rvalid;
  output [255:0]regslice_data_M_AXI_wdata;
  output regslice_data_M_AXI_wlast;
  input regslice_data_M_AXI_wready;
  output [31:0]regslice_data_M_AXI_wstrb;
  output regslice_data_M_AXI_wvalid;
  output [0:0]slice_reset_kernel_pr_Dout;
  input [0:0]slice_ss0_Dout;
  input [0:0]slice_ss_1_Dout;

  wire ARESETN_1;
  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [63:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [1:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [1:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [255:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [255:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [31:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [37:0]Conn4_ARADDR;
  wire [1:0]Conn4_ARBURST;
  wire [3:0]Conn4_ARCACHE;
  wire [3:0]Conn4_ARID;
  wire [7:0]Conn4_ARLEN;
  wire [0:0]Conn4_ARLOCK;
  wire [2:0]Conn4_ARPROT;
  wire [3:0]Conn4_ARQOS;
  wire Conn4_ARREADY;
  wire [2:0]Conn4_ARSIZE;
  wire Conn4_ARVALID;
  wire [37:0]Conn4_AWADDR;
  wire [1:0]Conn4_AWBURST;
  wire [3:0]Conn4_AWCACHE;
  wire [3:0]Conn4_AWID;
  wire [7:0]Conn4_AWLEN;
  wire [0:0]Conn4_AWLOCK;
  wire [2:0]Conn4_AWPROT;
  wire [3:0]Conn4_AWQOS;
  wire Conn4_AWREADY;
  wire [2:0]Conn4_AWSIZE;
  wire Conn4_AWVALID;
  wire [3:0]Conn4_BID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [255:0]Conn4_RDATA;
  wire [3:0]Conn4_RID;
  wire Conn4_RLAST;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [255:0]Conn4_WDATA;
  wire Conn4_WLAST;
  wire Conn4_WREADY;
  wire [31:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [31:0]Conn5_ARADDR;
  wire [0:0]Conn5_ARREADY;
  wire [0:0]Conn5_ARVALID;
  wire [31:0]Conn5_AWADDR;
  wire [0:0]Conn5_AWREADY;
  wire [0:0]Conn5_AWVALID;
  wire [0:0]Conn5_BREADY;
  wire [1:0]Conn5_BRESP;
  wire [0:0]Conn5_BVALID;
  wire [31:0]Conn5_RDATA;
  wire [0:0]Conn5_RREADY;
  wire [1:0]Conn5_RRESP;
  wire [0:0]Conn5_RVALID;
  wire [31:0]Conn5_WDATA;
  wire [0:0]Conn5_WREADY;
  wire [3:0]Conn5_WSTRB;
  wire [0:0]Conn5_WVALID;
  wire [31:0]Conn6_ARADDR;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire dcm_locked_1;
  wire dcm_locked_2;
  wire emc_clk_in_1;
  wire [0:0]flash_CS_N_1;
  wire flash_CS_N_tri_ctrl_1;
  wire [3:0]flash_DQ_O_1;
  wire [3:0]flash_DQ_tri_ctrl_1;
  wire flash_clk_1;
  wire [1:0]gate_pr_gpio_io_o;
  wire [0:0]gpio_io_i_1;
  wire [31:0]interconnect_axilite_static_M00_AXI_ARADDR;
  wire [2:0]interconnect_axilite_static_M00_AXI_ARPROT;
  wire interconnect_axilite_static_M00_AXI_ARREADY;
  wire interconnect_axilite_static_M00_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M00_AXI_AWADDR;
  wire [2:0]interconnect_axilite_static_M00_AXI_AWPROT;
  wire interconnect_axilite_static_M00_AXI_AWREADY;
  wire interconnect_axilite_static_M00_AXI_AWVALID;
  wire interconnect_axilite_static_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M00_AXI_BRESP;
  wire interconnect_axilite_static_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M00_AXI_RDATA;
  wire interconnect_axilite_static_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M00_AXI_RRESP;
  wire interconnect_axilite_static_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M00_AXI_WDATA;
  wire interconnect_axilite_static_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M00_AXI_WSTRB;
  wire interconnect_axilite_static_M00_AXI_WVALID;
  wire [31:0]interconnect_axilite_static_M01_AXI_ARADDR;
  wire interconnect_axilite_static_M01_AXI_ARREADY;
  wire [0:0]interconnect_axilite_static_M01_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M01_AXI_AWADDR;
  wire interconnect_axilite_static_M01_AXI_AWREADY;
  wire [0:0]interconnect_axilite_static_M01_AXI_AWVALID;
  wire [0:0]interconnect_axilite_static_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M01_AXI_BRESP;
  wire interconnect_axilite_static_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M01_AXI_RDATA;
  wire [0:0]interconnect_axilite_static_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M01_AXI_RRESP;
  wire interconnect_axilite_static_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M01_AXI_WDATA;
  wire interconnect_axilite_static_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M01_AXI_WSTRB;
  wire [0:0]interconnect_axilite_static_M01_AXI_WVALID;
  wire [31:0]interconnect_axilite_static_M02_AXI_ARADDR;
  wire [0:0]interconnect_axilite_static_M02_AXI_ARREADY;
  wire [0:0]interconnect_axilite_static_M02_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M02_AXI_AWADDR;
  wire [0:0]interconnect_axilite_static_M02_AXI_AWREADY;
  wire [0:0]interconnect_axilite_static_M02_AXI_AWVALID;
  wire [0:0]interconnect_axilite_static_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M02_AXI_BRESP;
  wire [0:0]interconnect_axilite_static_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M02_AXI_RDATA;
  wire [0:0]interconnect_axilite_static_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M02_AXI_RRESP;
  wire [0:0]interconnect_axilite_static_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M02_AXI_WDATA;
  wire [0:0]interconnect_axilite_static_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M02_AXI_WSTRB;
  wire [0:0]interconnect_axilite_static_M02_AXI_WVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_ARADDR;
  wire [0:0]interconnect_axilite_static_M03_AXI_ARREADY;
  wire [0:0]interconnect_axilite_static_M03_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_AWADDR;
  wire [0:0]interconnect_axilite_static_M03_AXI_AWREADY;
  wire [0:0]interconnect_axilite_static_M03_AXI_AWVALID;
  wire [0:0]interconnect_axilite_static_M03_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M03_AXI_BRESP;
  wire [0:0]interconnect_axilite_static_M03_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_RDATA;
  wire [0:0]interconnect_axilite_static_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M03_AXI_RRESP;
  wire [0:0]interconnect_axilite_static_M03_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M03_AXI_WDATA;
  wire [0:0]interconnect_axilite_static_M03_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M03_AXI_WSTRB;
  wire [0:0]interconnect_axilite_static_M03_AXI_WVALID;
  wire [31:0]interconnect_axilite_static_M04_AXI_ARADDR;
  wire interconnect_axilite_static_M04_AXI_ARREADY;
  wire [0:0]interconnect_axilite_static_M04_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M04_AXI_AWADDR;
  wire interconnect_axilite_static_M04_AXI_AWREADY;
  wire [0:0]interconnect_axilite_static_M04_AXI_AWVALID;
  wire [0:0]interconnect_axilite_static_M04_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M04_AXI_BRESP;
  wire interconnect_axilite_static_M04_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M04_AXI_RDATA;
  wire [0:0]interconnect_axilite_static_M04_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M04_AXI_RRESP;
  wire interconnect_axilite_static_M04_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M04_AXI_WDATA;
  wire interconnect_axilite_static_M04_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M04_AXI_WSTRB;
  wire [0:0]interconnect_axilite_static_M04_AXI_WVALID;
  wire [31:0]interconnect_axilite_static_M06_AXI_ARADDR;
  wire [0:0]interconnect_axilite_static_M06_AXI_ARREADY;
  wire [0:0]interconnect_axilite_static_M06_AXI_ARVALID;
  wire [31:0]interconnect_axilite_static_M06_AXI_AWADDR;
  wire [0:0]interconnect_axilite_static_M06_AXI_AWREADY;
  wire [0:0]interconnect_axilite_static_M06_AXI_AWVALID;
  wire [0:0]interconnect_axilite_static_M06_AXI_BREADY;
  wire [1:0]interconnect_axilite_static_M06_AXI_BRESP;
  wire [0:0]interconnect_axilite_static_M06_AXI_BVALID;
  wire [31:0]interconnect_axilite_static_M06_AXI_RDATA;
  wire [0:0]interconnect_axilite_static_M06_AXI_RREADY;
  wire [1:0]interconnect_axilite_static_M06_AXI_RRESP;
  wire [0:0]interconnect_axilite_static_M06_AXI_RVALID;
  wire [31:0]interconnect_axilite_static_M06_AXI_WDATA;
  wire [0:0]interconnect_axilite_static_M06_AXI_WREADY;
  wire [3:0]interconnect_axilite_static_M06_AXI_WSTRB;
  wire [0:0]interconnect_axilite_static_M06_AXI_WVALID;
  wire io0_o_1;
  wire io0_t_1;
  wire io1_o_1;
  wire io1_t_1;
  wire io2_o_1;
  wire io2_t_1;
  wire io3_o_1;
  wire io3_t_1;
  wire iob_static_emc_clk_out;
  wire iob_static_init_calib_complete_out;
  wire iob_static_io0_i;
  wire iob_static_io1_i;
  wire iob_static_io2_i;
  wire iob_static_io3_i;
  wire iob_static_led_0_out;
  wire iob_static_perst_n_out;
  wire perst_n_in_1;
  wire [0:0]psreset_regslice_data_pr_interconnect_aresetn;
  wire [0:0]psreset_regslice_pr_interconnect_aresetn;
  wire s_axi_aclk_1;
  wire [0:0]slice_reset_kernel_pr_Dout;
  wire [0:0]slice_reset_system_pr_Dout;
  wire [0:0]ss_o_1;
  wire [3:0]startup_primitive_flash_DQ_I;

  assign ARESETN_1 = dma_pcie_axi_aresetn;
  assign Conn1_ARADDR = dma_pcie_M_AXI_LITE_araddr[31:0];
  assign Conn1_ARPROT = dma_pcie_M_AXI_LITE_arprot[2:0];
  assign Conn1_ARVALID = dma_pcie_M_AXI_LITE_arvalid;
  assign Conn1_AWADDR = dma_pcie_M_AXI_LITE_awaddr[31:0];
  assign Conn1_AWPROT = dma_pcie_M_AXI_LITE_awprot[2:0];
  assign Conn1_AWVALID = dma_pcie_M_AXI_LITE_awvalid;
  assign Conn1_BREADY = dma_pcie_M_AXI_LITE_bready;
  assign Conn1_RREADY = dma_pcie_M_AXI_LITE_rready;
  assign Conn1_WDATA = dma_pcie_M_AXI_LITE_wdata[31:0];
  assign Conn1_WSTRB = dma_pcie_M_AXI_LITE_wstrb[3:0];
  assign Conn1_WVALID = dma_pcie_M_AXI_LITE_wvalid;
  assign Conn2_ARADDR = dma_pcie_M_AXI_araddr[63:0];
  assign Conn2_ARBURST = dma_pcie_M_AXI_arburst[1:0];
  assign Conn2_ARCACHE = dma_pcie_M_AXI_arcache[3:0];
  assign Conn2_ARID = dma_pcie_M_AXI_arid[1:0];
  assign Conn2_ARLEN = dma_pcie_M_AXI_arlen[7:0];
  assign Conn2_ARLOCK = dma_pcie_M_AXI_arlock[0];
  assign Conn2_ARPROT = dma_pcie_M_AXI_arprot[2:0];
  assign Conn2_ARSIZE = dma_pcie_M_AXI_arsize[2:0];
  assign Conn2_ARVALID = dma_pcie_M_AXI_arvalid;
  assign Conn2_AWADDR = dma_pcie_M_AXI_awaddr[63:0];
  assign Conn2_AWBURST = dma_pcie_M_AXI_awburst[1:0];
  assign Conn2_AWCACHE = dma_pcie_M_AXI_awcache[3:0];
  assign Conn2_AWID = dma_pcie_M_AXI_awid[1:0];
  assign Conn2_AWLEN = dma_pcie_M_AXI_awlen[7:0];
  assign Conn2_AWLOCK = dma_pcie_M_AXI_awlock[0];
  assign Conn2_AWPROT = dma_pcie_M_AXI_awprot[2:0];
  assign Conn2_AWSIZE = dma_pcie_M_AXI_awsize[2:0];
  assign Conn2_AWVALID = dma_pcie_M_AXI_awvalid;
  assign Conn2_BREADY = dma_pcie_M_AXI_bready;
  assign Conn2_RREADY = dma_pcie_M_AXI_rready;
  assign Conn2_WDATA = dma_pcie_M_AXI_wdata[255:0];
  assign Conn2_WLAST = dma_pcie_M_AXI_wlast;
  assign Conn2_WSTRB = dma_pcie_M_AXI_wstrb[31:0];
  assign Conn2_WVALID = dma_pcie_M_AXI_wvalid;
  assign Conn3_ARREADY = regslice_control_M_AXI_arready;
  assign Conn3_AWREADY = regslice_control_M_AXI_awready;
  assign Conn3_BRESP = regslice_control_M_AXI_bresp[1:0];
  assign Conn3_BVALID = regslice_control_M_AXI_bvalid;
  assign Conn3_RDATA = regslice_control_M_AXI_rdata[31:0];
  assign Conn3_RRESP = regslice_control_M_AXI_rresp[1:0];
  assign Conn3_RVALID = regslice_control_M_AXI_rvalid;
  assign Conn3_WREADY = regslice_control_M_AXI_wready;
  assign Conn4_ARREADY = regslice_data_M_AXI_arready;
  assign Conn4_AWREADY = regslice_data_M_AXI_awready;
  assign Conn4_BID = regslice_data_M_AXI_bid[3:0];
  assign Conn4_BRESP = regslice_data_M_AXI_bresp[1:0];
  assign Conn4_BVALID = regslice_data_M_AXI_bvalid;
  assign Conn4_RDATA = regslice_data_M_AXI_rdata[255:0];
  assign Conn4_RID = regslice_data_M_AXI_rid[3:0];
  assign Conn4_RLAST = regslice_data_M_AXI_rlast;
  assign Conn4_RRESP = regslice_data_M_AXI_rresp[1:0];
  assign Conn4_RVALID = regslice_data_M_AXI_rvalid;
  assign Conn4_WREADY = regslice_data_M_AXI_wready;
  assign Conn5_ARREADY = interconnect_axilite_static_M05_AXI_arready[0];
  assign Conn5_AWREADY = interconnect_axilite_static_M05_AXI_awready[0];
  assign Conn5_BRESP = interconnect_axilite_static_M05_AXI_bresp[1:0];
  assign Conn5_BVALID = interconnect_axilite_static_M05_AXI_bvalid[0];
  assign Conn5_RDATA = interconnect_axilite_static_M05_AXI_rdata[31:0];
  assign Conn5_RRESP = interconnect_axilite_static_M05_AXI_rresp[1:0];
  assign Conn5_RVALID = interconnect_axilite_static_M05_AXI_rvalid[0];
  assign Conn5_WREADY = interconnect_axilite_static_M05_AXI_wready[0];
  assign Conn6_ARREADY = interconnect_axilite_static_M07_AXI_arready;
  assign Conn6_AWREADY = interconnect_axilite_static_M07_AXI_awready;
  assign Conn6_BRESP = interconnect_axilite_static_M07_AXI_bresp[1:0];
  assign Conn6_BVALID = interconnect_axilite_static_M07_AXI_bvalid;
  assign Conn6_RDATA = interconnect_axilite_static_M07_AXI_rdata[31:0];
  assign Conn6_RRESP = interconnect_axilite_static_M07_AXI_rresp[1:0];
  assign Conn6_RVALID = interconnect_axilite_static_M07_AXI_rvalid;
  assign Conn6_WREADY = interconnect_axilite_static_M07_AXI_wready;
  assign M00_ACLK_1 = clkwiz_sysclks_clk_out2;
  assign M00_ARESETN_1 = psreset_ctrlclk_interconnect_aresetn[0];
  assign dcm_locked_1 = dma_pcie_user_lnk_up;
  assign dcm_locked_2 = clkwiz_sysclks_locked;
  assign dma_pcie_M_AXI_LITE_arready = Conn1_ARREADY;
  assign dma_pcie_M_AXI_LITE_awready = Conn1_AWREADY;
  assign dma_pcie_M_AXI_LITE_bresp[1:0] = Conn1_BRESP;
  assign dma_pcie_M_AXI_LITE_bvalid = Conn1_BVALID;
  assign dma_pcie_M_AXI_LITE_rdata[31:0] = Conn1_RDATA;
  assign dma_pcie_M_AXI_LITE_rresp[1:0] = Conn1_RRESP;
  assign dma_pcie_M_AXI_LITE_rvalid = Conn1_RVALID;
  assign dma_pcie_M_AXI_LITE_wready = Conn1_WREADY;
  assign dma_pcie_M_AXI_arready = Conn2_ARREADY;
  assign dma_pcie_M_AXI_awready = Conn2_AWREADY;
  assign dma_pcie_M_AXI_bid[3:0] = Conn2_BID;
  assign dma_pcie_M_AXI_bresp[1:0] = Conn2_BRESP;
  assign dma_pcie_M_AXI_bvalid = Conn2_BVALID;
  assign dma_pcie_M_AXI_rdata[255:0] = Conn2_RDATA;
  assign dma_pcie_M_AXI_rid[3:0] = Conn2_RID;
  assign dma_pcie_M_AXI_rlast = Conn2_RLAST;
  assign dma_pcie_M_AXI_rresp[1:0] = Conn2_RRESP;
  assign dma_pcie_M_AXI_rvalid = Conn2_RVALID;
  assign dma_pcie_M_AXI_wready = Conn2_WREADY;
  assign emc_clk_in_1 = emc_clk;
  assign flash_CS_N_1 = slice_ss0_Dout[0];
  assign flash_CS_N_tri_ctrl_1 = flash_programmer_ss_t;
  assign flash_DQ_O_1 = concat_flash_dq_o_dout[3:0];
  assign flash_DQ_tri_ctrl_1 = concat_flash_tri_dout[3:0];
  assign flash_clk_1 = flash_programmer_sck_o;
  assign gpio_io_i_1 = logic_ddrcalib_op_Res[0];
  assign interconnect_axilite_static_M02_AXI_ARREADY = interconnect_axilite_static_M02_AXI_arready[0];
  assign interconnect_axilite_static_M02_AXI_AWREADY = interconnect_axilite_static_M02_AXI_awready[0];
  assign interconnect_axilite_static_M02_AXI_BRESP = interconnect_axilite_static_M02_AXI_bresp[1:0];
  assign interconnect_axilite_static_M02_AXI_BVALID = interconnect_axilite_static_M02_AXI_bvalid[0];
  assign interconnect_axilite_static_M02_AXI_RDATA = interconnect_axilite_static_M02_AXI_rdata[31:0];
  assign interconnect_axilite_static_M02_AXI_RRESP = interconnect_axilite_static_M02_AXI_rresp[1:0];
  assign interconnect_axilite_static_M02_AXI_RVALID = interconnect_axilite_static_M02_AXI_rvalid[0];
  assign interconnect_axilite_static_M02_AXI_WREADY = interconnect_axilite_static_M02_AXI_wready[0];
  assign interconnect_axilite_static_M02_AXI_araddr[31:0] = interconnect_axilite_static_M02_AXI_ARADDR;
  assign interconnect_axilite_static_M02_AXI_arvalid[0] = interconnect_axilite_static_M02_AXI_ARVALID;
  assign interconnect_axilite_static_M02_AXI_awaddr[31:0] = interconnect_axilite_static_M02_AXI_AWADDR;
  assign interconnect_axilite_static_M02_AXI_awvalid[0] = interconnect_axilite_static_M02_AXI_AWVALID;
  assign interconnect_axilite_static_M02_AXI_bready[0] = interconnect_axilite_static_M02_AXI_BREADY;
  assign interconnect_axilite_static_M02_AXI_rready[0] = interconnect_axilite_static_M02_AXI_RREADY;
  assign interconnect_axilite_static_M02_AXI_wdata[31:0] = interconnect_axilite_static_M02_AXI_WDATA;
  assign interconnect_axilite_static_M02_AXI_wstrb[3:0] = interconnect_axilite_static_M02_AXI_WSTRB;
  assign interconnect_axilite_static_M02_AXI_wvalid[0] = interconnect_axilite_static_M02_AXI_WVALID;
  assign interconnect_axilite_static_M03_AXI_ARREADY = interconnect_axilite_static_M03_AXI_arready[0];
  assign interconnect_axilite_static_M03_AXI_AWREADY = interconnect_axilite_static_M03_AXI_awready[0];
  assign interconnect_axilite_static_M03_AXI_BRESP = interconnect_axilite_static_M03_AXI_bresp[1:0];
  assign interconnect_axilite_static_M03_AXI_BVALID = interconnect_axilite_static_M03_AXI_bvalid[0];
  assign interconnect_axilite_static_M03_AXI_RDATA = interconnect_axilite_static_M03_AXI_rdata[31:0];
  assign interconnect_axilite_static_M03_AXI_RRESP = interconnect_axilite_static_M03_AXI_rresp[1:0];
  assign interconnect_axilite_static_M03_AXI_RVALID = interconnect_axilite_static_M03_AXI_rvalid[0];
  assign interconnect_axilite_static_M03_AXI_WREADY = interconnect_axilite_static_M03_AXI_wready[0];
  assign interconnect_axilite_static_M03_AXI_araddr[31:0] = interconnect_axilite_static_M03_AXI_ARADDR;
  assign interconnect_axilite_static_M03_AXI_arvalid[0] = interconnect_axilite_static_M03_AXI_ARVALID;
  assign interconnect_axilite_static_M03_AXI_awaddr[31:0] = interconnect_axilite_static_M03_AXI_AWADDR;
  assign interconnect_axilite_static_M03_AXI_awvalid[0] = interconnect_axilite_static_M03_AXI_AWVALID;
  assign interconnect_axilite_static_M03_AXI_bready[0] = interconnect_axilite_static_M03_AXI_BREADY;
  assign interconnect_axilite_static_M03_AXI_rready[0] = interconnect_axilite_static_M03_AXI_RREADY;
  assign interconnect_axilite_static_M03_AXI_wdata[31:0] = interconnect_axilite_static_M03_AXI_WDATA;
  assign interconnect_axilite_static_M03_AXI_wstrb[3:0] = interconnect_axilite_static_M03_AXI_WSTRB;
  assign interconnect_axilite_static_M03_AXI_wvalid[0] = interconnect_axilite_static_M03_AXI_WVALID;
  assign interconnect_axilite_static_M05_AXI_araddr[31:0] = Conn5_ARADDR;
  assign interconnect_axilite_static_M05_AXI_arvalid[0] = Conn5_ARVALID;
  assign interconnect_axilite_static_M05_AXI_awaddr[31:0] = Conn5_AWADDR;
  assign interconnect_axilite_static_M05_AXI_awvalid[0] = Conn5_AWVALID;
  assign interconnect_axilite_static_M05_AXI_bready[0] = Conn5_BREADY;
  assign interconnect_axilite_static_M05_AXI_rready[0] = Conn5_RREADY;
  assign interconnect_axilite_static_M05_AXI_wdata[31:0] = Conn5_WDATA;
  assign interconnect_axilite_static_M05_AXI_wstrb[3:0] = Conn5_WSTRB;
  assign interconnect_axilite_static_M05_AXI_wvalid[0] = Conn5_WVALID;
  assign interconnect_axilite_static_M06_AXI_ARREADY = interconnect_axilite_static_M06_AXI_arready[0];
  assign interconnect_axilite_static_M06_AXI_AWREADY = interconnect_axilite_static_M06_AXI_awready[0];
  assign interconnect_axilite_static_M06_AXI_BRESP = interconnect_axilite_static_M06_AXI_bresp[1:0];
  assign interconnect_axilite_static_M06_AXI_BVALID = interconnect_axilite_static_M06_AXI_bvalid[0];
  assign interconnect_axilite_static_M06_AXI_RDATA = interconnect_axilite_static_M06_AXI_rdata[31:0];
  assign interconnect_axilite_static_M06_AXI_RRESP = interconnect_axilite_static_M06_AXI_rresp[1:0];
  assign interconnect_axilite_static_M06_AXI_RVALID = interconnect_axilite_static_M06_AXI_rvalid[0];
  assign interconnect_axilite_static_M06_AXI_WREADY = interconnect_axilite_static_M06_AXI_wready[0];
  assign interconnect_axilite_static_M06_AXI_araddr[31:0] = interconnect_axilite_static_M06_AXI_ARADDR;
  assign interconnect_axilite_static_M06_AXI_arvalid[0] = interconnect_axilite_static_M06_AXI_ARVALID;
  assign interconnect_axilite_static_M06_AXI_awaddr[31:0] = interconnect_axilite_static_M06_AXI_AWADDR;
  assign interconnect_axilite_static_M06_AXI_awvalid[0] = interconnect_axilite_static_M06_AXI_AWVALID;
  assign interconnect_axilite_static_M06_AXI_bready[0] = interconnect_axilite_static_M06_AXI_BREADY;
  assign interconnect_axilite_static_M06_AXI_rready[0] = interconnect_axilite_static_M06_AXI_RREADY;
  assign interconnect_axilite_static_M06_AXI_wdata[31:0] = interconnect_axilite_static_M06_AXI_WDATA;
  assign interconnect_axilite_static_M06_AXI_wstrb[3:0] = interconnect_axilite_static_M06_AXI_WSTRB;
  assign interconnect_axilite_static_M06_AXI_wvalid[0] = interconnect_axilite_static_M06_AXI_WVALID;
  assign interconnect_axilite_static_M07_AXI_araddr[31:0] = Conn6_ARADDR;
  assign interconnect_axilite_static_M07_AXI_arvalid = Conn6_ARVALID;
  assign interconnect_axilite_static_M07_AXI_awaddr[31:0] = Conn6_AWADDR;
  assign interconnect_axilite_static_M07_AXI_awvalid = Conn6_AWVALID;
  assign interconnect_axilite_static_M07_AXI_bready = Conn6_BREADY;
  assign interconnect_axilite_static_M07_AXI_rready = Conn6_RREADY;
  assign interconnect_axilite_static_M07_AXI_wdata[31:0] = Conn6_WDATA;
  assign interconnect_axilite_static_M07_AXI_wstrb[3:0] = Conn6_WSTRB;
  assign interconnect_axilite_static_M07_AXI_wvalid = Conn6_WVALID;
  assign io0_o_1 = flash_programmer_io0_o;
  assign io0_t_1 = flash_programmer_io0_t;
  assign io1_o_1 = flash_programmer_io1_o;
  assign io1_t_1 = flash_programmer_io1_t;
  assign io2_o_1 = flash_programmer_io2_o;
  assign io2_t_1 = flash_programmer_io2_t;
  assign io3_o_1 = flash_programmer_io3_o;
  assign io3_t_1 = flash_programmer_io3_t;
  assign perst_n_in_1 = perst_n;
  assign regslice_control_M_AXI_araddr[31:0] = Conn3_ARADDR;
  assign regslice_control_M_AXI_arprot[2:0] = Conn3_ARPROT;
  assign regslice_control_M_AXI_arvalid = Conn3_ARVALID;
  assign regslice_control_M_AXI_awaddr[31:0] = Conn3_AWADDR;
  assign regslice_control_M_AXI_awprot[2:0] = Conn3_AWPROT;
  assign regslice_control_M_AXI_awvalid = Conn3_AWVALID;
  assign regslice_control_M_AXI_bready = Conn3_BREADY;
  assign regslice_control_M_AXI_rready = Conn3_RREADY;
  assign regslice_control_M_AXI_wdata[31:0] = Conn3_WDATA;
  assign regslice_control_M_AXI_wstrb[3:0] = Conn3_WSTRB;
  assign regslice_control_M_AXI_wvalid = Conn3_WVALID;
  assign regslice_data_M_AXI_araddr[37:0] = Conn4_ARADDR;
  assign regslice_data_M_AXI_arburst[1:0] = Conn4_ARBURST;
  assign regslice_data_M_AXI_arcache[3:0] = Conn4_ARCACHE;
  assign regslice_data_M_AXI_arid[3:0] = Conn4_ARID;
  assign regslice_data_M_AXI_arlen[7:0] = Conn4_ARLEN;
  assign regslice_data_M_AXI_arlock[0] = Conn4_ARLOCK;
  assign regslice_data_M_AXI_arprot[2:0] = Conn4_ARPROT;
  assign regslice_data_M_AXI_arqos[3:0] = Conn4_ARQOS;
  assign regslice_data_M_AXI_arsize[2:0] = Conn4_ARSIZE;
  assign regslice_data_M_AXI_arvalid = Conn4_ARVALID;
  assign regslice_data_M_AXI_awaddr[37:0] = Conn4_AWADDR;
  assign regslice_data_M_AXI_awburst[1:0] = Conn4_AWBURST;
  assign regslice_data_M_AXI_awcache[3:0] = Conn4_AWCACHE;
  assign regslice_data_M_AXI_awid[3:0] = Conn4_AWID;
  assign regslice_data_M_AXI_awlen[7:0] = Conn4_AWLEN;
  assign regslice_data_M_AXI_awlock[0] = Conn4_AWLOCK;
  assign regslice_data_M_AXI_awprot[2:0] = Conn4_AWPROT;
  assign regslice_data_M_AXI_awqos[3:0] = Conn4_AWQOS;
  assign regslice_data_M_AXI_awsize[2:0] = Conn4_AWSIZE;
  assign regslice_data_M_AXI_awvalid = Conn4_AWVALID;
  assign regslice_data_M_AXI_bready = Conn4_BREADY;
  assign regslice_data_M_AXI_rready = Conn4_RREADY;
  assign regslice_data_M_AXI_wdata[255:0] = Conn4_WDATA;
  assign regslice_data_M_AXI_wlast = Conn4_WLAST;
  assign regslice_data_M_AXI_wstrb[31:0] = Conn4_WSTRB;
  assign regslice_data_M_AXI_wvalid = Conn4_WVALID;
  assign s_axi_aclk_1 = dma_pcie_axi_aclk;
  assign ss_o_1 = slice_ss_1_Dout[0];
  xcl_design_ddr_calib_status_0 ddr_calib_status
       (.gpio_io_i(gpio_io_i_1),
        .s_axi_aclk(M00_ACLK_1),
        .s_axi_araddr(interconnect_axilite_static_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(interconnect_axilite_static_M04_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_static_M04_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_static_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(interconnect_axilite_static_M04_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_static_M04_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_static_M04_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_static_M04_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_static_M04_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_static_M04_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_static_M04_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_static_M04_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_static_M04_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_static_M04_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_static_M04_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_static_M04_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_static_M04_AXI_WVALID));
  xcl_design_gate_pr_0 gate_pr
       (.gpio2_io_i(gate_pr_gpio_io_o),
        .gpio_io_o(gate_pr_gpio_io_o),
        .s_axi_aclk(M00_ACLK_1),
        .s_axi_araddr(interconnect_axilite_static_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(interconnect_axilite_static_M01_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_static_M01_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_static_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(interconnect_axilite_static_M01_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_static_M01_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_static_M01_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_static_M01_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_static_M01_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_static_M01_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_static_M01_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_static_M01_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_static_M01_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_static_M01_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_static_M01_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_static_M01_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_static_M01_AXI_WVALID));
  xcl_design_interconnect_axilite_static_0 interconnect_axilite_static
       (.ACLK(M00_ACLK_1),
        .ARESETN(M00_ARESETN_1),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(interconnect_axilite_static_M00_AXI_ARADDR),
        .M00_AXI_arprot(interconnect_axilite_static_M00_AXI_ARPROT),
        .M00_AXI_arready(interconnect_axilite_static_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_static_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_static_M00_AXI_AWADDR),
        .M00_AXI_awprot(interconnect_axilite_static_M00_AXI_AWPROT),
        .M00_AXI_awready(interconnect_axilite_static_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_static_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_static_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_static_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_static_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_static_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_static_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_static_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_static_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_static_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_static_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_static_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_static_M00_AXI_WVALID),
        .M01_ACLK(M00_ACLK_1),
        .M01_ARESETN(M00_ARESETN_1),
        .M01_AXI_araddr(interconnect_axilite_static_M01_AXI_ARADDR),
        .M01_AXI_arready(interconnect_axilite_static_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_static_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_static_M01_AXI_AWADDR),
        .M01_AXI_awready(interconnect_axilite_static_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_static_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_static_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_static_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_static_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_static_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_static_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_static_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_static_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_static_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_static_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_static_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_static_M01_AXI_WVALID),
        .M02_ACLK(M00_ACLK_1),
        .M02_ARESETN(M00_ARESETN_1),
        .M02_AXI_araddr(interconnect_axilite_static_M02_AXI_ARADDR),
        .M02_AXI_arready(interconnect_axilite_static_M02_AXI_ARREADY),
        .M02_AXI_arvalid(interconnect_axilite_static_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_axilite_static_M02_AXI_AWADDR),
        .M02_AXI_awready(interconnect_axilite_static_M02_AXI_AWREADY),
        .M02_AXI_awvalid(interconnect_axilite_static_M02_AXI_AWVALID),
        .M02_AXI_bready(interconnect_axilite_static_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_axilite_static_M02_AXI_BRESP),
        .M02_AXI_bvalid(interconnect_axilite_static_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_axilite_static_M02_AXI_RDATA),
        .M02_AXI_rready(interconnect_axilite_static_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_axilite_static_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_axilite_static_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_axilite_static_M02_AXI_WDATA),
        .M02_AXI_wready(interconnect_axilite_static_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_axilite_static_M02_AXI_WSTRB),
        .M02_AXI_wvalid(interconnect_axilite_static_M02_AXI_WVALID),
        .M03_ACLK(M00_ACLK_1),
        .M03_ARESETN(M00_ARESETN_1),
        .M03_AXI_araddr(interconnect_axilite_static_M03_AXI_ARADDR),
        .M03_AXI_arready(interconnect_axilite_static_M03_AXI_ARREADY),
        .M03_AXI_arvalid(interconnect_axilite_static_M03_AXI_ARVALID),
        .M03_AXI_awaddr(interconnect_axilite_static_M03_AXI_AWADDR),
        .M03_AXI_awready(interconnect_axilite_static_M03_AXI_AWREADY),
        .M03_AXI_awvalid(interconnect_axilite_static_M03_AXI_AWVALID),
        .M03_AXI_bready(interconnect_axilite_static_M03_AXI_BREADY),
        .M03_AXI_bresp(interconnect_axilite_static_M03_AXI_BRESP),
        .M03_AXI_bvalid(interconnect_axilite_static_M03_AXI_BVALID),
        .M03_AXI_rdata(interconnect_axilite_static_M03_AXI_RDATA),
        .M03_AXI_rready(interconnect_axilite_static_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_axilite_static_M03_AXI_RRESP),
        .M03_AXI_rvalid(interconnect_axilite_static_M03_AXI_RVALID),
        .M03_AXI_wdata(interconnect_axilite_static_M03_AXI_WDATA),
        .M03_AXI_wready(interconnect_axilite_static_M03_AXI_WREADY),
        .M03_AXI_wstrb(interconnect_axilite_static_M03_AXI_WSTRB),
        .M03_AXI_wvalid(interconnect_axilite_static_M03_AXI_WVALID),
        .M04_ACLK(M00_ACLK_1),
        .M04_ARESETN(M00_ARESETN_1),
        .M04_AXI_araddr(interconnect_axilite_static_M04_AXI_ARADDR),
        .M04_AXI_arready(interconnect_axilite_static_M04_AXI_ARREADY),
        .M04_AXI_arvalid(interconnect_axilite_static_M04_AXI_ARVALID),
        .M04_AXI_awaddr(interconnect_axilite_static_M04_AXI_AWADDR),
        .M04_AXI_awready(interconnect_axilite_static_M04_AXI_AWREADY),
        .M04_AXI_awvalid(interconnect_axilite_static_M04_AXI_AWVALID),
        .M04_AXI_bready(interconnect_axilite_static_M04_AXI_BREADY),
        .M04_AXI_bresp(interconnect_axilite_static_M04_AXI_BRESP),
        .M04_AXI_bvalid(interconnect_axilite_static_M04_AXI_BVALID),
        .M04_AXI_rdata(interconnect_axilite_static_M04_AXI_RDATA),
        .M04_AXI_rready(interconnect_axilite_static_M04_AXI_RREADY),
        .M04_AXI_rresp(interconnect_axilite_static_M04_AXI_RRESP),
        .M04_AXI_rvalid(interconnect_axilite_static_M04_AXI_RVALID),
        .M04_AXI_wdata(interconnect_axilite_static_M04_AXI_WDATA),
        .M04_AXI_wready(interconnect_axilite_static_M04_AXI_WREADY),
        .M04_AXI_wstrb(interconnect_axilite_static_M04_AXI_WSTRB),
        .M04_AXI_wvalid(interconnect_axilite_static_M04_AXI_WVALID),
        .M05_ACLK(M00_ACLK_1),
        .M05_ARESETN(M00_ARESETN_1),
        .M05_AXI_araddr(Conn5_ARADDR),
        .M05_AXI_arready(Conn5_ARREADY),
        .M05_AXI_arvalid(Conn5_ARVALID),
        .M05_AXI_awaddr(Conn5_AWADDR),
        .M05_AXI_awready(Conn5_AWREADY),
        .M05_AXI_awvalid(Conn5_AWVALID),
        .M05_AXI_bready(Conn5_BREADY),
        .M05_AXI_bresp(Conn5_BRESP),
        .M05_AXI_bvalid(Conn5_BVALID),
        .M05_AXI_rdata(Conn5_RDATA),
        .M05_AXI_rready(Conn5_RREADY),
        .M05_AXI_rresp(Conn5_RRESP),
        .M05_AXI_rvalid(Conn5_RVALID),
        .M05_AXI_wdata(Conn5_WDATA),
        .M05_AXI_wready(Conn5_WREADY),
        .M05_AXI_wstrb(Conn5_WSTRB),
        .M05_AXI_wvalid(Conn5_WVALID),
        .M06_ACLK(M00_ACLK_1),
        .M06_ARESETN(M00_ARESETN_1),
        .M06_AXI_araddr(interconnect_axilite_static_M06_AXI_ARADDR),
        .M06_AXI_arready(interconnect_axilite_static_M06_AXI_ARREADY),
        .M06_AXI_arvalid(interconnect_axilite_static_M06_AXI_ARVALID),
        .M06_AXI_awaddr(interconnect_axilite_static_M06_AXI_AWADDR),
        .M06_AXI_awready(interconnect_axilite_static_M06_AXI_AWREADY),
        .M06_AXI_awvalid(interconnect_axilite_static_M06_AXI_AWVALID),
        .M06_AXI_bready(interconnect_axilite_static_M06_AXI_BREADY),
        .M06_AXI_bresp(interconnect_axilite_static_M06_AXI_BRESP),
        .M06_AXI_bvalid(interconnect_axilite_static_M06_AXI_BVALID),
        .M06_AXI_rdata(interconnect_axilite_static_M06_AXI_RDATA),
        .M06_AXI_rready(interconnect_axilite_static_M06_AXI_RREADY),
        .M06_AXI_rresp(interconnect_axilite_static_M06_AXI_RRESP),
        .M06_AXI_rvalid(interconnect_axilite_static_M06_AXI_RVALID),
        .M06_AXI_wdata(interconnect_axilite_static_M06_AXI_WDATA),
        .M06_AXI_wready(interconnect_axilite_static_M06_AXI_WREADY),
        .M06_AXI_wstrb(interconnect_axilite_static_M06_AXI_WSTRB),
        .M06_AXI_wvalid(interconnect_axilite_static_M06_AXI_WVALID),
        .M07_ACLK(M00_ACLK_1),
        .M07_ARESETN(M00_ARESETN_1),
        .M07_AXI_araddr(Conn6_ARADDR),
        .M07_AXI_arready(Conn6_ARREADY),
        .M07_AXI_arvalid(Conn6_ARVALID),
        .M07_AXI_awaddr(Conn6_AWADDR),
        .M07_AXI_awready(Conn6_AWREADY),
        .M07_AXI_awvalid(Conn6_AWVALID),
        .M07_AXI_bready(Conn6_BREADY),
        .M07_AXI_bresp(Conn6_BRESP),
        .M07_AXI_bvalid(Conn6_BVALID),
        .M07_AXI_rdata(Conn6_RDATA),
        .M07_AXI_rready(Conn6_RREADY),
        .M07_AXI_rresp(Conn6_RRESP),
        .M07_AXI_rvalid(Conn6_RVALID),
        .M07_AXI_wdata(Conn6_WDATA),
        .M07_AXI_wready(Conn6_WREADY),
        .M07_AXI_wstrb(Conn6_WSTRB),
        .M07_AXI_wvalid(Conn6_WVALID),
        .S00_ACLK(s_axi_aclk_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(Conn1_ARADDR),
        .S00_AXI_arprot(Conn1_ARPROT),
        .S00_AXI_arready(Conn1_ARREADY),
        .S00_AXI_arvalid(Conn1_ARVALID),
        .S00_AXI_awaddr(Conn1_AWADDR),
        .S00_AXI_awprot(Conn1_AWPROT),
        .S00_AXI_awready(Conn1_AWREADY),
        .S00_AXI_awvalid(Conn1_AWVALID),
        .S00_AXI_bready(Conn1_BREADY),
        .S00_AXI_bresp(Conn1_BRESP),
        .S00_AXI_bvalid(Conn1_BVALID),
        .S00_AXI_rdata(Conn1_RDATA),
        .S00_AXI_rready(Conn1_RREADY),
        .S00_AXI_rresp(Conn1_RRESP),
        .S00_AXI_rvalid(Conn1_RVALID),
        .S00_AXI_wdata(Conn1_WDATA),
        .S00_AXI_wready(Conn1_WREADY),
        .S00_AXI_wstrb(Conn1_WSTRB),
        .S00_AXI_wvalid(Conn1_WVALID));
  xcl_design_iob_static_0 iob_static
       (.emc_clk_in(emc_clk_in_1),
        .emc_clk_out(iob_static_emc_clk_out),
        .flash_DQ_I(startup_primitive_flash_DQ_I),
        .init_calib_complete_in(gpio_io_i_1),
        .init_calib_complete_out(iob_static_init_calib_complete_out),
        .io0(iob_static_io0),
        .io0_i(iob_static_io0_i),
        .io0_o(io0_o_1),
        .io0_t(io0_t_1),
        .io1(iob_static_io1),
        .io1_i(iob_static_io1_i),
        .io1_o(io1_o_1),
        .io1_t(io1_t_1),
        .io2(iob_static_io2),
        .io2_i(iob_static_io2_i),
        .io2_o(io2_o_1),
        .io2_t(io2_t_1),
        .io3(iob_static_io3),
        .io3_i(iob_static_io3_i),
        .io3_o(io3_o_1),
        .io3_t(io3_t_1),
        .led_0_in(dcm_locked_1),
        .led_0_out(iob_static_led_0_out),
        .perst_n_in(perst_n_in_1),
        .perst_n_out(iob_static_perst_n_out),
        .ss(iob_static_ss),
        .ss_o(ss_o_1),
        .ss_t(flash_CS_N_tri_ctrl_1));
  xcl_design_psreset_regslice_ctrl_pr_0 psreset_regslice_ctrl_pr
       (.aux_reset_in(slice_reset_system_pr_Dout),
        .dcm_locked(dcm_locked_2),
        .ext_reset_in(M00_ARESETN_1),
        .interconnect_aresetn(psreset_regslice_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(M00_ACLK_1));
  xcl_design_psreset_regslice_data_pr_0 psreset_regslice_data_pr
       (.aux_reset_in(slice_reset_system_pr_Dout),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ARESETN_1),
        .interconnect_aresetn(psreset_regslice_data_pr_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(s_axi_aclk_1));
  xcl_design_regslice_control_0 regslice_control
       (.aclk(M00_ACLK_1),
        .aresetn(psreset_regslice_pr_interconnect_aresetn),
        .m_axi_araddr(Conn3_ARADDR),
        .m_axi_arprot(Conn3_ARPROT),
        .m_axi_arready(Conn3_ARREADY),
        .m_axi_arvalid(Conn3_ARVALID),
        .m_axi_awaddr(Conn3_AWADDR),
        .m_axi_awprot(Conn3_AWPROT),
        .m_axi_awready(Conn3_AWREADY),
        .m_axi_awvalid(Conn3_AWVALID),
        .m_axi_bready(Conn3_BREADY),
        .m_axi_bresp(Conn3_BRESP),
        .m_axi_bvalid(Conn3_BVALID),
        .m_axi_rdata(Conn3_RDATA),
        .m_axi_rready(Conn3_RREADY),
        .m_axi_rresp(Conn3_RRESP),
        .m_axi_rvalid(Conn3_RVALID),
        .m_axi_wdata(Conn3_WDATA),
        .m_axi_wready(Conn3_WREADY),
        .m_axi_wstrb(Conn3_WSTRB),
        .m_axi_wvalid(Conn3_WVALID),
        .s_axi_araddr(interconnect_axilite_static_M00_AXI_ARADDR),
        .s_axi_arprot(interconnect_axilite_static_M00_AXI_ARPROT),
        .s_axi_arready(interconnect_axilite_static_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_static_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_static_M00_AXI_AWADDR),
        .s_axi_awprot(interconnect_axilite_static_M00_AXI_AWPROT),
        .s_axi_awready(interconnect_axilite_static_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_static_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_static_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_static_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_static_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_static_M00_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_static_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_static_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_static_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_static_M00_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_static_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_static_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_static_M00_AXI_WVALID));
  xcl_design_regslice_data_0 regslice_data
       (.aclk(s_axi_aclk_1),
        .aresetn(psreset_regslice_data_pr_interconnect_aresetn),
        .m_axi_araddr(Conn4_ARADDR),
        .m_axi_arburst(Conn4_ARBURST),
        .m_axi_arcache(Conn4_ARCACHE),
        .m_axi_arid(Conn4_ARID),
        .m_axi_arlen(Conn4_ARLEN),
        .m_axi_arlock(Conn4_ARLOCK),
        .m_axi_arprot(Conn4_ARPROT),
        .m_axi_arqos(Conn4_ARQOS),
        .m_axi_arready(Conn4_ARREADY),
        .m_axi_arsize(Conn4_ARSIZE),
        .m_axi_arvalid(Conn4_ARVALID),
        .m_axi_awaddr(Conn4_AWADDR),
        .m_axi_awburst(Conn4_AWBURST),
        .m_axi_awcache(Conn4_AWCACHE),
        .m_axi_awid(Conn4_AWID),
        .m_axi_awlen(Conn4_AWLEN),
        .m_axi_awlock(Conn4_AWLOCK),
        .m_axi_awprot(Conn4_AWPROT),
        .m_axi_awqos(Conn4_AWQOS),
        .m_axi_awready(Conn4_AWREADY),
        .m_axi_awsize(Conn4_AWSIZE),
        .m_axi_awvalid(Conn4_AWVALID),
        .m_axi_bid(Conn4_BID),
        .m_axi_bready(Conn4_BREADY),
        .m_axi_bresp(Conn4_BRESP),
        .m_axi_bvalid(Conn4_BVALID),
        .m_axi_rdata(Conn4_RDATA),
        .m_axi_rid(Conn4_RID),
        .m_axi_rlast(Conn4_RLAST),
        .m_axi_rready(Conn4_RREADY),
        .m_axi_rresp(Conn4_RRESP),
        .m_axi_rvalid(Conn4_RVALID),
        .m_axi_wdata(Conn4_WDATA),
        .m_axi_wlast(Conn4_WLAST),
        .m_axi_wready(Conn4_WREADY),
        .m_axi_wstrb(Conn4_WSTRB),
        .m_axi_wvalid(Conn4_WVALID),
        .s_axi_araddr(Conn2_ARADDR[37:0]),
        .s_axi_arburst(Conn2_ARBURST),
        .s_axi_arcache(Conn2_ARCACHE),
        .s_axi_arid({1'b0,1'b0,Conn2_ARID}),
        .s_axi_arlen(Conn2_ARLEN),
        .s_axi_arlock(Conn2_ARLOCK),
        .s_axi_arprot(Conn2_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(Conn2_ARSIZE),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR[37:0]),
        .s_axi_awburst(Conn2_AWBURST),
        .s_axi_awcache(Conn2_AWCACHE),
        .s_axi_awid({1'b0,1'b0,Conn2_AWID}),
        .s_axi_awlen(Conn2_AWLEN),
        .s_axi_awlock(Conn2_AWLOCK),
        .s_axi_awprot(Conn2_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(Conn2_AWSIZE),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bid(Conn2_BID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rid(Conn2_RID),
        .s_axi_rlast(Conn2_RLAST),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wlast(Conn2_WLAST),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID));
  xcl_design_slice_reset_kernel_pr_0 slice_reset_kernel_pr
       (.Din(gate_pr_gpio_io_o),
        .Dout(slice_reset_kernel_pr_Dout));
  xcl_design_slice_reset_system_pr_0 slice_reset_system_pr
       (.Din(gate_pr_gpio_io_o),
        .Dout(slice_reset_system_pr_Dout));
  xcl_design_startup_primitive_0 startup_primitive
       (.flash_CS_N(flash_CS_N_1),
        .flash_CS_N_tri_ctrl(flash_CS_N_tri_ctrl_1),
        .flash_DQ_I(startup_primitive_flash_DQ_I),
        .flash_DQ_O(flash_DQ_O_1),
        .flash_DQ_tri_ctrl(flash_DQ_tri_ctrl_1),
        .flash_clk(flash_clk_1));
endmodule

module pr_support_expanded_imp_14IOC6O
   (bscanid,
    capture,
    clkwiz_sysclks_clk_out2,
    concast_flash_tri_dout,
    concat_flash_dq_o_dout,
    ddrmem_0_c0_ddr4_ui_clk,
    debug_bridge_xsdbm_update,
    drck,
    flash_programmer_io0_o,
    flash_programmer_io0_t,
    flash_programmer_io1_o,
    flash_programmer_io1_t,
    flash_programmer_io2_o,
    flash_programmer_io2_t,
    flash_programmer_io3_o,
    flash_programmer_io3_t,
    flash_programmer_sck_o,
    flash_programmer_ss_t,
    interconnect_axilite_M00_AXI_araddr,
    interconnect_axilite_M00_AXI_arready,
    interconnect_axilite_M00_AXI_arvalid,
    interconnect_axilite_M00_AXI_awaddr,
    interconnect_axilite_M00_AXI_awready,
    interconnect_axilite_M00_AXI_awvalid,
    interconnect_axilite_M00_AXI_bready,
    interconnect_axilite_M00_AXI_bresp,
    interconnect_axilite_M00_AXI_bvalid,
    interconnect_axilite_M00_AXI_rdata,
    interconnect_axilite_M00_AXI_rready,
    interconnect_axilite_M00_AXI_rresp,
    interconnect_axilite_M00_AXI_rvalid,
    interconnect_axilite_M00_AXI_wdata,
    interconnect_axilite_M00_AXI_wready,
    interconnect_axilite_M00_AXI_wstrb,
    interconnect_axilite_M00_AXI_wvalid,
    iob_static_emc_clk_out,
    iob_static_io0_i,
    iob_static_io1_i,
    iob_static_io2_i,
    iob_static_io3_i,
    psreset_gate_pr_control_interconnect_aresetn,
    reset,
    runtest,
    sel,
    shift,
    slice_ss_0_Dout,
    slice_ss_1_Dout,
    tck,
    tdi,
    tdo,
    tms);
  output [31:0]bscanid;
  input capture;
  input clkwiz_sysclks_clk_out2;
  output [3:0]concast_flash_tri_dout;
  output [3:0]concat_flash_dq_o_dout;
  input ddrmem_0_c0_ddr4_ui_clk;
  input debug_bridge_xsdbm_update;
  input drck;
  output flash_programmer_io0_o;
  output flash_programmer_io0_t;
  output flash_programmer_io1_o;
  output flash_programmer_io1_t;
  output flash_programmer_io2_o;
  output flash_programmer_io2_t;
  output flash_programmer_io3_o;
  output flash_programmer_io3_t;
  output flash_programmer_sck_o;
  output flash_programmer_ss_t;
  input [6:0]interconnect_axilite_M00_AXI_araddr;
  output interconnect_axilite_M00_AXI_arready;
  input interconnect_axilite_M00_AXI_arvalid;
  input [6:0]interconnect_axilite_M00_AXI_awaddr;
  output interconnect_axilite_M00_AXI_awready;
  input interconnect_axilite_M00_AXI_awvalid;
  input interconnect_axilite_M00_AXI_bready;
  output [1:0]interconnect_axilite_M00_AXI_bresp;
  output interconnect_axilite_M00_AXI_bvalid;
  output [31:0]interconnect_axilite_M00_AXI_rdata;
  input interconnect_axilite_M00_AXI_rready;
  output [1:0]interconnect_axilite_M00_AXI_rresp;
  output interconnect_axilite_M00_AXI_rvalid;
  input [31:0]interconnect_axilite_M00_AXI_wdata;
  output interconnect_axilite_M00_AXI_wready;
  input [3:0]interconnect_axilite_M00_AXI_wstrb;
  input interconnect_axilite_M00_AXI_wvalid;
  input iob_static_emc_clk_out;
  input iob_static_io0_i;
  input iob_static_io1_i;
  input iob_static_io2_i;
  input iob_static_io3_i;
  input [0:0]psreset_gate_pr_control_interconnect_aresetn;
  input reset;
  input runtest;
  input sel;
  input shift;
  output [0:0]slice_ss_0_Dout;
  output [0:0]slice_ss_1_Dout;
  input tck;
  input tdi;
  output tdo;
  input tms;

  wire [6:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [6:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire capture_1;
  wire clk_1;
  wire [3:0]concat_flash_dq_o_dout;
  wire [3:0]concat_flash_tri_dout;
  wire [31:0]debug_bridge_xsdbm_bscanid;
  wire debug_bridge_xsdbm_tdo;
  wire drck_1;
  wire ext_spi_clk_1;
  wire flash_programmer_io0_o;
  wire flash_programmer_io0_t;
  wire flash_programmer_io1_o;
  wire flash_programmer_io1_t;
  wire flash_programmer_io2_o;
  wire flash_programmer_io2_t;
  wire flash_programmer_io3_o;
  wire flash_programmer_io3_t;
  wire flash_programmer_sck_o;
  wire [1:0]flash_programmer_ss_o;
  wire flash_programmer_ss_t;
  wire io0_i_1;
  wire io1_i_1;
  wire io2_i_1;
  wire io3_i_1;
  wire reset_1;
  wire runtest_1;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;
  wire sel_1;
  wire shift_1;
  wire [0:0]slice_ss_0_Dout;
  wire [0:0]slice_ss_1_Dout;
  wire tck_1;
  wire tdi_1;
  wire tms_1;
  wire update_1;

  assign Conn1_ARADDR = interconnect_axilite_M00_AXI_araddr[6:0];
  assign Conn1_ARVALID = interconnect_axilite_M00_AXI_arvalid;
  assign Conn1_AWADDR = interconnect_axilite_M00_AXI_awaddr[6:0];
  assign Conn1_AWVALID = interconnect_axilite_M00_AXI_awvalid;
  assign Conn1_BREADY = interconnect_axilite_M00_AXI_bready;
  assign Conn1_RREADY = interconnect_axilite_M00_AXI_rready;
  assign Conn1_WDATA = interconnect_axilite_M00_AXI_wdata[31:0];
  assign Conn1_WSTRB = interconnect_axilite_M00_AXI_wstrb[3:0];
  assign Conn1_WVALID = interconnect_axilite_M00_AXI_wvalid;
  assign bscanid[31:0] = debug_bridge_xsdbm_bscanid;
  assign capture_1 = capture;
  assign clk_1 = ddrmem_0_c0_ddr4_ui_clk;
  assign concast_flash_tri_dout[3:0] = concat_flash_tri_dout;
  assign drck_1 = drck;
  assign ext_spi_clk_1 = iob_static_emc_clk_out;
  assign interconnect_axilite_M00_AXI_arready = Conn1_ARREADY;
  assign interconnect_axilite_M00_AXI_awready = Conn1_AWREADY;
  assign interconnect_axilite_M00_AXI_bresp[1:0] = Conn1_BRESP;
  assign interconnect_axilite_M00_AXI_bvalid = Conn1_BVALID;
  assign interconnect_axilite_M00_AXI_rdata[31:0] = Conn1_RDATA;
  assign interconnect_axilite_M00_AXI_rresp[1:0] = Conn1_RRESP;
  assign interconnect_axilite_M00_AXI_rvalid = Conn1_RVALID;
  assign interconnect_axilite_M00_AXI_wready = Conn1_WREADY;
  assign io0_i_1 = iob_static_io0_i;
  assign io1_i_1 = iob_static_io1_i;
  assign io2_i_1 = iob_static_io2_i;
  assign io3_i_1 = iob_static_io3_i;
  assign reset_1 = reset;
  assign runtest_1 = runtest;
  assign s_axi_aclk_1 = clkwiz_sysclks_clk_out2;
  assign s_axi_aresetn_1 = psreset_gate_pr_control_interconnect_aresetn[0];
  assign sel_1 = sel;
  assign shift_1 = shift;
  assign tck_1 = tck;
  assign tdi_1 = tdi;
  assign tdo = debug_bridge_xsdbm_tdo;
  assign tms_1 = tms;
  assign update_1 = debug_bridge_xsdbm_update;
  xcl_design_concat_flash_dq_o_0 concat_flash_dq_o
       (.In0(flash_programmer_io0_o),
        .In1(flash_programmer_io1_o),
        .In2(flash_programmer_io2_o),
        .In3(flash_programmer_io3_o),
        .dout(concat_flash_dq_o_dout));
  xcl_design_concat_flash_tri_0 concat_flash_tri
       (.In0(flash_programmer_io0_t),
        .In1(flash_programmer_io1_t),
        .In2(flash_programmer_io2_t),
        .In3(flash_programmer_io3_t),
        .dout(concat_flash_tri_dout));
  xcl_design_debug_bridge_xsdbm_0 debug_bridge_xsdbm
       (.bscanid(debug_bridge_xsdbm_bscanid),
        .capture(capture_1),
        .clk(clk_1),
        .drck(drck_1),
        .reset(reset_1),
        .runtest(runtest_1),
        .sel(sel_1),
        .shift(shift_1),
        .tck(tck_1),
        .tdi(tdi_1),
        .tdo(debug_bridge_xsdbm_tdo),
        .tms(tms_1),
        .update(update_1));
  xcl_design_flash_programmer_0 flash_programmer
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(io0_i_1),
        .io0_o(flash_programmer_io0_o),
        .io0_t(flash_programmer_io0_t),
        .io1_i(io1_i_1),
        .io1_o(flash_programmer_io1_o),
        .io1_t(flash_programmer_io1_t),
        .io2_i(io2_i_1),
        .io2_o(flash_programmer_io2_o),
        .io2_t(flash_programmer_io2_t),
        .io3_i(io3_i_1),
        .io3_o(flash_programmer_io3_o),
        .io3_t(flash_programmer_io3_t),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .sck_i(1'b0),
        .sck_o(flash_programmer_sck_o),
        .ss_i({1'b0,1'b0}),
        .ss_o(flash_programmer_ss_o),
        .ss_t(flash_programmer_ss_t));
  xcl_design_slice_ss_0_0 slice_ss_0
       (.Din(flash_programmer_ss_o),
        .Dout(slice_ss_0_Dout));
  xcl_design_slice_ss_1_0 slice_ss_1
       (.Din(flash_programmer_ss_o),
        .Dout(slice_ss_1_Dout));
endmodule

module s00_couplers_imp_1241H5U
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  xcl_design_s00_regslice_1 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1HEBEJY
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
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_cc_ARADDR;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [31:0]s00_regslice_to_auto_cc_AWADDR;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [31:0]s00_regslice_to_auto_cc_RDATA;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [31:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [3:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  xcl_design_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  xcl_design_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "xcl_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xcl_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=106,numReposBlks=76,numNonXlnxBlks=0,numHierBlks=30,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xcl_design.hwdef" *) 
module xcl_design
   (c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_n,
    c0_sys_clk_p,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dm_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_reset_n,
    c1_sys_clk_n,
    c1_sys_clk_p,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dm_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_reset_n,
    c2_sys_clk_n,
    c2_sys_clk_p,
    c3_ddr4_act_n,
    c3_ddr4_adr,
    c3_ddr4_ba,
    c3_ddr4_bg,
    c3_ddr4_ck_c,
    c3_ddr4_ck_t,
    c3_ddr4_cke,
    c3_ddr4_cs_n,
    c3_ddr4_dm_n,
    c3_ddr4_dq,
    c3_ddr4_dqs_c,
    c3_ddr4_dqs_t,
    c3_ddr4_odt,
    c3_ddr4_reset_n,
    c3_sys_clk_n,
    c3_sys_clk_p,
    emc_clk,
    iic_reset_n,
    iic_scl_i,
    iic_scl_o,
    iic_scl_t,
    iic_sda_i,
    iic_sda_o,
    iic_sda_t,
    init_calib_complete,
    led_0,
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    perst_n,
    ref_clk_clk_n,
    ref_clk_clk_p,
    spi_1_io0_io,
    spi_1_io1_io,
    spi_1_io2_io,
    spi_1_io3_io,
    spi_1_ss_io);
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [0:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [8:0]c1_ddr4_dm_n;
  inout [71:0]c1_ddr4_dq;
  inout [8:0]c1_ddr4_dqs_c;
  inout [8:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_reset_n;
  input c1_sys_clk_n;
  input c1_sys_clk_p;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  output [1:0]c2_ddr4_ba;
  output [0:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [8:0]c2_ddr4_dm_n;
  inout [71:0]c2_ddr4_dq;
  inout [8:0]c2_ddr4_dqs_c;
  inout [8:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_reset_n;
  input c2_sys_clk_n;
  input c2_sys_clk_p;
  output c3_ddr4_act_n;
  output [16:0]c3_ddr4_adr;
  output [1:0]c3_ddr4_ba;
  output [0:0]c3_ddr4_bg;
  output [0:0]c3_ddr4_ck_c;
  output [0:0]c3_ddr4_ck_t;
  output [0:0]c3_ddr4_cke;
  output [0:0]c3_ddr4_cs_n;
  inout [8:0]c3_ddr4_dm_n;
  inout [71:0]c3_ddr4_dq;
  inout [8:0]c3_ddr4_dqs_c;
  inout [8:0]c3_ddr4_dqs_t;
  output [0:0]c3_ddr4_odt;
  output c3_ddr4_reset_n;
  input c3_sys_clk_n;
  input c3_sys_clk_p;
  input emc_clk;
  output [0:0]iic_reset_n;
  input iic_scl_i;
  output iic_scl_o;
  output iic_scl_t;
  input iic_sda_i;
  output iic_sda_o;
  output iic_sda_t;
  output init_calib_complete;
  output led_0;
  input [7:0]pcie_7x_mgt_rxn;
  input [7:0]pcie_7x_mgt_rxp;
  output [7:0]pcie_7x_mgt_txn;
  output [7:0]pcie_7x_mgt_txp;
  input perst_n;
  input [0:0]ref_clk_clk_n;
  input [0:0]ref_clk_clk_p;
  inout spi_1_io0_io;
  inout spi_1_io1_io;
  inout spi_1_io2_io;
  inout spi_1_io3_io;
  inout spi_1_ss_io;

  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire [0:0]base_region_Dout;
  wire base_region_IIC_SCL_I;
  wire base_region_IIC_SCL_O;
  wire base_region_IIC_SCL_T;
  wire base_region_IIC_SDA_I;
  wire base_region_IIC_SDA_O;
  wire base_region_IIC_SDA_T;
  wire [37:0]base_region_M_AXI1_ARADDR;
  wire [1:0]base_region_M_AXI1_ARBURST;
  wire [3:0]base_region_M_AXI1_ARCACHE;
  wire [3:0]base_region_M_AXI1_ARID;
  wire [7:0]base_region_M_AXI1_ARLEN;
  wire [0:0]base_region_M_AXI1_ARLOCK;
  wire [2:0]base_region_M_AXI1_ARPROT;
  wire [3:0]base_region_M_AXI1_ARQOS;
  wire base_region_M_AXI1_ARREADY;
  wire [2:0]base_region_M_AXI1_ARSIZE;
  wire base_region_M_AXI1_ARVALID;
  wire [37:0]base_region_M_AXI1_AWADDR;
  wire [1:0]base_region_M_AXI1_AWBURST;
  wire [3:0]base_region_M_AXI1_AWCACHE;
  wire [3:0]base_region_M_AXI1_AWID;
  wire [7:0]base_region_M_AXI1_AWLEN;
  wire [0:0]base_region_M_AXI1_AWLOCK;
  wire [2:0]base_region_M_AXI1_AWPROT;
  wire [3:0]base_region_M_AXI1_AWQOS;
  wire base_region_M_AXI1_AWREADY;
  wire [2:0]base_region_M_AXI1_AWSIZE;
  wire base_region_M_AXI1_AWVALID;
  wire [3:0]base_region_M_AXI1_BID;
  wire base_region_M_AXI1_BREADY;
  wire [1:0]base_region_M_AXI1_BRESP;
  wire base_region_M_AXI1_BVALID;
  wire [255:0]base_region_M_AXI1_RDATA;
  wire [3:0]base_region_M_AXI1_RID;
  wire base_region_M_AXI1_RLAST;
  wire base_region_M_AXI1_RREADY;
  wire [1:0]base_region_M_AXI1_RRESP;
  wire base_region_M_AXI1_RVALID;
  wire [255:0]base_region_M_AXI1_WDATA;
  wire base_region_M_AXI1_WLAST;
  wire base_region_M_AXI1_WREADY;
  wire [31:0]base_region_M_AXI1_WSTRB;
  wire base_region_M_AXI1_WVALID;
  wire [31:0]base_region_M_AXI_ARADDR;
  wire [2:0]base_region_M_AXI_ARPROT;
  wire base_region_M_AXI_ARREADY;
  wire base_region_M_AXI_ARVALID;
  wire [31:0]base_region_M_AXI_AWADDR;
  wire [2:0]base_region_M_AXI_AWPROT;
  wire base_region_M_AXI_AWREADY;
  wire base_region_M_AXI_AWVALID;
  wire base_region_M_AXI_BREADY;
  wire [1:0]base_region_M_AXI_BRESP;
  wire base_region_M_AXI_BVALID;
  wire [31:0]base_region_M_AXI_RDATA;
  wire base_region_M_AXI_RREADY;
  wire [1:0]base_region_M_AXI_RRESP;
  wire base_region_M_AXI_RVALID;
  wire [31:0]base_region_M_AXI_WDATA;
  wire base_region_M_AXI_WREADY;
  wire [3:0]base_region_M_AXI_WSTRB;
  wire base_region_M_AXI_WVALID;
  wire base_region_axi_aclk;
  wire base_region_clk_out1;
  wire base_region_clk_out2;
  wire base_region_clk_out3;
  wire base_region_emc_clk_out;
  wire [0:0]base_region_gpo;
  wire base_region_init_calib_complete_out;
  wire base_region_io0_i;
  wire base_region_io1_i;
  wire base_region_io2_i;
  wire base_region_io3_i;
  wire base_region_iob_static_perst_n_out;
  wire base_region_led_0_out;
  wire base_region_locked;
  wire base_region_locked1;
  wire base_region_locked2;
  wire [7:0]base_region_pcie_mgt_rxn;
  wire [7:0]base_region_pcie_mgt_rxp;
  wire [7:0]base_region_pcie_mgt_txn;
  wire [7:0]base_region_pcie_mgt_txp;
  wire base_region_user_lnk_up;
  wire c0_sys_1_CLK_N;
  wire c0_sys_1_CLK_P;
  wire c1_sys_1_CLK_N;
  wire c1_sys_1_CLK_P;
  wire c2_sys_1_CLK_N;
  wire c2_sys_1_CLK_P;
  wire c3_sys_1_CLK_N;
  wire c3_sys_1_CLK_P;
  wire emc_clk_1;
  wire expanded_region_C0_DDR4_ACT_N;
  wire [16:0]expanded_region_C0_DDR4_ADR;
  wire [1:0]expanded_region_C0_DDR4_BA;
  wire [0:0]expanded_region_C0_DDR4_BG;
  wire [0:0]expanded_region_C0_DDR4_CKE;
  wire [0:0]expanded_region_C0_DDR4_CK_C;
  wire [0:0]expanded_region_C0_DDR4_CK_T;
  wire [0:0]expanded_region_C0_DDR4_CS_N;
  wire [8:0]expanded_region_C0_DDR4_DM_N;
  wire [71:0]expanded_region_C0_DDR4_DQ;
  wire [8:0]expanded_region_C0_DDR4_DQS_C;
  wire [8:0]expanded_region_C0_DDR4_DQS_T;
  wire [0:0]expanded_region_C0_DDR4_ODT;
  wire expanded_region_C0_DDR4_RESET_N;
  wire expanded_region_C0_DDR5_ACT_N;
  wire [16:0]expanded_region_C0_DDR5_ADR;
  wire [1:0]expanded_region_C0_DDR5_BA;
  wire [0:0]expanded_region_C0_DDR5_BG;
  wire [0:0]expanded_region_C0_DDR5_CKE;
  wire [0:0]expanded_region_C0_DDR5_CK_C;
  wire [0:0]expanded_region_C0_DDR5_CK_T;
  wire [0:0]expanded_region_C0_DDR5_CS_N;
  wire [7:0]expanded_region_C0_DDR5_DM_N;
  wire [63:0]expanded_region_C0_DDR5_DQ;
  wire [7:0]expanded_region_C0_DDR5_DQS_C;
  wire [7:0]expanded_region_C0_DDR5_DQS_T;
  wire [0:0]expanded_region_C0_DDR5_ODT;
  wire expanded_region_C0_DDR5_RESET_N;
  wire expanded_region_C0_DDR6_ACT_N;
  wire [16:0]expanded_region_C0_DDR6_ADR;
  wire [1:0]expanded_region_C0_DDR6_BA;
  wire [0:0]expanded_region_C0_DDR6_BG;
  wire [0:0]expanded_region_C0_DDR6_CKE;
  wire [0:0]expanded_region_C0_DDR6_CK_C;
  wire [0:0]expanded_region_C0_DDR6_CK_T;
  wire [0:0]expanded_region_C0_DDR6_CS_N;
  wire [8:0]expanded_region_C0_DDR6_DM_N;
  wire [71:0]expanded_region_C0_DDR6_DQ;
  wire [8:0]expanded_region_C0_DDR6_DQS_C;
  wire [8:0]expanded_region_C0_DDR6_DQS_T;
  wire [0:0]expanded_region_C0_DDR6_ODT;
  wire expanded_region_C0_DDR6_RESET_N;
  wire expanded_region_C0_DDR7_ACT_N;
  wire [16:0]expanded_region_C0_DDR7_ADR;
  wire [1:0]expanded_region_C0_DDR7_BA;
  wire [0:0]expanded_region_C0_DDR7_BG;
  wire [0:0]expanded_region_C0_DDR7_CKE;
  wire [0:0]expanded_region_C0_DDR7_CK_C;
  wire [0:0]expanded_region_C0_DDR7_CK_T;
  wire [0:0]expanded_region_C0_DDR7_CS_N;
  wire [8:0]expanded_region_C0_DDR7_DM_N;
  wire [71:0]expanded_region_C0_DDR7_DQ;
  wire [8:0]expanded_region_C0_DDR7_DQS_C;
  wire [8:0]expanded_region_C0_DDR7_DQS_T;
  wire [0:0]expanded_region_C0_DDR7_ODT;
  wire expanded_region_C0_DDR7_RESET_N;
  wire [0:0]expanded_region_Dout1;
  wire [0:0]expanded_region_Dout2;
  wire expanded_region_Res;
  wire [3:0]expanded_region_dout;
  wire [3:0]expanded_region_dout3;
  wire expanded_region_io0_o;
  wire expanded_region_io0_t;
  wire expanded_region_io1_o;
  wire expanded_region_io1_t;
  wire expanded_region_io2_o;
  wire expanded_region_io2_t;
  wire expanded_region_io3_o;
  wire expanded_region_io3_t;
  wire expanded_region_sck_o;
  wire expanded_region_ss_t;
  wire perst_n_1;
  wire [0:0]ref_clk_1_CLK_N;
  wire [0:0]ref_clk_1_CLK_P;
  wire slowest_sync_clk_1;

  assign base_region_IIC_SCL_I = iic_scl_i;
  assign base_region_IIC_SDA_I = iic_sda_i;
  assign base_region_pcie_mgt_rxn = pcie_7x_mgt_rxn[7:0];
  assign base_region_pcie_mgt_rxp = pcie_7x_mgt_rxp[7:0];
  assign c0_ddr4_act_n = expanded_region_C0_DDR5_ACT_N;
  assign c0_ddr4_adr[16:0] = expanded_region_C0_DDR5_ADR;
  assign c0_ddr4_ba[1:0] = expanded_region_C0_DDR5_BA;
  assign c0_ddr4_bg[0] = expanded_region_C0_DDR5_BG;
  assign c0_ddr4_ck_c[0] = expanded_region_C0_DDR5_CK_C;
  assign c0_ddr4_ck_t[0] = expanded_region_C0_DDR5_CK_T;
  assign c0_ddr4_cke[0] = expanded_region_C0_DDR5_CKE;
  assign c0_ddr4_cs_n[0] = expanded_region_C0_DDR5_CS_N;
  assign c0_ddr4_odt[0] = expanded_region_C0_DDR5_ODT;
  assign c0_ddr4_reset_n = expanded_region_C0_DDR5_RESET_N;
  assign c0_sys_1_CLK_N = c0_sys_clk_n;
  assign c0_sys_1_CLK_P = c0_sys_clk_p;
  assign c1_ddr4_act_n = expanded_region_C0_DDR4_ACT_N;
  assign c1_ddr4_adr[16:0] = expanded_region_C0_DDR4_ADR;
  assign c1_ddr4_ba[1:0] = expanded_region_C0_DDR4_BA;
  assign c1_ddr4_bg[0] = expanded_region_C0_DDR4_BG;
  assign c1_ddr4_ck_c[0] = expanded_region_C0_DDR4_CK_C;
  assign c1_ddr4_ck_t[0] = expanded_region_C0_DDR4_CK_T;
  assign c1_ddr4_cke[0] = expanded_region_C0_DDR4_CKE;
  assign c1_ddr4_cs_n[0] = expanded_region_C0_DDR4_CS_N;
  assign c1_ddr4_odt[0] = expanded_region_C0_DDR4_ODT;
  assign c1_ddr4_reset_n = expanded_region_C0_DDR4_RESET_N;
  assign c1_sys_1_CLK_N = c1_sys_clk_n;
  assign c1_sys_1_CLK_P = c1_sys_clk_p;
  assign c2_ddr4_act_n = expanded_region_C0_DDR6_ACT_N;
  assign c2_ddr4_adr[16:0] = expanded_region_C0_DDR6_ADR;
  assign c2_ddr4_ba[1:0] = expanded_region_C0_DDR6_BA;
  assign c2_ddr4_bg[0] = expanded_region_C0_DDR6_BG;
  assign c2_ddr4_ck_c[0] = expanded_region_C0_DDR6_CK_C;
  assign c2_ddr4_ck_t[0] = expanded_region_C0_DDR6_CK_T;
  assign c2_ddr4_cke[0] = expanded_region_C0_DDR6_CKE;
  assign c2_ddr4_cs_n[0] = expanded_region_C0_DDR6_CS_N;
  assign c2_ddr4_odt[0] = expanded_region_C0_DDR6_ODT;
  assign c2_ddr4_reset_n = expanded_region_C0_DDR6_RESET_N;
  assign c2_sys_1_CLK_N = c2_sys_clk_n;
  assign c2_sys_1_CLK_P = c2_sys_clk_p;
  assign c3_ddr4_act_n = expanded_region_C0_DDR7_ACT_N;
  assign c3_ddr4_adr[16:0] = expanded_region_C0_DDR7_ADR;
  assign c3_ddr4_ba[1:0] = expanded_region_C0_DDR7_BA;
  assign c3_ddr4_bg[0] = expanded_region_C0_DDR7_BG;
  assign c3_ddr4_ck_c[0] = expanded_region_C0_DDR7_CK_C;
  assign c3_ddr4_ck_t[0] = expanded_region_C0_DDR7_CK_T;
  assign c3_ddr4_cke[0] = expanded_region_C0_DDR7_CKE;
  assign c3_ddr4_cs_n[0] = expanded_region_C0_DDR7_CS_N;
  assign c3_ddr4_odt[0] = expanded_region_C0_DDR7_ODT;
  assign c3_ddr4_reset_n = expanded_region_C0_DDR7_RESET_N;
  assign c3_sys_1_CLK_N = c3_sys_clk_n;
  assign c3_sys_1_CLK_P = c3_sys_clk_p;
  assign emc_clk_1 = emc_clk;
  assign iic_reset_n[0] = base_region_gpo;
  assign iic_scl_o = base_region_IIC_SCL_O;
  assign iic_scl_t = base_region_IIC_SCL_T;
  assign iic_sda_o = base_region_IIC_SDA_O;
  assign iic_sda_t = base_region_IIC_SDA_T;
  assign init_calib_complete = base_region_init_calib_complete_out;
  assign led_0 = base_region_led_0_out;
  assign pcie_7x_mgt_txn[7:0] = base_region_pcie_mgt_txn;
  assign pcie_7x_mgt_txp[7:0] = base_region_pcie_mgt_txp;
  assign perst_n_1 = perst_n;
  assign ref_clk_1_CLK_N = ref_clk_clk_n[0];
  assign ref_clk_1_CLK_P = ref_clk_clk_p[0];
  base_region_imp_1OPYDD2 base_region
       (.axi_i2c_IIC_scl_i(base_region_IIC_SCL_I),
        .axi_i2c_IIC_scl_o(base_region_IIC_SCL_O),
        .axi_i2c_IIC_scl_t(base_region_IIC_SCL_T),
        .axi_i2c_IIC_sda_i(base_region_IIC_SDA_I),
        .axi_i2c_IIC_sda_o(base_region_IIC_SDA_O),
        .axi_i2c_IIC_sda_t(base_region_IIC_SDA_T),
        .axi_i2c_gpo(base_region_gpo),
        .clkwiz_kernel2_clk_out1(base_region_clk_out3),
        .clkwiz_kernel2_locked(base_region_locked2),
        .clkwiz_kernel_clk_out1(base_region_clk_out1),
        .clkwiz_kernel_locked(base_region_locked),
        .clkwiz_sysclks_clk_out1(base_region_clk_out2),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .clkwiz_sysclks_locked(base_region_locked1),
        .concat_flash_dq_o_dout(expanded_region_dout),
        .concat_flash_tri_dout(expanded_region_dout3),
        .dma_pcie_axi_aclk(base_region_axi_aclk),
        .dma_pcie_pcie_mgt_rxn(base_region_pcie_mgt_rxn),
        .dma_pcie_pcie_mgt_rxp(base_region_pcie_mgt_rxp),
        .dma_pcie_pcie_mgt_txn(base_region_pcie_mgt_txn),
        .dma_pcie_pcie_mgt_txp(base_region_pcie_mgt_txp),
        .dma_pcie_user_lnk_up(base_region_user_lnk_up),
        .emc_clk(emc_clk_1),
        .flash_programmer_io0_o(expanded_region_io0_o),
        .flash_programmer_io0_t(expanded_region_io0_t),
        .flash_programmer_io1_o(expanded_region_io1_o),
        .flash_programmer_io1_t(expanded_region_io1_t),
        .flash_programmer_io2_o(expanded_region_io2_o),
        .flash_programmer_io2_t(expanded_region_io2_t),
        .flash_programmer_io3_o(expanded_region_io3_o),
        .flash_programmer_io3_t(expanded_region_io3_t),
        .flash_programmer_sck_o(expanded_region_sck_o),
        .flash_programmer_ss_t(expanded_region_ss_t),
        .iob_static_emc_clk_out(base_region_emc_clk_out),
        .iob_static_init_calib_complete_out(base_region_init_calib_complete_out),
        .iob_static_io0(spi_1_io0_io),
        .iob_static_io0_i(base_region_io0_i),
        .iob_static_io1(spi_1_io1_io),
        .iob_static_io1_i(base_region_io1_i),
        .iob_static_io2(spi_1_io2_io),
        .iob_static_io2_i(base_region_io2_i),
        .iob_static_io3(spi_1_io3_io),
        .iob_static_io3_i(base_region_io3_i),
        .iob_static_led_0_out(base_region_led_0_out),
        .iob_static_perst_n_out(base_region_iob_static_perst_n_out),
        .iob_static_ss(spi_1_ss_io),
        .logic_ddrcalib_op_Res(expanded_region_Res),
        .perst_n(perst_n_1),
        .ref_clk_clk_n(ref_clk_1_CLK_N),
        .ref_clk_clk_p(ref_clk_1_CLK_P),
        .regslice_control_M_AXI_araddr(base_region_M_AXI_ARADDR),
        .regslice_control_M_AXI_arprot(base_region_M_AXI_ARPROT),
        .regslice_control_M_AXI_arready(base_region_M_AXI_ARREADY),
        .regslice_control_M_AXI_arvalid(base_region_M_AXI_ARVALID),
        .regslice_control_M_AXI_awaddr(base_region_M_AXI_AWADDR),
        .regslice_control_M_AXI_awprot(base_region_M_AXI_AWPROT),
        .regslice_control_M_AXI_awready(base_region_M_AXI_AWREADY),
        .regslice_control_M_AXI_awvalid(base_region_M_AXI_AWVALID),
        .regslice_control_M_AXI_bready(base_region_M_AXI_BREADY),
        .regslice_control_M_AXI_bresp(base_region_M_AXI_BRESP),
        .regslice_control_M_AXI_bvalid(base_region_M_AXI_BVALID),
        .regslice_control_M_AXI_rdata(base_region_M_AXI_RDATA),
        .regslice_control_M_AXI_rready(base_region_M_AXI_RREADY),
        .regslice_control_M_AXI_rresp(base_region_M_AXI_RRESP),
        .regslice_control_M_AXI_rvalid(base_region_M_AXI_RVALID),
        .regslice_control_M_AXI_wdata(base_region_M_AXI_WDATA),
        .regslice_control_M_AXI_wready(base_region_M_AXI_WREADY),
        .regslice_control_M_AXI_wstrb(base_region_M_AXI_WSTRB),
        .regslice_control_M_AXI_wvalid(base_region_M_AXI_WVALID),
        .regslice_data_M_AXI_araddr(base_region_M_AXI1_ARADDR),
        .regslice_data_M_AXI_arburst(base_region_M_AXI1_ARBURST),
        .regslice_data_M_AXI_arcache(base_region_M_AXI1_ARCACHE),
        .regslice_data_M_AXI_arid(base_region_M_AXI1_ARID),
        .regslice_data_M_AXI_arlen(base_region_M_AXI1_ARLEN),
        .regslice_data_M_AXI_arlock(base_region_M_AXI1_ARLOCK),
        .regslice_data_M_AXI_arprot(base_region_M_AXI1_ARPROT),
        .regslice_data_M_AXI_arqos(base_region_M_AXI1_ARQOS),
        .regslice_data_M_AXI_arready(base_region_M_AXI1_ARREADY),
        .regslice_data_M_AXI_arsize(base_region_M_AXI1_ARSIZE),
        .regslice_data_M_AXI_arvalid(base_region_M_AXI1_ARVALID),
        .regslice_data_M_AXI_awaddr(base_region_M_AXI1_AWADDR),
        .regslice_data_M_AXI_awburst(base_region_M_AXI1_AWBURST),
        .regslice_data_M_AXI_awcache(base_region_M_AXI1_AWCACHE),
        .regslice_data_M_AXI_awid(base_region_M_AXI1_AWID),
        .regslice_data_M_AXI_awlen(base_region_M_AXI1_AWLEN),
        .regslice_data_M_AXI_awlock(base_region_M_AXI1_AWLOCK),
        .regslice_data_M_AXI_awprot(base_region_M_AXI1_AWPROT),
        .regslice_data_M_AXI_awqos(base_region_M_AXI1_AWQOS),
        .regslice_data_M_AXI_awready(base_region_M_AXI1_AWREADY),
        .regslice_data_M_AXI_awsize(base_region_M_AXI1_AWSIZE),
        .regslice_data_M_AXI_awvalid(base_region_M_AXI1_AWVALID),
        .regslice_data_M_AXI_bid(base_region_M_AXI1_BID),
        .regslice_data_M_AXI_bready(base_region_M_AXI1_BREADY),
        .regslice_data_M_AXI_bresp(base_region_M_AXI1_BRESP),
        .regslice_data_M_AXI_bvalid(base_region_M_AXI1_BVALID),
        .regslice_data_M_AXI_rdata(base_region_M_AXI1_RDATA),
        .regslice_data_M_AXI_rid(base_region_M_AXI1_RID),
        .regslice_data_M_AXI_rlast(base_region_M_AXI1_RLAST),
        .regslice_data_M_AXI_rready(base_region_M_AXI1_RREADY),
        .regslice_data_M_AXI_rresp(base_region_M_AXI1_RRESP),
        .regslice_data_M_AXI_rvalid(base_region_M_AXI1_RVALID),
        .regslice_data_M_AXI_wdata(base_region_M_AXI1_WDATA),
        .regslice_data_M_AXI_wlast(base_region_M_AXI1_WLAST),
        .regslice_data_M_AXI_wready(base_region_M_AXI1_WREADY),
        .regslice_data_M_AXI_wstrb(base_region_M_AXI1_WSTRB),
        .regslice_data_M_AXI_wvalid(base_region_M_AXI1_WVALID),
        .slice_reset_kernel_pr_Dout(base_region_Dout),
        .slice_ss0_Dout(expanded_region_Dout1),
        .slice_ss_1_Dout(expanded_region_Dout2));
  expanded_region_imp_112GC7E expanded_region
       (.c0_sys_clk_n(c0_sys_1_CLK_N),
        .c0_sys_clk_p(c0_sys_1_CLK_P),
        .c1_sys_clk_n(c1_sys_1_CLK_N),
        .c1_sys_clk_p(c1_sys_1_CLK_P),
        .c2_sys_clk_n(c2_sys_1_CLK_N),
        .c2_sys_clk_p(c2_sys_1_CLK_P),
        .c3_sys_clk_n(c3_sys_1_CLK_N),
        .c3_sys_clk_p(c3_sys_1_CLK_P),
        .capture(1'b0),
        .clkwiz_kernel2_clk_out1(base_region_clk_out3),
        .clkwiz_kernel2_locked(base_region_locked2),
        .clkwiz_kernel_clk_out1(base_region_clk_out1),
        .clkwiz_kernel_locked(base_region_locked),
        .clkwiz_sysclks_clk_out1(base_region_clk_out2),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .clkwiz_sysclks_locked(base_region_locked1),
        .concat_flash_dq_o_dout(expanded_region_dout),
        .concat_flash_tri_dout(expanded_region_dout3),
        .ddrmem_0_C0_DDR4_act_n(expanded_region_C0_DDR4_ACT_N),
        .ddrmem_0_C0_DDR4_adr(expanded_region_C0_DDR4_ADR),
        .ddrmem_0_C0_DDR4_ba(expanded_region_C0_DDR4_BA),
        .ddrmem_0_C0_DDR4_bg(expanded_region_C0_DDR4_BG),
        .ddrmem_0_C0_DDR4_ck_c(expanded_region_C0_DDR4_CK_C),
        .ddrmem_0_C0_DDR4_ck_t(expanded_region_C0_DDR4_CK_T),
        .ddrmem_0_C0_DDR4_cke(expanded_region_C0_DDR4_CKE),
        .ddrmem_0_C0_DDR4_cs_n(expanded_region_C0_DDR4_CS_N),
        .ddrmem_0_C0_DDR4_dm_n(c1_ddr4_dm_n[8:0]),
        .ddrmem_0_C0_DDR4_dq(c1_ddr4_dq[71:0]),
        .ddrmem_0_C0_DDR4_dqs_c(c1_ddr4_dqs_c[8:0]),
        .ddrmem_0_C0_DDR4_dqs_t(c1_ddr4_dqs_t[8:0]),
        .ddrmem_0_C0_DDR4_odt(expanded_region_C0_DDR4_ODT),
        .ddrmem_0_C0_DDR4_reset_n(expanded_region_C0_DDR4_RESET_N),
        .ddrmem_1_C0_DDR4_act_n(expanded_region_C0_DDR5_ACT_N),
        .ddrmem_1_C0_DDR4_adr(expanded_region_C0_DDR5_ADR),
        .ddrmem_1_C0_DDR4_ba(expanded_region_C0_DDR5_BA),
        .ddrmem_1_C0_DDR4_bg(expanded_region_C0_DDR5_BG),
        .ddrmem_1_C0_DDR4_ck_c(expanded_region_C0_DDR5_CK_C),
        .ddrmem_1_C0_DDR4_ck_t(expanded_region_C0_DDR5_CK_T),
        .ddrmem_1_C0_DDR4_cke(expanded_region_C0_DDR5_CKE),
        .ddrmem_1_C0_DDR4_cs_n(expanded_region_C0_DDR5_CS_N),
        .ddrmem_1_C0_DDR4_dm_n(c0_ddr4_dm_n[7:0]),
        .ddrmem_1_C0_DDR4_dq(c0_ddr4_dq[63:0]),
        .ddrmem_1_C0_DDR4_dqs_c(c0_ddr4_dqs_c[7:0]),
        .ddrmem_1_C0_DDR4_dqs_t(c0_ddr4_dqs_t[7:0]),
        .ddrmem_1_C0_DDR4_odt(expanded_region_C0_DDR5_ODT),
        .ddrmem_1_C0_DDR4_reset_n(expanded_region_C0_DDR5_RESET_N),
        .ddrmem_2_C0_DDR4_act_n(expanded_region_C0_DDR6_ACT_N),
        .ddrmem_2_C0_DDR4_adr(expanded_region_C0_DDR6_ADR),
        .ddrmem_2_C0_DDR4_ba(expanded_region_C0_DDR6_BA),
        .ddrmem_2_C0_DDR4_bg(expanded_region_C0_DDR6_BG),
        .ddrmem_2_C0_DDR4_ck_c(expanded_region_C0_DDR6_CK_C),
        .ddrmem_2_C0_DDR4_ck_t(expanded_region_C0_DDR6_CK_T),
        .ddrmem_2_C0_DDR4_cke(expanded_region_C0_DDR6_CKE),
        .ddrmem_2_C0_DDR4_cs_n(expanded_region_C0_DDR6_CS_N),
        .ddrmem_2_C0_DDR4_dm_n(c2_ddr4_dm_n[8:0]),
        .ddrmem_2_C0_DDR4_dq(c2_ddr4_dq[71:0]),
        .ddrmem_2_C0_DDR4_dqs_c(c2_ddr4_dqs_c[8:0]),
        .ddrmem_2_C0_DDR4_dqs_t(c2_ddr4_dqs_t[8:0]),
        .ddrmem_2_C0_DDR4_odt(expanded_region_C0_DDR6_ODT),
        .ddrmem_2_C0_DDR4_reset_n(expanded_region_C0_DDR6_RESET_N),
        .ddrmem_3_C0_DDR4_act_n(expanded_region_C0_DDR7_ACT_N),
        .ddrmem_3_C0_DDR4_adr(expanded_region_C0_DDR7_ADR),
        .ddrmem_3_C0_DDR4_ba(expanded_region_C0_DDR7_BA),
        .ddrmem_3_C0_DDR4_bg(expanded_region_C0_DDR7_BG),
        .ddrmem_3_C0_DDR4_ck_c(expanded_region_C0_DDR7_CK_C),
        .ddrmem_3_C0_DDR4_ck_t(expanded_region_C0_DDR7_CK_T),
        .ddrmem_3_C0_DDR4_cke(expanded_region_C0_DDR7_CKE),
        .ddrmem_3_C0_DDR4_cs_n(expanded_region_C0_DDR7_CS_N),
        .ddrmem_3_C0_DDR4_dm_n(c3_ddr4_dm_n[8:0]),
        .ddrmem_3_C0_DDR4_dq(c3_ddr4_dq[71:0]),
        .ddrmem_3_C0_DDR4_dqs_c(c3_ddr4_dqs_c[8:0]),
        .ddrmem_3_C0_DDR4_dqs_t(c3_ddr4_dqs_t[8:0]),
        .ddrmem_3_C0_DDR4_odt(expanded_region_C0_DDR7_ODT),
        .ddrmem_3_C0_DDR4_reset_n(expanded_region_C0_DDR7_RESET_N),
        .dma_pcie_axi_aclk(base_region_axi_aclk),
        .dma_pcie_user_lnk_up(base_region_user_lnk_up),
        .drck(1'b0),
        .flash_programmer_io0_o(expanded_region_io0_o),
        .flash_programmer_io0_t(expanded_region_io0_t),
        .flash_programmer_io1_o(expanded_region_io1_o),
        .flash_programmer_io1_t(expanded_region_io1_t),
        .flash_programmer_io2_o(expanded_region_io2_o),
        .flash_programmer_io2_t(expanded_region_io2_t),
        .flash_programmer_io3_o(expanded_region_io3_o),
        .flash_programmer_io3_t(expanded_region_io3_t),
        .flash_programmer_sck_o(expanded_region_sck_o),
        .flash_programmer_ss_t(expanded_region_ss_t),
        .iob_static_emc_clk_out(base_region_emc_clk_out),
        .iob_static_io0_i(base_region_io0_i),
        .iob_static_io1_i(base_region_io1_i),
        .iob_static_io2_i(base_region_io2_i),
        .iob_static_io3_i(base_region_io3_i),
        .iob_static_perst_n_out(base_region_iob_static_perst_n_out),
        .logic_ddrcalib_op_Res(expanded_region_Res),
        .regslice_control_M_AXI_araddr(base_region_M_AXI_ARADDR),
        .regslice_control_M_AXI_arprot(base_region_M_AXI_ARPROT),
        .regslice_control_M_AXI_arready(base_region_M_AXI_ARREADY),
        .regslice_control_M_AXI_arvalid(base_region_M_AXI_ARVALID),
        .regslice_control_M_AXI_awaddr(base_region_M_AXI_AWADDR),
        .regslice_control_M_AXI_awprot(base_region_M_AXI_AWPROT),
        .regslice_control_M_AXI_awready(base_region_M_AXI_AWREADY),
        .regslice_control_M_AXI_awvalid(base_region_M_AXI_AWVALID),
        .regslice_control_M_AXI_bready(base_region_M_AXI_BREADY),
        .regslice_control_M_AXI_bresp(base_region_M_AXI_BRESP),
        .regslice_control_M_AXI_bvalid(base_region_M_AXI_BVALID),
        .regslice_control_M_AXI_rdata(base_region_M_AXI_RDATA),
        .regslice_control_M_AXI_rready(base_region_M_AXI_RREADY),
        .regslice_control_M_AXI_rresp(base_region_M_AXI_RRESP),
        .regslice_control_M_AXI_rvalid(base_region_M_AXI_RVALID),
        .regslice_control_M_AXI_wdata(base_region_M_AXI_WDATA),
        .regslice_control_M_AXI_wready(base_region_M_AXI_WREADY),
        .regslice_control_M_AXI_wstrb(base_region_M_AXI_WSTRB),
        .regslice_control_M_AXI_wvalid(base_region_M_AXI_WVALID),
        .regslice_data_M_AXI_araddr(base_region_M_AXI1_ARADDR),
        .regslice_data_M_AXI_arburst(base_region_M_AXI1_ARBURST),
        .regslice_data_M_AXI_arcache(base_region_M_AXI1_ARCACHE),
        .regslice_data_M_AXI_arid(base_region_M_AXI1_ARID),
        .regslice_data_M_AXI_arlen(base_region_M_AXI1_ARLEN),
        .regslice_data_M_AXI_arlock(base_region_M_AXI1_ARLOCK),
        .regslice_data_M_AXI_arprot(base_region_M_AXI1_ARPROT),
        .regslice_data_M_AXI_arqos(base_region_M_AXI1_ARQOS),
        .regslice_data_M_AXI_arready(base_region_M_AXI1_ARREADY),
        .regslice_data_M_AXI_arsize(base_region_M_AXI1_ARSIZE),
        .regslice_data_M_AXI_arvalid(base_region_M_AXI1_ARVALID),
        .regslice_data_M_AXI_awaddr(base_region_M_AXI1_AWADDR),
        .regslice_data_M_AXI_awburst(base_region_M_AXI1_AWBURST),
        .regslice_data_M_AXI_awcache(base_region_M_AXI1_AWCACHE),
        .regslice_data_M_AXI_awid(base_region_M_AXI1_AWID),
        .regslice_data_M_AXI_awlen(base_region_M_AXI1_AWLEN),
        .regslice_data_M_AXI_awlock(base_region_M_AXI1_AWLOCK),
        .regslice_data_M_AXI_awprot(base_region_M_AXI1_AWPROT),
        .regslice_data_M_AXI_awqos(base_region_M_AXI1_AWQOS),
        .regslice_data_M_AXI_awready(base_region_M_AXI1_AWREADY),
        .regslice_data_M_AXI_awsize(base_region_M_AXI1_AWSIZE),
        .regslice_data_M_AXI_awvalid(base_region_M_AXI1_AWVALID),
        .regslice_data_M_AXI_bid(base_region_M_AXI1_BID),
        .regslice_data_M_AXI_bready(base_region_M_AXI1_BREADY),
        .regslice_data_M_AXI_bresp(base_region_M_AXI1_BRESP),
        .regslice_data_M_AXI_bvalid(base_region_M_AXI1_BVALID),
        .regslice_data_M_AXI_rdata(base_region_M_AXI1_RDATA),
        .regslice_data_M_AXI_rid(base_region_M_AXI1_RID),
        .regslice_data_M_AXI_rlast(base_region_M_AXI1_RLAST),
        .regslice_data_M_AXI_rready(base_region_M_AXI1_RREADY),
        .regslice_data_M_AXI_rresp(base_region_M_AXI1_RRESP),
        .regslice_data_M_AXI_rvalid(base_region_M_AXI1_RVALID),
        .regslice_data_M_AXI_wdata(base_region_M_AXI1_WDATA),
        .regslice_data_M_AXI_wlast(base_region_M_AXI1_WLAST),
        .regslice_data_M_AXI_wready(base_region_M_AXI1_WREADY),
        .regslice_data_M_AXI_wstrb(base_region_M_AXI1_WSTRB),
        .regslice_data_M_AXI_wvalid(base_region_M_AXI1_WVALID),
        .reset(1'b0),
        .runtest(1'b0),
        .sel(1'b0),
        .shift(1'b0),
        .slice_reset_kernel_pr_Dout(base_region_Dout),
        .slice_ss_0_Dout(expanded_region_Dout1),
        .slice_ss_1_Dout(expanded_region_Dout2),
        .tck(1'b0),
        .tdi(1'b0),
        .tms(1'b0),
        .update(1'b0));
endmodule

module xcl_design_interconnect_axilite_0
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
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
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
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
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
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
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
  output [6:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [6:0]M00_AXI_awaddr;
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
  output [15:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
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
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
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
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
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
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [16:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [16:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
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
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_ACLK_net;
  wire interconnect_axilite_ARESETN_net;
  wire [31:0]interconnect_axilite_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARPROT;
  wire interconnect_axilite_to_s00_couplers_ARREADY;
  wire interconnect_axilite_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWPROT;
  wire interconnect_axilite_to_s00_couplers_AWREADY;
  wire interconnect_axilite_to_s00_couplers_AWVALID;
  wire interconnect_axilite_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_BRESP;
  wire interconnect_axilite_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_RDATA;
  wire interconnect_axilite_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_RRESP;
  wire interconnect_axilite_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_WDATA;
  wire interconnect_axilite_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_to_s00_couplers_WSTRB;
  wire interconnect_axilite_to_s00_couplers_WVALID;
  wire [6:0]m00_couplers_to_interconnect_axilite_ARADDR;
  wire m00_couplers_to_interconnect_axilite_ARREADY;
  wire m00_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m00_couplers_to_interconnect_axilite_AWADDR;
  wire m00_couplers_to_interconnect_axilite_AWREADY;
  wire m00_couplers_to_interconnect_axilite_AWVALID;
  wire m00_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_BRESP;
  wire m00_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_RDATA;
  wire m00_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_RRESP;
  wire m00_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_WDATA;
  wire m00_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_WSTRB;
  wire m00_couplers_to_interconnect_axilite_WVALID;
  wire [15:0]m01_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_ARPROT;
  wire m01_couplers_to_interconnect_axilite_ARREADY;
  wire m01_couplers_to_interconnect_axilite_ARVALID;
  wire [15:0]m01_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_AWPROT;
  wire m01_couplers_to_interconnect_axilite_AWREADY;
  wire m01_couplers_to_interconnect_axilite_AWVALID;
  wire m01_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_BRESP;
  wire m01_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_RDATA;
  wire m01_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_RRESP;
  wire m01_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_WDATA;
  wire m01_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_WSTRB;
  wire m01_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m02_couplers_to_interconnect_axilite_ARPROT;
  wire m02_couplers_to_interconnect_axilite_ARREADY;
  wire m02_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m02_couplers_to_interconnect_axilite_AWPROT;
  wire m02_couplers_to_interconnect_axilite_AWREADY;
  wire m02_couplers_to_interconnect_axilite_AWVALID;
  wire m02_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_BRESP;
  wire m02_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_RDATA;
  wire m02_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_RRESP;
  wire m02_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_WDATA;
  wire m02_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_WSTRB;
  wire m02_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_ARADDR;
  wire m03_couplers_to_interconnect_axilite_ARREADY;
  wire m03_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_AWADDR;
  wire m03_couplers_to_interconnect_axilite_AWREADY;
  wire m03_couplers_to_interconnect_axilite_AWVALID;
  wire m03_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_BRESP;
  wire m03_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_RDATA;
  wire m03_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_RRESP;
  wire m03_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_WDATA;
  wire m03_couplers_to_interconnect_axilite_WREADY;
  wire m03_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m04_couplers_to_interconnect_axilite_ARPROT;
  wire m04_couplers_to_interconnect_axilite_ARREADY;
  wire m04_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m04_couplers_to_interconnect_axilite_AWPROT;
  wire m04_couplers_to_interconnect_axilite_AWREADY;
  wire m04_couplers_to_interconnect_axilite_AWVALID;
  wire m04_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_BRESP;
  wire m04_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_RDATA;
  wire m04_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_RRESP;
  wire m04_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_WDATA;
  wire m04_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m04_couplers_to_interconnect_axilite_WSTRB;
  wire m04_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m05_couplers_to_interconnect_axilite_ARPROT;
  wire m05_couplers_to_interconnect_axilite_ARREADY;
  wire m05_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m05_couplers_to_interconnect_axilite_AWPROT;
  wire m05_couplers_to_interconnect_axilite_AWREADY;
  wire m05_couplers_to_interconnect_axilite_AWVALID;
  wire m05_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_BRESP;
  wire m05_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_RDATA;
  wire m05_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_RRESP;
  wire m05_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_WDATA;
  wire m05_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m05_couplers_to_interconnect_axilite_WSTRB;
  wire m05_couplers_to_interconnect_axilite_WVALID;
  wire [16:0]m06_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m06_couplers_to_interconnect_axilite_ARPROT;
  wire m06_couplers_to_interconnect_axilite_ARREADY;
  wire m06_couplers_to_interconnect_axilite_ARVALID;
  wire [16:0]m06_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m06_couplers_to_interconnect_axilite_AWPROT;
  wire m06_couplers_to_interconnect_axilite_AWREADY;
  wire m06_couplers_to_interconnect_axilite_AWVALID;
  wire m06_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_BRESP;
  wire m06_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_RDATA;
  wire m06_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_RRESP;
  wire m06_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_WDATA;
  wire m06_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m06_couplers_to_interconnect_axilite_WSTRB;
  wire m06_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
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
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
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
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
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
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
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
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
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
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[6:0] = m00_couplers_to_interconnect_axilite_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_ARVALID;
  assign M00_AXI_awaddr[6:0] = m00_couplers_to_interconnect_axilite_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[15:0] = m01_couplers_to_interconnect_axilite_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_interconnect_axilite_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_ARVALID;
  assign M01_AXI_awaddr[15:0] = m01_couplers_to_interconnect_axilite_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_interconnect_axilite_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_interconnect_axilite_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_interconnect_axilite_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_interconnect_axilite_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_interconnect_axilite_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_interconnect_axilite_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_interconnect_axilite_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_interconnect_axilite_BREADY;
  assign M02_AXI_rready = m02_couplers_to_interconnect_axilite_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_interconnect_axilite_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_interconnect_axilite_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_interconnect_axilite_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_interconnect_axilite_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_interconnect_axilite_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_interconnect_axilite_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_interconnect_axilite_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_interconnect_axilite_BREADY;
  assign M03_AXI_rready = m03_couplers_to_interconnect_axilite_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_interconnect_axilite_WDATA;
  assign M03_AXI_wvalid = m03_couplers_to_interconnect_axilite_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_interconnect_axilite_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_interconnect_axilite_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_interconnect_axilite_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_interconnect_axilite_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_interconnect_axilite_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_interconnect_axilite_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_interconnect_axilite_BREADY;
  assign M04_AXI_rready = m04_couplers_to_interconnect_axilite_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_interconnect_axilite_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_interconnect_axilite_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_interconnect_axilite_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_interconnect_axilite_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_interconnect_axilite_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_interconnect_axilite_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_interconnect_axilite_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_interconnect_axilite_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_interconnect_axilite_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_interconnect_axilite_BREADY;
  assign M05_AXI_rready = m05_couplers_to_interconnect_axilite_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_interconnect_axilite_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_interconnect_axilite_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_interconnect_axilite_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[16:0] = m06_couplers_to_interconnect_axilite_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_interconnect_axilite_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_interconnect_axilite_ARVALID;
  assign M06_AXI_awaddr[16:0] = m06_couplers_to_interconnect_axilite_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_interconnect_axilite_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_interconnect_axilite_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_interconnect_axilite_BREADY;
  assign M06_AXI_rready = m06_couplers_to_interconnect_axilite_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_interconnect_axilite_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_interconnect_axilite_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_interconnect_axilite_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_to_s00_couplers_WREADY;
  assign interconnect_axilite_ACLK_net = ACLK;
  assign interconnect_axilite_ARESETN_net = ARESETN;
  assign interconnect_axilite_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_WREADY = M01_AXI_wready;
  assign m02_couplers_to_interconnect_axilite_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_interconnect_axilite_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_interconnect_axilite_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_interconnect_axilite_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_interconnect_axilite_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_interconnect_axilite_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_interconnect_axilite_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_interconnect_axilite_WREADY = M02_AXI_wready;
  assign m03_couplers_to_interconnect_axilite_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_interconnect_axilite_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_interconnect_axilite_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_interconnect_axilite_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_interconnect_axilite_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_interconnect_axilite_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_interconnect_axilite_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_interconnect_axilite_WREADY = M03_AXI_wready;
  assign m04_couplers_to_interconnect_axilite_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_interconnect_axilite_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_interconnect_axilite_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_interconnect_axilite_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_interconnect_axilite_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_interconnect_axilite_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_interconnect_axilite_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_interconnect_axilite_WREADY = M04_AXI_wready;
  assign m05_couplers_to_interconnect_axilite_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_interconnect_axilite_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_interconnect_axilite_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_interconnect_axilite_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_interconnect_axilite_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_interconnect_axilite_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_interconnect_axilite_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_interconnect_axilite_WREADY = M05_AXI_wready;
  assign m06_couplers_to_interconnect_axilite_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_interconnect_axilite_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_interconnect_axilite_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_interconnect_axilite_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_interconnect_axilite_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_interconnect_axilite_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_interconnect_axilite_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_interconnect_axilite_WREADY = M06_AXI_wready;
  m00_couplers_imp_1T8JY77 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
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
  m01_couplers_imp_13J5K85 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m01_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m01_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
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
  m02_couplers_imp_9DRP7Z m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m02_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m02_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m02_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m02_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m02_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m02_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m02_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m02_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m02_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m02_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m02_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m02_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m02_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m02_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
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
  m03_couplers_imp_J2E8TL m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m03_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m03_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m03_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m03_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m03_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m03_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m03_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m03_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m03_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m03_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m03_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wvalid(m03_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
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
  m04_couplers_imp_1A1MMKA m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m04_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m04_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m04_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m04_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m04_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m04_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m04_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m04_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m04_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m04_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m04_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m04_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m04_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m04_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1HFM0OS m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m05_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m05_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m05_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m05_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m05_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m05_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m05_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m05_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m05_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m05_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m05_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m05_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m05_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m05_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_UV4Z7A m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m06_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m06_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m06_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m06_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m06_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m06_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m06_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m06_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m06_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m06_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m06_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m06_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m06_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m06_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  s00_couplers_imp_1241H5U s00_couplers
       (.M_ACLK(interconnect_axilite_ACLK_net),
        .M_ARESETN(interconnect_axilite_ARESETN_net),
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
        .S_AXI_araddr(interconnect_axilite_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_to_s00_couplers_WVALID));
  xcl_design_xbar_1 xbar
       (.aclk(interconnect_axilite_ACLK_net),
        .aresetn(interconnect_axilite_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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

module xcl_design_interconnect_axilite_static_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
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
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
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
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
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
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input [0:0]M06_AXI_arready;
  output [0:0]M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input [0:0]M06_AXI_awready;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input [0:0]M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
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
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_static_ACLK_net;
  wire interconnect_axilite_static_ARESETN_net;
  wire [31:0]interconnect_axilite_static_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_static_to_s00_couplers_ARPROT;
  wire interconnect_axilite_static_to_s00_couplers_ARREADY;
  wire interconnect_axilite_static_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axilite_static_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_static_to_s00_couplers_AWPROT;
  wire interconnect_axilite_static_to_s00_couplers_AWREADY;
  wire interconnect_axilite_static_to_s00_couplers_AWVALID;
  wire interconnect_axilite_static_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_static_to_s00_couplers_BRESP;
  wire interconnect_axilite_static_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_static_to_s00_couplers_RDATA;
  wire interconnect_axilite_static_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_static_to_s00_couplers_RRESP;
  wire interconnect_axilite_static_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_static_to_s00_couplers_WDATA;
  wire interconnect_axilite_static_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_static_to_s00_couplers_WSTRB;
  wire interconnect_axilite_static_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_static_ARADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_static_ARPROT;
  wire m00_couplers_to_interconnect_axilite_static_ARREADY;
  wire m00_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_static_AWADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_static_AWPROT;
  wire m00_couplers_to_interconnect_axilite_static_AWREADY;
  wire m00_couplers_to_interconnect_axilite_static_AWVALID;
  wire m00_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_static_BRESP;
  wire m00_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_static_RDATA;
  wire m00_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_static_RRESP;
  wire m00_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_static_WDATA;
  wire m00_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_static_WSTRB;
  wire m00_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m01_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m02_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m03_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m03_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m04_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m04_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m04_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m04_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m05_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m05_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m05_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m05_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_static_ARADDR;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_ARREADY;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_static_AWADDR;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_AWREADY;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_AWVALID;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_static_BRESP;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_static_RDATA;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m06_couplers_to_interconnect_axilite_static_RRESP;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m06_couplers_to_interconnect_axilite_static_WDATA;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m06_couplers_to_interconnect_axilite_static_WSTRB;
  wire [0:0]m06_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_static_ARADDR;
  wire m07_couplers_to_interconnect_axilite_static_ARREADY;
  wire m07_couplers_to_interconnect_axilite_static_ARVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_static_AWADDR;
  wire m07_couplers_to_interconnect_axilite_static_AWREADY;
  wire m07_couplers_to_interconnect_axilite_static_AWVALID;
  wire m07_couplers_to_interconnect_axilite_static_BREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_static_BRESP;
  wire m07_couplers_to_interconnect_axilite_static_BVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_static_RDATA;
  wire m07_couplers_to_interconnect_axilite_static_RREADY;
  wire [1:0]m07_couplers_to_interconnect_axilite_static_RRESP;
  wire m07_couplers_to_interconnect_axilite_static_RVALID;
  wire [31:0]m07_couplers_to_interconnect_axilite_static_WDATA;
  wire m07_couplers_to_interconnect_axilite_static_WREADY;
  wire [3:0]m07_couplers_to_interconnect_axilite_static_WSTRB;
  wire m07_couplers_to_interconnect_axilite_static_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
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
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
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
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [0:0]xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [0:0]xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire [0:0]xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire [0:0]xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [0:0]xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_interconnect_axilite_static_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_axilite_static_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_static_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_interconnect_axilite_static_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_axilite_static_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_static_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_static_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_static_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_static_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_static_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_static_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_interconnect_axilite_static_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_interconnect_axilite_static_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_interconnect_axilite_static_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_interconnect_axilite_static_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_interconnect_axilite_static_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_interconnect_axilite_static_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_static_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_static_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_interconnect_axilite_static_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_interconnect_axilite_static_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_interconnect_axilite_static_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_interconnect_axilite_static_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_interconnect_axilite_static_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_interconnect_axilite_static_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_interconnect_axilite_static_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_interconnect_axilite_static_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_interconnect_axilite_static_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_interconnect_axilite_static_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_interconnect_axilite_static_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_interconnect_axilite_static_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_interconnect_axilite_static_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_interconnect_axilite_static_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_interconnect_axilite_static_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_interconnect_axilite_static_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_interconnect_axilite_static_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_interconnect_axilite_static_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_interconnect_axilite_static_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_interconnect_axilite_static_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_interconnect_axilite_static_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_interconnect_axilite_static_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_interconnect_axilite_static_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_interconnect_axilite_static_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_interconnect_axilite_static_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_interconnect_axilite_static_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_interconnect_axilite_static_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_interconnect_axilite_static_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_interconnect_axilite_static_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_interconnect_axilite_static_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_interconnect_axilite_static_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_interconnect_axilite_static_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_interconnect_axilite_static_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_interconnect_axilite_static_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_interconnect_axilite_static_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_interconnect_axilite_static_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_interconnect_axilite_static_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_interconnect_axilite_static_ARADDR;
  assign M06_AXI_arvalid[0] = m06_couplers_to_interconnect_axilite_static_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_interconnect_axilite_static_AWADDR;
  assign M06_AXI_awvalid[0] = m06_couplers_to_interconnect_axilite_static_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_interconnect_axilite_static_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_interconnect_axilite_static_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_interconnect_axilite_static_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_interconnect_axilite_static_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_interconnect_axilite_static_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_interconnect_axilite_static_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_interconnect_axilite_static_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_interconnect_axilite_static_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_interconnect_axilite_static_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_interconnect_axilite_static_BREADY;
  assign M07_AXI_rready = m07_couplers_to_interconnect_axilite_static_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_interconnect_axilite_static_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_interconnect_axilite_static_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_interconnect_axilite_static_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_static_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_static_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_static_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_static_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_static_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_static_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_static_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_static_to_s00_couplers_WREADY;
  assign interconnect_axilite_static_ACLK_net = ACLK;
  assign interconnect_axilite_static_ARESETN_net = ARESETN;
  assign interconnect_axilite_static_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_static_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_static_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_static_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_static_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_static_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_static_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_static_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_static_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_static_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_static_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_static_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_static_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_static_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_static_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_static_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_static_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_static_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_static_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_static_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_interconnect_axilite_static_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_interconnect_axilite_static_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_static_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_interconnect_axilite_static_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_static_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_static_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_interconnect_axilite_static_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_interconnect_axilite_static_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_interconnect_axilite_static_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_interconnect_axilite_static_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_interconnect_axilite_static_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_interconnect_axilite_static_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_interconnect_axilite_static_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_interconnect_axilite_static_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_interconnect_axilite_static_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_interconnect_axilite_static_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_interconnect_axilite_static_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_interconnect_axilite_static_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_interconnect_axilite_static_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_interconnect_axilite_static_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_interconnect_axilite_static_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_interconnect_axilite_static_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_interconnect_axilite_static_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_interconnect_axilite_static_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_interconnect_axilite_static_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_interconnect_axilite_static_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_interconnect_axilite_static_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_interconnect_axilite_static_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_interconnect_axilite_static_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_interconnect_axilite_static_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_interconnect_axilite_static_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_interconnect_axilite_static_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_interconnect_axilite_static_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_interconnect_axilite_static_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_interconnect_axilite_static_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_interconnect_axilite_static_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_interconnect_axilite_static_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_interconnect_axilite_static_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_interconnect_axilite_static_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_interconnect_axilite_static_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_interconnect_axilite_static_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_interconnect_axilite_static_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_interconnect_axilite_static_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_interconnect_axilite_static_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_interconnect_axilite_static_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_interconnect_axilite_static_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_interconnect_axilite_static_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_interconnect_axilite_static_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_interconnect_axilite_static_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_interconnect_axilite_static_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_interconnect_axilite_static_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_interconnect_axilite_static_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_interconnect_axilite_static_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_interconnect_axilite_static_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_interconnect_axilite_static_WREADY = M07_AXI_wready;
  m00_couplers_imp_190CNN3 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arprot(m00_couplers_to_interconnect_axilite_static_ARPROT),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awprot(m00_couplers_to_interconnect_axilite_static_AWPROT),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
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
  m01_couplers_imp_1JAWVL5 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
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
  m02_couplers_imp_T4KEUB m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m02_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m02_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m02_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m02_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m02_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m02_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m02_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m02_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m02_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m02_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m02_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m02_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
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
  m03_couplers_imp_3S1IED m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m03_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m03_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m03_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m03_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m03_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m03_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m03_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m03_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m03_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m03_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m03_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m03_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
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
  m04_couplers_imp_1TPUQD2 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m04_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m04_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m04_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m04_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m04_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m04_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m04_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m04_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m04_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m04_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m04_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m04_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_127TW34 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m05_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m05_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m05_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m05_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m05_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m05_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m05_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m05_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m05_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m05_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m05_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m05_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_AKD2T6 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m06_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m06_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m06_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m06_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m06_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m06_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m06_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m06_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m06_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m06_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m06_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m06_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_IPQY4C m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_interconnect_axilite_static_ARADDR),
        .M_AXI_arready(m07_couplers_to_interconnect_axilite_static_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_interconnect_axilite_static_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_interconnect_axilite_static_AWADDR),
        .M_AXI_awready(m07_couplers_to_interconnect_axilite_static_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_interconnect_axilite_static_AWVALID),
        .M_AXI_bready(m07_couplers_to_interconnect_axilite_static_BREADY),
        .M_AXI_bresp(m07_couplers_to_interconnect_axilite_static_BRESP),
        .M_AXI_bvalid(m07_couplers_to_interconnect_axilite_static_BVALID),
        .M_AXI_rdata(m07_couplers_to_interconnect_axilite_static_RDATA),
        .M_AXI_rready(m07_couplers_to_interconnect_axilite_static_RREADY),
        .M_AXI_rresp(m07_couplers_to_interconnect_axilite_static_RRESP),
        .M_AXI_rvalid(m07_couplers_to_interconnect_axilite_static_RVALID),
        .M_AXI_wdata(m07_couplers_to_interconnect_axilite_static_WDATA),
        .M_AXI_wready(m07_couplers_to_interconnect_axilite_static_WREADY),
        .M_AXI_wstrb(m07_couplers_to_interconnect_axilite_static_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_interconnect_axilite_static_WVALID),
        .S_ACLK(interconnect_axilite_static_ACLK_net),
        .S_ARESETN(interconnect_axilite_static_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_1HEBEJY s00_couplers
       (.M_ACLK(interconnect_axilite_static_ACLK_net),
        .M_ARESETN(interconnect_axilite_static_ARESETN_net),
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
        .S_AXI_araddr(interconnect_axilite_static_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_static_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_static_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_static_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_static_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_static_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_static_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_static_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_static_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_static_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_static_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_static_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_static_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_static_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_static_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_static_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_static_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_static_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_static_to_s00_couplers_WVALID));
  xcl_design_xbar_0 xbar
       (.aclk(interconnect_axilite_static_ACLK_net),
        .aresetn(interconnect_axilite_static_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
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
