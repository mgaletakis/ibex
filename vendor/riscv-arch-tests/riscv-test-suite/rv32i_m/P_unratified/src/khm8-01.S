
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
// This assembly file tests the khm8 instruction of the RISC-V RV32PZicsr extension for the khm8 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",khm8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x11,signature_x11_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x26, rd==x31, rs1_b0_val == -128, rs1_b3_val != rs2_b3_val, rs1_b3_val < 0 and rs2_b3_val < 0, rs2_b1_val == -65, rs1_b2_val != rs2_b2_val, rs1_b2_val < 0 and rs2_b2_val < 0, rs1_b1_val != rs2_b1_val, rs1_b1_val > 0 and rs2_b1_val < 0, rs1_b0_val != rs2_b0_val, rs2_b2_val == -9, rs1_b0_val < 0 and rs2_b0_val < 0, rs1_b1_val == 32
// opcode: khm8 ; op1:x3; op2:x26; dest:x31; op1val:0xfafc2080;  op2val:0xf6f7bff6
TEST_PKRR_OP(khm8, x31, x3, x26, 0x00000000, 0xfafc2080, 0xf6f7bff6, x3, x11, 0, x14)

inst_1:
// rs1 == rs2 != rd, rs1==x2, rs2==x2, rd==x7, rs1_b3_val == rs2_b3_val, rs1_b2_val == -17, rs1_b0_val == -33, rs2_b3_val == -1, rs1_b1_val == 85, rs1_b0_val < 0 and rs2_b0_val > 0, rs1_b3_val == -1
// opcode: khm8 ; op1:x2; op2:x2; dest:x7; op1val:0xffef55df;  op2val:0xfff7fc05
TEST_PKRR_OP(khm8, x7, x2, x2, 0x00000000, 0xffef55df, 0xfff7fc05, x2, x11, 8, x14)

