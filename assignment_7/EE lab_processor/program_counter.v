
module program_counter(
    input clk,
    input [7:0] jmpadd,
    input jump,
    input branch,
    output [7:0] prog_counter
    );
	 
	 reg[7:0] pc;
	 initial begin
		  pc<=0;
	 end
	 
	 
	 always @(posedge clk)
	 begin
		if(branch)	pc<=pc+jmpadd;
		else if(jump) pc<=jmpadd;
		else pc<=pc+1;
	 end
	 
	 assign prog_counter=pc;

endmodule
