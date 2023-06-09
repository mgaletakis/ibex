
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
// This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

RVTEST_SIGBASE( x20,signature_x20_1)

inst_0:
// rs2 == rd != rs1, rs1==x16, rs2==x27, rd==x27, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -2147483648, rs2_val == 8, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
// opcode: sra ; op1:x16; op2:x27; dest:x27; op1val:-0x80000000;  op2val:0x8
TEST_RR_OP(sra, x27, x16, x27, -0x800000, -0x80000000, 0x8, x20, 0, x9)

inst_1:
// rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x16, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 33554432
// opcode: sra ; op1:x12; op2:x12; dest:x16; op1val:0x2000000;  op2val:0x2000000
TEST_RR_OP(sra, x16, x12, x12, 0x2000000, 0x2000000, 0x2000000, x20, 4, x9)

inst_2:
// rs1 == rs2 == rd, rs1==x1, rs2==x1, rd==x1, rs1_val < 0 and rs2_val == 0, rs1_val == -2049
// opcode: sra ; op1:x1; op2:x1; dest:x1; op1val:-0x801;  op2val:-0x801
TEST_RR_OP(sra, x1, x1, x1, -0x1, -0x801, -0x801, x20, 8, x9)

inst_3:
// rs1 == rd != rs2, rs1==x13, rs2==x19, rd==x13, rs1_val > 0 and rs2_val == 0, rs1_val==858993459
// opcode: sra ; op1:x13; op2:x19; dest:x13; op1val:0x33333333;  op2val:0x0
TEST_RR_OP(sra, x13, x13, x19, 0x33333333, 0x33333333, 0x0, x20, 12, x9)

inst_4:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x28, rs2==x2, rd==x8, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val==6
// opcode: sra ; op1:x28; op2:x2; dest:x8; op1val:0x6;  op2val:0x6
TEST_RR_OP(sra, x8, x28, x2, 0x0, 0x6, 0x6, x20, 16, x9)

inst_5:
// rs1==x26, rs2==x31, rd==x19, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, rs1_val==0
// opcode: sra ; op1:x26; op2:x31; dest:x19; op1val:0x0;  op2val:0x3
TEST_RR_OP(sra, x19, x26, x31, 0x0, 0x0, 0x3, x20, 20, x9)

inst_6:
// rs1==x14, rs2==x28, rd==x29, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
// opcode: sra ; op1:x14; op2:x28; dest:x29; op1val:0x7fffffff;  op2val:0x12
TEST_RR_OP(sra, x29, x14, x28, 0x1fff, 0x7fffffff, 0x12, x20, 24, x9)

inst_7:
// rs1==x10, rs2==x26, rd==x12, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1, rs2_val == 2
// opcode: sra ; op1:x10; op2:x26; dest:x12; op1val:0x1;  op2val:0x2
TEST_RR_OP(sra, x12, x10, x26, 0x0, 0x1, 0x2, x20, 28, x9)

inst_8:
// rs1==x30, rs2==x16, rd==x15, rs1_val == 2, rs2_val == 4, rs1_val==2
// opcode: sra ; op1:x30; op2:x16; dest:x15; op1val:0x2;  op2val:0x4
TEST_RR_OP(sra, x15, x30, x16, 0x0, 0x2, 0x4, x20, 32, x9)

inst_9:
// rs1==x24, rs2==x0, rd==x6, rs1_val == 4, rs1_val==4
// opcode: sra ; op1:x24; op2:x0; dest:x6; op1val:0x4;  op2val:0x0
TEST_RR_OP(sra, x6, x24, x0, 0x4, 0x4, 0x0, x20, 36, x9)

inst_10:
// rs1==x21, rs2==x15, rd==x3, rs1_val == 8, rs2_val == 10
// opcode: sra ; op1:x21; op2:x15; dest:x3; op1val:0x8;  op2val:0xa
TEST_RR_OP(sra, x3, x21, x15, 0x0, 0x8, 0xa, x20, 40, x9)

inst_11:
// rs1==x15, rs2==x30, rd==x10, rs1_val == 16, 
// opcode: sra ; op1:x15; op2:x30; dest:x10; op1val:0x10;  op2val:0x0
TEST_RR_OP(sra, x10, x15, x30, 0x10, 0x10, 0x0, x20, 44, x9)

