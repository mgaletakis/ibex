
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
// This assembly file tests the ksll16 instruction of the RISC-V RV32PZicsr extension for the ksll16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",ksll16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x10,signature_x10_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x17, rd==x30, rs2_val == 5, rs1_h1_val == 1, rs1_h0_val == 512
// opcode: ksll16 ; op1:x27; op2:x17; dest:x30; op1val:0x010200;  op2val:0x5
TEST_PKRR_OP(ksll16, x30, x27, x17, 0x00000000, 0x010200, 0x5, x27, x10, 0, x13)

inst_1:
// rs1 == rs2 != rd, rs1==x1, rs2==x1, rd==x21, rs2_val == 7, rs1_h1_val == 2, rs1_h0_val == 8
// opcode: ksll16 ; op1:x1; op2:x1; dest:x21; op1val:0x020008;  op2val:0x7
TEST_PKRR_OP(ksll16, x21, x1, x1, 0x00000000, 0x020008, 0x7, x1, x10, 8, x13)

inst_2:
// rs1 == rd != rs2, rs1==x16, rs2==x18, rd==x16, rs2_val == 11, rs1_h1_val == 1024, rs1_h0_val == 2
// opcode: ksll16 ; op1:x16; op2:x18; dest:x16; op1val:0x4000002;  op2val:0xb
TEST_PKRR_OP(ksll16, x16, x16, x18, 0x00000000, 0x4000002, 0xb, x16, x10, 16, x13)

inst_3:
// rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs2_val == 13, rs1_h0_val == 4096
// opcode: ksll16 ; op1:x12; op2:x12; dest:x12; op1val:0x051000;  op2val:0xd
TEST_PKRR_OP(ksll16, x12, x12, x12, 0x00000000, 0x051000, 0xd, x12, x10, 24, x13)

inst_4:
// rs2 == rd != rs1, rs1==x6, rs2==x23, rd==x23, rs2_val == 14, 
// opcode: ksll16 ; op1:x6; op2:x23; dest:x23; op1val:0x060200;  op2val:0xe
TEST_PKRR_OP(ksll16, x23, x6, x23, 0x00000000, 0x060200, 0xe, x6, x10, 32, x13)

inst_5:
// rs1==x25, rs2==x4, rd==x2, rs2_val == 8, rs1_h0_val == -513
// opcode: ksll16 ; op1:x25; op2:x4; dest:x2; op1val:0x3ffffdff;  op2val:0x8
TEST_PKRR_OP(ksll16, x2, x25, x4, 0x00000000, 0x3ffffdff, 0x8, x25, x10, 40, x13)

inst_6:
// rs1==x22, rs2==x31, rd==x17, rs2_val == 4, rs1_h0_val == 64, rs1_h1_val == -2
// opcode: ksll16 ; op1:x22; op2:x31; dest:x17; op1val:0xfffe0040;  op2val:0x4
TEST_PKRR_OP(ksll16, x17, x22, x31, 0x00000000, 0xfffe0040, 0x4, x22, x10, 48, x13)

inst_7:
// rs1==x20, rs2==x7, rd==x19, rs2_val == 2, rs1_h0_val == -2049
// opcode: ksll16 ; op1:x20; op2:x7; dest:x19; op1val:0xc000f7ff;  op2val:0x2
TEST_PKRR_OP(ksll16, x19, x20, x7, 0x00000000, 0xc000f7ff, 0x2, x20, x10, 56, x13)

inst_8:
// rs1==x18, rs2==x9, rd==x3, rs2_val == 1, rs1_h1_val == -33, rs1_h0_val == 21845
// opcode: ksll16 ; op1:x18; op2:x9; dest:x3; op1val:0xffdf5555;  op2val:0x1
TEST_PKRR_OP(ksll16, x3, x18, x9, 0x00000000, 0xffdf5555, 0x1, x18, x10, 64, x13)

inst_9:
// rs1==x24, rs2==x15, rd==x5, rs1_h1_val == -21846, 
// opcode: ksll16 ; op1:x24; op2:x15; dest:x5; op1val:0xaaaa0009;  op2val:0x11
TEST_PKRR_OP(ksll16, x5, x24, x15, 0x00000000, 0xaaaa0009, 0x11, x24, x10, 72, x13)

