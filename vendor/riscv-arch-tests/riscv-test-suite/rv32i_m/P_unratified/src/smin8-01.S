
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.6.3
// timestamp : Sat Apr 23 14:53:29 2022 GMT
// usage     : riscv_ctg \
//                  --cgf /scratch/git-repo/github/riscv_ctg/sample_cgfs/dataset.cgf \
//                  --cgf /scratch/git-repo/github/riscv_ctg/sample_cgfs/rv32ip.cgf \
//                  --xlen 32  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the smin8 instruction of the RISC-V RV32PZicsr extension for the smin8 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IPZicsr")

.section .text.init
.org 0x80
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smin8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x11,signature_x11_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x21, rd==x14, rs1_b0_val == -128, rs1_b3_val != rs2_b3_val, rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b2_val != rs2_b2_val, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b1_val == rs2_b1_val, rs2_b1_val == 8, rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b0_val != rs2_b0_val, rs1_b0_val < 0 and rs2_b0_val > 0, rs2_b3_val == -86, rs1_b1_val == 8
// opcode: smin8 ; op1:x1; op2:x21; dest:x14; op1val:0x3f80880;  op2val:0xaa3f0803
TEST_RR_OP(smin8, x14, x1, x21, 0x00000000, 0x3f80880, 0xaa3f0803, x11, 0, x17)

inst_1:
// rs1 == rs2 != rd, rs1==x13, rs2==x13, rd==x9, rs1_b3_val == rs2_b3_val, rs1_b2_val == -17, rs1_b3_val < 0 and rs2_b3_val < 0, rs1_b1_val != rs2_b1_val, rs1_b1_val < 0 and rs2_b1_val < 0, rs1_b0_val < 0 and rs2_b0_val < 0, rs2_b0_val == -9
// opcode: smin8 ; op1:x13; op2:x13; dest:x9; op1val:0xf8effa80;  op2val:0xf807c0f7
TEST_RR_OP(smin8, x9, x13, x13, 0x00000000, 0xf8effa80, 0xf807c0f7, x11, 4, x17)

inst_2:
// rs1 == rd != rs2, rs1==x27, rs2==x20, rd==x27, rs1_b3_val < 0 and rs2_b3_val > 0, rs1_b2_val == -9, rs2_b3_val == 16, rs1_b0_val == 85, rs1_b2_val == rs2_b2_val, rs1_b2_val < 0 and rs2_b2_val < 0, rs2_b1_val == -2, rs1_b3_val == -9, rs1_b1_val > 0 and rs2_b1_val < 0, rs2_b2_val == -9, rs1_b0_val > 0 and rs2_b0_val < 0, rs2_b0_val == -5
// opcode: smin8 ; op1:x27; op2:x20; dest:x27; op1val:0xf7f70855;  op2val:0x10f7fefb
TEST_RR_OP(smin8, x27, x27, x20, 0x00000000, 0xf7f70855, 0x10f7fefb, x11, 8, x17)

inst_3:
// rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs1_b3_val > 0 and rs2_b3_val > 0, rs2_b3_val == 1, rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b2_val == 2, rs1_b1_val == -86, rs2_b1_val == 0
// opcode: smin8 ; op1:x26; op2:x26; dest:x26; op1val:0x502aafc;  op2val:0x10500f8
TEST_RR_OP(smin8, x26, x26, x26, 0x00000000, 0x502aafc, 0x10500f8, x11, 12, x17)

inst_4:
// rs2 == rd != rs1, rs1==x31, rs2==x24, rd==x24, rs1_b2_val > 0 and rs2_b2_val < 0, rs1_b0_val == -17, rs1_b3_val == -65, rs2_b3_val == -17, rs1_b1_val == 64, rs2_b0_val == -2
// opcode: smin8 ; op1:x31; op2:x24; dest:x24; op1val:0xbf0340ef;  op2val:0xeff603fe
TEST_RR_OP(smin8, x24, x31, x24, 0x00000000, 0xbf0340ef, 0xeff603fe, x11, 16, x17)

