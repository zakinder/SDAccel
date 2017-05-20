-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4_sdx (win64) Build 1806307 Thu Mar  9 15:24:31 MST 2017
-- Date        : Tue May 16 10:04:59 2017
-- Host        : SakinderLaptop1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top xcl_design_axi_i2c_0 -prefix
--               xcl_design_axi_i2c_0_ xcl_design_axi_i2c_0_sim_netlist.vhdl
-- Design      : xcl_design_axi_i2c_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flvb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_SRL_FIFO is
  port (
    Rc_Data_Exists : out STD_LOGIC;
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    p_6_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Data_Exists_DFF_0 : out STD_LOGIC;
    Bus2IIC_Reset : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \data_i2c_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Msms_set : in STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_rd_reg\ : in STD_LOGIC;
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_SRL_FIFO;

architecture STRUCTURE of xcl_design_axi_i2c_0_SRL_FIFO is
  signal \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1__1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\ : STD_LOGIC;
  signal \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\ : STD_LOGIC;
  signal \^rc_data_exists\ : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__1\ : label is "soft_lutpair21";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.ro_prev_i_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sr_i[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair21";
begin
  Rc_Data_Exists <= \^rc_data_exists\;
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_3,
      Q => \^rc_addr\(0),
      R => Bus2IIC_Reset
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1__1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(0),
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000000"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      I4 => \RD_FIFO_CNTRL.Rc_fifo_rd_reg\,
      I5 => \RD_FIFO_CNTRL.Rc_fifo_wr_reg\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => Rc_fifo_wr_d,
      I1 => Rc_fifo_wr,
      I2 => \^rc_addr\(0),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(2),
      I5 => \^rc_addr\(1),
      O => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_2,
      Q => \^rc_addr\(1),
      R => Bus2IIC_Reset
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(1),
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_1,
      Q => \^rc_addr\(2),
      R => Bus2IIC_Reset
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(2),
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => sum_A_0,
      Q => \^rc_addr\(3),
      R => Bus2IIC_Reset
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__1_n_0\,
      I1 => Rc_fifo_rd,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_addr\(3),
      O => \Addr_Counters[3].XORCY_I_i_1__1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => \^rc_data_exists\,
      R => Bus2IIC_Reset
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      O => Data_Exists_DFF_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => \data_i2c_i_reg[7]\(0),
      Q => Rc_fifo_data(7)
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000004"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\,
      I1 => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\,
      I2 => Bus2IIC_Reset,
      I3 => \^rc_addr\(2),
      I4 => Q(2),
      I5 => Msms_set,
      O => p_6_out
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^rc_addr\(0),
      I1 => Q(0),
      I2 => \^rc_data_exists\,
      O => \RD_FIFO_CNTRL.ro_prev_i_i_2_n_0\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^rc_addr\(3),
      I1 => Q(3),
      I2 => \^rc_addr\(1),
      I3 => Q(1),
      O => \RD_FIFO_CNTRL.ro_prev_i_i_3_n_0\
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rc_data_exists\,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^rc_addr\(1),
      I1 => \^rc_addr\(2),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_SRL_FIFO_0 is
  port (
    Tx_data_exists : out STD_LOGIC;
    Tx_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Tx_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    \sr_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_in : out STD_LOGIC;
    \cr_i_reg[5]\ : out STD_LOGIC;
    \sr_i_reg[0]\ : out STD_LOGIC;
    \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\ : out STD_LOGIC;
    Data_Exists_DFF_0 : out STD_LOGIC;
    \data_int_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    D : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FIFO_GEN_DTR.Tx_fifo_rd_reg\ : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_wr_reg\ : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_axi_i2c_0_SRL_FIFO_0 : entity is "SRL_FIFO";
end xcl_design_axi_i2c_0_SRL_FIFO_0;

architecture STRUCTURE of xcl_design_axi_i2c_0_SRL_FIFO_0 is
  signal \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1__0_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal \^tx_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^tx_data_exists\ : STD_LOGIC;
  signal \^tx_fifo_data\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair29";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of callingReadAccess_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cr_i[5]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair29";
begin
  Tx_addr(0 to 3) <= \^tx_addr\(0 to 3);
  Tx_data_exists <= \^tx_data_exists\;
  Tx_fifo_data(0 to 7) <= \^tx_fifo_data\(0 to 7);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => sum_A_3,
      Q => \^tx_addr\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \^tx_addr\(2),
      DI(1) => \^tx_addr\(1),
      DI(0) => \^tx_addr\(0),
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1__0_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \^tx_addr\(0),
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
        port map (
      I0 => \FIFO_GEN_DTR.Tx_fifo_rd_reg\,
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(0),
      I4 => \^tx_addr\(2),
      I5 => \FIFO_GEN_DTR.Tx_fifo_wr_reg\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => Tx_fifo_wr_d,
      I1 => Tx_fifo_wr,
      I2 => \^tx_addr\(2),
      I3 => \^tx_addr\(0),
      I4 => \^tx_addr\(3),
      I5 => \^tx_addr\(1),
      O => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => sum_A_2,
      Q => \^tx_addr\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \^tx_addr\(1),
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => sum_A_1,
      Q => \^tx_addr\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \^tx_addr\(2),
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => sum_A_0,
      Q => \^tx_addr\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3__0_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \^tx_addr\(3),
      O => \Addr_Counters[3].XORCY_I_i_1__0_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \^tx_data_exists\,
      R => Tx_fifo_rst
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^tx_addr\(1),
      I1 => \^tx_addr\(3),
      I2 => \^tx_addr\(0),
      I3 => \^tx_addr\(2),
      O => Data_Exists_DFF_0
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_addr\(3),
      O => \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data\(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data\(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data\(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data\(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data\(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data\(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data\(7)
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^tx_data_exists\,
      I1 => dynamic_MSMS(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      O => p_3_in
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^tx_data_exists\,
      I1 => dynamic_MSMS(0),
      O => \cr_i_reg[5]\
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_fifo_data\(7),
      I1 => shift_reg_ld,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      O => \data_int_reg[0]\(0)
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_data_exists\,
      O => \sr_i_reg[0]\
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^tx_addr\(1),
      I1 => \^tx_addr\(3),
      I2 => \^tx_addr\(0),
      I3 => \^tx_addr\(2),
      O => \sr_i_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_axi_i2c_0_SRL_FIFO__parameterized0\ is
  port (
    \Addr_Counters[0].FDRE_I_0\ : out STD_LOGIC;
    dynamic_MSMS : out STD_LOGIC_VECTOR ( 0 to 1 );
    Data_Exists_DFF_0 : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    D : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ctrlFifoDin : in STD_LOGIC_VECTOR ( 0 to 1 );
    Tx_fifo_rd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_wr_d_reg : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rd_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_axi_i2c_0_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \xcl_design_axi_i2c_0_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \xcl_design_axi_i2c_0_SRL_FIFO__parameterized0\ is
  signal \^addr_counters[0].fdre_i_0\ : STD_LOGIC;
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3\ : label is "soft_lutpair28";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_3__0\ : label is "soft_lutpair28";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  \Addr_Counters[0].FDRE_I_0\ <= \^addr_counters[0].fdre_i_0\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => CI,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => Tx_fifo_wr_d_reg,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[0].FDRE_I_n_0\,
      I5 => \FIFO_GEN_DTR.Tx_fifo_rd_reg\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Tx_fifo_wr_d_reg,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^addr_counters[0].fdre_i_0\,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2AA08"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => Tx_fifo_rd,
      I2 => Tx_fifo_rd_d,
      I3 => rdCntrFrmTxFifo,
      I4 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \^addr_counters[0].fdre_i_0\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(0),
      Q => dynamic_MSMS(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => ctrlFifoDin(1),
      Q => dynamic_MSMS(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_address_decoder is
  port (
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    AXI_IP2Bus_Error : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    \s_axi_bresp_i_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    is_read : in STD_LOGIC;
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    irpt_wrack_d1 : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_1_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \timing_param_thdsta_i_reg[0]\ : in STD_LOGIC;
    \Addr_Counters[0].FDRE_I\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]_0\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_0\ : in STD_LOGIC;
    \Addr_Counters[1].FDRE_I\ : in STD_LOGIC;
    \adr_i_reg[6]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_1\ : in STD_LOGIC;
    \adr_i_reg[5]\ : in STD_LOGIC;
    \Addr_Counters[2].FDRE_I\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]_2\ : in STD_LOGIC;
    \adr_i_reg[4]\ : in STD_LOGIC;
    \Addr_Counters[3].FDRE_I\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[5]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[5]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]_1\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    \cr_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end xcl_design_axi_i2c_0_address_decoder;

architecture STRUCTURE of xcl_design_axi_i2c_0_address_decoder is
  signal \^axi_ip2bus_error\ : STD_LOGIC;
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[29].ce_out_i_reg[29]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i_reg\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[1].cs_out_i_reg\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[2].cs_out_i_reg\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal pselect_hit_i_2 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_10_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_9_n_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^sw_rst_cond\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck2_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck2_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[1].cs_out_i[1]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.Rc_fifo_rd_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_9\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[8]_i_1\ : label is "soft_lutpair45";
begin
  AXI_IP2Bus_Error <= \^axi_ip2bus_error\;
  \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ <= \^gen_bkend_ce_registers[29].ce_out_i_reg[29]_0\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  s_axi_wready <= \^s_axi_wready\;
  sw_rst_cond <= \^sw_rst_cond\;
AXI_IP2Bus_RdAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg\,
      I2 => \MEM_DECODE_GEN[1].cs_out_i_reg\,
      I3 => bus2ip_rnw_i_reg,
      O => AXI_IP2Bus_RdAck20
    );
AXI_IP2Bus_WrAck2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \MEM_DECODE_GEN[2].cs_out_i_reg\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg\,
      I2 => \MEM_DECODE_GEN[1].cs_out_i_reg\,
      I3 => bus2ip_rnw_i_reg,
      O => AXI_IP2Bus_WrAck2_reg
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_16_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(10)
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => pselect_hit_i_2,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_5_out
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_5_out,
      Q => p_25_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => pselect_hit_i_0,
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => \bus2ip_addr_i_reg[8]\(5),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => pselect_hit_i_0,
      I4 => \bus2ip_addr_i_reg[8]\(3),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => p_16_out
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_16_out,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      I5 => pselect_hit_i_0,
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[8]\(8),
      I3 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(4),
      I2 => \bus2ip_addr_i_reg[8]\(8),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(6),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(6),
      I5 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => pselect_hit_i_0,
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(6),
      O => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1_n_0\,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => pselect_hit_i_0,
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      I5 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(8),
      I4 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(5),
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[8]\(8),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[8]\(8),
      I3 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(5),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[8]\(8),
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(8),
      I4 => \^gen_bkend_ce_registers[29].ce_out_i_reg[29]_0\,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[8]\(8),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => pselect_hit_i_0,
      I2 => \bus2ip_addr_i_reg[8]\(6),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(5),
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1_n_0\,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(8),
      I4 => \^gen_bkend_ce_registers[29].ce_out_i_reg[29]_0\,
      O => \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => \bus2ip_addr_i_reg[8]\(4),
      I2 => \bus2ip_addr_i_reg[8]\(5),
      O => \^gen_bkend_ce_registers[29].ce_out_i_reg[29]_0\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1_n_0\,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I5 => \bus2ip_addr_i_reg[8]\(8),
      O => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1_n_0\,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4F44FFFF"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => is_read,
      I2 => AXI_IP2Bus_RdAck1,
      I3 => AXI_IP2Bus_RdAck2,
      I4 => s_axi_aresetn,
      I5 => \^s_axi_wready\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => pselect_hit_i_0,
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(6),
      I5 => \bus2ip_addr_i_reg[8]\(5),
      O => p_17_out
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_17_out,
      Q => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => pselect_hit_i_2,
      I1 => \bus2ip_addr_i_reg[8]\(5),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_8_out
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_8_out,
      Q => p_28_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => \bus2ip_addr_i_reg[8]\(7),
      I3 => Q,
      I4 => \bus2ip_addr_i_reg[8]\(4),
      I5 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\,
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_7_out,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(0),
      I5 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(1),
      I5 => p_1_in17_in,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(2),
      I5 => p_1_in14_in,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(3),
      I5 => p_1_in11_in,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(4),
      I5 => p_1_in8_in,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(5),
      I5 => p_1_in5_in,
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(6),
      I5 => p_1_in2_in,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFF0020"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => Bus_RNW_reg,
      I2 => p_27_in,
      I3 => irpt_wrack_d1,
      I4 => IIC2Bus_IntrEvent(7),
      I5 => p_1_in,
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_9_in,
      I2 => Bus_RNW_reg,
      I3 => gpo(0),
      O => \GPO_GEN.gpo_i_reg[31]\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(7),
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(6),
      O => pselect_hit_i_2
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_2,
      Q => \MEM_DECODE_GEN[0].cs_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(8),
      I2 => \bus2ip_addr_i_reg[8]\(7),
      I3 => \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\,
      I4 => Q,
      I5 => \bus2ip_addr_i_reg[8]\(4),
      O => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      O => \MEM_DECODE_GEN[1].cs_out_i[1]_i_2_n_0\
    );
\MEM_DECODE_GEN[1].cs_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\,
      Q => \MEM_DECODE_GEN[1].cs_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[2].cs_out_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q,
      I1 => \bus2ip_addr_i_reg[8]\(8),
      O => pselect_hit_i_0
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_0,
      Q => \MEM_DECODE_GEN[2].cs_out_i_reg\,
      R => cs_ce_clr
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_10_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(8)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_14_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(9)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_18_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(11)
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808FBFBFB08"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => p_18_in,
      I2 => Bus_RNW_reg,
      I3 => \cr_i_reg[4]_0\(0),
      I4 => cr_txModeSelect_set,
      I5 => cr_txModeSelect_clr,
      O => \cr_i_reg[4]\(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_25_in,
      I1 => Bus_RNW_reg,
      O => E(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => p_28_in,
      I2 => Bus_RNW_reg,
      I3 => ipif_glbl_irpt_enable_reg,
      O => ipif_glbl_irpt_enable_reg_reg
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => p_25_in,
      I1 => p_28_in,
      I2 => Bus_RNW_reg,
      I3 => p_27_in,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sw_rst_cond\,
      I1 => sw_rst_cond_d1,
      O => reset_trig0
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^axi_ip2bus_error\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => s_axi_bresp(0),
      O => \s_axi_bresp_i_reg[1]\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(0),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      O => D(0)
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80000AA080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => \timing_param_thdsta_i_reg[0]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \s_axi_rdata_i[8]_i_2_n_0\,
      I5 => \Addr_Counters[0].FDRE_I\,
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(1),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in17_in,
      O => D(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A0000AA800000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]_0\,
      I1 => \Addr_Counters[1].FDRE_I\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \s_axi_rdata_i[8]_i_2_n_0\,
      I5 => \adr_i_reg[6]\,
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(2),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in14_in,
      O => D(2)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80000AA080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]_1\,
      I1 => \adr_i_reg[5]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \s_axi_rdata_i[8]_i_2_n_0\,
      I5 => \Addr_Counters[2].FDRE_I\,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_28_in,
      I1 => ipif_glbl_irpt_enable_reg,
      I2 => Bus_RNW_reg,
      I3 => p_27_in,
      I4 => p_25_in,
      O => D(9)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(3),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in11_in,
      O => D(3)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA80000AA080000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]_2\,
      I1 => \adr_i_reg[4]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \s_axi_rdata_i[8]_i_2_n_0\,
      I5 => \Addr_Counters[3].FDRE_I\,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[4]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(4),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in8_in,
      O => D(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888C0C0CC00"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]\,
      I1 => \s_axi_rdata_i[8]_i_2_n_0\,
      I2 => \timing_param_tsudat_i_reg[4]\,
      I3 => \adr_i_reg[3]\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[5]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(5),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in5_in,
      O => D(5)
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800000008"
    )
        port map (
      I0 => \timing_param_tsudat_i_reg[5]\,
      I1 => \s_axi_rdata_i[8]_i_2_n_0\,
      I2 => \timing_param_tsusto_i_reg[5]\,
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => \bus2ip_addr_i_reg[8]\(4),
      I5 => \timing_param_thigh_i_reg[5]\,
      O => \s_axi_rdata_i[5]_i_2_n_0\
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[6]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(6),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in2_in,
      O => D(6)
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888C0C0CC00"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]_0\,
      I1 => \s_axi_rdata_i[8]_i_2_n_0\,
      I2 => \timing_param_tsudat_i_reg[6]\,
      I3 => \adr_i_reg[1]\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAEAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_2_n_0\,
      I1 => p_25_in,
      I2 => \ip_irpt_enable_reg_reg[7]\(7),
      I3 => p_27_in,
      I4 => Bus_RNW_reg,
      I5 => p_1_in,
      O => D(7)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808080C0C0C00"
    )
        port map (
      I0 => \timing_param_tbuf_i_reg[7]\,
      I1 => \s_axi_rdata_i[8]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[5]_1\,
      I3 => \adr_i_reg[0]\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      I5 => \bus2ip_addr_i_reg[8]\(3),
      O => \s_axi_rdata_i[7]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => \s_axi_rdata_i[8]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[3]\,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \timing_param_tbuf_i_reg[8]\,
      O => D(8)
    );
\s_axi_rdata_i[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_3_in,
      I2 => p_17_in,
      I3 => p_14_in,
      O => \s_axi_rdata_i[8]_i_10_n_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B00"
    )
        port map (
      I0 => \s_axi_rdata_i[8]_i_5_n_0\,
      I1 => \s_axi_rdata_i[8]_i_6_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => Bus_RNW_reg,
      I4 => \bus2ip_addr_i_reg[8]\(7),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => \s_axi_rdata_i[8]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I1 => p_10_in,
      I2 => p_8_in,
      I3 => p_9_in,
      I4 => \s_axi_rdata_i[8]_i_9_n_0\,
      I5 => \s_axi_rdata_i[8]_i_10_n_0\,
      O => \s_axi_rdata_i[8]_i_5_n_0\
    );
\s_axi_rdata_i[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_7_in,
      I1 => p_2_in,
      I2 => p_4_in,
      I3 => p_18_in,
      I4 => p_13_in,
      I5 => p_16_in,
      O => \s_axi_rdata_i[8]_i_6_n_0\
    );
\s_axi_rdata_i[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_15_in,
      I1 => p_5_in,
      I2 => p_11_in,
      I3 => p_6_in,
      O => \s_axi_rdata_i[8]_i_9_n_0\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444444444444"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \MEM_DECODE_GEN[1].cs_out_i_reg\,
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(1),
      I5 => s_axi_wdata(3),
      O => \^axi_ip2bus_error\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => is_write_reg,
      I2 => AXI_IP2Bus_WrAck1,
      I3 => AXI_IP2Bus_WrAck2,
      O => \^s_axi_wready\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      O => \^mem_decode_gen[0].cs_out_i_reg[0]_0\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \MEM_DECODE_GEN[1].cs_out_i_reg\,
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(1),
      I5 => s_axi_wdata(3),
      O => \^sw_rst_cond\
    );
\timing_param_tbuf_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(3)
    );
\timing_param_thddat_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg_n_0_[34]\,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(0)
    );
\timing_param_thdsta_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_6_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(5)
    );
\timing_param_thigh_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(2)
    );
\timing_param_tlow_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(1)
    );
\timing_param_tsudat_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(4)
    );
\timing_param_tsusta_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_8_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(7)
    );
\timing_param_tsusto_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => Bus_RNW_reg,
      O => Bus2IIC_WrCE(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_cdc_sync is
  port (
    \data_int_reg[0]\ : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_cdc_sync;

architecture STRUCTURE of xcl_design_axi_i2c_0_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \data_int_reg[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_cdc_sync_4 is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_axi_i2c_0_cdc_sync_4 : entity is "cdc_sync";
end xcl_design_axi_i2c_0_cdc_sync_4;

architecture STRUCTURE of xcl_design_axi_i2c_0_cdc_sync_4 is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => scl_rin_d1,
      O => scl_rising_edge0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_dynamic_master is
  port (
    callingReadAccess : out STD_LOGIC;
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    cr_txModeSelect_set : out STD_LOGIC;
    cr_txModeSelect_clr : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    rxCntDone_reg_0 : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    rdCntrFrmTxFifo0 : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    \FIFO_GEN_DTR.Tx_fifo_rst_reg\ : in STD_LOGIC;
    firstDynStartSeen_reg_0 : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_dynamic_master;

architecture STRUCTURE of xcl_design_axi_i2c_0_dynamic_master is
  signal Cr_txModeSelect_set_i_2_n_0 : STD_LOGIC;
  signal ackDataState_d1 : STD_LOGIC;
  signal \^callingreadaccess\ : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdByteCntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdByteCntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdByteCntr[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdByteCntr_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  signal \^rxcntdone_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair0";
begin
  callingReadAccess <= \^callingreadaccess\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
  rxCntDone_reg_0 <= \^rxcntdone_reg_0\;
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^callingreadaccess\,
      Q => cr_txModeSelect_clr,
      R => \FIFO_GEN_DTR.Tx_fifo_rst_reg\
    );
Cr_txModeSelect_set_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^callingreadaccess\,
      O => Cr_txModeSelect_set_i_2_n_0
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr_txModeSelect_set_i_2_n_0,
      Q => cr_txModeSelect_set,
      R => \FIFO_GEN_DTR.Tx_fifo_rst_reg\
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data(7),
      Q => \^callingreadaccess\,
      R => Tx_fifo_rst
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => firstDynStartSeen_reg_0,
      Q => firstDynStartSeen,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => earlyAckDataState_d1,
      I2 => earlyAckDataState,
      I3 => \rdByteCntr[0]_i_3_n_0\,
      O => \rdByteCntr[0]_i_1_n_0\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => Tx_fifo_data(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(0),
      I3 => \rdByteCntr_reg__0\(1),
      I4 => \rdByteCntr[0]_i_4_n_0\,
      O => \p_0_in__2\(7)
    );
\rdByteCntr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rdByteCntr[1]_i_2_n_0\,
      I1 => \rdByteCntr_reg__0\(3),
      I2 => \rdByteCntr_reg__0\(2),
      I3 => \rdByteCntr_reg__0\(1),
      I4 => \rdByteCntr_reg__0\(0),
      O => \rdByteCntr[0]_i_3_n_0\
    );
\rdByteCntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(5),
      I1 => \rdByteCntr_reg__0\(6),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(4),
      I4 => \rdByteCntr_reg__0\(2),
      I5 => \rdByteCntr_reg__0\(3),
      O => \rdByteCntr[0]_i_4_n_0\
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => Tx_fifo_data(1),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(1),
      I3 => \rdByteCntr_reg__0\(3),
      I4 => \rdByteCntr_reg__0\(2),
      I5 => \rdByteCntr[1]_i_2_n_0\,
      O => \p_0_in__2\(6)
    );
\rdByteCntr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rdByteCntr_reg__0\(4),
      I1 => \rdByteCntr_reg__0\(7),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(5),
      O => \rdByteCntr[1]_i_2_n_0\
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => Tx_fifo_data(2),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(2),
      I3 => \rdByteCntr[1]_i_2_n_0\,
      I4 => \rdByteCntr_reg__0\(3),
      O => \p_0_in__2\(5)
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(3),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(3),
      I3 => \rdByteCntr[1]_i_2_n_0\,
      O => \p_0_in__2\(4)
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => Tx_fifo_data(4),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(7),
      I5 => \rdByteCntr_reg__0\(4),
      O => \p_0_in__2\(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Tx_fifo_data(5),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(5),
      O => \p_0_in__2\(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Tx_fifo_data(6),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      O => \p_0_in__2\(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Tx_fifo_data(7),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      O => \p_0_in__2\(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(7),
      Q => \rdByteCntr_reg__0\(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(6),
      Q => \rdByteCntr_reg__0\(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(5),
      Q => \rdByteCntr_reg__0\(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(4),
      Q => \rdByteCntr_reg__0\(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(3),
      Q => \rdByteCntr_reg__0\(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(2),
      Q => \rdByteCntr_reg__0\(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(1),
      Q => \rdByteCntr_reg__0\(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rdByteCntr[0]_i_1_n_0\,
      D => \p_0_in__2\(0),
      Q => \rdByteCntr_reg__0\(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^rxcntdone_reg_0\,
      I1 => ackDataState,
      I2 => ackDataState_d1,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^callingreadaccess\,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(1),
      I3 => \rdByteCntr_reg__0\(2),
      I4 => \rdByteCntr_reg__0\(3),
      I5 => \rdByteCntr[1]_i_2_n_0\,
      O => \^rxcntdone_reg_0\
    );
rxCntDone_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    p_1_in11_in : out STD_LOGIC;
    p_1_in8_in : out STD_LOGIC;
    p_1_in5_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    Bus_RNW_reg_reg_2 : in STD_LOGIC;
    Bus_RNW_reg_reg_3 : in STD_LOGIC;
    Bus_RNW_reg_reg_4 : in STD_LOGIC;
    Bus_RNW_reg_reg_5 : in STD_LOGIC;
    Bus_RNW_reg_reg_6 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end xcl_design_axi_i2c_0_interrupt_control;

architecture STRUCTURE of xcl_design_axi_i2c_0_interrupt_control is
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal iic2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal iic2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in11_in\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in2_in\ : STD_LOGIC;
  signal \^p_1_in5_in\ : STD_LOGIC;
  signal \^p_1_in8_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in <= \^p_1_in\;
  p_1_in11_in <= \^p_1_in11_in\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in2_in <= \^p_1_in2_in\;
  p_1_in5_in <= \^p_1_in5_in\;
  p_1_in8_in <= \^p_1_in8_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_0,
      Q => \^p_1_in17_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_1,
      Q => \^p_1_in14_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_2,
      Q => \^p_1_in11_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_3,
      Q => \^p_1_in8_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_4,
      Q => \^p_1_in5_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_5,
      Q => \^p_1_in2_in\,
      R => SR(0)
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_6,
      Q => \^p_1_in\,
      R => SR(0)
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => iic2intc_irpt_INST_0_i_1_n_0,
      I2 => iic2intc_irpt_INST_0_i_2_n_0,
      I3 => iic2intc_irpt_INST_0_i_3_n_0,
      I4 => iic2intc_irpt_INST_0_i_4_n_0,
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^p_1_in11_in\,
      I2 => \^q\(2),
      I3 => \^p_1_in14_in\,
      O => iic2intc_irpt_INST_0_i_1_n_0
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^p_1_in8_in\,
      I2 => \^q\(6),
      I3 => \^p_1_in2_in\,
      O => iic2intc_irpt_INST_0_i_2_n_0
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^p_1_in5_in\,
      I2 => \^q\(7),
      I3 => \^p_1_in\,
      O => iic2intc_irpt_INST_0_i_3_n_0
    );
iic2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^p_1_in17_in\,
      I2 => \^q\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => iic2intc_irpt_INST_0_i_4_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => SR(0)
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => SR(0)
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => SR(0)
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    dtre_d1_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    state122_out : out STD_LOGIC;
    slave_sda_reg : out STD_LOGIC;
    \q_int_reg[8]\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    Data_Exists_DFF : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_cnt_en13_out : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_scl_state_reg[0]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    txak : out STD_LOGIC;
    sda_setup_reg : out STD_LOGIC;
    sda_setup_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sda_setup_reg_1 : out STD_LOGIC;
    D_1 : out STD_LOGIC;
    Data_Exists_DFF_0 : out STD_LOGIC;
    \cr_i_reg[5]_0\ : out STD_LOGIC;
    Cr_txModeSelect_set_reg : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[0]_2\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \s_axi_rdata_i_reg[8]_1\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_scl_state_reg[0]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_rdata_i_reg[4]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]_2\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[8]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : out STD_LOGIC;
    \RD_FIFO_CNTRL.ro_prev_i_reg_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[3]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[3]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : out STD_LOGIC;
    \Addr_Counters[0].FDRE_I\ : out STD_LOGIC;
    D_2 : out STD_LOGIC;
    \Addr_Counters[0].FDRE_I_0\ : out STD_LOGIC;
    \Addr_Counters[0].FDRE_I_1\ : out STD_LOGIC;
    next_scl_state10_out : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    firstDynStartSeen_reg : out STD_LOGIC;
    Bus2IIC_Reset : in STD_LOGIC;
    \Addr_Counters[3].FDRE_I\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    Bus2IIC_WrCE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    new_rcv_dta_i_reg : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_Exists_DFF_1 : in STD_LOGIC;
    Aas : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ : in STD_LOGIC;
    master_slave : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    stop_scl_reg : in STD_LOGIC;
    \data_int_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_scl_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[0]_4\ : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    \Addr_Counters[1].FDRE_I\ : in STD_LOGIC;
    Data_Exists_DFF_2 : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    \q_int_reg[0]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Data_Exists_DFF_3 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    callingReadAccess_reg : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    \q_int_reg[3]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_data_exists : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    \Addr_Counters[1].FDRE_I_0\ : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC;
    \q_int_reg[4]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    \Addr_Counters[1].FDRE_I_1\ : in STD_LOGIC;
    Rc_Data_Exists : in STD_LOGIC;
    \q_int_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    al_i_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end xcl_design_axi_i2c_0_reg_interface;

architecture STRUCTURE of xcl_design_axi_i2c_0_reg_interface is
  signal Cr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^data_exists_dff\ : STD_LOGIC;
  signal \^data_exists_dff_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_scl_state_reg[0]\ : STD_LOGIC;
  signal \^fsm_sequential_scl_state_reg[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^fsm_sequential_scl_state_reg[0]_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^fsm_sequential_scl_state_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^iic2bus_intrevent\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^msms_set\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_fifo_cntrl.ro_prev_i_reg_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal adr_i : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \cr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \cr_i[2]_i_2_n_0\ : STD_LOGIC;
  signal firstDynStartSeen_i_2_n_0 : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msms_d1 : STD_LOGIC;
  signal msms_set_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[8]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s_axi_rdata_i_reg[8]_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sda_setup_reg_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slave_sda_i_3_n_0 : STD_LOGIC;
  signal slave_sda_i_4_n_0 : STD_LOGIC;
  signal \^slave_sda_reg\ : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 7 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 4 to 4 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of firstDynStartSeen_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of firstDynStartSeen_i_2 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_8\ : label is "soft_lutpair24";
begin
  D(0) <= \^d\(0);
  Data_Exists_DFF <= \^data_exists_dff\;
  Data_Exists_DFF_0 <= \^data_exists_dff_0\;
  \FSM_sequential_scl_state_reg[0]\ <= \^fsm_sequential_scl_state_reg[0]\;
  \FSM_sequential_scl_state_reg[0]_0\(3 downto 0) <= \^fsm_sequential_scl_state_reg[0]_0\(3 downto 0);
  \FSM_sequential_scl_state_reg[0]_3\(2 downto 0) <= \^fsm_sequential_scl_state_reg[0]_3\(2 downto 0);
  \FSM_sequential_scl_state_reg[2]\(0) <= \^fsm_sequential_scl_state_reg[2]\(0);
  IIC2Bus_IntrEvent(0 to 7) <= \^iic2bus_intrevent\(0 to 7);
  Msms_set <= \^msms_set\;
  Q(4 downto 0) <= \^q\(4 downto 0);
  \RD_FIFO_CNTRL.ro_prev_i_reg_0\(3 downto 0) <= \^rd_fifo_cntrl.ro_prev_i_reg_0\(3 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  gpo(0) <= \^gpo\(0);
  \s_axi_rdata_i_reg[8]\(6 downto 0) <= \^s_axi_rdata_i_reg[8]\(6 downto 0);
  \s_axi_rdata_i_reg[8]_0\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_0\(8 downto 0);
  \s_axi_rdata_i_reg[8]_1\(8 downto 0) <= \^s_axi_rdata_i_reg[8]_1\(8 downto 0);
  \s_axi_rdata_i_reg[8]_3\(2 downto 0) <= \^s_axi_rdata_i_reg[8]_3\(2 downto 0);
  sda_setup_reg_0(7 downto 0) <= \^sda_setup_reg_0\(7 downto 0);
  slave_sda_reg <= \^slave_sda_reg\;
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => \Addr_Counters[0].FDRE_I\
    );
\Addr_Counters[0].MUXCY_L_I_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      O => \Addr_Counters[0].FDRE_I_1\
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      O => \Addr_Counters[0].FDRE_I_0\
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^tx_fifo_rst\,
      I1 => earlyAckHdr,
      I2 => firstDynStartSeen,
      O => Cr_txModeSelect_set_reg
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBABB0000AAAA"
    )
        port map (
      I0 => \^data_exists_dff\,
      I1 => rdCntrFrmTxFifo,
      I2 => Tx_fifo_rd_d,
      I3 => \^tx_fifo_rd\,
      I4 => \Addr_Counters[1].FDRE_I\,
      I5 => Data_Exists_DFF_2,
      O => D_0
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      I2 => \^data_exists_dff_0\,
      I3 => \Addr_Counters[1].FDRE_I_0\,
      I4 => Tx_data_exists,
      O => D_1
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00002222"
    )
        port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      I2 => Rc_fifo_rd_d,
      I3 => \^rc_fifo_rd\,
      I4 => \Addr_Counters[1].FDRE_I_1\,
      I5 => Rc_Data_Exists,
      O => D_2
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => Tx_fifo_wr_d,
      I1 => \^tx_fifo_wr\,
      I2 => Bus2IIC_Reset,
      I3 => \^tx_fifo_rst\,
      O => \^data_exists_dff\
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      I2 => rdCntrFrmTxFifo,
      O => \^data_exists_dff_0\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Addr_Counters[3].FDRE_I\,
      Q => \^iic2bus_intrevent\(7),
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr(6),
      Q => \^tx_fifo_rst\,
      S => Bus2IIC_Reset
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_WrCE(10),
      Q => \^tx_fifo_wr\,
      R => Bus2IIC_Reset
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slave_sda_reg\,
      I1 => master_slave,
      O => state122_out
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => master_slave,
      I2 => \data_int_reg[7]\(0),
      I3 => \^slave_sda_reg\,
      O => \FSM_onehot_state_reg[4]\
    );
\FSM_sequential_scl_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_thddat_i(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(4),
      I3 => timing_param_thddat_i(4),
      I4 => \q_int_reg[0]\(5),
      I5 => \^s_axi_rdata_i_reg[8]\(3),
      O => \FSM_sequential_scl_state_reg[0]_1\
    );
\FSM_sequential_scl_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_scl_state[1]_i_7_n_0\,
      I1 => \q_int_reg[1]\,
      I2 => \FSM_sequential_scl_state[1]_i_9_n_0\,
      O => \FSM_sequential_scl_state_reg[1]\
    );
\FSM_sequential_scl_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tlow_i(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(4),
      I3 => timing_param_tlow_i(4),
      I4 => \q_int_reg[0]\(5),
      I5 => timing_param_tlow_i(5),
      O => \FSM_sequential_scl_state[1]_i_7_n_0\
    );
\FSM_sequential_scl_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tlow_i(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => timing_param_tlow_i(1),
      I4 => \q_int_reg[0]\(2),
      I5 => timing_param_tlow_i(2),
      O => \FSM_sequential_scl_state[1]_i_9_n_0\
    );
\FSM_sequential_scl_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_scl_state[2]_i_5_n_0\,
      I1 => \FSM_sequential_scl_state[2]_i_6_n_0\,
      I2 => \FSM_sequential_scl_state[2]_i_7_n_0\,
      O => next_scl_state10_out
    );
\FSM_sequential_scl_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_thdsta_i(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(4),
      I3 => timing_param_thdsta_i(4),
      I4 => \q_int_reg[0]\(5),
      I5 => timing_param_thdsta_i(5),
      O => \FSM_sequential_scl_state[2]_i_5_n_0\
    );
\FSM_sequential_scl_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => timing_param_thdsta_i(7),
      I1 => \q_int_reg[0]\(7),
      I2 => \q_int_reg[0]\(8),
      I3 => timing_param_thdsta_i(8),
      I4 => \q_int_reg[0]\(6),
      I5 => timing_param_thdsta_i(6),
      O => \FSM_sequential_scl_state[2]_i_6_n_0\
    );
\FSM_sequential_scl_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^fsm_sequential_scl_state_reg[2]\(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => timing_param_thdsta_i(1),
      I4 => \q_int_reg[0]\(2),
      I5 => timing_param_thdsta_i(2),
      O => \FSM_sequential_scl_state[2]_i_7_n_0\
    );
\FSM_sequential_scl_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => SR(0)
    );
\FSM_sequential_scl_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tbuf_i(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(4),
      I3 => \^fsm_sequential_scl_state_reg[0]_0\(0),
      I4 => \q_int_reg[0]\(5),
      I5 => \^fsm_sequential_scl_state_reg[0]_0\(1),
      O => \FSM_sequential_scl_state[3]_i_10_n_0\
    );
\FSM_sequential_scl_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^fsm_sequential_scl_state_reg[0]_0\(3),
      I1 => \q_int_reg[0]\(7),
      I2 => \q_int_reg[0]\(8),
      I3 => timing_param_tbuf_i(8),
      I4 => \q_int_reg[0]\(6),
      I5 => \^fsm_sequential_scl_state_reg[0]_0\(2),
      O => \FSM_sequential_scl_state[3]_i_11_n_0\
    );
\FSM_sequential_scl_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tbuf_i(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => timing_param_tbuf_i(1),
      I4 => \q_int_reg[0]\(2),
      I5 => timing_param_tbuf_i(2),
      O => \FSM_sequential_scl_state[3]_i_12_n_0\
    );
\FSM_sequential_scl_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tsusta_i(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(4),
      I3 => \^fsm_sequential_scl_state_reg[0]_3\(0),
      I4 => \q_int_reg[0]\(5),
      I5 => timing_param_tsusta_i(5),
      O => \FSM_sequential_scl_state[3]_i_13_n_0\
    );
\FSM_sequential_scl_state[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tsusta_i(8),
      I1 => \q_int_reg[0]\(8),
      I2 => \q_int_reg[0]\(7),
      I3 => \^fsm_sequential_scl_state_reg[0]_3\(2),
      I4 => \q_int_reg[0]\(6),
      I5 => \^fsm_sequential_scl_state_reg[0]_3\(1),
      O => \FSM_sequential_scl_state[3]_i_14_n_0\
    );
\FSM_sequential_scl_state[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => timing_param_tsusta_i(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => timing_param_tsusta_i(1),
      I4 => \q_int_reg[0]\(2),
      I5 => timing_param_tsusta_i(2),
      O => \FSM_sequential_scl_state[3]_i_15_n_0\
    );
\FSM_sequential_scl_state[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_0\(7),
      I1 => \q_int_reg[0]\(7),
      I2 => \q_int_reg[0]\(8),
      I3 => \^s_axi_rdata_i_reg[8]_0\(8),
      I4 => \q_int_reg[0]\(6),
      I5 => \^s_axi_rdata_i_reg[8]_0\(6),
      O => \FSM_sequential_scl_state[3]_i_17_n_0\
    );
\FSM_sequential_scl_state[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_0\(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_0\(1),
      I4 => \q_int_reg[0]\(2),
      I5 => \^s_axi_rdata_i_reg[8]_0\(2),
      O => \FSM_sequential_scl_state[3]_i_18_n_0\
    );
\FSM_sequential_scl_state[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_1\(3),
      I1 => \q_int_reg[0]\(3),
      I2 => \q_int_reg[0]\(5),
      I3 => \^s_axi_rdata_i_reg[8]_1\(5),
      I4 => \q_int_reg[0]\(4),
      I5 => \^s_axi_rdata_i_reg[8]_1\(4),
      O => \FSM_sequential_scl_state[3]_i_19_n_0\
    );
\FSM_sequential_scl_state[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_1\(8),
      I1 => \q_int_reg[0]\(8),
      I2 => \q_int_reg[0]\(7),
      I3 => \^s_axi_rdata_i_reg[8]_1\(7),
      I4 => \q_int_reg[0]\(6),
      I5 => \^s_axi_rdata_i_reg[8]_1\(6),
      O => \FSM_sequential_scl_state[3]_i_20_n_0\
    );
\FSM_sequential_scl_state[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_1\(0),
      I1 => \q_int_reg[0]\(0),
      I2 => \q_int_reg[0]\(1),
      I3 => \^s_axi_rdata_i_reg[8]_1\(1),
      I4 => \q_int_reg[0]\(2),
      I5 => \^s_axi_rdata_i_reg[8]_1\(2),
      O => \FSM_sequential_scl_state[3]_i_21_n_0\
    );
\FSM_sequential_scl_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_scl_state[3]_i_7_n_0\,
      I1 => \^q\(3),
      I2 => \^fsm_sequential_scl_state_reg[0]\,
      I3 => stop_scl_reg,
      I4 => \FSM_sequential_scl_state[3]_i_9_n_0\,
      O => \FSM_sequential_scl_state_reg[0]_2\
    );
\FSM_sequential_scl_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_scl_state[3]_i_10_n_0\,
      I1 => \FSM_sequential_scl_state[3]_i_11_n_0\,
      I2 => \FSM_sequential_scl_state[3]_i_12_n_0\,
      O => clk_cnt_en13_out
    );
\FSM_sequential_scl_state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_scl_state[3]_i_13_n_0\,
      I1 => \FSM_sequential_scl_state[3]_i_14_n_0\,
      I2 => \FSM_sequential_scl_state[3]_i_15_n_0\,
      O => \FSM_sequential_scl_state[3]_i_7_n_0\
    );
\FSM_sequential_scl_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \q_int_reg[4]\,
      I1 => \FSM_sequential_scl_state[3]_i_17_n_0\,
      I2 => \FSM_sequential_scl_state[3]_i_18_n_0\,
      O => \^fsm_sequential_scl_state_reg[0]\
    );
\FSM_sequential_scl_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_scl_state[3]_i_19_n_0\,
      I1 => \FSM_sequential_scl_state[3]_i_20_n_0\,
      I2 => \FSM_sequential_scl_state[3]_i_21_n_0\,
      O => \FSM_sequential_scl_state[3]_i_9_n_0\
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\,
      Q => \^gpo\(0),
      S => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(4),
      Q => \^iic2bus_intrevent\(0),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(3),
      Q => \^iic2bus_intrevent\(1),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(2),
      Q => \^iic2bus_intrevent\(2),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \^iic2bus_intrevent\(3),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(1),
      Q => \^iic2bus_intrevent\(4),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => \^iic2bus_intrevent\(5),
      R => Bus2IIC_Reset
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_reg(0),
      Q => \^iic2bus_intrevent\(6),
      R => Bus2IIC_Reset
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Cr(3),
      I1 => callingReadAccess_reg,
      I2 => earlyAckDataState,
      O => txak
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => new_rcv_dta_i_reg,
      Q => \^rc_fifo_wr\,
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(3),
      Q => \^rd_fifo_cntrl.ro_prev_i_reg_0\(3),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(2),
      Q => \^rd_fifo_cntrl.ro_prev_i_reg_0\(2),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(1),
      Q => \^rd_fifo_cntrl.ro_prev_i_reg_0\(1),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(8),
      D => s_axi_wdata(0),
      Q => \^rd_fifo_cntrl.ro_prev_i_reg_0\(0),
      R => Bus2IIC_Reset
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_6_out,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(7),
      Q => adr_i(7),
      R => Bus2IIC_Reset
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(6),
      Q => adr_i(6),
      R => Bus2IIC_Reset
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(5),
      Q => adr_i(5),
      R => Bus2IIC_Reset
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(4),
      Q => adr_i(4),
      R => Bus2IIC_Reset
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(3),
      Q => adr_i(3),
      R => Bus2IIC_Reset
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(2),
      Q => adr_i(2),
      R => Bus2IIC_Reset
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(9),
      D => s_axi_wdata(1),
      Q => adr_i(1),
      R => Bus2IIC_Reset
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B888B8B8B8"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => Bus2IIC_WrCE(11),
      I2 => \cr_i[2]_i_2_n_0\,
      I3 => \FSM_sequential_scl_state_reg[2]_0\,
      I4 => \^q\(3),
      I5 => \FSM_sequential_scl_state_reg[0]_4\,
      O => \cr_i[2]_i_1_n_0\
    );
\cr_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^tx_fifo_rd\,
      I2 => Tx_fifo_rd_d,
      I3 => dynamic_MSMS(0),
      I4 => Tx_data_exists,
      I5 => firstDynStartSeen,
      O => \cr_i[2]_i_2_n_0\
    );
\cr_i[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Tx_fifo_rd_d,
      I1 => \^tx_fifo_rd\,
      O => \cr_i_reg[5]_0\
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(7),
      Q => Cr(0),
      R => Bus2IIC_Reset
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(6),
      Q => \^q\(4),
      R => Bus2IIC_Reset
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cr_i[2]_i_1_n_0\,
      Q => \^q\(3),
      R => Bus2IIC_Reset
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(4),
      Q => Cr(3),
      R => Bus2IIC_Reset
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\(1),
      Q => \^q\(2),
      R => Bus2IIC_Reset
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\(0),
      Q => \^q\(1),
      R => Bus2IIC_Reset
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(1),
      Q => Cr(6),
      R => Bus2IIC_Reset
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(11),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => Bus2IIC_Reset
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => firstDynStartSeen,
      I1 => firstDynStartSeen_i_2_n_0,
      I2 => \^q\(1),
      I3 => \^tx_fifo_rst\,
      O => firstDynStartSeen_reg
    );
firstDynStartSeen_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      I2 => dynamic_MSMS(0),
      I3 => Tx_data_exists,
      O => firstDynStartSeen_i_2_n_0
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => msms_d1,
      R => Bus2IIC_Reset
    );
msms_set_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CE0C0A00"
    )
        port map (
      I0 => \^d\(0),
      I1 => Data_Exists_DFF_3(1),
      I2 => \^q\(1),
      I3 => msms_d1,
      I4 => \^msms_set\,
      O => msms_set_i_i_1_n_0
    );
msms_set_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_set_i_i_1_n_0,
      Q => \^msms_set\,
      R => Bus2IIC_Reset
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => Bus2IIC_Reset
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => arb_lost,
      I1 => \FSM_sequential_scl_state[3]_i_9_n_0\,
      I2 => stop_scl_reg,
      I3 => \^fsm_sequential_scl_state_reg[0]\,
      I4 => \^q\(3),
      I5 => \FSM_sequential_scl_state[3]_i_7_n_0\,
      O => \q_int_reg[8]\
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(0),
      I1 => Rc_addr(0),
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => timing_param_tsusta_i(0),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Tx_fifo_data(0),
      O => \s_axi_rdata_i_reg[0]_1\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^rd_fifo_cntrl.ro_prev_i_reg_0\(0),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_tlow_i(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \^q\(0),
      O => \s_axi_rdata_i_reg[0]\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^gpo\(0),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => \^s_axi_rdata_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => sr_i(7),
      O => \s_axi_rdata_i_reg[0]_0\
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(1),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(1),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[1]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[1]_0\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(1),
      I1 => Rc_addr(1),
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => timing_param_tsusta_i(1),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Tx_fifo_data(1),
      O => \s_axi_rdata_i_reg[1]_1\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^iic2bus_intrevent\(5),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => \^s_axi_rdata_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i_reg[1]\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^rd_fifo_cntrl.ro_prev_i_reg_0\(1),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_tlow_i(1),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => Cr(6),
      O => \s_axi_rdata_i[1]_i_9_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(2),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(2),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[2]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[2]\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(2),
      I1 => Rc_addr(2),
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => timing_param_tsusta_i(2),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Tx_fifo_data(2),
      O => \s_axi_rdata_i_reg[2]_1\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^rd_fifo_cntrl.ro_prev_i_reg_0\(2),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_tlow_i(2),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \^q\(1),
      O => \s_axi_rdata_i[2]_i_8_n_0\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(5),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => \^s_axi_rdata_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i_reg[2]_0\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(3),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(3),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[3]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[3]\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(3),
      I1 => Rc_addr(3),
      I2 => \bus2ip_addr_i_reg[6]\(2),
      I3 => timing_param_tsusta_i(3),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Tx_fifo_data(3),
      O => \s_axi_rdata_i_reg[3]_1\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^rd_fifo_cntrl.ro_prev_i_reg_0\(3),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_tlow_i(3),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \^q\(2),
      O => \s_axi_rdata_i[3]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => sr_i(4),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => timing_param_thddat_i(3),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i_reg[3]_0\
    );
\s_axi_rdata_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => timing_param_tsudat_i(4),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => sr_i(3),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => timing_param_thddat_i(4),
      I5 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i_reg[4]\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(4),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(4),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[4]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[4]_0\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => Cr(3),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => timing_param_tlow_i(4),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[4]_i_8_n_0\
    );
\s_axi_rdata_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[8]_0\(5),
      I1 => Rc_fifo_data(0),
      I2 => \bus2ip_addr_i_reg[6]\(0),
      I3 => timing_param_tsusta_i(5),
      I4 => \bus2ip_addr_i_reg[6]\(3),
      I5 => Tx_fifo_data(4),
      O => \s_axi_rdata_i_reg[5]\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(5),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(5),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[5]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[5]_0\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => timing_param_tlow_i(5),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[5]_i_8_n_0\
    );
