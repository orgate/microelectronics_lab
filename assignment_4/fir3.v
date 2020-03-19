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

module fir(
			clk,
			reset,
			inp,
			outp
		  );
	input			reset,clk;
	input	[7:0]	inp;
	output	[7:0]	outp;
	reg		[7:0]	outp;
	reg		[7:0]	inp_list[13:0];
	wire	[15:0]	PA[13:0];
	reg		[7:0]	h[13:0];
	reg		[19:0]	outp_temp;

	always @ (posedge clk, posedge reset) begin

		h[0] <=   8'b00000000;
		h[1] <=   8'b11111011;
		h[2] <=   8'b11111011;
		h[3] <=   8'b11111111;
		h[4] <=   8'b00001010;
		h[5] <=   8'b00011001;
		h[6] <=   8'b00100100;
		h[7] <=   8'b00100100;
		h[8] <=   8'b00011001;
		h[9] <=   8'b00001010;
		h[10] <=  8'b11111111;
		h[11] <=  8'b11111011;
		h[12] <=  8'b11111011;
		h[13] <=  8'b00000000;

/*
	parameter h0 =   8'b00000000;
	parameter h1 =   8'b11111011; 
	parameter h2 =   8'b11111011;
	parameter h3 =   8'b11111111; 
	parameter h4 =   8'b00001010;
	parameter h5 =   8'b00011001;
	parameter h6 =   8'b00100100;
	parameter h7 =   8'b00100100;
	parameter h8 =   8'b00011001;
	parameter h9 =   8'b00001010;
	parameter h10 =  8'b11111111;
	parameter h11 =  8'b11111011;
	parameter h12 =  8'b11111011;
	parameter h13 =  8'b00000000;
*/
	end

/* renewed


binary rep is 00000000
binary rep is 11111011
binary rep is 11111011
binary rep is 11111111
binary rep is 00001010
binary rep is 00011001
binary rep is 00100100
binary rep is 00100100
binary rep is 00011001
binary rep is 00001010
binary rep is 11111111
binary rep is 11111011
binary rep is 11111011
binary rep is 00000000



binary rep is 11
binary rep is 11
binary rep is -100
binary rep is -1000
binary rep is 0
binary rep is 11001
binary rep is 101111
binary rep is 101111
binary rep is 11001
binary rep is 0
binary rep is -1000
binary rep is -100
binary rep is 11
binary rep is 11


binary rep is 0
binary rep is -101
binary rep is -101
binary rep is -1
binary rep is 1010
binary rep is 11001
binary rep is 100100
binary rep is 100100
binary rep is 11001
binary rep is 1010
binary rep is -1
binary rep is -101
binary rep is -101
binary rep is 0



binary rep is -1	
binary rep is 10
binary rep is 10
binary rep is -11
binary rep is -101
binary rep is 1001
binary rep is 11100
binary rep is 11100
binary rep is 1001
binary rep is -101
binary rep is -11
binary rep is 10
binary rep is 10
binary rep is -1

*/

/*
	h[0] =   11111110;
	h[1] =   00000100;
	h[2] =   00000101;
	h[3] =   11111010;
	h[4] =   11110110;
	h[5] =   00010010;
	h[6] =   00111001;
	h[7] =   00111001;
	h[8] =   00010010;
	h[9] =   11110110;
	h[10] =  11111010;
	h[11] =  00000101;
	h[12] =  00000100;
	h[13] =  11111110;
*/



/*	always @ (clk or reset or inp or outp) begin
	if (reset)begin
		j <= 0;
		k <= j;
	end else begin
		k <= j;
		j <= j+1;
	end
	end
*/
	always @ (posedge clk, posedge reset) begin
	if (reset) begin
		inp_list[13] <= 0;
		inp_list[12] <= 0;
		inp_list[11] <= 0;
		inp_list[10] <= 0;
		inp_list[9] <= 0;
		inp_list[8] <= 0;
		inp_list[7] <= 0;
		inp_list[6] <= 0;
		inp_list[5] <= 0;
		inp_list[4] <= 0;
		inp_list[3] <= 0;
		inp_list[2] <= 0;
		inp_list[1] <= 0;
		inp_list[0] <= 0;


/*		for (i=0; i<256; i=i+1)
    		begin //mult
				inp_list[i] = 0;
    		end
*/	
	end else begin
