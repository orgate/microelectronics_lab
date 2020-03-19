//                              -*- Mode: Verilog -*-
// Filename        : acc.v
// Description     : Accumulator
// Author          : Nitin Chandrachoodan
module acc (
	    // Outputs
	    acc, 
	    // Inputs
	    clk, reset, a
	    ) ;
   input  clk, reset;
   input [7:0] a;
   output [7:0] acc;
   
   reg [7:0] 	acc;
   
   always @ (posedge clk or posedge reset) begin
      if (reset) begin
	 acc <= 0;
      end else begin
	 acc <= acc + a;
      end
   end
   
endmodule // acc