inst_2:
// rs1 == rd != rs2, rs1==x13, rs2==x8, rd==x13, rs1_b3_val < 0 and rs2_b3_val > 0, rs2_b2_val == -86, rs1_b2_val == -1, rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b0_val == rs2_b0_val, rs1_b1_val == 16
// opcode: khm8 ; op1:x13; op2:x8; dest:x13; op1val:0xf8ff10fa;  op2val:0x7aa3ffa
TEST_PKRR_OP(khm8, x13, x13, x8, 0x00000000, 0xf8ff10fa, 0x7aa3ffa, x13, x11, 16, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x10, rs2==x10, rd==x10, rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b2_val == -2, rs2_b1_val == -9, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b1_val < 0 and rs2_b1_val < 0, rs1_b1_val == -86, rs1_b0_val == -1
// opcode: khm8 ; op1:x10; op2:x10; dest:x10; op1val:0x5feaaff;  op2val:0xfc05f709
TEST_PKRR_OP(khm8, x10, x10, x10, 0x00000000, 0x5feaaff, 0xfc05f709, x10, x11, 24, x14)

inst_4:
// rs2 == rd != rs1, rs1==x0, rs2==x4, rd==x4, rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b0_val == -65, rs2_b1_val == 32, rs1_b1_val < 0 and rs2_b1_val > 0, rs1_b3_val == 8, rs1_b1_val == -9
// opcode: khm8 ; op1:x0; op2:x4; dest:x4; op1val:0x8fcf7bf;  op2val:0x70620f8
TEST_PKRR_OP(khm8, x4, x0, x4, 0x00000000, 0x8fcf7bf, 0x70620f8, x0, x11, 32, x14)

inst_5:
// rs1==x31, rs2==x23, rd==x6, rs1_b2_val == rs2_b2_val, rs2_b3_val == -3, rs2_b1_val == -2, rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b2_val == 4, rs1_b0_val == -5, rs1_b3_val == -9, rs2_b2_val == 4
// opcode: khm8 ; op1:x31; op2:x23; dest:x6; op1val:0xf70420fb;  op2val:0xfd04fe09
TEST_PKRR_OP(khm8, x6, x31, x23, 0x00000000, 0xf70420fb, 0xfd04fe09, x31, x11, 40, x14)

inst_6:
// rs1==x5, rs2==x0, rd==x12, rs1_b2_val > 0 and rs2_b2_val < 0, rs2_b0_val == 4, rs2_b3_val == 64, rs1_b3_val == -17, rs1_b1_val == rs2_b1_val, rs2_b2_val == -17, rs1_b2_val == 127
// opcode: khm8 ; op1:x5; op2:x0; dest:x12; op1val:0xef7f03fc;  op2val:0x40ef0304
TEST_PKRR_OP(khm8, x12, x5, x0, 0x00000000, 0xef7f03fc, 0x40ef0304, x5, x11, 48, x14)

inst_7:
// rs1==x6, rs2==x20, rd==x25, rs1_b0_val > 0 and rs2_b0_val < 0, rs1_b1_val == -5, rs2_b3_val == -2, rs2_b0_val == -128
// opcode: khm8 ; op1:x6; op2:x20; dest:x25; op1val:0xf63ffb09;  op2val:0xfe3f0680
TEST_PKRR_OP(khm8, x25, x6, x20, 0x00000000, 0xf63ffb09, 0xfe3f0680, x6, x11, 56, x14)

inst_8:
// rs1==x15, rs2==x3, rd==x29, rs1_b0_val > 0 and rs2_b0_val > 0, rs1_b2_val == -65, rs2_b1_val == -86, rs1_b1_val == 2, rs2_b2_val == -3, rs1_b3_val == 1
// opcode: khm8 ; op1:x15; op2:x3; dest:x29; op1val:0x1bf0207;  op2val:0x3ffdaa05
TEST_PKRR_OP(khm8, x29, x15, x3, 0x00000000, 0x1bf0207, 0x3ffdaa05, x15, x11, 64, x14)

inst_9:
// rs1==x9, rs2==x22, rd==x5, rs2_b3_val == -86, rs1_b1_val == 4, rs1_b0_val == -17, rs1_b2_val == 1, rs2_b2_val == 0
// opcode: khm8 ; op1:x9; op2:x22; dest:x5; op1val:0x3f0104ef;  op2val:0xaa00c0f9
TEST_PKRR_OP(khm8, x5, x9, x22, 0x00000000, 0x3f0104ef, 0xaa00c0f9, x9, x11, 72, x14)

inst_10:
// rs1==x22, rs2==x27, rd==x9, rs2_b3_val == 85, rs2_b0_val == 32, rs1_b0_val == 8, rs1_b3_val == -3
// opcode: khm8 ; op1:x22; op2:x27; dest:x9; op1val:0xfd070208;  op2val:0x55f6f720
TEST_PKRR_OP(khm8, x9, x22, x27, 0x00000000, 0xfd070208, 0x55f6f720, x22, x11, 80, x14)

inst_11:
// rs1==x23, rs2==x15, rd==x1, rs2_b3_val == 127, rs2_b1_val == 127, rs2_b2_val == 8, rs2_b0_val == -5, rs1_b0_val == -9
// opcode: khm8 ; op1:x23; op2:x15; dest:x1; op1val:0xf6fa05f7;  op2val:0x7f087ffb
TEST_PKRR_OP(khm8, x1, x23, x15, 0x00000000, 0xf6fa05f7, 0x7f087ffb, x23, x11, 88, x14)

inst_12:
// rs1==x29, rs2==x25, rd==x19, rs2_b3_val == -65, rs1_b2_val == 8, rs1_b0_val == -86, rs2_b2_val == 127
// opcode: khm8 ; op1:x29; op2:x25; dest:x19; op1val:0xc008fcaa;  op2val:0xbf7f20fc
TEST_PKRR_OP(khm8, x19, x29, x25, 0x00000000, 0xc008fcaa, 0xbf7f20fc, x29, x11, 96, x14)

inst_13:
// rs1==x7, rs2==x6, rd==x18, rs2_b3_val == -33, rs1_b0_val == 4
// opcode: khm8 ; op1:x7; op2:x6; dest:x18; op1val:0xfafef804;  op2val:0xdfaa0504
TEST_PKRR_OP(khm8, x18, x7, x6, 0x00000000, 0xfafef804, 0xdfaa0504, x7, x11, 104, x14)

inst_14:
// rs1==x19, rs2==x5, rd==x8, rs2_b3_val == -17, rs1_b2_val == 32, rs1_b3_val == -65, rs2_b0_val == -86, rs1_b1_val == 8
// opcode: khm8 ; op1:x19; op2:x5; dest:x8; op1val:0xbf200809;  op2val:0xef7ffaaa
TEST_PKRR_OP(khm8, x8, x19, x5, 0x00000000, 0xbf200809, 0xef7ffaaa, x19, x11, 112, x14)

inst_15:
// rs1==x26, rs2==x30, rd==x27, rs2_b3_val == -9, rs2_b0_val == -9, rs2_b2_val == -5
// opcode: khm8 ; op1:x26; op2:x30; dest:x27; op1val:0x92005aa;  op2val:0xf7fbf7f7
TEST_PKRR_OP(khm8, x27, x26, x30, 0x00000000, 0x92005aa, 0xf7fbf7f7, x26, x11, 120, x14)

inst_16:
// rs1==x16, rs2==x21, rd==x30, rs2_b3_val == -5, rs2_b2_val == -65, rs1_b3_val == 0, rs2_b1_val == 64
// opcode: khm8 ; op1:x16; op2:x21; dest:x30; op1val:0x0708f9;  op2val:0xfbbf40fc
TEST_PKRR_OP(khm8, x30, x16, x21, 0x00000000, 0x0708f9, 0xfbbf40fc, x16, x11, 128, x14)

inst_17:
// rs1==x18, rs2==x31, rd==x2, rs2_b3_val == -128, rs2_b0_val == -17, rs1_b2_val == -3, rs1_b1_val == -17
// opcode: khm8 ; op1:x18; op2:x31; dest:x2; op1val:0xbffdeffc;  op2val:0x800720ef
TEST_PKRR_OP(khm8, x2, x18, x31, 0x00000000, 0xbffdeffc, 0x800720ef, x18, x11, 136, x5)

inst_18:
// rs1==x25, rs2==x14, rd==x26, rs2_b3_val == 32, rs1_b3_val == 127, rs1_b1_val == -2, rs2_b0_val == 8, rs1_b2_val == -128
// opcode: khm8 ; op1:x25; op2:x14; dest:x26; op1val:0x7f80fef9;  op2val:0x20fb0908
TEST_PKRR_OP(khm8, x26, x25, x14, 0x00000000, 0x7f80fef9, 0x20fb0908, x25, x11, 144, x5)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_19:
// rs1==x17, rs2==x24, rd==x21, rs2_b3_val == 16, rs2_b1_val == 16
// opcode: khm8 ; op1:x17; op2:x24; dest:x21; op1val:0xf907f9f6;  op2val:0x10041005
TEST_PKRR_OP(khm8, x21, x17, x24, 0x00000000, 0xf907f9f6, 0x10041005, x17, x2, 0, x5)

inst_20:
// rs1==x11, rs2==x19, rd==x28, rs2_b3_val == 8, rs2_b0_val == -1
// opcode: khm8 ; op1:x11; op2:x19; dest:x28; op1val:0xfdef04aa;  op2val:0x80803ff
TEST_PKRR_OP(khm8, x28, x11, x19, 0x00000000, 0xfdef04aa, 0x80803ff, x11, x2, 8, x5)

inst_21:
// rs1==x14, rs2==x7, rd==x20, rs2_b3_val == 4, rs2_b2_val == 2
// opcode: khm8 ; op1:x14; op2:x7; dest:x20; op1val:0xeff8fc09;  op2val:0x402feef
TEST_PKRR_OP(khm8, x20, x14, x7, 0x00000000, 0xeff8fc09, 0x402feef, x14, x2, 16, x5)

inst_22:
// rs1==x4, rs2==x28, rd==x3, rs2_b3_val == 2, rs2_b1_val == -128, rs1_b1_val == -128
// opcode: khm8 ; op1:x4; op2:x28; dest:x3; op1val:0x80380df;  op2val:0x20080f7
TEST_PKRR_OP(khm8, x3, x4, x28, 0x00000000, 0x80380df, 0x20080f7, x4, x2, 24, x5)

inst_23:
// rs1==x24, rs2==x1, rd==x15, rs2_b3_val == 1, rs2_b1_val == -5, rs2_b2_val == 32, rs1_b0_val == 1
// opcode: khm8 ; op1:x24; op2:x1; dest:x15; op1val:0xf8bf0701;  op2val:0x120fbff
TEST_PKRR_OP(khm8, x15, x24, x1, 0x00000000, 0xf8bf0701, 0x120fbff, x24, x2, 32, x5)

inst_24:
// rs1==x8, rs2==x9, rd==x14, rs2_b3_val == 0, rs1_b3_val == -128, rs1_b1_val == -33, rs1_b0_val == 64
// opcode: khm8 ; op1:x8; op2:x9; dest:x14; op1val:0x80bfdf40;  op2val:0x02fa07
TEST_PKRR_OP(khm8, x14, x8, x9, 0x00000000, 0x80bfdf40, 0x02fa07, x8, x2, 40, x5)

inst_25:
// rs1==x12, rs2==x29, rd==x22, rs2_b2_val == 85, rs1_b1_val == -1
// opcode: khm8 ; op1:x12; op2:x29; dest:x22; op1val:0x508fffb;  op2val:0x55503ff
TEST_PKRR_OP(khm8, x22, x12, x29, 0x00000000, 0x508fffb, 0x55503ff, x12, x2, 48, x5)

inst_26:
// rs1==x27, rs2==x18, rd==x11, rs1_b2_val == -33, rs2_b2_val == -2
// opcode: khm8 ; op1:x27; op2:x18; dest:x11; op1val:0xbfdff806;  op2val:0x7ffe0307
TEST_PKRR_OP(khm8, x11, x27, x18, 0x00000000, 0xbfdff806, 0x7ffe0307, x27, x2, 56, x5)

inst_27:
// rs1==x28, rs2==x12, rd==x0, rs1_b2_val == -9, rs1_b1_val == -65, rs2_b2_val == -128
// opcode: khm8 ; op1:x28; op2:x12; dest:x0; op1val:0xf9f7bfc0;  op2val:0x80f8fc
TEST_PKRR_OP(khm8, x0, x28, x12, 0x00000000, 0xf9f7bfc0, 0x80f8fc, x28, x2, 64, x5)

inst_28:
// rs1==x30, rs2==x13, rd==x16, rs1_b2_val == -5, rs1_b0_val == 16
// opcode: khm8 ; op1:x30; op2:x13; dest:x16; op1val:0xfdfb0510;  op2val:0x53f0603
TEST_PKRR_OP(khm8, x16, x30, x13, 0x00000000, 0xfdfb0510, 0x53f0603, x30, x2, 72, x5)

inst_29:
// rs1==x21, rs2==x16, rd==x23, rs1_b2_val == 64, 
// opcode: khm8 ; op1:x21; op2:x16; dest:x23; op1val:0xf74009df;  op2val:0xf6fa7f3f
TEST_PKRR_OP(khm8, x23, x21, x16, 0x00000000, 0xf74009df, 0xf6fa7f3f, x21, x2, 80, x3)

inst_30:
// rs1==x20, rs2==x11, rd==x24, rs1_b2_val == 16, rs1_b3_val == -33, rs2_b0_val == 2, rs2_b1_val == 8
// opcode: khm8 ; op1:x20; op2:x11; dest:x24; op1val:0xdf1008f8;  op2val:0x8bf0802
TEST_PKRR_OP(khm8, x24, x20, x11, 0x00000000, 0xdf1008f8, 0x8bf0802, x20, x2, 88, x3)

inst_31:
// rs1==x1, rs1_b2_val == 2, rs2_b2_val == -1
// opcode: khm8 ; op1:x1; op2:x28; dest:x31; op1val:0x3020540;  op2val:0xeffffe20
TEST_PKRR_OP(khm8, x31, x1, x28, 0x00000000, 0x3020540, 0xeffffe20, x1, x2, 96, x3)

inst_32:
// rs2==x17, rs1_b2_val == 0, 
// opcode: khm8 ; op1:x28; op2:x17; dest:x27; op1val:0xf8003ffc;  op2val:0x4fefe09
TEST_PKRR_OP(khm8, x27, x28, x17, 0x00000000, 0xf8003ffc, 0x4fefe09, x28, x2, 104, x3)

inst_33:
// rd==x17, rs1_b1_val == 127, rs1_b0_val == -3
// opcode: khm8 ; op1:x19; op2:x25; dest:x17; op1val:0xc0c07ffd;  op2val:0x40f6f609
TEST_PKRR_OP(khm8, x17, x19, x25, 0x00000000, 0xc0c07ffd, 0x40f6f609, x19, x2, 112, x3)

inst_34:
// rs1_b1_val == -3, rs1_b3_val == 64
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x4002fd05;  op2val:0xfa5503aa
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x4002fd05, 0xfa5503aa, x30, x2, 120, x3)

