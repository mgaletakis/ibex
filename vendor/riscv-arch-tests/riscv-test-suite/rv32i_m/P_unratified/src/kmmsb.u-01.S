
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
// This assembly file tests the kmmsb.u instruction of the RISC-V RV32PZicsr extension for the kmmsb.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kmmsb.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x13,signature_x13_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x10, rs2==x27, rd==x11, rs1_w0_val == -2147483648, 
// opcode: kmmsb.u ; op1:x10; dest:x11; op1val:0x80000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x11, x10, x27, 0x00000000, 0x80000000, 0x55555556, x10, x13, 0, x14)

inst_1:
// rs1 == rs2 != rd, rs1==x8, rs2==x8, rd==x4, rs2_w0_val == -1431655766, rs1_w0_val == -5
// opcode: kmmsb.u ; op1:x8; dest:x4; op1val:0xfffffffb;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x4, x8, x8, 0x00000000, 0xfffffffb, 0xaaaaaaaa, x8, x13, 8, x14)

inst_2:
// rs1 == rd != rs2, rs1==x1, rs2==x20, rd==x1, rs2_w0_val == 1431655765, 
// opcode: kmmsb.u ; op1:x1; dest:x1; op1val:0x33333334;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x1, x1, x20, 0x00000000, 0x33333334, 0x55555555, x1, x13, 16, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x0, rs2==x0, rd==x0, rs2_w0_val == 2147483647, 
// opcode: kmmsb.u ; op1:x0; dest:x0; op1val:0xfffffff9;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x0, x0, x0, 0x00000000, 0xfffffff9, 0x7fffffff, x0, x13, 24, x14)

inst_4:
// rs2 == rd != rs1, rs1==x4, rs2==x2, rd==x2, rs2_w0_val == -1073741825, rs1_w0_val == 1431655765
// opcode: kmmsb.u ; op1:x4; dest:x2; op1val:0x55555555;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x2, x4, x2, 0x00000000, 0x55555555, 0xbfffffff, x4, x13, 32, x14)

inst_5:
// rs1==x31, rs2==x1, rd==x6, rs2_w0_val == -536870913, rs1_w0_val == -1048577
// opcode: kmmsb.u ; op1:x31; dest:x6; op1val:0xffefffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x6, x31, x1, 0x00000000, 0xffefffff, 0xdfffffff, x31, x13, 40, x14)

inst_6:
// rs1==x21, rs2==x10, rd==x29, rs2_w0_val == -268435457, rs1_w0_val == 268435456
// opcode: kmmsb.u ; op1:x21; dest:x29; op1val:0x10000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x29, x21, x10, 0x00000000, 0x10000000, 0xefffffff, x21, x13, 48, x14)

inst_7:
// rs1==x2, rs2==x3, rd==x30, rs2_w0_val == -134217729, rs1_w0_val == -1
// opcode: kmmsb.u ; op1:x2; dest:x30; op1val:0xffffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x30, x2, x3, 0x00000000, 0xffffffff, 0xf7ffffff, x2, x13, 56, x14)

inst_8:
// rs1==x22, rs2==x23, rd==x26, rs2_w0_val == -67108865, 
// opcode: kmmsb.u ; op1:x22; dest:x26; op1val:0x000007;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x26, x22, x23, 0x00000000, 0x000007, 0xfbffffff, x22, x13, 64, x14)

inst_9:
// rs1==x9, rs2==x17, rd==x20, rs2_w0_val == -33554433, rs1_w0_val == -2
// opcode: kmmsb.u ; op1:x9; dest:x20; op1val:0xfffffffe;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x20, x9, x17, 0x00000000, 0xfffffffe, 0xfdffffff, x9, x13, 72, x14)

inst_10:
// rs1==x29, rs2==x30, rd==x17, rs2_w0_val == -16777217, 
// opcode: kmmsb.u ; op1:x29; dest:x17; op1val:0x00b503;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x17, x29, x30, 0x00000000, 0x00b503, 0xfeffffff, x29, x13, 80, x14)

