-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 09:58:26 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_startup_primitive_0/xcl_design_startup_primitive_0_stub.vhdl
-- Design      : xcl_design_startup_primitive_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xcl_design_startup_primitive_0 is
  Port ( 
    flash_DQ_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_DQ_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_DQ_tri_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    flash_CS_N : in STD_LOGIC;
    flash_CS_N_tri_ctrl : in STD_LOGIC;
    flash_clk : in STD_LOGIC;
    startup_eos : out STD_LOGIC
  );

end xcl_design_startup_primitive_0;

architecture stub of xcl_design_startup_primitive_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "flash_DQ_I[3:0],flash_DQ_O[3:0],flash_DQ_tri_ctrl[3:0],flash_CS_N,flash_CS_N_tri_ctrl,flash_clk,startup_eos";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "startup_wrapper,Vivado 2016.4_sdx";
begin
end;
