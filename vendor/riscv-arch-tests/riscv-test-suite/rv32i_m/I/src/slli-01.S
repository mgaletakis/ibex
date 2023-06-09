
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Tue Dec 15 15:36:11 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32i.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I")

.section .text.init
.org 0x80
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x3,signature_x3_1)

inst_0:
// rs1 != rd, rs1==x17, rd==x27, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -1073741825, imm_val == 29
// opcode: slli ; op1:x17; dest:x27; op1val:-0x40000001;  immval:0x1d
TEST_IMM_OP( slli, x27, x17, 0xe0000000, -0x40000001, 0x1d, x3, 0, x7)

inst_1:
// rs1 == rd, rs1==x26, rd==x26, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val==1717986918, imm_val == 15
// opcode: slli ; op1:x26; dest:x26; op1val:0x66666666;  immval:0xf
TEST_IMM_OP( slli, x26, x26, 0x33330000, 0x66666666, 0xf, x3, 4, x7)

inst_2:
// rs1==x22, rd==x11, rs1_val < 0 and imm_val == 0, rs1_val == -65537
// opcode: slli ; op1:x22; dest:x11; op1val:-0x10001;  immval:0x0
TEST_IMM_OP( slli, x11, x22, 0xfffeffff, -0x10001, 0x0, x3, 8, x7)

inst_3:
// rs1==x15, rd==x6, rs1_val > 0 and imm_val == 0, rs1_val==4, rs1_val == 4
// opcode: slli ; op1:x15; dest:x6; op1val:0x4;  immval:0x0
TEST_IMM_OP( slli, x6, x15, 0x4, 0x4, 0x0, x3, 12, x7)

inst_4:
// rs1==x9, rd==x16, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -4194305
// opcode: slli ; op1:x9; dest:x16; op1val:-0x400001;  immval:0x1f
TEST_IMM_OP( slli, x16, x9, 0x80000000, -0x400001, 0x1f, x3, 16, x7)

inst_5:
// rs1==x11, rd==x20, rs1_val > 0 and imm_val == (xlen-1), 
// opcode: slli ; op1:x11; dest:x20; op1val:0x4;  immval:0x1f
TEST_IMM_OP( slli, x20, x11, 0x0, 0x4, 0x1f, x3, 20, x7)

inst_6:
// rs1==x1, rd==x19, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, imm_val == 8, rs1_val == 8
// opcode: slli ; op1:x1; dest:x19; op1val:0x8;  immval:0x8
TEST_IMM_OP( slli, x19, x1, 0x800, 0x8, 0x8, x3, 24, x7)

inst_7:
// rs1==x19, rd==x25, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -2147483648, imm_val == 16
// opcode: slli ; op1:x19; dest:x25; op1val:-0x80000000;  immval:0x10
TEST_IMM_OP( slli, x25, x19, 0x0, -0x80000000, 0x10, x3, 28, x7)

inst_8:
// rs1==x8, rd==x12, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, rs1_val==0
// opcode: slli ; op1:x8; dest:x12; op1val:0x0;  immval:0xc
TEST_IMM_OP( slli, x12, x8, 0x0, 0x0, 0xc, x3, 32, x7)

inst_9:
// rs1==x27, rd==x30, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 2147483647
// opcode: slli ; op1:x27; dest:x30; op1val:0x7fffffff;  immval:0x8
TEST_IMM_OP( slli, x30, x27, 0xffffff00, 0x7fffffff, 0x8, x3, 36, x7)

inst_10:
// rs1==x2, rd==x4, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, imm_val == 1, rs1_val == 1
// opcode: slli ; op1:x2; dest:x4; op1val:0x1;  immval:0x1
TEST_IMM_OP( slli, x4, x2, 0x2, 0x1, 0x1, x3, 40, x7)

inst_11:
// rs1==x31, rd==x14, rs1_val == 2, rs1_val==2
// opcode: slli ; op1:x31; dest:x14; op1val:0x2;  immval:0x6
TEST_IMM_OP( slli, x14, x31, 0x80, 0x2, 0x6, x3, 44, x7)

inst_12:
// rs1==x24, rd==x17, rs1_val == 16, 
// opcode: slli ; op1:x24; dest:x17; op1val:0x10;  immval:0xe
TEST_IMM_OP( slli, x17, x24, 0x40000, 0x10, 0xe, x3, 48, x7)