\s_axi_rdata_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833300030"
    )
        port map (
      I0 => \^sda_setup_reg_0\(5),
      I1 => \bus2ip_addr_i_reg[6]\(2),
      I2 => sr_i(1),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \^s_axi_rdata_i_reg[8]\(4),
      I5 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i_reg[6]\
    );
\s_axi_rdata_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(6),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(6),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[6]_i_8_n_0\,
      O => \s_axi_rdata_i_reg[6]_0\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => \^s_axi_rdata_i_reg[8]_3\(0),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[6]_i_8_n_0\
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => adr_i(7),
      I1 => \bus2ip_addr_i_reg[6]\(3),
      I2 => timing_param_thdsta_i(7),
      I3 => \bus2ip_addr_i_reg[6]\(4),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \s_axi_rdata_i[7]_i_9_n_0\,
      O => \s_axi_rdata_i_reg[7]\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => Cr(0),
      I1 => \bus2ip_addr_i_reg[6]\(4),
      I2 => \^s_axi_rdata_i_reg[8]_3\(1),
      I3 => \bus2ip_addr_i_reg[6]\(3),
      O => \s_axi_rdata_i[7]_i_9_n_0\
    );
\s_axi_rdata_i[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => timing_param_tbuf_i(8),
      I1 => timing_param_tsusta_i(8),
      I2 => \bus2ip_addr_i_reg[6]\(1),
      I3 => timing_param_thdsta_i(8),
      I4 => \bus2ip_addr_i_reg[6]\(2),
      I5 => \^s_axi_rdata_i_reg[8]_3\(2),
      O => \s_axi_rdata_i_reg[8]_2\
    );
