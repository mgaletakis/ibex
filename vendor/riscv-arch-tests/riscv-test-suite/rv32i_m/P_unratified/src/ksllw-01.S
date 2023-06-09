
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
// This assembly file tests the ksllw instruction of the RISC-V RV32PZicsr extension for the ksllw covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",ksllw)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x14,signature_x14_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x20, rs2==x3, rd==x25, rs2_val == 21, rs1_w0_val == 32768
// opcode: ksllw ; op1:x20; op2:x3; dest:x25; op1val:0x008000;  op2val:0x15
TEST_PKRR_OP(ksllw, x25, x20, x3, 0x00000000, 0x008000, 0x15, x20, x14, 0, x11)

inst_1:
// rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x10, rs2_val == 15, rs1_w0_val == -16777217
// opcode: ksllw ; op1:x9; op2:x9; dest:x10; op1val:0xfeffffff;  op2val:0xf
TEST_PKRR_OP(ksllw, x10, x9, x9, 0x00000000, 0xfeffffff, 0xf, x9, x14, 8, x11)

inst_2:
// rs1 == rd != rs2, rs1==x21, rs2==x4, rd==x21, rs2_val == 23, rs1_w0_val == 128
// opcode: ksllw ; op1:x21; op2:x4; dest:x21; op1val:0x000080;  op2val:0x17
TEST_PKRR_OP(ksllw, x21, x21, x4, 0x00000000, 0x000080, 0x17, x21, x14, 16, x11)

inst_3:
// rs1 == rs2 == rd, rs1==x29, rs2==x29, rd==x29, rs2_val == 27, rs1_w0_val == 536870912
// opcode: ksllw ; op1:x29; op2:x29; dest:x29; op1val:0x20000000;  op2val:0x1b
TEST_PKRR_OP(ksllw, x29, x29, x29, 0x00000000, 0x20000000, 0x1b, x29, x14, 24, x11)

inst_4:
// rs2 == rd != rs1, rs1==x16, rs2==x2, rd==x2, rs2_val == 29, rs1_w0_val == 2048
// opcode: ksllw ; op1:x16; op2:x2; dest:x2; op1val:0x000800;  op2val:0x1d
TEST_PKRR_OP(ksllw, x2, x16, x2, 0x00000000, 0x000800, 0x1d, x16, x14, 32, x11)

inst_5:
// rs1==x2, rs2==x22, rd==x26, rs2_val == 30, rs1_w0_val == -3
// opcode: ksllw ; op1:x2; op2:x22; dest:x26; op1val:0xfffffffd;  op2val:0x1e
TEST_PKRR_OP(ksllw, x26, x2, x22, 0x00000000, 0xfffffffd, 0x1e, x2, x14, 40, x11)

inst_6:
// rs1==x13, rs2==x15, rd==x27, rs2_val == 16, rs1_w0_val == -67108865
// opcode: ksllw ; op1:x13; op2:x15; dest:x27; op1val:0xfbffffff;  op2val:0x10
TEST_PKRR_OP(ksllw, x27, x13, x15, 0x00000000, 0xfbffffff, 0x10, x13, x14, 48, x11)

inst_7:
// rs1==x1, rs2==x19, rd==x7, rs2_val == 8, rs1_w0_val == -8388609
// opcode: ksllw ; op1:x1; op2:x19; dest:x7; op1val:0xff7fffff;  op2val:0x8
TEST_PKRR_OP(ksllw, x7, x1, x19, 0x00000000, 0xff7fffff, 0x8, x1, x14, 56, x11)

inst_8:
// rs1==x27, rs2==x18, rd==x31, rs2_val == 4, 
// opcode: ksllw ; op1:x27; op2:x18; dest:x31; op1val:0x000005;  op2val:0x4
TEST_PKRR_OP(ksllw, x31, x27, x18, 0x00000000, 0x000005, 0x4, x27, x14, 64, x11)

inst_9:
// rs1==x31, rs2==x10, rd==x15, rs2_val == 2, rs1_w0_val == 67108864
// opcode: ksllw ; op1:x31; op2:x10; dest:x15; op1val:0x4000000;  op2val:0x2
TEST_PKRR_OP(ksllw, x15, x31, x10, 0x00000000, 0x4000000, 0x2, x31, x14, 72, x11)

inst_10:
// rs1==x0, rs2==x6, rd==x13, rs2_val == 1, rs1_w0_val == 0
// opcode: ksllw ; op1:x0; op2:x6; dest:x13; op1val:0x000000;  op2val:0x1
TEST_PKRR_OP(ksllw, x13, x0, x6, 0x00000000, 0x000000, 0x1, x0, x14, 80, x11)

