`timescale 1ns / 1ps

module memory_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire done;

	// Instantiate the Unit Under Test (UUT)
	memtop uut (
		.clk(clk), 
		.reset(reset), 
		.done(done)
	);

	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;
		// No stimulus needed, just wait for at least 1024 clock cycles.
		#10300 $finish;

	end
      
endmodule

