`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:49 04/21/2014 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
		RD1,RD2,
		WE3,CLK,A1,A2,A3,WD3
    );
	 
	input[2:0] A1,A2,A3;
	input WE3, CLK;
	input[7:0] WD3;
	output[7:0] RD1,RD2;
	 
	reg[7:0] R[0:7];
	wire[7:0] RD1, RD2;
	initial begin
		R[0] = 0;
		R[1] = 0;
		R[2] = 0;
		R[3] = 0;
		R[4] = 0;
		R[5] = 0;
		R[6] = 0;
		R[7] = 0;
		
		end

	assign RD1 = R[A1];
	assign RD2 = R[A2];
	 
	always @(posedge CLK)
	begin
		if(WE3) begin
			R[A3] <= WD3;
		end
	end
endmodule
