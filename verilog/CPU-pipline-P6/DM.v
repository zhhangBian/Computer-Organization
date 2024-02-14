`timescale 1ns / 1ps

module DM(
    input [31:0] memData,
    input [31:0] address,
    input [31:0] memIn,

    input WE,
    input if_byte,
    input if_half,
    input load_extend,

    output [31:0] memDataRead,
    output [31:0] memTowrite,
    output [3:0] byteen
    );

wire [4:0] shift = {address[1:0],3'b000};

wire [31:0] rdTmp = memData >> shift;
assign memTowrite = memIn << shift;

//lw,lh,lb,lhu,lbu
assign memDataRead = (if_byte == 1) ? (load_extend) ? {{24{rdTmp[7]}},rdTmp[7:0]} : {24'b0,rdTmp[7:0]} :
                      (if_half == 1) ? (load_extend) ? {{16{rdTmp[15]}},rdTmp[15:0]} : {16'b0,rdTmp[15:0]} : 
                      memData;

//sw,sh,sb
assign byteen = (WE==0) ? 4'b0000 :
                (if_byte) ? 4'b0001 << address[1:0] :
                (if_half) ? 4'b0011 << address[1:0] :
                4'b1111;

endmodule
