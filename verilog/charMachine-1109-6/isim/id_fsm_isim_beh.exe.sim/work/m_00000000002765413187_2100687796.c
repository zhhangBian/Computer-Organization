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
static const char *ng0 = "H:/verilog/charMachine-1109-6/id_fsm.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {48U, 0U};
static unsigned int ng3[] = {57U, 0U};
static unsigned int ng4[] = {65U, 0U};
static unsigned int ng5[] = {90U, 0U};
static unsigned int ng6[] = {97U, 0U};
static unsigned int ng7[] = {122U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {2U, 0U};
static int ng10[] = {0, 0};
static int ng11[] = {1, 0};

static void NetReassign_22_2(char *);
static void NetReassign_44_3(char *);
static void NetReassign_62_4(char *);


static void Initial_15_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(15, ng0);

LAB2:    xsi_set_current_line(16, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_20_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t34[8];
    char t48[8];
    char t52[8];
    char t60[8];
    char t100[8];
    char t101[8];
    char t104[8];
    char t108[8];
    char t111[8];
    char t143[8];
    char t151[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    int t135;
    int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    char *t185;
    char *t186;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    t3 = (t0 + 2968);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(20, ng0);

LAB5:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 1608);
    xsi_set_assignedflag(t4);
    t5 = (t0 + 5528);
    *((int *)t5) = 1;
    NetReassign_22_2(t0);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB111;

LAB108:    if (t18 != 0)
        goto LAB110;

LAB109:    *((unsigned int *)t6) = 1;

LAB111:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB112;

LAB113:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB213;

LAB210:    if (t18 != 0)
        goto LAB212;

LAB211:    *((unsigned int *)t6) = 1;

LAB213:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB214;

LAB215:
LAB216:
LAB114:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(24, ng0);

LAB13:    xsi_set_current_line(26, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB15;

LAB14:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB15;

LAB18:    if (*((unsigned int *)t29) < *((unsigned int *)t28))
        goto LAB17;

LAB16:    *((unsigned int *)t30) = 1;

LAB17:    memset(t34, 0, 8);
    t35 = (t30 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t35) != 0)
        goto LAB21;

LAB22:    t42 = (t34 + 4);
    t43 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t42);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB23;

LAB24:    memcpy(t60, t34, 8);

LAB25:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB43;

LAB42:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB45;

LAB44:    *((unsigned int *)t6) = 1;

LAB45:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t8) != 0)
        goto LAB49;

LAB50:    t22 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB51;

LAB52:    memcpy(t52, t30, 8);

LAB53:    memset(t60, 0, 8);
    t51 = (t52 + 4);
    t71 = *((unsigned int *)t51);
    t72 = (~(t71));
    t73 = *((unsigned int *)t52);
    t76 = (t73 & t72);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t51) != 0)
        goto LAB68;

LAB69:    t59 = (t60 + 4);
    t78 = *((unsigned int *)t60);
    t79 = (!(t78));
    t80 = *((unsigned int *)t59);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB70;

LAB71:    memcpy(t151, t60, 8);

LAB72:    t179 = (t151 + 4);
    t180 = *((unsigned int *)t179);
    t181 = (~(t180));
    t182 = *((unsigned int *)t151);
    t183 = (t182 & t181);
    t184 = (t183 != 0);
    if (t184 > 0)
        goto LAB104;

LAB105:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB106:
LAB40:    goto LAB12;

LAB15:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB17;

LAB19:    *((unsigned int *)t34) = 1;
    goto LAB22;

LAB21:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB22;

LAB23:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    t46 = ((char*)((ng3)));
    memset(t48, 0, 8);
    t49 = (t47 + 4);
    if (*((unsigned int *)t49) != 0)
        goto LAB27;

LAB26:    t50 = (t46 + 4);
    if (*((unsigned int *)t50) != 0)
        goto LAB27;

LAB30:    if (*((unsigned int *)t47) > *((unsigned int *)t46))
        goto LAB29;

LAB28:    *((unsigned int *)t48) = 1;

LAB29:    memset(t52, 0, 8);
    t53 = (t48 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t53) != 0)
        goto LAB33;

LAB34:    t61 = *((unsigned int *)t34);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t34 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB25;

LAB27:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB29;

LAB31:    *((unsigned int *)t52) = 1;
    goto LAB34;

LAB33:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB34;

LAB35:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t34 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t34);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB37;

LAB38:    xsi_set_current_line(26, ng0);