inst_12:
// rs1==x18, rs2==x4, rd==x22, rs1_val == 32, 
// opcode: sra ; op1:x18; op2:x4; dest:x22; op1val:0x20;  op2val:0x3
TEST_RR_OP(sra, x22, x18, x4, 0x4, 0x20, 0x3, x20, 48, x9)

inst_13:
// rs1==x19, rs2==x17, rd==x11, rs1_val == 64, rs2_val == 23
// opcode: sra ; op1:x19; op2:x17; dest:x11; op1val:0x40;  op2val:0x17
TEST_RR_OP(sra, x11, x19, x17, 0x0, 0x40, 0x17, x20, 52, x9)

inst_14:
// rs1==x5, rs2==x14, rd==x0, rs1_val == 128, 
// opcode: sra ; op1:x5; op2:x14; dest:x0; op1val:0x80;  op2val:0x8
TEST_RR_OP(sra, x0, x5, x14, 0, 0x80, 0x8, x20, 56, x9)

inst_15:
// rs1==x6, rs2==x24, rd==x5, rs1_val == 256, 
// opcode: sra ; op1:x6; op2:x24; dest:x5; op1val:0x100;  op2val:0x4
TEST_RR_OP(sra, x5, x6, x24, 0x10, 0x100, 0x4, x20, 60, x9)

inst_16:
// rs1==x7, rs2==x18, rd==x31, rs1_val == 512, 
// opcode: sra ; op1:x7; op2:x18; dest:x31; op1val:0x200;  op2val:0x1f
TEST_RR_OP(sra, x31, x7, x18, 0x0, 0x200, 0x1f, x20, 64, x9)

inst_17:
// rs1==x31, rs2==x21, rd==x30, rs1_val == 1024, rs2_val == 16
// opcode: sra ; op1:x31; op2:x21; dest:x30; op1val:0x400;  op2val:0x10
TEST_RR_OP(sra, x30, x31, x21, 0x0, 0x400, 0x10, x20, 68, x15)

inst_18:
// rs1==x4, rs2==x11, rd==x2, rs1_val == 2048, 
// opcode: sra ; op1:x4; op2:x11; dest:x2; op1val:0x800;  op2val:0x13
TEST_RR_OP(sra, x2, x4, x11, 0x0, 0x800, 0x13, x20, 72, x15)

inst_19:
// rs1==x22, rs2==x25, rd==x9, rs1_val == 4096, 
// opcode: sra ; op1:x22; op2:x25; dest:x9; op1val:0x1000;  op2val:0x2
TEST_RR_OP(sra, x9, x22, x25, 0x400, 0x1000, 0x2, x20, 76, x15)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_20:
// rs1==x23, rs2==x13, rd==x14, rs1_val == 8192, 
// opcode: sra ; op1:x23; op2:x13; dest:x14; op1val:0x2000;  op2val:0x1f
TEST_RR_OP(sra, x14, x23, x13, 0x0, 0x2000, 0x1f, x1, 0, x15)

inst_21:
// rs1==x8, rs2==x29, rd==x28, rs1_val == 16384, 
// opcode: sra ; op1:x8; op2:x29; dest:x28; op1val:0x4000;  op2val:0xa
TEST_RR_OP(sra, x28, x8, x29, 0x10, 0x4000, 0xa, x1, 4, x15)

inst_22:
// rs1==x17, rs2==x8, rd==x26, rs1_val == 32768, 
// opcode: sra ; op1:x17; op2:x8; dest:x26; op1val:0x8000;  op2val:0x13
TEST_RR_OP(sra, x26, x17, x8, 0x0, 0x8000, 0x13, x1, 8, x15)

inst_23:
// rs1==x29, rs2==x3, rd==x23, rs1_val == 65536, 
// opcode: sra ; op1:x29; op2:x3; dest:x23; op1val:0x10000;  op2val:0x10
TEST_RR_OP(sra, x23, x29, x3, 0x1, 0x10000, 0x10, x1, 12, x15)

