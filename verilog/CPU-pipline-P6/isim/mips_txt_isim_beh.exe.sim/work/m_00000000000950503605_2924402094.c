/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "H:/BUAA_workshop/verilog/CPU-pipline-P6/DM.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {24, 0};
static int ng4[] = {16, 0};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {15U, 0U};



static void NetDecl_18_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 3U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 3U);
    xsi_vlogtype_concat(t3, 5, 5, 2U, t4, 2, t2, 3);
    t14 = (t0 + 5424);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 31U;
    t20 = t19;
    t21 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 4U);
    t27 = (t0 + 5280);
    *((int *)t27) = 1;

LAB1:    return;
}

static void NetDecl_20_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_rshift(t5, 32, t3, 32, t4, 5);
    t2 = (t0 + 5488);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8);
    xsi_driver_vfirst_trans(t2, 0, 31U);
    t10 = (t0 + 5296);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_21_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_lshift(t5, 32, t3, 32, t4, 5);
    t2 = (t0 + 5552);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t10 = (t0 + 5312);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_24_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t33[8];
    char t34[8];
    char t47[8];
    char t48[8];
    char t58[8];
    char t62[8];
    char t74[8];
    char t75[8];
    char t90[8];
    char t91[8];
    char t94[8];
    char t121[8];
    char t122[8];
    char t135[8];
    char t136[8];
    char t146[8];
    char t150[8];
    char t162[8];
    char t163[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t59;
    char *t60;
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t92;
    char *t93;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t147;
    char *t148;
    char *t149;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t164;
    char *t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    char *t178;
    char *t179;
    char *t180;
    char *t181;
    char *t182;
    char *t183;
    char *t184;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t86 = *((unsigned int *)t4);
    t87 = (~(t86));
    t88 = *((unsigned int *)t29);
    t89 = (t87 || t88);
    if (t89 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t90, 8);

LAB20:    t178 = (t0 + 5616);
    t180 = (t178 + 56U);
    t181 = *((char **)t180);
    t182 = (t181 + 56U);
    t183 = *((char **)t182);
    memcpy(t183, t3, 8);
    xsi_driver_vfirst_trans(t178, 0, 31);
    t184 = (t0 + 5328);
    *((int *)t184) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 2008U);
    t36 = *((char **)t35);
    memset(t34, 0, 8);
    t35 = (t36 + 4);
    t37 = *((unsigned int *)t35);
    t38 = (~(t37));
    t39 = *((unsigned int *)t36);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t35) != 0)
        goto LAB23;

LAB24:    t43 = (t34 + 4);
    t44 = *((unsigned int *)t34);
    t45 = *((unsigned int *)t43);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB25;

LAB26:    t70 = *((unsigned int *)t34);
    t71 = (~(t70));
    t72 = *((unsigned int *)t43);
    t73 = (t71 || t72);
    if (t73 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t43) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t34) > 0)
        goto LAB31;

LAB32:    memcpy(t33, t74, 8);

LAB33:    goto LAB13;

LAB14:    t92 = (t0 + 1848U);
    t93 = *((char **)t92);
    t92 = ((char*)((ng2)));
    memset(t94, 0, 8);
    t95 = (t93 + 4);
    t96 = (t92 + 4);
    t97 = *((unsigned int *)t93);
    t98 = *((unsigned int *)t92);
    t99 = (t97 ^ t98);
    t100 = *((unsigned int *)t95);
    t101 = *((unsigned int *)t96);
    t102 = (t100 ^ t101);
    t103 = (t99 | t102);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t96);
    t106 = (t104 | t105);
    t107 = (~(t106));
    t108 = (t103 & t107);
    if (t108 != 0)
        goto LAB37;

LAB34:    if (t106 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t94) = 1;

LAB37:    memset(t91, 0, 8);
    t110 = (t94 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (~(t111));
    t113 = *((unsigned int *)t94);
    t114 = (t113 & t112);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t110) != 0)
        goto LAB40;

LAB41:    t117 = (t91 + 4);
    t118 = *((unsigned int *)t91);
    t119 = *((unsigned int *)t117);
    t120 = (t118 || t119);
    if (t120 > 0)
        goto LAB42;

LAB43:    t174 = *((unsigned int *)t91);
    t175 = (~(t174));
    t176 = *((unsigned int *)t117);
    t177 = (t175 || t176);
    if (t177 > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t117) > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t91) > 0)
        goto LAB48;

LAB49:    memcpy(t90, t179, 8);

LAB50:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t90, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB21:    *((unsigned int *)t34) = 1;
    goto LAB24;

LAB23:    t42 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB24;