LAB41:    xsi_set_current_line(27, ng0);
    t98 = ((char*)((ng1)));
    t99 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t99, t98, 0, 0, 2, 0LL);
    goto LAB40;

LAB43:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB45;

LAB47:    *((unsigned int *)t30) = 1;
    goto LAB50;

LAB49:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB50;

LAB51:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB55;

LAB54:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t29) > *((unsigned int *)t28))
        goto LAB57;

LAB56:    *((unsigned int *)t34) = 1;

LAB57:    memset(t48, 0, 8);
    t35 = (t34 + 4);
    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t35) != 0)
        goto LAB61;

LAB62:    t24 = *((unsigned int *)t30);
    t25 = *((unsigned int *)t48);
    t26 = (t24 & t25);
    *((unsigned int *)t52) = t26;
    t42 = (t30 + 4);
    t46 = (t48 + 4);
    t47 = (t52 + 4);
    t27 = *((unsigned int *)t42);
    t36 = *((unsigned int *)t46);
    t37 = (t27 | t36);
    *((unsigned int *)t47) = t37;
    t38 = *((unsigned int *)t47);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB63;

LAB64:
LAB65:    goto LAB53;

LAB55:    t33 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB57;

LAB59:    *((unsigned int *)t48) = 1;
    goto LAB62;

LAB61:    t41 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB62;

LAB63:    t40 = *((unsigned int *)t52);
    t43 = *((unsigned int *)t47);
    *((unsigned int *)t52) = (t40 | t43);
    t49 = (t30 + 4);
    t50 = (t48 + 4);
    t44 = *((unsigned int *)t30);
    t45 = (~(t44));
    t54 = *((unsigned int *)t49);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (~(t56));
    t58 = *((unsigned int *)t50);
    t61 = (~(t58));
    t84 = (t45 & t55);
    t85 = (t57 & t61);
    t62 = (~(t84));
    t63 = (~(t85));
    t67 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t67 & t62);
    t68 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t68 & t63);
    t69 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t69 & t62);
    t70 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t70 & t63);
    goto LAB65;

LAB66:    *((unsigned int *)t60) = 1;
    goto LAB69;

LAB68:    t53 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB69;

LAB70:    t64 = (t0 + 1048U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng6)));
    memset(t100, 0, 8);
    t66 = (t65 + 4);
    if (*((unsigned int *)t66) != 0)
        goto LAB74;

LAB73:    t74 = (t64 + 4);
    if (*((unsigned int *)t74) != 0)
        goto LAB74;

LAB77:    if (*((unsigned int *)t65) < *((unsigned int *)t64))
        goto LAB76;

LAB75:    *((unsigned int *)t100) = 1;

LAB76:    memset(t101, 0, 8);
    t92 = (t100 + 4);
    t82 = *((unsigned int *)t92);
    t83 = (~(t82));
    t86 = *((unsigned int *)t100);
    t87 = (t86 & t83);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t92) != 0)
        goto LAB80;

LAB81:    t99 = (t101 + 4);
    t89 = *((unsigned int *)t101);
    t90 = *((unsigned int *)t99);
    t91 = (t89 || t90);
    if (t91 > 0)
        goto LAB82;

LAB83:    memcpy(t111, t101, 8);

LAB84:    memset(t143, 0, 8);
    t144 = (t111 + 4);
    t145 = *((unsigned int *)t144);
    t146 = (~(t145));
    t147 = *((unsigned int *)t111);
    t148 = (t147 & t146);
    t149 = (t148 & 1U);
    if (t149 != 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t144) != 0)
        goto LAB99;

LAB100:    t152 = *((unsigned int *)t60);
    t153 = *((unsigned int *)t143);
    t154 = (t152 | t153);
    *((unsigned int *)t151) = t154;
    t155 = (t60 + 4);
    t156 = (t143 + 4);
    t157 = (t151 + 4);
    t158 = *((unsigned int *)t155);
    t159 = *((unsigned int *)t156);
    t160 = (t158 | t159);
    *((unsigned int *)t157) = t160;
    t161 = *((unsigned int *)t157);
    t162 = (t161 != 0);
    if (t162 == 1)
        goto LAB101;

LAB102:
LAB103:    goto LAB72;

LAB74:    t75 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB76;

LAB78:    *((unsigned int *)t101) = 1;
    goto LAB81;

LAB80:    t98 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB81;

LAB82:    t102 = (t0 + 1048U);
    t103 = *((char **)t102);
    t102 = ((char*)((ng7)));
    memset(t104, 0, 8);
    t105 = (t103 + 4);
    if (*((unsigned int *)t105) != 0)
        goto LAB86;

