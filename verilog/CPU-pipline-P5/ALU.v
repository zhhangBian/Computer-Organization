`timescale 1ns / 1ps

module ALU(
    input [31:0] inA,
    input [31:0] inB,
    input [3:0] op,
    input [4:0] shift,
    output [31:0] result,
    output aluZero
    );

assign result=(op==4'b0000) ? inA + inB :
              (op==4'b0001) ? inA - inB :
              (op==4'b0010) ? inA & inB :
              (op==4'b0011) ? inA | inB :
              (op==4'b0100) ? inA ^ inB :
              (op==4'b0101) ? ~(inA | inB) :
              (op==4'b0110) ? inB << shift :
              (op==4'b0111) ? inB >> shift :
              (op==4'b1000) ? $signed(inB) >>> shift :
              (op==4'b1001) ? inB << 16 :
              (op==4'b1010) ? {31'b0,inA < inB} : 
              (op==4'b1011) ? {31'b0,inA > inB} : 
              (op==4'b1100) ? (inA * inB) :
              (op==4'b1101) ? (inA / inB) :
              32'b0;

assign aluZero = (result == 0) ? 1 : 0;

endmodule