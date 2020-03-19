`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:52 04/24/2014 
// Design Name: 
// Module Name:    control 
// Project Name: 
// Target Devices: 
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
module control(

	input [3:0] Op,
	input [2:0] Funct,
	output reg MemtoReg,
	output reg MemWrite,
	output reg Branch,
	output reg [2:0] ALUControl,
	output reg ALUSrc,
	output reg RegDst,
	output reg RegWrite,
	output reg Jump
    );

	always @(Op or Funct)
	begin
		case (Op)
			4'b0000: begin
				MemtoReg = 0;
				MemWrite = 0;
				Branch = 0;
				ALUControl = Funct;
				ALUSrc = 0;
				RegDst = 1;
				RegWrite = 1;
				Jump = 0;
			end
			4'b0100: begin
				MemtoReg = 0;
				MemWrite = 0;
				Branch = 0;
				ALUControl = 3'b000;
				ALUSrc = 1;
				RegDst = 0;
				RegWrite = 1;
				Jump = 0;
			end
			4'b1011: begin
				MemtoReg = 1;
				MemWrite = 0;
				Branch = 0;
				ALUControl = 3'b000;
				ALUSrc = 1;
				RegDst = 0;
				RegWrite = 1;
				Jump = 0;
			end
			4'b1111: begin
				MemtoReg = 0;
				MemWrite = 1;
				Branch = 0;
				ALUControl = 3'b000;
				ALUSrc = 1;
				RegDst = 0;
				RegWrite = 0;
				Jump = 0;
			end
			4'b1000: begin
				MemtoReg = 0;
				MemWrite = 0;
				Branch = 1;
				ALUControl = 3'b000;
				ALUSrc = 0;
				RegDst = 0;
				RegWrite = 0;
				Jump = 0;
			end
			4'b0010: begin
				MemtoReg = 0;
				MemWrite = 0;
				Branch = 0;
				ALUControl = 3'b000;
				ALUSrc = 0;
				RegDst = 0;
				RegWrite = 0;
				Jump = 1;
			end
			default: begin
				MemtoReg = 0;
				MemWrite = 0;
				Branch = 0;
				ALUControl = 3'b000;
				ALUSrc = 0;
				RegDst = 0;
				RegWrite = 0;
				Jump = 0;
			end
		endcase
	end
				
				
				
			
endmodule
