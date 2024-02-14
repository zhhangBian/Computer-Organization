`timescale 1ns / 1ps

`define EXC_syscall 5'd8
`define EXC_break   5'd9
`define EXC_trap    5'd13
`define EXC_Right   5'd0

module EC(
  input [31:0] inStr,
  input [31:0] rd1,
  input [31:0] rd2,

  output [4:0] EXCcode
    );

wire if_trap;

wire [5:0] func = inStr[5:0];
wire [4:0] shamt = inStr[10:6];
wire [4:0] rd = inStr[15:11];
wire [4:0] rt = inStr[20:16];
wire [4:0] rs = inStr[25:21];
wire [5:0] op = inStr[31:26];
wire [15:0] offest = inStr[15:0];
wire [25:0] imm = inStr[25:0];
wire [31:0] imme = {{16{offest[15]}},offest};

wire _syscall = (op==6'b000000) & (func==6'b001100);
wire _break = (op==6'b000000) & (func==6'b001101);

wire _teq = (op==6'b000000) & (func==6'b110100);
wire _teqi = (op==6'b000001) & (rt==5'b01100);
wire _tne = (op==6'b000000) & (func==6'b110110);
wire _tnei = (op==6'b000001) & (rt==5'b01110);
wire _tge = (op==6'b000000) & (func==6'b110000);
wire _tgeu = (op==6'b000000) & (func==6'b110001);
wire _tgei = (op==6'b000001) & (rt==5'b01000);
wire _tgeiu =  (op==6'b000001) & (rt==5'b01001);
wire _tlt = (op==6'b000000) & (func==6'b110010);
wire _tltu = (op==6'b000000) & (func==6'b110011);
wire _tlti = (op==6'b000001) & (rt==5'b01010);
wire _tltiu = (op==6'b000001) & (rt==5'b01011);

assign if_trap = (_teq & rd1==rd2) |
                (_teqi & rd1==imme) |
                (_tne & rd1!=rd2) |
                (_tnei & rd1!=imme) |
                (_tge & $signed($signed(rd1)>=$signed(rd2))) |
                (_tgei & $signed($signed(rd1)>=$signed(imme))) |
                (_tgeu & rd1>=rd2) |
                (_tgeiu & rd1>=imme) |
                (_tlt & $signed($signed(rd1)<=$signed(rd2))) |
                (_tlti & $signed($signed(rd1)<=$signed(imme))) |
                (_tltu & rd1<=rd2) |
                (_tltiu & rd1<=imme);

assign EXCcode = _syscall ? `EXC_syscall :
                _break ? `EXC_break :
                if_trap ? `EXC_trap :
                `EXC_Right;

endmodule
