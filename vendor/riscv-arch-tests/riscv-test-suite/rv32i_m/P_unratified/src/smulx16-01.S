
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
// This assembly file tests the smulx16 instruction of the RISC-V RV32PZicsr extension for the smulx16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smulx16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x12,signature_x12_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x29, rd==x2, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs2_h1_val == 4096, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs1_h1_val == 8192, rs1_h0_val < 0 and rs2_h0_val < 0, rs2_h0_val == -65
// opcode: smulx16 ; op1:x1; op2:x29; dest:x2; op1val:0x20008000;  op2val:0x1000ffbf
TEST_P64_PNN_OP(smulx16, x2, x3, x1, x29, 0x00000000, 0, 0x20008000, 0x1000ffbf, x12, 0, x9)

inst_1:
// rs1 == rs2 != rd, rs1==x18, rs2==x18, rd==x16, rs1_h1_val == rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h0_val == 2048, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == -8193, rs1_h1_val == -8193
// opcode: smulx16 ; op1:x18; op2:x18; dest:x16; op1val:0xdfff0009;  op2val:0xdfff0800
TEST_P64_PNN_OP(smulx16, x16, x17, x18, x18, 0x00000000, 0, 0xdfff0009, 0xdfff0800, x12, 8, x9)

inst_2:
// rs1 == rd != rs2, rs1==x8, rs2==x13, rd==x8, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h1_val == 8192, rs1_h1_val == -3, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h0_val == 8, rs2_h0_val == -1025
// opcode: smulx16 ; op1:x8; op2:x13; dest:x8; op1val:0xfffd0008;  op2val:0x2000fbff
TEST_P64_PNN_OP(smulx16, x8, x9, x8, x13, 0x00000000, 0, 0xfffd0008, 0x2000fbff, x12, 16, x9)

inst_3:
// rs1 == rs2 == rd, rs1==x14, rs2==x14, rd==x14, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -65, rs1_h1_val == 2048, rs2_h0_val == -5, rs1_h0_val == -33
// opcode: smulx16 ; op1:x14; op2:x14; dest:x14; op1val:0x0800ffdf;  op2val:0xffbffffb
TEST_P64_PNN_OP(smulx16, x14, x15, x14, x14, 0x00000000, 0, 0x0800ffdf, 0xffbffffb, x12, 24, x9)

inst_4:
// rs2 == rd != rs1, rs1==x16, rs2==x10, rd==x10, rs1_h0_val == rs2_h0_val, rs1_h1_val == 64, rs2_h1_val == -4097, rs1_h0_val == -4097, rs2_h0_val == -4097
// opcode: smulx16 ; op1:x16; op2:x10; dest:x10; op1val:0x0040efff;  op2val:0xefffefff
TEST_P64_PNN_OP(smulx16, x10, x11, x16, x10, 0x00000000, 0, 0x0040efff, 0xefffefff, x12, 32, x9)

inst_5:
// rs1==x2, rs2==x5, rd==x26, rs1_h0_val < 0 and rs2_h0_val > 0, rs1_h1_val == 4096, rs2_h1_val == 512
// opcode: smulx16 ; op1:x2; op2:x5; dest:x26; op1val:0x1000fff9;  op2val:0x02000006
TEST_P64_PNN_OP(smulx16, x26, x27, x2, x5, 0x00000000, 0, 0x1000fff9, 0x02000006, x12, 40, x9)

inst_6:
// rs1==x19, rs2==x23, rd==x22, rs2_h1_val == -21846, rs2_h0_val == -21846, rs1_h0_val == 21845
// opcode: smulx16 ; op1:x19; op2:x23; dest:x22; op1val:0x00405555;  op2val:0xaaaaaaaa
TEST_P64_PNN_OP(smulx16, x22, x23, x19, x23, 0x00000000, 0, 0x00405555, 0xaaaaaaaa, x12, 48, x9)

