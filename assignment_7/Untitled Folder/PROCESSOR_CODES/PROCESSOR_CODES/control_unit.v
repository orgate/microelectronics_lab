
module control_unit(
    	 input clk,
	 output[7:0] data_addr,
	 output[7:0] data,
	 output reg memwrite,
	 output reg done
    );
    
      wire [15:0] inst;
      wire [7:0] a,b;
      wire [7:0] rin,r1,r2;
      wire [7:0] pc;
      reg regwrite,branch,jump,alusrc,pc_inc;
	 reg [9:0] imm_data;
	 
	 wire[3:0] opcode;
	 wire[5:0] imm;
	 wire[7:0] jmpadd;
	 wire[2:0] sr1,sr2,srin,func;
	 
	 assign opcode=inst[15:12];
	 assign sr1=inst[8:6];
	 assign sr2=inst[5:3];
	 
	 assign func=alusrc?0:inst[2:0];
	 assign imm={inst[11:9],inst[2:0]};
	 assign jmpadd=(branch?imm:inst[6:0])<<1;
	 
	 assign srin=alusrc?sr2:inst[11:9];
	 
	 assign data_addr=r1 + imm;
	 assign a=r1;
	 assign b = alusrc?imm:r2;
	 
	 parameter [1:0]
		OPFETCH_EXEC = 'd0,
		PC_WR_BACK = 'd1,
		END_EX = 'd2;

	 reg[1:0] state=0;
	 
	 parameter [3:0]
		ALU_REG = 'd0,
		JUMP_INST = 'd2,
		ADD_IMME  = 'd4,
		BRANCH_INST  = 'd8,	
		END_EXEC= 'd9,
		LOAD_W  = 'd11,
		STORE_W  = 'd15,
		READ_MEM = 'd13;

	
	 always @(posedge clk)
	 begin
	 case(state)
	 OPFETCH_EXEC: begin
		state <= PC_WR_BACK;
		done <=0;
		branch<=0;
		jump<=0;
		pc_inc <= 0;
		case (opcode)
			ALU_REG: begin
				alusrc <= 0;
				regwrite <= 1;
			end
			
			JUMP_INST: begin	
				jump<=1;
			end
			
			ADD_IMME: begin
				alusrc <= 1;
				regwrite <= 1;
			end
			
			BRANCH_INST: begin
				if(r1==r2)
				begin
					branch<=1;
				end
			end

			END_EXEC: begin	
				state <= END_EX;
			end
			
			LOAD_W: begin
				regwrite<=1;
			end
			STORE_W: begin
				memwrite<=1;
				imm_data <= {4'b0000,inst[11:9],ins[2:0]};
			end
			READ_MEM: begin
			   memwrite <= 0;
				imm_data <= inst[9:0];
			end

		   default: begin
				state <= END_EX;
	      end
		endcase
	 end
	 
	 
	 PC_WR_BACK: begin
		state <= OPFETCH_EXEC;
		pc_inc <= 1;
		regwrite<=0;
		memwrite<=0;
	 end

	 END_EX: begin
		regwrite<=0;
		memwrite<=0;
		branch<=0;
		jump<=0;
		pc_inc <= 0;
		done <=1;
	 end
	 default: begin
		state <= END_EX;
	 end
	 endcase
	 end
	 
	 alu a1(a,b,func,rin);
	 inst_memory i1(pc,inst);

	 reg_file re1(.clk(clk),.sr1(sr1),.sr2(sr2),.srin(srin),.rin(rin),.regwrite(regwrite),.r1(r1),.r2(r2));

	 program_counter p1(pc_inc,jmpadd,jump,branch,pc);

	 dmem data_RAM (
		  .clka(clk), // input clka
		  .wea(memwrite), // input [0 : 0] wea
		  .addra(imm_data), // input [9 : 0] addra
		  .dina(r2), // input [7 : 0] dina
		  .douta(data) // output [7 : 0] douta
		);
		
		

endmodule