LAB85:    t106 = (t102 + 4);
    if (*((unsigned int *)t106) != 0)
        goto LAB86;

LAB89:    if (*((unsigned int *)t103) > *((unsigned int *)t102))
        goto LAB88;

LAB87:    *((unsigned int *)t104) = 1;

LAB88:    memset(t108, 0, 8);
    t109 = (t104 + 4);
    t93 = *((unsigned int *)t109);
    t94 = (~(t93));
    t95 = *((unsigned int *)t104);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t109) != 0)
        goto LAB92;

LAB93:    t112 = *((unsigned int *)t101);
    t113 = *((unsigned int *)t108);
    t114 = (t112 & t113);
    *((unsigned int *)t111) = t114;
    t115 = (t101 + 4);
    t116 = (t108 + 4);
    t117 = (t111 + 4);
    t118 = *((unsigned int *)t115);
    t119 = *((unsigned int *)t116);
    t120 = (t118 | t119);
    *((unsigned int *)t117) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 != 0);
    if (t122 == 1)
        goto LAB94;

LAB95:
LAB96:    goto LAB84;

LAB86:    t107 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB88;

LAB90:    *((unsigned int *)t108) = 1;
    goto LAB93;

LAB92:    t110 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t110) = 1;
    goto LAB93;

LAB94:    t123 = *((unsigned int *)t111);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t111) = (t123 | t124);
    t125 = (t101 + 4);
    t126 = (t108 + 4);
    t127 = *((unsigned int *)t101);
    t128 = (~(t127));
    t129 = *((unsigned int *)t125);
    t130 = (~(t129));
    t131 = *((unsigned int *)t108);
    t132 = (~(t131));
    t133 = *((unsigned int *)t126);
    t134 = (~(t133));
    t135 = (t128 & t130);
    t136 = (t132 & t134);
    t137 = (~(t135));
    t138 = (~(t136));
    t139 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t139 & t137);
    t140 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t140 & t138);
    t141 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t141 & t137);
    t142 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t142 & t138);
    goto LAB96;

LAB97:    *((unsigned int *)t143) = 1;
    goto LAB100;

LAB99:    t150 = (t143 + 4);
    *((unsigned int *)t143) = 1;
    *((unsigned int *)t150) = 1;
    goto LAB100;

LAB101:    t163 = *((unsigned int *)t151);
    t164 = *((unsigned int *)t157);
    *((unsigned int *)t151) = (t163 | t164);
    t165 = (t60 + 4);
    t166 = (t143 + 4);
    t167 = *((unsigned int *)t165);
    t168 = (~(t167));
    t169 = *((unsigned int *)t60);
    t170 = (t169 & t168);
    t171 = *((unsigned int *)t166);
    t172 = (~(t171));
    t173 = *((unsigned int *)t143);
    t174 = (t173 & t172);
    t175 = (~(t170));
    t176 = (~(t174));
    t177 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t177 & t175);
    t178 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t178 & t176);
    goto LAB103;

LAB104:    xsi_set_current_line(31, ng0);

LAB107:    xsi_set_current_line(32, ng0);
    t185 = ((char*)((ng8)));
    t186 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t186, t185, 0, 0, 2, 0LL);
    goto LAB106;

LAB110:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB111;

LAB112:    xsi_set_current_line(40, ng0);

LAB115:    xsi_set_current_line(42, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB117;

LAB116:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB117;

LAB120:    if (*((unsigned int *)t29) < *((unsigned int *)t28))
        goto LAB119;

LAB118:    *((unsigned int *)t30) = 1;

LAB119:    memset(t34, 0, 8);
    t35 = (t30 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t35) != 0)
        goto LAB123;

LAB124:    t42 = (t34 + 4);
    t43 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t42);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB125;

LAB126:    memcpy(t60, t34, 8);

LAB127:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB140;

LAB141:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB145;

LAB144:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB145;

LAB148:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB147;

LAB146:    *((unsigned int *)t6) = 1;

LAB147:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB149;

LAB150:    if (*((unsigned int *)t8) != 0)
        goto LAB151;

LAB152:    t22 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB153;

LAB154:    memcpy(t52, t30, 8);

LAB155:    memset(t60, 0, 8);
    t51 = (t52 + 4);
    t71 = *((unsigned int *)t51);
    t72 = (~(t71));
    t73 = *((unsigned int *)t52);
    t76 = (t73 & t72);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB168;

