// EE5480/EL4230 - Jan 2014
// Booth Multiplier Testbench
// You are encourage to modify this test bench to:
//  a) add more test cases with specific checks
//  b) make it a self-checking test bench

`timescale 1ns/1ns
`define width 8


module booth_tb () ;
   reg    [`width-1:0] a;
   reg    [`width-1:0] b;
   wire   [2*`width-1:0] p;

   // Named signal connections
   booth_mult dut( .p(p[2*`width-1:0]),
	      .a(a[`width-1:0]),
	      .b(b[`width-1:0]));
   
   initial begin
            
      // Basic test
      #5 a = 2;
      b = 3;
      #5 $display("a = %d, b = %d, a*b = %d", a, b, p);

      // Normal 8-bit range positive numbers
     #5 a = 12;
      b = 20;
      #5 $display("a = %d, b = %d, a*b = %d", a, b, p);
      
      #5 a = 123;
      b = 19;
      #5 $display("a = %d, b = %d, a*b = %d", a, b, p);


      // Input out of 8-bit range
      #5 a = 600;
      b = 20;
      #5 $display("a = %d, b = %d, a*b = %d", a, b, p);

      // Negative input
      #5 a = -111;
      b = -5;
      #5 $display("a = %d, b = %d, a*b = %d", a, b, p);

      $stop;
      
   end
   
endmodule

