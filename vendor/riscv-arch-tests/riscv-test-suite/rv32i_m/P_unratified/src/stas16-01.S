
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
// This assembly file tests the stas16 instruction of the RISC-V RV32PZicsr extension for the stas16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",stas16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x7,signature_x7_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x10, rs2==x5, rd==x30, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h1_val == 1024, rs2_h0_val == -1025
// opcode: stas16 ; op1:x10; op2:x5; dest:x30; op1val:0x4008000;  op2val:0x3ffffbff
TEST_RR_OP(stas16, x30, x10, x5, 0x00000000, 0x4008000, 0x3ffffbff, x7, 0, x22)

inst_1:
// rs1 == rs2 != rd, rs1==x0, rs2==x0, rd==x5, rs1_h1_val == rs2_h1_val, rs1_h0_val == -257, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h0_val == 4096, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == -257, rs1_h1_val == -257
// opcode: stas16 ; op1:x0; op2:x0; dest:x5; op1val:0xfefffeff;  op2val:0xfeff1000
TEST_RR_OP(stas16, x5, x0, x0, 0x00000000, 0xfefffeff, 0xfeff1000, x7, 4, x22)

inst_2:
// rs1 == rd != rs2, rs1==x17, rs2==x2, rd==x17, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h0_val == 512, rs2_h1_val == 16, rs1_h1_val == -21846, rs1_h0_val == 0
// opcode: stas16 ; op1:x17; op2:x2; dest:x17; op1val:0xaaaa0000;  op2val:0x100200
TEST_RR_OP(stas16, x17, x17, x2, 0x00000000, 0xaaaa0000, 0x100200, x7, 8, x22)

inst_3:
// rs1 == rs2 == rd, rs1==x11, rs2==x11, rd==x11, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h1_val == 64, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h0_val == -17
// opcode: stas16 ; op1:x11; op2:x11; dest:x11; op1val:0x400006;  op2val:0xfff9ffef
TEST_RR_OP(stas16, x11, x11, x11, 0x00000000, 0x400006, 0xfff9ffef, x7, 12, x22)

inst_4:
// rs2 == rd != rs1, rs1==x3, rs2==x9, rd==x9, rs1_h0_val == rs2_h0_val, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 2, rs2_h0_val == 1, rs1_h1_val == 21845, rs1_h0_val == 1
// opcode: stas16 ; op1:x3; op2:x9; dest:x9; op1val:0x55550001;  op2val:0x020001
TEST_RR_OP(stas16, x9, x3, x9, 0x00000000, 0x55550001, 0x020001, x7, 16, x22)

inst_5:
// rs1==x30, rs2==x4, rd==x10, rs2_h1_val == -21846, rs1_h1_val == -33, rs1_h0_val == -1, rs2_h0_val == 16
// opcode: stas16 ; op1:x30; op2:x4; dest:x10; op1val:0xffdfffff;  op2val:0xaaaa0010
TEST_RR_OP(stas16, x10, x30, x4, 0x00000000, 0xffdfffff, 0xaaaa0010, x7, 20, x22)

inst_6:
// rs1==x19, rs2==x15, rd==x2, rs2_h1_val == 21845, rs1_h0_val == -21846, rs2_h0_val == -2
// opcode: stas16 ; op1:x19; op2:x15; dest:x2; op1val:0xfff8aaaa;  op2val:0x5555fffe
TEST_RR_OP(stas16, x2, x19, x15, 0x00000000, 0xfff8aaaa, 0x5555fffe, x7, 24, x22)

inst_7:
// rs1==x1, rs2==x12, rd==x4, rs2_h1_val == 32767, rs2_h0_val == -5, rs1_h1_val == -4097
// opcode: stas16 ; op1:x1; op2:x12; dest:x4; op1val:0xefff0005;  op2val:0x7ffffffb
TEST_RR_OP(stas16, x4, x1, x12, 0x00000000, 0xefff0005, 0x7ffffffb, x7, 28, x22)

inst_8:
// rs1==x18, rs2==x8, rd==x28, rs2_h1_val == -16385, rs1_h1_val == -513, rs2_h0_val == -8193, rs1_h0_val == -17
// opcode: stas16 ; op1:x18; op2:x8; dest:x28; op1val:0xfdffffef;  op2val:0xbfffdfff
TEST_RR_OP(stas16, x28, x18, x8, 0x00000000, 0xfdffffef, 0xbfffdfff, x7, 32, x22)

