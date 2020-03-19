////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: vio.v
// /___/   /\     Timestamp: Mon Mar  3 04:19:23 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.ngc /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.v 
// Device	: xc5vlx110t-ff1136-1
// Input file	: /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.ngc
// Output file	: /home/mil59/booth/booth_2/ipcore_dir/tmp/_cg/vio.v
// # of Modules	: 1
// Design Name	: vio
// Xilinx        : /opt/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module vio (
CONTROL, ASYNC_OUT, ASYNC_IN
)/* synthesis syn_black_box syn_noprune=1 */;
  inout [35 : 0] CONTROL;
  output [15 : 0] ASYNC_OUT;
  input [15 : 0] ASYNC_IN;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire N36;
  wire N38;
  wire \U0/I_VIO/DATA_DOUT ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_UPDATE_OUT[31].UPDATE_CELL/out_temp ;
  wire \U0/I_VIO/RESET ;
  wire \U0/I_VIO/STAT_DOUT ;
  wire \U0/I_VIO/U_STATUS/CFG_CE_n ;
  wire \U0/I_VIO/U_STATUS/TDO_next ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_285 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_286 ;
  wire \U0/I_VIO/U_STATUS/iSTAT_CNT<7>128_326 ;
  wire \U0/I_VIO/U_STATUS/iSTAT_CNT<7>164_327 ;
  wire \U0/I_VIO/U_STATUS/iSTAT_CNT<7>260_328 ;
  wire \U0/I_VIO/U_STATUS/iSTAT_CNT<7>35_329 ;
  wire \U0/I_VIO/U_STATUS/iSTAT_CNT<7>71_330 ;
  wire [16 : 1] \U0/I_VIO/INPUT_SHIFT ;
  wire [31 : 1] \U0/I_VIO/OUTPUT_SHIFT ;
  wire [15 : 0] \U0/I_VIO/UPDATE ;
  wire [7 : 1] \U0/I_VIO/U_STATUS/U_STAT_CNT/CI ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/D ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/S ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT_CNT ;
  wire [1 : 0] \U0/I_VIO/reset_f_edge/iDOUT ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_TDO  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/TDO_next ),
    .Q(\U0/I_VIO/STAT_DOUT )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT [3]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT [0]),
    .I4(\U0/I_VIO/U_STATUS/iSTAT [1]),
    .I5(\U0/I_VIO/U_STATUS/iSTAT [2]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_286 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT [7]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT [4]),
    .I4(\U0/I_VIO/U_STATUS/iSTAT [5]),
    .I5(\U0/I_VIO/U_STATUS/iSTAT [6]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_285 )
  );
  INV   \U0/I_VIO/U_STATUS/U_CE_n  (
    .I(CONTROL[4]),
    .O(\U0/I_VIO/U_STATUS/CFG_CE_n )
  );
  LUT4 #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/U_STATUS/F_STAT[7].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [7])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/I_VIO/U_STATUS/F_STAT[6].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [6])
  );
  LUT4 #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/U_STATUS/F_STAT[5].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/I_VIO/U_STATUS/F_STAT[4].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [4])
  );
  LUT4 #(
    .INIT ( 16'h0610 ))
  \U0/I_VIO/U_STATUS/F_STAT[3].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [3])
  );
  LUT4 #(
    .INIT ( 16'h2100 ))
  \U0/I_VIO/U_STATUS/F_STAT[2].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [2])
  );
  LUT4 #(
    .INIT ( 16'hC409 ))
  \U0/I_VIO/U_STATUS/F_STAT[1].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [1])
  );
  LUT4 #(
    .INIT ( 16'h0101 ))
  \U0/I_VIO/U_STATUS/F_STAT[0].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [0])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_XORCY  (
    .CI(N1),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [0])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].GnH.U_MUXCY  (
    .CI(N1),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [1])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [2])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [3])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [4])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [5])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [6])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6]),
    .DI(N0),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [7])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [6]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [7]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [7]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [7])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [0]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [1]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [2]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [3]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [4]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [5]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [6]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [7]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[0]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[0]),
    .I1(N0),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[0]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[1]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[1]),
    .I1(\U0/I_VIO/INPUT_SHIFT [1]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[1]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[2]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[2]),
    .I1(\U0/I_VIO/INPUT_SHIFT [2]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[2]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[3]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[3]),
    .I1(\U0/I_VIO/INPUT_SHIFT [3]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[3]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[4]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[4]),
    .I1(\U0/I_VIO/INPUT_SHIFT [4]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[4]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[5]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[5]),
    .I1(\U0/I_VIO/INPUT_SHIFT [5]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[5]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[6]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[6]),
    .I1(\U0/I_VIO/INPUT_SHIFT [6]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[6]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[7]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [8])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[7]),
    .I1(\U0/I_VIO/INPUT_SHIFT [7]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[8]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [9])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[8]),
    .I1(\U0/I_VIO/INPUT_SHIFT [8]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[8]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[9]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [10])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[9]),
    .I1(\U0/I_VIO/INPUT_SHIFT [9]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[9]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[10]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [11])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[10]),
    .I1(\U0/I_VIO/INPUT_SHIFT [10]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[10]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[11]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [12])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[11]),
    .I1(\U0/I_VIO/INPUT_SHIFT [11]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[11]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[12]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [13])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[12]),
    .I1(\U0/I_VIO/INPUT_SHIFT [12]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[12]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[13]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [14])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[13]),
    .I1(\U0/I_VIO/INPUT_SHIFT [13]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[13]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[14]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [15])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[14]),
    .I1(\U0/I_VIO/INPUT_SHIFT [14]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[14]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[15]),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n ),
    .CE(N1),
    .CLR(\U0/I_VIO/RESET ),
    .D(N1),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [16])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[15]),
    .I1(\U0/I_VIO/INPUT_SHIFT [15]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[15]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/U_DOUT  (
    .I0(\U0/I_VIO/STAT_DOUT ),
    .I1(\U0/I_VIO/DATA_DOUT ),
    .I2(CONTROL[7]),
    .O(CONTROL[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/U_DOUT0  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(CONTROL[7]),
    .Q(\U0/I_VIO/reset_f_edge/iDOUT [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/U_DOUT1  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/reset_f_edge/iDOUT [0]),
    .Q(\U0/I_VIO/reset_f_edge/iDOUT [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/I_H2L.U_DOUT  (
    .C(CONTROL[0]),
    .D(\U0/I_VIO/reset_f_edge/iDOUT [1]),
    .R(\U0/I_VIO/reset_f_edge/iDOUT [0]),
    .Q(\U0/I_VIO/RESET )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[16].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [16]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[16].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [17]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[17].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [17]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[17].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [18]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[18].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [18]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[18].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [19]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[19].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [19]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[19].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [20]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[20].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [20]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[20].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [21]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[21].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [21]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[21].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [22]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[22].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [22]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[22].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [23]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [23]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [24]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[24].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [24]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[24].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [25]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[25].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [25]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[25].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [26]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[26].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [26]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[26].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [27]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[27].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [27]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[27].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [28]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[28].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [28]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[28].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [29]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[29].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [29]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[29].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [30]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[30].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [30]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[30].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [31]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[31].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [31]),
    .Q(\U0/I_VIO/GEN_UPDATE_OUT[31].UPDATE_CELL/out_temp )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[31].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/GEN_UPDATE_OUT[31].UPDATE_CELL/out_temp ),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[0].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(CONTROL[1]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[0].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [1]),
    .Q(ASYNC_OUT[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[1].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [1]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[1].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [1]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [2]),
    .Q(ASYNC_OUT[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[2].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [2]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[2].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [2]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [3]),
    .Q(ASYNC_OUT[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[3].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [3]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[3].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [3]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [4]),
    .Q(ASYNC_OUT[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[4].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [4]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[4].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [4]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [5]),
    .Q(ASYNC_OUT[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[5].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [5]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[5].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [6]),
    .Q(ASYNC_OUT[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[6].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [6]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[6].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [7]),
    .Q(ASYNC_OUT[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[7].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [7]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[7].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [7]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [8]),
    .Q(ASYNC_OUT[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[8].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [8]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[8].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [8]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [9]),
    .Q(ASYNC_OUT[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[9].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [9]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[9].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [9]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [10]),
    .Q(ASYNC_OUT[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[10].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [10]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[10].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [10]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [11]),
    .Q(ASYNC_OUT[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[11].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [11]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[11].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [11]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [12]),
    .Q(ASYNC_OUT[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[12].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [12]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[12].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [12]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [13]),
    .Q(ASYNC_OUT[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[13].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [13]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[13].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [13]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [14]),
    .Q(ASYNC_OUT[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[14].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [14]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[14].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [14]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [15]),
    .Q(ASYNC_OUT[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[15].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [15]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[15].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [15]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [16]),
    .Q(ASYNC_OUT[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_DATA_OUT  (
    .C(CONTROL[0]),
    .CE(N1),
    .D(\U0/I_VIO/INPUT_SHIFT [16]),
    .Q(\U0/I_VIO/DATA_DOUT )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>35  (
    .I0(CONTROL[22]),
    .I1(CONTROL[23]),
    .I2(CONTROL[21]),
    .I3(CONTROL[20]),
    .I4(CONTROL[19]),
    .I5(CONTROL[18]),
    .O(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>35_329 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>71  (
    .I0(CONTROL[16]),
    .I1(CONTROL[17]),
    .I2(CONTROL[15]),
    .I3(CONTROL[14]),
    .I4(CONTROL[13]),
    .I5(CONTROL[12]),
    .O(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>71_330 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>128  (
    .I0(CONTROL[34]),
    .I1(CONTROL[35]),
    .I2(CONTROL[33]),
    .I3(CONTROL[32]),
    .I4(CONTROL[31]),
    .I5(CONTROL[30]),
    .O(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>128_326 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>164  (
    .I0(CONTROL[28]),
    .I1(CONTROL[29]),
    .I2(CONTROL[27]),
    .I3(CONTROL[26]),
    .I4(CONTROL[25]),
    .I5(CONTROL[24]),
    .O(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>164_327 )
  );
  LUT6 #(
    .INIT ( 64'hEEFFEE0FEEF0EE00 ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>316  (
    .I0(N36),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>71_330 ),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [6]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .I4(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_6_285 ),
    .I5(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_7_286 ),
    .O(\U0/I_VIO/U_STATUS/TDO_next )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>260_SW0  (
    .I0(CONTROL[5]),
    .I1(CONTROL[6]),
    .I2(CONTROL[7]),
    .I3(CONTROL[8]),
    .I4(CONTROL[9]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/iSTAT_CNT<7>260  (
    .I0(CONTROL[10]),
    .I1(CONTROL[11]),
    .I2(CONTROL[1]),
    .I3(CONTROL[2]),
    .I4(CONTROL[4]),
    .I5(N38),
    .O(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>260_328 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O_5_f7_SW0  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>35_329 ),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>260_328 ),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>128_326 ),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT<7>164_327 ),
    .O(N36)
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