inst_11:
// rs1==x7, rs2==x11, rd==x21, rs2_w0_val == -8388609, rs1_w0_val == 2048
// opcode: kmmsb.u ; op1:x7; dest:x21; op1val:0x000800;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x21, x7, x11, 0x00000000, 0x000800, 0xff7fffff, x7, x13, 88, x14)

inst_12:
// rs1==x19, rs2==x24, rd==x22, rs2_w0_val == -4194305, rs1_w0_val == -16385
// opcode: kmmsb.u ; op1:x19; dest:x22; op1val:0xffffbfff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x22, x19, x24, 0x00000000, 0xffffbfff, 0xffbfffff, x19, x13, 96, x14)

inst_13:
// rs1==x3, rs2==x19, rd==x25, rs2_w0_val == -2097153, rs1_w0_val == 2
// opcode: kmmsb.u ; op1:x3; dest:x25; op1val:0x000002;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x25, x3, x19, 0x00000000, 0x000002, 0xffdfffff, x3, x13, 104, x14)

inst_14:
// rs1==x24, rs2==x9, rd==x16, rs2_w0_val == -1048577, rs1_w0_val == 1024
// opcode: kmmsb.u ; op1:x24; dest:x16; op1val:0x000400;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x16, x24, x9, 0x00000000, 0x000400, 0xffefffff, x24, x13, 112, x14)

inst_15:
// rs1==x6, rs2==x12, rd==x27, rs2_w0_val == -524289, 
// opcode: kmmsb.u ; op1:x6; dest:x27; op1val:0x000002;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x27, x6, x12, 0x00000000, 0x000002, 0xfff7ffff, x6, x13, 120, x14)

inst_16:
// rs1==x5, rs2==x4, rd==x8, rs2_w0_val == -262145, rs1_w0_val == 1048576
// opcode: kmmsb.u ; op1:x5; dest:x8; op1val:0x100000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x8, x5, x4, 0x00000000, 0x100000, 0xfffbffff, x5, x13, 128, x14)

inst_17:
// rs1==x11, rs2==x28, rd==x5, rs2_w0_val == -131073, rs1_w0_val == -17
// opcode: kmmsb.u ; op1:x11; dest:x5; op1val:0xffffffef;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x5, x11, x28, 0x00000000, 0xffffffef, 0xfffdffff, x11, x13, 136, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_18:
// rs1==x30, rs2==x29, rd==x12, rs2_w0_val == -65537, rs1_w0_val == 131072
// opcode: kmmsb.u ; op1:x30; dest:x12; op1val:0x020000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x12, x30, x29, 0x00000000, 0x020000, 0xfffeffff, x30, x1, 0, x2)

inst_19:
// rs1==x18, rs2==x5, rd==x3, rs2_w0_val == -32769, rs1_w0_val == -32769
// opcode: kmmsb.u ; op1:x18; dest:x3; op1val:0xffff7fff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x3, x18, x5, 0x00000000, 0xffff7fff, 0xffff7fff, x18, x1, 8, x2)

inst_20:
// rs1==x20, rs2==x18, rd==x14, rs2_w0_val == -16385, rs1_w0_val == -1025
// opcode: kmmsb.u ; op1:x20; dest:x14; op1val:0xfffffbff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x14, x20, x18, 0x00000000, 0xfffffbff, 0xffffbfff, x20, x1, 16, x2)

inst_21:
// rs1==x23, rs2==x26, rd==x13, rs2_w0_val == -8193, 
// opcode: kmmsb.u ; op1:x23; dest:x13; op1val:0x000400;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x13, x23, x26, 0x00000000, 0x000400, 0xffffdfff, x23, x1, 24, x2)

inst_22:
// rs1==x17, rs2==x31, rd==x15, rs2_w0_val == -4097, rs1_w0_val == 16384
// opcode: kmmsb.u ; op1:x17; dest:x15; op1val:0x004000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x15, x17, x31, 0x00000000, 0x004000, 0xffffefff, x17, x1, 32, x2)