inst_35:
// rs1_b1_val == 64, rs1_b0_val == 127
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x4080407f;  op2val:0xff3ffcfa
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x4080407f, 0xff3ffcfa, x30, x2, 128, x3)

inst_36:
// rs1_b1_val == 1, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfcef0107;  op2val:0xfc07f83f
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfcef0107, 0xfc07f83f, x30, x2, 136, x3)

inst_37:
// rs1_b1_val == 0, rs2_b1_val == -33
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xef0000fc;  op2val:0x607df06
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xef0000fc, 0x607df06, x30, x2, 144, x3)

inst_38:
// rs1_b0_val == 85, rs1_b3_val == -2
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfe09f655;  op2val:0x00bffa
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfe09f655, 0x00bffa, x30, x2, 152, x3)

inst_39:
// rs1_b0_val == -2, rs2_b0_val == 16
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x5bf40fe;  op2val:0xc0fe10
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x5bf40fe, 0xc0fe10, x30, x2, 160, x3)

inst_40:
// rs1_b0_val == 32, rs2_b1_val == 4
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x7f084020;  op2val:0x9f80406
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x7f084020, 0x9f80406, x30, x2, 168, x3)

inst_41:
// rs2_b2_val == -33, rs1_b3_val == 32
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x20fdc080;  op2val:0xfcdf4004
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x20fdc080, 0xfcdf4004, x30, x2, 176, x3)