inst_9:
// rs1==x27, rs2==x16, rd==x6, rs2_h1_val == -8193, rs1_h1_val == -5, rs1_h0_val == -33
// opcode: stas16 ; op1:x27; op2:x16; dest:x6; op1val:0xfffbffdf;  op2val:0xdfff0001
TEST_RR_OP(stas16, x6, x27, x16, 0x00000000, 0xfffbffdf, 0xdfff0001, x7, 36, x22)

inst_10:
// rs1==x20, rs2==x14, rd==x12, rs2_h1_val == -4097, rs2_h0_val == 21845, rs1_h1_val == 8
// opcode: stas16 ; op1:x20; op2:x14; dest:x12; op1val:0x08ffef;  op2val:0xefff5555
TEST_RR_OP(stas16, x12, x20, x14, 0x00000000, 0x08ffef, 0xefff5555, x7, 40, x22)

inst_11:
// rs1==x8, rs2==x1, rd==x21, rs2_h1_val == -2049, rs1_h0_val == 256, rs1_h1_val == -2049
// opcode: stas16 ; op1:x8; op2:x1; dest:x21; op1val:0xf7ff0100;  op2val:0xf7ffdfff
TEST_RR_OP(stas16, x21, x8, x1, 0x00000000, 0xf7ff0100, 0xf7ffdfff, x7, 44, x22)

inst_12:
// rs1==x25, rs2==x17, rd==x29, rs2_h1_val == -1025, rs2_h0_val == -32768, rs1_h1_val == -32768
// opcode: stas16 ; op1:x25; op2:x17; dest:x29; op1val:0x80000100;  op2val:0xfbff8000
TEST_RR_OP(stas16, x29, x25, x17, 0x00000000, 0x80000100, 0xfbff8000, x7, 48, x22)

inst_13:
// rs1==x28, rs2==x27, rd==x14, rs2_h1_val == -513, rs1_h1_val == 8192, rs1_h0_val == 128
// opcode: stas16 ; op1:x28; op2:x27; dest:x14; op1val:0x20000080;  op2val:0xfdff8000
TEST_RR_OP(stas16, x14, x28, x27, 0x00000000, 0x20000080, 0xfdff8000, x7, 52, x22)

inst_14:
// rs1==x13, rs2==x31, rd==x16, rs2_h1_val == -129, rs1_h1_val == -9, rs1_h0_val == 16384
// opcode: stas16 ; op1:x13; op2:x31; dest:x16; op1val:0xfff74000;  op2val:0xff7ffffb
TEST_RR_OP(stas16, x16, x13, x31, 0x00000000, 0xfff74000, 0xff7ffffb, x7, 56, x22)

inst_15:
// rs1==x14, rs2==x21, rd==x8, rs2_h1_val == -65, rs1_h1_val == 4
// opcode: stas16 ; op1:x14; op2:x21; dest:x8; op1val:0x040100;  op2val:0xffbffff9
TEST_RR_OP(stas16, x8, x14, x21, 0x00000000, 0x040100, 0xffbffff9, x7, 60, x1)

inst_16:
// rs1==x4, rs2==x22, rd==x0, rs2_h1_val == -33, rs2_h0_val == -1
// opcode: stas16 ; op1:x4; op2:x22; dest:x0; op1val:0xf7fffff6;  op2val:0xffdfffff
TEST_RR_OP(stas16, x0, x4, x22, 0x00000000, 0xf7fffff6, 0xffdfffff, x7, 64, x1)
RVTEST_SIGBASE(x4,signature_x4_0)

inst_17:
// rs1==x29, rs2==x10, rd==x15, rs2_h1_val == -17, rs1_h0_val == -65, rs1_h1_val == -1025
// opcode: stas16 ; op1:x29; op2:x10; dest:x15; op1val:0xfbffffbf;  op2val:0xffef0003
TEST_RR_OP(stas16, x15, x29, x10, 0x00000000, 0xfbffffbf, 0xffef0003, x4, 0, x1)

inst_18:
// rs1==x21, rs2==x20, rd==x13, rs2_h1_val == -9, rs1_h0_val == -513, rs1_h1_val == 2
// opcode: stas16 ; op1:x21; op2:x20; dest:x13; op1val:0x02fdff;  op2val:0xfff7fff9
TEST_RR_OP(stas16, x13, x21, x20, 0x00000000, 0x02fdff, 0xfff7fff9, x4, 4, x1)

