-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 10:30:16 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0_stub.vhdl
-- Design      : bd_6ad6_lut_buffer_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_6ad6_lut_buffer_0 is
  Port ( 
    tdo_o : out STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bd_6ad6_lut_buffer_0;

architecture stub of bd_6ad6_lut_buffer_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tdo_o,bscanid_o[31:0],tdo_i,bscanid_i[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.4_sdx";
begin
end;
