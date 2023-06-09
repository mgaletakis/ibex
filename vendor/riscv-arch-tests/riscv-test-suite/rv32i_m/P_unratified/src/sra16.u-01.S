
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
// This assembly file tests the sra16.u instruction of the RISC-V RV32PZicsr extension for the sra16.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sra16.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x3,signature_x3_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x15, rs2==x11, rd==x0, rs2_val == 5, rs1_h0_val == 16, rs1_h1_val == 2048
// opcode: sra16.u ; op1:x15; op2:x11; dest:x0; op1val:0x8000010;  op2val:0x5
TEST_RR_OP(sra16.u, x0, x15, x11, 0x00000000, 0x8000010, 0x5, x3, 0, x14)

inst_1:
// rs1 == rs2 != rd, rs1==x30, rs2==x30, rd==x31, rs2_val == 7, rs1_h0_val == -1, rs1_h1_val == -33
// opcode: sra16.u ; op1:x30; op2:x30; dest:x31; op1val:0xffdfffff;  op2val:0x7
TEST_RR_OP(sra16.u, x31, x30, x30, 0x00000000, 0xffdfffff, 0x7, x3, 4, x14)

inst_2:
// rs1 == rd != rs2, rs1==x12, rs2==x21, rd==x12, rs2_val == 11, rs1_h1_val == -2, rs1_h0_val == -21846
// opcode: sra16.u ; op1:x12; op2:x21; dest:x12; op1val:0xfffeaaaa;  op2val:0xb
TEST_RR_OP(sra16.u, x12, x12, x21, 0x00000000, 0xfffeaaaa, 0xb, x3, 8, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x8, rs2==x8, rd==x8, rs2_val == 13, rs1_h1_val == 4
// opcode: sra16.u ; op1:x8; op2:x8; dest:x8; op1val:0x04fff9;  op2val:0xd
TEST_RR_OP(sra16.u, x8, x8, x8, 0x00000000, 0x04fff9, 0xd, x3, 12, x14)

inst_4:
// rs2 == rd != rs1, rs1==x22, rs2==x13, rd==x13, rs2_val == 14, rs1_h1_val == -65
// opcode: sra16.u ; op1:x22; op2:x13; dest:x13; op1val:0xffbffffa;  op2val:0xe
TEST_RR_OP(sra16.u, x13, x22, x13, 0x00000000, 0xffbffffa, 0xe, x3, 16, x14)

inst_5:
// rs1==x11, rs2==x1, rd==x22, rs2_val == 8, rs1_h0_val == 256
// opcode: sra16.u ; op1:x11; op2:x1; dest:x22; op1val:0x030100;  op2val:0x8
TEST_RR_OP(sra16.u, x22, x11, x1, 0x00000000, 0x030100, 0x8, x3, 20, x14)

inst_6:
// rs1==x2, rs2==x12, rd==x5, rs2_val == 4, rs1_h0_val == -4097
// opcode: sra16.u ; op1:x2; op2:x12; dest:x5; op1val:0xfffeefff;  op2val:0x4
TEST_RR_OP(sra16.u, x5, x2, x12, 0x00000000, 0xfffeefff, 0x4, x3, 24, x14)

inst_7:
// rs1==x25, rs2==x26, rd==x9, rs2_val == 2, 
// opcode: sra16.u ; op1:x25; op2:x26; dest:x9; op1val:0x070003;  op2val:0x2
TEST_RR_OP(sra16.u, x9, x25, x26, 0x00000000, 0x070003, 0x2, x3, 28, x14)

inst_8:
// rs1==x13, rs2==x15, rd==x27, rs2_val == 1, 
// opcode: sra16.u ; op1:x13; op2:x15; dest:x27; op1val:0x06fff6;  op2val:0x1
TEST_RR_OP(sra16.u, x27, x13, x15, 0x00000000, 0x06fff6, 0x1, x3, 32, x14)

inst_9:
// rs1==x17, rs2==x25, rd==x24, rs1_h1_val == -21846, rs1_h0_val == 8192
// opcode: sra16.u ; op1:x17; op2:x25; dest:x24; op1val:0xaaaa2000;  op2val:0xc
TEST_RR_OP(sra16.u, x24, x17, x25, 0x00000000, 0xaaaa2000, 0xc, x3, 36, x14)

inst_10:
// rs1==x26, rs2==x0, rd==x21, rs1_h1_val == 21845, 
// opcode: sra16.u ; op1:x26; op2:x0; dest:x21; op1val:0x5555fffc;  op2val:0x0
TEST_RR_OP(sra16.u, x21, x26, x0, 0x00000000, 0x5555fffc, 0x0, x3, 40, x14)

inst_11:
// rs1==x20, rs2==x5, rd==x23, rs1_h1_val == 32767, rs1_h0_val == -8193
// opcode: sra16.u ; op1:x20; op2:x5; dest:x23; op1val:0x7fffdfff;  op2val:0x3
TEST_RR_OP(sra16.u, x23, x20, x5, 0x00000000, 0x7fffdfff, 0x3, x3, 44, x14)

inst_12:
// rs1==x9, rs2==x2, rd==x18, rs1_h1_val == -16385, 
// opcode: sra16.u ; op1:x9; op2:x2; dest:x18; op1val:0xbfff0100;  op2val:0xc
TEST_RR_OP(sra16.u, x18, x9, x2, 0x00000000, 0xbfff0100, 0xc, x3, 48, x14)

inst_13:
// rs1==x0, rs2==x9, rd==x4, rs1_h1_val == -8193, rs1_h0_val == -513
// opcode: sra16.u ; op1:x0; op2:x9; dest:x4; op1val:0xdffffdff;  op2val:0x7
TEST_RR_OP(sra16.u, x4, x0, x9, 0x00000000, 0xdffffdff, 0x7, x3, 52, x14)

inst_14:
// rs1==x7, rs2==x6, rd==x10, rs1_h1_val == -4097, rs1_h0_val == 4096
// opcode: sra16.u ; op1:x7; op2:x6; dest:x10; op1val:0xefff1000;  op2val:0xc
TEST_RR_OP(sra16.u, x10, x7, x6, 0x00000000, 0xefff1000, 0xc, x3, 56, x14)

inst_15:
// rs1==x6, rs2==x23, rd==x29, rs1_h1_val == -2049, rs1_h0_val == 128
// opcode: sra16.u ; op1:x6; op2:x23; dest:x29; op1val:0xf7ff0080;  op2val:0x4
TEST_RR_OP(sra16.u, x29, x6, x23, 0x00000000, 0xf7ff0080, 0x4, x3, 60, x14)

inst_16:
// rs1==x28, rs2==x19, rd==x25, rs1_h1_val == -1025, rs1_h0_val == -2049
// opcode: sra16.u ; op1:x28; op2:x19; dest:x25; op1val:0xfbfff7ff;  op2val:0xd
TEST_RR_OP(sra16.u, x25, x28, x19, 0x00000000, 0xfbfff7ff, 0xd, x3, 64, x9)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_17:
// rs1==x10, rs2==x31, rd==x6, rs1_h1_val == -513, rs1_h0_val == -257
// opcode: sra16.u ; op1:x10; op2:x31; dest:x6; op1val:0xfdfffeff;  op2val:0x12
TEST_RR_OP(sra16.u, x6, x10, x31, 0x00000000, 0xfdfffeff, 0x12, x8, 0, x9)

inst_18:
// rs1==x4, rs2==x16, rd==x11, rs1_h1_val == -257, 
// opcode: sra16.u ; op1:x4; op2:x16; dest:x11; op1val:0xfeffc000;  op2val:0x10
TEST_RR_OP(sra16.u, x11, x4, x16, 0x00000000, 0xfeffc000, 0x10, x8, 4, x9)

inst_19:
// rs1==x5, rs2==x28, rd==x17, rs1_h1_val == -129, 
// opcode: sra16.u ; op1:x5; op2:x28; dest:x17; op1val:0xff7faaaa;  op2val:0x7
TEST_RR_OP(sra16.u, x17, x5, x28, 0x00000000, 0xff7faaaa, 0x7, x8, 8, x9)

inst_20:
// rs1==x29, rs2==x7, rd==x20, rs1_h1_val == -17, rs1_h0_val == -65
// opcode: sra16.u ; op1:x29; op2:x7; dest:x20; op1val:0xffefffbf;  op2val:0x4
TEST_RR_OP(sra16.u, x20, x29, x7, 0x00000000, 0xffefffbf, 0x4, x8, 12, x9)

inst_21:
// rs1==x24, rs2==x14, rd==x16, rs1_h1_val == -9, rs1_h0_val == -2
// opcode: sra16.u ; op1:x24; op2:x14; dest:x16; op1val:0xfff7fffe;  op2val:0xc
TEST_RR_OP(sra16.u, x16, x24, x14, 0x00000000, 0xfff7fffe, 0xc, x8, 16, x9)

inst_22:
// rs1==x18, rs2==x17, rd==x14, rs1_h1_val == -5, rs1_h0_val == -32768
// opcode: sra16.u ; op1:x18; op2:x17; dest:x14; op1val:0xfffb8000;  op2val:0x12
TEST_RR_OP(sra16.u, x14, x18, x17, 0x00000000, 0xfffb8000, 0x12, x8, 20, x9)

inst_23:
// rs1==x31, rs2==x24, rd==x7, rs1_h1_val == -3, rs1_h0_val == 32
// opcode: sra16.u ; op1:x31; op2:x24; dest:x7; op1val:0xfffd0020;  op2val:0xd
TEST_RR_OP(sra16.u, x7, x31, x24, 0x00000000, 0xfffd0020, 0xd, x8, 24, x9)

inst_24:
// rs1==x23, rs2==x20, rd==x19, rs1_h1_val == -32768, 
// opcode: sra16.u ; op1:x23; op2:x20; dest:x19; op1val:0x8000feff;  op2val:0x1
TEST_RR_OP(sra16.u, x19, x23, x20, 0x00000000, 0x8000feff, 0x1, x8, 28, x9)

inst_25:
// rs1==x16, rs2==x18, rd==x2, rs1_h1_val == 16384, rs1_h0_val == 2
// opcode: sra16.u ; op1:x16; op2:x18; dest:x2; op1val:0x40000002;  op2val:0x12
TEST_RR_OP(sra16.u, x2, x16, x18, 0x00000000, 0x40000002, 0x12, x8, 32, x9)

inst_26:
// rs1==x3, rs2==x29, rd==x15, rs1_h1_val == 8192, rs1_h0_val == 2048
// opcode: sra16.u ; op1:x3; op2:x29; dest:x15; op1val:0x20000800;  op2val:0x6
TEST_RR_OP(sra16.u, x15, x3, x29, 0x00000000, 0x20000800, 0x6, x8, 36, x9)

inst_27:
// rs1==x14, rs2==x22, rd==x28, rs1_h1_val == 4096, 
// opcode: sra16.u ; op1:x14; op2:x22; dest:x28; op1val:0x10001000;  op2val:0x11
TEST_RR_OP(sra16.u, x28, x14, x22, 0x00000000, 0x10001000, 0x11, x8, 40, x9)

inst_28:
// rs1==x19, rs2==x10, rd==x1, rs1_h0_val == 16384, 
// opcode: sra16.u ; op1:x19; op2:x10; dest:x1; op1val:0xfffc4000;  op2val:0xb
TEST_RR_OP(sra16.u, x1, x19, x10, 0x00000000, 0xfffc4000, 0xb, x8, 44, x9)

inst_29:
// rs1==x1, rs2==x4, rd==x30, rs1_h0_val == 1024, 
// opcode: sra16.u ; op1:x1; op2:x4; dest:x30; op1val:0x80000400;  op2val:0x11
TEST_RR_OP(sra16.u, x30, x1, x4, 0x00000000, 0x80000400, 0x11, x8, 48, x9)

inst_30:
// rs1==x27, rs2==x3, rd==x26, rs1_h0_val == 512, 
// opcode: sra16.u ; op1:x27; op2:x3; dest:x26; op1val:0xbfff0200;  op2val:0xe
TEST_RR_OP(sra16.u, x26, x27, x3, 0x00000000, 0xbfff0200, 0xe, x8, 52, x9)

inst_31:
// rs1==x21, rs2==x27, rd==x3, rs1_h0_val == 64, rs1_h1_val == 0
// opcode: sra16.u ; op1:x21; op2:x27; dest:x3; op1val:0x000040;  op2val:0x9
TEST_RR_OP(sra16.u, x3, x21, x27, 0x00000000, 0x000040, 0x9, x8, 56, x1)

inst_32:
// rs1_h0_val == 8, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xfff90008;  op2val:0x8
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xfff90008, 0x8, x8, 60, x1)

