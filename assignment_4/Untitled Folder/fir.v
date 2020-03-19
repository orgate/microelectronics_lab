`define width 8
module booth_enc(
                  //Output
                  e,
                  //Inputs
                  a, b_seg
                  );
   input [`width-1:0]         a;
   input [2:0]                b_seg; 
   output [2*`width-1:0]      e;
   
   reg [2*`width-1:0]        e;
   always @ (a, b_seg)
     begin
        
        case(b_seg)
          3'b001:
            assign e = {{`width{a[`width-1]}}, a};
          3'b010:
            assign e = {{`width{a[`width-1]}}, a};
          3'b011:
            assign e = {{`width{a[`width-1]}}, a} << 1;
          3'b100:
            assign e = ~({{`width{a[`width-1]}}, a} << 1) + 1;
          3'b101:
            assign e = ~({{`width{a[`width-1]}}, a}) + 1;
          3'b110:
            assign e = ~({{`width{a[`width-1]}}, a}) + 1;
          default:
            assign e = 0;
        endcase // case (b_seg)
    
     end // always @ (a, b_seg)
   
endmodule // booth_enc


module booth_mult(
                  //Output
                  p,
                  //Inputs
                  a, b
                  );
   input [`width-1:0]       a, b;
   output [2*`width-1:0]    p; 

   wire [2*`width-1:0]        c0, c1, c2, c3;
   wire [2*`width-1:0]         p;

   
   booth_enc e0(
                c0,
                a,
                {b[1:0],1'b0}
                );
   booth_enc e1(
                c1,
                a,
                b[3:1]
                );
   booth_enc e2(
                c2,
                a,
                b[5:3]
                );
   booth_enc e3(
                c3,
                a,
                b[7:5]
                );
   assign p = c0 + (c1<<2) + (c2<<4) + (c3<<6);
   
endmodule // booth_mult


module fir(
           //Outputs
           outp,
           //Inputs
           clk, reset, inp);
   input [`width-1:0]      inp;
   input                   clk, reset;
   output [`width-1:0]     outp;

   reg [`width-1:0]        outp;
   reg [`width-1:0]        holderBefore[15:0];
   wire [2*`width-1:0]     sums[15:0];
   reg [19:0]              total;
   
   
   parameter coeffs0=8'b00000010;
   parameter coeffs1=8'b11111111;
   parameter coeffs2=8'b11111100;
   parameter coeffs3=8'b11111010;
   parameter coeffs4=8'b11111110;
   parameter coeffs5=8'b00001010;
   parameter coeffs6=8'b00011010;
   parameter coeffs7=8'b00100101;
   parameter coeffs8=8'b00100101;
   parameter coeffs9=8'b00011010;
   parameter coeffs10=8'b00001010;
   parameter coeffs11=8'b11111110;
   parameter coeffs12=8'b11111010;
   parameter coeffs13=8'b11111100;
   parameter coeffs14=8'b11111111;
   parameter coeffs15=8'b00000010;
   

   booth_mult mult0(sums[0], coeffs0, holderBefore[0]);
   booth_mult mult1(sums[1], coeffs1, holderBefore[1]);
   booth_mult mult2(sums[2], coeffs2, holderBefore[2]);
   booth_mult mult3(sums[3], coeffs3, holderBefore[3]);
   booth_mult mult4(sums[4], coeffs4, holderBefore[4]);
   booth_mult mult5(sums[5], coeffs5, holderBefore[5]);
   booth_mult mult6(sums[6], coeffs6, holderBefore[6]);
   booth_mult mult7(sums[7], coeffs7, holderBefore[7]);
   booth_mult mult8(sums[8], coeffs8, holderBefore[8]);
   booth_mult mult9(sums[9], coeffs9, holderBefore[9]);
   booth_mult mult10(sums[10], coeffs10, holderBefore[10]);
   booth_mult mult11(sums[11], coeffs11, holderBefore[11]);
   booth_mult mult12(sums[12], coeffs12, holderBefore[12]);
   booth_mult mult13(sums[13], coeffs13, holderBefore[13]);
   booth_mult mult14(sums[14], coeffs14, holderBefore[14]);
   booth_mult mult15(sums[15], coeffs15, holderBefore[15]);
   
   always @ (posedge clk, posedge reset)
     begin
        if(reset)
          begin
             holderBefore[0] <= 0;
             holderBefore[1] <= 0;
             holderBefore[2] <= 0;
             holderBefore[3] <= 0;
             holderBefore[4] <= 0;
             holderBefore[5] <= 0;
             holderBefore[6] <= 0;
             holderBefore[7] <= 0;
             holderBefore[8] <= 0;
             holderBefore[9] <= 0;
             holderBefore[10] <= 0;
             holderBefore[11] <= 0;
             holderBefore[12] <= 0;
             holderBefore[13] <= 0;
             holderBefore[14] <= 0;
             holderBefore[15] <= 0;
             outp <= 0;
          end // if (reset)
        else
          begin
             holderBefore[0] <= inp;
             holderBefore[1] <= holderBefore[0];
             holderBefore[2] <= holderBefore[1];
             holderBefore[3] <= holderBefore[2];
             holderBefore[4] <= holderBefore[3];
             holderBefore[5] <= holderBefore[4];
             holderBefore[6] <= holderBefore[5];
             holderBefore[7] <= holderBefore[6];
             holderBefore[8] <= holderBefore[7];
             holderBefore[9] <= holderBefore[8];
             holderBefore[10] <= holderBefore[9];
             holderBefore[11] <= holderBefore[10];
             holderBefore[12] <= holderBefore[11];
             holderBefore[13] <= holderBefore[12];
             holderBefore[14] <= holderBefore[13];
             holderBefore[15] <= holderBefore[14];

             total <= ({{4{sums[0][15]}},sums[0]}+{{4{sums[1][15]}},sums[1]}+{{4{sums[2][15]}},sums[2]}+{{4{sums[3][15]}},sums[3]}+{{4{sums[4][15]}},sums[4]}+{{4{sums[5][15]}},sums[5]}+{{4{sums[6][15]}},sums[6]}+{{4{sums[7][15]}},sums[7]}+{{4{sums[8][15]}},sums[8]}+{{4{sums[9][15]}},sums[9]}+{{4{sums[10][15]}},sums[10]}+{{4{sums[11][15]}},sums[11]}+{{4{sums[12][15]}},sums[12]}+{{4{sums[13][15]}},sums[13]}+{{4{sums[14][15]}},sums[14]}+{{4{sums[15][15]}},sums[15]});
             outp <= total[14:7]; //sign extension and add all the terms of convolution.
             
           end // else: !if(reset)
     end // always @ (posedge clk, posedge reset)
endmodule // fir

             
             
   





