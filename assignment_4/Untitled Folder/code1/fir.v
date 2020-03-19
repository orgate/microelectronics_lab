module fir(clk,reset,inp,outp);

input [7:0] inp;
input clk,reset;
output [7:0] outp;

reg [7:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19;
reg [7:0] h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16,h17,h18,h19;
wire [15:0] yy0,yy1,yy2,yy3,yy4,yy5,yy6,yy7,yy8,yy9,yy10,yy11,yy12,yy13,yy14,yy15,yy16,yy17,yy18,yy19;

assign outp = (yy0>>8)+ (yy1>>8)+ (yy2>>8)+ (yy3>>8)+ (yy4>>8)+ (yy5>>8)+ (yy6>>8)+ (yy7>>8)+ (yy8>>8)+ 
					(yy9>>8)+ (yy10>>8)+ (yy11>>8)+ (yy12>>8)+ (yy13>>8)+ (yy14>>8)+ (yy15>>8)+ (yy16>>8)+ (yy17>>8)+ (yy18>>8)+ (yy19>>8);

initial 
begin
h0 <= 8'b00000000;
h1 <= 8'b00000011;
h2 <= 8'b00000010;
h3 <= 8'b11111111;
h4 <= 8'b11111011;
h5 <= 8'b11111001;
h6 <= 8'b11111110;
h7 <= 8'b00001011;
h8 <= 8'b00011010;
h9 <= 8'b00100101;
h10 <= 8'b00100101;
h11 <= 8'b00011010;
h12 <= 8'b00001011;
h13 <= 8'b11111110;
h14 <= 8'b11111001;
h15 <= 8'b11111011;
h16 <= 8'b11111111;
h17 <= 8'b00000010;
h18 <= 8'b00000011;
h19 <= 8'b00000000;
end

always@ (posedge clk , posedge reset)
begin
 if (reset)  
 begin
  x0<=8'b0;
  x1<=8'b0;
  x2<=8'b0;
  x3<=8'b0;
  x4<=8'b0;
  x5<=8'b0;
  x6<=8'b0;
  x7<=8'b0;
  x8<=8'b0;
  x9<=8'b0;
  x10<=8'b0;
  x11<=8'b0;
  x12<=8'b0;
  x13<=8'b0;
  x14<=8'b0;
  x15<=8'b0;
  x16<=8'b0;
  x17<=8'b0;
  x18<=8'b0;
  x19<=8'b0;
  end
  else 
   begin
	 x0<=inp;
	 x1<=x0;
	 x2<=x1;
	 x3<=x2;
	 x4<=x3;
	 x5<=x4;
	 x6<=x5;
	 x7<=x6;
	 x8<=x7;
	 x9<=x8;
	 x10<=x9;
	 x11<=x10;
	 x12<=x11;
	 x13<=x12;
	 x14<=x13;
	 x15<=x14;
	 x16<=x15;
	 x17<=x16;
         x18<=x17;
	 x19<=x18;
	 end
end 

booth_multiplier call1(.a(x0),.b(h0),.result(yy0));
booth_multiplier call2(.a(x1),.b(h1),.result(yy1));
booth_multiplier call3(.a(x2),.b(h2),.result(yy2));
booth_multiplier call4(.a(x3),.b(h3),.result(yy3));
booth_multiplier call5(.a(x4),.b(h4),.result(yy4));
booth_multiplier call6(.a(x5),.b(h5),.result(yy5));

booth_multiplier call7(.a(x6),.b(h6),.result(yy6));
booth_multiplier call8(.a(x7),.b(h7),.result(yy7));
booth_multiplier call9(.a(x8),.b(h8),.result(yy8));
booth_multiplier call10(.a(x9),.b(h9),.result(yy9));
booth_multiplier call11(.a(x10),.b(h10),.result(yy10));
booth_multiplier call12(.a(x11),.b(h11),.result(yy11));

booth_multiplier call13(.a(x12),.b(h12),.result(yy12));
booth_multiplier call14(.a(x13),.b(h13),.result(yy13));
booth_multiplier call15(.a(x14),.b(h14),.result(yy14));
booth_multiplier call16(.a(x15),.b(h15),.result(yy15));
booth_multiplier call17(.a(x16),.b(h16),.result(yy16));
booth_multiplier call18(.a(x17),.b(h17),.result(yy17));
booth_multiplier call19(.a(x18),.b(h18),.result(yy18));
booth_multiplier call20(.a(x19),.b(h19),.result(yy19));


endmodule