inst_33:
// rs1_h0_val == 4, rs1_h1_val == 32
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x200004;  op2val:0x10
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x200004, 0x10, x8, 64, x1)

inst_34:
// rs1_h0_val == 1, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff0001;  op2val:0x13
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xf7ff0001, 0x13, x8, 68, x1)

inst_35:
// rs1_h0_val == 0, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0000;  op2val:0x9
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xfffd0000, 0x9, x8, 72, x1)

inst_36:
// rs2_val == 10, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x55550100;  op2val:0xa
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x55550100, 0xa, x8, 76, x1)

inst_37:
// rs1_h1_val == 1024, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x4000007;  op2val:0xb
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x4000007, 0xb, x8, 80, x1)

inst_38:
// rs1_h1_val == 512, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x200ffbf;  op2val:0x9
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x200ffbf, 0x9, x8, 84, x1)

inst_39:
// rs1_h1_val == 256, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x1000003;  op2val:0xe
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x1000003, 0xe, x8, 88, x1)

inst_40:
// rs1_h1_val == 128, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x80fffe;  op2val:0x4
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x80fffe, 0x4, x8, 92, x1)

inst_41:
// rs1_h1_val == 64, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x40fffc;  op2val:0x4
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x40fffc, 0x4, x8, 96, x1)

