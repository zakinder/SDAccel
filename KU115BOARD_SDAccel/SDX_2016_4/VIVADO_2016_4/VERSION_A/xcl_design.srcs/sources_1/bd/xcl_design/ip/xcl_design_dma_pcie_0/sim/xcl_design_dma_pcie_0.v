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


// IP VLNV: xilinx.com:ip:xdma:3.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module xcl_design_dma_pcie_0 (
  sys_clk,
  sys_clk_gt,
  sys_rst_n,
  user_lnk_up,
  pci_exp_txp,
  pci_exp_txn,
  pci_exp_rxp,
  pci_exp_rxn,
  axi_aclk,
  axi_aresetn,
  usr_irq_req,
  usr_irq_ack,
  msi_enable,
  msi_vector_width,
  m_axi_awready,
  m_axi_wready,
  m_axi_bid,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_arready,
  m_axi_rid,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_awid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_bready,
  m_axi_arid,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_rready,
  m_axil_awaddr,
  m_axil_awprot,
  m_axil_awvalid,
  m_axil_awready,
  m_axil_wdata,
  m_axil_wstrb,
  m_axil_wvalid,
  m_axil_wready,
  m_axil_bvalid,
  m_axil_bresp,
  m_axil_bready,
  m_axil_araddr,
  m_axil_arprot,
  m_axil_arvalid,
  m_axil_arready,
  m_axil_rdata,
  m_axil_rresp,
  m_axil_rvalid,
  m_axil_rready,
  mcap_design_switch,
  cap_req,
  cap_gnt,
  cap_rel,
  int_qpll1lock_out,
  int_qpll1outrefclk_out,
  int_qpll1outclk_out
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *)
input wire sys_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk_gt CLK" *)
input wire sys_clk_gt;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst_n RST" *)
input wire sys_rst_n;
output wire user_lnk_up;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *)
output wire [7 : 0] pci_exp_txp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *)
output wire [7 : 0] pci_exp_txn;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *)
input wire [7 : 0] pci_exp_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *)
input wire [7 : 0] pci_exp_rxn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_aclk CLK" *)
output wire axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST" *)
output wire axi_aresetn;
input wire [15 : 0] usr_irq_req;
output wire [15 : 0] usr_irq_ack;
output wire msi_enable;
output wire [2 : 0] msi_vector_width;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *)
input wire [1 : 0] m_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *)
input wire [1 : 0] m_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [255 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *)
output wire [1 : 0] m_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [63 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [255 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [31 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *)
output wire [1 : 0] m_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [63 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWADDR" *)
output wire [31 : 0] m_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWPROT" *)
output wire [2 : 0] m_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWVALID" *)
output wire m_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWREADY" *)
input wire m_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WDATA" *)
output wire [31 : 0] m_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WSTRB" *)
output wire [3 : 0] m_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WVALID" *)
output wire m_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WREADY" *)
input wire m_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BVALID" *)
input wire m_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BRESP" *)
input wire [1 : 0] m_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BREADY" *)
output wire m_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARADDR" *)
output wire [31 : 0] m_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARPROT" *)
output wire [2 : 0] m_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARVALID" *)
output wire m_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARREADY" *)
input wire m_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RDATA" *)
input wire [31 : 0] m_axil_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RRESP" *)
input wire [1 : 0] m_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RVALID" *)
input wire m_axil_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RREADY" *)
output wire m_axil_rready;
output wire mcap_design_switch;
(* X_INTERFACE_INFO = "xilinx.com:interface:cap:1.0 cap REQ" *)
output wire cap_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:cap:1.0 cap GNT" *)
input wire cap_gnt;
(* X_INTERFACE_INFO = "xilinx.com:interface:cap:1.0 cap REL" *)
input wire cap_rel;
(* X_INTERFACE_INFO = "xilinx.com:display_xdma:int_shared_logic:1.0 pcie3_us_int_shared_logic ints_qpll1lock_out" *)
output wire [1 : 0] int_qpll1lock_out;
(* X_INTERFACE_INFO = "xilinx.com:display_xdma:int_shared_logic:1.0 pcie3_us_int_shared_logic ints_qpll1outrefclk_out" *)
output wire [1 : 0] int_qpll1outrefclk_out;
(* X_INTERFACE_INFO = "xilinx.com:display_xdma:int_shared_logic:1.0 pcie3_us_int_shared_logic ints_qpll1outclk_out" *)
output wire [1 : 0] int_qpll1outclk_out;

  xcl_design_dma_pcie_0_core_top #(
    .COMPONENT_NAME("xdma_0"),
    .PL_UPSTREAM_FACING("true"),
    .TL_LEGACY_MODE_ENABLE("false"),
    .PCIE_BLK_LOCN(0),
    .PL_LINK_CAP_MAX_LINK_WIDTH(8),
    .PL_LINK_CAP_MAX_LINK_SPEED(4),
    .REF_CLK_FREQ(0),
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(256),
    .CORE_CLK_FREQ(2),
    .PLL_TYPE(2),
    .USER_CLK_FREQ(3),
    .SILICON_REV("Pre-Production"),
    .PIPE_SIM("false"),
    .EXT_CH_GT_DRP("false"),
    .PCIE3_DRP("false"),
    .DEDICATE_PERST("true"),
    .SYS_RESET_POLARITY(0),
    .MCAP_ENABLEMENT("PR"),
    .EXT_STARTUP_PRIMITIVE("false"),
    .PF0_VENDOR_ID('H10EE),
    .PF0_DEVICE_ID('H8238),
    .PF0_REVISION_ID('H00),
    .PF0_SUBSYSTEM_VENDOR_ID('H10EE),
    .PF0_SUBSYSTEM_ID('H4432),
    .PF0_CLASS_CODE('H058000),
    .AXILITE_MASTER_APERTURE_SIZE('H0F),
    .AXILITE_MASTER_CONTROL('H4),
    .XDMA_APERTURE_SIZE('H09),
    .XDMA_CONTROL('H4),
    .AXIST_BYPASS_APERTURE_SIZE('H05),
    .AXIST_BYPASS_CONTROL('H0),
    .C_PCIEBAR2AXIBAR_0('H0000000000000000),
    .C_PCIEBAR2AXIBAR_1('H0000000000000000),
    .C_PCIEBAR2AXIBAR_2('H0000000000000000),
    .PF0_INTERRUPT_PIN('H1),
    .PF0_MSI_CAP_MULTIMSGCAP(0),
    .C_COMP_TIMEOUT(0),
    .SHARED_LOGIC(1),
    .SHARED_LOGIC_CLK("false"),
    .SHARED_LOGIC_BOTH("false"),
    .SHARED_LOGIC_GTC("false"),
    .EN_TRANSCEIVER_STATUS_PORTS("false"),
    .IS_BOARD_PROJECT(1),
    .EN_GT_SELECTION("false"),
    .SELECT_QUAD("GTH_Quad_225"),
    .ULTRASCALE("TRUE"),
    .ULTRASCALE_PLUS("FALSE"),
    .V7_GEN3("FALSE"),
    .MSI_ENABLED("true"),
    .DEV_PORT_TYPE(0),
    .XDMA_AXI_INTF_MM(1),
    .XDMA_PCIE_64BIT_EN("false"),
    .XDMA_AXILITE_MASTER("TRUE"),
    .XDMA_AXIST_BYPASS("FALSE"),
    .XDMA_RNUM_CHNL(2),
    .XDMA_WNUM_CHNL(2),
    .XDMA_AXILITE_SLAVE("FALSE"),
    .XDMA_NUM_USR_IRQ(16),
    .XDMA_RNUM_RIDS(32),
    .XDMA_WNUM_RIDS(16),
    .C_M_AXI_ID_WIDTH(2),
    .C_AXIBAR_NUM(1),
    .C_FAMILY("kintexu"),
    .XDMA_NUM_PCIE_TAG(64),
    .EN_AXI_MASTER_IF("TRUE"),
    .EN_WCHNL_0("TRUE"),
    .EN_WCHNL_1("TRUE"),
    .EN_WCHNL_2("FALSE"),
    .EN_WCHNL_3("FALSE"),
    .EN_WCHNL_4("FALSE"),
    .EN_WCHNL_5("FALSE"),
    .EN_WCHNL_6("FALSE"),
    .EN_WCHNL_7("FALSE"),
    .EN_RCHNL_0("TRUE"),
    .EN_RCHNL_1("TRUE"),
    .EN_RCHNL_2("FALSE"),
    .EN_RCHNL_3("FALSE"),
    .EN_RCHNL_4("FALSE"),
    .EN_RCHNL_5("FALSE"),
    .EN_RCHNL_6("FALSE"),
    .EN_RCHNL_7("FALSE"),
    .XDMA_DSC_BYPASS("FALSE"),
    .C_METERING_ON(1),
    .RX_DETECT(0),
    .DSC_BYPASS_RD(0),
    .DSC_BYPASS_WR(0),
    .XDMA_STS_PORTS("FALSE"),
    .MSIX_ENABLED("FALSE"),
    .WR_CH0_ENABLED("FALSE"),
    .WR_CH1_ENABLED("FALSE"),
    .WR_CH2_ENABLED("FALSE"),
    .WR_CH3_ENABLED("FALSE"),
    .RD_CH0_ENABLED("FALSE"),
    .RD_CH1_ENABLED("FALSE"),
    .RD_CH2_ENABLED("FALSE"),
    .RD_CH3_ENABLED("FALSE"),
    .CFG_MGMT_IF("FALSE"),
    .RQ_SEQ_NUM_IGNORE(0),
    .CFG_EXT_IF("FALSE"),
    .C_PARITY_CHECK(0),
    .C_PARITY_GEN(0),
    .C_PARITY_PROP(0),
    .EN_DEBUG_PORTS("FALSE"),
    .VU9P_BOARD("FALSE"),
    .ENABLE_JTAG_DBG("FALSE")
  ) inst (
    .sys_clk(sys_clk),
    .sys_clk_gt(sys_clk_gt),
    .sys_rst_n(sys_rst_n),
    .user_lnk_up(user_lnk_up),
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_txn(pci_exp_txn),
    .pci_exp_rxp(pci_exp_rxp),
    .pci_exp_rxn(pci_exp_rxn),
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .usr_irq_req(usr_irq_req),
    .usr_irq_ack(usr_irq_ack),
    .msi_enable(msi_enable),
    .msi_vector_width(msi_vector_width),
    .m_axi_awready(m_axi_awready),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(m_axi_bid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(m_axi_rid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_ruser(32'B0),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_awid(m_axi_awid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wuser(),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(m_axi_arid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_rready(m_axi_rready),
    .m_axil_awaddr(m_axil_awaddr),
    .m_axil_awprot(m_axil_awprot),
    .m_axil_awvalid(m_axil_awvalid),
    .m_axil_awready(m_axil_awready),
    .m_axil_wdata(m_axil_wdata),
    .m_axil_wstrb(m_axil_wstrb),
    .m_axil_wvalid(m_axil_wvalid),
    .m_axil_wready(m_axil_wready),
    .m_axil_bvalid(m_axil_bvalid),
    .m_axil_bresp(m_axil_bresp),
    .m_axil_bready(m_axil_bready),
    .m_axil_araddr(m_axil_araddr),
    .m_axil_arprot(m_axil_arprot),
    .m_axil_arvalid(m_axil_arvalid),
    .m_axil_arready(m_axil_arready),
    .m_axil_rdata(m_axil_rdata),
    .m_axil_rresp(m_axil_rresp),
    .m_axil_rvalid(m_axil_rvalid),
    .m_axil_rready(m_axil_rready),
    .cfg_mgmt_addr(19'B0),
    .cfg_mgmt_write(1'B0),
    .cfg_mgmt_write_data(32'B0),
    .cfg_mgmt_byte_enable(4'B0),
    .cfg_mgmt_read(1'B0),
    .cfg_mgmt_read_data(),
    .cfg_mgmt_read_write_done(),
    .cfg_mgmt_type1_cfg_reg_access(1'B0),
    .drp_rdy(),
    .drp_do(),
    .drp_clk(1'B0),
    .drp_en(1'B0),
    .drp_we(1'B0),
    .drp_addr(11'B0),
    .drp_di(16'B0),
    .common_commands_in(26'B0),
    .pipe_rx_0_sigs(84'B0),
    .pipe_rx_1_sigs(84'B0),
    .pipe_rx_2_sigs(84'B0),
    .pipe_rx_3_sigs(84'B0),
    .pipe_rx_4_sigs(84'B0),
    .pipe_rx_5_sigs(84'B0),
    .pipe_rx_6_sigs(84'B0),
    .pipe_rx_7_sigs(84'B0),
    .pipe_rx_8_sigs(84'B0),
    .pipe_rx_9_sigs(84'B0),
    .pipe_rx_10_sigs(84'B0),
    .pipe_rx_11_sigs(84'B0),
    .pipe_rx_12_sigs(84'B0),
    .pipe_rx_13_sigs(84'B0),
    .pipe_rx_14_sigs(84'B0),
    .pipe_rx_15_sigs(84'B0),
    .common_commands_out(),
    .pipe_tx_0_sigs(),
    .pipe_tx_1_sigs(),
    .pipe_tx_2_sigs(),
    .pipe_tx_3_sigs(),
    .pipe_tx_4_sigs(),
    .pipe_tx_5_sigs(),
    .pipe_tx_6_sigs(),
    .pipe_tx_7_sigs(),
    .pipe_tx_8_sigs(),
    .pipe_tx_9_sigs(),
    .pipe_tx_10_sigs(),
    .pipe_tx_11_sigs(),
    .pipe_tx_12_sigs(),
    .pipe_tx_13_sigs(),
    .pipe_tx_14_sigs(),
    .pipe_tx_15_sigs(),
    .m_axib_awid(),
    .m_axib_awaddr(),
    .m_axib_awlen(),
    .m_axib_awsize(),
    .m_axib_awburst(),
    .m_axib_awprot(),
    .m_axib_awvalid(),
    .m_axib_awready(1'B0),
    .m_axib_awlock(),
    .m_axib_awcache(),
    .m_axib_wdata(),
    .m_axib_wstrb(),
    .m_axib_wlast(),
    .m_axib_wvalid(),
    .m_axib_wready(1'B0),
    .m_axib_wuser(),
    .m_axib_bid(2'B0),
    .m_axib_bresp(2'B0),
    .m_axib_bvalid(1'B0),
    .m_axib_bready(),
    .m_axib_arid(),
    .m_axib_araddr(),
    .m_axib_arlen(),
    .m_axib_arsize(),
    .m_axib_arburst(),
    .m_axib_arprot(),
    .m_axib_arvalid(),
    .m_axib_arready(1'B0),
    .m_axib_arlock(),
    .m_axib_arcache(),
    .m_axib_rid(2'B0),
    .m_axib_rdata(256'B0),
    .m_axib_ruser(32'B0),
    .m_axib_rresp(2'B0),
    .m_axib_rlast(1'B0),
    .m_axib_rvalid(1'B0),
    .m_axib_rready(),
    .s_axis_c2h_tdata_0(256'B0),
    .s_axis_c2h_tlast_0(1'B0),
    .s_axis_c2h_tvalid_0(1'B0),
    .s_axis_c2h_tready_0(),
    .s_axis_c2h_tuser_0(32'B0),
    .s_axis_c2h_tkeep_0(32'B0),
    .m_axis_h2c_tdata_0(),
    .m_axis_h2c_tlast_0(),
    .m_axis_h2c_tvalid_0(),
    .m_axis_h2c_tready_0(1'B0),
    .m_axis_h2c_tuser_0(),
    .m_axis_h2c_tkeep_0(),
    .s_axis_c2h_tdata_1(256'B0),
    .s_axis_c2h_tlast_1(1'B0),
    .s_axis_c2h_tvalid_1(1'B0),
    .s_axis_c2h_tready_1(),
    .s_axis_c2h_tuser_1(32'B0),
    .s_axis_c2h_tkeep_1(32'B0),
    .m_axis_h2c_tdata_1(),
    .m_axis_h2c_tlast_1(),
    .m_axis_h2c_tvalid_1(),
    .m_axis_h2c_tready_1(1'B0),
    .m_axis_h2c_tuser_1(),
    .m_axis_h2c_tkeep_1(),
    .s_axis_c2h_tdata_2(256'B0),
    .s_axis_c2h_tlast_2(1'B0),
    .s_axis_c2h_tvalid_2(1'B0),
    .s_axis_c2h_tready_2(),
    .s_axis_c2h_tuser_2(32'B0),
    .s_axis_c2h_tkeep_2(32'B0),
    .m_axis_h2c_tdata_2(),
    .m_axis_h2c_tlast_2(),
    .m_axis_h2c_tvalid_2(),
    .m_axis_h2c_tready_2(1'B0),
    .m_axis_h2c_tuser_2(),
    .m_axis_h2c_tkeep_2(),
    .s_axis_c2h_tdata_3(256'B0),
    .s_axis_c2h_tlast_3(1'B0),
    .s_axis_c2h_tvalid_3(1'B0),
    .s_axis_c2h_tready_3(),
    .s_axis_c2h_tuser_3(32'B0),
    .s_axis_c2h_tkeep_3(32'B0),
    .m_axis_h2c_tdata_3(),
    .m_axis_h2c_tlast_3(),
    .m_axis_h2c_tvalid_3(),
    .m_axis_h2c_tready_3(1'B0),
    .m_axis_h2c_tuser_3(),
    .m_axis_h2c_tkeep_3(),
    .s_axil_awaddr(32'B0),
    .s_axil_awprot(3'B0),
    .s_axil_awvalid(1'B0),
    .s_axil_awready(),
    .s_axil_wdata(32'B0),
    .s_axil_wstrb(4'B0),
    .s_axil_wvalid(1'B0),
    .s_axil_wready(),
    .s_axil_bvalid(),
    .s_axil_bresp(),
    .s_axil_bready(1'B0),
    .s_axil_araddr(32'B0),
    .s_axil_arprot(3'B0),
    .s_axil_arvalid(1'B0),
    .s_axil_arready(),
    .s_axil_rdata(),
    .s_axil_rresp(),
    .s_axil_rvalid(),
    .s_axil_rready(1'B0),
    .c2h_dsc_byp_ready_0(),
    .c2h_dsc_byp_src_addr_0(64'B0),
    .c2h_dsc_byp_dst_addr_0(64'B0),
    .c2h_dsc_byp_len_0(28'B0),
    .c2h_dsc_byp_ctl_0(16'B0),
    .c2h_dsc_byp_load_0(1'B0),
    .c2h_dsc_byp_ready_1(),
    .c2h_dsc_byp_src_addr_1(64'B0),
    .c2h_dsc_byp_dst_addr_1(64'B0),
    .c2h_dsc_byp_len_1(28'B0),
    .c2h_dsc_byp_ctl_1(16'B0),
    .c2h_dsc_byp_load_1(1'B0),
    .c2h_dsc_byp_ready_2(),
    .c2h_dsc_byp_src_addr_2(64'B0),
    .c2h_dsc_byp_dst_addr_2(64'B0),
    .c2h_dsc_byp_len_2(28'B0),
    .c2h_dsc_byp_ctl_2(16'B0),
    .c2h_dsc_byp_load_2(1'B0),
    .c2h_dsc_byp_ready_3(),
    .c2h_dsc_byp_src_addr_3(64'B0),
    .c2h_dsc_byp_dst_addr_3(64'B0),
    .c2h_dsc_byp_len_3(28'B0),
    .c2h_dsc_byp_ctl_3(16'B0),
    .c2h_dsc_byp_load_3(1'B0),
    .h2c_dsc_byp_ready_0(),
    .h2c_dsc_byp_src_addr_0(64'B0),
    .h2c_dsc_byp_dst_addr_0(64'B0),
    .h2c_dsc_byp_len_0(28'B0),
    .h2c_dsc_byp_ctl_0(16'B0),
    .h2c_dsc_byp_load_0(1'B0),
    .h2c_dsc_byp_ready_1(),
    .h2c_dsc_byp_src_addr_1(64'B0),
    .h2c_dsc_byp_dst_addr_1(64'B0),
    .h2c_dsc_byp_len_1(28'B0),
    .h2c_dsc_byp_ctl_1(16'B0),
    .h2c_dsc_byp_load_1(1'B0),
    .h2c_dsc_byp_ready_2(),
    .h2c_dsc_byp_src_addr_2(64'B0),
    .h2c_dsc_byp_dst_addr_2(64'B0),
    .h2c_dsc_byp_len_2(28'B0),
    .h2c_dsc_byp_ctl_2(16'B0),
    .h2c_dsc_byp_load_2(1'B0),
    .h2c_dsc_byp_ready_3(),
    .h2c_dsc_byp_src_addr_3(64'B0),
    .h2c_dsc_byp_dst_addr_3(64'B0),
    .h2c_dsc_byp_len_3(28'B0),
    .h2c_dsc_byp_ctl_3(16'B0),
    .h2c_dsc_byp_load_3(1'B0),
    .c2h_sts_0(),
    .h2c_sts_0(),
    .c2h_sts_1(),
    .h2c_sts_1(),
    .c2h_sts_2(),
    .h2c_sts_2(),
    .c2h_sts_3(),
    .h2c_sts_3(),
    .pipe_txprbssel(3'B0),
    .pipe_rxprbssel(3'B0),
    .pipe_txprbsforceerr(1'B0),
    .pipe_rxprbscntreset(1'B0),
    .pipe_loopback(3'B0),
    .pipe_rxprbserr(),
    .pipe_txinhibit(8'B0),
    .pipe_rst_fsm(),
    .pipe_qrst_fsm(),
    .pipe_rate_fsm(),
    .pipe_sync_fsm_tx(),
    .pipe_sync_fsm_rx(),
    .pipe_drp_fsm(),
    .pipe_rst_idle(),
    .pipe_qrst_idle(),
    .pipe_rate_idle(),
    .pipe_eyescandataerror(),
    .pipe_rxstatus(),
    .pipe_dmonitorout(),
    .pipe_cpll_lock(),
    .pipe_qpll_lock(),
    .pipe_rxpmaresetdone(),
    .pipe_rxbufstatus(),
    .pipe_txphaligndone(),
    .pipe_txphinitdone(),
    .pipe_txdlysresetdone(),
    .pipe_rxphaligndone(),
    .pipe_rxdlysresetdone(),
    .pipe_rxsyncdone(),
    .pipe_rxdisperr(),
    .pipe_rxnotintable(),
    .pipe_rxcommadet(),
    .gt_ch_drp_rdy(),
    .pipe_debug_0(),
    .pipe_debug_1(),
    .pipe_debug_2(),
    .pipe_debug_3(),
    .pipe_debug_4(),
    .pipe_debug_5(),
    .pipe_debug_6(),
    .pipe_debug_7(),
    .pipe_debug_8(),
    .pipe_debug_9(),
    .pipe_debug(),
    .gt_pcieuserratedone(8'B0),
    .gt_loopback(24'B0),
    .gt_txprbsforceerr(8'B0),
    .gt_txinhibit(8'B0),
    .gt_txprbssel(32'B0),
    .gt_rxprbssel(32'B0),
    .gt_rxprbscntreset(8'B0),
    .gt_txelecidle(),
    .gt_txresetdone(),
    .gt_rxresetdone(),
    .gt_rxpmaresetdone(),
    .gt_txphaligndone(),
    .gt_txphinitdone(),
    .gt_txdlysresetdone(),
    .gt_rxphaligndone(),
    .gt_rxdlysresetdone(),
    .gt_rxsyncdone(),
    .gt_eyescandataerror(),
    .gt_rxprbserr(),
    .gt_dmonfiforeset(8'B0),
    .gt_dmonitorclk(8'B0),
    .gt_dmonitorout(),
    .gt_rxcommadet(),
    .gt_phystatus(),
    .gt_rxvalid(),
    .gt_rxcdrlock(),
    .gt_pcierateidle(),
    .gt_pcieuserratestart(),
    .gt_gtpowergood(),
    .gt_cplllock(),
    .gt_rxoutclk(),
    .gt_rxrecclkout(),
    .gt_qpll1lock(),
    .gt_rxstatus(),
    .gt_rxbufstatus(),
    .gt_bufgtdiv(),
    .phy_txeq_ctrl(),
    .phy_txeq_preset(),
    .phy_rst_fsm(),
    .phy_txeq_fsm(),
    .phy_rxeq_fsm(),
    .phy_rst_idle(),
    .phy_rrst_n(),
    .phy_prst_n(),
    .ext_ch_gt_drpen(8'B0),
    .ext_ch_gt_drpwe(8'B0),
    .ext_ch_gt_drpaddr(72'B0),
    .ext_ch_gt_drpdi(128'B0),
    .ext_ch_gt_drpclk(),
    .ext_ch_gt_drprdy(),
    .ext_ch_gt_drpdo(),
    .mcap_design_switch(mcap_design_switch),
    .mcap_eos_in(1'B0),
    .startup_cfgclk(),
    .startup_cfgmclk(),
    .startup_di(),
    .startup_eos(),
    .startup_preq(),
    .startup_do(4'B0),
    .startup_dts(4'B0),
    .startup_fcsbo(1'B0),
    .startup_fcsbts(1'B0),
    .startup_gsr(1'B0),
    .startup_gts(1'B0),
    .startup_keyclearb(1'B1),
    .startup_pack(1'B0),
    .startup_usrcclko(1'B0),
    .startup_usrcclkts(1'B1),
    .startup_usrdoneo(1'B0),
    .startup_usrdonets(1'B1),
    .cap_req(cap_req),
    .cap_gnt(cap_gnt),
    .cap_rel(cap_rel),
    .cfg_ext_read_received(),
    .cfg_ext_write_received(),
    .cfg_ext_register_number(),
    .cfg_ext_function_number(),
    .cfg_ext_write_data(),
    .cfg_ext_write_byte_enable(),
    .cfg_ext_read_data(32'B0),
    .cfg_ext_read_data_valid(1'B0),
    .m_axis_rq_tdata_out(),
    .m_axis_rq_tlast_out(),
    .m_axis_rq_tuser_out(),
    .m_axis_rq_tkeep_out(),
    .m_axis_rq_tready_out(),
    .m_axis_rq_tvalid_out(),
    .s_axis_rc_tdata_out(),
    .s_axis_rc_tuser_out(),
    .s_axis_rc_tlast_out(),
    .s_axis_rc_tkeep_out(),
    .s_axis_rc_tvalid_out(),
    .s_axis_rc_tready_out(),
    .s_axis_cq_tdata_out(),
    .s_axis_cq_tuser_out(),
    .s_axis_cq_tlast_out(),
    .s_axis_cq_tkeep_out(),
    .s_axis_cq_tvalid_out(),
    .s_axis_cq_tready_out(),
    .m_axis_cc_tdata_out(),
    .m_axis_cc_tuser_out(),
    .m_axis_cc_tlast_out(),
    .m_axis_cc_tkeep_out(),
    .m_axis_cc_tvalid_out(),
    .m_axis_cc_tready_out(),
    .pipe_pclk_in(1'B0),
    .pipe_rxusrclk_in(1'B0),
    .pipe_rxoutclk_in(8'B0),
    .pipe_dclk_in(1'B0),
    .pipe_userclk1_in(1'B0),
    .pipe_userclk2_in(1'B0),
    .pipe_oobclk_in(1'B0),
    .pipe_mmcm_lock_in(1'B1),
    .pipe_txoutclk_out(),
    .pipe_rxoutclk_out(),
    .pipe_mmcm_rst_n(1'B1),
    .pipe_pclk_sel_out(),
    .pipe_gen3_out(),
    .ext_qpll1refclk(),
    .ext_qpll1rate(),
    .ext_qpll1pd(),
    .ext_qpll1reset(),
    .ext_qpll1lock_out(2'B0),
    .ext_qpll1outclk_out(2'B0),
    .ext_qpll1outrefclk_out(2'B0),
    .int_qpll1lock_out(int_qpll1lock_out),
    .int_qpll1outrefclk_out(int_qpll1outrefclk_out),
    .int_qpll1outclk_out(int_qpll1outclk_out),
    .int_pclk_out_slave(),
    .int_pipe_rxusrclk_out(),
    .int_rxoutclk_out(),
    .int_dclk_out(),
    .int_userclk1_out(),
    .int_userclk2_out(),
    .int_oobclk_out(),
    .int_qplllock_out(),
    .int_qplloutclk_out(),
    .int_qplloutrefclk_out(),
    .int_pclk_sel_slave(8'B0),
    .qpll_drp_crscode(12'B0),
    .qpll_drp_fsm(18'B0),
    .qpll_drp_done(2'B0),
    .qpll_drp_reset(2'B0),
    .qpll_qplllock(2'B0),
    .qpll_qplloutclk(2'B0),
    .qpll_qplloutrefclk(2'B0),
    .qpll_qplld(),
    .qpll_qpllreset(),
    .qpll_drp_clk(),
    .qpll_drp_rst_n(),
    .qpll_drp_ovrd(),
    .qpll_drp_gen3(),
    .qpll_drp_start(),
    .gt_qpll0lock(),
    .gt_gen34_eios_det(),
    .gt_txoutclk(),
    .gt_txoutclkfabric(),
    .gt_rxoutclkfabric(),
    .gt_txoutclkpcs(),
    .gt_rxoutclkpcs(),
    .gt_txpmareset(8'B0),
    .gt_rxpmareset(8'B0),
    .gt_txpcsreset(8'B0),
    .gt_rxpcsreset(8'B0),
    .gt_rxbufreset(8'B0),
    .gt_rxcdrreset(8'B0),
    .gt_rxdfelpmreset(8'B0),
    .gt_txprogdivresetdone(),
    .gt_txpmaresetdone(),
    .gt_txsyncdone(),
    .gt_rxprbslocked(),
    .pipe_tx0_rcvr_det(),
    .pipe_clk(),
    .sys_clk_bufg(),
    .pipe_tx0_powerdown()
  );
endmodule
