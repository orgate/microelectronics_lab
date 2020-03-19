//                              -*- Mode: Verilog -*-
// Filename        : adder.v
// Description     : Simple combinational example
// Author          : Nitin Chandrachoodan

// Dataflow style of modeling.
// Changes in inputs a, b trigger evaluation of output sum

module adder (
	      // Outputs
	      sum, 
	      // Inputs
	      a, b
	      ) ;
   input  [7:0] a, b;
   output [7:0] sum;
   
   assign 	sum = a + b;
   
endmodule // adder