inst_7:
// rs1==x25, rs2==x11, rd==x6, rs2_h1_val == 21845, rs1_h1_val == -1, rs2_h0_val == 1
// opcode: smulx16 ; op1:x25; op2:x11; dest:x6; op1val:0xffff5555;  op2val:0x55550001
TEST_P64_PNN_OP(smulx16, x6, x7, x25, x11, 0x00000000, 0, 0xffff5555, 0x55550001, x12, 56, x9)

inst_8:
// rs1==x4, rs2==x0, rd==x24, rs2_h1_val == 32767, rs2_h0_val == 4096
// opcode: smulx16 ; op1:x4; op2:x0; dest:x24; op1val:0x00070003;  op2val:0x7fff1000
TEST_P64_PNN_OP(smulx16, x24, x25, x4, x0, 0x00000000, 0, 0x00070003, 0x7fff1000, x12, 64, x9)

inst_9:
// rs1==x24, rs2==x17, rd==x20, rs2_h1_val == -16385, rs1_h0_val == -17
// opcode: smulx16 ; op1:x24; op2:x17; dest:x20; op1val:0xdfffffef;  op2val:0xbfff0009
TEST_P64_PNN_OP(smulx16, x20, x21, x24, x17, 0x00000000, 0, 0xdfffffef, 0xbfff0009, x12, 72, x9)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_10:
// rs1==x28, rs2==x30, rd==x4, rs2_h1_val == -2049, rs2_h0_val == 512, rs1_h1_val == 128
// opcode: smulx16 ; op1:x28; op2:x30; dest:x4; op1val:0x0080ffef;  op2val:0xf7ff0200
TEST_P64_PNN_OP(smulx16, x4, x5, x28, x30, 0x00000000, 0, 0x0080ffef, 0xf7ff0200, x1, 0, x8)

inst_11:
// rs1==x23, rs2==x26, rd==x30, rs2_h1_val == -1025, rs1_h0_val == -2, rs2_h0_val == -16385
// opcode: smulx16 ; op1:x23; op2:x26; dest:x30; op1val:0x1000fffe;  op2val:0xfbffbfff
TEST_P64_PNN_OP(smulx16, x30, x31, x23, x26, 0x00000000, 0, 0x1000fffe, 0xfbffbfff, x1, 8, x8)

inst_12:
// rs1==x29, rs2==x27, rd==x28, rs2_h1_val == -513, rs1_h0_val == 32
// opcode: smulx16 ; op1:x29; op2:x27; dest:x28; op1val:0xfff60020;  op2val:0xfdfffffc
TEST_P64_PNN_OP(smulx16, x28, x29, x29, x27, 0x00000000, 0, 0xfff60020, 0xfdfffffc, x1, 16, x8)

inst_13:
// rs1==x13, rs2==x15, rd==x12, rs2_h1_val == -257, rs2_h0_val == -513, rs1_h1_val == 16
// opcode: smulx16 ; op1:x13; op2:x15; dest:x12; op1val:0x0010c000;  op2val:0xfefffdff
TEST_P64_PNN_OP(smulx16, x12, x13, x13, x15, 0x00000000, 0, 0x0010c000, 0xfefffdff, x1, 24, x8)

inst_14:
// rs1==x20, rs2==x7, rd==x18, rs2_h1_val == -129, 
// opcode: smulx16 ; op1:x20; op2:x7; dest:x18; op1val:0x00400005;  op2val:0xff7f0001
TEST_P64_PNN_OP(smulx16, x18, x19, x20, x7, 0x00000000, 0, 0x00400005, 0xff7f0001, x1, 32, x8)

inst_15:
// rs1==x22, rs2==x6, rs2_h1_val == -33, rs1_h0_val == -257
// opcode: smulx16 ; op1:x22; op2:x6; dest:x12; op1val:0xfff6feff;  op2val:0xffdffff6
TEST_P64_PNN_OP(smulx16, x12, x13, x22, x6, 0x00000000, 0, 0xfff6feff, 0xffdffff6, x1, 40, x8)