inst_10:
// rs1==x14, rs2==x8, rd==x24, rs1_h1_val == 21845, rs1_h0_val == 256
// opcode: ksll16 ; op1:x14; op2:x8; dest:x24; op1val:0x55550100;  op2val:0x11
TEST_PKRR_OP(ksll16, x24, x14, x8, 0x00000000, 0x55550100, 0x11, x14, x10, 80, x13)

inst_11:
// rs1==x11, rs2==x2, rd==x8, rs1_h1_val == 32767, rs1_h0_val == -2
// opcode: ksll16 ; op1:x11; op2:x2; dest:x8; op1val:0x7ffffffe;  op2val:0x0
TEST_PKRR_OP(ksll16, x8, x11, x2, 0x00000000, 0x7ffffffe, 0x0, x11, x10, 88, x13)

inst_12:
// rs1==x5, rs2==x20, rd==x1, rs1_h1_val == -16385, rs1_h0_val == 1
// opcode: ksll16 ; op1:x5; op2:x20; dest:x1; op1val:0xbfff0001;  op2val:0xc
TEST_PKRR_OP(ksll16, x1, x5, x20, 0x00000000, 0xbfff0001, 0xc, x5, x10, 96, x12)

inst_13:
// rs1==x2, rs2==x3, rd==x29, rs1_h1_val == -8193, 
// opcode: ksll16 ; op1:x2; op2:x3; dest:x29; op1val:0xdfff3fff;  op2val:0x8
TEST_PKRR_OP(ksll16, x29, x2, x3, 0x00000000, 0xdfff3fff, 0x8, x2, x10, 104, x12)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_14:
// rs1==x7, rs2==x24, rd==x0, rs1_h1_val == -4097, rs1_h0_val == 4
// opcode: ksll16 ; op1:x7; op2:x24; dest:x0; op1val:0xefff0004;  op2val:0xe
TEST_PKRR_OP(ksll16, x0, x7, x24, 0x00000000, 0xefff0004, 0xe, x7, x1, 0, x12)

inst_15:
// rs1==x10, rs2==x0, rd==x7, rs1_h1_val == -2049, 
// opcode: ksll16 ; op1:x10; op2:x0; dest:x7; op1val:0xf7ff0003;  op2val:0x0
TEST_PKRR_OP(ksll16, x7, x10, x0, 0x00000000, 0xf7ff0003, 0x0, x10, x1, 8, x12)

inst_16:
// rs1==x3, rs2==x16, rd==x13, rs1_h1_val == -1025, rs1_h0_val == 32
// opcode: ksll16 ; op1:x3; op2:x16; dest:x13; op1val:0xfbff0020;  op2val:0x11
TEST_PKRR_OP(ksll16, x13, x3, x16, 0x00000000, 0xfbff0020, 0x11, x3, x1, 16, x12)

inst_17:
// rs1==x19, rs2==x14, rd==x28, rs1_h1_val == -513, 
// opcode: ksll16 ; op1:x19; op2:x14; dest:x28; op1val:0xfdfffffa;  op2val:0x1
TEST_PKRR_OP(ksll16, x28, x19, x14, 0x00000000, 0xfdfffffa, 0x1, x19, x1, 24, x12)

inst_18:
// rs1==x28, rs2==x6, rd==x10, rs1_h1_val == -257, 
// opcode: ksll16 ; op1:x28; op2:x6; dest:x10; op1val:0xfeff0004;  op2val:0x11
TEST_PKRR_OP(ksll16, x10, x28, x6, 0x00000000, 0xfeff0004, 0x11, x28, x1, 32, x12)

inst_19:
// rs1==x31, rs2==x27, rd==x20, rs1_h1_val == -129, 
// opcode: ksll16 ; op1:x31; op2:x27; dest:x20; op1val:0xff7f5555;  op2val:0xe
TEST_PKRR_OP(ksll16, x20, x31, x27, 0x00000000, 0xff7f5555, 0xe, x31, x1, 40, x12)

inst_20:
// rs1==x4, rs2==x10, rd==x6, rs1_h1_val == -65, 
// opcode: ksll16 ; op1:x4; op2:x10; dest:x6; op1val:0xffbf5555;  op2val:0x13
TEST_PKRR_OP(ksll16, x6, x4, x10, 0x00000000, 0xffbf5555, 0x13, x4, x1, 48, x12)