//		inp_list[k] = inp;

		inp_list[13] <= inp_list[12];
		inp_list[12] <= inp_list[11];
		inp_list[11] <= inp_list[10];
		inp_list[10] <= inp_list[9];
		inp_list[9] <= inp_list[8];
		inp_list[8] <= inp_list[7];
		inp_list[7] <= inp_list[6];
		inp_list[6] <= inp_list[5];
		inp_list[5] <= inp_list[4];
		inp_list[4] <= inp_list[3];
		inp_list[3] <= inp_list[2];
		inp_list[2] <= inp_list[1];
		inp_list[1] <= inp_list[0];
		inp_list[0] <= inp;

	end
	end

//	always @ (clk or reset or inp or outp) begin
/*	if (reset) begin
		outp <= 0; */
/*		for (i=0; i<14; i=i+1)
			begin
				PA[i] = 0;
			end
*/
//	end else begin

	booth_mult PA0(PA[0],inp_list[0],h[0]);		
	booth_mult PA1(PA[1],inp_list[1],h[1]);		
	booth_mult PA2(PA[2],inp_list[2],h[2]);		
	booth_mult PA3(PA[3],inp_list[3],h[3]);		
	booth_mult PA4(PA[4],inp_list[4],h[4]);		
	booth_mult PA5(PA[5],inp_list[5],h[5]);		
	booth_mult PA6(PA[6],inp_list[6],h[6]);		
	booth_mult PA7(PA[7],inp_list[7],h[7]);		
	booth_mult PA8(PA[8],inp_list[8],h[8]);		
	booth_mult PA9(PA[9],inp_list[9],h[9]);		
	booth_mult PAA(PA[10],inp_list[10],h[10]);		
	booth_mult PAB(PA[11],inp_list[11],h[11]);		
	booth_mult PAC(PA[12],inp_list[12],h[12]);		
	booth_mult PAD(PA[13],inp_list[13],h[13]);		



/*		if (k<14) begin
//			generate
			for (i=0; i<=k; i=i+1)
				begin
					booth_mult pa(PA[i],inp_list[k-i],h[i]);
				end
//			endgenerate

		end else begin
//			generate
			for (i=0; i<14; i=i+1)
				begin
					booth_mult pa(PA[i],inp_list[k-i],h[i]);		
				end
//			endgenerate
		end
*/
/*
		booth_mult PA1(PA[1],inp_list[1-k],h[14+k-1]);		
		booth_mult PA2(PA[2],inp_list[2-k],h[14+k-2]);		
		booth_mult PA3(PA[3],inp_list[3-k],h[14+k-3]);		
		booth_mult PA4(PA[4],inp_list[4-k],h[14+k-4]);		
		booth_mult PA5(PA[5],inp_list[5-k],h[14+k-5]);		
		booth_mult PA6(PA[6],inp_list[6-k],h[14+k-6]);		
		booth_mult PA7(PA[7],inp_list[7-k],h[14+k-7]);		
		booth_mult PA8(PA[8],inp_list[8-k],h[14+k-8]);		
		booth_mult PA9(PA[9],inp_list[9-k],h[14+k-9]);		
		booth_mult PAA(PA[10],inp_list[10-k],h[14+k-10]);		
		booth_mult PAB(PA[11],inp_list[11-k],h[14+k-11]);		
		booth_mult PAC(PA[12],inp_list[12-k],h[14+k-12]);		
		booth_mult PAD(PA[13],inp_list[13-k],h[14+k-13]);		
*/

		always @ (posedge clk, posedge reset) begin
		if (reset) begin
			outp <= 0;
		end else begin
             outp_temp <= ({{4{PA[0][15]}},PA[0]}+{{4{PA[1][15]}},PA[1]}+{{4{PA[2][15]}},PA[2]}+{{4{PA[3][15]}},PA[3]}+{{4{PA[4][15]}},PA[4]}+{{4{PA[5][15]}},PA[5]}+{{4{PA[6][15]}},PA[6]}+{{4{PA[7][15]}},PA[7]}+{{4{PA[8][15]}},PA[8]}+{{4{PA[9][15]}},PA[9]}+{{4{PA[10][15]}},PA[10]}+{{4{PA[11][15]}},PA[11]}+{{4{PA[12][15]}},PA[12]}+{{4{PA[13][15]}},PA[13]});

/*			outp_temp <= (PA[0] + PA[1] + PA[2] + PA[3] + 
						  PA[4] + PA[5] + PA[6] + PA[7] + 
						  PA[8] + PA[9] + PA[10] + PA[11] + 
					 	  PA[12] + PA[13]);
*/
//			outp <= outp_temp[19:12];
			outp <= outp_temp[14:7];

		end
		end

//	inp_list[k] <= inp;

//	for (l=0; l<=k; l=l+1)
//		begin:

endmodule
/*
module fir_elem(


				);

	booth_mult fir_elem0(outp,inp,h);
*/
