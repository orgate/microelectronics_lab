
module alu(
    input[7:0] a,
    input[7:0] b,
	 input[2:0] func,
    output reg[7:0] c
    );
	always@(*)
	begin
		case (func)
			3'd0: c=a+b;
			3'd2: c=a-b;
			3'd4: c=a&b;
			3'd5: c=a|b;
			default: c=0;
		endcase
	end

endmodule