LAB169:    if (*((unsigned int *)t51) != 0)
        goto LAB170;

LAB171:    t59 = (t60 + 4);
    t78 = *((unsigned int *)t60);
    t79 = (!(t78));
    t80 = *((unsigned int *)t59);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB172;

LAB173:    memcpy(t151, t60, 8);

LAB174:    t179 = (t151 + 4);
    t180 = *((unsigned int *)t179);
    t181 = (~(t180));
    t182 = *((unsigned int *)t151);
    t183 = (t182 & t181);
    t184 = (t183 != 0);
    if (t184 > 0)
        goto LAB206;

LAB207:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB208:
LAB142:    goto LAB114;

LAB117:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB119;

LAB121:    *((unsigned int *)t34) = 1;
    goto LAB124;

LAB123:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB124;

LAB125:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    t46 = ((char*)((ng3)));
    memset(t48, 0, 8);
    t49 = (t47 + 4);
    if (*((unsigned int *)t49) != 0)
        goto LAB129;

LAB128:    t50 = (t46 + 4);
    if (*((unsigned int *)t50) != 0)
        goto LAB129;

LAB132:    if (*((unsigned int *)t47) > *((unsigned int *)t46))
        goto LAB131;

LAB130:    *((unsigned int *)t48) = 1;

LAB131:    memset(t52, 0, 8);
    t53 = (t48 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB133;

LAB134:    if (*((unsigned int *)t53) != 0)
        goto LAB135;

LAB136:    t61 = *((unsigned int *)t34);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t34 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB137;

LAB138:
LAB139:    goto LAB127;

LAB129:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB131;

LAB133:    *((unsigned int *)t52) = 1;
    goto LAB136;

LAB135:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB136;

LAB137:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t34 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t34);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB139;

LAB140:    xsi_set_current_line(42, ng0);

LAB143:    xsi_set_current_line(43, ng0);
    t98 = ((char*)((ng9)));
    t99 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t99, t98, 0, 0, 2, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1608);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 5532);
    *((int *)t3) = 1;
    NetReassign_44_3(t0);
    goto LAB142;

LAB145:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB147;

LAB149:    *((unsigned int *)t30) = 1;
    goto LAB152;

LAB151:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB152;

LAB153:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB157;

LAB156:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB157;

LAB160:    if (*((unsigned int *)t29) > *((unsigned int *)t28))
        goto LAB159;

LAB158:    *((unsigned int *)t34) = 1;

LAB159:    memset(t48, 0, 8);
    t35 = (t34 + 4);
    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB161;

LAB162:    if (*((unsigned int *)t35) != 0)
        goto LAB163;

LAB164:    t24 = *((unsigned int *)t30);
    t25 = *((unsigned int *)t48);
    t26 = (t24 & t25);
    *((unsigned int *)t52) = t26;
    t42 = (t30 + 4);
    t46 = (t48 + 4);
    t47 = (t52 + 4);
    t27 = *((unsigned int *)t42);
    t36 = *((unsigned int *)t46);
    t37 = (t27 | t36);
    *((unsigned int *)t47) = t37;
    t38 = *((unsigned int *)t47);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB165;

LAB166:
LAB167:    goto LAB155;

LAB157:    t33 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB159;

LAB161:    *((unsigned int *)t48) = 1;
    goto LAB164;

LAB163:    t41 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB164;

LAB165:    t40 = *((unsigned int *)t52);
    t43 = *((unsigned int *)t47);
    *((unsigned int *)t52) = (t40 | t43);
    t49 = (t30 + 4);
    t50 = (t48 + 4);
    t44 = *((unsigned int *)t30);
    t45 = (~(t44));
    t54 = *((unsigned int *)t49);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (~(t56));
    t58 = *((unsigned int *)t50);
    t61 = (~(t58));
    t84 = (t45 & t55);
    t85 = (t57 & t61);
    t62 = (~(t84));
    t63 = (~(t85));
    t67 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t67 & t62);
    t68 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t68 & t63);
    t69 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t69 & t62);
    t70 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t70 & t63);
    goto LAB167;

LAB168:    *((unsigned int *)t60) = 1;
    goto LAB171;

LAB170:    t53 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB171;

LAB172:    t64 = (t0 + 1048U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng6)));
    memset(t100, 0, 8);
    t66 = (t65 + 4);
    if (*((unsigned int *)t66) != 0)
        goto LAB176;

LAB175:    t74 = (t64 + 4);
    if (*((unsigned int *)t74) != 0)
        goto LAB176;

