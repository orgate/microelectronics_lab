`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	Indian Institute of Technology, Madras
// Engineer: 	M S Santosh Kumar
// 
// Create Date:    16:16:38 04/21/2014 
// Design Name:    processor_top
// Module Name:    processor_top	 
// Project Name:   Mini-MIPS
// Target Devices: Virtex 5
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module processor_top(

	input clk,
	input reset,
	output wire [7:0] PC_out,
	output wire [7:0] Result,
	output wire [7:0] ReadData
);
	
	
	
	wire [7:0] PC_in;
	wire [7:0] PC_inc;
	wire [7:0] mux_1;
	wire [7:0] PCBranch;
	wire PCSrc;
	wire Jump;
	wire [7:0] RD1;
	wire [7:0] RD2;
	wire [2:0] select_rd;
	wire [7:0] srcA;
	wire [7:0] srcB;
	wire Zero;
	wire [7:0] ALUResult;
	wire [2:0] ALUControl;
	wire [15:0] Instr;
	wire MemtoReg;
	wire MemWrite;
	wire Branch;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire [7:0] SignImm;
	wire [5:0] imm;
	
	//select destination between rd and 
	assign select_rd = (RegDst)?(Instr[11:9]):(Instr[5:3]);
	
	// program counter
	reg8 PC(.pc_in(PC_in),.reset(reset),.clk(clk),.pc_out(PC_out));
	
	assign PCSrc = Zero & Branch;
	assign PCBranch = SignImm + PC_out;
	assign PC_inc = PC_out + 1;
	assign mux_1 = (PCSrc)?(PCBranch):(PC_inc);
	assign PC_in = (Jump)?({1'b0,Instr[6:0]}):(mux_1);
	
	//Control unit
	control control(.Op(Instr[15:12]),.Funct(Instr[2:0]),.MemtoReg(MemtoReg),.MemWrite(MemWrite),.Branch(Branch),.ALUControl(ALUControl),.ALUSrc(ALUSrc),.RegDst(RegDst),.RegWrite(RegWrite),.Jump(Jump));
	
	//Register file
	regfile RF(.RD1(RD1),.RD2(RD2),.WE3(RegWrite),.CLK(clk),.A1(Instr[8:6]),.A2(Instr[5:3]),.A3(select_rd),.WD3(Result));
	
	
	//Instruction memory
	I_MEM i_mem(.A(PC_out),.RD(Instr));
	
	//ALU
	assign imm = {Instr[11:9],Instr[2:0]};
	assign SignImm = {{2{Instr[11]}},imm};
	assign srcB = (ALUSrc)?(SignImm):(RD2);
	assign srcA = RD1;
	alu ALU1(.srcA(srcA),.srcB(srcB),.ALUControl(ALUControl),.Zero(Zero),.ALUResult(ALUResult));
	assign Result = (MemtoReg)?(ReadData):(ALUResult);
	
	//Data memory
	Dmem DM (.clk(clk),.A(ALUResult),.RD(ReadData),.WE(MemWrite), .WD(RD2));
	
	
endmodule