inst_11:
// rs1==x7, rs2==x1, rd==x20, rs1_w0_val == -1431655766, 
// opcode: ksllw ; op1:x7; op2:x1; dest:x20; op1val:0xaaaaaaaa;  op2val:0x0
TEST_PKRR_OP(ksllw, x20, x7, x1, 0x00000000, 0xaaaaaaaa, 0x0, x7, x14, 88, x11)

inst_12:
// rs1==x12, rs2==x20, rd==x8, rs1_w0_val == 1431655765, 
// opcode: ksllw ; op1:x12; op2:x20; dest:x8; op1val:0x55555555;  op2val:0x11
TEST_PKRR_OP(ksllw, x8, x12, x20, 0x00000000, 0x55555555, 0x11, x12, x14, 96, x11)

inst_13:
// rs1==x26, rs2==x27, rd==x5, rs1_w0_val == 2147483647, 
// opcode: ksllw ; op1:x26; op2:x27; dest:x5; op1val:0x7fffffff;  op2val:0x8
TEST_PKRR_OP(ksllw, x5, x26, x27, 0x00000000, 0x7fffffff, 0x8, x26, x14, 104, x11)

inst_14:
// rs1==x24, rs2==x26, rd==x16, rs1_w0_val == -1073741825, 
// opcode: ksllw ; op1:x24; op2:x26; dest:x16; op1val:0xbfffffff;  op2val:0x8
TEST_PKRR_OP(ksllw, x16, x24, x26, 0x00000000, 0xbfffffff, 0x8, x24, x14, 112, x11)

inst_15:
// rs1==x30, rs2==x13, rd==x3, rs1_w0_val == -536870913, 
// opcode: ksllw ; op1:x30; op2:x13; dest:x3; op1val:0xdfffffff;  op2val:0xc
TEST_PKRR_OP(ksllw, x3, x30, x13, 0x00000000, 0xdfffffff, 0xc, x30, x14, 120, x11)

inst_16:
// rs1==x4, rs2==x7, rd==x6, rs1_w0_val == -268435457, 
// opcode: ksllw ; op1:x4; op2:x7; dest:x6; op1val:0xefffffff;  op2val:0x9
TEST_PKRR_OP(ksllw, x6, x4, x7, 0x00000000, 0xefffffff, 0x9, x4, x14, 128, x13)

inst_17:
// rs1==x18, rs2==x24, rd==x0, rs1_w0_val == -134217729, 
// opcode: ksllw ; op1:x18; op2:x24; dest:x0; op1val:0xf7ffffff;  op2val:0x17
TEST_PKRR_OP(ksllw, x0, x18, x24, 0x00000000, 0xf7ffffff, 0x17, x18, x14, 136, x13)

inst_18:
// rs1==x28, rs2==x11, rd==x24, rs1_w0_val == -33554433, 
// opcode: ksllw ; op1:x28; op2:x11; dest:x24; op1val:0xfdffffff;  op2val:0x7
TEST_PKRR_OP(ksllw, x24, x28, x11, 0x00000000, 0xfdffffff, 0x7, x28, x14, 144, x13)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_19:
// rs1==x17, rs2==x5, rd==x22, rs1_w0_val == -4194305, rs2_val == 10
// opcode: ksllw ; op1:x17; op2:x5; dest:x22; op1val:0xffbfffff;  op2val:0xa
TEST_PKRR_OP(ksllw, x22, x17, x5, 0x00000000, 0xffbfffff, 0xa, x17, x2, 0, x13)

inst_20:
// rs1==x15, rs2==x25, rd==x23, rs1_w0_val == -2097153, 
// opcode: ksllw ; op1:x15; op2:x25; dest:x23; op1val:0xffdfffff;  op2val:0x5
TEST_PKRR_OP(ksllw, x23, x15, x25, 0x00000000, 0xffdfffff, 0x5, x15, x2, 8, x13)

inst_21:
// rs1==x10, rs2==x31, rd==x30, rs1_w0_val == -1048577, 
// opcode: ksllw ; op1:x10; op2:x31; dest:x30; op1val:0xffefffff;  op2val:0x1
TEST_PKRR_OP(ksllw, x30, x10, x31, 0x00000000, 0xffefffff, 0x1, x10, x2, 16, x13)

inst_22:
// rs1==x3, rs2==x14, rd==x17, rs1_w0_val == -524289, 
// opcode: ksllw ; op1:x3; op2:x14; dest:x17; op1val:0xfff7ffff;  op2val:0x11
TEST_PKRR_OP(ksllw, x17, x3, x14, 0x00000000, 0xfff7ffff, 0x11, x3, x2, 24, x13)

inst_23:
// rs1==x6, rs2==x17, rd==x1, rs1_w0_val == -262145, 
// opcode: ksllw ; op1:x6; op2:x17; dest:x1; op1val:0xfffbffff;  op2val:0xa
TEST_PKRR_OP(ksllw, x1, x6, x17, 0x00000000, 0xfffbffff, 0xa, x6, x2, 32, x13)

