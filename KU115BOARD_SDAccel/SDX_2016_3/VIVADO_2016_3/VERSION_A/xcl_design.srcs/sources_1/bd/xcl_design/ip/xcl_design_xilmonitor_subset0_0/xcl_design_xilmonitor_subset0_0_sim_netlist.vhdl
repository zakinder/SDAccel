-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue May 16 06:23:22 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Sim/sdaccel_ku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_xilmonitor_subset0_0/xcl_design_xilmonitor_subset0_0_sim_netlist.vhdl
-- Design      : xcl_design_xilmonitor_subset0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 151 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    transfer_dropped : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is "kintexu";
  attribute C_M_AXIS_SIGNAL_SET : string;
  attribute C_M_AXIS_SIGNAL_SET of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is "32'b00000000000000000000000000100111";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 256;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute C_S_AXIS_SIGNAL_SET : string;
  attribute C_S_AXIS_SIGNAL_SET of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is "32'b00000000000000000000000000100111";
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 152;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 : entity is "top_xcl_design_xilmonitor_subset0_0";
end xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0;

architecture STRUCTURE of xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 151 downto 0 );
  signal \^s_axis_tid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axis_tstrb\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(151 downto 0) <= s_axis_tdata(151 downto 0);
  \^s_axis_tid\(0) <= s_axis_tid(0);
  \^s_axis_tstrb\(18 downto 0) <= s_axis_tstrb(18 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(255) <= \<const0>\;
  m_axis_tdata(254) <= \<const0>\;
  m_axis_tdata(253) <= \<const0>\;
  m_axis_tdata(252) <= \<const0>\;
  m_axis_tdata(251) <= \<const0>\;
  m_axis_tdata(250) <= \<const0>\;
  m_axis_tdata(249) <= \<const0>\;
  m_axis_tdata(248) <= \<const0>\;
  m_axis_tdata(247) <= \<const0>\;
  m_axis_tdata(246) <= \<const0>\;
  m_axis_tdata(245) <= \<const0>\;
  m_axis_tdata(244) <= \<const0>\;
  m_axis_tdata(243) <= \<const0>\;
  m_axis_tdata(242) <= \<const0>\;
  m_axis_tdata(241) <= \<const0>\;
  m_axis_tdata(240) <= \<const0>\;
  m_axis_tdata(239) <= \<const0>\;
  m_axis_tdata(238) <= \<const0>\;
  m_axis_tdata(237) <= \<const0>\;
  m_axis_tdata(236) <= \<const0>\;
  m_axis_tdata(235) <= \<const0>\;
  m_axis_tdata(234) <= \<const0>\;
  m_axis_tdata(233) <= \<const0>\;
  m_axis_tdata(232) <= \<const0>\;
  m_axis_tdata(231) <= \<const0>\;
  m_axis_tdata(230) <= \<const0>\;
  m_axis_tdata(229) <= \<const0>\;
  m_axis_tdata(228) <= \<const0>\;
  m_axis_tdata(227) <= \<const0>\;
  m_axis_tdata(226) <= \<const0>\;
  m_axis_tdata(225) <= \<const0>\;
  m_axis_tdata(224) <= \<const0>\;
  m_axis_tdata(223) <= \<const0>\;
  m_axis_tdata(222) <= \<const0>\;
  m_axis_tdata(221) <= \<const0>\;
  m_axis_tdata(220) <= \<const0>\;
  m_axis_tdata(219) <= \<const0>\;
  m_axis_tdata(218) <= \<const0>\;
  m_axis_tdata(217) <= \<const0>\;
  m_axis_tdata(216) <= \<const0>\;
  m_axis_tdata(215) <= \<const0>\;
  m_axis_tdata(214) <= \<const0>\;
  m_axis_tdata(213) <= \<const0>\;
  m_axis_tdata(212) <= \<const0>\;
  m_axis_tdata(211) <= \<const0>\;
  m_axis_tdata(210) <= \<const0>\;
  m_axis_tdata(209) <= \<const0>\;
  m_axis_tdata(208) <= \<const0>\;
  m_axis_tdata(207) <= \<const0>\;
  m_axis_tdata(206) <= \<const0>\;
  m_axis_tdata(205) <= \<const0>\;
  m_axis_tdata(204) <= \<const0>\;
  m_axis_tdata(203) <= \<const0>\;
  m_axis_tdata(202) <= \<const0>\;
  m_axis_tdata(201) <= \<const0>\;
  m_axis_tdata(200) <= \<const0>\;
  m_axis_tdata(199) <= \<const0>\;
  m_axis_tdata(198) <= \<const0>\;
  m_axis_tdata(197) <= \<const0>\;
  m_axis_tdata(196) <= \<const0>\;
  m_axis_tdata(195) <= \<const0>\;
  m_axis_tdata(194) <= \<const0>\;
  m_axis_tdata(193) <= \<const0>\;
  m_axis_tdata(192) <= \<const0>\;
  m_axis_tdata(191) <= \<const0>\;
  m_axis_tdata(190) <= \<const0>\;
  m_axis_tdata(189) <= \<const0>\;
  m_axis_tdata(188) <= \<const0>\;
  m_axis_tdata(187) <= \<const0>\;
  m_axis_tdata(186) <= \<const0>\;
  m_axis_tdata(185) <= \<const0>\;
  m_axis_tdata(184) <= \<const0>\;
  m_axis_tdata(183) <= \<const0>\;
  m_axis_tdata(182) <= \<const0>\;
  m_axis_tdata(181) <= \<const0>\;
  m_axis_tdata(180) <= \<const0>\;
  m_axis_tdata(179) <= \<const0>\;
  m_axis_tdata(178) <= \<const0>\;
  m_axis_tdata(177) <= \<const0>\;
  m_axis_tdata(176) <= \<const0>\;
  m_axis_tdata(175) <= \<const0>\;
  m_axis_tdata(174) <= \<const0>\;
  m_axis_tdata(173) <= \<const0>\;
  m_axis_tdata(172) <= \<const0>\;
  m_axis_tdata(171) <= \<const0>\;
  m_axis_tdata(170) <= \<const0>\;
  m_axis_tdata(169) <= \<const0>\;
  m_axis_tdata(168) <= \<const0>\;
  m_axis_tdata(167) <= \<const0>\;
  m_axis_tdata(166) <= \<const0>\;
  m_axis_tdata(165) <= \<const0>\;
  m_axis_tdata(164) <= \<const0>\;
  m_axis_tdata(163) <= \<const0>\;
  m_axis_tdata(162) <= \<const0>\;
  m_axis_tdata(161) <= \<const0>\;
  m_axis_tdata(160) <= \<const0>\;
  m_axis_tdata(159) <= \<const0>\;
  m_axis_tdata(158) <= \<const0>\;
  m_axis_tdata(157) <= \<const0>\;
  m_axis_tdata(156) <= \<const0>\;
  m_axis_tdata(155) <= \<const0>\;
  m_axis_tdata(154) <= \<const0>\;
  m_axis_tdata(153) <= \<const0>\;
  m_axis_tdata(152) <= \<const0>\;
  m_axis_tdata(151 downto 0) <= \^s_axis_tdata\(151 downto 0);
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \^s_axis_tid\(0);
  m_axis_tkeep(31) <= \<const0>\;
  m_axis_tkeep(30) <= \<const0>\;
  m_axis_tkeep(29) <= \<const0>\;
  m_axis_tkeep(28) <= \<const0>\;
  m_axis_tkeep(27) <= \<const0>\;
  m_axis_tkeep(26) <= \<const0>\;
  m_axis_tkeep(25) <= \<const0>\;
  m_axis_tkeep(24) <= \<const0>\;
  m_axis_tkeep(23) <= \<const0>\;
  m_axis_tkeep(22) <= \<const0>\;
  m_axis_tkeep(21) <= \<const0>\;
  m_axis_tkeep(20) <= \<const0>\;
  m_axis_tkeep(19) <= \<const0>\;
  m_axis_tkeep(18) <= \<const0>\;
  m_axis_tkeep(17) <= \<const0>\;
  m_axis_tkeep(16) <= \<const0>\;
  m_axis_tkeep(15) <= \<const0>\;
  m_axis_tkeep(14) <= \<const0>\;
  m_axis_tkeep(13) <= \<const0>\;
  m_axis_tkeep(12) <= \<const0>\;
  m_axis_tkeep(11) <= \<const0>\;
  m_axis_tkeep(10) <= \<const0>\;
  m_axis_tkeep(9) <= \<const0>\;
  m_axis_tkeep(8) <= \<const0>\;
  m_axis_tkeep(7) <= \<const0>\;
  m_axis_tkeep(6) <= \<const0>\;
  m_axis_tkeep(5) <= \<const0>\;
  m_axis_tkeep(4) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(31) <= \<const1>\;
  m_axis_tstrb(30) <= \<const1>\;
  m_axis_tstrb(29) <= \<const1>\;
  m_axis_tstrb(28) <= \<const1>\;
  m_axis_tstrb(27) <= \<const1>\;
  m_axis_tstrb(26) <= \<const1>\;
  m_axis_tstrb(25) <= \<const1>\;
  m_axis_tstrb(24) <= \<const1>\;
  m_axis_tstrb(23) <= \<const1>\;
  m_axis_tstrb(22) <= \<const1>\;
  m_axis_tstrb(21) <= \<const1>\;
  m_axis_tstrb(20) <= \<const1>\;
  m_axis_tstrb(19) <= \<const1>\;
  m_axis_tstrb(18 downto 0) <= \^s_axis_tstrb\(18 downto 0);
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
  sparse_tkeep_removed <= \<const0>\;
  transfer_dropped <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_xilmonitor_subset0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 151 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_xilmonitor_subset0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_xilmonitor_subset0_0 : entity is "xcl_design_xilmonitor_subset0_0,top_xcl_design_xilmonitor_subset0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_xilmonitor_subset0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_xilmonitor_subset0_0 : entity is "top_xcl_design_xilmonitor_subset0_0,Vivado 2016.3_sdx";
end xcl_design_xilmonitor_subset0_0;

architecture STRUCTURE of xcl_design_xilmonitor_subset0_0 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_transfer_dropped_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintexu";
  attribute C_M_AXIS_SIGNAL_SET : string;
  attribute C_M_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000100111";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 256;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_SIGNAL_SET : string;
  attribute C_S_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000100111";
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 152;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
begin
inst: entity work.xcl_design_xilmonitor_subset0_0_top_xcl_design_xilmonitor_subset0_0
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(255 downto 0) => m_axis_tdata(255 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(31 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(31 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(31 downto 0) => m_axis_tstrb(31 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(151 downto 0) => s_axis_tdata(151 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => s_axis_tid(0),
      s_axis_tkeep(18 downto 0) => B"1111111111111111111",
      s_axis_tlast => '1',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(18 downto 0) => s_axis_tstrb(18 downto 0),
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sparse_tkeep_removed => NLW_inst_sparse_tkeep_removed_UNCONNECTED,
      transfer_dropped => NLW_inst_transfer_dropped_UNCONNECTED
    );
end STRUCTURE;