inst_19:
// rs1==x15, rs2==x29, rd==x22, rs2_h1_val == -5, rs2_h0_val == -16385
// opcode: stas16 ; op1:x15; op2:x29; dest:x22; op1val:0x5555c000;  op2val:0xfffbbfff
TEST_RR_OP(stas16, x22, x15, x29, 0x00000000, 0x5555c000, 0xfffbbfff, x4, 8, x1)

inst_20:
// rs1==x12, rs2==x6, rd==x23, rs2_h1_val == -3, rs2_h0_val == 128, rs1_h0_val == 1024
// opcode: stas16 ; op1:x12; op2:x6; dest:x23; op1val:0x4000400;  op2val:0xfffd0080
TEST_RR_OP(stas16, x23, x12, x6, 0x00000000, 0x4000400, 0xfffd0080, x4, 12, x1)

inst_21:
// rs1==x6, rs2==x13, rd==x26, rs2_h1_val == -2, rs2_h0_val == -65
// opcode: stas16 ; op1:x6; op2:x13; dest:x26; op1val:0xc0003fff;  op2val:0xfffeffbf
TEST_RR_OP(stas16, x26, x6, x13, 0x00000000, 0xc0003fff, 0xfffeffbf, x4, 16, x1)

inst_22:
// rs1==x23, rs2==x19, rd==x18, rs2_h1_val == -32768, rs1_h0_val == -5, rs1_h1_val == -8193
// opcode: stas16 ; op1:x23; op2:x19; dest:x18; op1val:0xdffffffb;  op2val:0x8000c000
TEST_RR_OP(stas16, x18, x23, x19, 0x00000000, 0xdffffffb, 0x8000c000, x4, 20, x1)

inst_23:
// rs1==x7, rs2==x3, rd==x24, rs2_h1_val == 16384, rs1_h0_val == 4
// opcode: stas16 ; op1:x7; op2:x3; dest:x24; op1val:0xdfff0004;  op2val:0x40000009
TEST_RR_OP(stas16, x24, x7, x3, 0x00000000, 0xdfff0004, 0x40000009, x4, 24, x1)

inst_24:
// rs1==x26, rs2==x28, rd==x20, rs2_h1_val == 8192, rs2_h0_val == 8
// opcode: stas16 ; op1:x26; op2:x28; dest:x20; op1val:0x5555fffc;  op2val:0x20000008
TEST_RR_OP(stas16, x20, x26, x28, 0x00000000, 0x5555fffc, 0x20000008, x4, 28, x1)

inst_25:
// rs1==x5, rs2==x26, rd==x31, rs2_h1_val == 4096, 
// opcode: stas16 ; op1:x5; op2:x26; dest:x31; op1val:0x80000007;  op2val:0x10000006
TEST_RR_OP(stas16, x31, x5, x26, 0x00000000, 0x80000007, 0x10000006, x4, 32, x1)

inst_26:
// rs1==x22, rs2==x25, rd==x19, rs2_h1_val == 2048, rs1_h0_val == 8192, rs2_h0_val == 16384, rs1_h1_val == -2
// opcode: stas16 ; op1:x22; op2:x25; dest:x19; op1val:0xfffe2000;  op2val:0x8004000
TEST_RR_OP(stas16, x19, x22, x25, 0x00000000, 0xfffe2000, 0x8004000, x4, 36, x1)

inst_27:
// rs1==x16, rs2==x30, rd==x3, rs2_h1_val == 1024, 
// opcode: stas16 ; op1:x16; op2:x30; dest:x3; op1val:0xeffffff9;  op2val:0x4000080
TEST_RR_OP(stas16, x3, x16, x30, 0x00000000, 0xeffffff9, 0x4000080, x4, 40, x1)

inst_28:
// rs1==x24, rs2==x23, rd==x7, rs2_h1_val == 512, rs1_h1_val == 0
// opcode: stas16 ; op1:x24; op2:x23; dest:x7; op1val:0x000000;  op2val:0x2001000
TEST_RR_OP(stas16, x7, x24, x23, 0x00000000, 0x000000, 0x2001000, x4, 44, x1)