inst_13:
// rs1==x4, rd==x10, rs1_val == 32, 
// opcode: slli ; op1:x4; dest:x10; op1val:0x20;  immval:0x3
TEST_IMM_OP( slli, x10, x4, 0x100, 0x20, 0x3, x3, 52, x7)

inst_14:
// rs1==x18, rd==x2, rs1_val == 64, imm_val == 21
// opcode: slli ; op1:x18; dest:x2; op1val:0x40;  immval:0x15
TEST_IMM_OP( slli, x2, x18, 0x8000000, 0x40, 0x15, x3, 56, x7)

inst_15:
// rs1==x5, rd==x23, rs1_val == 128, 
// opcode: slli ; op1:x5; dest:x23; op1val:0x80;  immval:0x15
TEST_IMM_OP( slli, x23, x5, 0x10000000, 0x80, 0x15, x3, 60, x7)

inst_16:
// rs1==x13, rd==x8, rs1_val == 256, 
// opcode: slli ; op1:x13; dest:x8; op1val:0x100;  immval:0x1
TEST_IMM_OP( slli, x8, x13, 0x200, 0x100, 0x1, x3, 64, x7)

inst_17:
// rs1==x20, rd==x0, rs1_val == 512, 
// opcode: slli ; op1:x20; dest:x0; op1val:0x200;  immval:0x0
TEST_IMM_OP( slli, x0, x20, 0, 0x200, 0x0, x3, 68, x7)

inst_18:
// rs1==x16, rd==x9, rs1_val == 1024, imm_val == 2
// opcode: slli ; op1:x16; dest:x9; op1val:0x400;  immval:0x2
TEST_IMM_OP( slli, x9, x16, 0x1000, 0x400, 0x2, x3, 72, x7)

inst_19:
// rs1==x21, rd==x5, rs1_val == 2048, 
// opcode: slli ; op1:x21; dest:x5; op1val:0x800;  immval:0x13
TEST_IMM_OP( slli, x5, x21, 0x40000000, 0x800, 0x13, x3, 76, x7)

inst_20:
// rs1==x23, rd==x1, rs1_val == 4096, 
// opcode: slli ; op1:x23; dest:x1; op1val:0x1000;  immval:0x7
TEST_IMM_OP( slli, x1, x23, 0x80000, 0x1000, 0x7, x3, 80, x2)

inst_21:
// rs1==x12, rd==x18, rs1_val == 8192, 
// opcode: slli ; op1:x12; dest:x18; op1val:0x2000;  immval:0x10
TEST_IMM_OP( slli, x18, x12, 0x20000000, 0x2000, 0x10, x3, 84, x2)

