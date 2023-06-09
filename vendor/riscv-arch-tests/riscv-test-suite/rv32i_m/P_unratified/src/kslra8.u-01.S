
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
// This assembly file tests the kslra8.u instruction of the RISC-V RV32PZicsr extension for the kslra8.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kslra8.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x2, rs2==x1, rd==x4, rs2_val == 1431655765, rs1_b2_val == 255, rs1_b1_val == 223, rs1_b3_val == 8
// opcode: kslra8.u ; op1:x2; op2:x1; dest:x4; op1val:0x8ffdf0c;  op2val:0x55555555
TEST_PKRR_OP(kslra8.u, x4, x2, x1, 0x00000000, 0x8ffdf0c, 0x55555555, x2, x5, 0, x8)

inst_1:
// rs1 == rs2 != rd, rs1==x22, rs2==x22, rd==x7, rs2_val == 2147483647, rs1_b2_val == 0, rs1_b0_val == 223, rs1_b3_val == 191
// opcode: kslra8.u ; op1:x22; op2:x22; dest:x7; op1val:0xbf0003df;  op2val:0x7fffffff
TEST_PKRR_OP(kslra8.u, x7, x22, x22, 0x00000000, 0xbf0003df, 0x7fffffff, x22, x5, 8, x8)

inst_2:
// rs1 == rd != rs2, rs1==x3, rs2==x28, rd==x3, rs2_val == -1073741825, rs1_b1_val == 1, rs1_b3_val == 64, rs1_b0_val == 239
// opcode: kslra8.u ; op1:x3; op2:x28; dest:x3; op1val:0x400901ef;  op2val:0xbfffffff
TEST_PKRR_OP(kslra8.u, x3, x3, x28, 0x00000000, 0x400901ef, 0xbfffffff, x3, x5, 16, x8)

inst_3:
// rs1 == rs2 == rd, rs1==x29, rs2==x29, rd==x29, rs2_val == -536870913, rs1_b2_val == 191, rs1_b3_val == 127, rs1_b0_val == 4
// opcode: kslra8.u ; op1:x29; op2:x29; dest:x29; op1val:0x7fbf0904;  op2val:0xdfffffff
TEST_PKRR_OP(kslra8.u, x29, x29, x29, 0x00000000, 0x7fbf0904, 0xdfffffff, x29, x5, 24, x8)

inst_4:
// rs2 == rd != rs1, rs1==x23, rs2==x12, rd==x12, rs2_val == -268435457, 
// opcode: kslra8.u ; op1:x23; op2:x12; dest:x12; op1val:0xd030c0b;  op2val:0xefffffff
TEST_PKRR_OP(kslra8.u, x12, x23, x12, 0x00000000, 0xd030c0b, 0xefffffff, x23, x5, 32, x8)

inst_5:
// rs1==x26, rs2==x2, rd==x0, rs2_val == -134217729, rs1_b1_val == 251, rs1_b2_val == 253
// opcode: kslra8.u ; op1:x26; op2:x2; dest:x0; op1val:0x13fdfb03;  op2val:0xf7ffffff
TEST_PKRR_OP(kslra8.u, x0, x26, x2, 0x00000000, 0x13fdfb03, 0xf7ffffff, x26, x5, 40, x8)

inst_6:
// rs1==x11, rs2==x15, rd==x22, rs2_val == -67108865, rs1_b2_val == 247, rs1_b3_val == 128, rs1_b1_val == 191, rs1_b0_val == 128
// opcode: kslra8.u ; op1:x11; op2:x15; dest:x22; op1val:0x80f7bf80;  op2val:0xfbffffff
TEST_PKRR_OP(kslra8.u, x22, x11, x15, 0x00000000, 0x80f7bf80, 0xfbffffff, x11, x5, 48, x8)