inst_23:
// rs1==x15, rs2==x6, rd==x23, rs2_w0_val == -2049, 
// opcode: kmmsb.u ; op1:x15; dest:x23; op1val:0xfffffffa;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x23, x15, x6, 0x00000000, 0xfffffffa, 0xfffff7ff, x15, x1, 40, x2)

inst_24:
// rs1==x14, rs2==x25, rd==x28, rs2_w0_val == -1025, rs1_w0_val == 67108864
// opcode: kmmsb.u ; op1:x14; dest:x28; op1val:0x4000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x28, x14, x25, 0x00000000, 0x4000000, 0xfffffbff, x14, x1, 48, x2)

inst_25:
// rs1==x16, rs2==x22, rd==x7, rs2_w0_val == -513, rs1_w0_val == 0
// opcode: kmmsb.u ; op1:x16; dest:x7; op1val:0x000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x7, x16, x22, 0x00000000, 0x000000, 0xfffffdff, x16, x1, 56, x2)

inst_26:
// rs1==x26, rs2==x13, rd==x10, rs2_w0_val == -257, 
// opcode: kmmsb.u ; op1:x26; dest:x10; op1val:0x000005;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x10, x26, x13, 0x00000000, 0x000005, 0xfffffeff, x26, x1, 64, x2)

inst_27:
// rs1==x12, rs2==x21, rd==x9, rs2_w0_val == -129, rs1_w0_val == 536870912
// opcode: kmmsb.u ; op1:x12; dest:x9; op1val:0x20000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x9, x12, x21, 0x00000000, 0x20000000, 0xffffff7f, x12, x1, 72, x2)

inst_28:
// rs1==x28, rs2==x14, rd==x24, rs2_w0_val == -65, 
// opcode: kmmsb.u ; op1:x28; dest:x24; op1val:0x000002;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x24, x28, x14, 0x00000000, 0x000002, 0xffffffbf, x28, x1, 80, x2)

inst_29:
// rs1==x25, rs2==x15, rd==x18, rs2_w0_val == -33, rs1_w0_val == 16777216
// opcode: kmmsb.u ; op1:x25; dest:x18; op1val:0x1000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x18, x25, x15, 0x00000000, 0x1000000, 0xffffffdf, x25, x1, 88, x2)

inst_30:
// rs1==x27, rs2==x7, rd==x19, rs2_w0_val == -17, rs1_w0_val == -1431655766
// opcode: kmmsb.u ; op1:x27; dest:x19; op1val:0xaaaaaaaa;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x19, x27, x7, 0x00000000, 0xaaaaaaaa, 0xffffffef, x27, x1, 96, x2)

inst_31:
// rs1==x13, rs2==x16, rd==x31, rs2_w0_val == -9, rs1_w0_val == 4
// opcode: kmmsb.u ; op1:x13; dest:x31; op1val:0x000004;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x13, x16, 0x00000000, 0x000004, 0xfffffff7, x13, x1, 104, x2)

inst_32:
// rs2_w0_val == -5, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x66666666;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x66666666, 0xfffffffb, x30, x1, 112, x2)

inst_33:
// rs2_w0_val == -3, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x00b504;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x00b504, 0xfffffffd, x30, x1, 120, x2)

inst_34:
// rs2_w0_val == -2, rs1_w0_val == -131073
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffdffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffdffff, 0xfffffffe, x30, x1, 128, x2)

inst_35:
// rs2_w0_val == -2147483648, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffff4afc;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffff4afc, 0x80000000, x30, x1, 136, x2)

inst_36:
// rs2_w0_val == 1073741824, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffff9;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffff9, 0x40000000, x30, x1, 144, x2)

inst_37:
// rs2_w0_val == 536870912, rs1_w0_val == -16777217
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfeffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfeffffff, 0x20000000, x30, x1, 152, x2)

inst_38:
// rs2_w0_val == 268435456, rs1_w0_val == 16
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000010;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000010, 0x10000000, x30, x1, 160, x2)

inst_39:
// rs2_w0_val == 134217728, rs1_w0_val == -65537
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffeffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffeffff, 0x8000000, x30, x1, 168, x2)

