////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: alu_synthesis.v
// /___/   /\     Timestamp: Tue Oct 10 20:41:14 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim alu.ngc alu_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: alu.ngc
// Output file	: H:\BUAA_workshop\verilog\ALU-1120-27\netgen\synthesis\alu_synthesis.v
// # of Modules	: 1
// Design Name	: alu
// Xilinx        : H:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module alu (
C, ALUOp, A, B
);
  output [31 : 0] C;
  input [2 : 0] ALUOp;
  input [31 : 0] A;
  input [31 : 0] B;
  wire ALUOp_0_IBUF_35;
  wire ALUOp_1_IBUF_36;
  wire ALUOp_2_IBUF_37;
  wire A_0_IBUF_38;
  wire A_10_IBUF_39;
  wire A_11_IBUF_40;
  wire A_12_IBUF_41;
  wire A_13_IBUF_42;
  wire A_14_IBUF_43;
  wire A_15_IBUF_44;
  wire A_16_IBUF_45;
  wire A_17_IBUF_46;
  wire A_18_IBUF_47;
  wire A_19_IBUF_48;
  wire A_1_IBUF_49;
  wire A_20_IBUF_50;
  wire A_21_IBUF_51;
  wire A_22_IBUF_52;
  wire A_23_IBUF_53;
  wire A_24_IBUF_54;
  wire A_25_IBUF_55;
  wire A_26_IBUF_56;
  wire A_27_IBUF_57;
  wire A_28_IBUF_58;
  wire A_29_IBUF_59;
  wire A_2_IBUF_60;
  wire A_30_IBUF_61;
  wire A_31_IBUF_62;
  wire A_3_IBUF_63;
  wire A_4_IBUF_64;
  wire A_5_IBUF_65;
  wire A_6_IBUF_66;
  wire A_7_IBUF_67;
  wire A_8_IBUF_68;
  wire A_9_IBUF_69;
  wire B_0_IBUF_102;
  wire B_10_IBUF_103;
  wire B_11_IBUF_104;
  wire B_12_IBUF_105;
  wire B_13_IBUF_106;
  wire B_14_IBUF_107;
  wire B_15_IBUF_108;
  wire B_16_IBUF_109;
  wire B_17_IBUF_110;
  wire B_18_IBUF_111;
  wire B_19_IBUF_112;
  wire B_1_IBUF_113;
  wire B_20_IBUF_114;
  wire B_21_IBUF_115;
  wire B_22_IBUF_116;
  wire B_23_IBUF_117;
  wire B_24_IBUF_118;
  wire B_25_IBUF_119;
  wire B_26_IBUF_120;
  wire B_27_IBUF_121;
  wire B_28_IBUF_122;
  wire B_29_IBUF_123;
  wire B_2_IBUF_124;
  wire B_30_IBUF_125;
  wire B_31_IBUF_126;
  wire B_3_IBUF_127;
  wire B_4_IBUF_128;
  wire B_5_IBUF_129;
  wire B_6_IBUF_130;
  wire B_7_IBUF_131;
  wire B_8_IBUF_132;
  wire B_9_IBUF_133;
  wire C_0_166;
  wire C_1_167;
  wire C_10_168;
  wire C_11_169;
  wire C_12_170;
  wire C_13_171;
  wire C_14_172;
  wire C_15_173;
  wire C_16_174;
  wire C_17_175;
  wire C_18_176;
  wire C_19_177;
  wire C_2_178;
  wire C_20_179;
  wire C_21_180;
  wire C_22_181;
  wire C_23_182;
  wire C_24_183;
  wire C_25_184;
  wire C_26_185;
  wire C_27_186;
  wire C_28_187;
  wire C_29_188;
  wire C_3_189;
  wire C_30_190;
  wire C_31_191;
  wire C_4_192;
  wire C_5_193;
  wire C_6_194;
  wire C_7_195;
  wire C_8_196;
  wire C_9_197;
  wire C_and0004;
  wire C_and0005;
  wire C_cmp_eq0003;
  wire C_cmp_eq0005;
  wire C_mux0000;
  wire C_not0001;
  wire C_not00011_266;
  wire C_or0001;
  wire Mmux_C_mux00011037_376;
  wire Mmux_C_mux00011237_377;
  wire Mmux_C_mux0001140_378;
  wire Mmux_C_mux000114153;
  wire Mmux_C_mux0001141531_380;
  wire Mmux_C_mux00011448_381;
  wire Mmux_C_mux00011493;
  wire Mmux_C_mux000114931_383;
  wire Mmux_C_mux000114932_384;
  wire Mmux_C_mux00011625_385;
  wire Mmux_C_mux00011818;
  wire Mmux_C_mux00011822_387;
  wire Mmux_C_mux0001189_388;
  wire Mmux_C_mux00012022_389;
  wire Mmux_C_mux0001209_390;
  wire Mmux_C_mux00012149_391;
  wire Mmux_C_mux00012163;
  wire Mmux_C_mux000121631_393;
  wire Mmux_C_mux00012222_394;
  wire Mmux_C_mux0001223_395;
  wire Mmux_C_mux0001229_396;
  wire Mmux_C_mux00012431_397;
  wire Mmux_C_mux00012451_398;
  wire Mmux_C_mux00012619_399;
  wire Mmux_C_mux0001269_400;
  wire Mmux_C_mux00012822_401;
  wire Mmux_C_mux0001289_402;
  wire Mmux_C_mux00013022_403;
  wire Mmux_C_mux0001309_404;
  wire Mmux_C_mux00013218_405;
  wire Mmux_C_mux0001329_406;
  wire Mmux_C_mux00013420_407;
  wire Mmux_C_mux0001349_408;
  wire Mmux_C_mux00013615_409;
  wire Mmux_C_mux00013815_410;
  wire Mmux_C_mux00014011_411;
  wire Mmux_C_mux00014023_412;
  wire Mmux_C_mux00014217_413;
  wire Mmux_C_mux0001431_414;
  wire Mmux_C_mux0001434_SW0;
  wire Mmux_C_mux0001434_SW01_416;
  wire Mmux_C_mux00014416_417;
  wire Mmux_C_mux00014423_418;
  wire Mmux_C_mux0001445_419;
  wire Mmux_C_mux00014631_420;
  wire Mmux_C_mux00014817_421;
  wire Mmux_C_mux00014825_422;
  wire Mmux_C_mux0001485_423;
  wire Mmux_C_mux00015020_424;
  wire Mmux_C_mux0001509_425;
  wire Mmux_C_mux00015231_426;
  wire Mmux_C_mux00015431_427;
  wire Mmux_C_mux00015631_428;
  wire Mmux_C_mux00015831_429;
  wire Mmux_C_mux00016010_430;
  wire Mmux_C_mux00016036_431;
  wire Mmux_C_mux00016210_432;
  wire Mmux_C_mux00016236_433;
  wire Mmux_C_mux0001631_434;
  wire Mmux_C_mux00016431_435;
  wire Mmux_C_mux00016434_SW0;
  wire Mmux_C_mux00016434_SW01_437;
  wire Mmux_C_mux0001859_438;
  wire N0;
  wire N01;
  wire N1;
  wire N108;
  wire N11;
  wire N119;
  wire N121;
  wire N123;
  wire N125;
  wire N129;
  wire N14;
  wire N143;
  wire N145;
  wire N147;
  wire N149;
  wire N151;
  wire N153;
  wire N155;
  wire N157;
  wire N159;
  wire N161;
  wire N163;
  wire N165;
  wire N167;
  wire N169;
  wire N171;
  wire N173;
  wire N175;
  wire N177;
  wire N189;
  wire N191;
  wire N193;
  wire N195;
  wire N197;
  wire N199;
  wire N201;
  wire N203;
  wire N205;
  wire N207;
  wire N209;
  wire N211;
  wire N213;
  wire N215;
  wire N217;
  wire N219;
  wire N221;
  wire N223;
  wire N225;
  wire N227;
  wire N229;
  wire N231;
  wire N232;
  wire N233;
  wire N234;
  wire N235;
  wire N236;
  wire N237;
  wire N238;
  wire N239;
  wire N240;
  wire N241;
  wire N242;
  wire N243;
  wire N244;
  wire N245;
  wire N246;
  wire N247;
  wire N248;
  wire N249;
  wire N250;
  wire N251;
  wire N252;
  wire N253;
  wire N254;
  wire N255;
  wire N256;
  wire N28;
  wire N30;
  wire N32;
  wire N39;
  wire N47;
  wire N48;
  wire N50;
  wire N53;
  wire N56;
  wire N57;
  wire N59;
  wire N6;
  wire N62;
  wire N65;
  wire N66;
  wire N68;
  wire N71;
  wire N74;
  wire N75;
  wire N77;
  wire N8;
  wire N80;
  wire N83;
  wire N86;
  wire N89;
  wire N9;
  wire N90;
  wire N95;
  wire N96;
  wire Sh10_544;
  wire Sh100;
  wire Sh1001_546;
  wire Sh1002_547;
  wire Sh101;
  wire Sh1011_549;
  wire Sh1012_550;
  wire Sh102_551;
  wire Sh103_552;
  wire Sh104_553;
  wire Sh105_554;
  wire Sh107_555;
  wire Sh108_556;
  wire Sh109_557;
  wire Sh110_558;
  wire Sh111_559;
  wire Sh112_560;
  wire Sh113_561;
  wire Sh114_562;
  wire Sh115_563;
  wire Sh116_564;
  wire Sh117_565;
  wire Sh118_566;
  wire Sh119_567;
  wire Sh120_568;
  wire Sh121_569;
  wire Sh122_570;
  wire Sh123_571;
  wire Sh124_572;
  wire Sh125;
  wire Sh126;
  wire Sh129;
  wire Sh12926_576;
  wire Sh12941_577;
  wire Sh130;
  wire Sh13026_579;
  wire Sh13041_580;
  wire Sh131;
  wire Sh13126_582;
  wire Sh13141_583;
  wire Sh132;
  wire Sh13229;
  wire Sh132291_586;
  wire Sh133;
  wire Sh13329;
  wire Sh133291_589;
  wire Sh134;
  wire Sh13429;
  wire Sh134291_592;
  wire Sh135;
  wire Sh13529;
  wire Sh135291_595;
  wire Sh136;
  wire Sh13629;
  wire Sh136291_598;
  wire Sh137;
  wire Sh13729;
  wire Sh137291_601;
  wire Sh138;
  wire Sh13829;
  wire Sh138291_604;
  wire Sh139;
  wire Sh13929;
  wire Sh139291_607;
  wire Sh141;
  wire Sh14127_609;
  wire Sh1417_610;
  wire Sh142;
  wire Sh14227_612;
  wire Sh1427_613;
  wire Sh144;
  wire Sh14427_615;
  wire Sh1447;
  wire Sh145;
  wire Sh14527_618;
  wire Sh1457_619;
  wire Sh146;
  wire Sh14627_621;
  wire Sh1467_622;
  wire Sh147;
  wire Sh14719_624;
  wire Sh14730;
  wire Sh147301_626;
  wire Sh148;
  wire Sh14830;
  wire Sh148301_629;
  wire Sh149;
  wire Sh14930;
  wire Sh149301_632;
  wire Sh150;
  wire Sh15030;
  wire Sh150301_635;
  wire Sh155;
  wire Sh157;
  wire Sh158;
  wire Sh29;
  wire Sh30;
  wire Sh31;
  wire Sh49;
  wire Sh4929;
  wire Sh49291_644;
  wire Sh50;
  wire Sh5029;
  wire Sh50291_647;
  wire Sh51;
  wire Sh5131;
  wire Sh51311_650;
  wire Sh52_651;
  wire Sh53_652;
  wire Sh54_653;
  wire Sh55;
  wire Sh56;
  wire Sh57;
  wire Sh58;
  wire Sh59;
  wire [6 : 0] C_and0004_wg_cy;
  wire [7 : 0] C_and0004_wg_lut;
  wire [6 : 0] C_and0005_wg_cy;
  wire [7 : 0] C_and0005_wg_lut;
  wire [31 : 0] C_mux0001;
  wire [5 : 0] C_or0001_wg_cy;
  wire [6 : 0] C_or0001_wg_lut;
  wire [31 : 0] C_share0000;
  wire [30 : 0] Maddsub_C_share0000_cy;
  wire [31 : 0] Maddsub_C_share0000_lut;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  MUXCY   \Maddsub_C_share0000_cy<0>  (
    .CI(C_mux0000),
    .DI(A_0_IBUF_38),
    .S(Maddsub_C_share0000_lut[0]),
    .O(Maddsub_C_share0000_cy[0])
  );
  XORCY   \Maddsub_C_share0000_xor<0>  (
    .CI(C_mux0000),
    .LI(Maddsub_C_share0000_lut[0]),
    .O(C_share0000[0])
  );
  MUXCY   \Maddsub_C_share0000_cy<1>  (
    .CI(Maddsub_C_share0000_cy[0]),
    .DI(A_1_IBUF_49),
    .S(Maddsub_C_share0000_lut[1]),
    .O(Maddsub_C_share0000_cy[1])
  );
  XORCY   \Maddsub_C_share0000_xor<1>  (
    .CI(Maddsub_C_share0000_cy[0]),
    .LI(Maddsub_C_share0000_lut[1]),
    .O(C_share0000[1])
  );
  MUXCY   \Maddsub_C_share0000_cy<2>  (
    .CI(Maddsub_C_share0000_cy[1]),
    .DI(A_2_IBUF_60),
    .S(Maddsub_C_share0000_lut[2]),
    .O(Maddsub_C_share0000_cy[2])
  );
  XORCY   \Maddsub_C_share0000_xor<2>  (
    .CI(Maddsub_C_share0000_cy[1]),
    .LI(Maddsub_C_share0000_lut[2]),
    .O(C_share0000[2])
  );
  MUXCY   \Maddsub_C_share0000_cy<3>  (
    .CI(Maddsub_C_share0000_cy[2]),
    .DI(A_3_IBUF_63),
    .S(Maddsub_C_share0000_lut[3]),
    .O(Maddsub_C_share0000_cy[3])
  );
  XORCY   \Maddsub_C_share0000_xor<3>  (
    .CI(Maddsub_C_share0000_cy[2]),
    .LI(Maddsub_C_share0000_lut[3]),
    .O(C_share0000[3])
  );
  MUXCY   \Maddsub_C_share0000_cy<4>  (
    .CI(Maddsub_C_share0000_cy[3]),
    .DI(A_4_IBUF_64),
    .S(Maddsub_C_share0000_lut[4]),
    .O(Maddsub_C_share0000_cy[4])
  );
  XORCY   \Maddsub_C_share0000_xor<4>  (
    .CI(Maddsub_C_share0000_cy[3]),
    .LI(Maddsub_C_share0000_lut[4]),
    .O(C_share0000[4])
  );
  MUXCY   \Maddsub_C_share0000_cy<5>  (
    .CI(Maddsub_C_share0000_cy[4]),
    .DI(A_5_IBUF_65),
    .S(Maddsub_C_share0000_lut[5]),
    .O(Maddsub_C_share0000_cy[5])
  );
  XORCY   \Maddsub_C_share0000_xor<5>  (
    .CI(Maddsub_C_share0000_cy[4]),
    .LI(Maddsub_C_share0000_lut[5]),
    .O(C_share0000[5])
  );
  MUXCY   \Maddsub_C_share0000_cy<6>  (
    .CI(Maddsub_C_share0000_cy[5]),
    .DI(A_6_IBUF_66),
    .S(Maddsub_C_share0000_lut[6]),
    .O(Maddsub_C_share0000_cy[6])
  );
  XORCY   \Maddsub_C_share0000_xor<6>  (
    .CI(Maddsub_C_share0000_cy[5]),
    .LI(Maddsub_C_share0000_lut[6]),
    .O(C_share0000[6])
  );
  MUXCY   \Maddsub_C_share0000_cy<7>  (
    .CI(Maddsub_C_share0000_cy[6]),
    .DI(A_7_IBUF_67),
    .S(Maddsub_C_share0000_lut[7]),
    .O(Maddsub_C_share0000_cy[7])
  );
  XORCY   \Maddsub_C_share0000_xor<7>  (
    .CI(Maddsub_C_share0000_cy[6]),
    .LI(Maddsub_C_share0000_lut[7]),
    .O(C_share0000[7])
  );
  MUXCY   \Maddsub_C_share0000_cy<8>  (
    .CI(Maddsub_C_share0000_cy[7]),
    .DI(A_8_IBUF_68),
    .S(Maddsub_C_share0000_lut[8]),
    .O(Maddsub_C_share0000_cy[8])
  );
  XORCY   \Maddsub_C_share0000_xor<8>  (
    .CI(Maddsub_C_share0000_cy[7]),
    .LI(Maddsub_C_share0000_lut[8]),
    .O(C_share0000[8])
  );
  MUXCY   \Maddsub_C_share0000_cy<9>  (
    .CI(Maddsub_C_share0000_cy[8]),
    .DI(A_9_IBUF_69),
    .S(Maddsub_C_share0000_lut[9]),
    .O(Maddsub_C_share0000_cy[9])
  );
  XORCY   \Maddsub_C_share0000_xor<9>  (
    .CI(Maddsub_C_share0000_cy[8]),
    .LI(Maddsub_C_share0000_lut[9]),
    .O(C_share0000[9])
  );
  MUXCY   \Maddsub_C_share0000_cy<10>  (
    .CI(Maddsub_C_share0000_cy[9]),
    .DI(A_10_IBUF_39),
    .S(Maddsub_C_share0000_lut[10]),
    .O(Maddsub_C_share0000_cy[10])
  );
  XORCY   \Maddsub_C_share0000_xor<10>  (
    .CI(Maddsub_C_share0000_cy[9]),
    .LI(Maddsub_C_share0000_lut[10]),
    .O(C_share0000[10])
  );
  MUXCY   \Maddsub_C_share0000_cy<11>  (
    .CI(Maddsub_C_share0000_cy[10]),
    .DI(A_11_IBUF_40),
    .S(Maddsub_C_share0000_lut[11]),
    .O(Maddsub_C_share0000_cy[11])
  );
  XORCY   \Maddsub_C_share0000_xor<11>  (
    .CI(Maddsub_C_share0000_cy[10]),
    .LI(Maddsub_C_share0000_lut[11]),
    .O(C_share0000[11])
  );
  MUXCY   \Maddsub_C_share0000_cy<12>  (
    .CI(Maddsub_C_share0000_cy[11]),
    .DI(A_12_IBUF_41),
    .S(Maddsub_C_share0000_lut[12]),
    .O(Maddsub_C_share0000_cy[12])
  );
  XORCY   \Maddsub_C_share0000_xor<12>  (
    .CI(Maddsub_C_share0000_cy[11]),
    .LI(Maddsub_C_share0000_lut[12]),
    .O(C_share0000[12])
  );
  MUXCY   \Maddsub_C_share0000_cy<13>  (
    .CI(Maddsub_C_share0000_cy[12]),
    .DI(A_13_IBUF_42),
    .S(Maddsub_C_share0000_lut[13]),
    .O(Maddsub_C_share0000_cy[13])
  );
  XORCY   \Maddsub_C_share0000_xor<13>  (
    .CI(Maddsub_C_share0000_cy[12]),
    .LI(Maddsub_C_share0000_lut[13]),
    .O(C_share0000[13])
  );
  MUXCY   \Maddsub_C_share0000_cy<14>  (
    .CI(Maddsub_C_share0000_cy[13]),
    .DI(A_14_IBUF_43),
    .S(Maddsub_C_share0000_lut[14]),
    .O(Maddsub_C_share0000_cy[14])
  );
  XORCY   \Maddsub_C_share0000_xor<14>  (
    .CI(Maddsub_C_share0000_cy[13]),
    .LI(Maddsub_C_share0000_lut[14]),
    .O(C_share0000[14])
  );
  MUXCY   \Maddsub_C_share0000_cy<15>  (
    .CI(Maddsub_C_share0000_cy[14]),
    .DI(A_15_IBUF_44),
    .S(Maddsub_C_share0000_lut[15]),
    .O(Maddsub_C_share0000_cy[15])
  );
  XORCY   \Maddsub_C_share0000_xor<15>  (
    .CI(Maddsub_C_share0000_cy[14]),
    .LI(Maddsub_C_share0000_lut[15]),
    .O(C_share0000[15])
  );
  MUXCY   \Maddsub_C_share0000_cy<16>  (
    .CI(Maddsub_C_share0000_cy[15]),
    .DI(A_16_IBUF_45),
    .S(Maddsub_C_share0000_lut[16]),
    .O(Maddsub_C_share0000_cy[16])
  );
  XORCY   \Maddsub_C_share0000_xor<16>  (
    .CI(Maddsub_C_share0000_cy[15]),
    .LI(Maddsub_C_share0000_lut[16]),
    .O(C_share0000[16])
  );
  MUXCY   \Maddsub_C_share0000_cy<17>  (
    .CI(Maddsub_C_share0000_cy[16]),
    .DI(A_17_IBUF_46),
    .S(Maddsub_C_share0000_lut[17]),
    .O(Maddsub_C_share0000_cy[17])
  );
  XORCY   \Maddsub_C_share0000_xor<17>  (
    .CI(Maddsub_C_share0000_cy[16]),
    .LI(Maddsub_C_share0000_lut[17]),
    .O(C_share0000[17])
  );
  MUXCY   \Maddsub_C_share0000_cy<18>  (
    .CI(Maddsub_C_share0000_cy[17]),
    .DI(A_18_IBUF_47),
    .S(Maddsub_C_share0000_lut[18]),
    .O(Maddsub_C_share0000_cy[18])
  );
  XORCY   \Maddsub_C_share0000_xor<18>  (
    .CI(Maddsub_C_share0000_cy[17]),
    .LI(Maddsub_C_share0000_lut[18]),
    .O(C_share0000[18])
  );
  MUXCY   \Maddsub_C_share0000_cy<19>  (
    .CI(Maddsub_C_share0000_cy[18]),
    .DI(A_19_IBUF_48),
    .S(Maddsub_C_share0000_lut[19]),
    .O(Maddsub_C_share0000_cy[19])
  );
  XORCY   \Maddsub_C_share0000_xor<19>  (
    .CI(Maddsub_C_share0000_cy[18]),
    .LI(Maddsub_C_share0000_lut[19]),
    .O(C_share0000[19])
  );
  MUXCY   \Maddsub_C_share0000_cy<20>  (
    .CI(Maddsub_C_share0000_cy[19]),
    .DI(A_20_IBUF_50),
    .S(Maddsub_C_share0000_lut[20]),
    .O(Maddsub_C_share0000_cy[20])
  );
  XORCY   \Maddsub_C_share0000_xor<20>  (
    .CI(Maddsub_C_share0000_cy[19]),
    .LI(Maddsub_C_share0000_lut[20]),
    .O(C_share0000[20])
  );
  MUXCY   \Maddsub_C_share0000_cy<21>  (
    .CI(Maddsub_C_share0000_cy[20]),
    .DI(A_21_IBUF_51),
    .S(Maddsub_C_share0000_lut[21]),
    .O(Maddsub_C_share0000_cy[21])
  );
  XORCY   \Maddsub_C_share0000_xor<21>  (
    .CI(Maddsub_C_share0000_cy[20]),
    .LI(Maddsub_C_share0000_lut[21]),
    .O(C_share0000[21])
  );
  MUXCY   \Maddsub_C_share0000_cy<22>  (
    .CI(Maddsub_C_share0000_cy[21]),
    .DI(A_22_IBUF_52),
    .S(Maddsub_C_share0000_lut[22]),
    .O(Maddsub_C_share0000_cy[22])
  );
  XORCY   \Maddsub_C_share0000_xor<22>  (
    .CI(Maddsub_C_share0000_cy[21]),
    .LI(Maddsub_C_share0000_lut[22]),
    .O(C_share0000[22])
  );
  MUXCY   \Maddsub_C_share0000_cy<23>  (
    .CI(Maddsub_C_share0000_cy[22]),
    .DI(A_23_IBUF_53),
    .S(Maddsub_C_share0000_lut[23]),
    .O(Maddsub_C_share0000_cy[23])
  );
  XORCY   \Maddsub_C_share0000_xor<23>  (
    .CI(Maddsub_C_share0000_cy[22]),
    .LI(Maddsub_C_share0000_lut[23]),
    .O(C_share0000[23])
  );
  MUXCY   \Maddsub_C_share0000_cy<24>  (
    .CI(Maddsub_C_share0000_cy[23]),
    .DI(A_24_IBUF_54),
    .S(Maddsub_C_share0000_lut[24]),
    .O(Maddsub_C_share0000_cy[24])
  );
  XORCY   \Maddsub_C_share0000_xor<24>  (
    .CI(Maddsub_C_share0000_cy[23]),
    .LI(Maddsub_C_share0000_lut[24]),
    .O(C_share0000[24])
  );
  MUXCY   \Maddsub_C_share0000_cy<25>  (
    .CI(Maddsub_C_share0000_cy[24]),
    .DI(A_25_IBUF_55),
    .S(Maddsub_C_share0000_lut[25]),
    .O(Maddsub_C_share0000_cy[25])
  );
  XORCY   \Maddsub_C_share0000_xor<25>  (
    .CI(Maddsub_C_share0000_cy[24]),
    .LI(Maddsub_C_share0000_lut[25]),
    .O(C_share0000[25])
  );
  MUXCY   \Maddsub_C_share0000_cy<26>  (
    .CI(Maddsub_C_share0000_cy[25]),
    .DI(A_26_IBUF_56),
    .S(Maddsub_C_share0000_lut[26]),
    .O(Maddsub_C_share0000_cy[26])
  );
  XORCY   \Maddsub_C_share0000_xor<26>  (
    .CI(Maddsub_C_share0000_cy[25]),
    .LI(Maddsub_C_share0000_lut[26]),
    .O(C_share0000[26])
  );
  MUXCY   \Maddsub_C_share0000_cy<27>  (
    .CI(Maddsub_C_share0000_cy[26]),
    .DI(A_27_IBUF_57),
    .S(Maddsub_C_share0000_lut[27]),
    .O(Maddsub_C_share0000_cy[27])
  );
  XORCY   \Maddsub_C_share0000_xor<27>  (
    .CI(Maddsub_C_share0000_cy[26]),
    .LI(Maddsub_C_share0000_lut[27]),
    .O(C_share0000[27])
  );
  MUXCY   \Maddsub_C_share0000_cy<28>  (
    .CI(Maddsub_C_share0000_cy[27]),
    .DI(A_28_IBUF_58),
    .S(Maddsub_C_share0000_lut[28]),
    .O(Maddsub_C_share0000_cy[28])
  );
  XORCY   \Maddsub_C_share0000_xor<28>  (
    .CI(Maddsub_C_share0000_cy[27]),
    .LI(Maddsub_C_share0000_lut[28]),
    .O(C_share0000[28])
  );
  MUXCY   \Maddsub_C_share0000_cy<29>  (
    .CI(Maddsub_C_share0000_cy[28]),
    .DI(A_29_IBUF_59),
    .S(Maddsub_C_share0000_lut[29]),
    .O(Maddsub_C_share0000_cy[29])
  );
  XORCY   \Maddsub_C_share0000_xor<29>  (
    .CI(Maddsub_C_share0000_cy[28]),
    .LI(Maddsub_C_share0000_lut[29]),
    .O(C_share0000[29])
  );
  MUXCY   \Maddsub_C_share0000_cy<30>  (
    .CI(Maddsub_C_share0000_cy[29]),
    .DI(A_30_IBUF_61),
    .S(Maddsub_C_share0000_lut[30]),
    .O(Maddsub_C_share0000_cy[30])
  );
  XORCY   \Maddsub_C_share0000_xor<30>  (
    .CI(Maddsub_C_share0000_cy[29]),
    .LI(Maddsub_C_share0000_lut[30]),
    .O(C_share0000[30])
  );
  XORCY   \Maddsub_C_share0000_xor<31>  (
    .CI(Maddsub_C_share0000_cy[30]),
    .LI(Maddsub_C_share0000_lut[31]),
    .O(C_share0000[31])
  );
  LD   C_0 (
    .D(C_mux0001[0]),
    .G(C_not0001),
    .Q(C_0_166)
  );
  LD   C_1 (
    .D(C_mux0001[1]),
    .G(C_not0001),
    .Q(C_1_167)
  );
  LD   C_2 (
    .D(C_mux0001[2]),
    .G(C_not0001),
    .Q(C_2_178)
  );
  LD   C_3 (
    .D(C_mux0001[3]),
    .G(C_not0001),
    .Q(C_3_189)
  );
  LD   C_4 (
    .D(C_mux0001[4]),
    .G(C_not0001),
    .Q(C_4_192)
  );
  LD   C_5 (
    .D(C_mux0001[5]),
    .G(C_not0001),
    .Q(C_5_193)
  );
  LD   C_6 (
    .D(C_mux0001[6]),
    .G(C_not0001),
    .Q(C_6_194)
  );
  LD   C_7 (
    .D(C_mux0001[7]),
    .G(C_not0001),
    .Q(C_7_195)
  );
  LD   C_8 (
    .D(C_mux0001[8]),
    .G(C_not0001),
    .Q(C_8_196)
  );
  LD   C_9 (
    .D(C_mux0001[9]),
    .G(C_not0001),
    .Q(C_9_197)
  );
  LD   C_10 (
    .D(C_mux0001[10]),
    .G(C_not0001),
    .Q(C_10_168)
  );
  LD   C_11 (
    .D(C_mux0001[11]),
    .G(C_not0001),
    .Q(C_11_169)
  );
  LD   C_12 (
    .D(C_mux0001[12]),
    .G(C_not0001),
    .Q(C_12_170)
  );
  LD   C_13 (
    .D(C_mux0001[13]),
    .G(C_not0001),
    .Q(C_13_171)
  );
  LD   C_14 (
    .D(C_mux0001[14]),
    .G(C_not0001),
    .Q(C_14_172)
  );
  LD   C_15 (
    .D(C_mux0001[15]),
    .G(C_not0001),
    .Q(C_15_173)
  );
  LD   C_16 (
    .D(C_mux0001[16]),
    .G(C_not0001),
    .Q(C_16_174)
  );
  LD   C_17 (
    .D(C_mux0001[17]),
    .G(C_not0001),
    .Q(C_17_175)
  );
  LD   C_18 (
    .D(C_mux0001[18]),
    .G(C_not0001),
    .Q(C_18_176)
  );
  LD   C_19 (
    .D(C_mux0001[19]),
    .G(C_not0001),
    .Q(C_19_177)
  );
  LD   C_20 (
    .D(C_mux0001[20]),
    .G(C_not0001),
    .Q(C_20_179)
  );
  LD   C_21 (
    .D(C_mux0001[21]),
    .G(C_not0001),
    .Q(C_21_180)
  );
  LD   C_22 (
    .D(C_mux0001[22]),
    .G(C_not0001),
    .Q(C_22_181)
  );
  LD   C_23 (
    .D(C_mux0001[23]),
    .G(C_not0001),
    .Q(C_23_182)
  );
  LD   C_24 (
    .D(C_mux0001[24]),
    .G(C_not0001),
    .Q(C_24_183)
  );
  LD   C_25 (
    .D(C_mux0001[25]),
    .G(C_not0001),
    .Q(C_25_184)
  );
  LD   C_26 (
    .D(C_mux0001[26]),
    .G(C_not0001),
    .Q(C_26_185)
  );
  LD   C_27 (
    .D(C_mux0001[27]),
    .G(C_not0001),
    .Q(C_27_186)
  );
  LD   C_28 (
    .D(C_mux0001[28]),
    .G(C_not0001),
    .Q(C_28_187)
  );
  LD   C_29 (
    .D(C_mux0001[29]),
    .G(C_not0001),
    .Q(C_29_188)
  );
  LD   C_30 (
    .D(C_mux0001[30]),
    .G(C_not0001),
    .Q(C_30_190)
  );
  LD   C_31 (
    .D(C_mux0001[31]),
    .G(C_not0001),
    .Q(C_31_191)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \C_or0001_wg_lut<0>  (
    .I0(B_22_IBUF_116),
    .I1(B_24_IBUF_118),
    .I2(B_21_IBUF_115),
    .O(C_or0001_wg_lut[0])
  );
  MUXCY   \C_or0001_wg_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(C_or0001_wg_lut[0]),
    .O(C_or0001_wg_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<1>  (
    .I0(B_20_IBUF_114),
    .I1(B_19_IBUF_112),
    .I2(B_25_IBUF_119),
    .I3(B_16_IBUF_109),
    .O(C_or0001_wg_lut[1])
  );
  MUXCY   \C_or0001_wg_cy<1>  (
    .CI(C_or0001_wg_cy[0]),
    .DI(N1),
    .S(C_or0001_wg_lut[1]),
    .O(C_or0001_wg_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<2>  (
    .I0(B_18_IBUF_111),
    .I1(B_17_IBUF_110),
    .I2(B_23_IBUF_117),
    .I3(B_15_IBUF_108),
    .O(C_or0001_wg_lut[2])
  );
  MUXCY   \C_or0001_wg_cy<2>  (
    .CI(C_or0001_wg_cy[1]),
    .DI(N1),
    .S(C_or0001_wg_lut[2]),
    .O(C_or0001_wg_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<3>  (
    .I0(B_14_IBUF_107),
    .I1(B_13_IBUF_106),
    .I2(B_26_IBUF_120),
    .I3(B_12_IBUF_105),
    .O(C_or0001_wg_lut[3])
  );
  MUXCY   \C_or0001_wg_cy<3>  (
    .CI(C_or0001_wg_cy[2]),
    .DI(N1),
    .S(C_or0001_wg_lut[3]),
    .O(C_or0001_wg_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<4>  (
    .I0(B_9_IBUF_133),
    .I1(B_11_IBUF_104),
    .I2(B_27_IBUF_121),
    .I3(B_10_IBUF_103),
    .O(C_or0001_wg_lut[4])
  );
  MUXCY   \C_or0001_wg_cy<4>  (
    .CI(C_or0001_wg_cy[3]),
    .DI(N1),
    .S(C_or0001_wg_lut[4]),
    .O(C_or0001_wg_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<5>  (
    .I0(B_6_IBUF_130),
    .I1(B_8_IBUF_132),
    .I2(B_28_IBUF_122),
    .I3(B_7_IBUF_131),
    .O(C_or0001_wg_lut[5])
  );
  MUXCY   \C_or0001_wg_cy<5>  (
    .CI(C_or0001_wg_cy[4]),
    .DI(N1),
    .S(C_or0001_wg_lut[5]),
    .O(C_or0001_wg_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_or0001_wg_lut<6>  (
    .I0(B_30_IBUF_125),
    .I1(B_5_IBUF_129),
    .I2(B_29_IBUF_123),
    .I3(B_31_IBUF_126),
    .O(C_or0001_wg_lut[6])
  );
  MUXCY   \C_or0001_wg_cy<6>  (
    .CI(C_or0001_wg_cy[5]),
    .DI(N1),
    .S(C_or0001_wg_lut[6]),
    .O(C_or0001)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<0>  (
    .I0(A_8_IBUF_68),
    .I1(A_9_IBUF_69),
    .I2(A_7_IBUF_67),
    .I3(A_10_IBUF_39),
    .O(C_and0004_wg_lut[0])
  );
  MUXCY   \C_and0004_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(C_and0004_wg_lut[0]),
    .O(C_and0004_wg_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<1>  (
    .I0(A_11_IBUF_40),
    .I1(A_12_IBUF_41),
    .I2(A_6_IBUF_66),
    .I3(A_13_IBUF_42),
    .O(C_and0004_wg_lut[1])
  );
  MUXCY   \C_and0004_wg_cy<1>  (
    .CI(C_and0004_wg_cy[0]),
    .DI(N0),
    .S(C_and0004_wg_lut[1]),
    .O(C_and0004_wg_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<2>  (
    .I0(A_14_IBUF_43),
    .I1(A_15_IBUF_44),
    .I2(A_5_IBUF_65),
    .I3(A_16_IBUF_45),
    .O(C_and0004_wg_lut[2])
  );
  MUXCY   \C_and0004_wg_cy<2>  (
    .CI(C_and0004_wg_cy[1]),
    .DI(N0),
    .S(C_and0004_wg_lut[2]),
    .O(C_and0004_wg_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<3>  (
    .I0(A_17_IBUF_46),
    .I1(A_18_IBUF_47),
    .I2(A_4_IBUF_64),
    .I3(A_19_IBUF_48),
    .O(C_and0004_wg_lut[3])
  );
  MUXCY   \C_and0004_wg_cy<3>  (
    .CI(C_and0004_wg_cy[2]),
    .DI(N0),
    .S(C_and0004_wg_lut[3]),
    .O(C_and0004_wg_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<4>  (
    .I0(A_20_IBUF_50),
    .I1(A_21_IBUF_51),
    .I2(A_3_IBUF_63),
    .I3(A_22_IBUF_52),
    .O(C_and0004_wg_lut[4])
  );
  MUXCY   \C_and0004_wg_cy<4>  (
    .CI(C_and0004_wg_cy[3]),
    .DI(N0),
    .S(C_and0004_wg_lut[4]),
    .O(C_and0004_wg_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<5>  (
    .I0(A_23_IBUF_53),
    .I1(A_24_IBUF_54),
    .I2(A_2_IBUF_60),
    .I3(A_25_IBUF_55),
    .O(C_and0004_wg_lut[5])
  );
  MUXCY   \C_and0004_wg_cy<5>  (
    .CI(C_and0004_wg_cy[4]),
    .DI(N0),
    .S(C_and0004_wg_lut[5]),
    .O(C_and0004_wg_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<6>  (
    .I0(A_26_IBUF_56),
    .I1(A_27_IBUF_57),
    .I2(A_1_IBUF_49),
    .I3(A_28_IBUF_58),
    .O(C_and0004_wg_lut[6])
  );
  MUXCY   \C_and0004_wg_cy<6>  (
    .CI(C_and0004_wg_cy[5]),
    .DI(N0),
    .S(C_and0004_wg_lut[6]),
    .O(C_and0004_wg_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0004_wg_lut<7>  (
    .I0(A_29_IBUF_59),
    .I1(A_30_IBUF_61),
    .I2(A_0_IBUF_38),
    .I3(A_31_IBUF_62),
    .O(C_and0004_wg_lut[7])
  );
  MUXCY   \C_and0004_wg_cy<7>  (
    .CI(C_and0004_wg_cy[6]),
    .DI(N0),
    .S(C_and0004_wg_lut[7]),
    .O(C_and0004)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \C_and0005_wg_lut<0>  (
    .I0(B_15_IBUF_108),
    .I1(B_16_IBUF_109),
    .O(C_and0005_wg_lut[0])
  );
  MUXCY   \C_and0005_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(C_and0005_wg_lut[0]),
    .O(C_and0005_wg_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<1>  (
    .I0(B_17_IBUF_110),
    .I1(B_18_IBUF_111),
    .I2(B_14_IBUF_107),
    .I3(B_19_IBUF_112),
    .O(C_and0005_wg_lut[1])
  );
  MUXCY   \C_and0005_wg_cy<1>  (
    .CI(C_and0005_wg_cy[0]),
    .DI(N0),
    .S(C_and0005_wg_lut[1]),
    .O(C_and0005_wg_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<2>  (
    .I0(B_20_IBUF_114),
    .I1(B_21_IBUF_115),
    .I2(B_13_IBUF_106),
    .I3(B_24_IBUF_118),
    .O(C_and0005_wg_lut[2])
  );
  MUXCY   \C_and0005_wg_cy<2>  (
    .CI(C_and0005_wg_cy[1]),
    .DI(N0),
    .S(C_and0005_wg_lut[2]),
    .O(C_and0005_wg_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<3>  (
    .I0(B_22_IBUF_116),
    .I1(B_23_IBUF_117),
    .I2(B_12_IBUF_105),
    .I3(B_25_IBUF_119),
    .O(C_and0005_wg_lut[3])
  );
  MUXCY   \C_and0005_wg_cy<3>  (
    .CI(C_and0005_wg_cy[2]),
    .DI(N0),
    .S(C_and0005_wg_lut[3]),
    .O(C_and0005_wg_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<4>  (
    .I0(B_26_IBUF_120),
    .I1(B_27_IBUF_121),
    .I2(B_11_IBUF_104),
    .I3(B_28_IBUF_122),
    .O(C_and0005_wg_lut[4])
  );
  MUXCY   \C_and0005_wg_cy<4>  (
    .CI(C_and0005_wg_cy[3]),
    .DI(N0),
    .S(C_and0005_wg_lut[4]),
    .O(C_and0005_wg_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<5>  (
    .I0(B_29_IBUF_123),
    .I1(B_30_IBUF_125),
    .I2(B_10_IBUF_103),
    .I3(B_31_IBUF_126),
    .O(C_and0005_wg_lut[5])
  );
  MUXCY   \C_and0005_wg_cy<5>  (
    .CI(C_and0005_wg_cy[4]),
    .DI(N0),
    .S(C_and0005_wg_lut[5]),
    .O(C_and0005_wg_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<6>  (
    .I0(B_4_IBUF_128),
    .I1(B_5_IBUF_129),
    .I2(N6),
    .I3(B_6_IBUF_130),
    .O(C_and0005_wg_lut[6])
  );
  MUXCY   \C_and0005_wg_cy<6>  (
    .CI(C_and0005_wg_cy[5]),
    .DI(N0),
    .S(C_and0005_wg_lut[6]),
    .O(C_and0005_wg_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C_and0005_wg_lut<7>  (
    .I0(B_7_IBUF_131),
    .I1(B_8_IBUF_132),
    .I2(N14),
    .I3(B_9_IBUF_133),
    .O(C_and0005_wg_lut[7])
  );
  MUXCY   \C_and0005_wg_cy<7>  (
    .CI(C_and0005_wg_cy[6]),
    .DI(N0),
    .S(C_and0005_wg_lut[7]),
    .O(C_and0005)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  C_not00011 (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_2_IBUF_37),
    .O(C_not00011_266)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  C_cmp_eq00031 (
    .I0(ALUOp_2_IBUF_37),
    .I1(ALUOp_1_IBUF_36),
    .I2(ALUOp_0_IBUF_35),
    .O(C_cmp_eq0003)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Sh15111 (
    .I0(A_31_IBUF_62),
    .I1(B_3_IBUF_127),
    .O(N30)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \C_mux0002<31>11  (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_2_IBUF_37),
    .I2(ALUOp_0_IBUF_35),
    .O(C_cmp_eq0005)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh1261 (
    .I0(B_1_IBUF_113),
    .I1(A_31_IBUF_62),
    .I2(B_0_IBUF_102),
    .I3(A_30_IBUF_61),
    .O(Sh126)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh591 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh123_571),
    .I3(Sh31),
    .O(Sh59)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh581 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh122_570),
    .I3(Sh30),
    .O(Sh58)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh571 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh121_569),
    .I3(Sh29),
    .O(Sh57)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh561 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh120_568),
    .I3(Sh124_572),
    .O(Sh56)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh301 (
    .I0(B_1_IBUF_113),
    .I1(B_0_IBUF_102),
    .I2(A_30_IBUF_61),
    .I3(A_31_IBUF_62),
    .O(Sh30)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00011660 (
    .I0(N01),
    .I1(N8),
    .I2(C_share0000[16]),
    .I3(Mmux_C_mux00011625_385),
    .O(C_mux0001[16])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001329 (
    .I0(Sh55),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001329_406)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001349 (
    .I0(N9),
    .I1(Sh56),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001349_408)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh1251 (
    .I0(B_1_IBUF_113),
    .I1(A_31_IBUF_62),
    .I2(N11),
    .O(Sh125)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh1467 (
    .I0(B_3_IBUF_127),
    .I1(Sh126),
    .I2(Sh118_566),
    .O(Sh1467_622)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh14627 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh114_562),
    .I3(Sh122_570),
    .O(Sh14627_621)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh14629 (
    .I0(B_2_IBUF_124),
    .I1(Sh1467_622),
    .I2(Sh14627_621),
    .O(Sh146)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh1457 (
    .I0(B_3_IBUF_127),
    .I1(Sh125),
    .I2(Sh117_565),
    .O(Sh1457_619)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh14527 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh113_561),
    .I3(Sh121_569),
    .O(Sh14527_618)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh14529 (
    .I0(B_2_IBUF_124),
    .I1(Sh1457_619),
    .I2(Sh14527_618),
    .O(Sh145)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh14819 (
    .I0(B_3_IBUF_127),
    .I1(Sh124_572),
    .I2(Sh116_564),
    .O(Sh1447)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh14719 (
    .I0(B_3_IBUF_127),
    .I1(Sh123_571),
    .I2(Sh115_563),
    .O(Sh14719_624)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001269 (
    .I0(Sh52_651),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001269_400)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00012646 (
    .I0(N01),
    .I1(Mmux_C_mux0001269_400),
    .I2(C_share0000[20]),
    .I3(Mmux_C_mux00012619_399),
    .O(C_mux0001[20])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001309 (
    .I0(Sh54_653),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001309_404)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00013055 (
    .I0(N01),
    .I1(Mmux_C_mux0001309_404),
    .I2(C_share0000[22]),
    .I3(Mmux_C_mux00013022_403),
    .O(C_mux0001[22])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001289 (
    .I0(Sh53_652),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001289_402)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00012855 (
    .I0(N01),
    .I1(Mmux_C_mux0001289_402),
    .I2(C_share0000[21]),
    .I3(Mmux_C_mux00012822_401),
    .O(C_mux0001[21])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001229 (
    .I0(Sh51),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001229_396)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00012255 (
    .I0(N01),
    .I1(Mmux_C_mux0001229_396),
    .I2(C_share0000[19]),
    .I3(Mmux_C_mux00012222_394),
    .O(C_mux0001[19])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001209 (
    .I0(Sh50),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001209_390)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00012055 (
    .I0(N01),
    .I1(Mmux_C_mux0001209_390),
    .I2(C_share0000[18]),
    .I3(Mmux_C_mux00012022_389),
    .O(C_mux0001[18])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux0001189 (
    .I0(Sh49),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N8),
    .O(Mmux_C_mux0001189_388)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00011855 (
    .I0(N01),
    .I1(Mmux_C_mux0001189_388),
    .I2(C_share0000[17]),
    .I3(Mmux_C_mux00011822_387),
    .O(C_mux0001[17])
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00014061 (
    .I0(N01),
    .I1(N8),
    .I2(C_share0000[27]),
    .I3(Mmux_C_mux00014023_412),
    .O(C_mux0001[27])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Mmux_C_mux00014423 (
    .I0(Mmux_C_mux00011818),
    .I1(Mmux_C_mux0001445_419),
    .I2(N9),
    .I3(Mmux_C_mux00014416_417),
    .O(Mmux_C_mux00014423_418)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00014458 (
    .I0(N01),
    .I1(N8),
    .I2(C_share0000[29]),
    .I3(Mmux_C_mux00014423_418),
    .O(C_mux0001[29])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Mmux_C_mux00014825 (
    .I0(Mmux_C_mux00011818),
    .I1(Mmux_C_mux0001485_423),
    .I2(N9),
    .I3(Mmux_C_mux00014817_421),
    .O(Mmux_C_mux00014825_422)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00014863 (
    .I0(N01),
    .I1(N8),
    .I2(C_share0000[30]),
    .I3(Mmux_C_mux00014825_422),
    .O(C_mux0001[30])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mmux_C_mux00011011 (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_2_IBUF_37),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Mmux_C_mux0001509 (
    .I0(C_cmp_eq0005),
    .I1(A_31_IBUF_62),
    .I2(C_or0001),
    .I3(N28),
    .O(Mmux_C_mux0001509_425)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_C_mux00015020 (
    .I0(N9),
    .I1(Sh31),
    .I2(N6),
    .I3(B_4_IBUF_128),
    .O(Mmux_C_mux00015020_424)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00015047 (
    .I0(N01),
    .I1(Mmux_C_mux0001509_425),
    .I2(C_share0000[31]),
    .I3(Mmux_C_mux00015020_424),
    .O(C_mux0001[31])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \C_mux0002<10>11  (
    .I0(ALUOp_2_IBUF_37),
    .I1(C_or0001),
    .I2(ALUOp_0_IBUF_35),
    .I3(ALUOp_1_IBUF_36),
    .O(N9)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Sh15511 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh12311 (
    .I0(B_0_IBUF_102),
    .I1(A_30_IBUF_61),
    .I2(A_29_IBUF_59),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Sh552 (
    .I0(Sh31),
    .I1(B_3_IBUF_127),
    .I2(B_2_IBUF_124),
    .I3(N32),
    .O(Sh55)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh5511 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh119_567),
    .I3(Sh123_571),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh291 (
    .I0(B_1_IBUF_113),
    .I1(N11),
    .I2(B_0_IBUF_102),
    .I3(A_31_IBUF_62),
    .O(Sh29)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh123_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_28_IBUF_58),
    .I2(A_27_IBUF_57),
    .O(N39)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh123 (
    .I0(B_1_IBUF_113),
    .I1(N11),
    .I2(N39),
    .O(Sh123_571)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C_mux0002<0>2211  (
    .I0(C_or0001),
    .I1(N28),
    .O(N28)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh1427 (
    .I0(B_3_IBUF_127),
    .I1(Sh122_570),
    .I2(Sh114_562),
    .O(Sh1427_613)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh14227 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh110_558),
    .I3(Sh118_566),
    .O(Sh14227_612)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh14229 (
    .I0(B_2_IBUF_124),
    .I1(Sh1427_613),
    .I2(Sh14227_612),
    .O(Sh142)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh1417 (
    .I0(B_3_IBUF_127),
    .I1(Sh121_569),
    .I2(Sh113_561),
    .O(Sh1417_610)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh14127 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh109_557),
    .I3(Sh117_565),
    .O(Sh14127_609)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh14129 (
    .I0(B_2_IBUF_124),
    .I1(Sh1417_610),
    .I2(Sh14127_609),
    .O(Sh141)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh122_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_27_IBUF_57),
    .I2(A_26_IBUF_56),
    .O(N47)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh122_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_29_IBUF_59),
    .I2(A_28_IBUF_58),
    .O(N48)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh122 (
    .I0(B_1_IBUF_113),
    .I1(N48),
    .I2(N47),
    .O(Sh122_570)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh121_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_26_IBUF_56),
    .I2(A_25_IBUF_55),
    .O(N50)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh121 (
    .I0(B_1_IBUF_113),
    .I1(N39),
    .I2(N50),
    .O(Sh121_569)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh119_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_24_IBUF_54),
    .I2(A_23_IBUF_53),
    .O(N53)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh119 (
    .I0(B_1_IBUF_113),
    .I1(N50),
    .I2(N53),
    .O(Sh119_567)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh118_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_23_IBUF_53),
    .I2(A_22_IBUF_52),
    .O(N56)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh118_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_25_IBUF_55),
    .I2(A_24_IBUF_54),
    .O(N57)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh118 (
    .I0(B_1_IBUF_113),
    .I1(N57),
    .I2(N56),
    .O(Sh118_566)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh117_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_22_IBUF_52),
    .I2(A_21_IBUF_51),
    .O(N59)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh117 (
    .I0(B_1_IBUF_113),
    .I1(N53),
    .I2(N59),
    .O(Sh117_565)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh115_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_20_IBUF_50),
    .I2(A_19_IBUF_48),
    .O(N62)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh115 (
    .I0(B_1_IBUF_113),
    .I1(N59),
    .I2(N62),
    .O(Sh115_563)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh114_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_19_IBUF_48),
    .I2(A_18_IBUF_47),
    .O(N65)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh114_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_21_IBUF_51),
    .I2(A_20_IBUF_50),
    .O(N66)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh114 (
    .I0(B_1_IBUF_113),
    .I1(N66),
    .I2(N65),
    .O(Sh114_562)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh113_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_18_IBUF_47),
    .I2(A_17_IBUF_46),
    .O(N68)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh113 (
    .I0(B_1_IBUF_113),
    .I1(N62),
    .I2(N68),
    .O(Sh113_561)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh111_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_16_IBUF_45),
    .I2(A_15_IBUF_44),
    .O(N71)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh111 (
    .I0(B_1_IBUF_113),
    .I1(N68),
    .I2(N71),
    .O(Sh111_559)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh110_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_15_IBUF_44),
    .I2(A_14_IBUF_43),
    .O(N74)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh110_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_17_IBUF_46),
    .I2(A_16_IBUF_45),
    .O(N75)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh110 (
    .I0(B_1_IBUF_113),
    .I1(N75),
    .I2(N74),
    .O(Sh110_558)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh109_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_14_IBUF_43),
    .I2(A_13_IBUF_42),
    .O(N77)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh109 (
    .I0(B_1_IBUF_113),
    .I1(N71),
    .I2(N77),
    .O(Sh109_557)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh107_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_12_IBUF_41),
    .I2(A_11_IBUF_40),
    .O(N80)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh107 (
    .I0(B_1_IBUF_113),
    .I1(N77),
    .I2(N80),
    .O(Sh107_555)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh105_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_10_IBUF_39),
    .I2(A_9_IBUF_69),
    .O(N83)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh105 (
    .I0(B_1_IBUF_113),
    .I1(N80),
    .I2(N83),
    .O(Sh105_554)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh103_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_8_IBUF_68),
    .I2(A_7_IBUF_67),
    .O(N86)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh103 (
    .I0(B_1_IBUF_113),
    .I1(N83),
    .I2(N86),
    .O(Sh103_552)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh102_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_7_IBUF_67),
    .I2(A_6_IBUF_66),
    .O(N89)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh102_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_9_IBUF_69),
    .I2(A_8_IBUF_68),
    .O(N90)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh102 (
    .I0(B_1_IBUF_113),
    .I1(N90),
    .I2(N89),
    .O(Sh102_551)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh10_SW0 (
    .I0(B_0_IBUF_102),
    .I1(A_11_IBUF_40),
    .I2(A_10_IBUF_39),
    .O(N95)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh10_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_13_IBUF_42),
    .I2(A_12_IBUF_41),
    .O(N96)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh10 (
    .I0(B_1_IBUF_113),
    .I1(N96),
    .I2(N95),
    .O(Sh10_544)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00016431 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh137),
    .I3(Sh57),
    .O(Mmux_C_mux00016431_435)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux0001631 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh139),
    .I3(Sh59),
    .O(Mmux_C_mux0001631_434)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00015831 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh134),
    .I3(Sh54_653),
    .O(Mmux_C_mux00015831_429)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00015631 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh133),
    .I3(Sh53_652),
    .O(Mmux_C_mux00015631_428)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00015431 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh132),
    .I3(Sh52_651),
    .O(Mmux_C_mux00015431_427)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00015231 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh131),
    .I3(Sh51),
    .O(Mmux_C_mux00015231_426)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00014631 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh130),
    .I3(Sh50),
    .O(Mmux_C_mux00014631_420)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux0001431 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh138),
    .I3(Sh58),
    .O(Mmux_C_mux0001431_414)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012431 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh129),
    .I3(Sh49),
    .O(Mmux_C_mux00012431_397)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00016210 (
    .I0(B_4_IBUF_128),
    .I1(N30),
    .I2(Sh136),
    .I3(Sh56),
    .O(Mmux_C_mux00016210_432)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00016236 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh136),
    .I3(Sh56),
    .O(Mmux_C_mux00016236_433)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  Mmux_C_mux00016010 (
    .I0(B_4_IBUF_128),
    .I1(N30),
    .I2(Sh135),
    .I3(N32),
    .O(Mmux_C_mux00016010_430)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00016036 (
    .I0(N9),
    .I1(B_4_IBUF_128),
    .I2(Sh135),
    .I3(Sh55),
    .O(Mmux_C_mux00016036_431)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh13126 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_4_IBUF_64),
    .I3(A_6_IBUF_66),
    .O(Sh13126_582)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh13141 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_3_IBUF_63),
    .I3(A_5_IBUF_65),
    .O(Sh13141_583)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh13026 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_3_IBUF_63),
    .I3(A_5_IBUF_65),
    .O(Sh13026_579)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh13041 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_2_IBUF_60),
    .I3(A_4_IBUF_64),
    .O(Sh13041_580)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh12926 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_2_IBUF_60),
    .I3(A_4_IBUF_64),
    .O(Sh12926_576)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh12941 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(A_1_IBUF_49),
    .I3(A_3_IBUF_63),
    .O(Sh12941_577)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_C_mux0001140 (
    .I0(ALUOp_0_IBUF_35),
    .I1(N28),
    .O(Mmux_C_mux0001140_378)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh108 (
    .I0(B_1_IBUF_113),
    .I1(N74),
    .I2(N96),
    .O(Sh108_556)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh104 (
    .I0(B_1_IBUF_113),
    .I1(N95),
    .I2(N90),
    .O(Sh104_553)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  C_and000511 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh14427 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh112_560),
    .I3(Sh120_568),
    .O(Sh14427_615)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh14429 (
    .I0(B_2_IBUF_124),
    .I1(Sh1447),
    .I2(Sh14427_615),
    .O(Sh144)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh124_SW1 (
    .I0(B_0_IBUF_102),
    .I1(A_31_IBUF_62),
    .I2(A_30_IBUF_61),
    .O(N108)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh124 (
    .I0(B_1_IBUF_113),
    .I1(N108),
    .I2(N48),
    .O(Sh124_572)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh120 (
    .I0(B_1_IBUF_113),
    .I1(N47),
    .I2(N57),
    .O(Sh120_568)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh116 (
    .I0(B_1_IBUF_113),
    .I1(N56),
    .I2(N66),
    .O(Sh116_564)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh112 (
    .I0(B_1_IBUF_113),
    .I1(N65),
    .I2(N75),
    .O(Sh112_560)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012451 (
    .I0(B_1_IBUF_113),
    .I1(B_0_IBUF_102),
    .I2(A_2_IBUF_60),
    .I3(A_3_IBUF_63),
    .O(Mmux_C_mux00012451_398)
  );
  IBUF   ALUOp_2_IBUF (
    .I(ALUOp[2]),
    .O(ALUOp_2_IBUF_37)
  );
  IBUF   ALUOp_1_IBUF (
    .I(ALUOp[1]),
    .O(ALUOp_1_IBUF_36)
  );
  IBUF   ALUOp_0_IBUF (
    .I(ALUOp[0]),
    .O(ALUOp_0_IBUF_35)
  );
  IBUF   A_31_IBUF (
    .I(A[31]),
    .O(A_31_IBUF_62)
  );
  IBUF   A_30_IBUF (
    .I(A[30]),
    .O(A_30_IBUF_61)
  );
  IBUF   A_29_IBUF (
    .I(A[29]),
    .O(A_29_IBUF_59)
  );
  IBUF   A_28_IBUF (
    .I(A[28]),
    .O(A_28_IBUF_58)
  );
  IBUF   A_27_IBUF (
    .I(A[27]),
    .O(A_27_IBUF_57)
  );
  IBUF   A_26_IBUF (
    .I(A[26]),
    .O(A_26_IBUF_56)
  );
  IBUF   A_25_IBUF (
    .I(A[25]),
    .O(A_25_IBUF_55)
  );
  IBUF   A_24_IBUF (
    .I(A[24]),
    .O(A_24_IBUF_54)
  );
  IBUF   A_23_IBUF (
    .I(A[23]),
    .O(A_23_IBUF_53)
  );
  IBUF   A_22_IBUF (
    .I(A[22]),
    .O(A_22_IBUF_52)
  );
  IBUF   A_21_IBUF (
    .I(A[21]),
    .O(A_21_IBUF_51)
  );
  IBUF   A_20_IBUF (
    .I(A[20]),
    .O(A_20_IBUF_50)
  );
  IBUF   A_19_IBUF (
    .I(A[19]),
    .O(A_19_IBUF_48)
  );
  IBUF   A_18_IBUF (
    .I(A[18]),
    .O(A_18_IBUF_47)
  );
  IBUF   A_17_IBUF (
    .I(A[17]),
    .O(A_17_IBUF_46)
  );
  IBUF   A_16_IBUF (
    .I(A[16]),
    .O(A_16_IBUF_45)
  );
  IBUF   A_15_IBUF (
    .I(A[15]),
    .O(A_15_IBUF_44)
  );
  IBUF   A_14_IBUF (
    .I(A[14]),
    .O(A_14_IBUF_43)
  );
  IBUF   A_13_IBUF (
    .I(A[13]),
    .O(A_13_IBUF_42)
  );
  IBUF   A_12_IBUF (
    .I(A[12]),
    .O(A_12_IBUF_41)
  );
  IBUF   A_11_IBUF (
    .I(A[11]),
    .O(A_11_IBUF_40)
  );
  IBUF   A_10_IBUF (
    .I(A[10]),
    .O(A_10_IBUF_39)
  );
  IBUF   A_9_IBUF (
    .I(A[9]),
    .O(A_9_IBUF_69)
  );
  IBUF   A_8_IBUF (
    .I(A[8]),
    .O(A_8_IBUF_68)
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_67)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_66)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_65)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_64)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_63)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_60)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_49)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_38)
  );
  IBUF   B_31_IBUF (
    .I(B[31]),
    .O(B_31_IBUF_126)
  );
  IBUF   B_30_IBUF (
    .I(B[30]),
    .O(B_30_IBUF_125)
  );
  IBUF   B_29_IBUF (
    .I(B[29]),
    .O(B_29_IBUF_123)
  );
  IBUF   B_28_IBUF (
    .I(B[28]),
    .O(B_28_IBUF_122)
  );
  IBUF   B_27_IBUF (
    .I(B[27]),
    .O(B_27_IBUF_121)
  );
  IBUF   B_26_IBUF (
    .I(B[26]),
    .O(B_26_IBUF_120)
  );
  IBUF   B_25_IBUF (
    .I(B[25]),
    .O(B_25_IBUF_119)
  );
  IBUF   B_24_IBUF (
    .I(B[24]),
    .O(B_24_IBUF_118)
  );
  IBUF   B_23_IBUF (
    .I(B[23]),
    .O(B_23_IBUF_117)
  );
  IBUF   B_22_IBUF (
    .I(B[22]),
    .O(B_22_IBUF_116)
  );
  IBUF   B_21_IBUF (
    .I(B[21]),
    .O(B_21_IBUF_115)
  );
  IBUF   B_20_IBUF (
    .I(B[20]),
    .O(B_20_IBUF_114)
  );
  IBUF   B_19_IBUF (
    .I(B[19]),
    .O(B_19_IBUF_112)
  );
  IBUF   B_18_IBUF (
    .I(B[18]),
    .O(B_18_IBUF_111)
  );
  IBUF   B_17_IBUF (
    .I(B[17]),
    .O(B_17_IBUF_110)
  );
  IBUF   B_16_IBUF (
    .I(B[16]),
    .O(B_16_IBUF_109)
  );
  IBUF   B_15_IBUF (
    .I(B[15]),
    .O(B_15_IBUF_108)
  );
  IBUF   B_14_IBUF (
    .I(B[14]),
    .O(B_14_IBUF_107)
  );
  IBUF   B_13_IBUF (
    .I(B[13]),
    .O(B_13_IBUF_106)
  );
  IBUF   B_12_IBUF (
    .I(B[12]),
    .O(B_12_IBUF_105)
  );
  IBUF   B_11_IBUF (
    .I(B[11]),
    .O(B_11_IBUF_104)
  );
  IBUF   B_10_IBUF (
    .I(B[10]),
    .O(B_10_IBUF_103)
  );
  IBUF   B_9_IBUF (
    .I(B[9]),
    .O(B_9_IBUF_133)
  );
  IBUF   B_8_IBUF (
    .I(B[8]),
    .O(B_8_IBUF_132)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_131)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_130)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_129)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_128)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_127)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_124)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_113)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_102)
  );
  OBUF   C_31_OBUF (
    .I(C_31_191),
    .O(C[31])
  );
  OBUF   C_30_OBUF (
    .I(C_30_190),
    .O(C[30])
  );
  OBUF   C_29_OBUF (
    .I(C_29_188),
    .O(C[29])
  );
  OBUF   C_28_OBUF (
    .I(C_28_187),
    .O(C[28])
  );
  OBUF   C_27_OBUF (
    .I(C_27_186),
    .O(C[27])
  );
  OBUF   C_26_OBUF (
    .I(C_26_185),
    .O(C[26])
  );
  OBUF   C_25_OBUF (
    .I(C_25_184),
    .O(C[25])
  );
  OBUF   C_24_OBUF (
    .I(C_24_183),
    .O(C[24])
  );
  OBUF   C_23_OBUF (
    .I(C_23_182),
    .O(C[23])
  );
  OBUF   C_22_OBUF (
    .I(C_22_181),
    .O(C[22])
  );
  OBUF   C_21_OBUF (
    .I(C_21_180),
    .O(C[21])
  );
  OBUF   C_20_OBUF (
    .I(C_20_179),
    .O(C[20])
  );
  OBUF   C_19_OBUF (
    .I(C_19_177),
    .O(C[19])
  );
  OBUF   C_18_OBUF (
    .I(C_18_176),
    .O(C[18])
  );
  OBUF   C_17_OBUF (
    .I(C_17_175),
    .O(C[17])
  );
  OBUF   C_16_OBUF (
    .I(C_16_174),
    .O(C[16])
  );
  OBUF   C_15_OBUF (
    .I(C_15_173),
    .O(C[15])
  );
  OBUF   C_14_OBUF (
    .I(C_14_172),
    .O(C[14])
  );
  OBUF   C_13_OBUF (
    .I(C_13_171),
    .O(C[13])
  );
  OBUF   C_12_OBUF (
    .I(C_12_170),
    .O(C[12])
  );
  OBUF   C_11_OBUF (
    .I(C_11_169),
    .O(C[11])
  );
  OBUF   C_10_OBUF (
    .I(C_10_168),
    .O(C[10])
  );
  OBUF   C_9_OBUF (
    .I(C_9_197),
    .O(C[9])
  );
  OBUF   C_8_OBUF (
    .I(C_8_196),
    .O(C[8])
  );
  OBUF   C_7_OBUF (
    .I(C_7_195),
    .O(C[7])
  );
  OBUF   C_6_OBUF (
    .I(C_6_194),
    .O(C[6])
  );
  OBUF   C_5_OBUF (
    .I(C_5_193),
    .O(C[5])
  );
  OBUF   C_4_OBUF (
    .I(C_4_192),
    .O(C[4])
  );
  OBUF   C_3_OBUF (
    .I(C_3_189),
    .O(C[3])
  );
  OBUF   C_2_OBUF (
    .I(C_2_178),
    .O(C[2])
  );
  OBUF   C_1_OBUF (
    .I(C_1_167),
    .O(C[1])
  );
  OBUF   C_0_OBUF (
    .I(C_0_166),
    .O(C[0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh154_SW2 (
    .I0(B_2_IBUF_124),
    .I1(Sh126),
    .I2(Sh122_570),
    .O(N119)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh153_SW2 (
    .I0(B_2_IBUF_124),
    .I1(Sh125),
    .I2(Sh121_569),
    .O(N121)
  );
  LUT4 #(
    .INIT ( 16'hB111 ))
  Mmux_C_mux00012208_SW0 (
    .I0(C_cmp_eq0003),
    .I1(Mmux_C_mux00012163),
    .I2(C_and0005),
    .I3(C_and0004),
    .O(N125)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  Mmux_C_mux00012149 (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_2_IBUF_37),
    .I2(C_or0001),
    .O(Mmux_C_mux00012149_391)
  );
  LUT4 #(
    .INIT ( 16'hF4E4 ))
  Mmux_C_mux00013218 (
    .I0(B_4_IBUF_128),
    .I1(N32),
    .I2(A_31_IBUF_62),
    .I3(B_3_IBUF_127),
    .O(Mmux_C_mux00013218_405)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00014011 (
    .I0(B_4_IBUF_128),
    .I1(A_31_IBUF_62),
    .I2(N6),
    .I3(Sh123_571),
    .O(Mmux_C_mux00014011_411)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux0001445 (
    .I0(B_4_IBUF_128),
    .I1(A_31_IBUF_62),
    .I2(N6),
    .I3(Sh125),
    .O(Mmux_C_mux0001445_419)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux0001485 (
    .I0(B_4_IBUF_128),
    .I1(A_31_IBUF_62),
    .I2(N6),
    .I3(Sh126),
    .O(Mmux_C_mux0001485_423)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux0001223 (
    .I0(B_3_IBUF_127),
    .I1(B_2_IBUF_124),
    .I2(Sh104_553),
    .I3(Sh108_556),
    .O(Mmux_C_mux0001223_395)
  );
  LUT4 #(
    .INIT ( 16'hF4E4 ))
  Mmux_C_mux00013420 (
    .I0(B_4_IBUF_128),
    .I1(Sh56),
    .I2(A_31_IBUF_62),
    .I3(B_3_IBUF_127),
    .O(Mmux_C_mux00013420_407)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012619 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh148),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00012619_399)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00013022 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh150),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00013022_403)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012822 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh149),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00012822_401)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012222 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh147),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00012222_394)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00012022 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh146),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00012022_389)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Mmux_C_mux00011822 (
    .I0(Mmux_C_mux00011818),
    .I1(B_4_IBUF_128),
    .I2(Sh145),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00011822_387)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001634_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh139),
    .I3(Sh155),
    .O(N145)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00015834_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh134),
    .I3(Sh150),
    .O(N147)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00015634_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh133),
    .I3(Sh149),
    .O(N149)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00015434_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh132),
    .I3(Sh148),
    .O(N151)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00015234_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh131),
    .I3(Sh147),
    .O(N153)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00014634_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh130),
    .I3(Sh146),
    .O(N155)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00012434_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh129),
    .I3(Sh145),
    .O(N159)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00011243_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh142),
    .I3(Sh158),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00011043_SW0 (
    .I0(C_or0001),
    .I1(B_4_IBUF_128),
    .I2(Sh141),
    .I3(Sh157),
    .O(N163)
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<0>  (
    .I0(A_0_IBUF_38),
    .I1(B_0_IBUF_102),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[0])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<1>  (
    .I0(A_1_IBUF_49),
    .I1(B_1_IBUF_113),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<2>  (
    .I0(A_2_IBUF_60),
    .I1(B_2_IBUF_124),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<3>  (
    .I0(A_3_IBUF_63),
    .I1(B_3_IBUF_127),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<4>  (
    .I0(A_4_IBUF_64),
    .I1(B_4_IBUF_128),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<5>  (
    .I0(A_5_IBUF_65),
    .I1(B_5_IBUF_129),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<6>  (
    .I0(A_6_IBUF_66),
    .I1(B_6_IBUF_130),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<7>  (
    .I0(A_7_IBUF_67),
    .I1(B_7_IBUF_131),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[7])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<8>  (
    .I0(A_8_IBUF_68),
    .I1(B_8_IBUF_132),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[8])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<9>  (
    .I0(A_9_IBUF_69),
    .I1(B_9_IBUF_133),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[9])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<10>  (
    .I0(A_10_IBUF_39),
    .I1(B_10_IBUF_103),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[10])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<11>  (
    .I0(A_11_IBUF_40),
    .I1(B_11_IBUF_104),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[11])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<12>  (
    .I0(A_12_IBUF_41),
    .I1(B_12_IBUF_105),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[12])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<13>  (
    .I0(A_13_IBUF_42),
    .I1(B_13_IBUF_106),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[13])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<14>  (
    .I0(A_14_IBUF_43),
    .I1(B_14_IBUF_107),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[14])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<15>  (
    .I0(A_15_IBUF_44),
    .I1(B_15_IBUF_108),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[15])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<16>  (
    .I0(A_16_IBUF_45),
    .I1(B_16_IBUF_109),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[16])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<17>  (
    .I0(A_17_IBUF_46),
    .I1(B_17_IBUF_110),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[17])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<18>  (
    .I0(A_18_IBUF_47),
    .I1(B_18_IBUF_111),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[18])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<19>  (
    .I0(A_19_IBUF_48),
    .I1(B_19_IBUF_112),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[19])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<20>  (
    .I0(A_20_IBUF_50),
    .I1(B_20_IBUF_114),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[20])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<21>  (
    .I0(A_21_IBUF_51),
    .I1(B_21_IBUF_115),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[21])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<22>  (
    .I0(A_22_IBUF_52),
    .I1(B_22_IBUF_116),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[22])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<23>  (
    .I0(A_23_IBUF_53),
    .I1(B_23_IBUF_117),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[23])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<24>  (
    .I0(A_24_IBUF_54),
    .I1(B_24_IBUF_118),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[24])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<25>  (
    .I0(A_25_IBUF_55),
    .I1(B_25_IBUF_119),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[25])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<26>  (
    .I0(A_26_IBUF_56),
    .I1(B_26_IBUF_120),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[26])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<27>  (
    .I0(A_27_IBUF_57),
    .I1(B_27_IBUF_121),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[27])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<28>  (
    .I0(A_28_IBUF_58),
    .I1(B_28_IBUF_122),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[28])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<29>  (
    .I0(A_29_IBUF_59),
    .I1(B_29_IBUF_123),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[29])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<30>  (
    .I0(A_30_IBUF_61),
    .I1(B_30_IBUF_125),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[30])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_C_share0000_lut<31>  (
    .I0(A_31_IBUF_62),
    .I1(B_31_IBUF_126),
    .I2(ALUOp_0_IBUF_35),
    .I3(N01),
    .O(Maddsub_C_share0000_lut[31])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013654 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N165),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[25]),
    .O(C_mux0001[25])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013854 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N167),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[26]),
    .O(C_mux0001[26])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_C_mux00014023_SW0 (
    .I0(C_or0001),
    .I1(C_cmp_eq0005),
    .I2(Mmux_C_mux00014011_411),
    .O(N169)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux00014023 (
    .I0(Sh59),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N169),
    .O(Mmux_C_mux00014023_412)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  Mmux_C_mux00014416 (
    .I0(Sh29),
    .I1(B_2_IBUF_124),
    .I2(B_3_IBUF_127),
    .I3(B_4_IBUF_128),
    .O(Mmux_C_mux00014416_417)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  Mmux_C_mux00014817 (
    .I0(Sh30),
    .I1(B_4_IBUF_128),
    .I2(B_2_IBUF_124),
    .I3(B_3_IBUF_127),
    .O(Mmux_C_mux00014817_421)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00014262 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N171),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[28]),
    .O(C_mux0001[28])
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Mmux_C_mux00012122_SW0 (
    .I0(B_2_IBUF_124),
    .I1(Mmux_C_mux00012451_398),
    .I2(N175),
    .I3(Sh100),
    .O(N177)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001278_SW0 (
    .I0(B_1_IBUF_113),
    .I1(B_0_IBUF_102),
    .I2(A_0_IBUF_38),
    .I3(A_1_IBUF_49),
    .O(N175)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  Mmux_C_mux0001859_SW0 (
    .I0(ALUOp_2_IBUF_37),
    .I1(ALUOp_1_IBUF_36),
    .I2(C_or0001),
    .I3(B_4_IBUF_128),
    .O(N173)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh1571 (
    .I0(N6),
    .I1(A_31_IBUF_62),
    .I2(B_1_IBUF_113),
    .I3(N11),
    .O(Sh157)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013615 (
    .I0(B_4_IBUF_128),
    .I1(A_31_IBUF_62),
    .I2(B_3_IBUF_127),
    .I3(N121),
    .O(Mmux_C_mux00013615_409)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013815 (
    .I0(B_4_IBUF_128),
    .I1(A_31_IBUF_62),
    .I2(B_3_IBUF_127),
    .I3(N119),
    .O(Mmux_C_mux00013815_410)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Mmux_C_mux00013654_SW0_SW0 (
    .I0(C_cmp_eq0005),
    .I1(Mmux_C_mux00013615_409),
    .I2(C_or0001),
    .I3(N28),
    .O(N189)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux00013654_SW0 (
    .I0(Sh57),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N189),
    .O(N165)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Mmux_C_mux00013854_SW0_SW0 (
    .I0(C_cmp_eq0005),
    .I1(Mmux_C_mux00013815_410),
    .I2(C_or0001),
    .I3(N28),
    .O(N191)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux00013854_SW0 (
    .I0(Sh58),
    .I1(N9),
    .I2(B_4_IBUF_128),
    .I3(N191),
    .O(N167)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh1581 (
    .I0(B_2_IBUF_124),
    .I1(A_31_IBUF_62),
    .I2(B_3_IBUF_127),
    .I3(Sh126),
    .O(Sh158)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh1552 (
    .I0(B_2_IBUF_124),
    .I1(A_31_IBUF_62),
    .I2(B_3_IBUF_127),
    .I3(Sh123_571),
    .O(Sh155)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux00013252_SW0 (
    .I0(Mmux_C_mux00013218_405),
    .I1(C_cmp_eq0005),
    .I2(C_or0001),
    .I3(Mmux_C_mux0001329_406),
    .O(N193)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013252 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N193),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[23]),
    .O(C_mux0001[23])
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux00013466_SW0 (
    .I0(Mmux_C_mux00013420_407),
    .I1(C_cmp_eq0005),
    .I2(C_or0001),
    .I3(Mmux_C_mux0001349_408),
    .O(N195)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00013466 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N195),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[24]),
    .O(C_mux0001[24])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  C_mux00002 (
    .I0(ALUOp_0_IBUF_35),
    .I1(ALUOp_1_IBUF_36),
    .I2(ALUOp_2_IBUF_37),
    .O(C_mux0000)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  Sh311 (
    .I0(B_0_IBUF_102),
    .I1(A_31_IBUF_62),
    .I2(B_1_IBUF_113),
    .O(Sh31)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Mmux_C_mux00011416_SW0 (
    .I0(B_0_IBUF_102),
    .I1(B_1_IBUF_113),
    .I2(B_2_IBUF_124),
    .I3(B_3_IBUF_127),
    .O(N123)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Mmux_C_mux00018138_SW0 (
    .I0(Mmux_C_mux0001859_438),
    .I1(B_4_IBUF_128),
    .I2(Mmux_C_mux00014217_413),
    .I3(N8),
    .O(N197)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00018138 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N197),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[12]),
    .O(C_mux0001[12])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00016461_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N143),
    .I2(Mmux_C_mux00016431_435),
    .I3(N28),
    .O(N199)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00016461 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N199),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[9]),
    .O(C_mux0001[9])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux0001661_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N145),
    .I2(Mmux_C_mux0001631_434),
    .I3(N28),
    .O(N201)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux0001661 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N201),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[11]),
    .O(C_mux0001[11])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00015861_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N147),
    .I2(Mmux_C_mux00015831_429),
    .I3(N28),
    .O(N203)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00015861 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N203),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[6]),
    .O(C_mux0001[6])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00015661_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N149),
    .I2(Mmux_C_mux00015631_428),
    .I3(N28),
    .O(N205)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00015661 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N205),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[5]),
    .O(C_mux0001[5])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00015461_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N151),
    .I2(Mmux_C_mux00015431_427),
    .I3(N28),
    .O(N207)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00015461 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N207),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[4]),
    .O(C_mux0001[4])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00015261_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N153),
    .I2(Mmux_C_mux00015231_426),
    .I3(N28),
    .O(N209)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00015261 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N209),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[3]),
    .O(C_mux0001[3])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00014661_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N155),
    .I2(Mmux_C_mux00014631_420),
    .I3(N28),
    .O(N211)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00014661 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N211),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[2]),
    .O(C_mux0001[2])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00014616_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N157),
    .I2(Mmux_C_mux0001431_414),
    .I3(N28),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00014616 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N213),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[10]),
    .O(C_mux0001[10])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00012461_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N159),
    .I2(Mmux_C_mux00012431_397),
    .I3(N28),
    .O(N215)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00012461 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N215),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[1]),
    .O(C_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Mmux_C_mux00016267_SW0 (
    .I0(Mmux_C_mux00016236_433),
    .I1(Mmux_C_mux00011818),
    .I2(Mmux_C_mux00016210_432),
    .I3(N8),
    .O(N217)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00016267 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N217),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[8]),
    .O(C_mux0001[8])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Mmux_C_mux00016067_SW0 (
    .I0(Mmux_C_mux00016036_431),
    .I1(Mmux_C_mux00011818),
    .I2(Mmux_C_mux00016010_430),
    .I3(N8),
    .O(N219)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00016067 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N219),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[7]),
    .O(C_mux0001[7])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00011272_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N161),
    .I2(Mmux_C_mux00011237_377),
    .I3(N28),
    .O(N221)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00011272 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N221),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[14]),
    .O(C_mux0001[14])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Mmux_C_mux00011072_SW0 (
    .I0(C_cmp_eq0005),
    .I1(N163),
    .I2(Mmux_C_mux00011037_376),
    .I3(N28),
    .O(N223)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00011072 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N223),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[13]),
    .O(C_mux0001[13])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Mmux_C_mux00012260 (
    .I0(ALUOp_1_IBUF_36),
    .I1(N225),
    .I2(ALUOp_2_IBUF_37),
    .I3(C_share0000[0]),
    .O(C_mux0001[0])
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  Mmux_C_mux00012260_SW0_SW0 (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_0_IBUF_35),
    .I2(ALUOp_2_IBUF_37),
    .O(N227)
  );
  LUT4 #(
    .INIT ( 16'h4447 ))
  Mmux_C_mux00012260_SW0 (
    .I0(N125),
    .I1(N227),
    .I2(C_and0004),
    .I3(C_and0005),
    .O(N225)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \C_mux0002<16>11  (
    .I0(N28),
    .I1(ALUOp_2_IBUF_37),
    .I2(ALUOp_0_IBUF_35),
    .I3(ALUOp_1_IBUF_36),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_C_mux00013423 (
    .I0(ALUOp_0_IBUF_35),
    .I1(ALUOp_2_IBUF_37),
    .I2(ALUOp_1_IBUF_36),
    .I3(C_or0001),
    .O(Mmux_C_mux00011818)
  );
  LUT4 #(
    .INIT ( 16'h2A7F ))
  Mmux_C_mux00014217_SW1 (
    .I0(N6),
    .I1(ALUOp_0_IBUF_35),
    .I2(A_31_IBUF_62),
    .I3(Sh124_572),
    .O(N229)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  Mmux_C_mux00014217 (
    .I0(ALUOp_2_IBUF_37),
    .I1(ALUOp_1_IBUF_36),
    .I2(C_or0001),
    .I3(N229),
    .O(Mmux_C_mux00014217_413)
  );
  MUXF5   Mmux_C_mux00011448 (
    .I0(N231),
    .I1(N232),
    .S(B_2_IBUF_124),
    .O(Mmux_C_mux00011448_381)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Mmux_C_mux00011448_F (
    .I0(B_3_IBUF_127),
    .I1(Sh119_567),
    .I2(Sh111_559),
    .O(N231)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Mmux_C_mux00011448_G (
    .I0(B_3_IBUF_127),
    .I1(Sh123_571),
    .I2(Sh115_563),
    .O(N232)
  );
  MUXF5   Sh131102 (
    .I0(N233),
    .I1(N234),
    .S(B_2_IBUF_124),
    .O(Sh131)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh131102_F (
    .I0(B_3_IBUF_127),
    .I1(Sh13126_582),
    .I2(Sh13141_583),
    .I3(Sh107_555),
    .O(N233)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh131102_G (
    .I0(B_3_IBUF_127),
    .I1(Sh111_559),
    .I2(Sh103_552),
    .O(N234)
  );
  MUXF5   Sh130102 (
    .I0(N235),
    .I1(N236),
    .S(B_2_IBUF_124),
    .O(Sh130)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh130102_F (
    .I0(B_3_IBUF_127),
    .I1(Sh13026_579),
    .I2(Sh13041_580),
    .I3(Sh10_544),
    .O(N235)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh130102_G (
    .I0(B_3_IBUF_127),
    .I1(Sh110_558),
    .I2(Sh102_551),
    .O(N236)
  );
  MUXF5   Sh129102 (
    .I0(N237),
    .I1(N238),
    .S(B_2_IBUF_124),
    .O(Sh129)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh129102_F (
    .I0(B_3_IBUF_127),
    .I1(Sh12926_576),
    .I2(Sh12941_577),
    .I3(Sh105_554),
    .O(N237)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh129102_G (
    .I0(B_3_IBUF_127),
    .I1(Sh109_557),
    .I2(Sh101),
    .O(N238)
  );
  MUXF5   Sh54 (
    .I0(N239),
    .I1(N240),
    .S(B_2_IBUF_124),
    .O(Sh54_653)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh54_F (
    .I0(B_3_IBUF_127),
    .I1(Sh30),
    .I2(Sh118_566),
    .O(N239)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh54_G (
    .I0(B_3_IBUF_127),
    .I1(B_1_IBUF_113),
    .I2(N47),
    .I3(N48),
    .O(N240)
  );
  MUXF5   Sh53 (
    .I0(N241),
    .I1(N242),
    .S(B_2_IBUF_124),
    .O(Sh53_652)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh53_F (
    .I0(B_3_IBUF_127),
    .I1(Sh29),
    .I2(Sh117_565),
    .O(N241)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh53_G (
    .I0(B_3_IBUF_127),
    .I1(B_1_IBUF_113),
    .I2(N50),
    .I3(N39),
    .O(N242)
  );
  MUXF5   Sh52 (
    .I0(N243),
    .I1(N244),
    .S(B_3_IBUF_127),
    .O(Sh52_651)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh52_F (
    .I0(B_2_IBUF_124),
    .I1(Sh120_568),
    .I2(Sh116_564),
    .O(N243)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh52_G (
    .I0(B_2_IBUF_124),
    .I1(B_1_IBUF_113),
    .I2(N48),
    .I3(N108),
    .O(N244)
  );
  MUXF5   Mmux_C_mux0001859 (
    .I0(N245),
    .I1(N246),
    .S(B_2_IBUF_124),
    .O(Mmux_C_mux0001859_438)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001859_F (
    .I0(N173),
    .I1(B_3_IBUF_127),
    .I2(Sh108_556),
    .I3(Sh116_564),
    .O(N245)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001859_G (
    .I0(N173),
    .I1(B_3_IBUF_127),
    .I2(Sh112_560),
    .I3(Sh120_568),
    .O(N246)
  );
  MUXF5   Mmux_C_mux00011237 (
    .I0(N247),
    .I1(N248),
    .S(B_4_IBUF_128),
    .O(Mmux_C_mux00011237_377)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Mmux_C_mux00011237_F (
    .I0(N9),
    .I1(B_2_IBUF_124),
    .I2(Sh1427_613),
    .I3(Sh14227_612),
    .O(N247)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_C_mux00011237_G (
    .I0(N9),
    .I1(Sh30),
    .I2(B_2_IBUF_124),
    .I3(B_3_IBUF_127),
    .O(N248)
  );
  MUXF5   Mmux_C_mux00011037 (
    .I0(N249),
    .I1(N250),
    .S(B_4_IBUF_128),
    .O(Mmux_C_mux00011037_376)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Mmux_C_mux00011037_F (
    .I0(N9),
    .I1(B_2_IBUF_124),
    .I2(Sh1417_610),
    .I3(Sh14127_609),
    .O(N249)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_C_mux00011037_G (
    .I0(N9),
    .I1(Sh29),
    .I2(B_2_IBUF_124),
    .I3(B_3_IBUF_127),
    .O(N250)
  );
  MUXF5   Mmux_C_mux00011625 (
    .I0(N251),
    .I1(N252),
    .S(B_4_IBUF_128),
    .O(Mmux_C_mux00011625_385)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_C_mux00011625_F (
    .I0(ALUOp_2_IBUF_37),
    .I1(Sh144),
    .I2(ALUOp_1_IBUF_36),
    .I3(C_or0001),
    .O(N251)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_C_mux00011625_G (
    .I0(C_or0001),
    .I1(C_cmp_eq0005),
    .I2(A_31_IBUF_62),
    .O(N252)
  );
  MUXF5   Mmux_C_mux00014262_SW0 (
    .I0(N253),
    .I1(N254),
    .S(B_4_IBUF_128),
    .O(N171)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Mmux_C_mux00014262_SW0_F (
    .I0(C_cmp_eq0005),
    .I1(N28),
    .I2(Mmux_C_mux00014217_413),
    .O(N253)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Mmux_C_mux00014262_SW0_G (
    .I0(C_cmp_eq0005),
    .I1(A_31_IBUF_62),
    .I2(C_or0001),
    .I3(N28),
    .O(N254)
  );
  MUXF5   Mmux_C_mux00012163_SW0 (
    .I0(N255),
    .I1(N256),
    .S(B_4_IBUF_128),
    .O(N129)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Mmux_C_mux00012163_SW0_F (
    .I0(Mmux_C_mux00012149_391),
    .I1(N177),
    .I2(B_3_IBUF_127),
    .I3(Mmux_C_mux0001223_395),
    .O(N255)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Mmux_C_mux00012163_SW0_G (
    .I0(Mmux_C_mux00012149_391),
    .I1(B_2_IBUF_124),
    .I2(Sh1447),
    .I3(Sh14427_615),
    .O(N256)
  );
  BUFG   C_not0001_BUFG (
    .I(C_not00011_266),
    .O(C_not0001)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh51311 (
    .I0(B_2_IBUF_124),
    .I1(Sh14719_624),
    .I2(N14),
    .I3(A_31_IBUF_62),
    .O(Sh5131)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh51312 (
    .I0(B_2_IBUF_124),
    .I1(Sh119_567),
    .I2(Sh14719_624),
    .O(Sh51311_650)
  );
  MUXF5   Sh5131_f5 (
    .I0(Sh51311_650),
    .I1(Sh5131),
    .S(B_3_IBUF_127),
    .O(Sh51)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Sh50291 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh14627_621),
    .I3(Sh118_566),
    .O(Sh5029)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Sh50292 (
    .I0(Sh118_566),
    .I1(B_2_IBUF_124),
    .I2(B_3_IBUF_127),
    .I3(Sh14627_621),
    .O(Sh50291_647)
  );
  MUXF5   Sh5029_f5 (
    .I0(Sh50291_647),
    .I1(Sh5029),
    .S(Sh30),
    .O(Sh50)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  Sh49291 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh14527_618),
    .I3(Sh117_565),
    .O(Sh4929)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Sh49292 (
    .I0(Sh117_565),
    .I1(B_2_IBUF_124),
    .I2(B_3_IBUF_127),
    .I3(Sh14527_618),
    .O(Sh49291_644)
  );
  MUXF5   Sh4929_f5 (
    .I0(Sh49291_644),
    .I1(Sh4929),
    .S(Sh29),
    .O(Sh49)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh139291 (
    .I0(B_2_IBUF_124),
    .I1(Sh119_567),
    .I2(Sh115_563),
    .O(Sh13929)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh139292 (
    .I0(B_2_IBUF_124),
    .I1(Sh111_559),
    .I2(Sh107_555),
    .O(Sh139291_607)
  );
  MUXF5   Sh13929_f5 (
    .I0(Sh139291_607),
    .I1(Sh13929),
    .S(B_3_IBUF_127),
    .O(Sh139)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh138291 (
    .I0(B_2_IBUF_124),
    .I1(Sh118_566),
    .I2(Sh114_562),
    .O(Sh13829)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh138292 (
    .I0(B_2_IBUF_124),
    .I1(Sh110_558),
    .I2(Sh10_544),
    .O(Sh138291_604)
  );
  MUXF5   Sh13829_f5 (
    .I0(Sh138291_604),
    .I1(Sh13829),
    .S(B_3_IBUF_127),
    .O(Sh138)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh137291 (
    .I0(B_2_IBUF_124),
    .I1(Sh117_565),
    .I2(Sh113_561),
    .O(Sh13729)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh137292 (
    .I0(B_2_IBUF_124),
    .I1(Sh109_557),
    .I2(Sh105_554),
    .O(Sh137291_601)
  );
  MUXF5   Sh13729_f5 (
    .I0(Sh137291_601),
    .I1(Sh13729),
    .S(B_3_IBUF_127),
    .O(Sh137)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh136291 (
    .I0(B_2_IBUF_124),
    .I1(Sh116_564),
    .I2(Sh112_560),
    .O(Sh13629)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh136292 (
    .I0(B_2_IBUF_124),
    .I1(Sh108_556),
    .I2(Sh104_553),
    .O(Sh136291_598)
  );
  MUXF5   Sh13629_f5 (
    .I0(Sh136291_598),
    .I1(Sh13629),
    .S(B_3_IBUF_127),
    .O(Sh136)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh135291 (
    .I0(B_2_IBUF_124),
    .I1(Sh115_563),
    .I2(Sh111_559),
    .O(Sh13529)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh135292 (
    .I0(B_2_IBUF_124),
    .I1(Sh107_555),
    .I2(Sh103_552),
    .O(Sh135291_595)
  );
  MUXF5   Sh13529_f5 (
    .I0(Sh135291_595),
    .I1(Sh13529),
    .S(B_3_IBUF_127),
    .O(Sh135)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh134291 (
    .I0(B_2_IBUF_124),
    .I1(Sh114_562),
    .I2(Sh110_558),
    .O(Sh13429)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh134292 (
    .I0(B_2_IBUF_124),
    .I1(Sh10_544),
    .I2(Sh102_551),
    .O(Sh134291_592)
  );
  MUXF5   Sh13429_f5 (
    .I0(Sh134291_592),
    .I1(Sh13429),
    .S(B_3_IBUF_127),
    .O(Sh134)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh133291 (
    .I0(B_2_IBUF_124),
    .I1(Sh113_561),
    .I2(Sh109_557),
    .O(Sh13329)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh133292 (
    .I0(B_2_IBUF_124),
    .I1(Sh105_554),
    .I2(Sh101),
    .O(Sh133291_589)
  );
  MUXF5   Sh13329_f5 (
    .I0(Sh133291_589),
    .I1(Sh13329),
    .S(B_3_IBUF_127),
    .O(Sh133)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh132291 (
    .I0(B_2_IBUF_124),
    .I1(Sh112_560),
    .I2(Sh108_556),
    .O(Sh13229)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Sh132292 (
    .I0(B_2_IBUF_124),
    .I1(Sh104_553),
    .I2(Sh100),
    .O(Sh132291_586)
  );
  MUXF5   Sh13229_f5 (
    .I0(Sh132291_586),
    .I1(Sh13229),
    .S(B_3_IBUF_127),
    .O(Sh132)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh1011 (
    .I0(B_0_IBUF_102),
    .I1(A_6_IBUF_66),
    .I2(A_5_IBUF_65),
    .I3(B_1_IBUF_113),
    .O(Sh1011_549)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh1012 (
    .I0(B_1_IBUF_113),
    .I1(B_0_IBUF_102),
    .I2(A_5_IBUF_65),
    .I3(A_6_IBUF_66),
    .O(Sh1012_550)
  );
  MUXF5   Sh101_f5 (
    .I0(Sh1012_550),
    .I1(Sh1011_549),
    .S(N86),
    .O(Sh101)
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  Mmux_C_mux0001141531 (
    .I0(C_share0000[15]),
    .I1(ALUOp_1_IBUF_36),
    .I2(ALUOp_2_IBUF_37),
    .O(Mmux_C_mux000114153)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001141532 (
    .I0(ALUOp_1_IBUF_36),
    .I1(ALUOp_2_IBUF_37),
    .I2(C_share0000[15]),
    .I3(Mmux_C_mux0001140_378),
    .O(Mmux_C_mux0001141531_380)
  );
  MUXF5   Mmux_C_mux000114153_f5 (
    .I0(Mmux_C_mux0001141531_380),
    .I1(Mmux_C_mux000114153),
    .S(Mmux_C_mux00011493),
    .O(C_mux0001[15])
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh1001 (
    .I0(B_0_IBUF_102),
    .I1(A_5_IBUF_65),
    .I2(A_4_IBUF_64),
    .I3(B_1_IBUF_113),
    .O(Sh1001_546)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh1002 (
    .I0(B_1_IBUF_113),
    .I1(B_0_IBUF_102),
    .I2(A_4_IBUF_64),
    .I3(A_5_IBUF_65),
    .O(Sh1002_547)
  );
  MUXF5   Sh100_f5 (
    .I0(Sh1002_547),
    .I1(Sh1001_546),
    .S(N89),
    .O(Sh100)
  );
  LUT4 #(
    .INIT ( 16'h2022 ))
  Mmux_C_mux000114931 (
    .I0(A_31_IBUF_62),
    .I1(C_or0001),
    .I2(ALUOp_0_IBUF_35),
    .I3(N123),
    .O(Mmux_C_mux000114931_383)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mmux_C_mux000114932 (
    .I0(Mmux_C_mux00011448_381),
    .I1(C_or0001),
    .O(Mmux_C_mux000114932_384)
  );
  MUXF5   Mmux_C_mux00011493_f5 (
    .I0(Mmux_C_mux000114932_384),
    .I1(Mmux_C_mux000114931_383),
    .S(B_4_IBUF_128),
    .O(Mmux_C_mux00011493)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux00016434_SW01 (
    .I0(C_or0001),
    .I1(B_3_IBUF_127),
    .I2(N121),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux00016434_SW0)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mmux_C_mux00016434_SW02 (
    .I0(Sh137),
    .I1(C_or0001),
    .O(Mmux_C_mux00016434_SW01_437)
  );
  MUXF5   Mmux_C_mux00016434_SW0_f5 (
    .I0(Mmux_C_mux00016434_SW01_437),
    .I1(Mmux_C_mux00016434_SW0),
    .S(B_4_IBUF_128),
    .O(N143)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Mmux_C_mux0001434_SW01 (
    .I0(C_or0001),
    .I1(B_3_IBUF_127),
    .I2(N119),
    .I3(A_31_IBUF_62),
    .O(Mmux_C_mux0001434_SW0)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mmux_C_mux0001434_SW02 (
    .I0(Sh138),
    .I1(C_or0001),
    .O(Mmux_C_mux0001434_SW01_416)
  );
  MUXF5   Mmux_C_mux0001434_SW0_f5 (
    .I0(Mmux_C_mux0001434_SW01_416),
    .I1(Mmux_C_mux0001434_SW0),
    .S(B_4_IBUF_128),
    .O(N157)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  Mmux_C_mux000121631 (
    .I0(ALUOp_2_IBUF_37),
    .I1(ALUOp_0_IBUF_35),
    .I2(ALUOp_1_IBUF_36),
    .I3(N129),
    .O(Mmux_C_mux000121631_393)
  );
  MUXF5   Mmux_C_mux00012163_f5 (
    .I0(N129),
    .I1(Mmux_C_mux000121631_393),
    .S(N28),
    .O(Mmux_C_mux00012163)
  );
  LUT4 #(
    .INIT ( 16'hEF4F ))
  Sh150301 (
    .I0(B_3_IBUF_127),
    .I1(Sh122_570),
    .I2(B_2_IBUF_124),
    .I3(A_31_IBUF_62),
    .O(Sh15030)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh150302 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh122_570),
    .I3(A_31_IBUF_62),
    .O(Sh150301_635)
  );
  MUXF5   Sh15030_f5 (
    .I0(Sh150301_635),
    .I1(Sh15030),
    .S(Sh1467_622),
    .O(Sh150)
  );
  LUT4 #(
    .INIT ( 16'hEF4F ))
  Sh149301 (
    .I0(B_3_IBUF_127),
    .I1(Sh121_569),
    .I2(B_2_IBUF_124),
    .I3(A_31_IBUF_62),
    .O(Sh14930)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh149302 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh121_569),
    .I3(A_31_IBUF_62),
    .O(Sh149301_632)
  );
  MUXF5   Sh14930_f5 (
    .I0(Sh149301_632),
    .I1(Sh14930),
    .S(Sh1457_619),
    .O(Sh149)
  );
  LUT4 #(
    .INIT ( 16'hEF4F ))
  Sh148301 (
    .I0(B_3_IBUF_127),
    .I1(Sh120_568),
    .I2(B_2_IBUF_124),
    .I3(A_31_IBUF_62),
    .O(Sh14830)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh148302 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh120_568),
    .I3(A_31_IBUF_62),
    .O(Sh148301_629)
  );
  MUXF5   Sh14830_f5 (
    .I0(Sh148301_629),
    .I1(Sh14830),
    .S(Sh1447),
    .O(Sh148)
  );
  LUT4 #(
    .INIT ( 16'hEF4F ))
  Sh147301 (
    .I0(B_3_IBUF_127),
    .I1(Sh119_567),
    .I2(B_2_IBUF_124),
    .I3(A_31_IBUF_62),
    .O(Sh14730)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh147302 (
    .I0(B_2_IBUF_124),
    .I1(B_3_IBUF_127),
    .I2(Sh119_567),
    .I3(A_31_IBUF_62),
    .O(Sh147301_626)
  );
  MUXF5   Sh14730_f5 (
    .I0(Sh147301_626),
    .I1(Sh14730),
    .S(Sh14719_624),
    .O(Sh147)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

