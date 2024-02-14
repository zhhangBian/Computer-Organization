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
static const char *ng0 = "H:/BUAA_workshop/Computer Organization/verilog/CPU-pipline-P7/TC.v";
static int ng1[] = {0, 0};
static int ng2[] = {3, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {3U, 0U};



static void Cont_26_0(char *t0)
{
    char t5[8];
    char t13[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2568);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2568);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t14 = (t0 + 2568);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t13, 1, t5, t16, 2, t17, 32, 1);
    t18 = (t0 + 2888);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t20);
    t24 = (t22 & t23);
    *((unsigned int *)t21) = t24;
    t25 = (t13 + 4);
    t26 = (t20 + 4);
    t27 = (t21 + 4);
    t28 = *((unsigned int *)t25);
    t29 = *((unsigned int *)t26);
    t30 = (t28 | t29);
    *((unsigned int *)t27) = t30;
    t31 = *((unsigned int *)t27);
    t32 = (t31 != 0);
    if (t32 == 1)
        goto LAB4;

LAB5:
LAB6:    t53 = (t0 + 5160);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memset(t57, 0, 8);
    t58 = 1U;
    t59 = t58;
    t60 = (t21 + 4);
    t61 = *((unsigned int *)t21);
    t58 = (t58 & t61);
    t62 = *((unsigned int *)t60);
    t59 = (t59 & t62);
    t63 = (t57 + 4);
    t64 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t64 | t58);
    t65 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t65 | t59);
    xsi_driver_vfirst_trans(t53, 0, 0);
    t66 = (t0 + 5032);
    *((int *)t66) = 1;

LAB1:    return;
LAB4:    t33 = *((unsigned int *)t21);
    t34 = *((unsigned int *)t27);
    *((unsigned int *)t21) = (t33 | t34);
    t35 = (t13 + 4);
    t36 = (t20 + 4);
    t37 = *((unsigned int *)t13);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (~(t39));
    t41 = *((unsigned int *)t20);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t49 & t47);
    t50 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t50 & t48);
    t51 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t51 & t47);
    t52 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t52 & t48);
    goto LAB6;

}

static void Cont_27_1(char *t0)
{
    char t5[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2568);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2568);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t13 = (t0 + 1368U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 0);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 0);
    *((unsigned int *)t13) = t19;
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 3U);
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 3U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 2, 2);
    t22 = (t0 + 5224);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 5048);
    *((int *)t27) = 1;

LAB1:    return;
}

static void NetDecl_29_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t42[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB7;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t15) = 1;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t54 = *((unsigned int *)t4);
    t55 = (~(t54));
    t56 = *((unsigned int *)t38);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t59, 8);

LAB20:    t58 = (t0 + 5288);
    t60 = (t58 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t3, 8);
    xsi_driver_vfirst_trans(t58, 0, 31U);
    t64 = (t0 + 5064);
    *((int *)t64) = 1;

LAB1:    return;
LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t44 = (t0 + 1688U);
    t45 = *((char **)t44);
    memset(t43, 0, 8);
    t44 = (t43 + 4);
    t46 = (t45 + 4);
    t47 = *((unsigned int *)t45);
    t48 = (t47 >> 0);
    *((unsigned int *)t43) = t48;
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 0);
    *((unsigned int *)t44) = t50;
    t51 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t51 & 15U);
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t52 & 15U);
    t53 = ((char*)((ng3)));
    xsi_vlogtype_concat(t42, 32, 32, 2U, t53, 28, t43, 4);
    goto LAB13;

LAB14:    t58 = (t0 + 1688U);
    t59 = *((char **)t58);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t42, 32, t59, 32);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

}

static void Always_32_3(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t57[8];
    char t67[8];
    char t80[8];
    char t89[8];
    char t91[8];
    char t92[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    char *t79;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t90;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    int t106;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 5080);
    *((int *)t2) = 1;
    t3 = (t0 + 4744);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(44, ng0);

LAB21:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t11);
    t34 = *((unsigned int *)t12);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB25;

LAB22:    if (t37 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t13) = 1;

LAB25:    t17 = (t13 + 4);
    t40 = *((unsigned int *)t17);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t11);
    t34 = *((unsigned int *)t12);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB37;

LAB34:    if (t37 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t13) = 1;

LAB37:    t17 = (t13 + 4);
    t40 = *((unsigned int *)t17);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t27 = (t9 ^ t10);
    t30 = (t8 | t27);
    t33 = *((unsigned int *)t11);
    t34 = *((unsigned int *)t12);
    t37 = (t33 | t34);
    t38 = (~(t37));
    t39 = (t30 & t38);
    if (t39 != 0)
        goto LAB47;

LAB44:    if (t37 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t13) = 1;

LAB47:    t17 = (t13 + 4);
    t40 = *((unsigned int *)t17);
    t41 = (~(t40));
    t42 = *((unsigned int *)t13);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(73, ng0);