inst_29:
// rs1==x9, rs2==x24, rd==x27, rs2_h1_val == 256, 
// opcode: stas16 ; op1:x9; op2:x24; dest:x27; op1val:0xffdffff8;  op2val:0x100fff6
TEST_RR_OP(stas16, x27, x9, x24, 0x00000000, 0xffdffff8, 0x100fff6, x4, 48, x1)

inst_30:
// rs1==x31, rs2==x18, rd==x1, rs1_h0_val == -1025, rs2_h0_val == -129
// opcode: stas16 ; op1:x31; op2:x18; dest:x1; op1val:0x06fbff;  op2val:0xefffff7f
TEST_RR_OP(stas16, x1, x31, x18, 0x00000000, 0x06fbff, 0xefffff7f, x4, 52, x3)

inst_31:
// rs1==x2, rs2==x7, rd==x25, rs1_h0_val == -129, 
// opcode: stas16 ; op1:x2; op2:x7; dest:x25; op1val:0xfbffff7f;  op2val:0xfff90006
TEST_RR_OP(stas16, x25, x2, x7, 0x00000000, 0xfbffff7f, 0xfff90006, x4, 56, x3)

inst_32:
// rs1_h0_val == -9, rs2_h0_val == -9
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7fff7;  op2val:0x8000fff7
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff7fff7, 0x8000fff7, x4, 60, x3)

inst_33:
// rs1_h0_val == -3, rs2_h0_val == 256, rs2_h1_val == 0
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffd;  op2val:0x000100
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xffdffffd, 0x000100, x4, 64, x3)

inst_34:
// rs1_h0_val == -2, rs2_h0_val == 0
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fffe;  op2val:0xfff70000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff9fffe, 0xfff70000, x4, 68, x3)

inst_35:
// rs1_h0_val == 4096, rs2_h1_val == 32, rs1_h1_val == 1
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x011000;  op2val:0x200003
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x011000, 0x200003, x4, 72, x3)

inst_36:
// rs1_h0_val == 2048, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff90800;  op2val:0xbfff0005
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff90800, 0xbfff0005, x4, 76, x3)

inst_37:
// rs1_h0_val == 512, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000200;  op2val:0xfbfffffa
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x20000200, 0xfbfffffa, x4, 80, x3)

inst_38:
// rs1_h0_val == 64, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffa0040;  op2val:0xbffffff6
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffa0040, 0xbffffff6, x4, 84, x3)

inst_39:
// rs1_h0_val == 32, rs2_h0_val == -2049
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xc0000020;  op2val:0x100f7ff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xc0000020, 0x100f7ff, x4, 88, x3)

inst_40:
// rs1_h0_val == 16, rs2_h0_val == -21846
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0010;  op2val:0xf7ffaaaa
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfbff0010, 0xf7ffaaaa, x4, 92, x3)

inst_41:
// rs1_h0_val == 8, rs1_h1_val == 16
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x100008;  op2val:0x4000008
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x100008, 0x4000008, x4, 96, x3)

inst_42:
// rs1_h0_val == 2, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000002;  op2val:0xffdfdfff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x4000002, 0xffdfdfff, x4, 100, x3)

inst_43:
// rs2_h1_val == 128, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x09ff7f;  op2val:0x80fff9
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x09ff7f, 0x80fff9, x4, 104, x3)

inst_44:
// rs2_h1_val == 64, rs2_h0_val == 4, rs1_h1_val == 16384
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000010;  op2val:0x400004
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x40000010, 0x400004, x4, 108, x3)

inst_45:
// rs2_h1_val == 8, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff70003;  op2val:0x08fff9
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff70003, 0x08fff9, x4, 112, x3)

inst_46:
// rs2_h1_val == 4, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000800;  op2val:0x043fff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x20000800, 0x043fff, x4, 116, x3)

inst_47:
// rs2_h1_val == 1, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000001;  op2val:0x01ff7f
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x4000001, 0x01ff7f, x4, 120, x3)

inst_48:
// rs2_h1_val == -1, rs2_h0_val == -513, rs1_h0_val == -2049, rs1_h1_val == 128
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x80f7ff;  op2val:0xfffffdff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x80f7ff, 0xfffffdff, x4, 124, x3)

inst_49:
// rs2_h0_val == -3, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe8000;  op2val:0xfdfffffd
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffe8000, 0xfdfffffd, x4, 128, x3)

inst_50:
// rs2_h0_val == 8192, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffcfff8;  op2val:0xff7f2000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffcfff8, 0xff7f2000, x4, 132, x3)

