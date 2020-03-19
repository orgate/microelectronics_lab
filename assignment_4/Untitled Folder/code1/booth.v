//Booth encoder module

 `timescale 1ns / 1ps
 `define width 8
module Booth_Encoder(a, b, p);
	input [`width-1:0] a;
	input [2:0] b;
	output [15:0] p;
reg [`width-1:0]acom;
	reg  [15:0] mult;
reg [15:0] p;
always@(b) begin
mult = {{`width{a[`width-1]}},a};
case(b)
 0: p = 0 ; 
//p={{`width{a[`width-1]}},a}; // sign extended a


 1: p = mult ; 
//p={{`width{a[`width-1]}},a}; // sign extended a


 2: p = mult ; 
//p={{`width{a[`width-1]}},a};


 3: p = (mult<<1) ; 
//p={{`width{a[`width-1]}},a};
//p=p<<1;


 4: p = -(mult<<1) ; 
//acom=-a+1;
//p={{`width{acom[`width-1]}},acom};

// p+=1;
//p=p<<1;

 5: p = -mult ; 
//acom=-a+1;
//p={{`width{acom[`width-1]}},acom};
// p+=1;


 6: p = -mult ; 
//acom=-a+1;
//p={{`width{acom[`width-1]}},acom};
//p+=1;

 7: p = 0 ;
//p={{`width{a[`width-1]}},a}; // sign extended a


default:p=0;
endcase
end
endmodule
//Booth multiplier module
	`timescale 1ns / 1ps
	`define width 8
module Booth_multiplier(a,b,prod);
	input [`width-1:0] a;
	input [`width-1:0] b;
	output [15:0] prod;
wire [15:0] p5,p6,p7,p8,p9;
wire [15:0] prod;
//partial products

 Booth_Encoder U0(a, {b[1:0],1'b0},p5);
 Booth_Encoder U1(a, b[3:1], p6);
 Booth_Encoder U2(a, b[5:3], p7);
 Booth_Encoder U3(a, b[7:5], p8);
 //Booth_Encoder U4(a, {2'b0,b[7]}, p9);
	assign prod = p5+(p6<<2)+(p7<<4)+(p8<<6);

endmodule 