inst_5:
// rs1==x6, rs2==x19, rd==x2, rs1_b1_val < 0 and rs2_b1_val > 0, rs1_b2_val == -65, rs2_b3_val == -3, rs1_b0_val == -86, rs2_b2_val == 85, rs1_b1_val == -33
// opcode: smin8 ; op1:x6; op2:x19; dest:x2; op1val:0xf7bfdfaa;  op2val:0xfd5509fa
TEST_RR_OP(smin8, x2, x6, x19, 0x00000000, 0xf7bfdfaa, 0xfd5509fa, x11, 20, x17)

inst_6:
// rs1==x19, rs2==x12, rd==x28, rs1_b0_val == rs2_b0_val, rs2_b0_val == -128, rs2_b1_val == -9
// opcode: smin8 ; op1:x19; op2:x12; dest:x28; op1val:0x3f70780;  op2val:0x7c0f780
TEST_RR_OP(smin8, x28, x19, x12, 0x00000000, 0x3f70780, 0x7c0f780, x11, 24, x17)

inst_7:
// rs1==x5, rs2==x28, rd==x23, rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b1_val == 1, rs1_b0_val == 2, rs2_b3_val == -65, rs2_b0_val == 1
// opcode: smin8 ; op1:x5; op2:x28; dest:x23; op1val:0xfc060702;  op2val:0xbf090101
TEST_RR_OP(smin8, x23, x5, x28, 0x00000000, 0xfc060702, 0xbf090101, x11, 28, x17)

inst_8:
// rs1==x23, rs2==x4, rd==x21, rs2_b3_val == 85, rs2_b2_val == -33, rs1_b1_val == -1
// opcode: smin8 ; op1:x23; op2:x4; dest:x21; op1val:0x502fff6;  op2val:0x55df05fa
TEST_RR_OP(smin8, x21, x23, x4, 0x00000000, 0x502fff6, 0x55df05fa, x11, 32, x17)

inst_9:
// rs1==x16, rs2==x7, rd==x5, rs2_b3_val == 127, rs2_b0_val == 4, rs2_b2_val == 16, rs2_b1_val == 64
// opcode: smin8 ; op1:x16; op2:x7; dest:x5; op1val:0xc03f3f09;  op2val:0x7f104004
TEST_RR_OP(smin8, x5, x16, x7, 0x00000000, 0xc03f3f09, 0x7f104004, x11, 36, x17)

inst_10:
// rs1==x7, rs2==x23, rd==x25, rs2_b3_val == -33, rs1_b2_val == 64, rs2_b2_val == -3
// opcode: smin8 ; op1:x7; op2:x23; dest:x25; op1val:0xf740f809;  op2val:0xdffd3f80
TEST_RR_OP(smin8, x25, x7, x23, 0x00000000, 0xf740f809, 0xdffd3f80, x11, 40, x17)

inst_11:
// rs1==x14, rs2==x2, rd==x19, rs2_b3_val == -9, rs2_b1_val == 85, rs2_b0_val == 16, rs1_b0_val == -2, rs1_b3_val == -2, rs1_b1_val == -65
// opcode: smin8 ; op1:x14; op2:x2; dest:x19; op1val:0xfec0bffe;  op2val:0xf7065510
TEST_RR_OP(smin8, x19, x14, x2, 0x00000000, 0xfec0bffe, 0xf7065510, x11, 44, x17)

inst_12:
// rs1==x3, rs2==x15, rd==x8, rs2_b3_val == -5, rs1_b1_val == -3
// opcode: smin8 ; op1:x3; op2:x15; dest:x8; op1val:0xf7f6fdaa;  op2val:0xfb050105
TEST_RR_OP(smin8, x8, x3, x15, 0x00000000, 0xf7f6fdaa, 0xfb050105, x11, 48, x17)

