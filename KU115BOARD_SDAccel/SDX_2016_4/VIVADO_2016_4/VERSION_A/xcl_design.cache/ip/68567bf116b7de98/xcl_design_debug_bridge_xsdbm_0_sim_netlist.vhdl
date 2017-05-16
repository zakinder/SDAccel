-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
-- Date        : Tue May 16 06:38:42 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xcl_design_debug_bridge_xsdbm_0_sim_netlist.vhdl
-- Design      : xcl_design_debug_bridge_xsdbm_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6 is
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
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6 : entity is "xcl_design_debug_bridge_xsdbm_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_lut_buffer_0 is
  port (
    tdo_o : out STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_lut_buffer_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_xsdbm_0 is
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
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_xsdbm_0;
  signal xsdbm_bscanid : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xsdbm_tdo : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of lut_buffer : label is "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.3_sdx";
  attribute X_CORE_INFO of xsdbm : label is "xsdbm_v2_0_1_xsdbm,Vivado 2016.3_sdx";
begin
lut_buffer: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_lut_buffer_0
     port map (
      bscanid_i(31 downto 0) => xsdbm_bscanid(31 downto 0),
      bscanid_o(31 downto 0) => bscanid(31 downto 0),
      tdo_i => xsdbm_tdo,
      tdo_o => tdo
    );
xsdbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6_xsdbm_0
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xcl_design_debug_bridge_xsdbm_0,bd_6ad6,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_6ad6,Vivado 2016.3_sdx";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "xcl_design_debug_bridge_xsdbm_0.hwdef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_6ad6
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