inst_40:
// rs2_w0_val == 67108864, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x33333332;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x33333332, 0x4000000, x30, x1, 176, x2)

inst_41:
// rs2_w0_val == 33554432, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x20000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x20000000, 0x2000000, x30, x1, 184, x2)

inst_42:
// rs2_w0_val == 16777216, rs1_w0_val == 8388608
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x800000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x800000, 0x1000000, x30, x1, 192, x2)

inst_43:
// rs2_w0_val == 8388608, rs1_w0_val == 4096
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x001000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x001000, 0x800000, x30, x1, 200, x2)

inst_44:
// rs2_w0_val == 4194304, rs1_w0_val == -4194305
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffbfffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffbfffff, 0x400000, x30, x1, 208, x2)

inst_45:
// rs1_w0_val == 32, rs2_w0_val == 2
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000020;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000020, 0x000002, x30, x1, 216, x2)

inst_46:
// rs1_w0_val == 8, rs2_w0_val == 65536
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000008;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000008, 0x010000, x30, x1, 224, x2)

inst_47:
// rs1_w0_val == 1, rs2_w0_val == -1
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000001;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000001, 0xffffffff, x30, x1, 232, x2)

inst_48:
// rs2_w0_val == 2097152, rs1_w0_val == -536870913
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xdfffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xdfffffff, 0x200000, x30, x1, 240, x2)

inst_49:
// rs2_w0_val == 1048576, rs1_w0_val == -1073741825
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xbfffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xbfffffff, 0x100000, x30, x1, 248, x2)

inst_50:
// rs2_w0_val == 524288, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffff6;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffff6, 0x080000, x30, x1, 256, x2)

inst_51:
// rs2_w0_val == 262144, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000009;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000009, 0x040000, x30, x1, 264, x2)

inst_52:
// rs2_w0_val == 131072, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xbfffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xbfffffff, 0x020000, x30, x1, 272, x2)

inst_53:
// rs2_w0_val == 32768, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x80000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x80000000, 0x008000, x30, x1, 280, x2)

inst_54:
// rs2_w0_val == 16384, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffff6;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffff6, 0x004000, x30, x1, 288, x2)

inst_55:
// rs2_w0_val == 8192, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x33333332;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x33333332, 0x002000, x30, x1, 296, x2)

inst_56:
// rs2_w0_val == 4096, rs1_w0_val == 256
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000100;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000100, 0x001000, x30, x1, 304, x2)

inst_57:
// rs2_w0_val == 2048, rs1_w0_val == -8388609
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xff7fffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xff7fffff, 0x000800, x30, x1, 312, x2)

inst_58:
// rs2_w0_val == 1024, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffff4afd;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffff4afd, 0x000400, x30, x1, 320, x2)

inst_59:
// rs2_w0_val == 512, rs1_w0_val == 262144
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x040000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x040000, 0x000200, x30, x1, 328, x2)

inst_60:
// rs2_w0_val == 256, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xaaaaaaab;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xaaaaaaab, 0x000100, x30, x1, 336, x2)

inst_61:
// rs2_w0_val == 128, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffff6;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffff6, 0x000080, x30, x1, 344, x2)

inst_62:
// rs2_w0_val == 64, rs1_w0_val == 128
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000080;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000080, 0x000040, x30, x1, 352, x2)

inst_63:
// rs2_w0_val == 32, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000010;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000010, 0x000020, x30, x1, 360, x2)

inst_64:
// rs2_w0_val == 16, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000400;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000400, 0x000010, x30, x1, 368, x2)

inst_65:
// rs2_w0_val == 8, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x66666667;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x66666667, 0x000008, x30, x1, 376, x2)

inst_66:
// rs2_w0_val == 4, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x66666666;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x66666666, 0x000004, x30, x1, 384, x2)

inst_67:
// rs2_w0_val == 1, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x80000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x80000000, 0x000001, x30, x1, 392, x2)

inst_68:
// rs2_w0_val == 0, rs1_w0_val == 32768
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x008000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x008000, 0x000000, x30, x1, 400, x2)