inst_16:
// rs1==x27, rs2==x3, rs2_h1_val == -17, rs2_h0_val == 21845, rs1_h1_val == -513
// opcode: smulx16 ; op1:x27; op2:x3; dest:x22; op1val:0xfdff0007;  op2val:0xffef5555
TEST_P64_PNN_OP(smulx16, x22, x23, x27, x3, 0x00000000, 0, 0xfdff0007, 0xffef5555, x1, 48, x8)

inst_17:
// rs1==x21, rs2==x2, rs2_h1_val == -9, rs2_h0_val == -129
// opcode: smulx16 ; op1:x21; op2:x2; dest:x28; op1val:0x00053fff;  op2val:0xfff7ff7f
TEST_P64_PNN_OP(smulx16, x28, x29, x21, x2, 0x00000000, 0, 0x00053fff, 0xfff7ff7f, x1, 56, x8)

inst_18:
// rs1==x3, rs2==x20, rs2_h1_val == -5, rs1_h1_val == -33, rs2_h0_val == -1
// opcode: smulx16 ; op1:x3; op2:x20; dest:x28; op1val:0xffdf0006;  op2val:0xfffbffff
TEST_P64_PNN_OP(smulx16, x28, x29, x3, x20, 0x00000000, 0, 0xffdf0006, 0xfffbffff, x1, 64, x8)

inst_19:
// rs1==x30, rs2==x12, rs2_h1_val == -3, rs1_h0_val == -5
// opcode: smulx16 ; op1:x30; op2:x12; dest:x6; op1val:0xfffffffb;  op2val:0xfffdfff9
TEST_P64_PNN_OP(smulx16, x6, x7, x30, x12, 0x00000000, 0, 0xfffffffb, 0xfffdfff9, x1, 72, x8)

inst_20:
// rs1==x0, rs2==x22, rs2_h1_val == -2, rs2_h0_val == 2
// opcode: smulx16 ; op1:x0; op2:x22; dest:x26; op1val:0xdfff3fff;  op2val:0xfffe0002
TEST_P64_PNN_OP(smulx16, x26, x27, x0, x22, 0x00000000, 0, 0xdfff3fff, 0xfffe0002, x1, 80, x8)

inst_21:
// rs1==x17, rs2==x25, rs2_h1_val == -32768, rs1_h0_val == 2048
// opcode: smulx16 ; op1:x17; op2:x25; dest:x4; op1val:0xfdff0800;  op2val:0x8000c000
TEST_P64_PNN_OP(smulx16, x4, x5, x17, x25, 0x00000000, 0, 0xfdff0800, 0x8000c000, x1, 88, x8)

inst_22:
// rs1==x10, rs2==x24, rs2_h1_val == 16384, 
// opcode: smulx16 ; op1:x10; op2:x24; dest:x26; op1val:0x00100008;  op2val:0x40000003
TEST_P64_PNN_OP(smulx16, x26, x27, x10, x24, 0x00000000, 0, 0x00100008, 0x40000003, x1, 96, x8)

inst_23:
// rs1==x26, rs2==x31, rs2_h1_val == 2048, rs1_h1_val == -5
// opcode: smulx16 ; op1:x26; op2:x31; dest:x24; op1val:0xfffb8000;  op2val:0x0800efff
TEST_P64_PNN_OP(smulx16, x24, x25, x26, x31, 0x00000000, 0, 0xfffb8000, 0x0800efff, x1, 104, x8)

inst_24:
// rs1==x15, rs2==x9, rs2_h1_val == 1024, rs2_h0_val == 64
// opcode: smulx16 ; op1:x15; op2:x9; dest:x28; op1val:0x0003fffa;  op2val:0x04000040
TEST_P64_PNN_OP(smulx16, x28, x29, x15, x9, 0x00000000, 0, 0x0003fffa, 0x04000040, x1, 112, x14)
RVTEST_SIGBASE(x13,signature_x13_0)