LAB179:    if (*((unsigned int *)t65) < *((unsigned int *)t64))
        goto LAB178;

LAB177:    *((unsigned int *)t100) = 1;

LAB178:    memset(t101, 0, 8);
    t92 = (t100 + 4);
    t82 = *((unsigned int *)t92);
    t83 = (~(t82));
    t86 = *((unsigned int *)t100);
    t87 = (t86 & t83);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB180;

LAB181:    if (*((unsigned int *)t92) != 0)
        goto LAB182;

LAB183:    t99 = (t101 + 4);
    t89 = *((unsigned int *)t101);
    t90 = *((unsigned int *)t99);
    t91 = (t89 || t90);
    if (t91 > 0)
        goto LAB184;

LAB185:    memcpy(t111, t101, 8);

LAB186:    memset(t143, 0, 8);
    t144 = (t111 + 4);
    t145 = *((unsigned int *)t144);
    t146 = (~(t145));
    t147 = *((unsigned int *)t111);
    t148 = (t147 & t146);
    t149 = (t148 & 1U);
    if (t149 != 0)
        goto LAB199;

LAB200:    if (*((unsigned int *)t144) != 0)
        goto LAB201;

LAB202:    t152 = *((unsigned int *)t60);
    t153 = *((unsigned int *)t143);
    t154 = (t152 | t153);
    *((unsigned int *)t151) = t154;
    t155 = (t60 + 4);
    t156 = (t143 + 4);
    t157 = (t151 + 4);
    t158 = *((unsigned int *)t155);
    t159 = *((unsigned int *)t156);
    t160 = (t158 | t159);
    *((unsigned int *)t157) = t160;
    t161 = *((unsigned int *)t157);
    t162 = (t161 != 0);
    if (t162 == 1)
        goto LAB203;

LAB204:
LAB205:    goto LAB174;

LAB176:    t75 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB178;

LAB180:    *((unsigned int *)t101) = 1;
    goto LAB183;

LAB182:    t98 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB183;

LAB184:    t102 = (t0 + 1048U);
    t103 = *((char **)t102);
    t102 = ((char*)((ng7)));
    memset(t104, 0, 8);
    t105 = (t103 + 4);
    if (*((unsigned int *)t105) != 0)
        goto LAB188;

LAB187:    t106 = (t102 + 4);
    if (*((unsigned int *)t106) != 0)
        goto LAB188;

LAB191:    if (*((unsigned int *)t103) > *((unsigned int *)t102))
        goto LAB190;

LAB189:    *((unsigned int *)t104) = 1;

LAB190:    memset(t108, 0, 8);
    t109 = (t104 + 4);
    t93 = *((unsigned int *)t109);
    t94 = (~(t93));
    t95 = *((unsigned int *)t104);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB192;

LAB193:    if (*((unsigned int *)t109) != 0)
        goto LAB194;

LAB195:    t112 = *((unsigned int *)t101);
    t113 = *((unsigned int *)t108);
    t114 = (t112 & t113);
    *((unsigned int *)t111) = t114;
    t115 = (t101 + 4);
    t116 = (t108 + 4);
    t117 = (t111 + 4);
    t118 = *((unsigned int *)t115);
    t119 = *((unsigned int *)t116);
    t120 = (t118 | t119);
    *((unsigned int *)t117) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 != 0);
    if (t122 == 1)
        goto LAB196;

LAB197:
LAB198:    goto LAB186;

LAB188:    t107 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB190;

LAB192:    *((unsigned int *)t108) = 1;
    goto LAB195;

LAB194:    t110 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t110) = 1;
    goto LAB195;

LAB196:    t123 = *((unsigned int *)t111);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t111) = (t123 | t124);
    t125 = (t101 + 4);
    t126 = (t108 + 4);
    t127 = *((unsigned int *)t101);
    t128 = (~(t127));
    t129 = *((unsigned int *)t125);
    t130 = (~(t129));
    t131 = *((unsigned int *)t108);
    t132 = (~(t131));
    t133 = *((unsigned int *)t126);
    t134 = (~(t133));
    t135 = (t128 & t130);
    t136 = (t132 & t134);
    t137 = (~(t135));
    t138 = (~(t136));
    t139 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t139 & t137);
    t140 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t140 & t138);
    t141 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t141 & t137);
    t142 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t142 & t138);
    goto LAB198;

LAB199:    *((unsigned int *)t143) = 1;
    goto LAB202;

