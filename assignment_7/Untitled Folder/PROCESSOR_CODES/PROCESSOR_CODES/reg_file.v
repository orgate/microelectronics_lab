
module reg_file(
	 input clk,
	 input[2:0] sr1,
	 input[2:0] sr2,
	 input[2:0] srin,
	 input[7:0] rin,
	 input regwrite,
	 output[7:0] r1,
	 output[7:0] r2
    );
	 wire [35 : 0] CONTROL1,CONTROL2,CONTROL3;
	 reg [7:0] r[7:0]; 
	 	 
	 initial begin
	     $readmemb("reg.list", r);
	 end
	 
	 always @(posedge clk)
	 begin
		if(regwrite && srin!=0)
			r[srin]<=rin;
	 end
	 
	 assign r1 = r[sr1];
	 assign r2 = r[sr2];
	 
	 icon icon1 (.CONTROL0(CONTROL1)); 
	   ila ila1 (.CLK(clk), .CONTROL(CONTROL1), .TRIG0(r[1]),.TRIG1(r[2]),.TRIG2(r[3]),.TRIG3(r[5]),.TRIG4(r[6]),.TRIG5(r[7]));
	  

endmodule