inst_25:
// rs1==x6, rs2==x1, rs2_h1_val == 256, rs1_h1_val == 8
// opcode: smulx16 ; op1:x6; op2:x1; dest:x24; op1val:0x0008fffc;  op2val:0x0100fffa
TEST_P64_PNN_OP(smulx16, x24, x25, x6, x1, 0x00000000, 0, 0x0008fffc, 0x0100fffa, x13, 0, x14)

inst_26:
// rs1==x11, rs2==x16, rs2_h1_val == 128, 
// opcode: smulx16 ; op1:x11; op2:x16; dest:x2; op1val:0x0003ffdf;  op2val:0x0080aaaa
TEST_P64_PNN_OP(smulx16, x2, x3, x11, x16, 0x00000000, 0, 0x0003ffdf, 0x0080aaaa, x13, 8, x14)

inst_27:
// rs1==x12, rs2==x28, rs2_h1_val == 64, rs2_h0_val == -33
// opcode: smulx16 ; op1:x12; op2:x28; dest:x22; op1val:0xfffa0003;  op2val:0x0040ffdf
TEST_P64_PNN_OP(smulx16, x22, x23, x12, x28, 0x00000000, 0, 0xfffa0003, 0x0040ffdf, x13, 16, x14)

inst_28:
// rs1==x5, rs2==x8, rs2_h1_val == 32, rs1_h1_val == -16385
// opcode: smulx16 ; op1:x5; op2:x8; dest:x18; op1val:0xbffffffc;  op2val:0x0020fffc
TEST_P64_PNN_OP(smulx16, x18, x19, x5, x8, 0x00000000, 0, 0xbffffffc, 0x0020fffc, x13, 24, x14)

inst_29:
// rs1==x9, rs2==x19, rs2_h1_val == 16, rs1_h1_val == -32768
// opcode: smulx16 ; op1:x9; op2:x19; dest:x10; op1val:0x80000009;  op2val:0x00100001
TEST_P64_PNN_OP(smulx16, x10, x11, x9, x19, 0x00000000, 0, 0x80000009, 0x00100001, x13, 32, x14)

inst_30:
// rs1==x7, rs2==x21, rs2_h1_val == 8, rs2_h0_val == 128, rs1_h1_val == 512
// opcode: smulx16 ; op1:x7; op2:x21; dest:x8; op1val:0x02000006;  op2val:0x00080080
TEST_P64_PNN_OP(smulx16, x8, x9, x7, x21, 0x00000000, 0, 0x02000006, 0x00080080, x13, 40, x14)

inst_31:
// rs1==x31, rs2==x4, rs2_h1_val == 4, rs2_h0_val == 4, rs1_h0_val == -8193, rs1_h1_val == 1
// opcode: smulx16 ; op1:x31; op2:x4; dest:x8; op1val:0x0001dfff;  op2val:0x00040004
TEST_P64_PNN_OP(smulx16, x8, x9, x31, x4, 0x00000000, 0, 0x0001dfff, 0x00040004, x13, 48, x14)

inst_32:
// rs2_h1_val == 2, rs1_h1_val == -9, rs1_h0_val == 8192
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfff72000;  op2val:0x00020080
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfff72000, 0x00020080, x13, 56, x14)

inst_33:
// rs1_h0_val == -1025, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0040fbff;  op2val:0x0009fdff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0040fbff, 0x0009fdff, x13, 64, x1)

inst_34:
// rs1_h0_val == -513, rs1_h1_val == 32, rs2_h0_val == -257
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0020fdff;  op2val:0xfff8feff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0020fdff, 0xfff8feff, x13, 72, x1)

inst_35:
// rs1_h0_val == -129, rs2_h0_val == -8193
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0009ff7f;  op2val:0xfffcdfff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0009ff7f, 0xfffcdfff, x13, 80, x1)