LAB201:    t150 = (t143 + 4);
    *((unsigned int *)t143) = 1;
    *((unsigned int *)t150) = 1;
    goto LAB202;

LAB203:    t163 = *((unsigned int *)t151);
    t164 = *((unsigned int *)t157);
    *((unsigned int *)t151) = (t163 | t164);
    t165 = (t60 + 4);
    t166 = (t143 + 4);
    t167 = *((unsigned int *)t165);
    t168 = (~(t167));
    t169 = *((unsigned int *)t60);
    t170 = (t169 & t168);
    t171 = *((unsigned int *)t166);
    t172 = (~(t171));
    t173 = *((unsigned int *)t143);
    t174 = (t173 & t172);
    t175 = (~(t170));
    t176 = (~(t174));
    t177 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t177 & t175);
    t178 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t178 & t176);
    goto LAB205;

LAB206:    xsi_set_current_line(48, ng0);

LAB209:    xsi_set_current_line(49, ng0);
    t185 = ((char*)((ng8)));
    t186 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t186, t185, 0, 0, 2, 0LL);
    goto LAB208;

LAB212:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB213;

LAB214:    xsi_set_current_line(58, ng0);

LAB217:    xsi_set_current_line(60, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB219;

LAB218:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB219;

LAB222:    if (*((unsigned int *)t29) < *((unsigned int *)t28))
        goto LAB221;

LAB220:    *((unsigned int *)t30) = 1;

LAB221:    memset(t34, 0, 8);
    t35 = (t30 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB223;

LAB224:    if (*((unsigned int *)t35) != 0)
        goto LAB225;

LAB226:    t42 = (t34 + 4);
    t43 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t42);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB227;

LAB228:    memcpy(t60, t34, 8);

LAB229:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB242;

LAB243:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB247;

LAB246:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB247;

LAB250:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB249;

LAB248:    *((unsigned int *)t6) = 1;

LAB249:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB251;

LAB252:    if (*((unsigned int *)t8) != 0)
        goto LAB253;

LAB254:    t22 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB255;

LAB256:    memcpy(t52, t30, 8);

LAB257:    memset(t60, 0, 8);
    t51 = (t52 + 4);
    t71 = *((unsigned int *)t51);
    t72 = (~(t71));
    t73 = *((unsigned int *)t52);
    t76 = (t73 & t72);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB270;

LAB271:    if (*((unsigned int *)t51) != 0)
        goto LAB272;

LAB273:    t59 = (t60 + 4);
    t78 = *((unsigned int *)t60);
    t79 = (!(t78));
    t80 = *((unsigned int *)t59);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB274;

LAB275:    memcpy(t151, t60, 8);

LAB276:    t179 = (t151 + 4);
    t180 = *((unsigned int *)t179);
    t181 = (~(t180));
    t182 = *((unsigned int *)t151);
    t183 = (t182 & t181);
    t184 = (t183 != 0);
    if (t184 > 0)
        goto LAB308;

LAB309:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB310:
LAB244:    goto LAB216;

LAB219:    t33 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB221;

LAB223:    *((unsigned int *)t34) = 1;
    goto LAB226;

LAB225:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB226;

LAB227:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    t46 = ((char*)((ng3)));
    memset(t48, 0, 8);
    t49 = (t47 + 4);
    if (*((unsigned int *)t49) != 0)
        goto LAB231;

LAB230:    t50 = (t46 + 4);
    if (*((unsigned int *)t50) != 0)
        goto LAB231;

LAB234:    if (*((unsigned int *)t47) > *((unsigned int *)t46))
        goto LAB233;

LAB232:    *((unsigned int *)t48) = 1;

LAB233:    memset(t52, 0, 8);
    t53 = (t48 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB235;

LAB236:    if (*((unsigned int *)t53) != 0)
        goto LAB237;

LAB238:    t61 = *((unsigned int *)t34);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t34 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB239;

LAB240:
LAB241:    goto LAB229;

LAB231:    t51 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB233;

LAB235:    *((unsigned int *)t52) = 1;
    goto LAB238;

LAB237:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB238;

LAB239:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t34 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t34);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB241;

LAB242:    xsi_set_current_line(60, ng0);

LAB245:    xsi_set_current_line(61, ng0);
    t98 = ((char*)((ng9)));
    t99 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t99, t98, 0, 0, 2, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1608);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 5536);
    *((int *)t3) = 1;
    NetReassign_62_4(t0);
    goto LAB244;

LAB247:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB249;

LAB251:    *((unsigned int *)t30) = 1;
    goto LAB254;