LAB70:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t14 = (t0 + 2568);
    t17 = (t14 + 64U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t13, 32, t4, t12, t18, 2, 1, t19, 32, 1);
    memset(t15, 0, 8);
    t20 = (t15 + 4);
    t21 = (t13 + 4);
    t6 = *((unsigned int *)t13);
    t7 = (t6 >> 1);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t21);
    t9 = (t8 >> 1);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 3U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 3U);
    t22 = ((char*)((ng3)));
    memset(t16, 0, 8);
    t23 = (t15 + 4);
    t24 = (t22 + 4);
    t30 = *((unsigned int *)t15);
    t33 = *((unsigned int *)t22);
    t34 = (t30 ^ t33);
    t37 = *((unsigned int *)t23);
    t38 = *((unsigned int *)t24);
    t39 = (t37 ^ t38);
    t40 = (t34 | t39);
    t41 = *((unsigned int *)t23);
    t42 = *((unsigned int *)t24);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t50 = (t40 & t44);
    if (t50 != 0)
        goto LAB74;

LAB71:    if (t43 != 0)
        goto LAB73;

LAB72:    *((unsigned int *)t16) = 1;

LAB74:    t26 = (t16 + 4);
    t51 = *((unsigned int *)t26);
    t52 = (~(t51));
    t53 = *((unsigned int *)t16);
    t54 = (t53 & t52);
    t72 = (t54 != 0);
    if (t72 > 0)
        goto LAB75;

LAB76:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB77:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB50:
LAB40:
LAB28:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(33, ng0);

LAB9:    xsi_set_current_line(34, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(36, ng0);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB10:    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(36, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 2568);
    t17 = (t0 + 2568);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2568);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 3048);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 3048);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB13:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(39, ng0);

LAB18:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    t4 = (t0 + 2568);
    t11 = (t0 + 2568);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2568);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 1368U);
    t21 = *((char **)t20);
    memset(t16, 0, 8);
    t20 = (t16 + 4);
    t22 = (t21 + 4);
    t27 = *((unsigned int *)t21);
    t30 = (t27 >> 0);
    *((unsigned int *)t16) = t30;
    t33 = *((unsigned int *)t22);
    t34 = (t33 >> 0);
    *((unsigned int *)t20) = t34;
    t37 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t37 & 3U);
    t38 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t38 & 3U);
    xsi_vlog_generic_convert_array_indices(t13, t15, t14, t19, 2, 1, t16, 2, 2);
    t23 = (t13 + 4);
    t39 = *((unsigned int *)t23);
    t28 = (!(t39));
    t24 = (t15 + 4);
    t40 = *((unsigned int *)t24);
    t31 = (!(t40));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    goto LAB17;

LAB19:    t41 = *((unsigned int *)t13);
    t42 = *((unsigned int *)t15);
    t35 = (t41 - t42);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB20;

LAB24:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(45, ng0);

LAB29:    xsi_set_current_line(46, ng0);
    t18 = (t0 + 2568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t0 + 2568);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2568);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t29 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t15, 32, t20, t23, t26, 2, 1, t29, 32, 1);
    t45 = (t0 + 2568);
    t46 = (t45 + 72U);
    t47 = *((char **)t46);
    t48 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t16, 1, t15, t47, 2, t48, 32, 1);
    t49 = (t16 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t16);
    t53 = (t52 & t51);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB30;

LAB31:
LAB32:    goto LAB28;

LAB30:    xsi_set_current_line(46, ng0);

LAB33:    xsi_set_current_line(47, ng0);
    t55 = ((char*)((ng5)));
    t56 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t56, t55, 0, 0, 2, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB32;

LAB36:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(52, ng0);

LAB41:    xsi_set_current_line(53, ng0);
    t18 = (t0 + 2568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t0 + 2568);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2568);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t29 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t15, 32, t20, t23, t26, 2, 1, t29, 32, 1);
    t45 = (t0 + 2568);
    t46 = (t0 + 2568);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2568);
    t55 = (t49 + 64U);
    t56 = *((char **)t55);
    t58 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t16, t57, t48, t56, 2, 1, t58, 32, 1);
    t59 = (t16 + 4);
    t50 = *((unsigned int *)t59);
    t28 = (!(t50));
    t60 = (t57 + 4);
    t51 = *((unsigned int *)t60);
    t31 = (!(t51));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB40;

LAB42:    t52 = *((unsigned int *)t16);
    t53 = *((unsigned int *)t57);
    t35 = (t52 - t53);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t45, t15, 0, *((unsigned int *)t57), t36, 0LL);
    goto LAB43;

LAB46:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(57, ng0);

LAB51:    xsi_set_current_line(58, ng0);
    t18 = (t0 + 2568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t0 + 2568);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2568);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t29 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t15, 32, t20, t23, t26, 2, 1, t29, 32, 1);
    t45 = (t0 + 2568);
    t46 = (t45 + 72U);
    t47 = *((char **)t46);
    t48 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t16, 1, t15, t47, 2, t48, 32, 1);
    t49 = (t16 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t16);
    t53 = (t52 & t51);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(68, ng0);