sda_setup_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^sda_setup_reg_0\(0),
      I1 => \q_int_reg[3]\(0),
      I2 => \q_int_reg[3]\(1),
      I3 => \^sda_setup_reg_0\(1),
      I4 => \q_int_reg[3]\(2),
      I5 => \^sda_setup_reg_0\(2),
      O => sda_setup_reg
    );
sda_setup_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^sda_setup_reg_0\(3),
      I1 => \q_int_reg[3]\(3),
      I2 => \q_int_reg[3]\(4),
      I3 => timing_param_tsudat_i(4),
      I4 => \q_int_reg[3]\(5),
      I5 => \^sda_setup_reg_0\(4),
      O => sda_setup_reg_1
    );
slave_sda_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555514"
    )
        port map (
      I0 => Data_Exists_DFF_3(0),
      I1 => \data_int_reg[7]\(7),
      I2 => adr_i(7),
      I3 => slave_sda_i_3_n_0,
      I4 => slave_sda_i_4_n_0,
      O => \^slave_sda_reg\
    );
slave_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => adr_i(4),
      I1 => \data_int_reg[7]\(4),
      I2 => \data_int_reg[7]\(5),
      I3 => adr_i(5),
      I4 => \data_int_reg[7]\(6),
      I5 => adr_i(6),
      O => slave_sda_i_3_n_0
    );
slave_sda_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => adr_i(1),
      I1 => \data_int_reg[7]\(1),
      I2 => \data_int_reg[7]\(2),
      I3 => adr_i(2),
      I4 => \data_int_reg[7]\(3),
      I5 => adr_i(3),
      O => slave_sda_i_4_n_0
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_1,
      Q => dtre_d1_reg(1),
      R => Bus2IIC_Reset
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(5),
      Q => sr_i(1),
      R => Bus2IIC_Reset
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(4),
      Q => dtre_d1_reg(0),
      R => Bus2IIC_Reset
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(3),
      Q => sr_i(3),
      R => Bus2IIC_Reset
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(2),
      Q => sr_i(4),
      R => Bus2IIC_Reset
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(1),
      Q => sr_i(5),
      R => Bus2IIC_Reset
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Data_Exists_DFF_3(0),
      Q => sr_i(7),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(0),
      Q => timing_param_tbuf_i(0),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(1),
      Q => timing_param_tbuf_i(1),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(2),
      Q => timing_param_tbuf_i(2),
      R => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(3),
      Q => timing_param_tbuf_i(3),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(4),
      Q => \^fsm_sequential_scl_state_reg[0]_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(5),
      Q => \^fsm_sequential_scl_state_reg[0]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(6),
      Q => \^fsm_sequential_scl_state_reg[0]_0\(2),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(7),
      Q => \^fsm_sequential_scl_state_reg[0]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tbuf_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(3),
      D => s_axi_wdata(8),
      Q => timing_param_tbuf_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]\(1),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]\(2),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(3),
      Q => timing_param_thddat_i(3),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(4),
      Q => timing_param_thddat_i(4),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]\(4),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]\(5),
      R => Bus2IIC_Reset
    );
\timing_param_thddat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(0),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]\(6),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(0),
      Q => \^fsm_sequential_scl_state_reg[2]\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(1),
      Q => timing_param_thdsta_i(1),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(2),
      Q => timing_param_thdsta_i(2),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(3),
      Q => timing_param_thdsta_i(3),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(4),
      Q => timing_param_thdsta_i(4),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(5),
      Q => timing_param_thdsta_i(5),
      R => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(6),
      Q => timing_param_thdsta_i(6),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(7),
      Q => timing_param_thdsta_i(7),
      S => Bus2IIC_Reset
    );
\timing_param_thdsta_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(5),
      D => s_axi_wdata(8),
      Q => timing_param_thdsta_i(8),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_1\(0),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_1\(1),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_1\(2),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_1\(3),
      R => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_1\(4),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_1\(5),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_1\(6),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_1\(7),
      S => Bus2IIC_Reset
    );
\timing_param_thigh_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(2),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_1\(8),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(0),
      Q => timing_param_tlow_i(0),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(1),
      Q => timing_param_tlow_i(1),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(2),
      Q => timing_param_tlow_i(2),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(3),
      Q => timing_param_tlow_i(3),
      R => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(4),
      Q => timing_param_tlow_i(4),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(5),
      Q => timing_param_tlow_i(5),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_3\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_3\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tlow_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(1),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_3\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(0),
      Q => \^sda_setup_reg_0\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(1),
      Q => \^sda_setup_reg_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(2),
      Q => \^sda_setup_reg_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(3),
      Q => \^sda_setup_reg_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(4),
      Q => timing_param_tsudat_i(4),
      S => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(5),
      Q => \^sda_setup_reg_0\(4),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(6),
      Q => \^sda_setup_reg_0\(5),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(7),
      Q => \^sda_setup_reg_0\(6),
      R => Bus2IIC_Reset
    );
\timing_param_tsudat_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(4),
      D => s_axi_wdata(8),
      Q => \^sda_setup_reg_0\(7),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(0),
      Q => timing_param_tsusta_i(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(1),
      Q => timing_param_tsusta_i(1),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(2),
      Q => timing_param_tsusta_i(2),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(3),
      Q => timing_param_tsusta_i(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(4),
      Q => \^fsm_sequential_scl_state_reg[0]_3\(0),
      S => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(5),
      Q => timing_param_tsusta_i(5),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(6),
      Q => \^fsm_sequential_scl_state_reg[0]_3\(1),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(7),
      Q => \^fsm_sequential_scl_state_reg[0]_3\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tsusta_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(7),
      D => s_axi_wdata(8),
      Q => timing_param_tsusta_i(8),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(0),
      Q => \^s_axi_rdata_i_reg[8]_0\(0),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(1),
      Q => \^s_axi_rdata_i_reg[8]_0\(1),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(2),
      Q => \^s_axi_rdata_i_reg[8]_0\(2),
      R => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(3),
      Q => \^s_axi_rdata_i_reg[8]_0\(3),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(4),
      Q => \^s_axi_rdata_i_reg[8]_0\(4),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(5),
      Q => \^s_axi_rdata_i_reg[8]_0\(5),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(6),
      Q => \^s_axi_rdata_i_reg[8]_0\(6),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(7),
      Q => \^s_axi_rdata_i_reg[8]_0\(7),
      S => Bus2IIC_Reset
    );
\timing_param_tsusto_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IIC_WrCE(6),
      D => s_axi_wdata(8),
      Q => \^s_axi_rdata_i_reg[8]_0\(8),
      R => Bus2IIC_Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_shift8 is
  port (
    \LEVEL_1_GEN.master_sda_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    slave_sda_reg : out STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    shift_reg_ld_reg : in STD_LOGIC;
    txak : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_under_prev_i_reg : in STD_LOGIC;
    abgc_i_reg : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    shift_reg_ld_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end xcl_design_axi_i2c_0_shift8;

architecture STRUCTURE of xcl_design_axi_i2c_0_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_int[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_int[7]_i_2\ : label is "soft_lutpair8";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB0F0BFFFB000B"
    )
        port map (
      I0 => txak,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \^q\(7),
      I5 => tx_under_prev_i_reg,
      O => \LEVEL_1_GEN.master_sda_reg\
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(0),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(0),
      O => \data_int[1]_i_1_n_0\
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(1),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(1),
      O => \data_int[2]_i_1_n_0\
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(2),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(2),
      O => \data_int[3]_i_1_n_0\
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(3),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(3),
      O => \data_int[4]_i_1_n_0\
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(4),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(4),
      O => \data_int[5]_i_1_n_0\
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(5),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(5),
      O => \data_int[6]_i_1_n_0\
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_reg_en,
      I1 => shift_reg_ld_reg,
      O => \data_int[7]_i_1_n_0\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_fifo_data(6),
      I1 => shift_reg_ld_reg,
      I2 => \^q\(6),
      O => \data_int[7]_i_2_n_0\
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => shift_reg_ld_reg_0(0),
      Q => \^q\(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[1]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[2]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[3]_i_1_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[4]_i_1_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[5]_i_1_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[6]_i_1_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \data_int[7]_i_1_n_0\,
      D => \data_int[7]_i_2_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
slave_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFB0B000B0B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => abgc_i_reg,
      I4 => \out\(1),
      I5 => txak,
      O => slave_sda_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_shift8_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_reg_ld0 : out STD_LOGIC;
    abgc_i_reg : out STD_LOGIC;
    srw_i_reg : out STD_LOGIC;
    \RD_FIFO_CNTRL.ro_prev_i_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_lost_reg : in STD_LOGIC;
    sda_sample : in STD_LOGIC;
    abgc_i_reg_0 : in STD_LOGIC;
    master_slave_reg : in STD_LOGIC;
    \cr_i_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[6]\ : in STD_LOGIC;
    srw_i_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    detect_start : in STD_LOGIC;
    detect_stop_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_axi_i2c_0_shift8_1 : entity is "shift8";
end xcl_design_axi_i2c_0_shift8_1;

architecture STRUCTURE of xcl_design_axi_i2c_0_shift8_1 is
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal abgc_i_i_2_n_0 : STD_LOGIC;
  signal abgc_i_i_3_n_0 : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \RD_FIFO_CNTRL.ro_prev_i_reg\,
      I1 => \out\(2),
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      O => D(0)
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000111110001"
    )
        port map (
      I0 => arb_lost_reg,
      I1 => sda_sample,
      I2 => abgc_i_reg_0,
      I3 => \^q\(0),
      I4 => master_slave_reg,
      I5 => \cr_i_reg[1]\(1),
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
abgc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AE0000"
    )
        port map (
      I0 => srw_i_reg_0(0),
      I1 => abgc_i_i_2_n_0,
      I2 => abgc_i_i_3_n_0,
      I3 => detect_start,
      I4 => \cr_i_reg[1]\(0),
      I5 => detect_stop_reg,
      O => abgc_i_reg
    );
abgc_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(0),
      I2 => \^q\(6),
      I3 => \^q\(1),
      O => abgc_i_i_2_n_0
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \out\(2),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \cr_i_reg[1]\(2),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => abgc_i_i_3_n_0
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q => \^q\(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^q\(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^q\(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^q\(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^q\(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^q\(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^q\(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^q\(7),
      R => SR(0)
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \cr_i_reg[1]\(1),
      I1 => master_slave_reg,
      I2 => \^q\(0),
      I3 => \out\(2),
      I4 => \FSM_onehot_state_reg[6]\,
      O => shift_reg_ld0
    );
srw_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => srw_i_reg_0(1),
      I1 => \out\(2),
      I2 => \^q\(0),
      I3 => \cr_i_reg[1]\(0),
      O => srw_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Tx_fifo_rst : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_soft_reset;

architecture STRUCTURE of xcl_design_axi_i2c_0_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_RAM[0].SRL16E_I_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair54";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair55";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair55";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
  SR(0) <= \^sr\(0);
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(0)
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^sr\(0),
      I2 => Tx_fifo_rst,
      O => ctrlFifoDin(1)
    );
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      I1 => s_axi_aresetn,
      O => \^sr\(0)
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain(1),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => \RESET_FLOPS[3].RST_FLOPS_n_0\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_upcnt_n is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_scl_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_cnt_en13_out : in STD_LOGIC;
    detect_stop_b_reg : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \timing_param_thddat_i_reg[3]\ : in STD_LOGIC;
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \timing_param_tlow_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_scl_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[0]_0\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    arb_lost_reg : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    next_scl_state10_out : in STD_LOGIC;
    \FSM_sequential_scl_state_reg[2]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_upcnt_n;

architecture STRUCTURE of xcl_design_axi_i2c_0_upcnt_n is
  signal \FSM_sequential_scl_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal clk_cnt_en : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \q_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_5_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_int[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[6]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[0]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_int[0]_i_5__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[0]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[0]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[1]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[1]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[5]_i_2\ : label is "soft_lutpair3";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\FSM_sequential_scl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEFE"
    )
        port map (
      I0 => \FSM_sequential_scl_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_scl_state_reg[2]\,
      I2 => \FSM_sequential_scl_state_reg[0]_0\,
      I3 => clk_cnt_en13_out,
      I4 => \out\(2),
      I5 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      O => D(0)
    );
\FSM_sequential_scl_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(8),
      I1 => \timing_param_thddat_i_reg[8]\(5),
      I2 => \^q\(7),
      I3 => \timing_param_thddat_i_reg[8]\(4),
      I4 => \timing_param_thddat_i_reg[8]\(3),
      I5 => \^q\(6),
      O => \FSM_sequential_scl_state[0]_i_11_n_0\
    );
\FSM_sequential_scl_state[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \timing_param_thddat_i_reg[8]\(1),
      I2 => \^q\(2),
      I3 => \timing_param_thddat_i_reg[8]\(2),
      I4 => \timing_param_thddat_i_reg[8]\(0),
      I5 => \^q\(0),
      O => \FSM_sequential_scl_state[0]_i_12_n_0\
    );
\FSM_sequential_scl_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAAAAAA"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I1 => next_scl_state10_out,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \FSM_sequential_scl_state_reg[2]_0\,
      I5 => \FSM_sequential_scl_state[0]_i_7_n_0\,
      O => \FSM_sequential_scl_state[0]_i_2_n_0\
    );
\FSM_sequential_scl_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \FSM_sequential_scl_state[0]_i_9_n_0\,
      I1 => scndry_out,
      I2 => \out\(2),
      I3 => \out\(3),
      I4 => \out\(1),
      I5 => \out\(0),
      O => \FSM_sequential_scl_state[0]_i_7_n_0\
    );
\FSM_sequential_scl_state[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \timing_param_thddat_i_reg[3]\,
      I1 => \FSM_sequential_scl_state[0]_i_11_n_0\,
      I2 => \FSM_sequential_scl_state[0]_i_12_n_0\,
      O => \FSM_sequential_scl_state[0]_i_9_n_0\
    );
\FSM_sequential_scl_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \timing_param_tlow_i_reg[8]\(1),
      I2 => \^q\(8),
      I3 => \timing_param_tlow_i_reg[8]\(2),
      I4 => \timing_param_tlow_i_reg[8]\(0),
      I5 => \^q\(6),
      O => \FSM_sequential_scl_state_reg[1]\
    );
\FSM_sequential_scl_state[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \timing_param_tsusto_i_reg[5]\(1),
      I2 => \^q\(5),
      I3 => \timing_param_tsusto_i_reg[5]\(2),
      I4 => \timing_param_tsusto_i_reg[5]\(0),
      I5 => \^q\(3),
      O => \FSM_sequential_scl_state_reg[0]\
    );
\q_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEEEEEEEFFE"
    )
        port map (
      I0 => clk_cnt_en,
      I1 => \q_int[0]_i_4_n_0\,
      I2 => \out\(3),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \q_int[0]_i_1_n_0\
    );
\q_int[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => scndry_out,
      I1 => \FSM_sequential_scl_state[0]_i_12_n_0\,
      I2 => \FSM_sequential_scl_state[0]_i_11_n_0\,
      I3 => \timing_param_thddat_i_reg[3]\,
      O => \q_int[0]_i_10_n_0\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222202222222002"
    )
        port map (
      I0 => \q_int[0]_i_5__0_n_0\,
      I1 => \q_int[0]_i_4_n_0\,
      I2 => \out\(3),
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \out\(2),
      O => \p_0_in__0\(8)
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDDFCCCCCDFFCCCC"
    )
        port map (
      I0 => \out\(1),
      I1 => \q_int[0]_i_6_n_0\,
      I2 => \out\(2),
      I3 => \out\(3),
      I4 => \out\(0),
      I5 => arb_lost_reg,
      O => clk_cnt_en
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAEAAAEAAAEAAAE"
    )
        port map (
      I0 => \q_int[0]_i_8_n_0\,
      I1 => \q_int[0]_i_9_n_0\,
      I2 => \out\(3),
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => arb_lost_reg,
      O => \q_int[0]_i_4_n_0\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \q_int[2]_i_2_n_0\,
      O => \q_int[0]_i_5__0_n_0\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000080B0808"
    )
        port map (
      I0 => \q_int[0]_i_10_n_0\,
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => clk_cnt_en13_out,
      I4 => detect_stop_b_reg,
      I5 => \out\(1),
      O => \q_int[0]_i_6_n_0\
    );
\q_int[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \out\(0),
      I1 => \q_int[0]_i_10_n_0\,
      I2 => \out\(3),
      I3 => \out\(2),
      O => \q_int[0]_i_8_n_0\
    );
\q_int[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => clk_cnt_en13_out,
      I1 => detect_stop_b_reg,
      I2 => \out\(0),
      O => \q_int[0]_i_9_n_0\
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110000"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \q_int[1]_i_2_n_0\,
      I2 => \q_int[1]_i_3_n_0\,
      I3 => \q_int[1]_i_4_n_0\,
      I4 => \q_int[1]_i_5_n_0\,
      I5 => \^q\(7),
      O => \q_int[1]_i_1__0_n_0\
    );
\q_int[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(3),
      O => \q_int[1]_i_2_n_0\
    );
\q_int[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(3),
      I1 => \out\(2),
      O => \q_int[1]_i_3_n_0\
    );
\q_int[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      O => \q_int[1]_i_4_n_0\
    );
\q_int[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_int[2]_i_2_n_0\,
      O => \q_int[1]_i_5_n_0\
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111000000000111"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \q_int[1]_i_2_n_0\,
      I2 => \q_int[1]_i_3_n_0\,
      I3 => \q_int[1]_i_4_n_0\,
      I4 => \q_int[2]_i_2_n_0\,
      I5 => \^q\(6),
      O => \q_int[2]_i_1__0_n_0\
    );
\q_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \q_int[2]_i_2_n_0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055455541"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \q_int[3]_i_2_n_0\,
      O => \q_int[3]_i_1__0_n_0\
    );
\q_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \q_int[3]_i_2_n_0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055455541"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \q_int[4]_i_2_n_0\,
      O => \q_int[4]_i_1__0_n_0\
    );
\q_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \q_int[4]_i_2_n_0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055455541"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \q_int[5]_i_2_n_0\,
      O => \q_int[5]_i_1__0_n_0\
    );