LAB253:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB254;

LAB255:    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t31 = (t29 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB259;

LAB258:    t32 = (t28 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB259;

LAB262:    if (*((unsigned int *)t29) > *((unsigned int *)t28))
        goto LAB261;

LAB260:    *((unsigned int *)t34) = 1;

LAB261:    memset(t48, 0, 8);
    t35 = (t34 + 4);
    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB263;

LAB264:    if (*((unsigned int *)t35) != 0)
        goto LAB265;

LAB266:    t24 = *((unsigned int *)t30);
    t25 = *((unsigned int *)t48);
    t26 = (t24 & t25);
    *((unsigned int *)t52) = t26;
    t42 = (t30 + 4);
    t46 = (t48 + 4);
    t47 = (t52 + 4);
    t27 = *((unsigned int *)t42);
    t36 = *((unsigned int *)t46);
    t37 = (t27 | t36);
    *((unsigned int *)t47) = t37;
    t38 = *((unsigned int *)t47);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB267;

LAB268:
LAB269:    goto LAB257;

LAB259:    t33 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB261;

LAB263:    *((unsigned int *)t48) = 1;
    goto LAB266;

LAB265:    t41 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB266;

LAB267:    t40 = *((unsigned int *)t52);
    t43 = *((unsigned int *)t47);
    *((unsigned int *)t52) = (t40 | t43);
    t49 = (t30 + 4);
    t50 = (t48 + 4);
    t44 = *((unsigned int *)t30);
    t45 = (~(t44));
    t54 = *((unsigned int *)t49);
    t55 = (~(t54));
    t56 = *((unsigned int *)t48);
    t57 = (~(t56));
    t58 = *((unsigned int *)t50);
    t61 = (~(t58));
    t84 = (t45 & t55);
    t85 = (t57 & t61);
    t62 = (~(t84));
    t63 = (~(t85));
    t67 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t67 & t62);
    t68 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t68 & t63);
    t69 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t69 & t62);
    t70 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t70 & t63);
    goto LAB269;

LAB270:    *((unsigned int *)t60) = 1;
    goto LAB273;

LAB272:    t53 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB273;

LAB274:    t64 = (t0 + 1048U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng6)));
    memset(t100, 0, 8);
    t66 = (t65 + 4);
    if (*((unsigned int *)t66) != 0)
        goto LAB278;

LAB277:    t74 = (t64 + 4);
    if (*((unsigned int *)t74) != 0)
        goto LAB278;

LAB281:    if (*((unsigned int *)t65) < *((unsigned int *)t64))
        goto LAB280;

LAB279:    *((unsigned int *)t100) = 1;

LAB280:    memset(t101, 0, 8);
    t92 = (t100 + 4);
    t82 = *((unsigned int *)t92);
    t83 = (~(t82));
    t86 = *((unsigned int *)t100);
    t87 = (t86 & t83);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB282;

LAB283:    if (*((unsigned int *)t92) != 0)
        goto LAB284;

LAB285:    t99 = (t101 + 4);
    t89 = *((unsigned int *)t101);
    t90 = *((unsigned int *)t99);
    t91 = (t89 || t90);
    if (t91 > 0)
        goto LAB286;

LAB287:    memcpy(t111, t101, 8);

LAB288:    memset(t143, 0, 8);
    t144 = (t111 + 4);
    t145 = *((unsigned int *)t144);
    t146 = (~(t145));
    t147 = *((unsigned int *)t111);
    t148 = (t147 & t146);
    t149 = (t148 & 1U);
    if (t149 != 0)
        goto LAB301;

LAB302:    if (*((unsigned int *)t144) != 0)
        goto LAB303;

LAB304:    t152 = *((unsigned int *)t60);
    t153 = *((unsigned int *)t143);
    t154 = (t152 | t153);
    *((unsigned int *)t151) = t154;
    t155 = (t60 + 4);
    t156 = (t143 + 4);
    t157 = (t151 + 4);
    t158 = *((unsigned int *)t155);
    t159 = *((unsigned int *)t156);
    t160 = (t158 | t159);
    *((unsigned int *)t157) = t160;
    t161 = *((unsigned int *)t157);
    t162 = (t161 != 0);
    if (t162 == 1)
        goto LAB305;

LAB306:
LAB307:    goto LAB276;

LAB278:    t75 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB280;

LAB282:    *((unsigned int *)t101) = 1;
    goto LAB285;

LAB284:    t98 = (t101 + 4);
    *((unsigned int *)t101) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB285;