inst_7:
// rs1==x9, rs2==x19, rd==x30, rs2_val == -33554433, rs1_b0_val == 253, rs1_b2_val == 127
// opcode: kslra8.u ; op1:x9; op2:x19; dest:x30; op1val:0x127f06fd;  op2val:0xfdffffff
TEST_PKRR_OP(kslra8.u, x30, x9, x19, 0x00000000, 0x127f06fd, 0xfdffffff, x9, x5, 56, x8)

inst_8:
// rs1==x18, rs2==x30, rd==x17, rs2_val == -16777217, rs1_b3_val == 4, rs1_b2_val == 32, rs1_b1_val == 4, rs1_b0_val == 64
// opcode: kslra8.u ; op1:x18; op2:x30; dest:x17; op1val:0x4200440;  op2val:0xfeffffff
TEST_PKRR_OP(kslra8.u, x17, x18, x30, 0x00000000, 0x4200440, 0xfeffffff, x18, x5, 64, x8)

inst_9:
// rs1==x30, rs2==x14, rd==x24, rs2_val == -8388609, rs1_b2_val == 2, rs1_b0_val == 127
// opcode: kslra8.u ; op1:x30; op2:x14; dest:x24; op1val:0x5020f7f;  op2val:0xff7fffff
TEST_PKRR_OP(kslra8.u, x24, x30, x14, 0x00000000, 0x5020f7f, 0xff7fffff, x30, x5, 72, x8)

inst_10:
// rs1==x21, rs2==x27, rd==x14, rs2_val == -4194305, rs1_b0_val == 8
// opcode: kslra8.u ; op1:x21; op2:x27; dest:x14; op1val:0x11130708;  op2val:0xffbfffff
TEST_PKRR_OP(kslra8.u, x14, x21, x27, 0x00000000, 0x11130708, 0xffbfffff, x21, x5, 80, x8)

inst_11:
// rs1==x16, rs2==x18, rd==x13, rs2_val == -2097153, rs1_b2_val == 16, rs1_b0_val == 247
// opcode: kslra8.u ; op1:x16; op2:x18; dest:x13; op1val:0xbf1011f7;  op2val:0xffdfffff
TEST_PKRR_OP(kslra8.u, x13, x16, x18, 0x00000000, 0xbf1011f7, 0xffdfffff, x16, x5, 88, x8)

inst_12:
// rs1==x27, rs2==x7, rd==x26, rs2_val == -1048577, rs1_b1_val == 64
// opcode: kslra8.u ; op1:x27; op2:x7; dest:x26; op1val:0xbfd400e;  op2val:0xffefffff
TEST_PKRR_OP(kslra8.u, x26, x27, x7, 0x00000000, 0xbfd400e, 0xffefffff, x27, x5, 96, x8)

inst_13:
// rs1==x19, rs2==x31, rd==x16, rs2_val == -524289, rs1_b0_val == 2
// opcode: kslra8.u ; op1:x19; op2:x31; dest:x16; op1val:0x60b0f02;  op2val:0xfff7ffff
TEST_PKRR_OP(kslra8.u, x16, x19, x31, 0x00000000, 0x60b0f02, 0xfff7ffff, x19, x5, 104, x8)

inst_14:
// rs1==x14, rs2==x3, rd==x1, rs2_val == -262145, 
// opcode: kslra8.u ; op1:x14; op2:x3; dest:x1; op1val:0x40f0a0a;  op2val:0xfffbffff
TEST_PKRR_OP(kslra8.u, x1, x14, x3, 0x00000000, 0x40f0a0a, 0xfffbffff, x14, x5, 112, x8)

inst_15:
// rs1==x10, rs2==x6, rd==x25, rs2_val == -131073, rs1_b2_val == 8, rs1_b3_val == 223
// opcode: kslra8.u ; op1:x10; op2:x6; dest:x25; op1val:0xdf08110a;  op2val:0xfffdffff
TEST_PKRR_OP(kslra8.u, x25, x10, x6, 0x00000000, 0xdf08110a, 0xfffdffff, x10, x5, 120, x8)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_16:
// rs1==x31, rs2==x9, rd==x28, rs2_val == -65537, rs1_b0_val == 0
// opcode: kslra8.u ; op1:x31; op2:x9; dest:x28; op1val:0x12f70e00;  op2val:0xfffeffff
TEST_PKRR_OP(kslra8.u, x28, x31, x9, 0x00000000, 0x12f70e00, 0xfffeffff, x31, x3, 0, x14)

