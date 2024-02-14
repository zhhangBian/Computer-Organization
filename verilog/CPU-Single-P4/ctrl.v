`timescale 1ns / 1ps

module ctrl(
    input [5:0] op,
    input [5:0] func,
    output regWrite,
    output regDst,
    output regRa,
    output regSrc,
    output regPc,
    output aluSrc,
    output extendType,
    output shiftSrc,
    output memWrite,
    output jump,
    output jumpSrc,
    output [3:0] aluControl,
    output if_byte,
    output if_half
    );

wire _add = (op==6'b000000) & (func==6'b100000);
wire _addu = (op==6'b000000) & (func==6'b100001);
wire _sub = (op==6'b000000) & (func==6'b100010);
wire _subu = (op==6'b000000) & (func==6'b100011);
wire _and = (op==6'b000000) & (func==6'b100100);
wire _or = (op==6'b000000) & (func==6'b100101);
wire _xor = (op==6'b000000) & (func==6'b100110);
wire _nor = (op==6'b000000) & (func==6'b100111);
wire _sll = (op==6'b000000) & (func==6'b000000);
wire _sllv = (op==6'b000000) & (func==6'b000100);
wire _srl = (op==6'b000000) & (func==6'b000010);
wire _srlv = (op==6'b000000) & (func==6'b000110);
wire _sra = (op==6'b000000) & (func==6'b000011);
wire _srav = (op==6'b000000) & (func==6'b000111);
wire _slt = (op==6'b000000) & (func==6'b101010);
wire _sltu = (op==6'b000000) & (func==6'b101011);
wire _jr = (op==6'b000000) & (func==6'b001000);
wire _jalr = (op==6'b000000) & (func==6'b001001);

wire _addi = op==6'b001000;
wire _addiu = op==6'b001001;
wire _slti = op==6'b001010;
wire _sltiu = op==6'b001011;
wire _andi = op==6'b001100;
wire _ori = op==6'b001101;
wire _xori = op==6'b001110;
wire _lui = op==6'b001111;
wire _beq = op==6'b000100;
wire _bne = op==6'b000101;
wire _bgez = op==6'b000001;
wire _bgtz = op==6'b000111;
wire _blez = op==6'b000110;
wire _bltz = op==6'b000001;
wire _j = op==6'b000010;
wire _jal = op==6'b000011;
wire _sw = op==6'b101011;
wire _sh = op==6'b101001;
wire _sb = op==6'b101000;
wire _lw = op==6'b100011;
wire _lh = op==6'b100001;
wire _lb = op==6'b100000;

assign regWrite = _add | _addu | _sub | _or | _sll |
                  _sllv | _slt | _ori | _lui | _sltu |
                  _jal | _jalr | _lw | _lh | _lb | _subu |
                  _and | _srl | _srlv | _addi | _addiu |
                  _slti | _andi | _xor | _xori | _nor |
                  _sltiu | _sra | _srav;

assign regDst = _add | _addu | _sub | _or | _sll |
                _sllv | _slt | _sltu | _jal | _jalr |
                _subu | _and | _srl | _srlv | _xor |
                _nor | _sra | _srav;

assign regRa = _jal;

assign regSrc = _lw | _lh | _lb;

assign regPc = _jal | _jalr;

assign aluSrc = _ori | _lui | _sw | _sh | _sb |
                _lw | _lh | _lb | _addi | _addiu |
                _slti | _andi | _xori | _sltiu;

assign extendType = _ori | _xori;

assign shiftSrc = _sll | _srl | _sra;

assign memWrite = _sw | _sh | _sb;

assign jump = _j | _jr | _jal | _jalr;

assign jumpSrc = _jr | _jalr;

assign if_byte = _sb | _lb;

assign if_half = _sh | _lh;

assign aluControl = (_add | _addu | _sw | _sh | _sb | _lw | _lh | _lb | _addi | _addiu) ? 4'b0000 :
                    (_sub | _subu | _beq | _bne) ? 4'b0001 :
                    (_and | _andi) ? 4'b0010 :
                    (_ori | _or) ? 4'b0011 :
                    (_xor | _xori) ? 4'b0100 :
                    (_nor) ? 4'b0101 :
                    (_sll | _sllv) ? 4'b0110 :
                    (_srl | _srlv) ? 4'b0111 :
                    (_sra | _srav) ? 4'b1000 :
                    (_lui) ? 4'b1001 :
                    (_slt | _sltu | _slti | _sltiu) ? 4'b1010 : 
                    4'b0000;


endmodule
