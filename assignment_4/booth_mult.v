module booth_encoder (
	//	Outputs
	PP,
	// 	Input
	A, B_segment
	);
	input 	[7:0] 	A;
	input 	[2:0] 	B_segment;
	output	[15:0]	PP;
	reg 	[15:0]	PP;
	reg 	[15:0]	A_extended;

	always @ (A or B_segment) begin
		A_extended = {{8{A[7]}},A};	
		case (B_segment)
			3'b000,3'b111: 	PP<= 0;
			3'b001,3'b010: 	PP<= A_extended;
			3'b101,3'b110: 	PP<= (-A_extended);
			3'b011:		PP<= (A_extended<<1);
			3'b100:		PP<= (-A_extended<<1);
		endcase
	end
endmodule

module booth_mult(
	//	Outputs
	p,
	//	Inputs
	a, b
	);
	input 	[7:0]	a,b;
	output 	[15:0]	p;
	reg 	[15:0]	p;
	wire	[15:0]	PP1,PP2,PP3,PP4;
	booth_encoder booth1(PP1,a,{b[1],b[0],1'b0});
	booth_encoder booth2(PP2,a,{b[3],b[2],b[1]});
	booth_encoder booth3(PP3,a,{b[5],b[4],b[3]});
	booth_encoder booth4(PP4,a,{b[7],b[6],b[5]});	
	always @ (PP1 or PP2 or PP3 or PP4) begin
		p = PP1 + (PP2<<2) + (PP3<<4) + (PP4<<6);
	end
endmodule