inst_17:
// rs1==x0, rs2==x11, rd==x19, rs2_val == -32769, rs1_b1_val == 2, rs1_b3_val == 32
// opcode: kslra8.u ; op1:x0; op2:x11; dest:x19; op1val:0x2006020e;  op2val:0xffff7fff
TEST_PKRR_OP(kslra8.u, x19, x0, x11, 0x00000000, 0x2006020e, 0xffff7fff, x0, x3, 8, x14)

inst_18:
// rs1==x24, rs2==x4, rd==x10, rs2_val == -16385, rs1_b0_val == 16, rs1_b3_val == 0
// opcode: kslra8.u ; op1:x24; op2:x4; dest:x10; op1val:0x130210;  op2val:0xffffbfff
TEST_PKRR_OP(kslra8.u, x10, x24, x4, 0x00000000, 0x130210, 0xffffbfff, x24, x3, 16, x14)

inst_19:
// rs1==x12, rs2==x24, rd==x6, rs2_val == -8193, 
// opcode: kslra8.u ; op1:x12; op2:x24; dest:x6; op1val:0xf0abfef;  op2val:0xffffdfff
TEST_PKRR_OP(kslra8.u, x6, x12, x24, 0x00000000, 0xf0abfef, 0xffffdfff, x12, x3, 24, x14)

inst_20:
// rs1==x28, rs2==x25, rd==x15, rs2_val == -4097, 
// opcode: kslra8.u ; op1:x28; op2:x25; dest:x15; op1val:0x4bf0a7f;  op2val:0xffffefff
TEST_PKRR_OP(kslra8.u, x15, x28, x25, 0x00000000, 0x4bf0a7f, 0xffffefff, x28, x3, 32, x14)

inst_21:
// rs1==x15, rs2==x23, rd==x21, rs2_val == -2049, rs1_b2_val == 64, rs1_b1_val == 85, rs1_b3_val == 255, rs1_b0_val == 191
// opcode: kslra8.u ; op1:x15; op2:x23; dest:x21; op1val:0xff4055bf;  op2val:0xfffff7ff
TEST_PKRR_OP(kslra8.u, x21, x15, x23, 0x00000000, 0xff4055bf, 0xfffff7ff, x15, x3, 40, x14)

inst_22:
// rs1==x5, rs2==x26, rd==x31, rs2_val == -1025, rs1_b1_val == 127
// opcode: kslra8.u ; op1:x5; op2:x26; dest:x31; op1val:0xaf77f03;  op2val:0xfffffbff
TEST_PKRR_OP(kslra8.u, x31, x5, x26, 0x00000000, 0xaf77f03, 0xfffffbff, x5, x3, 48, x14)

inst_23:
// rs1==x20, rs2==x13, rd==x9, rs2_val == -513, rs1_b2_val == 223, rs1_b0_val == 1
// opcode: kslra8.u ; op1:x20; op2:x13; dest:x9; op1val:0xddf1201;  op2val:0xfffffdff
TEST_PKRR_OP(kslra8.u, x9, x20, x13, 0x00000000, 0xddf1201, 0xfffffdff, x20, x3, 56, x14)

inst_24:
// rs1==x13, rs2==x10, rd==x20, rs2_val == -257, rs1_b1_val == 32
// opcode: kslra8.u ; op1:x13; op2:x10; dest:x20; op1val:0xdf0c2004;  op2val:0xfffffeff
TEST_PKRR_OP(kslra8.u, x20, x13, x10, 0x00000000, 0xdf0c2004, 0xfffffeff, x13, x3, 64, x14)