LAB286:    t102 = (t0 + 1048U);
    t103 = *((char **)t102);
    t102 = ((char*)((ng7)));
    memset(t104, 0, 8);
    t105 = (t103 + 4);
    if (*((unsigned int *)t105) != 0)
        goto LAB290;

LAB289:    t106 = (t102 + 4);
    if (*((unsigned int *)t106) != 0)
        goto LAB290;

LAB293:    if (*((unsigned int *)t103) > *((unsigned int *)t102))
        goto LAB292;

LAB291:    *((unsigned int *)t104) = 1;

LAB292:    memset(t108, 0, 8);
    t109 = (t104 + 4);
    t93 = *((unsigned int *)t109);
    t94 = (~(t93));
    t95 = *((unsigned int *)t104);
    t96 = (t95 & t94);
    t97 = (t96 & 1U);
    if (t97 != 0)
        goto LAB294;

LAB295:    if (*((unsigned int *)t109) != 0)
        goto LAB296;

LAB297:    t112 = *((unsigned int *)t101);
    t113 = *((unsigned int *)t108);
    t114 = (t112 & t113);
    *((unsigned int *)t111) = t114;
    t115 = (t101 + 4);
    t116 = (t108 + 4);
    t117 = (t111 + 4);
    t118 = *((unsigned int *)t115);
    t119 = *((unsigned int *)t116);
    t120 = (t118 | t119);
    *((unsigned int *)t117) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 != 0);
    if (t122 == 1)
        goto LAB298;

LAB299:
LAB300:    goto LAB288;

LAB290:    t107 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB292;

LAB294:    *((unsigned int *)t108) = 1;
    goto LAB297;

LAB296:    t110 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t110) = 1;
    goto LAB297;

LAB298:    t123 = *((unsigned int *)t111);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t111) = (t123 | t124);
    t125 = (t101 + 4);
    t126 = (t108 + 4);
    t127 = *((unsigned int *)t101);
    t128 = (~(t127));
    t129 = *((unsigned int *)t125);
    t130 = (~(t129));
    t131 = *((unsigned int *)t108);
    t132 = (~(t131));
    t133 = *((unsigned int *)t126);
    t134 = (~(t133));
    t135 = (t128 & t130);
    t136 = (t132 & t134);
    t137 = (~(t135));
    t138 = (~(t136));
    t139 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t139 & t137);
    t140 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t140 & t138);
    t141 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t141 & t137);
    t142 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t142 & t138);
    goto LAB300;

LAB301:    *((unsigned int *)t143) = 1;
    goto LAB304;

LAB303:    t150 = (t143 + 4);
    *((unsigned int *)t143) = 1;
    *((unsigned int *)t150) = 1;
    goto LAB304;

LAB305:    t163 = *((unsigned int *)t151);
    t164 = *((unsigned int *)t157);
    *((unsigned int *)t151) = (t163 | t164);
    t165 = (t60 + 4);
    t166 = (t143 + 4);
    t167 = *((unsigned int *)t165);
    t168 = (~(t167));
    t169 = *((unsigned int *)t60);
    t170 = (t169 & t168);
    t171 = *((unsigned int *)t166);
    t172 = (~(t171));
    t173 = *((unsigned int *)t143);
    t174 = (t173 & t172);
    t175 = (~(t170));
    t176 = (~(t174));
    t177 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t177 & t175);
    t178 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t178 & t176);
    goto LAB307;

LAB308:    xsi_set_current_line(66, ng0);

LAB311:    xsi_set_current_line(67, ng0);
    t185 = ((char*)((ng8)));
    t186 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t186, t185, 0, 0, 2, 0LL);
    goto LAB310;

}

static void NetReassign_22_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t3 = 0;
    t2 = ((char*)((ng10)));
    t4 = (t0 + 5528);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_44_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t3 = 0;
    t2 = ((char*)((ng11)));
    t4 = (t0 + 5532);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_62_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t3 = 0;
    t2 = ((char*)((ng11)));
    t4 = (t0 + 5536);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000002765413187_2100687796_init()
{
	static char *pe[] = {(void *)Initial_15_0,(void *)Always_20_1,(void *)NetReassign_22_2,(void *)NetReassign_44_3,(void *)NetReassign_62_4};
	xsi_register_didat("work_m_00000000002765413187_2100687796", "isim/id_fsm_isim_beh.exe.sim/work/m_00000000002765413187_2100687796.didat");
	xsi_register_executes(pe);
}