\q_int[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \q_int[5]_i_2_n_0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055455541"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \q_int[6]_i_2_n_0\,
      O => \q_int[6]_i_1__0_n_0\
    );
\q_int[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \q_int[6]_i_2_n_0\
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000600060006"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \q_int[0]_i_4_n_0\,
      I3 => \q_int[1]_i_2_n_0\,
      I4 => \q_int[1]_i_3_n_0\,
      I5 => \q_int[1]_i_4_n_0\,
      O => \p_0_in__0\(1)
    );
\q_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055455541"
    )
        port map (
      I0 => \q_int[0]_i_4_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \^q\(0),
      O => \p_0_in__0\(0)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => \^q\(8),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[1]_i_1__0_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[2]_i_1__0_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[3]_i_1__0_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[5]_i_1__0_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \q_int[6]_i_1__0_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_upcnt_n_2 is
  port (
    \q_int_reg[1]_0\ : out STD_LOGIC;
    \q_int_reg[3]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sda_setup_reg : out STD_LOGIC;
    sda_setup : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_under_prev_d1 : in STD_LOGIC;
    tx_under_prev_i_reg : in STD_LOGIC;
    gen_stop : in STD_LOGIC;
    gen_stop_d1 : in STD_LOGIC;
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[0]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[3]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_axi_i2c_0_upcnt_n_2 : entity is "upcnt_n";
end xcl_design_axi_i2c_0_upcnt_n_2;

architecture STRUCTURE of xcl_design_axi_i2c_0_upcnt_n_2 is
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \q_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \q_int[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^q_int_reg[1]_0\ : STD_LOGIC;
  signal \^q_int_reg[3]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal sda_setup_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_int[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_int[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_int[7]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_int[8]_i_1__0\ : label is "soft_lutpair14";
begin
  \q_int_reg[1]_0\ <= \^q_int_reg[1]_0\;
  \q_int_reg[3]_0\(5 downto 0) <= \^q_int_reg[3]_0\(5 downto 0);
\q_int[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sda_setup,
      I1 => \^q_int_reg[1]_0\,
      O => \q_int[0]_i_1__0_n_0\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF40"
    )
        port map (
      I0 => \q_int[0]_i_4__0_n_0\,
      I1 => \q_int_reg__0\(2),
      I2 => \q_int_reg__0\(1),
      I3 => \q_int_reg__0\(0),
      I4 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(8)
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => sda_rin_d1,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I2 => \q_int[0]_i_5_n_0\,
      O => \^q_int_reg[1]_0\
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(4),
      I1 => \^q_int_reg[3]_0\(2),
      I2 => \^q_int_reg[3]_0\(0),
      I3 => \^q_int_reg[3]_0\(1),
      I4 => \^q_int_reg[3]_0\(3),
      I5 => \^q_int_reg[3]_0\(5),
      O => \q_int[0]_i_4__0_n_0\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => rsta_d1,
      I1 => Q(0),
      I2 => tx_under_prev_d1,
      I3 => tx_under_prev_i_reg,
      I4 => gen_stop,
      I5 => gen_stop_d1,
      O => \q_int[0]_i_5_n_0\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => \^q_int_reg[1]_0\,
      I1 => \q_int_reg__0\(2),
      I2 => \q_int[0]_i_4__0_n_0\,
      I3 => \q_int_reg__0\(1),
      O => \q_int[1]_i_1__1_n_0\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^q_int_reg[1]_0\,
      I1 => \q_int[0]_i_4__0_n_0\,
      I2 => \q_int_reg__0\(2),
      O => \q_int[2]_i_1__1_n_0\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^q_int_reg[1]_0\,
      I1 => \q_int[3]_i_2__0_n_0\,
      I2 => \^q_int_reg[3]_0\(5),
      O => \q_int[3]_i_1__1_n_0\
    );
\q_int[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(3),
      I1 => \^q_int_reg[3]_0\(1),
      I2 => \^q_int_reg[3]_0\(0),
      I3 => \^q_int_reg[3]_0\(2),
      I4 => \^q_int_reg[3]_0\(4),
      O => \q_int[3]_i_2__0_n_0\
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(2),
      I1 => \^q_int_reg[3]_0\(0),
      I2 => \^q_int_reg[3]_0\(1),
      I3 => \^q_int_reg[3]_0\(3),
      I4 => \^q_int_reg[3]_0\(4),
      I5 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(4)
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(1),
      I1 => \^q_int_reg[3]_0\(0),
      I2 => \^q_int_reg[3]_0\(2),
      I3 => \^q_int_reg[3]_0\(3),
      I4 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(3)
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(0),
      I1 => \^q_int_reg[3]_0\(1),
      I2 => \^q_int_reg[3]_0\(2),
      I3 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(2)
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(1),
      I1 => \^q_int_reg[3]_0\(0),
      I2 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(1)
    );
\q_int[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_reg[3]_0\(0),
      I1 => \^q_int_reg[1]_0\,
      O => \p_0_in__1\(0)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(8),
      Q => \q_int_reg__0\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[1]_i_1__1_n_0\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[2]_i_1__1_n_0\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \q_int[3]_i_1__1_n_0\,
      Q => \^q_int_reg[3]_0\(5),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(4),
      Q => \^q_int_reg[3]_0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(3),
      Q => \^q_int_reg[3]_0\(3),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(2),
      Q => \^q_int_reg[3]_0\(2),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(1),
      Q => \^q_int_reg[3]_0\(1),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__0_n_0\,
      D => \p_0_in__1\(0),
      Q => \^q_int_reg[3]_0\(0),
      R => SR(0)
    );
sda_setup_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\,
      I1 => \timing_param_tsudat_i_reg[0]\,
      I2 => sda_setup_i_4_n_0,
      I3 => \timing_param_tsudat_i_reg[3]\,
      I4 => sda_setup,
      O => sda_setup_reg
    );
sda_setup_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \q_int_reg__0\(1),
      I1 => \timing_param_tsudat_i_reg[8]\(1),
      I2 => \q_int_reg__0\(0),
      I3 => \timing_param_tsudat_i_reg[8]\(2),
      I4 => \timing_param_tsudat_i_reg[8]\(0),
      I5 => \q_int_reg__0\(2),
      O => sda_setup_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xcl_design_axi_i2c_0_upcnt_n__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EarlyAckDataState0 : out STD_LOGIC;
    dtc_i_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    detect_start : in STD_LOGIC;
    ro_prev_d1_reg : in STD_LOGIC;
    bit_cnt_en : in STD_LOGIC;
    scl_falling_edge : in STD_LOGIC;
    dtc_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xcl_design_axi_i2c_0_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \xcl_design_axi_i2c_0_upcnt_n__parameterized0\;

architecture STRUCTURE of \xcl_design_axi_i2c_0_upcnt_n__parameterized0\ is
  signal \FSM_onehot_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_7_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \q_int[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_int[0]_i_3__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_int[0]_i_2__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair2";
begin
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAAEA"
    )
        port map (
      I0 => \out\(4),
      I1 => \out\(3),
      I2 => bit_cnt(3),
      I3 => bit_cnt(2),
      I4 => bit_cnt(0),
      I5 => bit_cnt(1),
      O => EarlyAckDataState0
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_4_n_0\,
      I1 => \out\(2),
      I2 => detect_start,
      I3 => \out\(0),
      I4 => ro_prev_d1_reg,
      O => E(0)
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFCFCFC"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(5),
      I2 => \out\(4),
      I3 => \FSM_onehot_state_reg[4]\,
      I4 => detect_start,
      I5 => \FSM_onehot_state[6]_i_7_n_0\,
      O => \FSM_onehot_state[6]_i_4_n_0\
    );
\FSM_onehot_state[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => bit_cnt(3),
      I3 => bit_cnt(2),
      O => \FSM_onehot_state[6]_i_7_n_0\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(3),
      I4 => scl_falling_edge,
      I5 => dtc_i,
      O => dtc_i_reg
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bit_cnt_en,
      I1 => detect_start,
      I2 => \out\(0),
      I3 => \out\(4),
      I4 => \out\(5),
      I5 => \out\(2),
      O => \q_int[0]_i_1__1_n_0\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \q_int[0]_i_3__1_n_0\,
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => bit_cnt(2),
      I4 => bit_cnt(3),
      O => p_0_in(3)
    );
\q_int[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(5),
      I2 => \out\(4),
      I3 => \out\(0),
      I4 => detect_start,
      O => \q_int[0]_i_3__1_n_0\
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \q_int[0]_i_3__1_n_0\,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(2),
      O => p_0_in(2)
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \q_int[0]_i_3__1_n_0\,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      O => p_0_in(1)
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => detect_start,
      I1 => \out\(0),
      I2 => \out\(4),
      I3 => \out\(5),
      I4 => \out\(2),
      I5 => bit_cnt(0),
      O => p_0_in(0)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(3),
      Q => bit_cnt(3),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(2),
      Q => bit_cnt(2),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(1),
      Q => bit_cnt(1),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \q_int[0]_i_1__1_n_0\,
      D => p_0_in(0),
      Q => bit_cnt(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_debounce is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_debounce;

architecture STRUCTURE of xcl_design_axi_i2c_0_debounce is
begin
INPUT_DOUBLE_REGS: entity work.xcl_design_axi_i2c_0_cdc_sync_4
     port map (
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scndry_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_debounce_3 is
  port (
    \data_int_reg[0]\ : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xcl_design_axi_i2c_0_debounce_3 : entity is "debounce";
end xcl_design_axi_i2c_0_debounce_3;

architecture STRUCTURE of xcl_design_axi_i2c_0_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.xcl_design_axi_i2c_0_cdc_sync
     port map (
      \data_int_reg[0]\ => \data_int_reg[0]\,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_iic_control is
  port (
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    arb_lost : out STD_LOGIC;
    stop_scl_reg : out STD_LOGIC;
    master_slave : out STD_LOGIC;
    Aas : out STD_LOGIC;
    \sr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_int_reg[0]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \q_int_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ : out STD_LOGIC;
    abgc_i_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sda_t : out STD_LOGIC;
    \cr_i_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_scl_state_reg[0]_0\ : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    rdCntrFrmTxFifo0 : out STD_LOGIC;
    \FSM_sequential_scl_state_reg[1]_0\ : out STD_LOGIC;
    detect_stop_b_reg_0 : out STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_scl_state_reg[2]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    scl_rising_edge0 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    state122_out : in STD_LOGIC;
    clk_cnt_en13_out : in STD_LOGIC;
    \timing_param_thddat_i_reg[3]\ : in STD_LOGIC;
    \q_int_reg[4]\ : in STD_LOGIC;
    new_rcv_dta_d1 : in STD_LOGIC;
    \cr_i_reg[4]\ : in STD_LOGIC;
    abgc_i_reg_1 : in STD_LOGIC;
    txak : in STD_LOGIC;
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_Exists_DFF : in STD_LOGIC;
    rxCntDone : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_data_exists : in STD_LOGIC;
    Tx_fifo_rd_d_reg : in STD_LOGIC;
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Msms_set : in STD_LOGIC;
    callingReadAccess : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tlow_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \timing_param_tsudat_i_reg[0]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[3]\ : in STD_LOGIC;
    shift_reg_ld_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \timing_param_tlow_i_reg[3]\ : in STD_LOGIC;
    arb_lost_reg_0 : in STD_LOGIC;
    next_scl_state10_out : in STD_LOGIC;
    \cr_i_reg[2]\ : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_iic_control;

architecture STRUCTURE of xcl_design_axi_i2c_0_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal BITCNT_n_0 : STD_LOGIC;
  signal BITCNT_n_2 : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal CLKCNT_n_11 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_sequential_scl_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_scl_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_scl_state_reg[2]_0\ : STD_LOGIC;
  signal I2CDATA_REG_n_0 : STD_LOGIC;
  signal I2CDATA_REG_n_2 : STD_LOGIC;
  signal I2CDATA_REG_n_3 : STD_LOGIC;
  signal I2CDATA_REG_n_4 : STD_LOGIC;
  signal I2CDATA_REG_n_5 : STD_LOGIC;
  signal I2CDATA_REG_n_6 : STD_LOGIC;
  signal I2CDATA_REG_n_7 : STD_LOGIC;
  signal I2CDATA_REG_n_8 : STD_LOGIC;
  signal I2CDATA_REG_n_9 : STD_LOGIC;
  signal I2CHEADER_REG_n_0 : STD_LOGIC;
  signal I2CHEADER_REG_n_10 : STD_LOGIC;
  signal I2CHEADER_REG_n_11 : STD_LOGIC;
  signal \LEVEL_1_GEN.master_sda_reg_n_0\ : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal SETUP_CNT_n_0 : STD_LOGIC;
  signal SETUP_CNT_n_7 : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal aas_i_i_1_n_0 : STD_LOGIC;
  signal al_i_i_1_n_0 : STD_LOGIC;
  signal al_i_i_2_n_0 : STD_LOGIC;
  signal al_prevent : STD_LOGIC;
  signal al_prevent_i_1_n_0 : STD_LOGIC;
  signal \^arb_lost\ : STD_LOGIC;
  signal arb_lost_i_1_n_0 : STD_LOGIC;
  signal arb_lost_i_2_n_0 : STD_LOGIC;
  signal arb_lost_i_3_n_0 : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal bus_busy_i_1_n_0 : STD_LOGIC;
  signal \cr_i[5]_i_3_n_0\ : STD_LOGIC;
  signal data_i2c_i0 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal detect_start_i_1_n_0 : STD_LOGIC;
  signal detect_stop_b_i_1_n_0 : STD_LOGIC;
  signal detect_stop_b_i_2_n_0 : STD_LOGIC;
  signal \^detect_stop_b_reg_0\ : STD_LOGIC;
  signal detect_stop_b_reg_n_0 : STD_LOGIC;
  signal detect_stop_i_1_n_0 : STD_LOGIC;
  signal detect_stop_reg_n_0 : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal dtre_d1 : STD_LOGIC;
  signal \^earlyackhdr\ : STD_LOGIC;
  signal gen_start : STD_LOGIC;
  signal gen_start_i_1_n_0 : STD_LOGIC;
  signal gen_stop : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal gen_stop_i_1_n_0 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal \^master_slave\ : STD_LOGIC;
  signal master_slave_i_1_n_0 : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d10 : STD_LOGIC;
  signal msms_d1_i_2_n_0 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal msms_rst_i_i_1_n_0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  attribute RTL_KEEP of p_0_in_0 : signal is "yes";
  signal p_1_in : STD_LOGIC;
  attribute RTL_KEEP of p_1_in : signal is "yes";
  signal p_1_in0_in : STD_LOGIC;
  attribute RTL_KEEP of p_1_in0_in : signal is "yes";
  signal p_1_in6_in : STD_LOGIC;
  attribute RTL_KEEP of p_1_in6_in : signal is "yes";
  signal p_2_in : STD_LOGIC;
  attribute RTL_KEEP of p_2_in : signal is "yes";
  signal p_4_in : STD_LOGIC;
  attribute RTL_KEEP of p_4_in : signal is "yes";
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal rdy_new_xmt_i_i_1_n_0 : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rsta_tx_under_prev : STD_LOGIC;
  signal rsta_tx_under_prev_i_1_n_0 : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_cout_reg0 : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal scl_falling_edge : STD_LOGIC;
  signal scl_falling_edge0 : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal scl_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of scl_state : signal is "yes";
  signal sda_cout : STD_LOGIC;
  signal sda_cout1 : STD_LOGIC;
  signal sda_cout4_out : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal sda_cout_reg_i_1_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_2_n_0 : STD_LOGIC;
  signal sda_cout_reg_i_5_n_0 : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal sda_sample_i_1_n_0 : STD_LOGIC;
  signal sda_setup : STD_LOGIC;
  signal sda_setup_i_2_n_0 : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal shift_reg_en_i_2_n_0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal shift_reg_ld_i_2_n_0 : STD_LOGIC;
  signal slave_sda_reg_n_0 : STD_LOGIC;
  signal sm_stop : STD_LOGIC;
  signal sm_stop_i_1_n_0 : STD_LOGIC;
  signal sm_stop_reg_n_0 : STD_LOGIC;
  signal \^sr_i_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state0 : STD_LOGIC;
  signal stop_scl : STD_LOGIC;
  signal \^stop_scl_reg\ : STD_LOGIC;
  signal stop_scl_reg_i_1_n_0 : STD_LOGIC;
  signal stop_scl_reg_i_3_n_0 : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal tx_under_prev_i_i_1_n_0 : STD_LOGIC;
  signal tx_under_prev_i_i_3_n_0 : STD_LOGIC;
  signal txer_edge_i_1_n_0 : STD_LOGIC;
  signal txer_i : STD_LOGIC;
  signal txer_i_i_1_n_0 : STD_LOGIC;
  signal txer_i_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_3\ : label is "soft_lutpair20";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[6]\ : label is "yes";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[1]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_scl_state[3]_i_5\ : label is "soft_lutpair17";
  attribute KEEP of \FSM_sequential_scl_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_scl_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of al_i_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of scl_falling_edge_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sda_cout_reg_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sda_cout_reg_i_5 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sda_sample_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sda_setup_i_2 : label is "soft_lutpair19";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  \FSM_sequential_scl_state_reg[2]_0\ <= \^fsm_sequential_scl_state_reg[2]_0\;
  New_rcv_dta <= \^new_rcv_dta\;
  Tx_under_prev <= \^tx_under_prev\;
  arb_lost <= \^arb_lost\;
  detect_stop_b_reg_0 <= \^detect_stop_b_reg_0\;
  earlyAckHdr <= \^earlyackhdr\;
  master_slave <= \^master_slave\;
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  scl_rin_d1 <= \^scl_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
  \sr_i_reg[4]\(1 downto 0) <= \^sr_i_reg[4]\(1 downto 0);
  stop_scl_reg <= \^stop_scl_reg\;
AckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in,
      Q => ackDataState,
      R => SR(0)
    );
BITCNT: entity work.\xcl_design_axi_i2c_0_upcnt_n__parameterized0\
     port map (
      E(0) => BITCNT_n_0,
      EarlyAckDataState0 => EarlyAckDataState0,
      \FSM_onehot_state_reg[4]\ => \FSM_onehot_state[6]_i_6_n_0\,
      SR(0) => SR(0),
      bit_cnt_en => bit_cnt_en,
      detect_start => detect_start,
      dtc_i => dtc_i,
      dtc_i_reg => BITCNT_n_2,
      \out\(5) => \FSM_onehot_state_reg_n_0_[6]\,
      \out\(4) => p_1_in,
      \out\(3) => p_1_in6_in,
      \out\(2) => p_1_in0_in,
      \out\(1) => p_2_in,
      \out\(0) => p_4_in,
      ro_prev_d1_reg => \FSM_onehot_state[6]_i_5_n_0\,
      s_axi_aclk => s_axi_aclk,
      scl_falling_edge => scl_falling_edge
    );
CLKCNT: entity work.xcl_design_axi_i2c_0_upcnt_n
     port map (
      D(0) => CLKCNT_n_11,
      \FSM_sequential_scl_state_reg[0]\ => \FSM_sequential_scl_state_reg[0]_0\,
      \FSM_sequential_scl_state_reg[0]_0\ => \FSM_sequential_scl_state[0]_i_4_n_0\,
      \FSM_sequential_scl_state_reg[1]\ => \FSM_sequential_scl_state_reg[1]_0\,
      \FSM_sequential_scl_state_reg[2]\ => \FSM_sequential_scl_state[0]_i_3_n_0\,
      \FSM_sequential_scl_state_reg[2]_0\ => \^detect_stop_b_reg_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \FSM_sequential_scl_state[0]_i_5_n_0\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => \FSM_sequential_scl_state[0]_i_6_n_0\,
      Q(8 downto 0) => \q_int_reg[0]\(8 downto 0),
      SR(0) => SR(0),
      arb_lost_reg => arb_lost_reg_0,
      clk_cnt_en13_out => clk_cnt_en13_out,
      detect_stop_b_reg => detect_stop_b_reg_n_0,
      next_scl_state10_out => next_scl_state10_out,
      \out\(3 downto 0) => scl_state(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_out => scndry_out,
      \timing_param_thddat_i_reg[3]\ => \timing_param_thddat_i_reg[3]\,
      \timing_param_thddat_i_reg[8]\(5 downto 0) => \timing_param_thddat_i_reg[8]\(5 downto 0),
      \timing_param_tlow_i_reg[8]\(2 downto 0) => \timing_param_tlow_i_reg[8]\(2 downto 0),
      \timing_param_tsusto_i_reg[5]\(2 downto 0) => \timing_param_tsusto_i_reg[5]\(2 downto 0)
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => SR(0)
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => scl_f_edg_d3,
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => \^earlyackhdr\,
      R => SR(0)
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEFE0"
    )
        port map (
      I0 => state122_out,
      I1 => \FSM_onehot_state[0]_i_3_n_0\,
      I2 => p_1_in0_in,
      I3 => \FSM_onehot_state[0]_i_4_n_0\,
      I4 => \FSM_onehot_state[0]_i_5_n_0\,
      I5 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sda_sample,
      I1 => \^arb_lost\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440044007703"
    )
        port map (
      I0 => detect_start,
      I1 => p_1_in6_in,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => state122_out,
      I4 => p_1_in,
      I5 => p_0_in_0,
      O => \FSM_onehot_state[0]_i_4_n_0\
    );
\FSM_onehot_state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => sda_sample,
      I2 => \^arb_lost\,
      I3 => p_0_in_0,
      I4 => p_1_in,
      O => \FSM_onehot_state[0]_i_5_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEEEA"
    )
        port map (
      I0 => p_4_in,
      I1 => detect_start,
      I2 => p_1_in6_in,
      I3 => p_0_in_0,
      I4 => p_1_in0_in,
      I5 => p_2_in,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => p_4_in,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Ro_prev,
      I1 => p_0_in_0,
      I2 => p_1_in,
      I3 => p_1_in6_in,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => sda_sample,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => p_1_in0_in,
      I5 => \cr_i_reg[4]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_4_in,
      I1 => p_2_in,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => p_0_in_0,
      I2 => p_1_in6_in,
      I3 => p_1_in,
      I4 => state122_out,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => p_4_in,
      I2 => p_2_in,
      I3 => \FSM_onehot_state[5]_i_2_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F101010101010"
    )
        port map (
      I0 => state122_out,
      I1 => detect_start,
      I2 => p_1_in6_in,
      I3 => p_0_in_0,
      I4 => Ro_prev,
      I5 => p_1_in,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => Q(0),
      O => state0
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => detect_start,
      I1 => p_1_in6_in,
      I2 => p_4_in,
      I3 => p_0_in_0,
      I4 => p_1_in0_in,
      I5 => p_2_in,
      O => \FSM_onehot_state[6]_i_3_n_0\
    );
\FSM_onehot_state[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ro_prev_d1,
      I1 => Ro_prev,
      I2 => scl_f_edg_d2,
      O => \FSM_onehot_state[6]_i_5_n_0\
    );
\FSM_onehot_state[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0,
      I1 => p_1_in6_in,
      O => \FSM_onehot_state[6]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => p_4_in,
      S => state0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_2_in,
      R => state0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_1_in0_in,
      R => state0
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => I2CHEADER_REG_n_0,
      Q => p_1_in6_in,
      R => state0
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_0_in_0,
      R => state0
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => p_1_in,
      R => state0
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BITCNT_n_0,
      D => \FSM_onehot_state[6]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => state0
    );
\FSM_sequential_scl_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(3),
      I2 => scl_state(0),
      I3 => scl_state(1),
      I4 => \timing_param_tlow_i_reg[3]\,
      O => \FSM_sequential_scl_state[0]_i_3_n_0\
    );
\FSM_sequential_scl_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scl_state(0),
      I1 => scl_state(1),
      O => \FSM_sequential_scl_state[0]_i_4_n_0\
    );
\FSM_sequential_scl_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004444C000"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I1 => \^detect_stop_b_reg_0\,
      I2 => \FSM_sequential_scl_state[0]_i_8_n_0\,
      I3 => \FSM_sequential_scl_state[1]_i_10_n_0\,
      I4 => scl_state(1),
      I5 => scl_state(0),
      O => \FSM_sequential_scl_state[0]_i_5_n_0\
    );
\FSM_sequential_scl_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C020000000200"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I1 => scl_state(1),
      I2 => scl_state(0),
      I3 => scl_state(3),
      I4 => scl_state(2),
      I5 => scndry_out,
      O => \FSM_sequential_scl_state[0]_i_6_n_0\
    );
\FSM_sequential_scl_state[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => detect_stop_b_reg_n_0,
      I1 => clk_cnt_en13_out,
      O => \FSM_sequential_scl_state[0]_i_8_n_0\
    );
\FSM_sequential_scl_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF88F8"
    )
        port map (
      I0 => \FSM_sequential_scl_state[1]_i_2_n_0\,
      I1 => \timing_param_tlow_i_reg[3]\,
      I2 => \FSM_sequential_scl_state[1]_i_4_n_0\,
      I3 => scl_state(3),
      I4 => \FSM_sequential_scl_state[1]_i_5_n_0\,
      I5 => \FSM_sequential_scl_state[1]_i_6_n_0\,
      O => \FSM_sequential_scl_state[1]_i_1_n_0\
    );
\FSM_sequential_scl_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bb\,
      I1 => gen_start,
      I2 => \^master_slave\,
      O => \FSM_sequential_scl_state[1]_i_10_n_0\
    );
\FSM_sequential_scl_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => scl_state(3),
      I3 => scl_state(2),
      O => \FSM_sequential_scl_state[1]_i_2_n_0\
    );
\FSM_sequential_scl_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      O => \FSM_sequential_scl_state[1]_i_4_n_0\
    );
\FSM_sequential_scl_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C000C40400000"
    )
        port map (
      I0 => scl_state(1),
      I1 => \^detect_stop_b_reg_0\,
      I2 => scl_state(0),
      I3 => detect_stop_b_reg_n_0,
      I4 => clk_cnt_en13_out,
      I5 => \FSM_sequential_scl_state[1]_i_10_n_0\,
      O => \FSM_sequential_scl_state[1]_i_5_n_0\
    );
