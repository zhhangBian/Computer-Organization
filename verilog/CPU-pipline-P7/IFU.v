`timescale 1ns / 1ps

module IFU(
    input clk,
    input reset,
    input Req,
    input stall,

    input [31:0] PCnext,
    output reg [31:0] PC
    );

always @(posedge clk) begin
  if(reset==1) begin
    PC <= 32'h0000_3000;
  end

  else if(Req==1) begin
    PC <= 32'h0000_4180;
  end

  else if(stall==1) begin
    PC <= PC;
  end

  else begin
    PC <= PCnext;
  end
end

endmodule
