`timescale 1ns / 1ps

module Dreg(
  input clk,
  input reset,
  input flush,
  input [31:0] inStr,
  input [31:0] PC,
  output reg [31:0] inStr_out,
  output reg [31:0] PC_out
    );

always @(posedge clk) begin
  if(reset==1) begin
    PC_out<=0;
    inStr_out<=0;
  end

  else if(flush==1) begin
    PC_out<=PC_out;
    inStr_out<=inStr_out;
  end

  else begin
    PC_out<=PC;
    inStr_out<=inStr;
  end
end

endmodule