inst_24:
// rs1==x9, rs2==x5, rd==x7, rs1_val == 131072, 
// opcode: sra ; op1:x9; op2:x5; dest:x7; op1val:0x20000;  op2val:0x0
TEST_RR_OP(sra, x7, x9, x5, 0x20000, 0x20000, 0x0, x1, 16, x15)

inst_25:
// rs1==x20, rs2==x7, rd==x24, rs1_val == 262144, 
// opcode: sra ; op1:x20; op2:x7; dest:x24; op1val:0x40000;  op2val:0x8
TEST_RR_OP(sra, x24, x20, x7, 0x400, 0x40000, 0x8, x1, 20, x15)

inst_26:
// rs1==x25, rs2==x10, rd==x17, rs1_val == 524288, 
// opcode: sra ; op1:x25; op2:x10; dest:x17; op1val:0x80000;  op2val:0x8
TEST_RR_OP(sra, x17, x25, x10, 0x800, 0x80000, 0x8, x1, 24, x15)

inst_27:
// rs1==x27, rs2==x22, rd==x20, rs1_val == 1048576, rs2_val == 27
// opcode: sra ; op1:x27; op2:x22; dest:x20; op1val:0x100000;  op2val:0x1b
TEST_RR_OP(sra, x20, x27, x22, 0x0, 0x100000, 0x1b, x1, 28, x15)

inst_28:
// rs1==x3, rs2==x6, rd==x25, rs1_val == 2097152, 
// opcode: sra ; op1:x3; op2:x6; dest:x25; op1val:0x200000;  op2val:0xb
TEST_RR_OP(sra, x25, x3, x6, 0x400, 0x200000, 0xb, x1, 32, x15)

inst_29:
// rs1==x0, rs2==x23, rd==x4, rs1_val == 4194304, 
// opcode: sra ; op1:x0; op2:x23; dest:x4; op1val:0x0;  op2val:0x8
TEST_RR_OP(sra, x4, x0, x23, 0x0, 0x0, 0x8, x1, 36, x15)

inst_30:
// rs1==x2, rs2==x20, rd==x18, rs1_val == 8388608, 
// opcode: sra ; op1:x2; op2:x20; dest:x18; op1val:0x800000;  op2val:0x1b
TEST_RR_OP(sra, x18, x2, x20, 0x0, 0x800000, 0x1b, x1, 40, x15)

inst_31:
// rs1==x11, rs2==x9, rd==x21, rs1_val == 16777216, 
// opcode: sra ; op1:x11; op2:x9; dest:x21; op1val:0x1000000;  op2val:0xb
TEST_RR_OP(sra, x21, x11, x9, 0x2000, 0x1000000, 0xb, x1, 44, x15)

inst_32:
// rs1_val == 67108864, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x4000000;  op2val:0xc
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x4000000, 0xc, x1, 48, x15)

inst_33:
// rs1_val == 134217728, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x8000000;  op2val:0x4
TEST_RR_OP(sra, x12, x10, x11, 0x800000, 0x8000000, 0x4, x1, 52, x2)

inst_34:
// rs1_val == 268435456, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xb
TEST_RR_OP(sra, x12, x10, x11, 0x20000, 0x10000000, 0xb, x1, 56, x2)

inst_35:
// rs1_val == 536870912, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xa
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x20000000, 0xa, x1, 60, x2)

inst_36:
// rs1_val == 1073741824, rs2_val == 15
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xf
TEST_RR_OP(sra, x12, x10, x11, 0x8000, 0x40000000, 0xf, x1, 64, x2)

inst_37:
// rs1_val == -2, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x2;  op2val:0x7
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x2, 0x7, x1, 68, x2)

inst_38:
// rs1_val == -3, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x3;  op2val:0x12
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x3, 0x12, x1, 72, x2)

inst_39:
// rs1_val == -5, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x5;  op2val:0x4
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x5, 0x4, x1, 76, x2)

inst_40:
// rs1_val == -9, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x9;  op2val:0x5
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x9, 0x5, x1, 80, x2)

inst_41:
// rs1_val == -17, rs2_val == 29
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x11;  op2val:0x1d
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x11, 0x1d, x1, 84, x2)

inst_42:
// rs1_val == -33, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:0xd
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x21, 0xd, x1, 88, x2)

