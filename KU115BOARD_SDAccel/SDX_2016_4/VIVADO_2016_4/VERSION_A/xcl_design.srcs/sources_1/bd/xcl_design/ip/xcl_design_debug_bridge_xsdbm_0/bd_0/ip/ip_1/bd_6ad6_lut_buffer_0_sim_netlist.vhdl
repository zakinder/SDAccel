-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 10:30:16 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Sim/sdaccelku/xcl_design/xcl_design.srcs/sources_1/bd/xcl_design/ip/xcl_design_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_6ad6_lut_buffer_0_sim_netlist.vhdl
-- Design      : bd_6ad6_lut_buffer_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer is
  port (
    tdo_o : out STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer : entity is "lut_buffer_v1_0_0_lut_buffer";
  attribute dont_touch : string;
  attribute dont_touch of bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer : entity is "true";
end bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer;

architecture STRUCTURE of bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \BSCANID_BUFFER[0].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[0].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[10].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[10].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[11].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[11].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[12].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[12].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[13].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[13].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[14].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[14].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[15].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[15].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[16].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[16].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[17].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[17].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[18].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[18].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[19].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[19].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[1].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[1].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[20].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[20].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[21].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[21].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[22].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[22].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[23].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[23].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[24].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[24].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[25].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[25].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[26].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[26].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[27].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[27].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[28].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[28].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[29].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[29].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[2].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[2].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[30].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[30].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[31].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[31].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[3].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[3].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[4].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[4].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[5].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[5].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[6].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[6].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[7].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[7].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[8].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[8].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of \BSCANID_BUFFER[9].u_tdo\ : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of \BSCANID_BUFFER[9].u_tdo\ : label is std.standard.true;
  attribute BOX_TYPE of u_tdo : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean of u_tdo : label is std.standard.true;
begin
\BSCANID_BUFFER[0].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(0),
      O => bscanid_o(0)
    );
\BSCANID_BUFFER[10].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(10),
      O => bscanid_o(10)
    );
\BSCANID_BUFFER[11].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(11),
      O => bscanid_o(11)
    );
\BSCANID_BUFFER[12].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(12),
      O => bscanid_o(12)
    );
\BSCANID_BUFFER[13].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(13),
      O => bscanid_o(13)
    );
\BSCANID_BUFFER[14].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(14),
      O => bscanid_o(14)
    );
\BSCANID_BUFFER[15].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(15),
      O => bscanid_o(15)
    );
\BSCANID_BUFFER[16].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(16),
      O => bscanid_o(16)
    );
\BSCANID_BUFFER[17].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(17),
      O => bscanid_o(17)
    );
\BSCANID_BUFFER[18].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(18),
      O => bscanid_o(18)
    );
\BSCANID_BUFFER[19].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(19),
      O => bscanid_o(19)
    );
\BSCANID_BUFFER[1].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(1),
      O => bscanid_o(1)
    );
\BSCANID_BUFFER[20].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(20),
      O => bscanid_o(20)
    );
\BSCANID_BUFFER[21].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(21),
      O => bscanid_o(21)
    );
\BSCANID_BUFFER[22].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(22),
      O => bscanid_o(22)
    );
\BSCANID_BUFFER[23].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(23),
      O => bscanid_o(23)
    );
\BSCANID_BUFFER[24].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(24),
      O => bscanid_o(24)
    );
\BSCANID_BUFFER[25].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(25),
      O => bscanid_o(25)
    );
\BSCANID_BUFFER[26].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(26),
      O => bscanid_o(26)
    );
\BSCANID_BUFFER[27].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(27),
      O => bscanid_o(27)
    );
\BSCANID_BUFFER[28].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(28),
      O => bscanid_o(28)
    );
\BSCANID_BUFFER[29].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(29),
      O => bscanid_o(29)
    );
\BSCANID_BUFFER[2].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(2),
      O => bscanid_o(2)
    );
\BSCANID_BUFFER[30].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(30),
      O => bscanid_o(30)
    );
\BSCANID_BUFFER[31].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(31),
      O => bscanid_o(31)
    );
\BSCANID_BUFFER[3].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(3),
      O => bscanid_o(3)
    );
\BSCANID_BUFFER[4].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(4),
      O => bscanid_o(4)
    );
\BSCANID_BUFFER[5].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(5),
      O => bscanid_o(5)
    );
\BSCANID_BUFFER[6].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(6),
      O => bscanid_o(6)
    );
\BSCANID_BUFFER[7].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(7),
      O => bscanid_o(7)
    );
\BSCANID_BUFFER[8].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(8),
      O => bscanid_o(8)
    );
\BSCANID_BUFFER[9].u_tdo\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bscanid_i(9),
      O => bscanid_o(9)
    );
u_tdo: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tdo_i,
      O => tdo_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_6ad6_lut_buffer_0 is
  port (
    tdo_o : out STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_6ad6_lut_buffer_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_6ad6_lut_buffer_0 : entity is "bd_6ad6_lut_buffer_0,lut_buffer_v1_0_0_lut_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_6ad6_lut_buffer_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_6ad6_lut_buffer_0 : entity is "lut_buffer_v1_0_0_lut_buffer,Vivado 2016.4_sdx";
end bd_6ad6_lut_buffer_0;

architecture STRUCTURE of bd_6ad6_lut_buffer_0 is
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
begin
inst: entity work.bd_6ad6_lut_buffer_0_lut_buffer_v1_0_0_lut_buffer
     port map (
      bscanid_i(31 downto 0) => bscanid_i(31 downto 0),
      bscanid_o(31 downto 0) => bscanid_o(31 downto 0),
      tdo_i => tdo_i,
      tdo_o => tdo_o
    );
end STRUCTURE;