\FSM_sequential_scl_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010D010100000000"
    )
        port map (
      I0 => next_scl_state10_out,
      I1 => scl_state(2),
      I2 => scl_state(3),
      I3 => \^arb_lost\,
      I4 => Q(3),
      I5 => scl_state(1),
      O => \FSM_sequential_scl_state[1]_i_6_n_0\
    );
\FSM_sequential_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000003000AA"
    )
        port map (
      I0 => next_scl_state10_out,
      I1 => \^stop_scl_reg\,
      I2 => \FSM_sequential_scl_state[2]_i_3_n_0\,
      I3 => scl_state(3),
      I4 => scl_state(2),
      I5 => \^fsm_sequential_scl_state_reg[2]_0\,
      O => \FSM_sequential_scl_state[2]_i_1_n_0\
    );
\FSM_sequential_scl_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => Q(3),
      O => \FSM_sequential_scl_state[2]_i_3_n_0\
    );
\FSM_sequential_scl_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => scl_state(0),
      I1 => scl_state(1),
      O => \^fsm_sequential_scl_state_reg[2]_0\
    );
\FSM_sequential_scl_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05FF05FF057F05FF"
    )
        port map (
      I0 => scl_state(1),
      I1 => scl_state(0),
      I2 => scl_state(2),
      I3 => scl_state(3),
      I4 => \cr_i_reg[2]\,
      I5 => \^arb_lost\,
      O => \FSM_sequential_scl_state[3]_i_2_n_0\
    );
\FSM_sequential_scl_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000003000F0"
    )
        port map (
      I0 => \FSM_sequential_scl_state[3]_i_5_n_0\,
      I1 => clk_cnt_en13_out,
      I2 => scl_state(3),
      I3 => scl_state(2),
      I4 => scl_state(0),
      I5 => scl_state(1),
      O => \FSM_sequential_scl_state[3]_i_3_n_0\
    );
\FSM_sequential_scl_state[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Q(3),
      I1 => \^arb_lost\,
      I2 => \^stop_scl_reg\,
      O => \FSM_sequential_scl_state[3]_i_5_n_0\
    );
\FSM_sequential_scl_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_scl_state[3]_i_2_n_0\,
      D => CLKCNT_n_11,
      Q => scl_state(0),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_scl_state[3]_i_2_n_0\,
      D => \FSM_sequential_scl_state[1]_i_1_n_0\,
      Q => scl_state(1),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_scl_state[3]_i_2_n_0\,
      D => \FSM_sequential_scl_state[2]_i_1_n_0\,
      Q => scl_state(2),
      R => SR(0)
    );
\FSM_sequential_scl_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_scl_state[3]_i_2_n_0\,
      D => \FSM_sequential_scl_state[3]_i_3_n_0\,
      Q => scl_state(3),
      R => SR(0)
    );
I2CDATA_REG: entity work.xcl_design_axi_i2c_0_shift8
     port map (
      \LEVEL_1_GEN.master_sda_reg\ => I2CDATA_REG_n_0,
      Q(7) => shift_reg(7),
      Q(6) => I2CDATA_REG_n_2,
      Q(5) => I2CDATA_REG_n_3,
      Q(4) => I2CDATA_REG_n_4,
      Q(3) => I2CDATA_REG_n_5,
      Q(2) => I2CDATA_REG_n_6,
      Q(1) => I2CDATA_REG_n_7,
      Q(0) => I2CDATA_REG_n_8,
      SR(0) => SR(0),
      Tx_fifo_data(6 downto 0) => Tx_fifo_data(6 downto 0),
      abgc_i_reg => abgc_i_reg_1,
      \out\(3) => p_1_in,
      \out\(2) => p_0_in_0,
      \out\(1) => p_1_in0_in,
      \out\(0) => p_2_in,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      shift_reg_ld_reg => \^shift_reg_ld\,
      shift_reg_ld_reg_0(0) => shift_reg_ld_reg_0(0),
      slave_sda_reg => I2CDATA_REG_n_9,
      tx_under_prev_i_reg => \^tx_under_prev\,
      txak => txak
    );
I2CHEADER_REG: entity work.xcl_design_axi_i2c_0_shift8_1
     port map (
      D(0) => I2CHEADER_REG_n_0,
      E(0) => i2c_header_en,
      \FSM_onehot_state_reg[6]\ => shift_reg_ld_i_2_n_0,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q(7 downto 0) => abgc_i_reg_0(7 downto 0),
      \RD_FIFO_CNTRL.ro_prev_i_reg\ => \FSM_onehot_state[3]_i_2_n_0\,
      SR(0) => SR(0),
      abgc_i_reg => I2CHEADER_REG_n_10,
      abgc_i_reg_0 => abgc_i_reg_1,
      arb_lost_reg => \^arb_lost\,
      \cr_i_reg[1]\(2) => Q(4),
      \cr_i_reg[1]\(1) => Q(2),
      \cr_i_reg[1]\(0) => Q(0),
      detect_start => detect_start,
      detect_stop_reg => detect_stop_reg_n_0,
      master_slave_reg => \^master_slave\,
      \out\(2) => p_1_in0_in,
      \out\(1) => p_2_in,
      \out\(0) => p_4_in,
      s_axi_aclk => s_axi_aclk,
      sda_sample => sda_sample,
      shift_reg_ld0 => shift_reg_ld0,
      srw_i_reg => I2CHEADER_REG_n_11,
      srw_i_reg_0(1 downto 0) => \^sr_i_reg[4]\(1 downto 0)
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_0,
      Q => \LEVEL_1_GEN.master_sda_reg_n_0\,
      S => SR(0)
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => \RD_FIFO_CNTRL.Rc_fifo_wr_reg\
    );
SETUP_CNT: entity work.xcl_design_axi_i2c_0_upcnt_n_2
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0\ => sda_setup_i_2_n_0,
      Q(0) => Q(3),
      SR(0) => SR(0),
      gen_stop => gen_stop,
      gen_stop_d1 => gen_stop_d1,
      \q_int_reg[1]_0\ => SETUP_CNT_n_0,
      \q_int_reg[3]_0\(5 downto 0) => \q_int_reg[3]\(5 downto 0),
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      sda_rin_d1 => sda_rin_d1,
      sda_setup => sda_setup,
      sda_setup_reg => SETUP_CNT_n_7,
      \timing_param_tsudat_i_reg[0]\ => \timing_param_tsudat_i_reg[0]\,
      \timing_param_tsudat_i_reg[3]\ => \timing_param_tsudat_i_reg[3]\,
      \timing_param_tsudat_i_reg[8]\(2 downto 0) => \timing_param_tsudat_i_reg[8]\(2 downto 0),
      tx_under_prev_d1 => tx_under_prev_d1,
      tx_under_prev_i_reg => \^tx_under_prev\
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0000"
    )
        port map (
      I0 => \^aas\,
      I1 => p_1_in0_in,
      I2 => abgc_i_reg_1,
      I3 => detect_stop_reg_n_0,
      I4 => Q(0),
      O => aas_i_i_1_n_0
    );
aas_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aas_i_i_1_n_0,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_10,
      Q => \^sr_i_reg[4]\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0EEE0E0"
    )
        port map (
      I0 => Q(3),
      I1 => \^master_slave\,
      I2 => al_i_i_2_n_0,
      I3 => al_prevent,
      I4 => detect_stop_reg_n_0,
      I5 => sm_stop_reg_n_0,
      O => al_i_i_1_n_0
    );
al_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8F"
    )
        port map (
      I0 => bus_busy_d1,
      I1 => gen_start,
      I2 => \^master_slave\,
      I3 => \^arb_lost\,
      O => al_i_i_2_n_0
    );
al_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_i_i_1_n_0,
      Q => \^d\(3),
      R => SR(0)
    );
al_prevent_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => detect_start,
      I1 => gen_stop,
      I2 => sm_stop_reg_n_0,
      I3 => al_prevent,
      O => al_prevent_i_1_n_0
    );
al_prevent_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => al_prevent_i_1_n_0,
      Q => al_prevent,
      R => SR(0)
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEA2A2A"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => \^master_slave\,
      I2 => arb_lost_i_2_n_0,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I4 => sda_cout_reg,
      I5 => arb_lost_i_3_n_0,
      O => arb_lost_i_1_n_0
    );
arb_lost_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => scl_rising_edge,
      I1 => p_0_in_0,
      I2 => p_2_in,
      O => arb_lost_i_2_n_0
    );
arb_lost_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0401FFFF"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(3),
      I2 => scl_state(1),
      I3 => scl_state(0),
      I4 => Q(0),
      O => arb_lost_i_3_n_0
    );
arb_lost_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arb_lost_i_1_n_0,
      Q => \^arb_lost\,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => scl_falling_edge,
      I1 => p_1_in6_in,
      I2 => p_2_in,
      I3 => p_0_in_0,
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => SR(0)
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => SR(0)
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => detect_stop_reg_n_0,
      O => bus_busy_i_1_n_0
    );
bus_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus_busy_i_1_n_0,
      Q => \^bb\,
      R => '0'
    );
\cr_i[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(3),
      O => \^detect_stop_b_reg_0\
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBB888B"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => E(0),
      I2 => \^bb\,
      I3 => Data_Exists_DFF,
      I4 => Q(1),
      I5 => \cr_i[5]_i_3_n_0\,
      O => \cr_i_reg[5]\(0)
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFFFEFEFE"
    )
        port map (
      I0 => rxCntDone,
      I1 => msms_rst_i,
      I2 => sm_stop_reg_n_0,
      I3 => dynamic_MSMS(0),
      I4 => Tx_data_exists,
      I5 => Tx_fifo_rd_d_reg,
      O => \cr_i[5]_i_3_n_0\
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_8,
      Q => \s_axi_rdata_i_reg[7]\(0),
      R => SR(0)
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_7,
      Q => \s_axi_rdata_i_reg[7]\(1),
      R => SR(0)
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_6,
      Q => \s_axi_rdata_i_reg[7]\(2),
      R => SR(0)
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_5,
      Q => \s_axi_rdata_i_reg[7]\(3),
      R => SR(0)
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_4,
      Q => \s_axi_rdata_i_reg[7]\(4),
      R => SR(0)
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_3,
      Q => \s_axi_rdata_i_reg[7]\(5),
      R => SR(0)
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => I2CDATA_REG_n_2,
      Q => \s_axi_rdata_i_reg[7]\(6),
      R => SR(0)
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => shift_reg(7),
      Q => \s_axi_rdata_i_reg[7]\(7),
      R => SR(0)
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => detect_start,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I2 => sda_rin_d1,
      I3 => scndry_out,
      I4 => Q(0),
      I5 => p_2_in,
      O => detect_start_i_1_n_0
    );
detect_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_start_i_1_n_0,
      Q => detect_start,
      R => '0'
    );
detect_stop_b_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => detect_start,
      I1 => Q(0),
      O => detect_stop_b_i_1_n_0
    );
detect_stop_b_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAA3F3F00AA0000"
    )
        port map (
      I0 => scndry_out,
      I1 => \^detect_stop_b_reg_0\,
      I2 => \FSM_sequential_scl_state[1]_i_4_n_0\,
      I3 => sda_rin_d1,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I5 => detect_stop_b_reg_n_0,
      O => detect_stop_b_i_2_n_0
    );
detect_stop_b_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_b_i_2_n_0,
      Q => detect_stop_b_reg_n_0,
      R => detect_stop_b_i_1_n_0
    );
detect_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF20EFEF20202020"
    )
        port map (
      I0 => scndry_out,
      I1 => sda_rin_d1,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I3 => msms_d2,
      I4 => msms_d1,
      I5 => detect_stop_reg_n_0,
      O => detect_stop_i_1_n_0
    );
detect_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => detect_stop_i_1_n_0,
      Q => detect_stop_reg_n_0,
      R => detect_stop_b_i_1_n_0
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => SR(0)
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => SR(0)
    );
dtc_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BITCNT_n_2,
      Q => dtc_i,
      R => SR(0)
    );
dtre_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => SR(0)
    );
gen_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => detect_start,
      I1 => msms_d2,
      I2 => msms_d1,
      I3 => gen_start,
      O => gen_start_i_1_n_0
    );
gen_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_start_i_1_n_0,
      Q => gen_start,
      R => SR(0)
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop,
      Q => gen_stop_d1,
      R => SR(0)
    );
gen_stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55750030"
    )
        port map (
      I0 => detect_stop_reg_n_0,
      I1 => msms_d1,
      I2 => msms_d2,
      I3 => \^arb_lost\,
      I4 => gen_stop,
      O => gen_stop_i_1_n_0
    );
gen_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_stop_i_1_n_0,
      Q => gen_stop,
      R => SR(0)
    );
i2c_header_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => scl_rising_edge,
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => SR(0)
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0C0A0"
    )
        port map (
      I0 => msms_d1,
      I1 => \^master_slave\,
      I2 => Q(0),
      I3 => \^bb\,
      I4 => \^arb_lost\,
      O => master_slave_i_1_n_0
    );
master_slave_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => master_slave_i_1_n_0,
      Q => \^master_slave\,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => msms_d1_i_2_n_0,
      I1 => msms_rst_i,
      O => msms_d10
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAABAAABA"
    )
        port map (
      I0 => Q(1),
      I1 => txer_i_reg_n_0,
      I2 => msms_d1,
      I3 => Msms_set,
      I4 => dtc_i_d2,
      I5 => dtc_i_d1,
      O => msms_d1_i_2_n_0
    );
msms_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d10,
      Q => msms_d1,
      R => SR(0)
    );
msms_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => SR(0)
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030AA00AA"
    )
        port map (
      I0 => msms_rst_i,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I2 => sda_cout_reg,
      I3 => \^master_slave\,
      I4 => arb_lost_i_2_n_0,
      I5 => arb_lost_i_3_n_0,
      O => msms_rst_i_i_1_n_0
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_rst_i_i_1_n_0,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_1_in,
      I1 => scl_falling_edge,
      I2 => Ro_prev,
      O => data_i2c_i0
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => data_i2c_i0,
      Q => \^new_rcv_dta\,
      R => SR(0)
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^earlyackhdr\,
      I1 => callingReadAccess,
      I2 => Tx_data_exists,
      O => rdCntrFrmTxFifo0
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F2F2F22202020"
    )
        port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => p_0_in_0,
      I3 => Q(1),
      I4 => p_2_in,
      I5 => \^rdy_new_xmt_i\,
      O => rdy_new_xmt_i_i_1_n_0
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i_i_1_n_0,
      Q => \^rdy_new_xmt_i\,
      R => SR(0)
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => SR(0)
    );
