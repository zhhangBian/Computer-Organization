`timescale 1ns / 1ps

module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );

assign ext= (EOp == 2'b00) ? {{16{imm[15]}},imm} :
            (EOp == 2'b01) ? {{16{0}},imm} :
            (EOp == 2'b10) ? {imm,{16{0}}} :
            {{16{imm[15]}},imm}<<2;

endmodule