inst_42:
// rs1_h1_val == 16, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x100007;  op2val:0x5
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x100007, 0x5, x8, 100, x1)

inst_43:
// rs1_h1_val == 8, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x080003;  op2val:0xa
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x080003, 0xa, x8, 104, x1)

inst_44:
// rs1_h1_val == 2, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x020006;  op2val:0xc
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x020006, 0xc, x8, 108, x1)

inst_45:
// rs1_h1_val == 1, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x01ffff;  op2val:0x0
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x01ffff, 0x0, x8, 112, x1)

inst_46:
// rs1_h1_val == -1, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xffff0020;  op2val:0x0
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xffff0020, 0x0, x8, 116, x1)

inst_47:
// rs1_h0_val == 21845, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbff5555;  op2val:0x2
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xfbff5555, 0x2, x8, 120, x1)

inst_48:
// rs1_h0_val == 32767, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x7fff7fff;  op2val:0x0
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x7fff7fff, 0x0, x8, 124, x1)

inst_49:
// rs1_h0_val == -16385, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x200bfff;  op2val:0x6
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x200bfff, 0x6, x8, 128, x1)

inst_50:
// rs1_h0_val == -1025, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffbff;  op2val:0x0
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xf7fffbff, 0x0, x8, 132, x1)

inst_51:
// rs1_h0_val == -129, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xff7fff7f;  op2val:0x12
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xff7fff7f, 0x12, x8, 136, x1)

