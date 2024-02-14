`timescale 1ns / 1ps

module GRF(
    input clk,
    input reset,
    input WE,
    input [4:0] readAddr1,
    input [4:0] readAddr2,
    input [4:0] writeAddr,
    input [31:0] writeData,
    input [31:0] PC,
    output [31:0] readData1,
    output [31:0] readData2
    );

reg [31:0] GRF [0:31];

assign readData1 = readAddr1==0 ? 0 : 
                  (readAddr1==writeAddr & WE) ? writeData : GRF[readAddr1];
assign readData2 = readAddr2==0 ? 0 :
                  (readAddr2==writeAddr & WE) ? writeData : GRF[readAddr2];

integer i;

always @(posedge clk) begin
  if(reset==1) begin
    for(i=0;i<32;i=i+1) begin
      GRF[i]<=32'b0;
    end
  end

  else begin
    if(WE && writeAddr!=0) begin
      GRF[writeAddr] <= writeData;
    end

    else begin
      GRF[0]<=0;
    end
  end
end

endmodule