inst_25:
// rs1==x25, rs2==x16, rd==x2, rs2_val == -129, rs1_b1_val == 16
// opcode: kslra8.u ; op1:x25; op2:x16; dest:x2; op1val:0x6061009;  op2val:0xffffff7f
TEST_PKRR_OP(kslra8.u, x2, x25, x16, 0x00000000, 0x6061009, 0xffffff7f, x25, x3, 72, x14)

inst_26:
// rs1==x4, rs2==x0, rd==x8, rs2_val == -65, 
// opcode: kslra8.u ; op1:x4; op2:x0; dest:x8; op1val:0x110f0b0f;  op2val:0x0
TEST_PKRR_OP(kslra8.u, x8, x4, x0, 0x00000000, 0x110f0b0f, 0x0, x4, x3, 80, x14)

inst_27:
// rs1==x17, rs2==x21, rd==x5, rs2_val == -33, 
// opcode: kslra8.u ; op1:x17; op2:x21; dest:x5; op1val:0x400c12fd;  op2val:0xffffffdf
TEST_PKRR_OP(kslra8.u, x5, x17, x21, 0x00000000, 0x400c12fd, 0xffffffdf, x17, x3, 88, x14)

inst_28:
// rs1==x6, rs2==x8, rd==x18, rs2_val == -17, rs1_b1_val == 247
// opcode: kslra8.u ; op1:x6; op2:x8; dest:x18; op1val:0xbf11f70f;  op2val:0xffffffef
TEST_PKRR_OP(kslra8.u, x18, x6, x8, 0x00000000, 0xbf11f70f, 0xffffffef, x6, x3, 96, x14)

inst_29:
// rs1==x1, rs2==x20, rd==x11, rs2_val == -9, rs1_b3_val == 254, rs1_b1_val == 128, rs1_b2_val == 251
// opcode: kslra8.u ; op1:x1; op2:x20; dest:x11; op1val:0xfefb800d;  op2val:0xfffffff7
TEST_PKRR_OP(kslra8.u, x11, x1, x20, 0x00000000, 0xfefb800d, 0xfffffff7, x1, x3, 104, x14)

inst_30:
// rs1==x7, rs2==x5, rd==x23, rs2_val == -5, rs1_b0_val == 32, rs1_b3_val == 85
// opcode: kslra8.u ; op1:x7; op2:x5; dest:x23; op1val:0x550d0d20;  op2val:0xfffffffb
TEST_PKRR_OP(kslra8.u, x23, x7, x5, 0x00000000, 0x550d0d20, 0xfffffffb, x7, x3, 112, x14)

inst_31:
// rs1==x8, rs2==x17, rd==x27, rs2_val == -3, 
// opcode: kslra8.u ; op1:x8; op2:x17; dest:x27; op1val:0x60e0205;  op2val:0xfffffffd
TEST_PKRR_OP(kslra8.u, x27, x8, x17, 0x00000000, 0x60e0205, 0xfffffffd, x8, x3, 120, x14)

inst_32:
// rs1_b0_val == 251, rs1_b2_val == 254, rs1_b3_val == 1, rs2_val == 67108864
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x1fe0afb;  op2val:0x4000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x1fe0afb, 0x4000000, x30, x3, 128, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_33:
// rs1_b0_val == 254, rs2_val == 2048, rs1_b2_val == 128
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x800cfe;  op2val:0x800
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x800cfe, 0x800, x30, x1, 0, x2)

inst_34:
// rs1_b0_val == 255, rs2_val == 8
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x91205ff;  op2val:0x8
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x91205ff, 0x8, x30, x1, 8, x2)

inst_35:
// rs2_val == -1431655766, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x5020380;  op2val:0xaaaaaaaa
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x5020380, 0xaaaaaaaa, x30, x1, 16, x2)

inst_36:
// rs2_val == -2, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x3fdf70c;  op2val:0xfffffffe
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x3fdf70c, 0xfffffffe, x30, x1, 24, x2)