inst_69:
// rs1_w0_val == 2147483647, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x7fffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x7fffffff, 0xdfffffff, x30, x1, 408, x2)

inst_70:
// rs1_w0_val == -268435457, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xefffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xefffffff, 0xfffffffc, x30, x1, 416, x2)

inst_71:
// rs1_w0_val == -134217729, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xf7ffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xf7ffffff, 0xfffffffe, x30, x1, 424, x2)

inst_72:
// rs1_w0_val == -67108865, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfbffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfbffffff, 0x000005, x30, x1, 432, x2)

inst_73:
// rs1_w0_val == -33554433, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfdffffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfdffffff, 0x100000, x30, x1, 440, x2)

inst_74:
// rs1_w0_val == -2097153, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffdfffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffdfffff, 0x00b504, x30, x1, 448, x2)

inst_75:
// rs1_w0_val == -524289, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfff7ffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfff7ffff, 0x040000, x30, x1, 456, x2)

inst_76:
// rs1_w0_val == -262145, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffbffff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffbffff, 0x00b504, x30, x1, 464, x2)

inst_77:
// rs1_w0_val == -8193, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffffdfff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffffdfff, 0x000020, x30, x1, 472, x2)

inst_78:
// rs1_w0_val == -4097, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffffefff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffffefff, 0xffffefff, x30, x1, 480, x2)

inst_79:
// rs1_w0_val == -2049, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffff7ff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffff7ff, 0x000000, x30, x1, 488, x2)

inst_80:
// rs1_w0_val == -513, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffdff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffdff, 0xaaaaaaab, x30, x1, 496, x2)

inst_81:
// rs1_w0_val == -257, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffeff;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffeff, 0xbfffffff, x30, x1, 504, x2)

inst_82:
// rs1_w0_val == -65, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffffffbf;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffffffbf, 0x2000000, x30, x1, 512, x2)

inst_83:
// rs1_w0_val == -33, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffffffdf;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffffffdf, 0xfffffffc, x30, x1, 520, x2)

inst_84:
// rs1_w0_val == -9, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffff7;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffff7, 0x55555556, x30, x1, 528, x2)

inst_85:
// rs1_w0_val == -3, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffffd;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffffd, 0x66666665, x30, x1, 536, x2)

inst_86:
// rs1_w0_val == 1073741824, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x40000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x40000000, 0xffffefff, x30, x1, 544, x2)

inst_87:
// rs1_w0_val == 134217728, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x8000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x8000000, 0xfff7ffff, x30, x1, 552, x2)

inst_88:
// rs1_w0_val == 33554432, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x2000000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x2000000, 0x000003, x30, x1, 560, x2)

inst_89:
// rs1_w0_val == 4194304, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x400000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x400000, 0x000002, x30, x1, 568, x2)

inst_90:
// rs1_w0_val == 2097152, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x200000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x200000, 0x000006, x30, x1, 576, x2)

inst_91:
// rs1_w0_val == 524288, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x080000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x080000, 0xfffffbff, x30, x1, 584, x2)

inst_92:
// rs1_w0_val == 65536, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x010000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x010000, 0x000200, x30, x1, 592, x2)

inst_93:
// rs1_w0_val == 8192, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x002000;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x002000, 0x000080, x30, x1, 600, x2)

inst_94:
// rs1_w0_val == 512, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000200;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000200, 0x7fffffff, x30, x1, 608, x2)

inst_95:
// rs1_w0_val == -129, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xffffff7f;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xffffff7f, 0xfffffffe, x30, x1, 616, x2)

inst_96:
// rs1_w0_val == 64, 
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0x000040;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0x000040, 0x000003, x30, x1, 624, x2)

inst_97:
// rs2_w0_val == -1431655766, rs1_w0_val == -5
// opcode: kmmsb.u ; op1:x30; dest:x31; op1val:0xfffffffb;  immval:$imm_val
TEST_PKRR_OP(kmmsb.u, x31, x30, x29, 0x00000000, 0xfffffffb, 0xaaaaaaaa, x30, x1, 632, x2)
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


signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 36*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 160*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
