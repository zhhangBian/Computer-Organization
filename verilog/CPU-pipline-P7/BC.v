`timescale 1ns / 1ps

module BC(
    input [5:0] op,
    input [4:0] rt,
    input [31:0] rd1,
    input [31:0] rd2,
    output if_branch,
    output branch_clear
    );

wire _beq = op==6'b000100;
wire _beql = op==6'b010100;
wire _bne = op==6'b000101;
wire _bnel = op==6'b010101;
wire _bgez = (op==6'b000001) & (rt==5'b00001);
wire _bgezl = (op==6'b000001) & (rt==5'b00011);
wire _bgezal = (op==6'b000001) & (rt==5'b10001);
wire _bgezall = (op==6'b000001) & (rt==5'b10011);
wire _bgtz = (op==6'b000111) & (rt==5'b00000);
wire _bgtzl = (op==6'b010111) & (rt==5'b00000);
wire _blez = (op==6'b000110) & (rt==5'b00000);
wire _blezl = (op==6'b010110) & (rt==5'b00000);
wire _bltz = (op==6'b000001) & (rt==5'b00000);
wire _bltzl = (op==6'b000001) & (rt==5'b00010);
wire _bltzal = (op==6'b000001) & (rt==5'b10000);
wire _bltzall = (op==6'b000001) & (rt==5'b10010);

assign if_branch = ((_beq | _beql) & rd1==rd2) |
                  ((_bne | _bnel) & rd1!=rd2) |
                  ((_bgez | _bgezl | _bgezal | _bgezall) & ($signed(rd1)>=$signed(0))) |
                  ((_bgtz | _bgtzl) & ($signed(rd1)>$signed(0))) |
                  ((_blez | _blezl) & ($signed(rd1)<=$signed(0))) |
                  ((_bltz | _bltzl | _bltzal | _bltzall) & ($signed(rd1)<$signed(0)));

assign branch_clear = (!if_branch) &
                      (_beql | _bnel | _bgezl | _bgezall | _bgtzl | _blezl | _bltzl | _bltzall);

endmodule