LAB25:    t49 = (t0 + 2808U);
    t50 = *((char **)t49);
    memset(t48, 0, 8);
    t49 = (t48 + 4);
    t51 = (t50 + 4);
    t52 = *((unsigned int *)t50);
    t53 = (t52 >> 0);
    *((unsigned int *)t48) = t53;
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 0);
    *((unsigned int *)t49) = t55;
    t56 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t56 & 255U);
    t57 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t57 & 255U);
    t59 = ((char*)((ng3)));
    t60 = (t0 + 2808U);
    t61 = *((char **)t60);
    memset(t62, 0, 8);
    t60 = (t62 + 4);
    t63 = (t61 + 4);
    t64 = *((unsigned int *)t61);
    t65 = (t64 >> 7);
    t66 = (t65 & 1);
    *((unsigned int *)t62) = t66;
    t67 = *((unsigned int *)t63);
    t68 = (t67 >> 7);
    t69 = (t68 & 1);
    *((unsigned int *)t60) = t69;
    xsi_vlog_mul_concat(t58, 24, 1, t59, 1U, t62, 1);
    xsi_vlogtype_concat(t47, 32, 32, 2U, t58, 24, t48, 8);
    goto LAB26;

LAB27:    t76 = (t0 + 2808U);
    t77 = *((char **)t76);
    memset(t75, 0, 8);
    t76 = (t75 + 4);
    t78 = (t77 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (t79 >> 0);
    *((unsigned int *)t75) = t80;
    t81 = *((unsigned int *)t78);
    t82 = (t81 >> 0);
    *((unsigned int *)t76) = t82;
    t83 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t83 & 255U);
    t84 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t84 & 255U);
    t85 = ((char*)((ng1)));
    xsi_vlogtype_concat(t74, 32, 32, 2U, t85, 24, t75, 8);
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t33, 32, t47, 32, t74, 32);
    goto LAB33;

LAB31:    memcpy(t33, t47, 8);
    goto LAB33;

LAB36:    t109 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB37;

LAB38:    *((unsigned int *)t91) = 1;
    goto LAB41;

LAB40:    t116 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB41;

LAB42:    t123 = (t0 + 2008U);
    t124 = *((char **)t123);
    memset(t122, 0, 8);
    t123 = (t124 + 4);
    t125 = *((unsigned int *)t123);
    t126 = (~(t125));
    t127 = *((unsigned int *)t124);
    t128 = (t127 & t126);
    t129 = (t128 & 1U);
    if (t129 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t123) != 0)
        goto LAB53;

LAB54:    t131 = (t122 + 4);
    t132 = *((unsigned int *)t122);
    t133 = *((unsigned int *)t131);
    t134 = (t132 || t133);
    if (t134 > 0)
        goto LAB55;

LAB56:    t158 = *((unsigned int *)t122);
    t159 = (~(t158));
    t160 = *((unsigned int *)t131);
    t161 = (t159 || t160);
    if (t161 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t131) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t122) > 0)
        goto LAB61;

LAB62:    memcpy(t121, t162, 8);

LAB63:    goto LAB43;

LAB44:    t178 = (t0 + 1048U);
    t179 = *((char **)t178);
    goto LAB45;

LAB46:    xsi_vlog_unsigned_bit_combine(t90, 32, t121, 32, t179, 32);
    goto LAB50;

LAB48:    memcpy(t90, t121, 8);
    goto LAB50;

LAB51:    *((unsigned int *)t122) = 1;
    goto LAB54;

LAB53:    t130 = (t122 + 4);
    *((unsigned int *)t122) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB54;

LAB55:    t137 = (t0 + 2808U);
    t138 = *((char **)t137);
    memset(t136, 0, 8);
    t137 = (t136 + 4);
    t139 = (t138 + 4);
    t140 = *((unsigned int *)t138);
    t141 = (t140 >> 0);
    *((unsigned int *)t136) = t141;
    t142 = *((unsigned int *)t139);
    t143 = (t142 >> 0);
    *((unsigned int *)t137) = t143;
    t144 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t144 & 65535U);
    t145 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t145 & 65535U);
    t147 = ((char*)((ng4)));
    t148 = (t0 + 2808U);
    t149 = *((char **)t148);
    memset(t150, 0, 8);
    t148 = (t150 + 4);
    t151 = (t149 + 4);
    t152 = *((unsigned int *)t149);
    t153 = (t152 >> 15);
    t154 = (t153 & 1);
    *((unsigned int *)t150) = t154;
    t155 = *((unsigned int *)t151);
    t156 = (t155 >> 15);
    t157 = (t156 & 1);
    *((unsigned int *)t148) = t157;
    xsi_vlog_mul_concat(t146, 16, 1, t147, 1U, t150, 1);
    xsi_vlogtype_concat(t135, 32, 32, 2U, t146, 16, t136, 16);
    goto LAB56;

LAB57:    t164 = (t0 + 2808U);
    t165 = *((char **)t164);
    memset(t163, 0, 8);
    t164 = (t163 + 4);
    t166 = (t165 + 4);
    t167 = *((unsigned int *)t165);
    t168 = (t167 >> 0);
    *((unsigned int *)t163) = t168;
    t169 = *((unsigned int *)t166);
    t170 = (t169 >> 0);
    *((unsigned int *)t164) = t170;
    t171 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t171 & 65535U);
    t172 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t172 & 65535U);
    t173 = ((char*)((ng1)));
    xsi_vlogtype_concat(t162, 32, 32, 2U, t173, 16, t163, 16);
    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t121, 32, t135, 32, t162, 32);
    goto LAB63;

