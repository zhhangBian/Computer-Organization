`timescale 1ns / 1ps

module IFU(
    input clk,
    input reset,
    input [31:0] PC_next,
    output [31:0] inStr,
    output [31:0] pc
    );

reg [31:0] PC;
reg [31:0] ROM [0:8191];
assign pc = PC + 32'h0000_3000;
assign inStr = ROM [PC[15:2]];

initial begin
  PC = 32'h0000_0000;
	$readmemh("code.txt", ROM);
end

always @(posedge clk) begin
  if(reset==1) begin
    PC <=  0;
  end
  else begin
    PC <= PC_next - 32'h0000_3000;
  end
end

endmodule