inst_43:
// rs1_val == -65, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x41;  op2val:0x17
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x41, 0x17, x1, 92, x2)

inst_44:
// rs1_val == -129, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x81;  op2val:0xd
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x81, 0xd, x1, 96, x2)

inst_45:
// rs1_val == -257, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x101;  op2val:0x13
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x101, 0x13, x1, 100, x2)

inst_46:
// rs1_val == -513, rs2_val == 1
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x201;  op2val:0x1
TEST_RR_OP(sra, x12, x10, x11, -0x101, -0x201, 0x1, x1, 104, x2)

inst_47:
// rs1_val == -1025, rs2_val == 21
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x401;  op2val:0x15
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x401, 0x15, x1, 108, x2)

inst_48:
// rs1_val == -4097, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x1001;  op2val:0xe
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x1001, 0xe, x1, 112, x2)

inst_49:
// rs1_val == -8193, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x2001;  op2val:0x8
TEST_RR_OP(sra, x12, x10, x11, -0x21, -0x2001, 0x8, x1, 116, x2)

inst_50:
// rs1_val == -16385, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x4001;  op2val:0xe
TEST_RR_OP(sra, x12, x10, x11, -0x2, -0x4001, 0xe, x1, 120, x2)

inst_51:
// rs1_val == -32769, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x8001;  op2val:0xc
TEST_RR_OP(sra, x12, x10, x11, -0x9, -0x8001, 0xc, x1, 124, x2)

inst_52:
// rs1_val == -65537, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x10001;  op2val:0x17
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x10001, 0x17, x1, 128, x2)

inst_53:
// rs1_val == -131073, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x20001;  op2val:0xa
TEST_RR_OP(sra, x12, x10, x11, -0x81, -0x20001, 0xa, x1, 132, x2)

inst_54:
// rs1_val == -262145, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x40001;  op2val:0xb
TEST_RR_OP(sra, x12, x10, x11, -0x81, -0x40001, 0xb, x1, 136, x2)

inst_55:
// rs1_val == -524289, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:0x0
TEST_RR_OP(sra, x12, x10, x11, -0x80001, -0x80001, 0x0, x1, 140, x2)

inst_56:
// rs1_val == -8388609, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x800001;  op2val:0x13
TEST_RR_OP(sra, x12, x10, x11, -0x11, -0x800001, 0x13, x1, 144, x2)

inst_57:
// rs1_val == -16777217, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x1000001;  op2val:0xc
TEST_RR_OP(sra, x12, x10, x11, -0x1001, -0x1000001, 0xc, x1, 148, x2)

inst_58:
// rs1_val == -33554433, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x2000001;  op2val:0x1f
TEST_RR_OP(sra, x12, x10, x11, -0x1, -0x2000001, 0x1f, x1, 152, x2)

inst_59:
// rs1_val == -67108865, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x4000001;  op2val:0xb
TEST_RR_OP(sra, x12, x10, x11, -0x8001, -0x4000001, 0xb, x1, 156, x2)

inst_60:
// rs1_val == -134217729, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x8000001;  op2val:0xa
TEST_RR_OP(sra, x12, x10, x11, -0x20001, -0x8000001, 0xa, x1, 160, x2)

inst_61:
// rs1_val == -268435457, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x10000001;  op2val:0x4
TEST_RR_OP(sra, x12, x10, x11, -0x1000001, -0x10000001, 0x4, x1, 164, x2)

inst_62:
// rs1_val == -536870913, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x20000001;  op2val:0x7
TEST_RR_OP(sra, x12, x10, x11, -0x400001, -0x20000001, 0x7, x1, 168, x2)

inst_63:
// rs1_val == -1073741825, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x40000001;  op2val:0x5
TEST_RR_OP(sra, x12, x10, x11, -0x2000001, -0x40000001, 0x5, x1, 172, x2)

inst_64:
// rs1_val == 1431655765, rs1_val==1431655765
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xb
TEST_RR_OP(sra, x12, x10, x11, 0xaaaaa, 0x55555555, 0xb, x1, 176, x2)

inst_65:
// rs1_val == -1431655766, rs1_val==-1431655766
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x13
TEST_RR_OP(sra, x12, x10, x11, -0xaab, -0x55555556, 0x13, x1, 180, x2)