inst_36:
// rs1_h0_val == -65, rs2_h1_val == -1, rs1_h1_val == 4, rs2_h0_val == 8
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0004ffbf;  op2val:0xffff0008
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0004ffbf, 0xffff0008, x13, 88, x1)

inst_37:
// rs1_h0_val == -9, rs1_h1_val == -17
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xffeffff7;  op2val:0x3ffffbff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xffeffff7, 0x3ffffbff, x13, 96, x1)

inst_38:
// rs1_h0_val == -3, rs2_h0_val == -3
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xffeffffd;  op2val:0x0003fffd
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xffeffffd, 0x0003fffd, x13, 104, x1)

inst_39:
// rs1_h0_val == 16384, rs1_h1_val == -129
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xff7f4000;  op2val:0x0400fffa
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xff7f4000, 0x0400fffa, x13, 112, x1)

inst_40:
// rs1_h0_val == 4096, rs2_h0_val == 16384
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfff71000;  op2val:0xc0004000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfff71000, 0xc0004000, x13, 120, x1)

inst_41:
// rs1_h0_val == 1024, rs1_h1_val == 21845
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x55550400;  op2val:0xfffa0003
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x55550400, 0xfffa0003, x13, 128, x1)

inst_42:
// rs1_h0_val == 512, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00080200;  op2val:0x3fffaaaa
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00080200, 0x3fffaaaa, x13, 136, x1)

inst_43:
// rs1_h0_val == 256, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x10000100;  op2val:0xffff0008
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x10000100, 0xffff0008, x13, 144, x1)

inst_44:
// rs1_h0_val == 128, rs2_h0_val == 32
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00070080;  op2val:0xfbff0020
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00070080, 0xfbff0020, x13, 152, x1)

inst_45:
// rs1_h0_val == 64, rs1_h1_val == -21846
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xaaaa0040;  op2val:0x00070200
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xaaaa0040, 0x00070200, x13, 160, x1)

inst_46:
// rs1_h0_val == 16, rs2_h1_val == 0
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfff90010;  op2val:0x0000fffd
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfff90010, 0x0000fffd, x13, 168, x1)

inst_47:
// rs1_h0_val == 4, rs2_h0_val == -9
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00070004;  op2val:0x0009fff7
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00070004, 0x0009fff7, x13, 176, x1)

inst_48:
// rs1_h0_val == 2, rs2_h0_val == 32767, rs1_h1_val == -2
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfffe0002;  op2val:0x20007fff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfffe0002, 0x20007fff, x13, 184, x1)

inst_49:
// rs2_h0_val == -2, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfdff0005;  op2val:0xfffdfffe
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfdff0005, 0xfffdfffe, x13, 192, x1)

inst_50:
// rs2_h0_val == -32768, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfffc1000;  op2val:0x7fff8000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfffc1000, 0x7fff8000, x13, 200, x1)

inst_51:
// rs2_h0_val == 8192, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00400005;  op2val:0xffdf2000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00400005, 0xffdf2000, x13, 208, x1)

inst_52:
// rs2_h0_val == 1024, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xff7fff7f;  op2val:0x04000400
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xff7fff7f, 0x04000400, x13, 216, x1)

inst_53:
// rs2_h0_val == 256, rs1_h1_val == 1024
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x04000009;  op2val:0x01000100
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x04000009, 0x01000100, x13, 224, x1)

inst_54:
// rs2_h0_val == 16, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfff70009;  op2val:0xfbff0010
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfff70009, 0xfbff0010, x13, 232, x1)

inst_55:
// rs2_h0_val == 0, rs1_h0_val == 1
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xff7f0001;  op2val:0xaaaa0000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xff7f0001, 0xaaaa0000, x13, 240, x1)

inst_56:
// rs2_h0_val == -2049, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xffdfefff;  op2val:0xfffcf7ff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xffdfefff, 0xfffcf7ff, x13, 248, x1)