rsta_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => rsta_d1,
      R => SR(0)
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FF2020"
    )
        port map (
      I0 => Q(3),
      I1 => rsta_d1,
      I2 => sr_i(0),
      I3 => dtre_d1,
      I4 => rsta_tx_under_prev,
      O => rsta_tx_under_prev_i_1_n_0
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rsta_tx_under_prev_i_1_n_0,
      Q => rsta_tx_under_prev,
      R => SR(0)
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(1),
      I2 => scl_state(3),
      I3 => Ro_prev,
      O => scl_cout_reg0
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_cout_reg0,
      Q => scl_cout_reg,
      S => SR(0)
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge,
      Q => scl_f_edg_d1,
      R => SR(0)
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => SR(0)
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => SR(0)
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scl_rin_d1\,
      I1 => scndry_out,
      O => scl_falling_edge0
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_falling_edge0,
      Q => scl_falling_edge,
      R => SR(0)
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scndry_out,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_rising_edge0,
      Q => scl_rising_edge,
      R => SR(0)
    );
scl_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sda_setup,
      I1 => scl_cout_reg,
      I2 => rsta_tx_under_prev,
      I3 => Ro_prev,
      O => scl_t
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sda_cout_reg_i_2_n_0,
      I1 => sda_cout,
      I2 => sda_cout_reg,
      O => sda_cout_reg_i_1_n_0
    );
sda_cout_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EAA00FF"
    )
        port map (
      I0 => sda_cout4_out,
      I1 => scl_state(0),
      I2 => \q_int_reg[4]\,
      I3 => scl_state(1),
      I4 => scl_state(2),
      I5 => scl_state(3),
      O => sda_cout_reg_i_2_n_0
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45054141"
    )
        port map (
      I0 => scl_state(3),
      I1 => scl_state(2),
      I2 => scl_state(0),
      I3 => sda_cout_reg_i_5_n_0,
      I4 => scl_state(1),
      O => sda_cout
    );
sda_cout_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => Q(3),
      I1 => \LEVEL_1_GEN.master_sda_reg_n_0\,
      I2 => sda_cout1,
      O => sda_cout4_out
    );
sda_cout_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => Q(3),
      I2 => \^stop_scl_reg\,
      I3 => \q_int_reg[4]\,
      O => sda_cout_reg_i_5_n_0
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_cout_reg_i_1_n_0,
      Q => sda_cout_reg,
      S => SR(0)
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      Q => sda_rin_d1,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => sda_sample_i_1_n_0
    );
sda_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_sample_i_1_n_0,
      Q => sda_sample,
      R => SR(0)
    );
sda_setup_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => scndry_out,
      I1 => SETUP_CNT_n_0,
      I2 => \^tx_under_prev\,
      O => sda_setup_i_2_n_0
    );
sda_setup_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SETUP_CNT_n_7,
      Q => sda_setup,
      R => SR(0)
    );
sda_t_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFE0"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => sda_cout_reg,
      I2 => \^master_slave\,
      I3 => slave_sda_reg_n_0,
      I4 => \^stop_scl_reg\,
      O => sda_t
    );
shift_reg_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => shift_reg_en_i_2_n_0,
      I1 => \^master_slave\,
      I2 => p_2_in,
      I3 => scl_rising_edge,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404040"
    )
        port map (
      I0 => detect_start,
      I1 => p_0_in_0,
      I2 => scl_f_edg_d2,
      I3 => scl_rising_edge,
      I4 => p_1_in6_in,
      O => shift_reg_en_i_2_n_0
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => SR(0)
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => SR(0)
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \^tx_under_prev\,
      I2 => \^master_slave\,
      I3 => p_4_in,
      I4 => p_1_in6_in,
      I5 => detect_start,
      O => shift_reg_ld_i_2_n_0
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => SR(0)
    );
slave_sda_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CDATA_REG_n_9,
      Q => slave_sda_reg_n_0,
      S => SR(0)
    );
sm_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => sm_stop_reg_n_0,
      I1 => \FSM_onehot_state[6]_i_5_n_0\,
      I2 => sm_stop,
      I3 => \^master_slave\,
      I4 => Q(0),
      I5 => detect_stop_reg_n_0,
      O => sm_stop_i_1_n_0
    );
sm_stop_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \^arb_lost\,
      I1 => \^master_slave\,
      I2 => sda_sample,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => p_1_in0_in,
      O => sm_stop
    );
sm_stop_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sm_stop_i_1_n_0,
      Q => sm_stop_reg_n_0,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2CHEADER_REG_n_11,
      Q => \^sr_i_reg[4]\(1),
      R => '0'
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800FFFF28000000"
    )
        port map (
      I0 => sda_cout1,
      I1 => scl_state(1),
      I2 => scl_state(0),
      I3 => stop_scl_reg_i_3_n_0,
      I4 => stop_scl,
      I5 => \^stop_scl_reg\,
      O => stop_scl_reg_i_1_n_0
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => gen_stop,
      I1 => sm_stop_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => p_1_in0_in,
      I4 => p_1_in,
      O => sda_cout1
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scl_state(2),
      I1 => scl_state(3),
      O => stop_scl_reg_i_3_n_0
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40555F55"
    )
        port map (
      I0 => scl_state(3),
      I1 => sda_cout_reg_i_5_n_0,
      I2 => scl_state(2),
      I3 => scl_state(0),
      I4 => scl_state(1),
      O => stop_scl
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stop_scl_reg_i_1_n_0,
      Q => \^stop_scl_reg\,
      R => SR(0)
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => SR(0)
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => tx_under_prev_i0,
      I1 => p_4_in,
      I2 => sr_i(0),
      I3 => p_1_in6_in,
      I4 => \^tx_under_prev\,
      O => tx_under_prev_i_i_1_n_0
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => \^aas\,
      I1 => \^sr_i_reg[4]\(1),
      I2 => tx_under_prev_i_i_3_n_0,
      I3 => sr_i(0),
      I4 => gen_stop,
      I5 => scl_falling_edge,
      O => tx_under_prev_i0
    );
tx_under_prev_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      O => tx_under_prev_i_i_3_n_0
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_under_prev_i_i_1_n_0,
      Q => \^tx_under_prev\,
      R => SR(0)
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2000000E200"
    )
        port map (
      I0 => \^d\(2),
      I1 => txer_i,
      I2 => sda_sample,
      I3 => Q(0),
      I4 => scl_f_edg_d2,
      I5 => scl_falling_edge,
      O => txer_edge_i_1_n_0
    );
txer_edge_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => scl_falling_edge,
      I1 => p_1_in0_in,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => p_1_in,
      O => txer_i
    );
txer_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_edge_i_1_n_0,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => sda_sample,
      I1 => scl_falling_edge,
      I2 => p_1_in0_in,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => p_1_in,
      I5 => txer_i_reg_n_0,
      O => txer_i_i_1_n_0
    );
txer_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txer_i_i_1_n_0,
      Q => txer_i_reg_n_0,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_slave_attachment is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    irpt_wrack_d1 : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_1_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thdsta_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \adr_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[4]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cr_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \sr_i_reg[4]\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end xcl_design_axi_i2c_0_slave_attachment;

architecture STRUCTURE of xcl_design_axi_i2c_0_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal AXI_IP2Bus_Error : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 1 );
  signal IIC2Bus_Data : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal I_DECODER_n_1 : STD_LOGIC;
  signal I_DECODER_n_3 : STD_LOGIC;
  signal I_DECODER_n_44 : STD_LOGIC;
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[1]\ : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_2_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_8_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i0 : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair49";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.xcl_design_axi_i2c_0_address_decoder
     port map (
      AXI_IP2Bus_Error => AXI_IP2Bus_Error,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_IP2Bus_WrAck2_reg,
      \Addr_Counters[0].FDRE_I\ => \s_axi_rdata_i[0]_i_5_n_0\,
      \Addr_Counters[1].FDRE_I\ => \s_axi_rdata_i[1]_i_4_n_0\,
      \Addr_Counters[2].FDRE_I\ => \s_axi_rdata_i[2]_i_5_n_0\,
      \Addr_Counters[3].FDRE_I\ => \s_axi_rdata_i[3]_i_5_n_0\,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      D(9) => Intr2Bus_DBus(0),
      D(8) => IIC2Bus_Data(23),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ => I_DECODER_n_3,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\,
      \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => I_DECODER_n_1,
      Q => start2,
      \adr_i_reg[0]\ => \adr_i_reg[0]\,
      \adr_i_reg[1]\ => \adr_i_reg[1]\,
      \adr_i_reg[3]\ => \adr_i_reg[3]\,
      \adr_i_reg[4]\ => \adr_i_reg[4]\,
      \adr_i_reg[5]\ => \adr_i_reg[5]\,
      \adr_i_reg[6]\ => \adr_i_reg[6]\,
      \bus2ip_addr_i_reg[2]\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_0\ => \s_axi_rdata_i[1]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_1\ => \s_axi_rdata_i[2]_i_3_n_0\,
      \bus2ip_addr_i_reg[2]_2\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \bus2ip_addr_i_reg[3]\ => \s_axi_rdata_i[8]_i_3_n_0\,
      \bus2ip_addr_i_reg[5]\ => \s_axi_rdata_i[4]_i_3_n_0\,
      \bus2ip_addr_i_reg[5]_0\ => \s_axi_rdata_i[6]_i_3_n_0\,
      \bus2ip_addr_i_reg[5]_1\ => \s_axi_rdata_i[7]_i_4_n_0\,
      \bus2ip_addr_i_reg[8]\(8) => Bus2IIC_Addr(0),
      \bus2ip_addr_i_reg[8]\(7) => Bus2IIC_Addr(1),
      \bus2ip_addr_i_reg[8]\(6 downto 2) => \^q\(4 downto 0),
      \bus2ip_addr_i_reg[8]\(1) => \bus2ip_addr_i_reg_n_0_[1]\,
      \bus2ip_addr_i_reg[8]\(0) => \bus2ip_addr_i_reg_n_0_[0]\,
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      \cr_i_reg[4]\(0) => \cr_i_reg[4]\(0),
      \cr_i_reg[4]_0\(0) => \cr_i_reg[4]_0\(0),
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[7]\(7 downto 0) => \ip_irpt_enable_reg_reg[7]\(7 downto 0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      p_1_in => p_1_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      \s_axi_bresp_i_reg[1]\ => I_DECODER_n_44,
      s_axi_wdata(8 downto 0) => s_axi_wdata(8 downto 0),
      s_axi_wready => \^s_axi_wready\,
      \state_reg[1]\(1 downto 0) => state(1 downto 0),
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      \timing_param_tbuf_i_reg[7]\ => \s_axi_rdata_i[7]_i_3_n_0\,
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_thdsta_i_reg[0]\ => \s_axi_rdata_i[0]_i_4_n_0\,
      \timing_param_thigh_i_reg[5]\ => \s_axi_rdata_i[5]_i_5_n_0\,
      \timing_param_tsudat_i_reg[4]\ => \timing_param_tsudat_i_reg[4]\,
      \timing_param_tsudat_i_reg[5]\ => \s_axi_rdata_i[5]_i_3_n_0\,
      \timing_param_tsudat_i_reg[6]\ => \timing_param_tsudat_i_reg[6]\,
      \timing_param_tsusto_i_reg[5]\ => \timing_param_tsusto_i_reg[5]\
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(7),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(8),
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[0]\,
      R => rst
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[1]\,
      R => rst
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => \^q\(4),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => Bus2IIC_Addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => Bus2IIC_Addr(0),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i06_out
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => bus2ip_rnw_i06_out,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808055555555"
    )
        port map (
      I0 => state(0),
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      I5 => state(1),
      O => is_write
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      O => is_read_i_2_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_write,
      D => is_read_i_2_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      O => is_write_i_1_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_write,
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => I_DECODER_n_1,
      I1 => is_read,
      I2 => AXI_IP2Bus_RdAck1,
      I3 => AXI_IP2Bus_RdAck2,
      O => s_axi_arready
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_44,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0E00FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \timing_param_tbuf_i_reg[0]\,
      I2 => I_DECODER_n_3,
      I3 => \timing_param_thigh_i_reg[8]\(0),
      I4 => \s_axi_rdata_i[0]_i_7_n_0\,
      I5 => \^q\(1),
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => \timing_param_thdsta_i_reg[0]\(0),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(0),
      I1 => \^q\(3),
      I2 => \timing_param_tsudat_i_reg[8]\(0),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \GPO_GEN.gpo_i_reg[31]_0\,
      O => \s_axi_rdata_i[0]_i_5_n_0\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusto_i_reg[8]\(0),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(0),
      O => \s_axi_rdata_i[0]_i_7_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0E00FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \timing_param_tbuf_i_reg[1]\,
      I2 => I_DECODER_n_3,
      I3 => \timing_param_thigh_i_reg[8]\(1),
      I4 => \s_axi_rdata_i[1]_i_7_n_0\,
      I5 => \^q\(1),
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(1),
      I1 => \^q\(3),
      I2 => \timing_param_tsudat_i_reg[8]\(1),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \IIC2Bus_IntrEvent_reg[5]\,
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusto_i_reg[8]\(1),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(1),
      O => \s_axi_rdata_i[1]_i_7_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0E00FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \timing_param_tbuf_i_reg[2]\,
      I2 => I_DECODER_n_3,
      I3 => \timing_param_thigh_i_reg[8]\(2),
      I4 => \s_axi_rdata_i[2]_i_7_n_0\,
      I5 => \^q\(1),
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(2),
      I1 => \^q\(3),
      I2 => \timing_param_tsudat_i_reg[8]\(2),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \sr_i_reg[5]\,
      O => \s_axi_rdata_i[2]_i_5_n_0\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusto_i_reg[8]\(2),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(2),
      O => \s_axi_rdata_i[2]_i_7_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0E00FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \timing_param_tbuf_i_reg[3]\,
      I2 => I_DECODER_n_3,
      I3 => \timing_param_thigh_i_reg[8]\(3),
      I4 => \s_axi_rdata_i[3]_i_7_n_0\,
      I5 => \^q\(1),
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => Tx_addr(3),
      I1 => \^q\(3),
      I2 => \timing_param_tsudat_i_reg[8]\(3),
      I3 => \^q\(4),
      I4 => \^q\(2),
      I5 => \sr_i_reg[4]\,
      O => \s_axi_rdata_i[3]_i_5_n_0\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1311131313111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusto_i_reg[8]\(3),
      I4 => \^q\(3),
      I5 => Rc_fifo_data(3),
      O => \s_axi_rdata_i[3]_i_7_n_0\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A88888888888"
    )
        port map (
      I0 => \s_axi_rdata_i[4]_i_6_n_0\,
      I1 => \s_axi_rdata_i[4]_i_7_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \timing_param_tbuf_i_reg[7]\(0),
      O => \s_axi_rdata_i[4]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FAFAF0F0FCFCF"
    )
        port map (
      I0 => \timing_param_tsusto_i_reg[8]\(4),
      I1 => Rc_fifo_data(4),
      I2 => \^q\(0),
      I3 => \timing_param_thigh_i_reg[8]\(4),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[4]_i_6_n_0\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2322232323222222"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusta_i_reg[7]\(0),
      I4 => \^q\(3),
      I5 => Tx_fifo_data(0),
      O => \s_axi_rdata_i[4]_i_7_n_0\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4FF00"
    )
        port map (
      I0 => I_DECODER_n_3,
      I1 => \timing_param_tsudat_i_reg[8]\(4),
      I2 => \s_axi_rdata_i[5]_i_6_n_0\,
      I3 => \adr_i_reg[2]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \s_axi_rdata_i[5]_i_3_n_0\
    );
\s_axi_rdata_i[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540FFFF"
    )
        port map (
      I0 => I_DECODER_n_3,
      I1 => \timing_param_thigh_i_reg[8]\(5),
      I2 => \^q\(0),
      I3 => \timing_param_tbuf_i_reg[7]\(1),
      I4 => \^q\(1),
      O => \s_axi_rdata_i[5]_i_5_n_0\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^q\(2),
      I1 => \timing_param_thddat_i_reg[8]\(0),
      I2 => \^q\(4),
      I3 => \sr_i_reg[0]\(0),
      I4 => \^q\(3),
      O => \s_axi_rdata_i[5]_i_6_n_0\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A88888888888"
    )
        port map (
      I0 => \s_axi_rdata_i[6]_i_6_n_0\,
      I1 => \s_axi_rdata_i[6]_i_7_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \timing_param_tbuf_i_reg[7]\(2),
      O => \s_axi_rdata_i[6]_i_3_n_0\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FAFAF0F0FCFCF"
    )
        port map (
      I0 => \timing_param_tsusto_i_reg[8]\(5),
      I1 => Rc_fifo_data(5),
      I2 => \^q\(0),
      I3 => \timing_param_thigh_i_reg[8]\(6),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[6]_i_6_n_0\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2322232323222222"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \timing_param_tsusta_i_reg[7]\(1),
      I4 => \^q\(3),
      I5 => Tx_fifo_data(1),
      O => \s_axi_rdata_i[6]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[7]_i_6_n_0\,
      I1 => \timing_param_tbuf_i_reg[7]\(3),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \s_axi_rdata_i[7]_i_7_n_0\,
      O => \s_axi_rdata_i[7]_i_3_n_0\
    );
\s_axi_rdata_i[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFABFB"
    )
        port map (
      I0 => \^q\(3),
      I1 => \sr_i_reg[0]\(1),
      I2 => \^q\(4),
      I3 => \timing_param_thddat_i_reg[8]\(1),
      I4 => \^q\(2),
      I5 => \s_axi_rdata_i[7]_i_8_n_0\,
      O => \s_axi_rdata_i[7]_i_4_n_0\
    );
\s_axi_rdata_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00004540"
    )
        port map (
      I0 => \^q\(2),
      I1 => \timing_param_tsusta_i_reg[7]\(2),
      I2 => \^q\(3),
      I3 => Tx_fifo_data(2),
      I4 => \^q\(4),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[7]_i_6_n_0\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F05050F0F03030"
    )
        port map (
      I0 => \timing_param_tsusto_i_reg[8]\(6),
      I1 => Rc_fifo_data(6),
      I2 => \^q\(0),
      I3 => \timing_param_thigh_i_reg[8]\(7),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[7]_i_7_n_0\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \timing_param_tsudat_i_reg[8]\(5),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \s_axi_rdata_i[7]_i_8_n_0\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEFFFFF"
    )
        port map (
      I0 => \s_axi_rdata_i[8]_i_7_n_0\,
      I1 => \s_axi_rdata_i[8]_i_8_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \s_axi_rdata_i[8]_i_3_n_0\
    );
\s_axi_rdata_i[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53000000"
    )
        port map (
      I0 => \timing_param_thigh_i_reg[8]\(8),
      I1 => \timing_param_tsusto_i_reg[8]\(7),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \s_axi_rdata_i[8]_i_7_n_0\
    );
