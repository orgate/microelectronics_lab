`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Indian Institute of Technology, Madras
// Engineer: M S Santosh Kumar
// 
// Create Date:    15:01:07 04/21/2014 
// Design Name:	   alu
// Module Name:    alu 
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
module alu(
	input 	[7:0] 	srcA,
	input 	[7:0] 	srcB,
	input		[2:0] 	ALUControl,
	output reg 	Zero,
	output reg  [7:0]	ALUResult
);
	parameter [2:0]
		ADD_1 = 3'b000,
		SUB_1 = 3'b010,
		AND_1 = 3'b100,
		OR_1 = 3'b101;
		
	always @(ALUControl or srcA or srcB)
	begin
		case (ALUControl)
			ADD_1:
				begin
					ALUResult = srcA + srcB;
				end
			SUB_1:
				begin
					ALUResult = srcA - srcB;
				end
			AND_1:
				begin
					ALUResult = srcA & srcB;
				end
			OR_1:
				begin
					ALUResult = srcA | srcB;
				end
			default:
				begin
					ALUResult = 0;
				end
		endcase
	end
	
	always @(srcA or srcB)
	begin
		if (srcA == srcB)
		begin
			Zero = 1;
		end else
		begin
			Zero = 0;
		end
	end

endmodule
