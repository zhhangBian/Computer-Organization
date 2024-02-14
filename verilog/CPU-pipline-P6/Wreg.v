`timescale 1ns / 1ps

module Wreg(
  input clk,
  input reset,

  input [31:0] PC,
  input [31:0] inStr,

  input [31:0] memOut,
  input [31:0] aluResult,
  input [31:0] hluResult,
  input [31:0] regOut1,
  input [31:0] regOut2,

  output reg [31:0] PC_out,
  output reg [31:0] inStr_out,
  output reg [31:0] memOut_out,
  output reg [31:0] aluResult_out,
  output reg [31:0] hluResult_out,
  output reg [31:0] regOut1_out,
  output reg [31:0] regOut2_out
    );

always @(posedge clk) begin
  if(reset==1) begin
    PC_out<=0;
    inStr_out<=0;
    memOut_out<=0;
    aluResult_out<=0;
    hluResult_out<=0;
    regOut1_out<=0;
    regOut2_out<=0;
  end

  else begin
    PC_out<=PC;
    inStr_out<=inStr;

    memOut_out<=memOut;
    aluResult_out<=aluResult;
    hluResult_out<=hluResult;
    regOut1_out<=regOut1;
    regOut2_out<=regOut2;
  end
end

endmodule
