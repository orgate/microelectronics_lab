//                              -*- Mode: Verilog -*-
// Filename        : seq-mult-tb.v
// Description     : Sequential multiplier test bench
// Author          : Nitin Chandrachoodan

// Automatic test bench
// Uses tasks to keep test code clean

`timescale 1ns/1ns
`define width 8

module seq_mult_tb () ;
   reg [`width-1:0] a;
   reg [`width-1:0] b;
   reg 		    clk, reset;
   
   wire [2*`width-1:0] p;
   wire 	       rdy;

   seq_mult dut( .clk(clk),
		 .reset(reset),
		 .a(a[`width-1:0]),
		 .b(b[`width-1:0]),
		 .p(p[2*`width-1:0]),
		 .rdy(rdy));
   
   always #5 clk = !clk;
   
   task reset_and_crank_dut;
      begin
	 // Reset the DUT for one clock cycle
	 reset = 1;
	 @(posedge clk);
	 // Remove reset 
	 #1 reset = 0;
	 
	 // Loop until the DUT indicates 'rdy'
	 while (rdy == 0) begin
	    @(posedge clk); // Wait for one clock cycle
	 end
      end
   endtask // reset_and_crank_dut
   
   initial begin
      // Initialize the clock
      clk = 1;

      // Sequences of values pumped through DUT 
      
      // It is not necessary to place a #1 before the $display,
      // because the reset_and_crank_dut task will only exit after the
      // value is correctly computed.
      a = 10;
      b = 1;
      reset_and_crank_dut;
      $display($time, " a = %d, b = %d, p = %d", a, b, p);
      
      a = 10;
      b = 2;
      reset_and_crank_dut;
      $display($time, " a = %d, b = %d, p = %d", a, b, p);

      // Product will not fit in 8 bits.      
      a = 20;
      b = 20;
      reset_and_crank_dut;
      $display($time, " a = %d, b = %d, p = %d", a, b, p);

      // One operand negative
      a = -10;
      b = 2;
      reset_and_crank_dut;
      $display($time, " a = %d, b = %d, p = %d", a, b, p);

      // Add more test cases:
      // - other input negative
      // - each input 0
      // - max/min values etc.
      // - random numbers if necessary?

      $stop;
      
   end
   
endmodule // seq_mult_tb