inst_66:
// rs1_val==3, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x17
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x3, 0x17, x1, 184, x2)

inst_67:
// rs1_val==5, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xe
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x5, 0xe, x1, 188, x2)

inst_68:
// rs1_val==1717986918, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x13
TEST_RR_OP(sra, x12, x10, x11, 0xccc, 0x66666666, 0x13, x1, 192, x2)

inst_69:
// rs1_val==-46340, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x1
TEST_RR_OP(sra, x12, x10, x11, -0x5a82, -0xb504, 0x1, x1, 196, x2)

inst_70:
// rs1_val==46341, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x8
TEST_RR_OP(sra, x12, x10, x11, 0xb5, 0xb505, 0x8, x1, 200, x2)

inst_71:
// rs2_val == 30, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x1e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0, 0x1e, x1, 204, x2)

inst_72:
// rs1_val==46340, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0xe
TEST_RR_OP(sra, x12, x10, x11, 0x2, 0xb504, 0xe, x1, 208, x2)

inst_73:
// rs1_val==1431655764, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0xc
TEST_RR_OP(sra, x12, x10, x11, 0x55555, 0x55555554, 0xc, x1, 212, x2)

inst_74:
// rs1_val == -4194305, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x400001;  op2val:0x13
TEST_RR_OP(sra, x12, x10, x11, -0x9, -0x400001, 0x13, x1, 216, x2)

inst_75:
// rs1_val==858993460, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x7
TEST_RR_OP(sra, x12, x10, x11, 0x666666, 0x33333334, 0x7, x1, 220, x2)

inst_76:
// rs1_val == -2097153, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x200001;  op2val:0x2
TEST_RR_OP(sra, x12, x10, x11, -0x80001, -0x200001, 0x2, x1, 224, x2)

inst_77:
// rs1_val==858993458, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x0
TEST_RR_OP(sra, x12, x10, x11, 0x33333332, 0x33333332, 0x0, x1, 228, x2)

inst_78:
// rs1_val==1717986917, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x17
TEST_RR_OP(sra, x12, x10, x11, 0xcc, 0x66666665, 0x17, x1, 232, x2)

inst_79:
// rs1_val==46339, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x1f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0xb503, 0x1f, x1, 236, x2)

inst_80:
// rs1_val==1431655766, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x5
TEST_RR_OP(sra, x12, x10, x11, 0x2aaaaaa, 0x55555556, 0x5, x1, 240, x2)

inst_81:
// rs1_val==-1431655765, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x1
TEST_RR_OP(sra, x12, x10, x11, -0x2aaaaaab, -0x55555555, 0x1, x1, 244, x2)

inst_82:
// rs1_val == -1048577, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x100001;  op2val:0x10
TEST_RR_OP(sra, x12, x10, x11, -0x11, -0x100001, 0x10, x1, 248, x2)

inst_83:
// rs1_val==1717986919, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x0
TEST_RR_OP(sra, x12, x10, x11, 0x66666667, 0x66666667, 0x0, x1, 252, x2)

inst_84:
// rs1_val==-46339, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0xd
TEST_RR_OP(sra, x12, x10, x11, -0x6, -0xb503, 0xd, x1, 256, x2)

inst_85:
// rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 33554432
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x2000000;  op2val:0x12
TEST_RR_OP(sra, x12, x10, x11, 0x80, 0x2000000, 0x12, x1, 260, x2)

inst_86:
// rs1_val < 0 and rs2_val == 0, rs1_val == -2049
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:-0x801;  op2val:0x0
TEST_RR_OP(sra, x12, x10, x11, -0x801, -0x801, 0x0, x1, 264, x2)

inst_87:
// rs1_val == 4, rs1_val==4
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x4, 0x3, x1, 268, x2)

inst_88:
// rs1_val == 128, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x80;  op2val:0x8
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x80, 0x8, x1, 272, x2)

inst_89:
// rs1_val == 4194304, 
// opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x400000;  op2val:0x8
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x400000, 0x8, x1, 276, x2)
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


signature_x20_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x20_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 70*(XLEN/32),4,0xdeadbeef

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