inst_52:
// rs1_h0_val == -33, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffdf;  op2val:0x6
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xffbfffdf, 0x6, x8, 140, x1)

inst_53:
// rs1_h0_val == -17, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x8000ffef;  op2val:0x13
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x8000ffef, 0x13, x8, 144, x1)

inst_54:
// rs1_h0_val == -9, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x400fff7;  op2val:0x9
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x400fff7, 0x9, x8, 148, x1)

inst_55:
// rs1_h0_val == -5, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xfff8fffb;  op2val:0x9
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xfff8fffb, 0x9, x8, 152, x1)

inst_56:
// rs1_h0_val == -3, 
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x08fffd;  op2val:0xe
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x08fffd, 0xe, x8, 156, x1)

inst_57:
// rs2_val == 5, rs1_h0_val == 16, rs1_h1_val == 2048
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x8000010;  op2val:0x5
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x8000010, 0x5, x8, 160, x1)

inst_58:
// rs2_val == 7, rs1_h0_val == -1, rs1_h1_val == -33
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff;  op2val:0x7
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xffdfffff, 0x7, x8, 164, x1)

inst_59:
// rs2_val == 13, rs1_h1_val == 4
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0x04fff9;  op2val:0xd
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0x04fff9, 0xd, x8, 168, x1)

inst_60:
// rs1_h1_val == -8193, rs1_h0_val == -513
// opcode: sra16.u ; op1:x30; op2:x29; dest:x31; op1val:0xdffffdff;  op2val:0x7
TEST_RR_OP(sra16.u, x31, x30, x29, 0x00000000, 0xdffffdff, 0x7, x8, 172, x1)
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


signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 44*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
