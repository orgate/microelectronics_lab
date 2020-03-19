//                              -*- Mode: Verilog -*-
// Filename        : seq-mult.v
// Description     : Sequential multiplier
// Author          : Nitin Chandrachoodan

// This implementation corresponds to a sequential multiplier, but
// most of the functionality is missing.  Complete the code so that
// the resulting module implements multiplication of two numbers in
// twos complement format.

// All the comments marked with *** correspond to something you need
// to fill in.

// This style of modeling is 'behavioural', where the desired
// behaviour is described in terms of high level statements ('if'
// statements in verilog).  This is where the real power of the
// language is seen, since such modeling is closest to the way we
// think about the operation.  However, it is also the most difficult
// to translate into hardware, so a good understanding of the
// connection between the program and hardware is important.

`define width 8
`define ctrwidth 4

module booth_mult (
		 // Outputs
		 p, rdy, 
		 // Inputs
		 reset, a, b
		 ) ;
   input 		 clk, reset;
   input [`width-1:0] 	 a;
   input [`width-1:0] 	 b;
   // *** Output declaration for 'p' //done
   output 		 rdy;
   output [(2*(`width)-1):0] p;
   
   // *** Register declarations for p, multiplier, multiplicand //done
   reg 			 rdy;
   reg [`ctrwidth:0] 	 ctr;
   reg [`width-1:0] multiplier, multiplicand;
   reg [2*`width-1:0] p;
   reg [2*`width-1:0] temp;
   reg [2:0] temp1;
	
	always @ (temp)
	begin
	temp <= b;
	end	
//   always @(a or b or posedge reset)
//     if (reset) begin
//	rdy 		<= 0;
//	p	 		<= 0;
//	ctr 		<= 1;
//	temp		<= b;
//	multiplier 	<= {{`width{a[`width-1]}}, a}; // sign-extend
//	multiplicand 	<= {{`width{b[`width-1]}}, b}; // sign-extend
//    end else begin 

//	assign ctr 		= 1;

initial begin
//always @ (a or b) begin
//    if (reset) begin
	assign rdy 		= 0;
	assign p	 		= 0;
	assign ctr 		= 1;
//	temp		<= b;
	assign multiplier 	= {{`width{a[`width-1]}}, a}; // sign-extend
	assign multiplicand 	= {{`width{b[`width-1]}}, b}; // sign-extend
//    end else begin 

	assign temp1 = b[1];

	while (ctr<(`width/2)) 
//		if (ctr < (`width/2)/* *** How many times should the loop run? */ /* done */) 
		  begin
//				p <= p + a;
				assign p = p + 1;
//				$display(temp1);
//				assign temp1 = b[2:0];
//			case (b[0])
//				3'b000: assign p = p;
//				3'b001: assign p = p + a;
//				3'b010: assign p = p + a;
//				3'b011: assign p = p + a<<1;
//				3'b100: assign p = p - a<<1;
//				3'b101: assign p = p - a;
//				3'b110: assign p = p - a;
//				3'b111: assign p = p;
			if	(temp1==3'b000) begin assign p = 1; end
			if	(temp1==3'b001) begin assign p = 2; end
			if	(temp1==3'b010) begin assign p = 3; end
			if	(temp1==3'b011) begin assign p = 4; end
			if	(temp1==3'b100) begin assign p = 5; end
			if	(temp1==3'b101) begin assign p = 6; end
			if	(temp1==3'b110) begin assign p = 7; end
			if	(temp1==3'b111) begin assign p = 8; end
			if  (temp1==1'b1) begin assign p = 9; end
			if	(b[ctr]==1) begin assign p = 5; end
//			endcase
//			assign temp1 = b>>2;
			assign ctr = ctr + 1;
     end
			case (b[1:0])
				2'b00:  assign p = p;
				2'b01:  assign p = p + a;
				2'b10:  assign p = p - a<<1;
				2'b11:  assign p = p - a;
			endcase	

//	     if (a[ctr]==1) begin
//	     	p <= p + temp;
//	     	ctr <= ctr + 1;
//	     end else begin
//	     	p <= p;
//	     	ctr <= ctr + 1;
//	     end
//	     temp <= temp<<1;
	     // *** Code for multiplication
//		  end else begin
//		     assign rdy = 1; 		// Assert 'rdy' signal to indicate end of multiplication
//		  end

		     assign rdy = 1; 		// Assert 'rdy' signal to indicate end of multiplication
end
   
endmodule // seqmult