inst_37:
// rs2_val == -2147483648, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x13df030b;  op2val:0x80000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x13df030b, 0x80000000, x30, x1, 32, x2)

inst_38:
// rs2_val == 1073741824, rs1_b3_val == 253, rs1_b0_val == 170, rs1_b1_val == 239
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xfd05efaa;  op2val:0x40000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xfd05efaa, 0x40000000, x30, x1, 40, x2)

inst_39:
// rs2_val == 536870912, rs1_b1_val == 170
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x8012aa20;  op2val:0x20000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x8012aa20, 0x20000000, x30, x1, 48, x2)

inst_40:
// rs2_val == 268435456, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x603030d;  op2val:0x10000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x603030d, 0x10000000, x30, x1, 56, x2)

inst_41:
// rs2_val == 134217728, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xbf09017f;  op2val:0x8000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xbf09017f, 0x8000000, x30, x1, 64, x2)

inst_42:
// rs2_val == 33554432, rs1_b3_val == 247
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xf71211fe;  op2val:0x2000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xf71211fe, 0x2000000, x30, x1, 72, x2)

inst_43:
// rs2_val == 16777216, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x5df0f09;  op2val:0x1000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x5df0f09, 0x1000000, x30, x1, 80, x2)

inst_44:
// rs2_val == 8388608, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x407f0e09;  op2val:0x800000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x407f0e09, 0x800000, x30, x1, 88, x2)

inst_45:
// rs2_val == 4194304, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x70a030c;  op2val:0x400000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x70a030c, 0x400000, x30, x1, 96, x2)

inst_46:
// rs2_val == 2097152, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xff0f0e06;  op2val:0x200000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xff0f0e06, 0x200000, x30, x1, 104, x2)

inst_47:
// rs2_val == 1048576, rs1_b3_val == 239
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xef080d01;  op2val:0x100000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xef080d01, 0x100000, x30, x1, 112, x2)

inst_48:
// rs2_val == 524288, rs1_b1_val == 254
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x55f7fe0c;  op2val:0x80000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x55f7fe0c, 0x80000, x30, x1, 120, x2)

inst_49:
// rs2_val == 262144, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x60f7ffb;  op2val:0x40000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x60f7ffb, 0x40000, x30, x1, 128, x2)

inst_50:
// rs2_val == 1, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x31380fd;  op2val:0x1
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x31380fd, 0x1, x30, x1, 136, x2)

inst_51:
// rs1_b3_val == 170, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xaafd0440;  op2val:0x100000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xaafd0440, 0x100000, x30, x1, 144, x2)

inst_52:
// rs1_b3_val == 251, rs1_b2_val == 239
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbef020e;  op2val:0x1
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xfbef020e, 0x1, x30, x1, 152, x2)

inst_53:
// rs1_b3_val == 16, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x10060202;  op2val:0xc0000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x10060202, 0xc0000000, x30, x1, 160, x2)

inst_54:
// rs1_b3_val == 2, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x20b110b;  op2val:0x40000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x20b110b, 0x40000000, x30, x1, 168, x2)

inst_55:
// rs1_b2_val == 170, rs1_b0_val == 85
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xefaa0455;  op2val:0x200000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xefaa0455, 0x200000, x30, x1, 176, x2)

inst_56:
// rs1_b2_val == 85, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xef55fb09;  op2val:0xdfffffff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xef55fb09, 0xdfffffff, x30, x1, 184, x2)

inst_57:
// rs2_val == 512, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x12100bdf;  op2val:0x200
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x12100bdf, 0x200, x30, x1, 192, x2)

inst_58:
// rs1_b2_val == 4, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xe04f704;  op2val:0x7fffffff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xe04f704, 0x7fffffff, x30, x1, 200, x2)

inst_59:
// rs1_b2_val == 1, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x50155aa;  op2val:0x6
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x50155aa, 0x6, x30, x1, 208, x2)

inst_60:
// rs1_b1_val == 255, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x4012ff40;  op2val:0xfffffff6
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x4012ff40, 0xfffffff6, x30, x1, 216, x2)

