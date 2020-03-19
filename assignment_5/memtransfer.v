`timescale 1ns / 1ps

module memtransfer(
    input clk,
    input reset,
    input [7:0] din,
	 output reg [9:0] addr_in,
    output [7:0] dout,
	 output reg [9:0] addr_out,
//    output re1, // Optional if you want to have separate read enable
    output reg we,
	 output reg done   // Goes high to signify completion of the operation
    );

	parameter [1:0]
		st_IDLE = 'd0,
		st_RD1  = 'd1,
		st_RDWR = 'd2;

	reg [1:0] state;

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			state <= st_IDLE;
			addr_in <= 'd0;
			addr_out <= 'd0;
			done <= 'b0;
			we <= 'b0;
		end else begin
			case (state) 
				st_IDLE: begin
					addr_in <= 'd0;
					addr_out <= 'd0;
					done <= 'b0;
					we <= 'b0;
					state <= st_RD1;
				end
				st_RD1: begin
					addr_in <= 'd1; // will take effect next cycle
					state <= st_RDWR;
					addr_out <= 'd0; // already 0, but confirm as per timing diagram
					we <= 'b1;       // we will write in the next cycle
				end
				st_RDWR: begin
					if (addr_out == 'd1023) begin // finished writing all data
						state <= st_IDLE;
						we <= 'b0;
						done <= 'b1;   // will be high in next one cycle alone
					end else begin
						if (addr_in == 'd1023) // not really necessary in this case
							addr_in <= 'd0;
						else 
							addr_in <= addr_in + 'd1; // next read address
						state <= st_RDWR;      // remain in same state
						addr_out <= addr_out + 'd1;  // next addr to write
						we <= 'b1;             // keep writing
					end
				end
				default: begin
					we <= 'd0; // don't write unless you want to
					state <= st_IDLE; // return to IDLE state if unknown
				end
			endcase
		end
	end

	// always perform computation on the input data: continuous assign
	assign dout = din + 'd42;  // add 42 to the input value.  Just for example.

endmodule
