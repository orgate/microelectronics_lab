module booth(
             // output variables
             ans,
             //inputs
             a,b3
             );
input [7:0] a;
input [2:0] b3;
output [15:0] ans;
//register variables
   reg [15:0] ans,multiplier;
   always @ (a or b3) begin
          multiplier 	<= {{8{a[7]}}, a}; // sign-extend
              case (b3)
       3'b000,3'b111: ans <= 0;
       3'b001,3'b010: ans <= multiplier;
       3'b011: ans <= (multiplier<<1);
       3'b101,3'b110: ans <= (-multiplier);
	3'b100: ans <= (-(multiplier<<1));
	endcase
end
endmodule
module multiplybooth(
      //output
      mul,
      //inputs
      a,b)
      
 input [7:0] a,b;
 output [15:0] mul;
 //for partial products
 wire [15:0] c,d,e,f;
 wire [15:0] mul;
 booth b0(c,a,{b[1],b[0],3b'01);
  booth b1(d,a,{b[3],b[2],b[1]);
   booth b2(e,a,{b[5],b[4],b[3]);
    booth b3(f,a,{b[7],b[6],b[5]);
    always @(c or d or e or f)begin
        mul = c + (d<<2) + (e<<4) + (f<<6)
 end
 end module
 
	

