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
`define width2 3
`define ctrwidth 4

module boothenc (
		 // Outputs
		 c,
		 // Inputs
		 a, b
		 ) ;
   input [`width-1:0] 	 a;
   input [`width2-1:0]	 b;
   // *** Output declaration for 'p'
   output[2*`width-1:0]	 c;
   // *** Register declarations for p, multiplier, multiplicand
   //reg [`ctrwidth:0] 	 ctr;
   reg [2*`width-1:0] 	c;
   reg[2*`width-1:0]	p,multiplier,multiplicand;
   always @ (a or b) begin	
	multiplier 	<= {{`width{a[`width-1]}}, a}; // sign-extend
	//multiplicand 	<= {{`width{b[`width-1]}}, b}; // sign-extend			
	case (b)
		3'b000,3'b111 : c <= 0;
		3'b001,3'b010 : c <= multiplier;
		3'b011 : c <= (multiplier<<1);
		3'b100 : c <= (~(multiplier<<1)+1);
		3'b101,3'b110 : c<=~(multiplier)+1;
	endcase
   end
   
endmodule // seqmult

module boothmul(//outputs
		p,
		//inputs
		x,y
		);
	input [`width-1:0] x,y;
	   // *** Output declaration for 'p'
	output[2*`width-1:0] p;
	// *** Register declarations for p
	//reg [`ctrwidth:0] 	 ctr;
	//how to initialize wire to 0 !!!!!!!!!!!!!!!!
	wire [2*`width-1:0]	p;
	wire [`width2:0] 	b;
	wire [2*`width-1:0]	t1,t2,t3,t4;
	
	
	boothenc u0 (
		 // Outputs
		 .c (t1),
		 // Inputs
		 .a (x), 
		 .b ({y[1:0],1'b0})
		 ) ;
	//assign p = t1;	
	boothenc u1 (
		 // Outputs
		 .c (t2),
		 // Inputs
		 .a (x), 
		 .b (y[3:1])
		 ) ;
	//assign p = t1 + t2;
	boothenc u2 (
		 // Outputs
		 .c (t3),
		 // Inputs
		 .a (x), 
		 .b (y[5:3])
		 ) ;
	boothenc u3 (
		 // Outputs
		 .c (t4),
		 // Inputs
		 .a (x), 
		 .b (y[7:5])
		 ) ;
	assign p = t1+(t2<<2)+(t3<<4)+(t4<<6);
	
endmodule

//always @(x or y) begin
