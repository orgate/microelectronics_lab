

module mips (input clk, reset,
	output [15:0] pc,
	input [15:0] instr,
	output memwrite,
	output [15:0] aluout, writedata,
	input [15:0] readdata);

	wire memtoreg, branch,
		alusrc, regdst, regwrite, jump;
	wire [2:0] alucontrol;
controller c(instr[31:26], instr[5:0], zero,
memtoreg, memwrite, pcsrc,
alusrc, regdst, regwrite, jump,
alucontrol);
datapath dp(clk, reset, memtoreg, pcsrc,
alusrc, regdst, regwrite, jump,
alucontrol,
zero, pc, instr,
aluout, writedata, readdata);
endmodule


module controller (input [5:0] op, funct,
input
zero,
output
memtoreg, memwrite,
output
pcsrc, alusrc,
output
regdst, regwrite,
output
jump,
output [2:0] alucontrol);
wire [1:0] aluop;
wire
branch;
maindec md (op, memtoreg, memwrite, branch,
alusrc, regdst, regwrite, jump,
aluop);
aludec ad (funct, aluop, alucontrol);
assign pcsrc ϭ branch & zero;
endmodule



module maindec(input [5:0]
output
output
output
output
output [1:0]
op,
memtoreg, memwrite,
branch, alusrc,
regdst, regwrite,
jump,
aluop);
reg [8:0] controls;
assign {regwrite, regdst, alusrc,
branch, memwrite,
memtoreg, jump, aluop} ϭ controls;
always @ (*)
case(op)
6Јb000000:
6Јb100011:
6Јb101011:
6Јb000100:
6Јb001000:
6Јb000010:
default:
endcase
endmodule
controls
controls
controls
controls
controls
controls
controls
Ͻϭ
Ͻϭ
Ͻϭ
Ͻϭ
Ͻϭ
Ͻϭ
Ͻϭ
9Јb110000010;
9Јb101001000;
9Јb001010000;
9Јb000100001;
9Јb101000000;
9Јb000000100;
9Јbxxxxxxxxx;
//Rtyp
//LW
//SW
//BEQ
//ADDI
//J
//???





module aludec (input library IEEE; use IEEE.STD_LOGIC_1164.all;
[5:0] funct, entity aludec is — — ALU control decoder
input port (funct:
[1:0] aluop, in STD_LOGIC_VECTOR (5 downto 0);
output reg [2:0] alucontrol); aluop:
                             in STD_LOGIC_VECTOR (1 downto 0);
                            alucontrol: out STD_LOGIC_VECTOR (2 downto 0));
                           end;
always @ (*)
case (aluop)
2Јb00: alucontrol Ͻϭ 3Јb010; // add
2Јb01: alucontrol Ͻϭ 3Јb110; // sub
default: case(funct)
// RTYPE
6Јb100000: alucontrol Ͻϭ 3Јb010; //
6Јb100010: alucontrol Ͻϭ 3Јb110; //
6Јb100100: alucontrol Ͻϭ 3Јb000; //
6Јb100101: alucontrol Ͻϭ 3Јb001; //
6Јb101010: alucontrol Ͻϭ 3Јb111; //
default: alucontrol Ͻϭ 3Јbxxx; //
endcase
endcase
endmodule
ADD
SUB
AND
OR
SLT
???






module datapath (input
input
input
input
input
output
output
input
output
input
wire
wire
wire
wire
wire
[4:0]
[31:0]
[31:0]
[31:0]
[31:0]
[2:0]
[31:0]
[31:0]
[31:0]
[31:0]
clk, reset,
memtoreg, pcsrc,
alusrc, regdst,
regwrite, jump,
alucontrol,
zero,
pc,
instr,
aluout, writedata,
readdata);
writereg;
pcnext, pcnextbr, pcplus4, pcbranch;
signimm, signimmsh;
srca, srcb;
result;
// next PC logic
flopr #(32) pcreg(clk, reset, pcnext, pc);
adder
pcadd1 (pc, 32Јb100, pcplus4);
sl2
immsh(signimm, signimmsh);
adder
pcadd2(pcplus4, signimmsh, pcbranch);
mux2 #(32) pcbrmux(pcplus4, pcbranch, pcsrc,
pcnextbr);
mux2 #(32) pcmux(pcnextbr, {pcplus4[31:28],
instr[25:0], 2Јb00},
jump, pcnext);
// register file logic
regfile
rf(clk, regwrite, instr[25:21],
instr[20:16], writereg,
result, srca, writedata);
mux2 #(5)
wrmux(instr[20:16], instr[15:11],
regdst, writereg);
mux2 #(32) resmux(aluout, readdata,
memtoreg, result);
signext
se(instr[15:0], signimm);
// ALU logic
mux2 #(32) srcbmux(writedata, signimm, alusrc,
srcb);
alu
alu(srca, srcb, alucontrol,
aluout, zero);
endmodule



module regfile (input
input
input [4:0]
input [31:0]
output [31:0]
clk,
we3,
ra1, ra2, wa3,
wd3,
rd1, rd2);
reg [31:0] rf[31:0];
//
//
//
//
three ported register file
read two ports combinationally
write third port on rising edge of clock
register 0 hardwired to 0
always @ (posedge clk)
if (we3) rf[wa3] Ͻϭ wd3;
assign rd1 ϭ (ra1 ! ϭ 0) ? rf[ra1] : 0;
assign rd2 ϭ (ra2 ! ϭ 0) ? rf[ra2] : 0;
endmodule





module adder (input [31:0] a, b, 
output [31:0] y); 


assign y ϭ a ϩ b;
endmodule



