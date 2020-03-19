`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:38 02/17/2014 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define width 8
module top(output [2*`width-1:0] product);

wire [2*`width-1:0] pa;
wire [`width-1:0] a,b;
// Instantiate your module here
booth_mult dut(.a(a),
					.b(b),
					.pa(pa)
					);  

assign product = pa;
wire [35:0] CONTROL0;

icon icon1 (
    .CONTROL0(CONTROL0) // INOUT BUS [35:0]
);

vio vio1 (
    .CONTROL(CONTROL0), // INOUT BUS [35:0]
    .ASYNC_IN(pa), // IN BUS [15:0]
    .ASYNC_OUT({a,b}) // OUT BUS [15:0]
);
endmodule