inst_42:
// rs2_b1_val == 85, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x7fc0107;  op2val:0xbf095580
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x7fc0107, 0xbf095580, x30, x2, 184, x3)

inst_43:
// rs2_b1_val == -17, rs2_b2_val == 1
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfcfe40f6;  op2val:0xdf01eff9
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfcfe40f6, 0xdf01eff9, x30, x2, 192, x3)

inst_44:
// rs2_b1_val == -3, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfc7f0520;  op2val:0x1fefd08
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfc7f0520, 0x1fefd08, x30, x2, 200, x3)

inst_45:
// rs2_b1_val == 2, rs1_b0_val == 0
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xef090600;  op2val:0xf9fd0205
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xef090600, 0xf9fd0205, x30, x2, 208, x3)

inst_46:
// rs2_b1_val == 1, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x620fb80;  op2val:0xfdfe01c0
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x620fb80, 0xfdfe01c0, x30, x2, 216, x3)

inst_47:
// rs2_b1_val == 0, rs2_b0_val == 64, rs1_b3_val == -86
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xaa050040;  op2val:0x8f60040
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xaa050040, 0x8f60040, x30, x2, 224, x3)

inst_48:
// rs2_b1_val == -1, rs1_b2_val == -86
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdaa0801;  op2val:0x1007ff04
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfdaa0801, 0x1007ff04, x30, x2, 232, x3)

