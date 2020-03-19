
module inst_memory(
    input [7:0] pc,
    output [15:0] inst
    );
	 reg  [15:0] IMEM[0:255];
	 
	 initial begin
			$readmemb("IMEM.list", IMEM);
	 end
	 
	 assign inst=IMEM[pc];


endmodule
