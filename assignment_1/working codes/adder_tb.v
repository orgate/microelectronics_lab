//                              -*- Mode: Verilog -*-
// Filename        : adder_tb.v
// Description     : Test bench for combinational adder
// Author          : Nitin Chandrachoodan

`timescale 1ns/1ns

module adder_tb () ;
   reg    [7:0] a, b;
   wire   [7:0] sum;

   // Named signal connections
   adder dut( .sum(sum[7:0]),
	      .a(a[7:0]),
	      .b(b[7:0]));
   
   initial begin
      // For each test, give some delay before the test, and some
      // delay before displaying the result.  These delays are given
      // only for the simulator to progress, they are not real delays
      // of 1 ns each.
      
      // Basic test
      #1 a = 0;
      b = 0;
//      #1 $display("a = %d, b = %d, sum = %d", a, b, sum);
      #1 if (sum != 10) $display("Error!");

      // Normal 8-bit range positive numbers
      #1 a = 100;
      b = 20;
//      #1 $display("a = %d, b = %d, sum = %d", a, b, sum);
      #1 if (sum != 120) $display("Error!");

      // Input out of 8-bit range
      #1 a = 300;
      b = 20;
//      #1 $display("a = %d, b = %d, sum = %d", a, b, sum);
      #1 if (sum != 64) $display("Error!");

      // Negative input
      #1 a = 100;
      b = -20;
//      #1 $display("a = %d, b = %d, sum = %d", a, b, sum);
      #1 if (sum != 80) $display("Error!");

      $stop;
      
   end
   
endmodule // adder_tb