inst_49:
// rs2_b0_val == 85, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfe800020;  op2val:0xfd06c055
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfe800020, 0xfd06c055, x30, x2, 240, x3)

inst_50:
// rs2_b0_val == 127, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xf9c0fffd;  op2val:0x605087f
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xf9c0fffd, 0x605087f, x30, x2, 248, x3)

inst_51:
// rs1_b3_val == 2, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x2205509;  op2val:0x8000fe08
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x2205509, 0x8000fe08, x30, x2, 256, x3)

inst_52:
// rs2_b2_val == 64, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x53f0907;  op2val:0x20405505
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x53f0907, 0x20405505, x30, x2, 264, x3)

inst_53:
// rs1_b2_val == 85, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xdf55f6ef;  op2val:0x4f810c0
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xdf55f6ef, 0x4f810c0, x30, x2, 272, x3)

inst_54:
// rs2_b0_val == 1, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x98002c0;  op2val:0xc0aafd01
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x98002c0, 0xc0aafd01, x30, x2, 280, x3)

inst_55:
// rs2_b0_val == 0, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x3fbfbfdf;  op2val:0xfd032000
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x3fbfbfdf, 0xfd032000, x30, x2, 288, x3)

inst_56:
// rs1_b3_val == 85, rs2_b0_val == -2
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x553fef7f;  op2val:0xf60403fe
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x553fef7f, 0xf60403fe, x30, x2, 296, x3)