inst_61:
// rs2_val == 131072, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x40050506;  op2val:0x20000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x40050506, 0x20000, x30, x1, 224, x2)

inst_62:
// rs2_val == 65536, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x6fe1340;  op2val:0x10000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x6fe1340, 0x10000, x30, x1, 232, x2)

inst_63:
// rs1_b1_val == 0, rs2_val == 1024
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x1006000c;  op2val:0x400
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x1006000c, 0x400, x30, x1, 240, x2)

inst_64:
// rs2_val == 32768, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x117f0cf7;  op2val:0x8000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x117f0cf7, 0x8000, x30, x1, 248, x2)

inst_65:
// rs1_b1_val == 253, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x3effd0b;  op2val:0xfffffffb
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x3effd0b, 0xfffffffb, x30, x1, 256, x2)

inst_66:
// rs2_val == 16384, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xd13ffaa;  op2val:0x4000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xd13ffaa, 0x4000, x30, x1, 264, x2)

inst_67:
// rs2_val == 8192, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xfd807ffd;  op2val:0x2000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xfd807ffd, 0x2000, x30, x1, 272, x2)

inst_68:
// rs2_val == 4096, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xfef74002;  op2val:0x1000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xfef74002, 0x1000, x30, x1, 280, x2)

inst_69:
// rs1_b1_val == 8, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xaadf0880;  op2val:0xc0000000
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xaadf0880, 0xc0000000, x30, x1, 288, x2)

inst_70:
// rs2_val == 256, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xdf130d03;  op2val:0x100
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xdf130d03, 0x100, x30, x1, 296, x2)

inst_71:
// rs2_val == 128, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xf01f7aa;  op2val:0x80
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xf01f7aa, 0x80, x30, x1, 304, x2)

inst_72:
// rs2_val == 64, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x3118012;  op2val:0x40
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x3118012, 0x40, x30, x1, 312, x2)

inst_73:
// rs2_val == 32, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7fd01ef;  op2val:0x20
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xf7fd01ef, 0x20, x30, x1, 320, x2)

inst_74:
// rs2_val == 16, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7400509;  op2val:0x10
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xf7400509, 0x10, x30, x1, 328, x2)

inst_75:
// rs2_val == 4, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xfd0e0d01;  op2val:0x4
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xfd0e0d01, 0x4, x30, x1, 336, x2)

inst_76:
// rs2_val == 2, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x55feeff7;  op2val:0x2
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x55feeff7, 0x2, x30, x1, 344, x2)

inst_77:
// rs2_val == 2147483647, rs1_b2_val == 0, rs1_b0_val == 223, rs1_b3_val == 191
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0xbf0003df;  op2val:0x7fffffff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0xbf0003df, 0x7fffffff, x30, x1, 352, x2)

inst_78:
// rs2_val == -536870913, rs1_b2_val == 191, rs1_b3_val == 127, rs1_b0_val == 4
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x7fbf0904;  op2val:0xdfffffff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x7fbf0904, 0xdfffffff, x30, x1, 360, x2)

inst_79:
// rs2_val == -134217729, rs1_b1_val == 251, rs1_b2_val == 253
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x13fdfb03;  op2val:0xf7ffffff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x13fdfb03, 0xf7ffffff, x30, x1, 368, x2)

inst_80:
// rs2_val == -32769, rs1_b1_val == 2, rs1_b3_val == 32
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x2006020e;  op2val:0xffff7fff
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x2006020e, 0xffff7fff, x30, x1, 376, x2)

inst_81:
// rs2_val == -65, 
// opcode: kslra8.u ; op1:x30; op2:x29; dest:x31; op1val:0x110f0b0f;  op2val:0xffffffbf
TEST_PKRR_OP(kslra8.u, x31, x30, x29, 0x00000000, 0x110f0b0f, 0xffffffbf, x30, x1, 384, x2)
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


signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 34*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
