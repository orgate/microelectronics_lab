`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:59 04/24/2014 
// Design Name: 
// Module Name:    Dmem 
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
module Dmem(

	input [7:0] A,
	input [7:0] WD,
	input clk,
	input WE,
	output [7:0] RD
    );

	reg [7:0] Reg[0:255];
	
	assign RD = Reg[A];
	
	always @(posedge clk)
	begin
		if (WE == 1'b1) begin
			Reg[A] <= WD;
		end
	end

endmodule