inst_57:
// rs1_h1_val == 32767, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x7fff0040;  op2val:0x3fff8000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x7fff0040, 0x3fff8000, x13, 256, x1)

inst_58:
// rs1_h0_val == 0, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00200000;  op2val:0x55550009
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00200000, 0x55550009, x13, 264, x1)

inst_59:
// rs1_h1_val == -4097, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xefff0007;  op2val:0x0007bfff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xefff0007, 0x0007bfff, x13, 272, x1)

inst_60:
// rs1_h1_val == -65, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xffbffff6;  op2val:0x0002aaaa
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xffbffff6, 0x0002aaaa, x13, 280, x1)

inst_61:
// rs1_h1_val == 16384, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x4000fffd;  op2val:0x00050040
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x4000fffd, 0x00050040, x13, 288, x1)

inst_62:
// rs1_h1_val == -2049, rs1_h0_val == -2049
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xf7fff7ff;  op2val:0xaaaa0009
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xf7fff7ff, 0xaaaa0009, x13, 296, x1)

inst_63:
// rs1_h0_val == 32767, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00047fff;  op2val:0xffef7fff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00047fff, 0xffef7fff, x13, 304, x1)

inst_64:
// rs2_h1_val == 1, rs1_h0_val == -21846
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0040aaaa;  op2val:0x0001fffe
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0040aaaa, 0x0001fffe, x13, 312, x1)

inst_65:
// rs1_h1_val == 256, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0100ffef;  op2val:0x00087fff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0100ffef, 0x00087fff, x13, 320, x1)

inst_66:
// rs1_h0_val == -16385, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x5555bfff;  op2val:0x3fff0040
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x5555bfff, 0x3fff0040, x13, 328, x1)

inst_67:
// rs1_h1_val == 2, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00020007;  op2val:0x0080feff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00020007, 0x0080feff, x13, 336, x1)

inst_68:
// rs1_h1_val == 0, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0000c000;  op2val:0xffbffdff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0000c000, 0xffbffdff, x13, 344, x1)

inst_69:
// rs1_h1_val == -257, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfefff7ff;  op2val:0xc0007fff
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfefff7ff, 0xc0007fff, x13, 352, x1)

inst_70:
// rs1_h0_val == -1, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfff7ffff;  op2val:0x02000020
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfff7ffff, 0x02000020, x13, 360, x1)

inst_71:
// rs1_h1_val == -1025, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfbfffff6;  op2val:0xfffa5555
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfbfffff6, 0xfffa5555, x13, 368, x1)

inst_72:
// rs2_h0_val == -17, 
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xfffcefff;  op2val:0x0040ffef
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xfffcefff, 0x0040ffef, x13, 376, x1)

inst_73:
// rs1_h1_val == rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h0_val == 2048, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == -8193, rs1_h1_val == -8193
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xdfff0009;  op2val:0xdfff0800
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xdfff0009, 0xdfff0800, x13, 384, x1)

inst_74:
// rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -65, rs1_h1_val == 2048, rs2_h0_val == -5, rs1_h0_val == -33
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x0800ffdf;  op2val:0xffbffffb
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x0800ffdf, 0xffbffffb, x13, 392, x1)

inst_75:
// rs2_h1_val == 32767, rs2_h0_val == 4096
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0x00070003;  op2val:0x7fff1000
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0x00070003, 0x7fff1000, x13, 400, x1)

inst_76:
// rs2_h1_val == -2, rs2_h0_val == 2
// opcode: smulx16 ; op1:x31; op2:x29; dest:x30; op1val:0xdfff3fff;  op2val:0xfffe0002
TEST_P64_PNN_OP(smulx16, x30, x31, x31, x29, 0x00000000, 0, 0xdfff3fff, 0xfffe0002, x13, 408, x1)
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


signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x13_0:
    .fill 104*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