inst_21:
// rs1==x8, rs2==x11, rd==x18, rs1_h1_val == -17, 
// opcode: ksll16 ; op1:x8; op2:x11; dest:x18; op1val:0xffef0002;  op2val:0x6
TEST_PKRR_OP(ksll16, x18, x8, x11, 0x00000000, 0xffef0002, 0x6, x8, x1, 56, x12)

inst_22:
// rs1==x0, rs2==x22, rd==x9, rs1_h1_val == -9, 
// opcode: ksll16 ; op1:x0; op2:x22; dest:x9; op1val:0xfff70009;  op2val:0xb
TEST_PKRR_OP(ksll16, x9, x0, x22, 0x00000000, 0xfff70009, 0xb, x0, x1, 64, x12)

inst_23:
// rs1==x23, rs2==x28, rd==x25, rs1_h1_val == -5, 
// opcode: ksll16 ; op1:x23; op2:x28; dest:x25; op1val:0xfffb0040;  op2val:0xb
TEST_PKRR_OP(ksll16, x25, x23, x28, 0x00000000, 0xfffb0040, 0xb, x23, x1, 72, x12)

inst_24:
// rs1==x26, rs2==x5, rd==x22, rs1_h1_val == -3, 
// opcode: ksll16 ; op1:x26; op2:x5; dest:x22; op1val:0xfffd0200;  op2val:0x11
TEST_PKRR_OP(ksll16, x22, x26, x5, 0x00000000, 0xfffd0200, 0x11, x26, x1, 80, x12)

inst_25:
// rs1==x9, rs2==x29, rd==x14, rs1_h1_val == -32768, rs1_h0_val == 1024
// opcode: ksll16 ; op1:x9; op2:x29; dest:x14; op1val:0x80000400;  op2val:0x5
TEST_PKRR_OP(ksll16, x14, x9, x29, 0x00000000, 0x80000400, 0x5, x9, x1, 88, x12)

inst_26:
// rs1==x29, rs2==x30, rd==x27, rs1_h1_val == 16384, 
// opcode: ksll16 ; op1:x29; op2:x30; dest:x27; op1val:0x4000fdff;  op2val:0xc
TEST_PKRR_OP(ksll16, x27, x29, x30, 0x00000000, 0x4000fdff, 0xc, x29, x1, 96, x12)

inst_27:
// rs1==x30, rs2==x13, rd==x4, rs1_h1_val == 8192, rs1_h0_val == -33
// opcode: ksll16 ; op1:x30; op2:x13; dest:x4; op1val:0x2000ffdf;  op2val:0xf
TEST_PKRR_OP(ksll16, x4, x30, x13, 0x00000000, 0x2000ffdf, 0xf, x30, x1, 104, x2)

inst_28:
// rs1==x13, rs2==x21, rd==x11, rs1_h1_val == 4096, rs1_h0_val == -129
// opcode: ksll16 ; op1:x13; op2:x21; dest:x11; op1val:0x1000ff7f;  op2val:0x11
TEST_PKRR_OP(ksll16, x11, x13, x21, 0x00000000, 0x1000ff7f, 0x11, x13, x1, 112, x2)

inst_29:
// rs1==x17, rs2==x19, rd==x26, rs1_h1_val == 2048, rs1_h0_val == -1
// opcode: ksll16 ; op1:x17; op2:x19; dest:x26; op1val:0x800ffff;  op2val:0x1
TEST_PKRR_OP(ksll16, x26, x17, x19, 0x00000000, 0x800ffff, 0x1, x17, x1, 120, x2)
RVTEST_SIGBASE(x1,signature_x1_1)

inst_30:
// rs1==x15, rs2==x25, rd==x31, rs1_h0_val == 16384, 
// opcode: ksll16 ; op1:x15; op2:x25; dest:x31; op1val:0x064000;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x15, x25, 0x00000000, 0x064000, 0x10, x15, x1, 0, x2)

inst_31:
// rs1==x21, rs2==x26, rd==x15, rs1_h0_val == 8192, 
// opcode: ksll16 ; op1:x21; op2:x26; dest:x15; op1val:0xfff82000;  op2val:0x5
TEST_PKRR_OP(ksll16, x15, x21, x26, 0x00000000, 0xfff82000, 0x5, x21, x1, 8, x2)