inst_24:
// rs1==x25, rs2==x16, rd==x4, rs1_w0_val == -131073, 
// opcode: ksllw ; op1:x25; op2:x16; dest:x4; op1val:0xfffdffff;  op2val:0x9
TEST_PKRR_OP(ksllw, x4, x25, x16, 0x00000000, 0xfffdffff, 0x9, x25, x2, 40, x13)

inst_25:
// rs1==x23, rs2==x28, rd==x11, rs1_w0_val == -65537, 
// opcode: ksllw ; op1:x23; op2:x28; dest:x11; op1val:0xfffeffff;  op2val:0x0
TEST_PKRR_OP(ksllw, x11, x23, x28, 0x00000000, 0xfffeffff, 0x0, x23, x2, 48, x13)

inst_26:
// rs1==x22, rs2==x30, rd==x14, rs1_w0_val == -32769, 
// opcode: ksllw ; op1:x22; op2:x30; dest:x14; op1val:0xffff7fff;  op2val:0xb
TEST_PKRR_OP(ksllw, x14, x22, x30, 0x00000000, 0xffff7fff, 0xb, x22, x2, 56, x13)

inst_27:
// rs1==x5, rs2==x12, rd==x18, rs1_w0_val == -16385, 
// opcode: ksllw ; op1:x5; op2:x12; dest:x18; op1val:0xffffbfff;  op2val:0xc
TEST_PKRR_OP(ksllw, x18, x5, x12, 0x00000000, 0xffffbfff, 0xc, x5, x2, 64, x13)

inst_28:
// rs1==x11, rs2==x8, rd==x12, rs1_w0_val == -8193, 
// opcode: ksllw ; op1:x11; op2:x8; dest:x12; op1val:0xffffdfff;  op2val:0xb
TEST_PKRR_OP(ksllw, x12, x11, x8, 0x00000000, 0xffffdfff, 0xb, x11, x2, 72, x13)

inst_29:
// rs1==x8, rs2==x0, rd==x28, rs1_w0_val == -4097, 
// opcode: ksllw ; op1:x8; op2:x0; dest:x28; op1val:0xffffefff;  op2val:0x0
TEST_PKRR_OP(ksllw, x28, x8, x0, 0x00000000, 0xffffefff, 0x0, x8, x2, 80, x13)

inst_30:
// rs1==x19, rs2==x23, rd==x9, rs1_w0_val == -2049, 
// opcode: ksllw ; op1:x19; op2:x23; dest:x9; op1val:0xfffff7ff;  op2val:0x8
TEST_PKRR_OP(ksllw, x9, x19, x23, 0x00000000, 0xfffff7ff, 0x8, x19, x2, 88, x13)

inst_31:
// rs1==x14, rs2==x21, rd==x19, rs1_w0_val == -1025, 
// opcode: ksllw ; op1:x14; op2:x21; dest:x19; op1val:0xfffffbff;  op2val:0xb
TEST_PKRR_OP(ksllw, x19, x14, x21, 0x00000000, 0xfffffbff, 0xb, x14, x2, 96, x13)

inst_32:
// rs1_w0_val == -513, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff;  op2val:0x15
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfffffdff, 0x15, x30, x2, 104, x13)

inst_33:
// rs1_w0_val == -257, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff;  op2val:0x3
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfffffeff, 0x3, x30, x2, 112, x1)

inst_34:
// rs1_w0_val == -129, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f;  op2val:0x1e
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffff7f, 0x1e, x30, x2, 120, x1)

inst_35:
// rs1_w0_val == -65, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf;  op2val:0x12
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffffbf, 0x12, x30, x2, 128, x1)

inst_36:
// rs1_w0_val == -33, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf;  op2val:0x2
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffffdf, 0x2, x30, x2, 136, x1)

inst_37:
// rs1_w0_val == -17, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef;  op2val:0x6
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffffef, 0x6, x30, x2, 144, x1)

inst_38:
// rs1_w0_val == 4096, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x001000;  op2val:0xf
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x001000, 0xf, x30, x2, 152, x1)

inst_39:
// rs1_w0_val == 1024, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000400;  op2val:0x2
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000400, 0x2, x30, x2, 160, x1)

inst_40:
// rs1_w0_val == 512, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000200;  op2val:0x17
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000200, 0x17, x30, x2, 168, x1)

inst_41:
// rs1_w0_val == 256, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000100;  op2val:0x4
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000100, 0x4, x30, x2, 176, x1)

inst_42:
// rs1_w0_val == 64, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000040;  op2val:0x5
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000040, 0x5, x30, x2, 184, x1)

