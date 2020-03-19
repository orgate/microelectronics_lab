`define width 8

module booth_sub (a,b,p);

input [`width-1:0] a;
input [2:0] b;
output [2*`width-1:0]  p;
reg [2*`width-1:0]  p;
reg  [2*`width-1:0] multiplicand;



always @ (a or b) begin
multiplicand = {{`width{a[`width-1]}}, a}; // sign-extend
case (b)
	0: p = 0;
	1: p = multiplicand;
	2: p = multiplicand; 
	3: p = multiplicand<<1;
	4: p = -(multiplicand<<1);
	5: p = -multiplicand;
	6: p = -multiplicand;
	7: p = 0;
endcase
end
endmodule

module booth_mult(a,b,p);

input [`width-1:0] a;
input [`width-1:0] b;
output [2*`width-1:0]  p;
reg [2*`width-1:0]  p;
wire [2*`width-1:0] p1,p2,p3,p4;

booth_sub b1 (a, {b[1],b[0],1'b0}, p1);
booth_sub b2 (a, {b[3],b[2],b[1]}, p2);
booth_sub b3 (a, {b[5],b[4],b[3]}, p3);
booth_sub b4 (a, {b[7],b[6],b[5]}, p4);

always @ (p1 or p2 or p3 or p4)  begin
//multiplicand <= {{`width{a[`width-1]}}, a}; // sign-extend
p = p1+(p2<<2)+(p3<<4)+(p4<<6);
end

endmodule


 
  


