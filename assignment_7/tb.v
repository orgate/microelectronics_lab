
module top_test;

	wire [1:0] t_out; // Top’s signals
	reg [3:0] t_in;
	reg clk;

	top inst (t_out,t_in,clk); // Top’s instance

	initial begin // Generate clock
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin // Generate remaining inputs
		$monitor($time, " %b -> %b", t_in, t_out);
		#5 t_in = 4'b0101;
		#20 t_in = 4'b1110;
		#20 t_in[0] = 1;
		#300 $finish;
	end

endmodule
