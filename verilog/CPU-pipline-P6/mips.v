`timescale 1ns / 1ps

module mips(
    input clk,
    input reset,

    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,

    output [31:0] i_inst_addr,

    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,
    output [31:0] m_inst_addr,

    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );

wire flush;
wire [4:0] E_for_addr, M_for_addr, W_for_addr;
wire [31:0] E_for_data, M_for_data, W_for_data;

//-----------F--------------
wire [31:0] F_PC;
wire [31:0] F_inStr;
wire [31:0] F_PCnext;

assign i_inst_addr = F_PC;
assign F_inStr = i_inst_rdata;

//-----------D--------------
wire [31:0] D_PC;
wire [31:0] D_inStr;

wire [5:0] D_func = D_inStr[5:0];
wire [4:0] D_shamt = D_inStr[10:6];
wire [4:0] D_rd = D_inStr[15:11];
wire [4:0] D_rt = D_inStr[20:16];
wire [4:0] D_rs = D_inStr[25:21];
wire [5:0] D_op = D_inStr[31:26];
wire [15:0] D_offest = D_inStr[15:0];
wire [25:0] D_imm = D_inStr[25:0];

//used to send
wire [31:0] D_for_data_rs;
wire [31:0] D_for_data_rt;

wire [31:0] D_nextPc;
wire [4:0] D_regAddr1;
wire [4:0] D_regAddr2;
wire [31:0] D_regOut1;
wire [31:0] D_regOut2;

//D_NPC
wire D_if_branch;
wire D_if_jump;
wire D_jumpSrc;
wire [31:0] D_PCnext;

wire [31:0] D_extend;
wire D_extendType;

wire [31:0] D_aluIn1;
wire [31:0] D_aluIn2;

//-----------E--------------
wire [31:0] E_for_data_rs;
wire [31:0] E_for_data_rt;
wire [4:0] E_for_addr_rs;
wire [4:0] E_for_addr_rt;

wire [31:0] E_inStr;
wire [31:0] E_PC;
wire [31:0] E_regOut1;
wire [31:0] E_regOut2;
wire [31:0] E_extend;
wire [4:0] E_shamt;
wire [4:0] E_shiftIn;

wire [31:0] E_aluIn1;
wire [31:0] E_aluIn2;
wire [3:0] E_aluOp;
wire [31:0] E_aluResult;
wire E_aluSrc, E_regPc, E_shiftSrc;

wire E_resultSrc;
wire E_hluDst, E_hluWrite, E_hluUsigned;
wire E_hluBusy;
wire [3:0] E_hluControl;
wire [31:0] E_hluIn1;
wire [31:0] E_hluIn2;
wire [31:0] E_hluResult;


//-----------M--------------
wire [31:0] M_for_data_rs;
wire [31:0] M_for_data_rt;
wire [4:0] M_for_addr_rs;
wire [4:0] M_for_addr_rt;

wire [31:0] M_inStr;
wire [31:0] M_PC;

wire [31:0] M_regOut1;
wire [31:0] M_regOut2;
wire [31:0] M_aluResult;
wire [31:0] M_hluResult;

wire M_resultSrc;

wire [31:0] M_memIn;
wire [31:0] M_memTowrite;
wire [31:0] M_memAddr;
wire [31:0] M_memOut;
wire [3:0] M_memByteen;
wire [31:0] M_memRead = m_data_rdata;

wire M_regPc, M_regSrc, M_memWrite;
wire M_if_byte, M_if_half, M_load_extend;

assign m_data_addr = M_memAddr;
assign m_data_wdata = M_memTowrite;
assign m_data_byteen = M_memByteen;
assign m_inst_addr = M_PC;

//-----------W--------------
wire [31:0] W_inStr;
wire [31:0] W_PC;

wire [4:0] W_regAddr;
wire [31:0] W_regData;

wire [31:0] W_memOut;
wire [31:0] W_aluResult;
wire [31:0] W_hluResult;
wire [31:0] W_regOut1;
wire [31:0] W_regOut2;
wire W_resultSrc;

wire W_regWrite, W_regSrc, W_regPc;

assign w_grf_we = W_regWrite;
assign w_grf_addr = W_regAddr;
assign w_grf_wdata = W_regData;
assign w_inst_addr = W_PC;

//------------------------------------------------
//------------------------------------------------
//------------------------------------------------

SU su(
  .D_inStr(D_inStr),
  .E_inStr(E_inStr),
  .M_inStr(M_inStr),
  .hl_busy(E_hluBusy),
  .stall(flush)
);

//------F------

assign F_PCnext = D_PCnext;

IFU F_IFU(
  .clk(clk),
  .reset(reset),
  .flush(flush),
  .PCnext(F_PCnext),
  .PC(F_PC)
);

Dreg Dreg(
  .clk(clk),
  .reset(reset),
  .flush(flush),

  .inStr(F_inStr),
  .PC(F_PC),

  .inStr_out(D_inStr),
  .PC_out(D_PC)
);

//------D------

ctrl D_ctrl(
  .inStr(D_inStr),
  .extendType(D_extendType),

  .jump(D_if_jump),
  .jumpSrc(D_jumpSrc)
);

assign D_extend = (D_extendType==1) ? {16'b000000,D_offest} : 
                {{16{D_offest[15]}},D_offest};

GRF D_GRF(
  .clk(clk),
  .reset(reset),
  .WE(W_regWrite),
  .A1(D_rs),
  .A2(D_rt),
  .A3(W_regAddr),
  .WD(W_regData),
  .PC(W_PC),
  .RD1(D_regOut1),
  .RD2(D_regOut2)
);

NPC D_NPC(
  .D_PC(D_PC),
  .F_PC(F_PC),
  .imm(D_imm),
  .offest(D_offest),

  .if_branch(D_if_branch),
  .if_jump(D_if_jump),

  .rs(D_for_data_rs),

  .jumpSrc(D_jumpSrc),
  .PCnext(D_PCnext)
);

BC D_BC(
  .op(D_op),
  .rt(D_rt),
  .rd1(D_for_data_rs),
  .rd2(D_for_data_rt),
  .if_branch(D_if_branch)
);

Ereg Ereg(
  .clk(clk),
  .reset(reset),
  .flush(flush),

  .PC(D_PC),
  .inStr(D_inStr),

  .regOut1(D_for_data_rs),
  .regOut2(D_for_data_rt),
  .extend(D_extend),
  .shamt(D_shamt),

  .PC_out(E_PC),
  .inStr_out(E_inStr),
  .regOut1_out(E_regOut1),
  .regOut2_out(E_regOut2),
  .extend_out(E_extend),
  .shamt_out(E_shamt)
);

assign D_for_data_rs = (D_rs==0) ? 32'b0 :
                        (D_rs==E_for_addr) ? E_for_data :
                        (D_rs==M_for_addr) ? M_for_data :
                        D_regOut1;

assign D_for_data_rt = (D_rt==0) ? 32'b0 :
                        (D_rt==E_for_addr) ? E_for_data :
                        (D_rt==M_for_addr) ? M_for_data :
                        D_regOut2;

//------E------
ctrl E_ctrl(
  .inStr(E_inStr),
  .aluSrc(E_aluSrc),
  .aluControl(E_aluOp),
  .regPc(E_regPc),
  .shiftSrc(E_shiftSrc),

  .resultSrc(E_resultSrc),
  .hluDst(E_hluDst),
  .hluWrite(E_hluWrite),
  .hluUnsigned(E_hluUsigned),
  .hluControl(E_hluControl),

  .dst(E_for_addr),
  .rs(E_for_addr_rs),
  .rt(E_for_addr_rt)
);

ALU E_ALU(
  .inA(E_aluIn1),
  .inB(E_aluIn2),
  .op(E_aluOp),
  .shift(E_shiftIn),
  .result(E_aluResult),
  .aluZero(E_aluZero)
);

HLU E_HLU(
  .clk(clk),
  .reset(reset),

  .inA(E_hluIn1),
  .inB(E_hluIn2),

  .dst(E_hluDst),
  .write(E_hluWrite),
  .hluType(E_hluControl),
  .unSigned(E_hluUsigned),

  .busy(E_hluBusy),
  .result(E_hluResult)
);

Mreg Mreg(
  .clk(clk),
  .reset(reset),

  .PC(E_PC),
  .inStr(E_inStr),

  .aluResult(E_aluResult),
  .hluResult(E_hluResult),
  .regOut1(E_for_data_rs),
  .regOut2(E_for_data_rt),

  .PC_out(M_PC),
  .inStr_out(M_inStr),
  .aluResult_out(M_aluResult),
  .hluResult_out(M_hluResult),
  .regOut1_out(M_regOut1),
  .regOut2_out(M_regOut2)
);

assign E_for_data_rs = (E_for_addr_rs==0) ? 0 :
                        (E_for_addr_rs==M_for_addr) ? M_for_data :
                        (E_for_addr_rs==W_for_addr) ? W_for_data :
                        E_regOut1;

assign E_for_data_rt = (E_for_addr_rt==0) ? 0 :
                        (E_for_addr_rt==M_for_addr) ? M_for_data :
                        (E_for_addr_rt==W_for_addr) ? W_for_data :
                        E_regOut2;

assign E_for_data = E_regPc ? E_PC + 8 :
                    32'bz;

assign E_aluIn1 = E_for_data_rs;
assign E_aluIn2 = (E_aluSrc) ? E_extend : E_for_data_rt;
assign E_shiftIn = (E_shiftSrc==1) ? E_shamt : E_for_data_rs[4:0];

assign E_hluIn1 = E_for_data_rs;
assign E_hluIn2 = E_for_data_rt;

//------M------
ctrl M_ctrl(
  .inStr(M_inStr),

  .regSrc(M_regSrc),
  .regPc(M_regPc),

  .memWrite(M_memWrite),
  .if_byte(M_if_byte),
  .if_half(M_if_half),
  .load_extend(M_load_extend),

  .resultSrc(M_resultSrc),

  .rs(M_for_addr_rs),
  .rt(M_for_addr_rt),

  .dst(M_for_addr)
);

DM M_DM(
  .memData(M_memRead),
  .address(M_memAddr),
  .memIn(M_memIn),

  .WE(M_memWrite),
  .if_byte(M_if_byte),
  .if_half(M_if_half),
  .load_extend(M_load_extend),

  .memDataRead(M_memOut),
  .memTowrite(M_memTowrite),
  .byteen(M_memByteen)
);

Wreg Wreg(
  .clk(clk),
  .reset(reset),

  .PC(M_PC),
  .inStr(M_inStr),

  .memOut(M_memOut),
  .aluResult(M_aluResult),
  .hluResult(M_hluResult),
  .regOut1(M_for_data_rs),
  .regOut2(M_for_data_rt),

  .PC_out(W_PC),
  .inStr_out(W_inStr),

  .memOut_out(W_memOut),
  .aluResult_out(W_aluResult),
  .hluResult_out(W_hluResult),
  .regOut1_out(W_regOut1),
  .regOut2_out(W_regOut2)
);

assign M_memAddr = M_aluResult;
assign M_memIn = M_for_data_rt;

assign M_for_data_rs = (M_for_addr_rs==0) ? 0 :
                        (M_for_addr_rs==W_for_addr) ? W_for_data :
                        M_regOut1;

assign M_for_data_rt = (M_for_addr_rt==0) ? 0 :
                        (M_for_addr_rt==W_for_addr) ? W_for_data :
                        M_regOut2;

assign M_for_data = M_regPc ? M_PC + 8 :
                    M_resultSrc ? M_hluResult :
                    M_aluResult;

//------W------

ctrl W_ctrl(
  .inStr(W_inStr),
  .regWrite(W_regWrite),
  .regSrc(W_regSrc),
  .regPc(W_regPc),
  .resultSrc(W_resultSrc),
  .dst(W_for_addr)
);

assign W_regAddr = W_for_addr;

assign W_for_data = W_regData;

assign W_regData = (W_regPc==1) ? W_PC+8 :
                    (W_regSrc==1) ? W_memOut :
                    (W_resultSrc) ? W_hluResult :
                    W_aluResult;

endmodule