inst_22:
// rs1==x29, rd==x15, rs1_val == 16384, 
// opcode: slli ; op1:x29; dest:x15; op1val:0x4000;  immval:0xb
TEST_IMM_OP( slli, x15, x29, 0x2000000, 0x4000, 0xb, x3, 88, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_23:
// rs1==x3, rd==x21, rs1_val == 32768, imm_val == 23
// opcode: slli ; op1:x3; dest:x21; op1val:0x8000;  immval:0x17
TEST_IMM_OP( slli, x21, x3, 0x0, 0x8000, 0x17, x1, 0, x2)

inst_24:
// rs1==x0, rd==x31, rs1_val == 65536, 
// opcode: slli ; op1:x0; dest:x31; op1val:0x0;  immval:0x1
TEST_IMM_OP( slli, x31, x0, 0x0, 0x0, 0x1, x1, 4, x2)

inst_25:
// rs1==x14, rd==x3, rs1_val == 131072, imm_val == 27
// opcode: slli ; op1:x14; dest:x3; op1val:0x20000;  immval:0x1b
TEST_IMM_OP( slli, x3, x14, 0x0, 0x20000, 0x1b, x1, 8, x2)

inst_26:
// rs1==x25, rd==x24, rs1_val == 262144, 
// opcode: slli ; op1:x25; dest:x24; op1val:0x40000;  immval:0x1f
TEST_IMM_OP( slli, x24, x25, 0x0, 0x40000, 0x1f, x1, 12, x2)

inst_27:
// rs1==x30, rd==x29, rs1_val == 524288, 
// opcode: slli ; op1:x30; dest:x29; op1val:0x80000;  immval:0xf
TEST_IMM_OP( slli, x29, x30, 0x0, 0x80000, 0xf, x1, 16, x2)

inst_28:
// rs1==x28, rd==x13, rs1_val == 1048576, 
// opcode: slli ; op1:x28; dest:x13; op1val:0x100000;  immval:0x17
TEST_IMM_OP( slli, x13, x28, 0x0, 0x100000, 0x17, x1, 20, x2)

inst_29:
// rs1==x10, rd==x7, rs1_val == 2097152, 
// opcode: slli ; op1:x10; dest:x7; op1val:0x200000;  immval:0x7
TEST_IMM_OP( slli, x7, x10, 0x10000000, 0x200000, 0x7, x1, 24, x2)

inst_30:
// rs1==x7, rd==x22, rs1_val == 4194304, 
// opcode: slli ; op1:x7; dest:x22; op1val:0x400000;  immval:0x1d
TEST_IMM_OP( slli, x22, x7, 0x0, 0x400000, 0x1d, x1, 28, x2)

inst_31:
// rs1==x6, rd==x28, rs1_val == 8388608, 
// opcode: slli ; op1:x6; dest:x28; op1val:0x800000;  immval:0x2
TEST_IMM_OP( slli, x28, x6, 0x2000000, 0x800000, 0x2, x1, 32, x2)

inst_32:
// rs1_val == 16777216, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x1000000;  immval:0x6
TEST_IMM_OP( slli, x11, x10, 0x40000000, 0x1000000, 0x6, x1, 36, x2)

inst_33:
// rs1_val == 33554432, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x2000000;  immval:0x5
TEST_IMM_OP( slli, x11, x10, 0x40000000, 0x2000000, 0x5, x1, 40, x2)

inst_34:
// rs1_val == 67108864, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x4000000;  immval:0x11
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000, 0x11, x1, 44, x2)

inst_35:
// rs1_val == 134217728, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x8000000;  immval:0x0
TEST_IMM_OP( slli, x11, x10, 0x8000000, 0x8000000, 0x0, x1, 48, x2)

inst_36:
// rs1_val == 268435456, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x10000000;  immval:0x3
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x10000000, 0x3, x1, 52, x2)

inst_37:
// rs1_val == 536870912, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:0xc
TEST_IMM_OP( slli, x11, x10, 0x0, 0x20000000, 0xc, x1, 56, x2)

inst_38:
// rs1_val == 1073741824, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x40000000;  immval:0xb
TEST_IMM_OP( slli, x11, x10, 0x0, 0x40000000, 0xb, x1, 60, x2)

inst_39:
// rs1_val == -2, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x2;  immval:0xe
TEST_IMM_OP( slli, x11, x10, 0xffff8000, -0x2, 0xe, x1, 64, x2)

inst_40:
// rs1_val == -3, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x3;  immval:0x1
TEST_IMM_OP( slli, x11, x10, 0xfffffffa, -0x3, 0x1, x1, 68, x2)

inst_41:
// rs1_val == -5, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x5;  immval:0x7
TEST_IMM_OP( slli, x11, x10, 0xfffffd80, -0x5, 0x7, x1, 72, x2)

inst_42:
// rs1_val == -9, imm_val == 10
// opcode: slli ; op1:x10; dest:x11; op1val:-0x9;  immval:0xa
TEST_IMM_OP( slli, x11, x10, 0xffffdc00, -0x9, 0xa, x1, 76, x2)

inst_43:
// rs1_val == -17, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x11;  immval:0x11
TEST_IMM_OP( slli, x11, x10, 0xffde0000, -0x11, 0x11, x1, 80, x2)

inst_44:
// rs1_val == -33, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x21;  immval:0xe
TEST_IMM_OP( slli, x11, x10, 0xfff7c000, -0x21, 0xe, x1, 84, x2)

inst_45:
// rs1_val == -65, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x41;  immval:0x13
TEST_IMM_OP( slli, x11, x10, 0xfdf80000, -0x41, 0x13, x1, 88, x2)

inst_46:
// rs1_val == -129, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x81;  immval:0x10
TEST_IMM_OP( slli, x11, x10, 0xff7f0000, -0x81, 0x10, x1, 92, x2)

