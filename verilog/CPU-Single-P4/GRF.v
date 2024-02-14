`timescale 1ns / 1ps

module GRF(
    input clk,
    input reset,
    input WE,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );

reg [31:0] grf [0:31];

assign RD1 = grf[A1];
assign RD2 = grf[A2];
integer i=0;

initial begin
  for(i=0;i<32;i=i+1)
    grf[i]=0;
end

always @(posedge clk) begin
  if(reset==1) begin
    for(i=0;i<32;i=i+1) begin
      grf[i]=32'b0000_0000;
    end
  end
  else begin
    if(WE && A3 != 5'b00000) begin
      grf[A3] <= WD;
      $display("@%h: $%d <= %h", PC, A3, WD);
    end
    else begin
      grf[A3] <= grf[A3];
    end
  end
end

endmodule