inst_13:
// rs1==x12, rs2==x29, rd==x10, rs2_b3_val == -2, rs1_b1_val == -2, rs2_b2_val == 1
// opcode: smin8 ; op1:x12; op2:x29; dest:x10; op1val:0xf9f9fefa;  op2val:0xfe01f9fa
TEST_RR_OP(smin8, x10, x12, x29, 0x00000000, 0xf9f9fefa, 0xfe01f9fa, x11, 52, x17)

inst_14:
// rs1==x8, rs2==x5, rd==x3, rs2_b3_val == -128, rs2_b1_val == -5, rs1_b3_val == 0
// opcode: smin8 ; op1:x8; op2:x5; dest:x3; op1val:0xc0fcf8;  op2val:0x80dffbfa
TEST_RR_OP(smin8, x3, x8, x5, 0x00000000, 0xc0fcf8, 0x80dffbfa, x11, 56, x19)

inst_15:
// rs1==x17, rs2==x6, rd==x30, rs2_b3_val == 64, rs1_b2_val == -33, rs1_b0_val == 8, rs2_b0_val == -86
// opcode: smin8 ; op1:x17; op2:x6; dest:x30; op1val:0xfadfbf08;  op2val:0x40fcf6aa
TEST_RR_OP(smin8, x30, x17, x6, 0x00000000, 0xfadfbf08, 0x40fcf6aa, x11, 60, x19)
RVTEST_SIGBASE(x5,signature_x5_0)

inst_16:
// rs1==x11, rs2==x9, rd==x6, rs2_b3_val == 32, rs1_b3_val == -17, rs1_b2_val == -86, rs2_b0_val == 85
// opcode: smin8 ; op1:x11; op2:x9; dest:x6; op1val:0xefaafcc0;  op2val:0x2010f855
TEST_RR_OP(smin8, x6, x11, x9, 0x00000000, 0xefaafcc0, 0x2010f855, x5, 0, x19)

inst_17:
// rs1==x0, rs2==x22, rd==x31, rs2_b3_val == 8, rs2_b0_val == 64, rs1_b2_val == 32, rs2_b2_val == 127, rs1_b0_val == 1, rs1_b1_val == -17
// opcode: smin8 ; op1:x0; op2:x22; dest:x31; op1val:0xbf20ef01;  op2val:0x87ffa40
TEST_RR_OP(smin8, x31, x0, x22, 0x00000000, 0xbf20ef01, 0x87ffa40, x5, 4, x19)

inst_18:
// rs1==x10, rs2==x8, rd==x12, rs2_b3_val == 4, rs2_b0_val == -65, rs1_b3_val == -33
// opcode: smin8 ; op1:x10; op2:x8; dest:x12; op1val:0xdfaafafa;  op2val:0x4fa07bf
TEST_RR_OP(smin8, x12, x10, x8, 0x00000000, 0xdfaafafa, 0x4fa07bf, x5, 8, x19)

inst_19:
// rs1==x4, rs2==x27, rd==x18, rs2_b3_val == 2, rs2_b1_val == -86, rs1_b0_val == 127
// opcode: smin8 ; op1:x4; op2:x27; dest:x18; op1val:0xfedfaa7f;  op2val:0x2fcaa03
TEST_RR_OP(smin8, x18, x4, x27, 0x00000000, 0xfedfaa7f, 0x2fcaa03, x5, 12, x19)

inst_20:
// rs1==x25, rs2==x18, rd==x11, rs2_b3_val == 0, 
// opcode: smin8 ; op1:x25; op2:x18; dest:x11; op1val:0xdf40f8fa;  op2val:0xf600f8
TEST_RR_OP(smin8, x11, x25, x18, 0x00000000, 0xdf40f8fa, 0xf600f8, x5, 16, x19)

