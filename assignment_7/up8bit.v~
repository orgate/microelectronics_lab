
module micropipeline(clk,rst);

	input clk;
	input rst;
	reg [0:3]PC;
	reg [0:15] imem [0:15];

	//instruction memory
	reg [0:15] IR;

	// instruction register
	reg [0:7] datareg;

	//data register
	reg [0:15] IRW;
	reg [0:7] mem [0:255];
	reg memocheck;
	reg [0:1] current_state; //stages
	reg [0:1] next_state;

	//for keeping track
	reg [0:11] AR;

	//Address register
	reg [0:2] opcode;
	reg [0:3] instruct;
	reg [0:3] RA,RB,rstore;
	reg [0:7] regfile [0:15];

	//16 register(R0-R7)
	reg [0:7] W;

	//temporary register
	reg [0:2] count;
	reg fetch,decode,execute,store;
	reg [0:100]TR;
	reg moveimm,movein,operation,sta,halt,halt1;
	reg loadmemory,memorystore;
	reg load;
	wire carry;
	wire [0:7] temp;
	reg carry1;
	reg [0:7] tink;
	reg car;
	
	initial
	begin
		PC=0;
		TR=0;
		fetch=1;
		decode=0;
		execute=0;
		store=0;
		moveimm=0;
		movein=0;
		operation=0;
		halt=0;
		sta=0;
		loadmemory=1;
		memorystore=1;
		load=0;
		next_state=4'b1000;
		halt1=0;
		IRW=0;
		datareg[0]=0;
		imem[0]={16'b0001000111001111};
		imem[1]={16'b0001001011011000};
		imem[2]={16'b0011000000010010};
		imem[4]={16'b0000000000000000};
		imem[3]={16'b0000000000000000};
		imem[5]={16'b0000000000000000};
		imem[6]={16'b0000000000000000};
		imem[7]={16'b0000000000000000};
	end

	always@(clk or rst)
	begin
		TR<=TR+1;
		if(rst)
		begin
			PC<=0;
			TR<=0;
			fetch<=1'b1;
			decode<=1'b0;
			execute<=1'b0;
			store<=1'b0;
			sta<=1'b0;
			halt<=1'b0;
		end
		else
		begin
			if(store)
			begin
				if(loadmemory&memorystore)
				begin
					regfile[rstore]<=W;
				end
				if(halt1)
				begin
					fetch<=#1 1'b0;
					decode<=#1 1'b0;
					execute<=#1 1'b0;
					store<=#1 1'b0;
				end
			end
			if(execute)
			begin
				if(halt)
				begin
					halt1<=1'b1;
				end
				if(moveimm)
				begin
					W<=IRW[8:15];
					rstore<=IRW[4:7];
					moveimm<=1'b0;
				end
				if(movein)
				begin
					W<=datareg[IRW[12:15]];
					rstore<=IRW[8:11];
					movein<=1'b0;
				end
				if(operation)
				begin
				case(IRW[4:7])
					4'b0000: begin
						W<=regfile[RA]+regfile[RB];
					end
					4'b0001: begin
						W<=regfile[RA]+regfile[RB]+1;
					end
					4'b0010: begin
						W<=regfile[RA]-regfile[RB]-1;
					end
					4'b0011:begin
						W<=regfile[RA]-regfile[RB];
					end
					4'b0100: begin
						W<=regfile[RA]+1;
					end
					4'b0101: begin
						W<=regfile[RA]-1;
					end
					4'b0110: begin
						W<=regfile[RB];
					end
					4'b1000: begin
						W<=regfile[RA]&regfile[RB];
					end
					4'b1001: begin
						W<=regfile[RA]|regfile[RB];
					end
					4'b1010: begin
						W<=regfile[RA]^regfile[RB];
					end
					4'b1011: begin
						W<=regfile[RA];
					end
//					End
				// has to include ~
				endcase

				// alu operation
				rstore<=4'b0000;
				if(count==2'b00)
					operation<=1'b0;
				end
				if(sta)
				begin
					memorystore<=1'b0;
					mem[IRW[8:15]]<=regfile[4'b0000];
					sta<=1'b0;
				end
				if(load)
				begin
					loadmemory<=1'b0;
					regfile[4'b0000]<=mem[IRW[8:15]];
					load<=1'b0;
				end
				store<=1'b1;
			end
			if(decode)
			begin
				IRW<=IR;
				case(IR[0])
					0:begin
						case(IR[1:3])
							3'b000: begin
								halt<=1'b1;
							end
							3'b001:
							begin
								moveimm<=1'b1;
							end
							//the instruction is mvi
							3'b010: begin
								movein<=1'b1;
							end
							3'b011:begin
								operation<=1;
								RA<=IR[8:11];
								RB<=IR[12:15];
							end
							3'b100:begin
								sta<=1'b1;
							end
							default:begin
							end
						endcase
					end
					1:begin
						load<=1'b1;
					end
				endcase
				execute<=1'b1;
			end
			if(fetch)
			begin
				IR<=imem[PC];
				PC<=PC+1;
				decode<=1'b1;
			end
		end

		if((IRW[4:7]==IR[8:11]|IRW[4:7]==IR[12:15])&IR[1:3]==3'b011)
		begin
			count<=2'b01;
			fetch<=#2 1'b0;
			decode<=#2 1'b0;
		end
		if(count==2'b01)
		begin
			count<=2'b10;
			execute<=1'b0;
		end
		if(count==2'b10)
		begin
			count<=2'b00;
			fetch<=1'b1;
			decode<=1'b1;
		end
	end
endmodule