inst_43:
// rs1_w0_val == 32, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000020;  op2val:0x13
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000020, 0x13, x30, x2, 192, x1)

inst_44:
// rs1_w0_val == 16, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000010;  op2val:0x1
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000010, 0x1, x30, x2, 200, x1)

inst_45:
// rs1_w0_val == 8, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000008;  op2val:0x0
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000008, 0x0, x30, x2, 208, x1)

inst_46:
// rs1_w0_val == 4, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000004;  op2val:0x1f
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000004, 0x1f, x30, x2, 216, x1)

inst_47:
// rs1_w0_val == 2, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000002;  op2val:0x17
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000002, 0x17, x30, x2, 224, x1)

inst_48:
// rs1_w0_val == 1, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000001;  op2val:0x1
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000001, 0x1, x30, x2, 232, x1)

inst_49:
// rs1_w0_val == -1, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff;  op2val:0x8
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffffff, 0x8, x30, x2, 240, x1)

inst_50:
// rs1_w0_val == -9, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7;  op2val:0x0
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfffffff7, 0x0, x30, x2, 248, x1)

inst_51:
// rs1_w0_val == -5, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb;  op2val:0x9
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfffffffb, 0x9, x30, x2, 256, x1)

inst_52:
// rs1_w0_val == -2, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe;  op2val:0x1e
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfffffffe, 0x1e, x30, x2, 264, x1)

inst_53:
// rs1_w0_val == -2147483648, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x80000000;  op2val:0x2
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x80000000, 0x2, x30, x2, 272, x1)

inst_54:
// rs1_w0_val == 1073741824, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x40000000;  op2val:0x3
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x40000000, 0x3, x30, x2, 280, x1)

inst_55:
// rs1_w0_val == 268435456, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x10000000;  op2val:0x2
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x10000000, 0x2, x30, x2, 288, x1)

inst_56:
// rs1_w0_val == 134217728, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x8000000;  op2val:0xa
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x8000000, 0xa, x30, x2, 296, x1)

inst_57:
// rs1_w0_val == 33554432, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x2000000;  op2val:0x1
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x2000000, 0x1, x30, x2, 304, x1)

inst_58:
// rs1_w0_val == 16777216, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x1000000;  op2val:0x13
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x1000000, 0x13, x30, x2, 312, x1)

inst_59:
// rs1_w0_val == 8388608, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x800000;  op2val:0x1f
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x800000, 0x1f, x30, x2, 320, x1)

inst_60:
// rs1_w0_val == 4194304, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x400000;  op2val:0xa
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x400000, 0xa, x30, x2, 328, x1)

inst_61:
// rs1_w0_val == 2097152, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x200000;  op2val:0x2
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x200000, 0x2, x30, x2, 336, x1)

inst_62:
// rs1_w0_val == 1048576, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x100000;  op2val:0x1b
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x100000, 0x1b, x30, x2, 344, x1)

inst_63:
// rs1_w0_val == 524288, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x080000;  op2val:0xb
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x080000, 0xb, x30, x2, 352, x1)

inst_64:
// rs1_w0_val == 262144, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x040000;  op2val:0xb
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x040000, 0xb, x30, x2, 360, x1)

inst_65:
// rs1_w0_val == 131072, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x020000;  op2val:0xb
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x020000, 0xb, x30, x2, 368, x1)

inst_66:
// rs1_w0_val == 65536, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x010000;  op2val:0xf
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x010000, 0xf, x30, x2, 376, x1)

inst_67:
// rs1_w0_val == 16384, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x004000;  op2val:0x0
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x004000, 0x0, x30, x2, 384, x1)

inst_68:
// rs1_w0_val == 8192, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x002000;  op2val:0x6
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x002000, 0x6, x30, x2, 392, x1)

inst_69:
// rs2_val == 15, rs1_w0_val == -16777217
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff;  op2val:0xf
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xfeffffff, 0xf, x30, x2, 400, x1)

inst_70:
// rs2_val == 27, rs1_w0_val == 536870912
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x20000000;  op2val:0x1b
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x20000000, 0x1b, x30, x2, 408, x1)

inst_71:
// rs2_val == 1, rs1_w0_val == 0
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0x000000;  op2val:0x1
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0x000000, 0x1, x30, x2, 416, x1)

inst_72:
// rs1_w0_val == -134217729, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff;  op2val:0x17
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xf7ffffff, 0x17, x30, x2, 424, x1)

inst_73:
// rs1_w0_val == -4097, 
// opcode: ksllw ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff;  op2val:0xb
TEST_PKRR_OP(ksllw, x31, x30, x29, 0x00000000, 0xffffefff, 0xb, x30, x2, 432, x1)
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


signature_x14_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x14_1:
    .fill 38*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 110*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