LAB61:    memcpy(t121, t135, 8);
    goto LAB63;

}

static void Cont_29_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t38[8];
    char t39[8];
    char t53[8];
    char t63[8];
    char t68[8];
    char t69[8];
    char t83[8];
    char t93[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 8);

LAB20:    t99 = (t0 + 5680);
    t100 = (t99 + 56U);
    t101 = *((char **)t100);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    memset(t103, 0, 8);
    t104 = 15U;
    t105 = t104;
    t106 = (t3 + 4);
    t107 = *((unsigned int *)t3);
    t104 = (t104 & t107);
    t108 = *((unsigned int *)t106);
    t105 = (t105 & t108);
    t109 = (t103 + 4);
    t110 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t110 | t104);
    t111 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t111 | t105);
    xsi_driver_vfirst_trans(t99, 0, 3);
    t112 = (t0 + 5344);
    *((int *)t112) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t40 = (t0 + 1688U);
    t41 = *((char **)t40);
    memset(t39, 0, 8);
    t40 = (t41 + 4);
    t42 = *((unsigned int *)t40);
    t43 = (~(t42));
    t44 = *((unsigned int *)t41);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t40) != 0)
        goto LAB23;

LAB24:    t48 = (t39 + 4);
    t49 = *((unsigned int *)t39);
    t50 = *((unsigned int *)t48);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB25;

LAB26:    t64 = *((unsigned int *)t39);
    t65 = (~(t64));
    t66 = *((unsigned int *)t48);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t48) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t39) > 0)
        goto LAB31;

LAB32:    memcpy(t38, t68, 8);

LAB33:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 4, t33, 4, t38, 4);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB21:    *((unsigned int *)t39) = 1;
    goto LAB24;

LAB23:    t47 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB24;

LAB25:    t52 = ((char*)((ng6)));
    t54 = (t0 + 1208U);
    t55 = *((char **)t54);
    memset(t53, 0, 8);
    t54 = (t53 + 4);
    t56 = (t55 + 4);
    t57 = *((unsigned int *)t55);
    t58 = (t57 >> 0);
    *((unsigned int *)t53) = t58;
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 0);
    *((unsigned int *)t54) = t60;
    t61 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t61 & 3U);
    t62 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t62 & 3U);
    memset(t63, 0, 8);
    xsi_vlog_unsigned_lshift(t63, 4, t52, 4, t53, 2);
    goto LAB26;

LAB27:    t70 = (t0 + 1848U);
    t71 = *((char **)t70);
    memset(t69, 0, 8);
    t70 = (t71 + 4);
    t72 = *((unsigned int *)t70);
    t73 = (~(t72));
    t74 = *((unsigned int *)t71);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t70) != 0)
        goto LAB36;

LAB37:    t78 = (t69 + 4);
    t79 = *((unsigned int *)t69);
    t80 = *((unsigned int *)t78);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB38;

LAB39:    t94 = *((unsigned int *)t69);
    t95 = (~(t94));
    t96 = *((unsigned int *)t78);
    t97 = (t95 || t96);
    if (t97 > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t78) > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t69) > 0)
        goto LAB44;

LAB45:    memcpy(t68, t98, 8);

LAB46:    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t38, 4, t63, 4, t68, 4);
    goto LAB33;

LAB31:    memcpy(t38, t63, 8);
    goto LAB33;

LAB34:    *((unsigned int *)t69) = 1;
    goto LAB37;

LAB36:    t77 = (t69 + 4);
    *((unsigned int *)t69) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB37;

LAB38:    t82 = ((char*)((ng7)));
    t84 = (t0 + 1208U);
    t85 = *((char **)t84);
    memset(t83, 0, 8);
    t84 = (t83 + 4);
    t86 = (t85 + 4);
    t87 = *((unsigned int *)t85);
    t88 = (t87 >> 0);
    *((unsigned int *)t83) = t88;
    t89 = *((unsigned int *)t86);
    t90 = (t89 >> 0);
    *((unsigned int *)t84) = t90;
    t91 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t91 & 3U);
    t92 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t92 & 3U);
    memset(t93, 0, 8);
    xsi_vlog_unsigned_lshift(t93, 4, t82, 4, t83, 2);
    goto LAB39;

LAB40:    t98 = ((char*)((ng8)));
    goto LAB41;

LAB42:    xsi_vlog_unsigned_bit_combine(t68, 4, t93, 4, t98, 4);
    goto LAB46;

LAB44:    memcpy(t68, t93, 8);
    goto LAB46;

}


extern void work_m_00000000000950503605_2924402094_init()
{
	static char *pe[] = {(void *)NetDecl_18_0,(void *)NetDecl_20_1,(void *)Cont_21_2,(void *)Cont_24_3,(void *)Cont_29_4};
	xsi_register_didat("work_m_00000000000950503605_2924402094", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000950503605_2924402094.didat");
	xsi_register_executes(pe);
}