inst_21:
// rs1==x18, rs2==x14, rd==x17, rs2_b3_val == -1, rs1_b1_val == -5, rs2_b2_val == 32
// opcode: smin8 ; op1:x18; op2:x14; dest:x17; op1val:0xfa09fb7f;  op2val:0xff20fa10
TEST_RR_OP(smin8, x17, x18, x14, 0x00000000, 0xfa09fb7f, 0xff20fa10, x5, 20, x19)

inst_22:
// rs1==x24, rs2==x3, rd==x4, rs2_b2_val == -86, rs1_b3_val == 4, rs2_b0_val == 8, rs1_b0_val == -3, rs1_b2_val == 127
// opcode: smin8 ; op1:x24; op2:x3; dest:x4; op1val:0x47ffffd;  op2val:0xfbaa0008
TEST_RR_OP(smin8, x4, x24, x3, 0x00000000, 0x47ffffd, 0xfbaa0008, x5, 24, x19)

inst_23:
// rs1==x15, rs2==x30, rd==x20, rs2_b2_val == -65, rs1_b1_val == 85, rs1_b2_val == -3
// opcode: smin8 ; op1:x15; op2:x30; dest:x20; op1val:0xf6fd55aa;  op2val:0xc0bf00f7
TEST_RR_OP(smin8, x20, x15, x30, 0x00000000, 0xf6fd55aa, 0xc0bf00f7, x5, 28, x19)

inst_24:
// rs1==x28, rs2==x17, rd==x0, rs2_b2_val == -17, rs2_b1_val == 2, rs1_b3_val == 16
// opcode: smin8 ; op1:x28; op2:x17; dest:x0; op1val:0x1020df02;  op2val:0x9ef02f8
TEST_RR_OP(smin8, x0, x28, x17, 0x00000000, 0x1020df02, 0x9ef02f8, x5, 32, x19)

inst_25:
// rs1==x30, rs2==x25, rd==x15, rs2_b2_val == -5, rs1_b1_val == 32, rs2_b0_val == 0
// opcode: smin8 ; op1:x30; op2:x25; dest:x15; op1val:0xdffa2006;  op2val:0x8fb0300
TEST_RR_OP(smin8, x15, x30, x25, 0x00000000, 0xdffa2006, 0x8fb0300, x5, 36, x19)

inst_26:
// rs1==x2, rs2==x11, rd==x16, rs2_b2_val == -2, rs2_b0_val == -1
// opcode: smin8 ; op1:x2; op2:x11; dest:x16; op1val:0xdfbffcef;  op2val:0x9fef6ff
TEST_RR_OP(smin8, x16, x2, x11, 0x00000000, 0xdfbffcef, 0x9fef6ff, x5, 40, x19)

inst_27:
// rs1==x20, rs2==x31, rd==x13, rs2_b2_val == -128, rs1_b3_val == 2, rs2_b0_val == 2
// opcode: smin8 ; op1:x20; op2:x31; dest:x13; op1val:0x2fcff01;  op2val:0xdf80f702
TEST_RR_OP(smin8, x13, x20, x31, 0x00000000, 0x2fcff01, 0xdf80f702, x5, 44, x19)

inst_28:
// rs1==x22, rs2==x10, rd==x29, rs1_b2_val == -5, rs1_b0_val == 16
// opcode: smin8 ; op1:x22; op2:x10; dest:x29; op1val:0xfcfb5510;  op2val:0x40f90606
TEST_RR_OP(smin8, x29, x22, x10, 0x00000000, 0xfcfb5510, 0x40f90606, x5, 48, x19)

inst_29:
// rs1==x29, rs2==x16, rd==x1, rs1_b2_val == -2, rs1_b3_val == 64
// opcode: smin8 ; op1:x29; op2:x16; dest:x1; op1val:0x40fefc03;  op2val:0x6060280
TEST_RR_OP(smin8, x1, x29, x16, 0x00000000, 0x40fefc03, 0x6060280, x5, 52, x19)

