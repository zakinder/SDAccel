-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 10:31:54 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/xcl_design_debug_bridge_xsdbm_0_sim_netlist.vhdl
-- Design      : xcl_design_debug_bridge_xsdbm_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_debug_bridge_xsdbm_0_bd_6ad6 is
  port (
    bscanid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    capture : in STD_LOGIC;
    clk : in STD_LOGIC;
    drck : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    tck : in STD_LOGIC;
    tdi : in STD_LOGIC;
    tdo : out STD_LOGIC;
    tms : in STD_LOGIC;
    update : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of xcl_design_debug_bridge_xsdbm_0_bd_6ad6 : entity is "xcl_design_debug_bridge_xsdbm_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_debug_bridge_xsdbm_0_bd_6ad6 : entity is "bd_6ad6";
end xcl_design_debug_bridge_xsdbm_0_bd_6ad6;

architecture STRUCTURE of xcl_design_debug_bridge_xsdbm_0_bd_6ad6 is
  component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_lut_buffer_0 is
  port (
    tdo_o : out STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_lut_buffer_0;
  component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_xsdbm_0 is
  port (
    update : in STD_LOGIC;
    capture : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    tck : in STD_LOGIC;
    tms : in STD_LOGIC;
    tdi : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    drck : in STD_LOGIC;
    tdo : out STD_LOGIC;
    bscanid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  end component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_xsdbm_0;
  signal xsdbm_bscanid : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xsdbm_tdo : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of lut_buffer : label is "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.4_sdx";
  attribute X_CORE_INFO of xsdbm : label is "xsdbm_v2_0_2_xsdbm,Vivado 2016.4_sdx";
begin
lut_buffer: component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_lut_buffer_0
     port map (
      bscanid_i(31 downto 0) => xsdbm_bscanid(31 downto 0),
      bscanid_o(31 downto 0) => bscanid(31 downto 0),
      tdo_i => xsdbm_tdo,
      tdo_o => tdo
    );
xsdbm: component xcl_design_debug_bridge_xsdbm_0_bd_6ad6_xsdbm_0
     port map (
      bscanid(31 downto 0) => xsdbm_bscanid(31 downto 0),
      capture => capture,
      clk => clk,
      drck => drck,
      reset => reset,
      runtest => runtest,
      sel => sel,
      shift => shift,
      tck => tck,
      tdi => tdi,
      tdo => xsdbm_tdo,
      tms => tms,
      update => update
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_debug_bridge_xsdbm_0 is
  port (
    clk : in STD_LOGIC;
    drck : in STD_LOGIC;
    shift : in STD_LOGIC;
    tdi : in STD_LOGIC;
    update : in STD_LOGIC;
    sel : in STD_LOGIC;
    tdo : out STD_LOGIC;
    tms : in STD_LOGIC;
    tck : in STD_LOGIC;
    runtest : in STD_LOGIC;
    reset : in STD_LOGIC;
    capture : in STD_LOGIC;
    bscanid : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_debug_bridge_xsdbm_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_debug_bridge_xsdbm_0 : entity is "xcl_design_debug_bridge_xsdbm_0,bd_6ad6,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xcl_design_debug_bridge_xsdbm_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xcl_design_debug_bridge_xsdbm_0 : entity is "bd_6ad6,Vivado 2016.4_sdx";
end xcl_design_debug_bridge_xsdbm_0;

architecture STRUCTURE of xcl_design_debug_bridge_xsdbm_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "xcl_design_debug_bridge_xsdbm_0.hwdef";
begin
inst: entity work.xcl_design_debug_bridge_xsdbm_0_bd_6ad6
     port map (
      bscanid(31 downto 0) => bscanid(31 downto 0),
      capture => capture,
      clk => clk,
      drck => drck,
      reset => reset,
      runtest => runtest,
      sel => sel,
      shift => shift,
      tck => tck,
      tdi => tdi,
      tdo => tdo,
      tms => tms,
      update => update
    );
end STRUCTURE;
