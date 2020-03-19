`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:26 04/09/2014 
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
module micro(
    input clk,
	 output done
    );
	 wire[7:0] data_addr,data;
	 wire memwrite;
	 //wire [35 : 0] CONTROL;
	 /*dmem data_RAM (
		  .clka(clk), // input clka
		  .wea(memwrite), // input [0 : 0] wea
		  .addra(data_addr), // input [9 : 0] addra
		  .dina(data), // input [7 : 0] dina
		  .douta() // output [7 : 0] douta
		);*/
	 
	 control_unit c1(clk,data_addr,data,memwrite,done);
	 
	  
	  //icon icon1 (.CONTROL0(CONTROL)); 
	  //ila ila1 (.CLK(clk), .CONTROL(CONTROL), .TRIG0(data));

endmodule
