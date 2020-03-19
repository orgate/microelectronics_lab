--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.63c
--  \   \         Application: netgen
--  /   /         Filename: vio.vhd
-- /___/   /\     Timestamp: Mon Apr 21 14:03:28 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl D:/1-2/VLSI-Lab/Xilinx/processor/ipcore_dir/tmp/_cg/vio.ngc D:/1-2/VLSI-Lab/Xilinx/processor/ipcore_dir/tmp/_cg/vio.vhd 
-- Device	: xc5vlx110t-ff1136-1
-- Input file	: D:/1-2/VLSI-Lab/Xilinx/processor/ipcore_dir/tmp/_cg/vio.ngc
-- Output file	: D:/1-2/VLSI-Lab/Xilinx/processor/ipcore_dir/tmp/_cg/vio.vhd
-- # of Entities	: 1
-- Design Name	: vio
-- Xilinx	: C:\Xilinx\12.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity vio is
  port (
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ) 
  );
end vio;

architecture STRUCTURE of vio is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal U0_I_VIO_DATA_DOUT : STD_LOGIC; 
  signal U0_I_VIO_STAT_DOUT : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_CFG_CE_n : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_TDO_next : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_44 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_45 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_85 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_86 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_87 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_88 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_89 : STD_LOGIC; 
  signal NLW_U0_I_VIO_reset_f_edge_I_H2L_U_DOUT_Q_UNCONNECTED : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_CI : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_D : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_S : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_reset_f_edge_iDOUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_I_VIO_U_DATA_OUT : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => N0,
      Q => U0_I_VIO_DATA_DOUT
    );
  U0_I_VIO_reset_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      D => U0_I_VIO_reset_f_edge_iDOUT(1),
      R => U0_I_VIO_reset_f_edge_iDOUT(0),
      Q => NLW_U0_I_VIO_reset_f_edge_I_H2L_U_DOUT_Q_UNCONNECTED
    );
  U0_I_VIO_reset_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_reset_f_edge_iDOUT(0),
      Q => U0_I_VIO_reset_f_edge_iDOUT(1)
    );
  U0_I_VIO_reset_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => CONTROL(7),
      Q => U0_I_VIO_reset_f_edge_iDOUT(0)
    );
  U0_I_VIO_U_DOUT : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_STAT_DOUT,
      I1 => U0_I_VIO_DATA_DOUT,
      I2 => CONTROL(7),
      O => CONTROL(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(7),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(6),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(5),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(4),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(3),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(2),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(1),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(0),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => N1,
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_XORCY : XORCY
    port map (
      CI => N1,
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(0)
    );
  U0_I_VIO_U_STATUS_F_STAT_0_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0101"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(0)
    );
  U0_I_VIO_U_STATUS_F_STAT_1_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"C209"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(1)
    );
  U0_I_VIO_U_STATUS_F_STAT_2_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"2100"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(2)
    );
  U0_I_VIO_U_STATUS_F_STAT_3_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0610"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(3)
    );
  U0_I_VIO_U_STATUS_F_STAT_4_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(4)
    );
  U0_I_VIO_U_STATUS_F_STAT_5_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(5)
    );
  U0_I_VIO_U_STATUS_F_STAT_6_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(6)
    );
  U0_I_VIO_U_STATUS_F_STAT_7_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(7)
    );
  U0_I_VIO_U_STATUS_U_CE_n : INV
    port map (
      I => CONTROL(4),
      O => U0_I_VIO_U_STATUS_CFG_CE_n
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT(7),
      I3 => U0_I_VIO_U_STATUS_iSTAT(4),
      I4 => U0_I_VIO_U_STATUS_iSTAT(5),
      I5 => U0_I_VIO_U_STATUS_iSTAT(6),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_44
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT(3),
      I3 => U0_I_VIO_U_STATUS_iSTAT(0),
      I4 => U0_I_VIO_U_STATUS_iSTAT(1),
      I5 => U0_I_VIO_U_STATUS_iSTAT(2),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_45
    );
  U0_I_VIO_U_STATUS_U_TDO : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_U_STATUS_TDO_next,
      Q => U0_I_VIO_STAT_DOUT
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_35 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(22),
      I1 => CONTROL(23),
      I2 => CONTROL(21),
      I3 => CONTROL(20),
      I4 => CONTROL(19),
      I5 => CONTROL(18),
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_88
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_71 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(16),
      I1 => CONTROL(17),
      I2 => CONTROL(15),
      I3 => CONTROL(14),
      I4 => CONTROL(13),
      I5 => CONTROL(12),
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_89
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_128 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(34),
      I1 => CONTROL(35),
      I2 => CONTROL(33),
      I3 => CONTROL(32),
      I4 => CONTROL(31),
      I5 => CONTROL(30),
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_85
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_164 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(28),
      I1 => CONTROL(29),
      I2 => CONTROL(27),
      I3 => CONTROL(26),
      I4 => CONTROL(25),
      I5 => CONTROL(24),
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_86
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_316 : LUT6
    generic map(
      INIT => X"EEFFEE0FEEF0EE00"
    )
    port map (
      I0 => N36,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_89,
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_44,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_45,
      O => U0_I_VIO_U_STATUS_TDO_next
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => CONTROL(5),
      I1 => CONTROL(6),
      I2 => CONTROL(7),
      I3 => CONTROL(8),
      I4 => CONTROL(9),
      O => N38
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_260 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(10),
      I1 => CONTROL(11),
      I2 => CONTROL(1),
      I3 => CONTROL(2),
      I4 => CONTROL(4),
      I5 => N38,
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_87
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_5_f7_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_88,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_87,
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_85,
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_86,
      O => N36
    );

end STRUCTURE;

-- synthesis translate_on
