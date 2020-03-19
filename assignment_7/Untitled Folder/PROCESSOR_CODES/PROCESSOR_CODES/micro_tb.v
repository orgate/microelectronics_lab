`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:50:30 04/12/2014
// Design Name:   micro
// Module Name:   F:/Xilinx_Projects/micro_8_bit/micro_tb.v
// Project Name:  micro_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: micro
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module micro_tb;

	// Inputs
	reg clk;

	// Outputs
	wire done;

	// Instantiate the Unit Under Test (UUT)
	micro uut (
		.clk(clk), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#16000;
		$stop;
        
		// Add stimulus here

	end
	always #10 clk = ~clk;
      
endmodule