inst_30:
// rs1==x9, rs2==x0, rd==x7, rs1_b2_val == -128, rs2_b0_val == -17
// opcode: smin8 ; op1:x9; op2:x0; dest:x7; op1val:0x98008fe;  op2val:0x8c0fcef
TEST_RR_OP(smin8, x7, x9, x0, 0x00000000, 0x98008fe, 0x8c0fcef, x5, 56, x19)

inst_31:
// rs1==x21, rs2==x1, rd==x22, rs1_b2_val == 16, 
// opcode: smin8 ; op1:x21; op2:x1; dest:x22; op1val:0xf910ef3f;  op2val:0x3f0706f8
TEST_RR_OP(smin8, x22, x21, x1, 0x00000000, 0xf910ef3f, 0x3f0706f8, x5, 60, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_32:
// rs1_b2_val == 8, rs1_b0_val == -65, rs1_b3_val == -1
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xff08f6bf;  op2val:0xeffa0904
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xff08f6bf, 0xeffa0904, x1, 0, x2)

inst_33:
// rs1_b2_val == 4, rs1_b1_val == 1, rs2_b1_val == -1
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x9040155;  op2val:0x107fff6
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x9040155, 0x107fff6, x1, 4, x2)

inst_34:
// rs1_b2_val == 1, rs1_b0_val == -5
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xf801fffb;  op2val:0xc0fefcf6
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xf801fffb, 0xc0fefcf6, x1, 8, x2)

inst_35:
// rs1_b2_val == 0, rs2_b2_val == 0
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x600ef10;  op2val:0xf900fb03
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x600ef10, 0xf900fb03, x1, 12, x2)

inst_36:
// rs1_b2_val == -1, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff3f10;  op2val:0xf7c00702
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xdfff3f10, 0xf7c00702, x1, 16, x2)

inst_37:
// rs1_b1_val == 127, rs2_b2_val == 64
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f7f03;  op2val:0xff4001f7
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xff7f7f03, 0xff4001f7, x1, 20, x2)

inst_38:
// rs1_b1_val == -9, rs2_b0_val == 32, rs1_b3_val == -3
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdeff755;  op2val:0xf8fbfe20
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfdeff755, 0xf8fbfe20, x1, 24, x2)

inst_39:
// rs1_b1_val == -128, rs2_b1_val == 4
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x40980ef;  op2val:0xfafc0480
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x40980ef, 0xfafc0480, x1, 28, x2)

inst_40:
// rs1_b1_val == 16, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb1008;  op2val:0xfdf701bf
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfffb1008, 0xfdf701bf, x1, 32, x2)

inst_41:
// rs1_b1_val == 4, rs1_b3_val == -5
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfbf70402;  op2val:0xbf05faf6
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfbf70402, 0xbf05faf6, x1, 36, x2)

inst_42:
// rs1_b1_val == 2, rs2_b1_val == 127, rs2_b2_val == 4
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdfa02c0;  op2val:0x8047f04
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfdfa02c0, 0x8047f04, x1, 40, x2)

inst_43:
// rs2_b2_val == -1, rs1_b0_val == 0
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfefbf900;  op2val:0xc0fffe00
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfefbf900, 0xc0fffe00, x1, 44, x2)

inst_44:
// rs2_b1_val == -65, rs2_b0_val == 127
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xf73ff6f8;  op2val:0x6dfbf7f
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xf73ff6f8, 0x6dfbf7f, x1, 48, x2)

inst_45:
// rs2_b1_val == -33, rs1_b0_val == -1
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xef0710ff;  op2val:0xaa10dff7
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xef0710ff, 0xaa10dff7, x1, 52, x2)

inst_46:
// rs2_b1_val == -17, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfc80fa08;  op2val:0x2005ef05
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfc80fa08, 0x2005ef05, x1, 56, x2)

inst_47:
// rs2_b1_val == -3, rs1_b1_val == 0
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xf8df00ff;  op2val:0xfafcfd00
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xf8df00ff, 0xfafcfd00, x1, 60, x2)