inst_47:
// rs1_val == -257, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x101;  immval:0xb
TEST_IMM_OP( slli, x11, x10, 0xfff7f800, -0x101, 0xb, x1, 96, x2)

inst_48:
// rs1_val == -513, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x201;  immval:0x11
TEST_IMM_OP( slli, x11, x10, 0xfbfe0000, -0x201, 0x11, x1, 100, x2)

inst_49:
// rs1_val == -1025, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x401;  immval:0x7
TEST_IMM_OP( slli, x11, x10, 0xfffdff80, -0x401, 0x7, x1, 104, x2)

inst_50:
// rs1_val == -2049, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x801;  immval:0xf
TEST_IMM_OP( slli, x11, x10, 0xfbff8000, -0x801, 0xf, x1, 108, x2)

inst_51:
// rs1_val == -4097, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x1001;  immval:0xa
TEST_IMM_OP( slli, x11, x10, 0xffbffc00, -0x1001, 0xa, x1, 112, x2)

inst_52:
// rs1_val == -8193, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x2001;  immval:0x6
TEST_IMM_OP( slli, x11, x10, 0xfff7ffc0, -0x2001, 0x6, x1, 116, x2)

inst_53:
// rs1_val == -16385, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x4001;  immval:0x2
TEST_IMM_OP( slli, x11, x10, 0xfffefffc, -0x4001, 0x2, x1, 120, x2)

inst_54:
// rs1_val == -32769, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x8001;  immval:0x3
TEST_IMM_OP( slli, x11, x10, 0xfffbfff8, -0x8001, 0x3, x1, 124, x2)

inst_55:
// rs1_val == -131073, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x20001;  immval:0x1d
TEST_IMM_OP( slli, x11, x10, 0xe0000000, -0x20001, 0x1d, x1, 128, x2)

inst_56:
// rs1_val == -262145, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x40001;  immval:0x1d
TEST_IMM_OP( slli, x11, x10, 0xe0000000, -0x40001, 0x1d, x1, 132, x2)

inst_57:
// rs1_val == -524289, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x80001;  immval:0xc
TEST_IMM_OP( slli, x11, x10, 0x7ffff000, -0x80001, 0xc, x1, 136, x2)

inst_58:
// rs1_val == -2097153, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x200001;  immval:0x6
TEST_IMM_OP( slli, x11, x10, 0xf7ffffc0, -0x200001, 0x6, x1, 140, x2)

inst_59:
// rs1_val == -8388609, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x800001;  immval:0x13
TEST_IMM_OP( slli, x11, x10, 0xfff80000, -0x800001, 0x13, x1, 144, x2)

inst_60:
// rs1_val == -16777217, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x1000001;  immval:0x11
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, -0x1000001, 0x11, x1, 148, x2)

inst_61:
// rs1_val == -33554433, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x2000001;  immval:0xf
TEST_IMM_OP( slli, x11, x10, 0xffff8000, -0x2000001, 0xf, x1, 152, x2)

inst_62:
// rs1_val == -67108865, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x4000001;  immval:0xd
TEST_IMM_OP( slli, x11, x10, 0xffffe000, -0x4000001, 0xd, x1, 156, x2)

inst_63:
// rs1_val == -134217729, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x8000001;  immval:0xe
TEST_IMM_OP( slli, x11, x10, 0xffffc000, -0x8000001, 0xe, x1, 160, x2)

inst_64:
// rs1_val == -268435457, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x10000001;  immval:0x7
TEST_IMM_OP( slli, x11, x10, 0xffffff80, -0x10000001, 0x7, x1, 164, x2)

inst_65:
// rs1_val == -536870913, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x20000001;  immval:0xb
TEST_IMM_OP( slli, x11, x10, 0xfffff800, -0x20000001, 0xb, x1, 168, x2)

inst_66:
// rs1_val == 1431655765, rs1_val==1431655765
// opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:0x11
TEST_IMM_OP( slli, x11, x10, 0xaaaa0000, 0x55555555, 0x11, x1, 172, x2)

inst_67:
// rs1_val == -1431655766, rs1_val==-1431655766
// opcode: slli ; op1:x10; dest:x11; op1val:-0x55555556;  immval:0x17
TEST_IMM_OP( slli, x11, x10, 0x55000000, -0x55555556, 0x17, x1, 176, x2)

