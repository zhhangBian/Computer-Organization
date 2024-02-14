`timescale 1ns / 1ps

module mips(
    input clk,
    input reset,
    output [31:0] pc_now,
    output [31:0] str_now,
    output if_reg,
    output if_mem
    );

wire [31:0] inStr;
wire [5:0] func = inStr[5:0];
wire [4:0] shamt = inStr[10:6];
wire [4:0] rd = inStr[15:11];
wire [4:0] rt = inStr[20:16];
wire [4:0] rs = inStr[25:21];
wire [5:0] op = inStr[31:26];
wire [15:0] offest = inStr[15:0];
wire [25:0] imm = inStr[25:0];

assign pc_now = PC;
assign str_now = inStr;
assign if_reg = regWrite;
assign if_mem = memWrite;

//control
wire regWrite, regDst, regRa, regSrc, regPc;
wire aluSrc, extendType, shiftSrc;
wire memWrite, jump, jumpSrc;
wire if_byte, if_half;
wire [3:0] aluControl;

//IFU
wire [31:0] PC;
wire [31:0] PC_next;

//GRF
wire [4:0] regAddress;
wire [31:0] rd1;
wire [31:0] rd2;
assign regAddress = (regRa == 1) ? 5'b11111 : (regDst == 1) ? rd : rt;

//extend & shift
wire [31:0] extend;
wire [4:0] shift;
assign extend = (extendType==1) ? {16'b000000,offest} : 
                {{16{offest[15]}},offest};
assign shift = (shiftSrc==1) ? shamt : 
                rd1[4:0];

//ALU
wire [31:0] aluInA;
wire [31:0] aluInB;
wire [31:0] aluResult;
wire aluZero;
assign aluInA = rd1;
assign aluInB = (aluSrc==1) ? extend :rd2;

//NPC
wire [31:0] PCadd4;
wire if_branch;

//DM
wire [31:0] RD;
wire [31:0] regData;
assign regData =(regPc==1) ? PCadd4 :
                (regSrc==1) ? RD : 
                aluResult;

IFU ifu(
  .clk(clk),
  .reset(reset),
  .PC_next(PC_next),
  //output
  .inStr(inStr),
  .pc(PC)
);

NPC npc(
  .PC(PC),
  .imm(imm),
  .offest(offest),
  .if_branch(if_branch),
  .if_jump(jump),
  .rs(rd1),
  .jumpSrc(jumpSrc),
  //output
  .PC_next(PC_next),
  .PCadd4(PCadd4)
);

GRF grf(
  .clk(clk),
  .reset(reset),
  .WE(regWrite),
  .A1(rs),
  .A2(rt),
  .A3(regAddress),
  .WD(regData),
  .PC(PC),
  //output
  .RD1(rd1),
  .RD2(rd2)
);

alu alu(
  .inA(aluInA),
  .inB(aluInB),
  .op(aluControl),
  .shift(shift),
  //output
  .result(aluResult),
  .aluZero(aluZero)
);

DM dm(
  .Address(aluResult),
  .data(rd2),
  .WE(memWrite),
  .clk(clk),
  .reset(reset),
  .if_byte(if_byte),
  .if_half(if_half),
  .PC(PC),
  //output
  .RD(RD)
);

BC branchunit(
  .op(op),
  .rt(rt),
  .if_zero(aluZero),
  .data(rd1),
  .if_branch(if_branch)
);

ctrl controlunit(
  .op(op),
  .func(func),
  //output
  .regWrite(regWrite),
  .regDst(regDst),
  .regRa(regRa),
  .regSrc(regSrc),
  .regPc(regPc),
  .aluSrc(aluSrc),
  .extendType(extendType),
  .shiftSrc(shiftSrc),
  .memWrite(memWrite),
  .jump(jump),
  .jumpSrc(jumpSrc),
  .aluControl(aluControl),
  .if_byte(if_byte),
  .if_half(if_half)
);

endmodule
