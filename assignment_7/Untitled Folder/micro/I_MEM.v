`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:38 04/22/2014 
// Design Name: 
// Module Name:    I_MEM 
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
module I_MEM(
	input [7:0] A,
	output [15:0] RD
    );

	reg [15:0] mem[255:0];
	initial begin
		$readmemb("memory.list", mem);
	end

	assign RD = mem[A];

endmodule