inst_48:
// rs2_b1_val == -128, rs1_b3_val == 127
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x7fbf033f;  op2val:0xfb0580f9
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x7fbf033f, 0xfb0580f9, x1, 64, x2)

inst_49:
// rs2_b1_val == 32, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xf68004c0;  op2val:0x6042055
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xf68004c0, 0x6042055, x1, 68, x2)

inst_50:
// rs2_b1_val == 16, rs1_b0_val == -9
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x3ffa03f7;  op2val:0xffdf1003
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x3ffa03f7, 0xffdf1003, x1, 72, x2)

inst_51:
// rs2_b0_val == -33, rs1_b3_val == 32
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x20030407;  op2val:0xfbf601df
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x20030407, 0xfbf601df, x1, 76, x2)

inst_52:
// rs1_b0_val == -33, rs2_b2_val == 2
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xefdf3fdf;  op2val:0xfc027fbf
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xefdf3fdf, 0xfc027fbf, x1, 80, x2)

inst_53:
// rs1_b3_val == -86, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xaafffdf6;  op2val:0x10ff7f01
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xaafffdf6, 0x10ff7f01, x1, 84, x2)

inst_54:
// rs1_b3_val == 85, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x55fdf606;  op2val:0x553ffff8
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x55fdf606, 0x553ffff8, x1, 88, x2)

inst_55:
// rs1_b0_val == 64, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x55fe0840;  op2val:0x2010640
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x55fe0840, 0x2010640, x1, 92, x2)

inst_56:
// rs1_b0_val == 32, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xfb053f20;  op2val:0xfaf6bf01
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xfb053f20, 0xfaf6bf01, x1, 96, x2)

inst_57:
// rs1_b0_val == 4, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x55fdf904;  op2val:0x2f9aafb
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x55fdf904, 0x2f9aafb, x1, 100, x2)

inst_58:
// rs1_b3_val == -128, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x80fdfc00;  op2val:0xf7f78009
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x80fdfc00, 0xf7f78009, x1, 104, x2)

inst_59:
// rs1_b3_val == 8, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x88003aa;  op2val:0xeffbf8f9
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x88003aa, 0xeffbf8f9, x1, 108, x2)

inst_60:
// rs1_b3_val == 1, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x1aa0920;  op2val:0xf6fc0710
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x1aa0920, 0xf6fc0710, x1, 112, x2)

inst_61:
// rs2_b2_val == 8, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xffaafffb;  op2val:0x7f08bf7f
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xffaafffb, 0x7f08bf7f, x1, 116, x2)

inst_62:
// rs2_b0_val == -3, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x3093ffb;  op2val:0x5aafdfd
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x3093ffb, 0x5aafdfd, x1, 120, x2)

inst_63:
// rs1_b2_val == 85, 
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xf855fcfc;  op2val:0x1feeffa
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xf855fcfc, 0x1feeffa, x1, 124, x2)

inst_64:
// rs2_b3_val == 8, rs2_b0_val == 64, rs1_b2_val == 32, rs2_b2_val == 127, rs1_b0_val == 1, rs1_b1_val == -17
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0xbf20ef01;  op2val:0x87ffa40
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0xbf20ef01, 0x87ffa40, x1, 128, x2)

inst_65:
// rs2_b2_val == -17, rs2_b1_val == 2, rs1_b3_val == 16
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x1020df02;  op2val:0x9ef02f8
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x1020df02, 0x9ef02f8, x1, 132, x2)

inst_66:
// rs1_b2_val == -128, rs2_b0_val == -17
// opcode: smin8 ; op1:x30; op2:x29; dest:x31; op1val:0x98008fe;  op2val:0x8c0fcef
TEST_RR_OP(smin8, x31, x30, x29, 0x00000000, 0x98008fe, 0x8c0fcef, x1, 136, x2)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 35*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
