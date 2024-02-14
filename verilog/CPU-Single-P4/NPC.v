`timescale 1ns / 1ps

module NPC(
    input [31:0] PC,
    input [25:0] imm,
    input [15:0] offest,
    input if_branch,
    input if_jump,
    input [31:0] rs,
    input jumpSrc,
    output [31:0] PC_next,
    output [31:0] PCadd4
    );

assign PCadd4 = PC + 32'h0000_0004;
wire [31:0] PC_branch = PC + 32'h0000_0004 + {{14{offest[15]}},offest,2'b00};
wire [31:0] PC_jump = (jumpSrc==1) ? rs : {PC[31:28],imm,2'b00};

assign PC_next =(if_jump == 1) ? PC_jump :
                (if_branch == 1) ? PC_branch : 
                PCadd4;

endmodule