LAB69:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB54:    goto LAB50;

LAB52:    xsi_set_current_line(58, ng0);

LAB55:    xsi_set_current_line(59, ng0);
    t55 = (t0 + 2568);
    t56 = (t55 + 56U);
    t58 = *((char **)t56);
    t59 = (t0 + 2568);
    t60 = (t59 + 72U);
    t61 = *((char **)t60);
    t62 = (t0 + 2568);
    t63 = (t62 + 64U);
    t64 = *((char **)t63);
    t65 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t57, 32, t58, t61, t64, 2, 1, t65, 32, 1);
    t66 = ((char*)((ng4)));
    memset(t67, 0, 8);
    t68 = (t57 + 4);
    if (*((unsigned int *)t68) != 0)
        goto LAB57;

LAB56:    t69 = (t66 + 4);
    if (*((unsigned int *)t69) != 0)
        goto LAB57;

LAB60:    if (*((unsigned int *)t57) > *((unsigned int *)t66))
        goto LAB58;

LAB59:    t71 = (t67 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(61, ng0);

LAB66:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2568);
    t14 = (t12 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t13, t15, t11, t17, 2, 1, t18, 32, 1);
    t19 = (t13 + 4);
    t6 = *((unsigned int *)t19);
    t28 = (!(t6));
    t20 = (t15 + 4);
    t7 = *((unsigned int *)t20);
    t31 = (!(t7));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB67;

LAB68:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB63:    goto LAB54;

LAB57:    t70 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB59;

LAB58:    *((unsigned int *)t67) = 1;
    goto LAB59;

LAB61:    xsi_set_current_line(60, ng0);
    t77 = (t0 + 2568);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    t81 = (t0 + 2568);
    t82 = (t81 + 72U);
    t83 = *((char **)t82);
    t84 = (t0 + 2568);
    t85 = (t84 + 64U);
    t86 = *((char **)t85);
    t87 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t80, 32, t79, t83, t86, 2, 1, t87, 32, 1);
    t88 = ((char*)((ng4)));
    memset(t89, 0, 8);
    xsi_vlog_unsigned_minus(t89, 32, t80, 32, t88, 32);
    t90 = (t0 + 2568);
    t93 = (t0 + 2568);
    t94 = (t93 + 72U);
    t95 = *((char **)t94);
    t96 = (t0 + 2568);
    t97 = (t96 + 64U);
    t98 = *((char **)t97);
    t99 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t91, t92, t95, t98, 2, 1, t99, 32, 1);
    t100 = (t91 + 4);
    t101 = *((unsigned int *)t100);
    t28 = (!(t101));
    t102 = (t92 + 4);
    t103 = *((unsigned int *)t102);
    t31 = (!(t103));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB64;

LAB65:    goto LAB63;

LAB64:    t104 = *((unsigned int *)t91);
    t105 = *((unsigned int *)t92);
    t35 = (t104 - t105);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t90, t89, 0, *((unsigned int *)t92), t36, 0LL);
    goto LAB65;

LAB67:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t15);
    t35 = (t8 - t9);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB68;

LAB73:    t25 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB74;

LAB75:    xsi_set_current_line(75, ng0);
    t29 = ((char*)((ng1)));
    t45 = (t0 + 2568);
    t46 = (t0 + 2568);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2568);
    t55 = (t49 + 64U);
    t56 = *((char **)t55);
    t58 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t57, t67, t48, t56, 2, 1, t58, 32, 1);
    t59 = (t0 + 2568);
    t60 = (t59 + 72U);
    t61 = *((char **)t60);
    t62 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t80, t61, 2, t62, 32, 1);
    t63 = (t57 + 4);
    t73 = *((unsigned int *)t63);
    t28 = (!(t73));
    t64 = (t67 + 4);
    t74 = *((unsigned int *)t64);
    t31 = (!(t74));
    t32 = (t28 && t31);
    t65 = (t80 + 4);
    t75 = *((unsigned int *)t65);
    t35 = (!(t75));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB78;

LAB79:    goto LAB77;

LAB78:    t76 = *((unsigned int *)t67);
    t101 = *((unsigned int *)t80);
    t106 = (t76 + t101);
    xsi_vlogvar_wait_assign_value(t45, t29, 0, t106, 1, 0LL);
    goto LAB79;

}


extern void work_m_00000000000580163827_0053799672_init()
{
	static char *pe[] = {(void *)Cont_26_0,(void *)Cont_27_1,(void *)NetDecl_29_2,(void *)Always_32_3};
	xsi_register_didat("work_m_00000000000580163827_0053799672", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000580163827_0053799672.didat");
	xsi_register_executes(pe);
}