inst_51:
// rs2_h0_val == 2048, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x098000;  op2val:0x070800
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x098000, 0x070800, x4, 136, x3)

inst_52:
// rs2_h0_val == 1024, rs1_h1_val == -16385
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0004;  op2val:0xbfff0400
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xbfff0004, 0xbfff0400, x4, 140, x3)

inst_53:
// rs2_h0_val == 64, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffbf;  op2val:0x7fff0040
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfbffffbf, 0x7fff0040, x4, 144, x3)

inst_54:
// rs2_h0_val == 32, rs1_h1_val == -3
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfff8;  op2val:0xffdf0020
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffdfff8, 0xffdf0020, x4, 148, x3)

inst_55:
// rs2_h0_val == 2, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000fdff;  op2val:0x100002
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x8000fdff, 0x100002, x4, 152, x3)

inst_56:
// rs1_h1_val == 32767, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff1000;  op2val:0x80004000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x7fff1000, 0x80004000, x4, 156, x3)

inst_57:
// rs1_h1_val == -129, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f0009;  op2val:0xffef8000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xff7f0009, 0xffef8000, x4, 160, x3)

inst_58:
// rs1_h1_val == -65, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff;  op2val:0x80c000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xffbfffff, 0x80c000, x4, 164, x3)

inst_59:
// rs1_h1_val == -17, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef0040;  op2val:0x40fffe
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xffef0040, 0x40fffe, x4, 168, x3)

inst_60:
// rs2_h0_val == -257, rs1_h1_val == 256
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000040;  op2val:0x04feff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x1000040, 0x04feff, x4, 172, x3)

inst_61:
// rs1_h1_val == 4096, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffc;  op2val:0xffeffffd
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x1000fffc, 0xffeffffd, x4, 176, x3)

inst_62:
// rs1_h1_val == 2048, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000200;  op2val:0x080001
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x8000200, 0x080001, x4, 180, x3)

inst_63:
// rs1_h1_val == 512, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000010;  op2val:0x4004000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x2000010, 0x4004000, x4, 184, x3)

inst_64:
// rs1_h1_val == 32, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20fff8;  op2val:0x104000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x20fff8, 0x104000, x4, 188, x3)

inst_65:
// rs2_h0_val == 32767, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffefffd;  op2val:0x107fff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffefffd, 0x107fff, x4, 192, x3)

inst_66:
// rs2_h0_val == -33, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffefffd;  op2val:0xff7fffdf
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfffefffd, 0xff7fffdf, x4, 196, x3)

inst_67:
// rs2_h0_val == -4097, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x040002;  op2val:0x00efff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x040002, 0x00efff, x4, 200, x3)

inst_68:
// rs1_h1_val == -1, rs1_h0_val == 21845
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff5555;  op2val:0xeffffffb
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xffff5555, 0xeffffffb, x4, 204, x3)

inst_69:
// rs1_h0_val == 32767, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff67fff;  op2val:0xfefffff8
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff67fff, 0xfefffff8, x4, 208, x3)

inst_70:
// rs1_h0_val == -16385, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7fbfff;  op2val:0xf7fffff6
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xff7fbfff, 0xf7fffff6, x4, 212, x3)

inst_71:
// rs1_h0_val == -8193, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x100dfff;  op2val:0x2000009
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x100dfff, 0x2000009, x4, 216, x3)

inst_72:
// rs1_h0_val == -4097, 
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7efff;  op2val:0x00c000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfff7efff, 0x00c000, x4, 220, x3)

inst_73:
// rs1_h1_val == rs2_h1_val, rs1_h0_val == -257, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h0_val == 4096, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == -257, rs1_h1_val == -257
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfefffeff;  op2val:0xfeff1000
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xfefffeff, 0xfeff1000, x4, 224, x3)

inst_74:
// rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h1_val == 64, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h0_val == -17
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0x400006;  op2val:0xfff9ffef
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0x400006, 0xfff9ffef, x4, 228, x3)

inst_75:
// rs2_h1_val == -33, rs2_h0_val == -1
// opcode: stas16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffff6;  op2val:0xffdfffff
TEST_RR_OP(stas16, x31, x30, x29, 0x00000000, 0xf7fffff6, 0xffdfffff, x4, 232, x3)
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


signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 59*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
