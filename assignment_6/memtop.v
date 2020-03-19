`timescale 1ns / 1ps
module memtop(
    input clk,
    input reset,
    output done
    );

	wire [7:0] din, dout;
	wire [9:0] addr_in, addr_out;
	wire we;
	
mem_in input_ROM (
  .clka(clk), // input clka
  .addra(addr_in), // input [9 : 0] addra
  .douta(din) // output [7 : 0] douta
);

mem_out output_RAM (
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr_out), // input [9 : 0] addra
  .dina(dout), // input [7 : 0] dina
  .douta() // unconnected - output [7 : 0] douta
);

memtransfer control_FSM (
	.clk(clk),
	.reset(reset),
	.din(din),
	.addr_in(addr_in),
	.addr_out(addr_out),
	.dout(dout),
	.we(we),
	.done(done)
);

endmodule
