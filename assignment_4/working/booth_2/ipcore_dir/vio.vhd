--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: vio.vhd
-- /___/   /\     Timestamp: Mon Mar  3 04:19:12 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.ngc /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.vhd 
-- Device	: xc5vlx110t-ff1136-1
-- Input file	: /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.ngc
-- Output file	: /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.vhd
-- # of Entities	: 1
-- Design Name	: vio
-- Xilinx	: /opt/ISE_DS/ISE/
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
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ); 
    ASYNC_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ASYNC_IN : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end vio;

architecture STRUCTURE of vio is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal U0_I_VIO_DATA_DOUT : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_UPDATE_OUT_31_UPDATE_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_RESET : STD_LOGIC; 
  signal U0_I_VIO_STAT_DOUT : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_CFG_CE_n : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_TDO_next : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_285 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_286 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_326 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_327 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_328 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_329 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_330 : STD_LOGIC; 
  signal U0_I_VIO_INPUT_SHIFT : STD_LOGIC_VECTOR ( 16 downto 1 ); 
  signal U0_I_VIO_OUTPUT_SHIFT : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal U0_I_VIO_UPDATE : STD_LOGIC_VECTOR ( 15 downto 0 ); 
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_286
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_285
    );
  U0_I_VIO_U_STATUS_U_CE_n : INV
    port map (
      I => CONTROL(4),
      O => U0_I_VIO_U_STATUS_CFG_CE_n
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
  U0_I_VIO_U_STATUS_F_STAT_6_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(6)
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
  U0_I_VIO_U_STATUS_F_STAT_4_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(4)
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
  U0_I_VIO_U_STATUS_F_STAT_1_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"C409"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(1)
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
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_XORCY : XORCY
    port map (
      CI => N1,
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => N1,
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      DI => N0,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7)
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
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(0),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(0),
      I1 => N0,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(0),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(1),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(1),
      I1 => U0_I_VIO_INPUT_SHIFT(1),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(1),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(2),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(2),
      I1 => U0_I_VIO_INPUT_SHIFT(2),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(2),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(3),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(3),
      I1 => U0_I_VIO_INPUT_SHIFT(3),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(3),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(4),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(4),
      I1 => U0_I_VIO_INPUT_SHIFT(4),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(4),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(5),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(5),
      I1 => U0_I_VIO_INPUT_SHIFT(5),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(5),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(6),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(6),
      I1 => U0_I_VIO_INPUT_SHIFT(6),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(6),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(7),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(7),
      I1 => U0_I_VIO_INPUT_SHIFT(7),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(8),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(8),
      I1 => U0_I_VIO_INPUT_SHIFT(8),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(8),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(9),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(9),
      I1 => U0_I_VIO_INPUT_SHIFT(9),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(9),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(10),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(10),
      I1 => U0_I_VIO_INPUT_SHIFT(10),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(10),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(11),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(11),
      I1 => U0_I_VIO_INPUT_SHIFT(11),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(11),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(12),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(12),
      I1 => U0_I_VIO_INPUT_SHIFT(12),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(12),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(13),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(13),
      I1 => U0_I_VIO_INPUT_SHIFT(13),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(13),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(14),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(14),
      I1 => U0_I_VIO_INPUT_SHIFT(14),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(14),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(15),
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n,
      CE => N1,
      CLR => U0_I_VIO_RESET,
      D => N1,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(16)
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(15),
      I1 => U0_I_VIO_INPUT_SHIFT(15),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(15),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out
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
  U0_I_VIO_reset_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      D => U0_I_VIO_reset_f_edge_iDOUT(1),
      R => U0_I_VIO_reset_f_edge_iDOUT(0),
      Q => U0_I_VIO_RESET
    );
  U0_I_VIO_GEN_UPDATE_OUT_16_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(16),
      Q => U0_I_VIO_OUTPUT_SHIFT(17)
    );
  U0_I_VIO_GEN_UPDATE_OUT_16_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(17),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(0)
    );
  U0_I_VIO_GEN_UPDATE_OUT_17_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(17),
      Q => U0_I_VIO_OUTPUT_SHIFT(18)
    );
  U0_I_VIO_GEN_UPDATE_OUT_17_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(18),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(1)
    );
  U0_I_VIO_GEN_UPDATE_OUT_18_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(18),
      Q => U0_I_VIO_OUTPUT_SHIFT(19)
    );
  U0_I_VIO_GEN_UPDATE_OUT_18_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(19),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(2)
    );
  U0_I_VIO_GEN_UPDATE_OUT_19_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(19),
      Q => U0_I_VIO_OUTPUT_SHIFT(20)
    );
  U0_I_VIO_GEN_UPDATE_OUT_19_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(20),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(3)
    );
  U0_I_VIO_GEN_UPDATE_OUT_20_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(20),
      Q => U0_I_VIO_OUTPUT_SHIFT(21)
    );
  U0_I_VIO_GEN_UPDATE_OUT_20_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(21),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(4)
    );
  U0_I_VIO_GEN_UPDATE_OUT_21_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(21),
      Q => U0_I_VIO_OUTPUT_SHIFT(22)
    );
  U0_I_VIO_GEN_UPDATE_OUT_21_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(22),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(5)
    );
  U0_I_VIO_GEN_UPDATE_OUT_22_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(22),
      Q => U0_I_VIO_OUTPUT_SHIFT(23)
    );
  U0_I_VIO_GEN_UPDATE_OUT_22_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(23),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(6)
    );
  U0_I_VIO_GEN_UPDATE_OUT_23_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(23),
      Q => U0_I_VIO_OUTPUT_SHIFT(24)
    );
  U0_I_VIO_GEN_UPDATE_OUT_23_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(24),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(7)
    );
  U0_I_VIO_GEN_UPDATE_OUT_24_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(24),
      Q => U0_I_VIO_OUTPUT_SHIFT(25)
    );
  U0_I_VIO_GEN_UPDATE_OUT_24_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(25),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(8)
    );
  U0_I_VIO_GEN_UPDATE_OUT_25_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(25),
      Q => U0_I_VIO_OUTPUT_SHIFT(26)
    );
  U0_I_VIO_GEN_UPDATE_OUT_25_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(26),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(9)
    );
  U0_I_VIO_GEN_UPDATE_OUT_26_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(26),
      Q => U0_I_VIO_OUTPUT_SHIFT(27)
    );
  U0_I_VIO_GEN_UPDATE_OUT_26_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(27),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(10)
    );
  U0_I_VIO_GEN_UPDATE_OUT_27_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(27),
      Q => U0_I_VIO_OUTPUT_SHIFT(28)
    );
  U0_I_VIO_GEN_UPDATE_OUT_27_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(28),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(11)
    );
  U0_I_VIO_GEN_UPDATE_OUT_28_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(28),
      Q => U0_I_VIO_OUTPUT_SHIFT(29)
    );
  U0_I_VIO_GEN_UPDATE_OUT_28_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(29),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(12)
    );
  U0_I_VIO_GEN_UPDATE_OUT_29_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(29),
      Q => U0_I_VIO_OUTPUT_SHIFT(30)
    );
  U0_I_VIO_GEN_UPDATE_OUT_29_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(30),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(13)
    );
  U0_I_VIO_GEN_UPDATE_OUT_30_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(30),
      Q => U0_I_VIO_OUTPUT_SHIFT(31)
    );
  U0_I_VIO_GEN_UPDATE_OUT_30_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_OUTPUT_SHIFT(31),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(14)
    );
  U0_I_VIO_GEN_UPDATE_OUT_31_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(31),
      Q => U0_I_VIO_GEN_UPDATE_OUT_31_UPDATE_CELL_out_temp
    );
  U0_I_VIO_GEN_UPDATE_OUT_31_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_GEN_UPDATE_OUT_31_UPDATE_CELL_out_temp,
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(15)
    );
  U0_I_VIO_GEN_ASYNC_OUT_0_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => CONTROL(1),
      Q => U0_I_VIO_OUTPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_ASYNC_OUT_0_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(0),
      D => U0_I_VIO_OUTPUT_SHIFT(1),
      Q => ASYNC_OUT(0)
    );
  U0_I_VIO_GEN_ASYNC_OUT_1_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(1),
      Q => U0_I_VIO_OUTPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_ASYNC_OUT_1_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(1),
      D => U0_I_VIO_OUTPUT_SHIFT(2),
      Q => ASYNC_OUT(1)
    );
  U0_I_VIO_GEN_ASYNC_OUT_2_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(2),
      Q => U0_I_VIO_OUTPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_ASYNC_OUT_2_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(2),
      D => U0_I_VIO_OUTPUT_SHIFT(3),
      Q => ASYNC_OUT(2)
    );
  U0_I_VIO_GEN_ASYNC_OUT_3_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(3),
      Q => U0_I_VIO_OUTPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_ASYNC_OUT_3_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(3),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => ASYNC_OUT(3)
    );
  U0_I_VIO_GEN_ASYNC_OUT_4_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => U0_I_VIO_OUTPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_ASYNC_OUT_4_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(4),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => ASYNC_OUT(4)
    );
  U0_I_VIO_GEN_ASYNC_OUT_5_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => U0_I_VIO_OUTPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_ASYNC_OUT_5_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(5),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => ASYNC_OUT(5)
    );
  U0_I_VIO_GEN_ASYNC_OUT_6_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => U0_I_VIO_OUTPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_ASYNC_OUT_6_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(6),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => ASYNC_OUT(6)
    );
  U0_I_VIO_GEN_ASYNC_OUT_7_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => U0_I_VIO_OUTPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_ASYNC_OUT_7_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(7),
      D => U0_I_VIO_OUTPUT_SHIFT(8),
      Q => ASYNC_OUT(7)
    );
  U0_I_VIO_GEN_ASYNC_OUT_8_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(8),
      Q => U0_I_VIO_OUTPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_ASYNC_OUT_8_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(8),
      D => U0_I_VIO_OUTPUT_SHIFT(9),
      Q => ASYNC_OUT(8)
    );
  U0_I_VIO_GEN_ASYNC_OUT_9_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(9),
      Q => U0_I_VIO_OUTPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_ASYNC_OUT_9_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(9),
      D => U0_I_VIO_OUTPUT_SHIFT(10),
      Q => ASYNC_OUT(9)
    );
  U0_I_VIO_GEN_ASYNC_OUT_10_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(10),
      Q => U0_I_VIO_OUTPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_ASYNC_OUT_10_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(10),
      D => U0_I_VIO_OUTPUT_SHIFT(11),
      Q => ASYNC_OUT(10)
    );
  U0_I_VIO_GEN_ASYNC_OUT_11_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(11),
      Q => U0_I_VIO_OUTPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_ASYNC_OUT_11_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(11),
      D => U0_I_VIO_OUTPUT_SHIFT(12),
      Q => ASYNC_OUT(11)
    );
  U0_I_VIO_GEN_ASYNC_OUT_12_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(12),
      Q => U0_I_VIO_OUTPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_ASYNC_OUT_12_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(12),
      D => U0_I_VIO_OUTPUT_SHIFT(13),
      Q => ASYNC_OUT(12)
    );
  U0_I_VIO_GEN_ASYNC_OUT_13_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(13),
      Q => U0_I_VIO_OUTPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_ASYNC_OUT_13_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(13),
      D => U0_I_VIO_OUTPUT_SHIFT(14),
      Q => ASYNC_OUT(13)
    );
  U0_I_VIO_GEN_ASYNC_OUT_14_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(14),
      Q => U0_I_VIO_OUTPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_ASYNC_OUT_14_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(14),
      D => U0_I_VIO_OUTPUT_SHIFT(15),
      Q => ASYNC_OUT(14)
    );
  U0_I_VIO_GEN_ASYNC_OUT_15_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(15),
      Q => U0_I_VIO_OUTPUT_SHIFT(16)
    );
  U0_I_VIO_GEN_ASYNC_OUT_15_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(15),
      D => U0_I_VIO_OUTPUT_SHIFT(16),
      Q => ASYNC_OUT(15)
    );
  U0_I_VIO_U_DATA_OUT : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N1,
      D => U0_I_VIO_INPUT_SHIFT(16),
      Q => U0_I_VIO_DATA_DOUT
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
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_329
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
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_330
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
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_326
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
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_327
    );
  U0_I_VIO_U_STATUS_iSTAT_CNT_7_316 : LUT6
    generic map(
      INIT => X"EEFFEE0FEEF0EE00"
    )
    port map (
      I0 => N36,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_71_330,
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_6_285,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_7_286,
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
      O => U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_328
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O_5_f7_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_35_329,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_260_328,
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_128_326,
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT_7_164_327,
      O => N36
    );

end STRUCTURE;

-- synthesis translate_on