inst_68:
// rs1_val==3, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x3;  immval:0x13
TEST_IMM_OP( slli, x11, x10, 0x180000, 0x3, 0x13, x1, 180, x2)

inst_69:
// rs1_val==5, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x5;  immval:0x1
TEST_IMM_OP( slli, x11, x10, 0xa, 0x5, 0x1, x1, 184, x2)

inst_70:
// rs1_val==858993459, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x33333333;  immval:0x3
TEST_IMM_OP( slli, x11, x10, 0x99999998, 0x33333333, 0x3, x1, 188, x2)

inst_71:
// rs1_val==-46340, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0xb504;  immval:0x6
TEST_IMM_OP( slli, x11, x10, 0xffd2bf00, -0xb504, 0x6, x1, 192, x2)

inst_72:
// rs1_val==1717986919, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x66666667;  immval:0x17
TEST_IMM_OP( slli, x11, x10, 0x33800000, 0x66666667, 0x17, x1, 196, x2)

inst_73:
// rs1_val==-46339, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0xb503;  immval:0x6
TEST_IMM_OP( slli, x11, x10, 0xffd2bf40, -0xb503, 0x6, x1, 200, x2)

inst_74:
// rs1_val==46341, 
// opcode: slli ; op1:x10; dest:x11; op1val:0xb505;  immval:0x1f
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xb505, 0x1f, x1, 204, x2)

inst_75:
// imm_val == 4, rs1_val==858993458
// opcode: slli ; op1:x10; dest:x11; op1val:0x33333332;  immval:0x4
TEST_IMM_OP( slli, x11, x10, 0x33333320, 0x33333332, 0x4, x1, 208, x2)

inst_76:
// imm_val == 30, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x6;  immval:0x1e
TEST_IMM_OP( slli, x11, x10, 0x80000000, -0x6, 0x1e, x1, 212, x2)

inst_77:
// rs1_val==46340, 
// opcode: slli ; op1:x10; dest:x11; op1val:0xb504;  immval:0x7
TEST_IMM_OP( slli, x11, x10, 0x5a8200, 0xb504, 0x7, x1, 216, x2)

inst_78:
// rs1_val == -1048577, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x100001;  immval:0x8
TEST_IMM_OP( slli, x11, x10, 0xefffff00, -0x100001, 0x8, x1, 220, x2)

inst_79:
// rs1_val==1431655764, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x55555554;  immval:0x3
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaa0, 0x55555554, 0x3, x1, 224, x2)

inst_80:
// rs1_val==1717986917, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x66666665;  immval:0x10
TEST_IMM_OP( slli, x11, x10, 0x66650000, 0x66666665, 0x10, x1, 228, x2)

inst_81:
// rs1_val==46339, 
// opcode: slli ; op1:x10; dest:x11; op1val:0xb503;  immval:0x10
TEST_IMM_OP( slli, x11, x10, 0xb5030000, 0xb503, 0x10, x1, 232, x2)

inst_82:
// rs1_val==1431655766, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x55555556;  immval:0x17
TEST_IMM_OP( slli, x11, x10, 0xab000000, 0x55555556, 0x17, x1, 236, x2)

inst_83:
// rs1_val==-1431655765, 
// opcode: slli ; op1:x10; dest:x11; op1val:-0x55555555;  immval:0xe
TEST_IMM_OP( slli, x11, x10, 0xaaaac000, -0x55555555, 0xe, x1, 240, x2)

inst_84:
// rs1_val==6, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x6;  immval:0x1e
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x6, 0x1e, x1, 244, x2)

inst_85:
// rs1_val==858993460, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x33333334;  immval:0x1d
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x33333334, 0x1d, x1, 248, x2)

inst_86:
// rs1_val == 512, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x200;  immval:0x0
TEST_IMM_OP( slli, x11, x10, 0x200, 0x200, 0x0, x1, 252, x2)

inst_87:
// rs1_val == 65536, 
// opcode: slli ; op1:x10; dest:x11; op1val:0x10000;  immval:0x1
TEST_IMM_OP( slli, x11, x10, 0x20000, 0x10000, 0x1, x1, 256, x2)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 65*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
