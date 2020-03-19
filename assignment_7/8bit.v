

//Main module for processor
module process (
	opcode,
	data,
	clk,
	rst,
	fout);

	input [9:0]opcode;
	input [7:0]data;
	input clk,rst;
	output [7:0]fout;
	wire [7:0]r1,r2,r3,r4,a1,aout,bout,r11,r22,r33,r44;
	wire [2:0]s,d;
	wire [3:0]alf,de;
	wire g;

	control con(opcode,clk,alf,de,s,d,g);
	muxl mu1(r11,r22,r33,r44,data,s,clk,a1);
	alu al1(r1,a1,alf,clk,g,aout);
	bus bu1(aout,clk,bout);
	demux dd1(bout,d,clk,r1,r2,r3,r4);
	regs reg1(r1,rst,clk,r11);
	regs reg2(r2,rst,clk,r22);
	regs reg3(r3,rst,clk,r33);
	regs reg4(r4,rst,clk,r44);

	assign fout=aout;

endmodule



//Submodule for control unit
module control ( 
	opcode,
	clk,
	alufn,
	dd,
	sou,
	des,
	r);

	input [15:0]opcode;
	input clk;
	output reg[2:0]alufn,dd;
	output reg[2:0]sou,des;
	output reg r;
	always@(posedge clk)
	begin
		dd=opcode[15:12];
		sou=opcode[5:3];
		des=opcode[2:0];
		case(dd)

			0:begin
				r=1'b1;
				alufn=4'b0000;
			end

			1:begin
				r=1'b0;
				alufn=4'b0000;
			end

			2:begin
				r=1'b0;
				alufn=4'b0001;
			end

			3:begin
				r=1'b0;
				alufn=4'b0010;
			end

			4:begin
				r=1'b0;
				alufn=4'b0011;
			end

			5:begin
				r=1'b0;
				alufn=4'b0100;
			end

			6:begin
				r=1'b0;
				alufn=4'b0101;
			end

			7:begin
				r=1'b0;
				alufn=4'b0110;
			end

			8:begin
				r=1'b0;
				alufn=4'b0111;
			end	

			9:begin
				r=1'b0;
				alufn=4'b1000;
			end

			10:begin
				r=1'b0;
				alufn=4'b1001;
			end

			11:begin
				r=1'b0;
				alufn=4'b1010;
			end

			12:begin
				r=1'b0;
				alufn=4'b1011;
			end

		endcase

	end
endmodule





//Main module for Arithmetic and Logic Unit
module alu (
	a,
	b,
	ch,
	clk,
	rst,
	out);

	input [7:0]a,b;
	input clk,rst;
	input[2:0]ch;
	output [7:0]out;
	reg [7:0]out;
	wire [7:0]q;
//	div8 s1(a,b,q);
	always@(posedge clk)
	begin
		if(rst)
		begin
			out=8'b0;
		end
		else if(!rst)
		begin
			case(ch)
				0 : out=a+b;
				2 : out=a-b;
//				2 : out=a*b;
//				3 : out=q;
//				4 : out=~a;
				4 : out=a&b;
				5: out=a|b;
//				7 : out=a^b;
//				8 : out=b<<1;
//				9 : out=b>>1;		
//				10 : out={b[0],b[7:1]};
//				11 : out={b[6:0],b[7]};
			endcase
		end
	end
endmodule







//Sub module for CAS
module cas1 (
	a,
	b,
	c,
	diff,
	brow);

	input a,b,c;
	output diff,brow;

	assign diff=a^b^c;
	assign brow=((~a)&b)|(b&c)|((~a)&c);

endmodule




//Main module for demux
module demux ( 
	busout,
	des,
	clk,
	rea,
	reb,
	rec,
	red);

	input [7:0]busout;
	input clk;
	input[2:0]des;
	output reg[7:0]rea,reb,rec,red;

	always@(posedge clk)
	begin
		case(des)
			0:begin
				rea=8'b0;
				reb=8'b0;
				rec=8'b0;
				red=8'b0;
			end
			1:rea=busout;
			2:reb=busout;
			3:rec=busout;
			4:red=busout;
		endcase
	end
endmodule





//Main module for MUX
module muxl ( 
	rea1,
	reb1,
	rec1,
	red1,
	exin,
	sou,
	clk,
	alin);

	input [7:0]rea1,reb1,rec1,red1,exin;
	input[2:0]sou;
	input clk;
	output reg [7:0]alin;

	always@(posedge clk)
	begin
		case(sou)
			0:alin=8'b0;
			1:alin=rea1;
			2:alin=reb1;
			3:alin=rec1;	
			4:alin=red1;
			5:alin=exin;
		endcase
	end
endmodule





//Main module for bus
module bus ( 
	aluout,
	clk,
	buout);

	input[7:0]aluout;
	input clk;
	output[7:0]buout;
	reg [7:0]buout;

	always@(posedge clk)
	begin
		buout=aluout;
	end
endmodule





//Main module for reg
module regs ( 
	re,
	rst,
	clk,
	re1);

	input [7:0]re;
	input rst,clk;
	output [7:0]re1;
	reg [7:0]re1;

	always@(posedge clk)
	begin
		if(rst)
		begin
			re1=8'b0;
		end
		else
		begin
			re1=re;
		end
	end
endmodule
