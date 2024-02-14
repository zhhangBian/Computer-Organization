`timescale 1ns / 1ps

module DM(
    input [31:0] Address,
    input [31:0] data,
    input WE,
    input clk,
    input reset,
    input if_byte,
    input if_half,
    input load_extend,
    input [31:0] PC,
    output [31:0] RD
    );

reg [31:0] RAM [0:8191];

wire [13:0] address;
assign address = Address[15:2];
wire [4:0] shift1 = {Address[1:0],3'b000};
wire [4:0] shift2 = {Address[1],4'b0000};

wire [31:0] dm= RAM[address];

wire [31:0] rdTmp1 = dm >> shift1;
wire [31:0] rdTmp2 = dm >> shift2;
assign RD = (if_byte == 1) ? (load_extend) ? {{24{rdTmp1[7]}},rdTmp1[7:0]} : {24'b0,rdTmp1[7:0]} :
            (if_half == 1) ? (load_extend) ? {{16{rdTmp2[15]}},rdTmp2[15:0]} : {16'b0,rdTmp2[15:0]} : 
            dm;

wire [31:0] wdTmp1 = (({24'b0, data[7:0]}) << shift1) | (~(32'h0000_00ff << shift1) & dm);
wire [31:0] wdTmp2 = (({16'b0, data[15:0]}) << shift2) | (~(32'h0000_00ff << shift2) & dm);
wire [31:0] WD =  (if_byte == 1) ? wdTmp1 :
                  (if_half == 1) ? wdTmp2 : 
                  data;

integer i;
always @(posedge clk) begin
  if(reset==1) begin
    for(i=0;i<8192;i=i+1)
      RAM[i]<=0;
  end
  else begin
    if(WE==1) begin
      RAM[address] <= WD;
      $display("%d@%h: *%h <= %h", $time, PC, Address, WD);
    end
    else begin
      RAM[address] <= RAM[address];
    end
  end
end

endmodule