\s_axi_rdata_i[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044404"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \timing_param_thddat_i_reg[8]\(2),
      I3 => \^q\(2),
      I4 => \timing_param_tsudat_i_reg[8]\(6),
      O => \s_axi_rdata_i[8]_i_8_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IIC2Bus_Data(23),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => AXI_IP2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_rvalid_i0,
      I2 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022F200000000"
    )
        port map (
      I0 => AXI_IP2Bus_RdAck2,
      I1 => AXI_IP2Bus_RdAck1,
      I2 => is_read,
      I3 => I_DECODER_n_1,
      I4 => state(1),
      I5 => state(0),
      O => s_axi_rvalid_i0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2CEFEC"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => \state[0]_i_2_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAFAE"
    )
        port map (
      I0 => s_axi_rvalid_i0,
      I1 => state(1),
      I2 => state(0),
      I3 => \state[1]_i_2_n_0\,
      I4 => \state[1]_i_3_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_axi_lite_ipif is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_IP2Bus_WrAck2_reg : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AXI_IP2Bus_RdAck20 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    AXI_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_IP2Bus_RdAck1 : in STD_LOGIC;
    AXI_IP2Bus_RdAck2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    AXI_IP2Bus_WrAck1 : in STD_LOGIC;
    AXI_IP2Bus_WrAck2 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    irpt_wrack_d1 : in STD_LOGIC;
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    p_1_in : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ip_irpt_enable_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thdsta_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \adr_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[4]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cr_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \sr_i_reg[4]\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end xcl_design_axi_i2c_0_axi_lite_ipif;

architecture STRUCTURE of xcl_design_axi_i2c_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.xcl_design_axi_i2c_0_slave_attachment
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_IP2Bus_WrAck2_reg,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      E(0) => E(0),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\,
      \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      \GPO_GEN.gpo_i_reg[31]_0\ => \GPO_GEN.gpo_i_reg[31]_0\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[5]\ => \IIC2Bus_IntrEvent_reg[5]\,
      Q(4 downto 0) => Q(4 downto 0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      Rc_fifo_data(6 downto 0) => Rc_fifo_data(6 downto 0),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(2 downto 0) => Tx_fifo_data(2 downto 0),
      \adr_i_reg[0]\ => \adr_i_reg[0]\,
      \adr_i_reg[1]\ => \adr_i_reg[1]\,
      \adr_i_reg[2]\ => \adr_i_reg[2]\,
      \adr_i_reg[3]\ => \adr_i_reg[3]\,
      \adr_i_reg[4]\ => \adr_i_reg[4]\,
      \adr_i_reg[5]\ => \adr_i_reg[5]\,
      \adr_i_reg[6]\ => \adr_i_reg[6]\,
      \cr_i_reg[4]\(0) => \cr_i_reg[4]\(0),
      \cr_i_reg[4]_0\(0) => \cr_i_reg[4]_0\(0),
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[7]\(7 downto 0) => \ip_irpt_enable_reg_reg[7]\(7 downto 0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => ipif_glbl_irpt_enable_reg_reg,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_1_in => p_1_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(9 downto 0) => s_axi_rdata(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(8 downto 0) => s_axi_wdata(8 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[0]\(1 downto 0) => \sr_i_reg[0]\(1 downto 0),
      \sr_i_reg[4]\ => \sr_i_reg[4]\,
      \sr_i_reg[5]\ => \sr_i_reg[5]\,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      \timing_param_tbuf_i_reg[0]\ => \timing_param_tbuf_i_reg[0]\,
      \timing_param_tbuf_i_reg[1]\ => \timing_param_tbuf_i_reg[1]\,
      \timing_param_tbuf_i_reg[2]\ => \timing_param_tbuf_i_reg[2]\,
      \timing_param_tbuf_i_reg[3]\ => \timing_param_tbuf_i_reg[3]\,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => \timing_param_tbuf_i_reg[7]\(3 downto 0),
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_thddat_i_reg[8]\(2 downto 0) => \timing_param_thddat_i_reg[8]\(2 downto 0),
      \timing_param_thdsta_i_reg[0]\(0) => \timing_param_thdsta_i_reg[0]\(0),
      \timing_param_thigh_i_reg[8]\(8 downto 0) => \timing_param_thigh_i_reg[8]\(8 downto 0),
      \timing_param_tsudat_i_reg[4]\ => \timing_param_tsudat_i_reg[4]\,
      \timing_param_tsudat_i_reg[6]\ => \timing_param_tsudat_i_reg[6]\,
      \timing_param_tsudat_i_reg[8]\(6 downto 0) => \timing_param_tsudat_i_reg[8]\(6 downto 0),
      \timing_param_tsusta_i_reg[7]\(2 downto 0) => \timing_param_tsusta_i_reg[7]\(2 downto 0),
      \timing_param_tsusto_i_reg[5]\ => \timing_param_tsusto_i_reg[5]\,
      \timing_param_tsusto_i_reg[8]\(7 downto 0) => \timing_param_tsusto_i_reg[8]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_filter is
  port (
    scl_rising_edge0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \data_int_reg[0]\ : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
end xcl_design_axi_i2c_0_filter;

architecture STRUCTURE of xcl_design_axi_i2c_0_filter is
begin
SCL_DEBOUNCE: entity work.xcl_design_axi_i2c_0_debounce
     port map (
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scndry_out
    );
SDA_DEBOUNCE: entity work.xcl_design_axi_i2c_0_debounce_3
     port map (
      \data_int_reg[0]\ => \data_int_reg[0]\,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_axi_ipif_ssp1 is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_Reset : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    ctrlFifoDin : out STD_LOGIC_VECTOR ( 0 to 1 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cr_i_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IIC_WrCE : out STD_LOGIC_VECTOR ( 11 downto 0 );
    iic2intc_irpt : out STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \timing_param_tbuf_i_reg[0]\ : in STD_LOGIC;
    \timing_param_thigh_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \timing_param_tbuf_i_reg[1]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[2]\ : in STD_LOGIC;
    \timing_param_tbuf_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tbuf_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \timing_param_thddat_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sr_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    Tx_fifo_rst : in STD_LOGIC;
    \timing_param_tbuf_i_reg[8]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \timing_param_thdsta_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[4]\ : in STD_LOGIC;
    \adr_i_reg[3]\ : in STD_LOGIC;
    \timing_param_tsudat_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[1]\ : in STD_LOGIC;
    \adr_i_reg[6]\ : in STD_LOGIC;
    \adr_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[4]\ : in STD_LOGIC;
    \timing_param_tsusto_i_reg[5]\ : in STD_LOGIC;
    \adr_i_reg[2]\ : in STD_LOGIC;
    \adr_i_reg[0]\ : in STD_LOGIC;
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \timing_param_tsusta_i_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cr_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cr_txModeSelect_set : in STD_LOGIC;
    cr_txModeSelect_clr : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    \sr_i_reg[4]\ : in STD_LOGIC;
    \sr_i_reg[5]\ : in STD_LOGIC;
    \IIC2Bus_IntrEvent_reg[5]\ : in STD_LOGIC;
    \GPO_GEN.gpo_i_reg[31]_0\ : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end xcl_design_axi_i2c_0_axi_ipif_ssp1;

architecture STRUCTURE of xcl_design_axi_i2c_0_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_Bus2IP_WrCE : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_IP2Bus_RdAck1 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck2 : STD_LOGIC;
  signal AXI_IP2Bus_RdAck20 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck1 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck2 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_39 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal \^bus2iic_reset\ : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_1 : STD_LOGIC;
  signal X_INTERRUPT_CONTROL_n_18 : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in8_in : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal sw_rst_cond : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus2IIC_Reset <= \^bus2iic_reset\;
AXI_IP2Bus_RdAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck2,
      Q => AXI_IP2Bus_RdAck1,
      R => '0'
    );
AXI_IP2Bus_RdAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck20,
      Q => AXI_IP2Bus_RdAck2,
      R => '0'
    );
AXI_IP2Bus_WrAck1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_WrAck2,
      Q => AXI_IP2Bus_WrAck1,
      R => '0'
    );
AXI_IP2Bus_WrAck2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_LITE_IPIF_I_n_9,
      Q => AXI_IP2Bus_WrAck2,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.xcl_design_axi_i2c_0_axi_lite_ipif
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck1 => AXI_IP2Bus_RdAck1,
      AXI_IP2Bus_RdAck2 => AXI_IP2Bus_RdAck2,
      AXI_IP2Bus_RdAck20 => AXI_IP2Bus_RdAck20,
      AXI_IP2Bus_WrAck1 => AXI_IP2Bus_WrAck1,
      AXI_IP2Bus_WrAck2 => AXI_IP2Bus_WrAck2,
      AXI_IP2Bus_WrAck2_reg => AXI_LITE_IPIF_I_n_9,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      Bus2IIC_WrCE(11 downto 0) => Bus2IIC_WrCE(11 downto 0),
      E(0) => AXI_Bus2IP_WrCE(10),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => AXI_LITE_IPIF_I_n_20,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => X_INTERRUPT_CONTROL_n_1,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => AXI_LITE_IPIF_I_n_19,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => AXI_LITE_IPIF_I_n_18,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => AXI_LITE_IPIF_I_n_17,
      \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\ => AXI_LITE_IPIF_I_n_16,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => AXI_LITE_IPIF_I_n_15,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\ => AXI_LITE_IPIF_I_n_14,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\ => AXI_LITE_IPIF_I_n_13,
      \GPO_GEN.gpo_i_reg[31]\ => \GPO_GEN.gpo_i_reg[31]\,
      \GPO_GEN.gpo_i_reg[31]_0\ => \GPO_GEN.gpo_i_reg[31]_0\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[5]\ => \IIC2Bus_IntrEvent_reg[5]\,
      Q(4 downto 0) => Q(4 downto 0),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ => \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      Rc_fifo_data(6 downto 0) => Rc_fifo_data(6 downto 0),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(2 downto 0) => Tx_fifo_data(2 downto 0),
      \adr_i_reg[0]\ => \adr_i_reg[0]\,
      \adr_i_reg[1]\ => \adr_i_reg[1]\,
      \adr_i_reg[2]\ => \adr_i_reg[2]\,
      \adr_i_reg[3]\ => \adr_i_reg[3]\,
      \adr_i_reg[4]\ => \adr_i_reg[4]\,
      \adr_i_reg[5]\ => \adr_i_reg[5]\,
      \adr_i_reg[6]\ => \adr_i_reg[6]\,
      \cr_i_reg[4]\(0) => \cr_i_reg[4]\(0),
      \cr_i_reg[4]_0\(0) => \cr_i_reg[4]_0\(0),
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      gpo(0) => gpo(0),
      \ip_irpt_enable_reg_reg[7]\(7) => p_0_in16_in,
      \ip_irpt_enable_reg_reg[7]\(6) => p_0_in13_in,
      \ip_irpt_enable_reg_reg[7]\(5) => p_0_in10_in,
      \ip_irpt_enable_reg_reg[7]\(4) => p_0_in7_in,
      \ip_irpt_enable_reg_reg[7]\(3) => p_0_in4_in,
      \ip_irpt_enable_reg_reg[7]\(2) => p_0_in1_in,
      \ip_irpt_enable_reg_reg[7]\(1) => p_0_in,
      \ip_irpt_enable_reg_reg[7]\(0) => X_INTERRUPT_CONTROL_n_18,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => AXI_LITE_IPIF_I_n_39,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_1_in => p_1_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(9 downto 0) => s_axi_rdata(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(8) => s_axi_wdata(10),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[0]\(1 downto 0) => \sr_i_reg[0]\(1 downto 0),
      \sr_i_reg[4]\ => \sr_i_reg[4]\,
      \sr_i_reg[5]\ => \sr_i_reg[5]\,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      \timing_param_tbuf_i_reg[0]\ => \timing_param_tbuf_i_reg[0]\,
      \timing_param_tbuf_i_reg[1]\ => \timing_param_tbuf_i_reg[1]\,
      \timing_param_tbuf_i_reg[2]\ => \timing_param_tbuf_i_reg[2]\,
      \timing_param_tbuf_i_reg[3]\ => \timing_param_tbuf_i_reg[3]\,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => \timing_param_tbuf_i_reg[7]\(3 downto 0),
      \timing_param_tbuf_i_reg[8]\ => \timing_param_tbuf_i_reg[8]\,
      \timing_param_thddat_i_reg[8]\(2 downto 0) => \timing_param_thddat_i_reg[8]\(2 downto 0),
      \timing_param_thdsta_i_reg[0]\(0) => \timing_param_thdsta_i_reg[0]\(0),
      \timing_param_thigh_i_reg[8]\(8 downto 0) => \timing_param_thigh_i_reg[8]\(8 downto 0),
      \timing_param_tsudat_i_reg[4]\ => \timing_param_tsudat_i_reg[4]\,
      \timing_param_tsudat_i_reg[6]\ => \timing_param_tsudat_i_reg[6]\,
      \timing_param_tsudat_i_reg[8]\(6 downto 0) => \timing_param_tsudat_i_reg[8]\(6 downto 0),
      \timing_param_tsusta_i_reg[7]\(2 downto 0) => \timing_param_tsusta_i_reg[7]\(2 downto 0),
      \timing_param_tsusto_i_reg[5]\ => \timing_param_tsusto_i_reg[5]\,
      \timing_param_tsusto_i_reg[8]\(7 downto 0) => \timing_param_tsusto_i_reg[8]\(7 downto 0)
    );
X_INTERRUPT_CONTROL: entity work.xcl_design_axi_i2c_0_interrupt_control
     port map (
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_20,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_19,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_18,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_17,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_16,
      Bus_RNW_reg_reg_4 => AXI_LITE_IPIF_I_n_15,
      Bus_RNW_reg_reg_5 => AXI_LITE_IPIF_I_n_14,
      Bus_RNW_reg_reg_6 => AXI_LITE_IPIF_I_n_13,
      E(0) => AXI_Bus2IP_WrCE(10),
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => AXI_LITE_IPIF_I_n_39,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => X_INTERRUPT_CONTROL_n_1,
      Q(7) => p_0_in16_in,
      Q(6) => p_0_in13_in,
      Q(5) => p_0_in10_in,
      Q(4) => p_0_in7_in,
      Q(3) => p_0_in4_in,
      Q(2) => p_0_in1_in,
      Q(1) => p_0_in,
      Q(0) => X_INTERRUPT_CONTROL_n_18,
      SR(0) => \^bus2iic_reset\,
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_1_in => p_1_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.xcl_design_axi_i2c_0_soft_reset
     port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      SR(0) => \^bus2iic_reset\,
      Tx_fifo_rst => Tx_fifo_rst,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1 downto 0) => s_axi_wdata(9 downto 8),
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_iic is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl_t : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end xcl_design_axi_i2c_0_iic;

architecture STRUCTURE of xcl_design_axi_i2c_0_iic is
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 2 to 6 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal Bus2IIC_Reset : STD_LOGIC;
  signal Bus2IIC_WrCE : STD_LOGIC_VECTOR ( 0 to 17 );
  signal \CLKCNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 8 );
  signal Cr : STD_LOGIC_VECTOR ( 1 to 7 );
  signal D : STD_LOGIC;
  signal DYN_MASTER_I_n_6 : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal D_1 : STD_LOGIC;
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC_CONTROL_I_n_34 : STD_LOGIC;
  signal IIC_CONTROL_I_n_44 : STD_LOGIC;
  signal IIC_CONTROL_I_n_45 : STD_LOGIC;
  signal IIC_CONTROL_I_n_48 : STD_LOGIC;
  signal IIC_CONTROL_I_n_49 : STD_LOGIC;
  signal IIC_CONTROL_I_n_58 : STD_LOGIC;
  signal IIC_CONTROL_I_n_7 : STD_LOGIC;
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal READ_FIFO_I_n_16 : STD_LOGIC;
  signal REG_INTERFACE_I_n_100 : STD_LOGIC;
  signal REG_INTERFACE_I_n_101 : STD_LOGIC;
  signal REG_INTERFACE_I_n_102 : STD_LOGIC;
  signal REG_INTERFACE_I_n_103 : STD_LOGIC;
  signal REG_INTERFACE_I_n_104 : STD_LOGIC;
  signal REG_INTERFACE_I_n_105 : STD_LOGIC;
  signal REG_INTERFACE_I_n_106 : STD_LOGIC;
  signal REG_INTERFACE_I_n_107 : STD_LOGIC;
  signal REG_INTERFACE_I_n_108 : STD_LOGIC;
  signal REG_INTERFACE_I_n_109 : STD_LOGIC;
  signal REG_INTERFACE_I_n_110 : STD_LOGIC;
  signal REG_INTERFACE_I_n_112 : STD_LOGIC;
  signal REG_INTERFACE_I_n_113 : STD_LOGIC;
  signal REG_INTERFACE_I_n_115 : STD_LOGIC;
  signal REG_INTERFACE_I_n_116 : STD_LOGIC;
  signal REG_INTERFACE_I_n_25 : STD_LOGIC;
  signal REG_INTERFACE_I_n_26 : STD_LOGIC;
  signal REG_INTERFACE_I_n_27 : STD_LOGIC;
  signal REG_INTERFACE_I_n_28 : STD_LOGIC;
  signal REG_INTERFACE_I_n_30 : STD_LOGIC;
  signal REG_INTERFACE_I_n_31 : STD_LOGIC;
  signal REG_INTERFACE_I_n_37 : STD_LOGIC;
  signal REG_INTERFACE_I_n_46 : STD_LOGIC;
  signal REG_INTERFACE_I_n_55 : STD_LOGIC;
  signal REG_INTERFACE_I_n_57 : STD_LOGIC;
  signal REG_INTERFACE_I_n_58 : STD_LOGIC;
  signal REG_INTERFACE_I_n_59 : STD_LOGIC;
  signal REG_INTERFACE_I_n_60 : STD_LOGIC;
  signal REG_INTERFACE_I_n_82 : STD_LOGIC;
  signal REG_INTERFACE_I_n_83 : STD_LOGIC;
  signal REG_INTERFACE_I_n_84 : STD_LOGIC;
  signal REG_INTERFACE_I_n_89 : STD_LOGIC;
  signal REG_INTERFACE_I_n_90 : STD_LOGIC;
  signal REG_INTERFACE_I_n_91 : STD_LOGIC;
  signal REG_INTERFACE_I_n_92 : STD_LOGIC;
  signal REG_INTERFACE_I_n_93 : STD_LOGIC;
  signal REG_INTERFACE_I_n_94 : STD_LOGIC;
  signal REG_INTERFACE_I_n_98 : STD_LOGIC;
  signal REG_INTERFACE_I_n_99 : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal \SETUP_CNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 3 to 8 );
  signal Srw : STD_LOGIC;
  signal Tx_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Tx_data_exists : STD_LOGIC;
  signal Tx_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_0 : STD_LOGIC;
  signal WRITE_FIFO_CTRL_I_n_3 : STD_LOGIC;
  signal WRITE_FIFO_I_n_15 : STD_LOGIC;
  signal WRITE_FIFO_I_n_16 : STD_LOGIC;
  signal WRITE_FIFO_I_n_17 : STD_LOGIC;
  signal WRITE_FIFO_I_n_18 : STD_LOGIC;
  signal WRITE_FIFO_I_n_19 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_15 : STD_LOGIC;
  signal X_AXI_IPIF_SSP1_n_29 : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal clk_cnt_en13_out : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal ctrlFifoDin : STD_LOGIC_VECTOR ( 0 to 1 );
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 1 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i2c_header : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal master_slave : STD_LOGIC;
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal next_scl_state10_out : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_3_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal scl_rising_edge0 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 2 );
  signal state122_out : STD_LOGIC;
  signal stop_scl_reg : STD_LOGIC;
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal txak : STD_LOGIC;
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.xcl_design_axi_i2c_0_dynamic_master
     port map (
      \FIFO_GEN_DTR.Tx_fifo_rst_reg\ => REG_INTERFACE_I_n_59,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      earlyAckDataState => earlyAckDataState,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg_0 => REG_INTERFACE_I_n_116,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rxCntDone => rxCntDone,
      rxCntDone_reg_0 => DYN_MASTER_I_n_6,
      s_axi_aclk => s_axi_aclk
    );
FILTER_I: entity work.xcl_design_axi_i2c_0_filter
     port map (
      \data_int_reg[0]\ => sda_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scndry_out => scl_clean,
      sda_i => sda_i
    );
IIC_CONTROL_I: entity work.xcl_design_axi_i2c_0_iic_control
     port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => IIC_CONTROL_I_n_7,
      D(0) => p_0_out(0),
      Data_Exists_DFF => WRITE_FIFO_I_n_15,
      E(0) => Bus2IIC_WrCE(0),
      \FSM_sequential_scl_state_reg[0]_0\ => IIC_CONTROL_I_n_45,
      \FSM_sequential_scl_state_reg[1]_0\ => IIC_CONTROL_I_n_48,
      \FSM_sequential_scl_state_reg[2]_0\ => IIC_CONTROL_I_n_58,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => sda_clean,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ => IIC_CONTROL_I_n_34,
      Ro_prev => Ro_prev,
      SR(0) => REG_INTERFACE_I_n_31,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(6) => Tx_fifo_data(0),
      Tx_fifo_data(5) => Tx_fifo_data(1),
      Tx_fifo_data(4) => Tx_fifo_data(2),
      Tx_fifo_data(3) => Tx_fifo_data(3),
      Tx_fifo_data(2) => Tx_fifo_data(4),
      Tx_fifo_data(1) => Tx_fifo_data(5),
      Tx_fifo_data(0) => Tx_fifo_data(6),
      Tx_fifo_rd_d_reg => REG_INTERFACE_I_n_58,
      Tx_under_prev => Tx_under_prev,
      abgc_i_reg_0(7 downto 0) => i2c_header(7 downto 0),
      abgc_i_reg_1 => REG_INTERFACE_I_n_25,
      ackDataState => ackDataState,
      arb_lost => arb_lost,
      arb_lost_reg_0 => REG_INTERFACE_I_n_26,
      callingReadAccess => callingReadAccess,
      clk_cnt_en13_out => clk_cnt_en13_out,
      \cr_i_reg[2]\ => REG_INTERFACE_I_n_60,
      \cr_i_reg[4]\ => REG_INTERFACE_I_n_28,
      \cr_i_reg[5]\(0) => IIC_CONTROL_I_n_44,
      detect_stop_b_reg_0 => IIC_CONTROL_I_n_49,
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      master_slave => master_slave,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      next_scl_state10_out => next_scl_state10_out,
      \q_int_reg[0]\(8) => \CLKCNT/q_int_reg__0\(0),
      \q_int_reg[0]\(7) => \CLKCNT/q_int_reg__0\(1),
      \q_int_reg[0]\(6) => \CLKCNT/q_int_reg__0\(2),
      \q_int_reg[0]\(5) => \CLKCNT/q_int_reg__0\(3),
      \q_int_reg[0]\(4) => \CLKCNT/q_int_reg__0\(4),
      \q_int_reg[0]\(3) => \CLKCNT/q_int_reg__0\(5),
      \q_int_reg[0]\(2) => \CLKCNT/q_int_reg__0\(6),
      \q_int_reg[0]\(1) => \CLKCNT/q_int_reg__0\(7),
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg__0\(8),
      \q_int_reg[3]\(5) => \SETUP_CNT/q_int_reg__0\(3),
      \q_int_reg[3]\(4) => \SETUP_CNT/q_int_reg__0\(4),
      \q_int_reg[3]\(3) => \SETUP_CNT/q_int_reg__0\(5),
      \q_int_reg[3]\(2) => \SETUP_CNT/q_int_reg__0\(6),
      \q_int_reg[3]\(1) => \SETUP_CNT/q_int_reg__0\(7),
      \q_int_reg[3]\(0) => \SETUP_CNT/q_int_reg__0\(8),
      \q_int_reg[4]\ => REG_INTERFACE_I_n_27,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[7]\(7) => Data_i2c(0),
      \s_axi_rdata_i_reg[7]\(6) => Data_i2c(1),
      \s_axi_rdata_i_reg[7]\(5) => Data_i2c(2),
      \s_axi_rdata_i_reg[7]\(4) => Data_i2c(3),
      \s_axi_rdata_i_reg[7]\(3) => Data_i2c(4),
      \s_axi_rdata_i_reg[7]\(2) => Data_i2c(5),
      \s_axi_rdata_i_reg[7]\(1) => Data_i2c(6),
      \s_axi_rdata_i_reg[7]\(0) => Data_i2c(7),
      s_axi_wdata(0) => s_axi_wdata(2),
      scl_rin_d1 => scl_rin_d1,
      scl_rising_edge0 => scl_rising_edge0,
      scl_t => scl_t,
      scndry_out => scl_clean,
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      shift_reg_ld_reg_0(0) => WRITE_FIFO_I_n_19,
      sr_i(0) => sr_i(0),
      \sr_i_reg[4]\(1) => Srw,
      \sr_i_reg[4]\(0) => Abgc,
      state122_out => state122_out,
      stop_scl_reg => stop_scl_reg,
      \timing_param_thddat_i_reg[3]\ => REG_INTERFACE_I_n_37,
      \timing_param_thddat_i_reg[8]\(5 downto 3) => timing_param_thddat_i(8 downto 6),
      \timing_param_thddat_i_reg[8]\(2 downto 0) => timing_param_thddat_i(2 downto 0),
      \timing_param_tlow_i_reg[3]\ => REG_INTERFACE_I_n_115,
      \timing_param_tlow_i_reg[8]\(2 downto 0) => timing_param_tlow_i(8 downto 6),
      \timing_param_tsudat_i_reg[0]\ => REG_INTERFACE_I_n_46,
      \timing_param_tsudat_i_reg[3]\ => REG_INTERFACE_I_n_55,
      \timing_param_tsudat_i_reg[8]\(2 downto 0) => timing_param_tsudat_i(8 downto 6),
      \timing_param_tsusto_i_reg[5]\(2 downto 0) => timing_param_tsusto_i(5 downto 3),
      txak => txak
    );
READ_FIFO_I: entity work.xcl_design_axi_i2c_0_SRL_FIFO
     port map (
      Bus2IIC_Reset => Bus2IIC_Reset,
      D(1) => p_1_out(6),
      D(0) => Rc_fifo_full,
      D_0 => D,
      Data_Exists_DFF_0 => READ_FIFO_I_n_16,
      Msms_set => Msms_set,
      Q(3) => p_1_in6_in,
      Q(2) => p_1_in4_in,
      Q(1) => p_1_in,
      Q(0) => REG_INTERFACE_I_n_98,
      \RD_FIFO_CNTRL.Rc_fifo_rd_reg\ => REG_INTERFACE_I_n_113,
      \RD_FIFO_CNTRL.Rc_fifo_wr_reg\ => REG_INTERFACE_I_n_112,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      \data_i2c_i_reg[7]\(7) => Data_i2c(0),
      \data_i2c_i_reg[7]\(6) => Data_i2c(1),
      \data_i2c_i_reg[7]\(5) => Data_i2c(2),
      \data_i2c_i_reg[7]\(4) => Data_i2c(3),
      \data_i2c_i_reg[7]\(3) => Data_i2c(4),
      \data_i2c_i_reg[7]\(2) => Data_i2c(5),
      \data_i2c_i_reg[7]\(1) => Data_i2c(6),
      \data_i2c_i_reg[7]\(0) => Data_i2c(7),
      p_6_out => p_6_out,
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.xcl_design_axi_i2c_0_reg_interface
     port map (
      Aas => Aas,
      \Addr_Counters[0].FDRE_I\ => REG_INTERFACE_I_n_110,
      \Addr_Counters[0].FDRE_I_0\ => REG_INTERFACE_I_n_112,
      \Addr_Counters[0].FDRE_I_1\ => REG_INTERFACE_I_n_113,
      \Addr_Counters[1].FDRE_I\ => WRITE_FIFO_CTRL_I_n_3,
      \Addr_Counters[1].FDRE_I_0\ => WRITE_FIFO_I_n_18,
      \Addr_Counters[1].FDRE_I_1\ => READ_FIFO_I_n_16,
      \Addr_Counters[3].FDRE_I\ => WRITE_FIFO_I_n_17,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      Cr_txModeSelect_set_reg => REG_INTERFACE_I_n_59,
      D(0) => Ro_prev,
      D_0 => D_1,
      D_1 => D_0,
      D_2 => D,
      Data_Exists_DFF => REG_INTERFACE_I_n_30,
      Data_Exists_DFF_0 => REG_INTERFACE_I_n_57,
      Data_Exists_DFF_1 => WRITE_FIFO_I_n_16,
      Data_Exists_DFF_2 => WRITE_FIFO_CTRL_I_n_0,
      Data_Exists_DFF_3(5) => p_1_out(6),
      Data_Exists_DFF_3(4) => Rc_fifo_full,
      Data_Exists_DFF_3(3) => Tx_fifo_full,
      Data_Exists_DFF_3(2) => Srw,
      Data_Exists_DFF_3(1) => Bb,
      Data_Exists_DFF_3(0) => Abgc,
      \FSM_onehot_state_reg[4]\ => REG_INTERFACE_I_n_28,
      \FSM_sequential_scl_state_reg[0]\ => REG_INTERFACE_I_n_27,
      \FSM_sequential_scl_state_reg[0]_0\(3 downto 0) => timing_param_tbuf_i(7 downto 4),
      \FSM_sequential_scl_state_reg[0]_1\ => REG_INTERFACE_I_n_37,
      \FSM_sequential_scl_state_reg[0]_2\ => REG_INTERFACE_I_n_60,
      \FSM_sequential_scl_state_reg[0]_3\(2 downto 1) => timing_param_tsusta_i(7 downto 6),
      \FSM_sequential_scl_state_reg[0]_3\(0) => timing_param_tsusta_i(4),
      \FSM_sequential_scl_state_reg[0]_4\ => IIC_CONTROL_I_n_58,
      \FSM_sequential_scl_state_reg[1]\ => REG_INTERFACE_I_n_115,
      \FSM_sequential_scl_state_reg[2]\(0) => timing_param_thdsta_i(0),
      \FSM_sequential_scl_state_reg[2]_0\ => IIC_CONTROL_I_n_49,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\(1) => X_AXI_IPIF_SSP1_n_15,
      \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\(0) => IIC_CONTROL_I_n_44,
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ => X_AXI_IPIF_SSP1_n_29,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\(3) => p_1_in6_in,
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\(2) => p_1_in4_in,
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\(1) => p_1_in,
      \RD_FIFO_CNTRL.ro_prev_i_reg_0\(0) => REG_INTERFACE_I_n_98,
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0) => Rc_fifo_data(2),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      SR(0) => REG_INTERFACE_I_n_31,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(4) => Tx_fifo_data(2),
      Tx_fifo_data(3) => Tx_fifo_data(4),
      Tx_fifo_data(2) => Tx_fifo_data(5),
      Tx_fifo_data(1) => Tx_fifo_data(6),
      Tx_fifo_data(0) => Tx_fifo_data(7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      al_i_reg(4) => Al,
      al_i_reg(3) => Txer,
      al_i_reg(2) => Tx_under_prev,
      al_i_reg(1) => IIC_CONTROL_I_n_7,
      al_i_reg(0) => p_0_out(0),
      arb_lost => arb_lost,
      \bus2ip_addr_i_reg[6]\(4) => Bus2IIC_Addr(2),
      \bus2ip_addr_i_reg[6]\(3) => Bus2IIC_Addr(3),
      \bus2ip_addr_i_reg[6]\(2) => Bus2IIC_Addr(4),
      \bus2ip_addr_i_reg[6]\(1) => Bus2IIC_Addr(5),
      \bus2ip_addr_i_reg[6]\(0) => Bus2IIC_Addr(6),
      callingReadAccess_reg => DYN_MASTER_I_n_6,
      clk_cnt_en13_out => clk_cnt_en13_out,
      \cr_i_reg[5]_0\ => REG_INTERFACE_I_n_58,
      \data_int_reg[7]\(7 downto 0) => i2c_header(7 downto 0),
      dtre_d1_reg(1) => sr_i(0),
      dtre_d1_reg(0) => sr_i(2),
      dynamic_MSMS(0) => dynamic_MSMS(1),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      firstDynStartSeen_reg => REG_INTERFACE_I_n_116,
      gpo(0) => \^gpo\(0),
      master_slave => master_slave,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      new_rcv_dta_i_reg => IIC_CONTROL_I_n_34,
      next_scl_state10_out => next_scl_state10_out,
      p_6_out => p_6_out,
      \q_int_reg[0]\(8) => \CLKCNT/q_int_reg__0\(0),
      \q_int_reg[0]\(7) => \CLKCNT/q_int_reg__0\(1),
      \q_int_reg[0]\(6) => \CLKCNT/q_int_reg__0\(2),
      \q_int_reg[0]\(5) => \CLKCNT/q_int_reg__0\(3),
      \q_int_reg[0]\(4) => \CLKCNT/q_int_reg__0\(4),
      \q_int_reg[0]\(3) => \CLKCNT/q_int_reg__0\(5),
      \q_int_reg[0]\(2) => \CLKCNT/q_int_reg__0\(6),
      \q_int_reg[0]\(1) => \CLKCNT/q_int_reg__0\(7),
      \q_int_reg[0]\(0) => \CLKCNT/q_int_reg__0\(8),
      \q_int_reg[1]\ => IIC_CONTROL_I_n_48,
      \q_int_reg[3]\(5) => \SETUP_CNT/q_int_reg__0\(3),
      \q_int_reg[3]\(4) => \SETUP_CNT/q_int_reg__0\(4),
      \q_int_reg[3]\(3) => \SETUP_CNT/q_int_reg__0\(5),
      \q_int_reg[3]\(2) => \SETUP_CNT/q_int_reg__0\(6),
      \q_int_reg[3]\(1) => \SETUP_CNT/q_int_reg__0\(7),
      \q_int_reg[3]\(0) => \SETUP_CNT/q_int_reg__0\(8),
      \q_int_reg[4]\ => IIC_CONTROL_I_n_45,
      \q_int_reg[8]\ => REG_INTERFACE_I_n_26,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[0]\ => REG_INTERFACE_I_n_107,
      \s_axi_rdata_i_reg[0]_0\ => REG_INTERFACE_I_n_108,
      \s_axi_rdata_i_reg[0]_1\ => REG_INTERFACE_I_n_109,
      \s_axi_rdata_i_reg[1]\ => REG_INTERFACE_I_n_104,
      \s_axi_rdata_i_reg[1]_0\ => REG_INTERFACE_I_n_105,
      \s_axi_rdata_i_reg[1]_1\ => REG_INTERFACE_I_n_106,
      \s_axi_rdata_i_reg[2]\ => REG_INTERFACE_I_n_101,
      \s_axi_rdata_i_reg[2]_0\ => REG_INTERFACE_I_n_102,
      \s_axi_rdata_i_reg[2]_1\ => REG_INTERFACE_I_n_103,
      \s_axi_rdata_i_reg[3]\ => REG_INTERFACE_I_n_94,
      \s_axi_rdata_i_reg[3]_0\ => REG_INTERFACE_I_n_99,
      \s_axi_rdata_i_reg[3]_1\ => REG_INTERFACE_I_n_100,
      \s_axi_rdata_i_reg[4]\ => REG_INTERFACE_I_n_82,
      \s_axi_rdata_i_reg[4]_0\ => REG_INTERFACE_I_n_93,
      \s_axi_rdata_i_reg[5]\ => REG_INTERFACE_I_n_91,
      \s_axi_rdata_i_reg[5]_0\ => REG_INTERFACE_I_n_92,
      \s_axi_rdata_i_reg[6]\ => REG_INTERFACE_I_n_83,
      \s_axi_rdata_i_reg[6]_0\ => REG_INTERFACE_I_n_90,
      \s_axi_rdata_i_reg[7]\ => REG_INTERFACE_I_n_89,
      \s_axi_rdata_i_reg[8]\(6 downto 3) => timing_param_thddat_i(8 downto 5),
      \s_axi_rdata_i_reg[8]\(2 downto 0) => timing_param_thddat_i(2 downto 0),
      \s_axi_rdata_i_reg[8]_0\(8 downto 0) => timing_param_tsusto_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_1\(8 downto 0) => timing_param_thigh_i(8 downto 0),
      \s_axi_rdata_i_reg[8]_2\ => REG_INTERFACE_I_n_84,
      \s_axi_rdata_i_reg[8]_3\(2 downto 0) => timing_param_tlow_i(8 downto 6),
      s_axi_wdata(8 downto 0) => s_axi_wdata(8 downto 0),
      sda_setup_reg => REG_INTERFACE_I_n_46,
      sda_setup_reg_0(7 downto 4) => timing_param_tsudat_i(8 downto 5),
      sda_setup_reg_0(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      sda_setup_reg_1 => REG_INTERFACE_I_n_55,
      slave_sda_reg => REG_INTERFACE_I_n_25,
      state122_out => state122_out,
      stop_scl_reg => stop_scl_reg,
      txak => txak
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => Bus2IIC_Reset
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => Bus2IIC_Reset
    );
WRITE_FIFO_CTRL_I: entity work.\xcl_design_axi_i2c_0_SRL_FIFO__parameterized0\
     port map (
      \Addr_Counters[0].FDRE_I_0\ => WRITE_FIFO_CTRL_I_n_0,
      D => D_1,
      Data_Exists_DFF_0 => WRITE_FIFO_CTRL_I_n_3,
      \FIFO_GEN_DTR.Tx_fifo_rd_reg\ => REG_INTERFACE_I_n_57,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr_d_reg => REG_INTERFACE_I_n_30,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk
    );
WRITE_FIFO_I: entity work.xcl_design_axi_i2c_0_SRL_FIFO_0
     port map (
      D => D_0,
      Data_Exists_DFF_0 => WRITE_FIFO_I_n_18,
      \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\ => WRITE_FIFO_I_n_17,
      \FIFO_GEN_DTR.Tx_fifo_rd_reg\ => REG_INTERFACE_I_n_57,
      \FIFO_GEN_DTR.Tx_fifo_wr_reg\ => REG_INTERFACE_I_n_110,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => sda_clean,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      \cr_i_reg[5]\ => WRITE_FIFO_I_n_15,
      \data_int_reg[0]\(0) => WRITE_FIFO_I_n_19,
      dynamic_MSMS(0) => dynamic_MSMS(1),
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      shift_reg_ld => shift_reg_ld,
      \sr_i_reg[0]\ => WRITE_FIFO_I_n_16,
      \sr_i_reg[3]\(0) => Tx_fifo_full
    );
X_AXI_IPIF_SSP1: entity work.xcl_design_axi_i2c_0_axi_ipif_ssp1
     port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus2IIC_Reset => Bus2IIC_Reset,
      Bus2IIC_WrCE(11) => Bus2IIC_WrCE(0),
      Bus2IIC_WrCE(10) => Bus2IIC_WrCE(2),
      Bus2IIC_WrCE(9) => Bus2IIC_WrCE(4),
      Bus2IIC_WrCE(8) => Bus2IIC_WrCE(8),
      Bus2IIC_WrCE(7) => Bus2IIC_WrCE(10),
      Bus2IIC_WrCE(6) => Bus2IIC_WrCE(11),
      Bus2IIC_WrCE(5) => Bus2IIC_WrCE(12),
      Bus2IIC_WrCE(4) => Bus2IIC_WrCE(13),
      Bus2IIC_WrCE(3) => Bus2IIC_WrCE(14),
      Bus2IIC_WrCE(2) => Bus2IIC_WrCE(15),
      Bus2IIC_WrCE(1) => Bus2IIC_WrCE(16),
      Bus2IIC_WrCE(0) => Bus2IIC_WrCE(17),
      \GPO_GEN.gpo_i_reg[31]\ => X_AXI_IPIF_SSP1_n_29,
      \GPO_GEN.gpo_i_reg[31]_0\ => REG_INTERFACE_I_n_108,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      \IIC2Bus_IntrEvent_reg[5]\ => REG_INTERFACE_I_n_104,
      Q(4) => Bus2IIC_Addr(2),
      Q(3) => Bus2IIC_Addr(3),
      Q(2) => Bus2IIC_Addr(4),
      Q(1) => Bus2IIC_Addr(5),
      Q(0) => Bus2IIC_Addr(6),
      \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ => REG_INTERFACE_I_n_107,
      Rc_fifo_data(6) => Rc_fifo_data(0),
      Rc_fifo_data(5) => Rc_fifo_data(1),
      Rc_fifo_data(4) => Rc_fifo_data(3),
      Rc_fifo_data(3) => Rc_fifo_data(4),
      Rc_fifo_data(2) => Rc_fifo_data(5),
      Rc_fifo_data(1) => Rc_fifo_data(6),
      Rc_fifo_data(0) => Rc_fifo_data(7),
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_fifo_data(2) => Tx_fifo_data(0),
      Tx_fifo_data(1) => Tx_fifo_data(1),
      Tx_fifo_data(0) => Tx_fifo_data(3),
      Tx_fifo_rst => Tx_fifo_rst,
      \adr_i_reg[0]\ => REG_INTERFACE_I_n_89,
      \adr_i_reg[1]\ => REG_INTERFACE_I_n_90,
      \adr_i_reg[2]\ => REG_INTERFACE_I_n_92,
      \adr_i_reg[3]\ => REG_INTERFACE_I_n_93,
      \adr_i_reg[4]\ => REG_INTERFACE_I_n_94,
      \adr_i_reg[5]\ => REG_INTERFACE_I_n_101,
      \adr_i_reg[6]\ => REG_INTERFACE_I_n_105,
      \cr_i_reg[4]\(0) => X_AXI_IPIF_SSP1_n_15,
      \cr_i_reg[4]_0\(0) => Cr(4),
      cr_txModeSelect_clr => cr_txModeSelect_clr,
      cr_txModeSelect_set => cr_txModeSelect_set,
      ctrlFifoDin(0 to 1) => ctrlFifoDin(0 to 1),
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(9 downto 0) => s_axi_rdata(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \sr_i_reg[0]\(1) => sr_i(0),
      \sr_i_reg[0]\(0) => sr_i(2),
      \sr_i_reg[4]\ => REG_INTERFACE_I_n_99,
      \sr_i_reg[5]\ => REG_INTERFACE_I_n_102,
      \timing_param_tbuf_i_reg[0]\ => REG_INTERFACE_I_n_109,
      \timing_param_tbuf_i_reg[1]\ => REG_INTERFACE_I_n_106,
      \timing_param_tbuf_i_reg[2]\ => REG_INTERFACE_I_n_103,
      \timing_param_tbuf_i_reg[3]\ => REG_INTERFACE_I_n_100,
      \timing_param_tbuf_i_reg[7]\(3 downto 0) => timing_param_tbuf_i(7 downto 4),
      \timing_param_tbuf_i_reg[8]\ => REG_INTERFACE_I_n_84,
      \timing_param_thddat_i_reg[8]\(2 downto 1) => timing_param_thddat_i(8 downto 7),
      \timing_param_thddat_i_reg[8]\(0) => timing_param_thddat_i(5),
      \timing_param_thdsta_i_reg[0]\(0) => timing_param_thdsta_i(0),
      \timing_param_thigh_i_reg[8]\(8 downto 0) => timing_param_thigh_i(8 downto 0),
      \timing_param_tsudat_i_reg[4]\ => REG_INTERFACE_I_n_82,
      \timing_param_tsudat_i_reg[6]\ => REG_INTERFACE_I_n_83,
      \timing_param_tsudat_i_reg[8]\(6 downto 5) => timing_param_tsudat_i(8 downto 7),
      \timing_param_tsudat_i_reg[8]\(4) => timing_param_tsudat_i(5),
      \timing_param_tsudat_i_reg[8]\(3 downto 0) => timing_param_tsudat_i(3 downto 0),
      \timing_param_tsusta_i_reg[7]\(2 downto 1) => timing_param_tsusta_i(7 downto 6),
      \timing_param_tsusta_i_reg[7]\(0) => timing_param_tsusta_i(4),
      \timing_param_tsusto_i_reg[5]\ => REG_INTERFACE_I_n_91,
      \timing_param_tsusto_i_reg[8]\(7 downto 5) => timing_param_tsusto_i(8 downto 6),
      \timing_param_tsusto_i_reg[8]\(4 downto 0) => timing_param_tsusto_i(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0_axi_iic is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of xcl_design_axi_i2c_0_axi_iic : entity is "8'b00000001";
  attribute C_FAMILY : string;
  attribute C_FAMILY of xcl_design_axi_i2c_0_axi_iic : entity is "kintexu";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of xcl_design_axi_i2c_0_axi_iic : entity is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of xcl_design_axi_i2c_0_axi_iic : entity is 100000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of xcl_design_axi_i2c_0_axi_iic : entity is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of xcl_design_axi_i2c_0_axi_iic : entity is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of xcl_design_axi_i2c_0_axi_iic : entity is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of xcl_design_axi_i2c_0_axi_iic : entity is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of xcl_design_axi_i2c_0_axi_iic : entity is 50000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of xcl_design_axi_i2c_0_axi_iic : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of xcl_design_axi_i2c_0_axi_iic : entity is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of xcl_design_axi_i2c_0_axi_iic : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xcl_design_axi_i2c_0_axi_iic : entity is "yes";
end xcl_design_axi_i2c_0_axi_iic;

architecture STRUCTURE of xcl_design_axi_i2c_0_axi_iic is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8 downto 0) <= \^s_axi_rdata\(8 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
X_IIC: entity work.xcl_design_axi_i2c_0_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(9) => \^s_axi_rdata\(31),
      s_axi_rdata(8 downto 0) => \^s_axi_rdata\(8 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xcl_design_axi_i2c_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xcl_design_axi_i2c_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xcl_design_axi_i2c_0 : entity is "xcl_design_axi_i2c_0,axi_iic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xcl_design_axi_i2c_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of xcl_design_axi_i2c_0 : entity is "axi_iic,Vivado 2016.4_sdx";
end xcl_design_axi_i2c_0;

architecture STRUCTURE of xcl_design_axi_i2c_0 is
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "8'b00000001";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintexu";
  attribute C_GPO_WIDTH : integer;
  attribute C_GPO_WIDTH of U0 : label is 1;
  attribute C_IIC_FREQ : integer;
  attribute C_IIC_FREQ of U0 : label is 100000;
  attribute C_SCL_INERTIAL_DELAY : integer;
  attribute C_SCL_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_INERTIAL_DELAY : integer;
  attribute C_SDA_INERTIAL_DELAY of U0 : label is 0;
  attribute C_SDA_LEVEL : integer;
  attribute C_SDA_LEVEL of U0 : label is 1;
  attribute C_SMBUS_PMBUS_HOST : integer;
  attribute C_SMBUS_PMBUS_HOST of U0 : label is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 50000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TEN_BIT_ADR : integer;
  attribute C_TEN_BIT_ADR of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.xcl_design_axi_i2c_0_axi_iic
     port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t
    );
end STRUCTURE;