//                              -*- Mode: Verilog -*-
// Filename        : acc_tb.v
// Description     : Test bench for accumulator
// Author          : Nitin Chandrachoodan

`timescale 1ns/1ns

module acc_tb () ;
   reg    [7:0] a;
   reg 		clk, reset;
   wire [7:0] 	acc_out;

   // Instantiation of device under test.  
   // Always use named connections for signals.
   acc dut(.acc(acc_out),
	   .clk(clk),
	   .reset(reset),
	   .a(a));

   // Set up a clock with period of 10 time units
   always #5 clk = ~clk;
   
   initial begin
      // Initialize the clock
      clk = 0;
      
      // Initial reset of DUT
      reset = 1;
      #100 reset = 0;
      
      // Monitor accumulator output:  $monitor will automatically show
      // whenever there is a change in one of the signals, unlike
      // $display, which will be shown only at the point where it is
      // called.
      $monitor($time, " a = %x (%d)\t acc = %x (%d)", a, a, acc_out, acc_out);
      
      // Simple positive input
      a = 100;
      #10;
      // Leave the same input on for 2 more clocks
      #20;
      // Negative input
      a = -20;
      #10;
      // Out-of-range input
      a = 300;
      #100;
      $stop;
      
   end
   
endmodule // acc_tb