inst_57:
// rs1_b3_val == -5, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfbbf0040;  op2val:0x80083f06
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfbbf0040, 0x80083f06, x30, x2, 304, x3)

inst_58:
// rs1_b0_val == 2, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xef010402;  op2val:0x10052006
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xef010402, 0x10052006, x30, x2, 312, x3)

inst_59:
// rs1_b3_val == 16, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x10012055;  op2val:0xc0fef7ff
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x10012055, 0xc0fef7ff, x30, x2, 320, x3)

inst_60:
// rs2_b0_val == -65, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x10fe05bf;  op2val:0xf609f8bf
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x10fe05bf, 0xf609f8bf, x30, x2, 328, x3)

inst_61:
// rs1_b3_val == 4, rs2_b0_val == -33
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x4f6fdc0;  op2val:0x7f07c0df
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x4f6fdc0, 0x7f07c0df, x30, x2, 336, x3)

inst_62:
// rs2_b2_val == 16, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfff907fa;  op2val:0x3f1003bf
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfff907fa, 0x3f1003bf, x30, x2, 344, x3)

inst_63:
// rs2_b0_val == -3, 
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xfcc0fc40;  op2val:0xf7f902fd
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xfcc0fc40, 0xf7f902fd, x30, x2, 352, x3)

inst_64:
// rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b2_val == -2, rs2_b1_val == -9, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b1_val < 0 and rs2_b1_val < 0, rs1_b1_val == -86, rs1_b0_val == -1
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x5feaaff;  op2val:0xfc05f709
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x5feaaff, 0xfc05f709, x30, x2, 360, x3)

inst_65:
// rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b0_val == -65, rs2_b1_val == 32, rs1_b1_val < 0 and rs2_b1_val > 0, rs1_b3_val == 8, rs1_b1_val == -9
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0x8fcf7bf;  op2val:0x70620f8
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0x8fcf7bf, 0x70620f8, x30, x2, 368, x3)

inst_66:
// rs1_b2_val > 0 and rs2_b2_val < 0, rs2_b0_val == 4, rs2_b3_val == 64, rs1_b3_val == -17, rs1_b1_val == rs2_b1_val, rs2_b2_val == -17, rs1_b2_val == 127
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xef7f03fc;  op2val:0x40ef0304
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xef7f03fc, 0x40ef0304, x30, x2, 376, x3)

inst_67:
// rs1_b2_val == -9, rs1_b1_val == -65, rs2_b2_val == -128
// opcode: khm8 ; op1:x30; op2:x29; dest:x31; op1val:0xf9f7bfc0;  op2val:0x80f8fc
TEST_PKRR_OP(khm8, x31, x30, x29, 0x00000000, 0xf9f7bfc0, 0x80f8fc, x30, x2, 384, x3)
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
    .fill 38*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 98*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
