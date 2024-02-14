`timescale 1ns / 1ps

module BC(
    input [5:0] op,
    input [4:0] rt,
    input if_zero,
    input [31:0] data,
    output if_branch
    );

wire _beq = op==6'b000100;
wire _bgez = op==6'b000001 & rt==5'b00001;
wire _bgtz = op==6'b000111;
wire _blez = op==6'b000110;
wire _bltz = op==6'b000001 & rt==5'b00000;
wire _bne = op==6'b000101;

assign if_branch = (_beq & if_zero) |
                  (_bgez & ($signed(data)>=0)) |
                  (_bgtz & ($signed(data)>0)) |
                  (_blez & ($signed(data)<=0)) |
                  (_bltz & ($signed(data)<0)) |
                  (_bne & ~if_zero);

endmodule
