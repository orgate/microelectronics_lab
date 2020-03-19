module fir_tb();
    
    reg  [7:0] binary_in[0:255];
    reg  [7:0] binary_out[0:255];
    wire [7:0] outp;
    reg  [7:0] inp;
    reg  [7:0] exp_out;
    reg  [7:0] i;
    reg  reset;
    reg  clk;
    
    initial begin
	$dumpfile("fir.vcd");
	$dumpvars(0, fir_tb);
        i  <= 0;
        clk  <= 0;
        reset  <= 1;
        #50 reset <= 0;
	
        $readmemb("input.list", binary_in);
        $readmemb("output.list", binary_out);

	#3000 $finish;
    end
    
    always #5 clk = ~clk;
    
    fir f1(clk,reset,inp,outp);
    
    always @(posedge clk) begin
       if(reset == 0)begin
          inp     <= binary_in[i];
          exp_out <= binary_out[i];
          i       <= i+1;
       end
    end

endmodule