inst_32:
// rs1_h0_val == 2048, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x80000800;  op2val:0x4
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x80000800, 0x4, x30, x1, 16, x2)

inst_33:
// rs1_h0_val == 128, rs1_h1_val == 4
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x040080;  op2val:0xb
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x040080, 0xb, x30, x1, 24, x2)

inst_34:
// rs1_h0_val == 16, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x040010;  op2val:0x5
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x040010, 0x5, x30, x1, 32, x2)

inst_35:
// rs1_h0_val == 0, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0000;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfffd0000, 0x8, x30, x1, 40, x2)

inst_36:
// rs2_val == 10, rs1_h0_val == -257
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffeff;  op2val:0xa
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfbfffeff, 0xa, x30, x1, 48, x2)

inst_37:
// rs1_h1_val == 512, rs1_h0_val == -65
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x200ffbf;  op2val:0x11
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x200ffbf, 0x11, x30, x1, 56, x2)

inst_38:
// rs1_h1_val == 256, rs1_h0_val == -17
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x100ffef;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x100ffef, 0x7, x30, x1, 64, x2)

inst_39:
// rs1_h1_val == 128, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x800003;  op2val:0x3
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x800003, 0x3, x30, x1, 72, x2)

inst_40:
// rs1_h1_val == 64, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x40ffff;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x40ffff, 0x8, x30, x1, 80, x2)

inst_41:
// rs1_h1_val == 32, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x204000;  op2val:0xc
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x204000, 0xc, x30, x1, 88, x2)

inst_42:
// rs1_h1_val == 16, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x100003;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x100003, 0x8, x30, x1, 96, x2)

inst_43:
// rs1_h1_val == 8, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x080800;  op2val:0x4
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x080800, 0x4, x30, x1, 104, x2)

inst_44:
// rs1_h1_val == 0, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fdff;  op2val:0xc
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x00fdff, 0xc, x30, x1, 112, x2)

inst_45:
// rs1_h1_val == -1, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff4000;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xffff4000, 0x10, x30, x1, 120, x2)

inst_46:
// rs1_h0_val == -21846, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffefaaaa;  op2val:0x5
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xffefaaaa, 0x5, x30, x1, 128, x2)

inst_47:
// rs1_h0_val == 32767, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa7fff;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xaaaa7fff, 0x7, x30, x1, 136, x2)

inst_48:
// rs1_h0_val == -16385, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffebfff;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfffebfff, 0x10, x30, x1, 144, x2)

inst_49:
// rs1_h0_val == -8193, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x03dfff;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x03dfff, 0x8, x30, x1, 152, x2)

inst_50:
// rs1_h0_val == -4097, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffefff;  op2val:0x3
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfeffefff, 0x3, x30, x1, 160, x2)

inst_51:
// rs1_h0_val == -1025, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x400fbff;  op2val:0x1
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x400fbff, 0x1, x30, x1, 168, x2)

inst_52:
// rs1_h0_val == -9, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555fff7;  op2val:0xd
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x5555fff7, 0xd, x30, x1, 176, x2)

inst_53:
// rs1_h0_val == -5, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffcfffb;  op2val:0x2
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfffcfffb, 0x2, x30, x1, 184, x2)

inst_54:
// rs1_h0_val == -3, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000fffd;  op2val:0x5
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x2000fffd, 0x5, x30, x1, 192, x2)

inst_55:
// rs1_h0_val == -32768, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff8000;  op2val:0xe
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfdff8000, 0xe, x30, x1, 200, x2)

inst_56:
// rs2_val == 7, rs1_h1_val == 2, rs1_h0_val == 8
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x020008;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x020008, 0x7, x30, x1, 208, x2)

inst_57:
// rs2_val == 13, rs1_h0_val == 4096
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x051000;  op2val:0xd
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0x051000, 0xd, x30, x1, 216, x2)

inst_58:
// rs1_h1_val == -4097, rs1_h0_val == 4
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff0004;  op2val:0xe
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xefff0004, 0xe, x30, x1, 224, x2)

inst_59:
// rs1_h1_val == -2049, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff0003;  op2val:0xb
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xf7ff0003, 0xb, x30, x1, 232, x2)

inst_60:
// rs1_h1_val == -9, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff70009;  op2val:0xb
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x00000000, 0xfff70009, 0xb, x30, x1, 240, x2)
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


signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 62*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
