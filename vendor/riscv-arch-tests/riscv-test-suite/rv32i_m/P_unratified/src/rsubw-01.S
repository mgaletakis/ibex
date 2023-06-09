
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
// This assembly file tests the rsubw instruction of the RISC-V RV32PZicsr extension for the rsubw covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",rsubw)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x17,signature_x17_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x11, rd==x13, rs1_w0_val == -2147483648, rs2_w0_val == 67108864
// opcode: rsubw ; op1:x1; dest:x13; op1val:0x80000000;  immval:$imm_val
TEST_RR_OP(rsubw, x13, x1, x11, 0x00000000, 0x80000000, 0x4000000, x17, 0, x14)

inst_1:
// rs1 == rs2 != rd, rs1==x3, rs2==x3, rd==x9, rs2_w0_val == -1431655766, rs1_w0_val == -9
// opcode: rsubw ; op1:x3; dest:x9; op1val:0xfffffff7;  immval:$imm_val
TEST_RR_OP(rsubw, x9, x3, x3, 0x00000000, 0xfffffff7, 0xaaaaaaaa, x17, 4, x14)

inst_2:
// rs1 == rd != rs2, rs1==x23, rs2==x0, rd==x23, rs2_w0_val == 1431655765, rs1_w0_val == -65
// opcode: rsubw ; op1:x23; dest:x23; op1val:0xffffffbf;  immval:$imm_val
TEST_RR_OP(rsubw, x23, x23, x0, 0x00000000, 0xffffffbf, 0x55555555, x17, 8, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs2_w0_val == 2147483647, rs1_w0_val == -134217729
// opcode: rsubw ; op1:x19; dest:x19; op1val:0xf7ffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x19, x19, x19, 0x00000000, 0xf7ffffff, 0x7fffffff, x17, 12, x14)

inst_4:
// rs2 == rd != rs1, rs1==x18, rs2==x5, rd==x5, rs2_w0_val == -1073741825, rs1_w0_val == -65537
// opcode: rsubw ; op1:x18; dest:x5; op1val:0xfffeffff;  immval:$imm_val
TEST_RR_OP(rsubw, x5, x18, x5, 0x00000000, 0xfffeffff, 0xbfffffff, x17, 16, x14)

inst_5:
// rs1==x11, rs2==x7, rd==x16, rs2_w0_val == -536870913, rs1_w0_val == -4097
// opcode: rsubw ; op1:x11; dest:x16; op1val:0xffffefff;  immval:$imm_val
TEST_RR_OP(rsubw, x16, x11, x7, 0x00000000, 0xffffefff, 0xdfffffff, x17, 20, x14)

inst_6:
// rs1==x2, rs2==x6, rd==x24, rs2_w0_val == -268435457, rs1_w0_val == -3
// opcode: rsubw ; op1:x2; dest:x24; op1val:0xfffffffd;  immval:$imm_val
TEST_RR_OP(rsubw, x24, x2, x6, 0x00000000, 0xfffffffd, 0xefffffff, x17, 24, x14)

inst_7:
// rs1==x16, rs2==x27, rd==x31, rs2_w0_val == -134217729, rs1_w0_val == 32768
// opcode: rsubw ; op1:x16; dest:x31; op1val:0x008000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x16, x27, 0x00000000, 0x008000, 0xf7ffffff, x17, 28, x14)

inst_8:
// rs1==x6, rs2==x4, rd==x0, rs2_w0_val == -67108865, rs1_w0_val == 1073741824
// opcode: rsubw ; op1:x6; dest:x0; op1val:0x40000000;  immval:$imm_val
TEST_RR_OP(rsubw, x0, x6, x4, 0x00000000, 0x40000000, 0xfbffffff, x17, 32, x14)

inst_9:
// rs1==x12, rs2==x8, rd==x28, rs2_w0_val == -33554433, rs1_w0_val == 1048576
// opcode: rsubw ; op1:x12; dest:x28; op1val:0x100000;  immval:$imm_val
TEST_RR_OP(rsubw, x28, x12, x8, 0x00000000, 0x100000, 0xfdffffff, x17, 36, x14)

inst_10:
// rs1==x5, rs2==x2, rd==x26, rs2_w0_val == -16777217, rs1_w0_val == 8
// opcode: rsubw ; op1:x5; dest:x26; op1val:0x000008;  immval:$imm_val
TEST_RR_OP(rsubw, x26, x5, x2, 0x00000000, 0x000008, 0xfeffffff, x17, 40, x14)

inst_11:
// rs1==x10, rs2==x9, rd==x20, rs2_w0_val == -8388609, rs1_w0_val == -536870913
// opcode: rsubw ; op1:x10; dest:x20; op1val:0xdfffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x20, x10, x9, 0x00000000, 0xdfffffff, 0xff7fffff, x17, 44, x14)

inst_12:
// rs1==x27, rs2==x1, rd==x22, rs2_w0_val == -4194305, rs1_w0_val == 128
// opcode: rsubw ; op1:x27; dest:x22; op1val:0x000080;  immval:$imm_val
TEST_RR_OP(rsubw, x22, x27, x1, 0x00000000, 0x000080, 0xffbfffff, x17, 48, x14)

inst_13:
// rs1==x29, rs2==x15, rd==x2, rs2_w0_val == -2097153, 
// opcode: rsubw ; op1:x29; dest:x2; op1val:0xfffffffd;  immval:$imm_val
TEST_RR_OP(rsubw, x2, x29, x15, 0x00000000, 0xfffffffd, 0xffdfffff, x17, 52, x14)

inst_14:
// rs1==x14, rs2==x13, rd==x12, rs2_w0_val == -1048577, rs1_w0_val == -8388609
// opcode: rsubw ; op1:x14; dest:x12; op1val:0xff7fffff;  immval:$imm_val
TEST_RR_OP(rsubw, x12, x14, x13, 0x00000000, 0xff7fffff, 0xffefffff, x17, 56, x5)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_15:
// rs1==x21, rs2==x24, rd==x25, rs2_w0_val == -524289, rs1_w0_val == 67108864
// opcode: rsubw ; op1:x21; dest:x25; op1val:0x4000000;  immval:$imm_val
TEST_RR_OP(rsubw, x25, x21, x24, 0x00000000, 0x4000000, 0xfff7ffff, x2, 0, x5)

inst_16:
// rs1==x30, rs2==x20, rd==x11, rs2_w0_val == -262145, rs1_w0_val == 4194304
// opcode: rsubw ; op1:x30; dest:x11; op1val:0x400000;  immval:$imm_val
TEST_RR_OP(rsubw, x11, x30, x20, 0x00000000, 0x400000, 0xfffbffff, x2, 4, x5)

inst_17:
// rs1==x8, rs2==x26, rd==x15, rs2_w0_val == -131073, 
// opcode: rsubw ; op1:x8; dest:x15; op1val:0xffffefff;  immval:$imm_val
TEST_RR_OP(rsubw, x15, x8, x26, 0x00000000, 0xffffefff, 0xfffdffff, x2, 8, x5)

inst_18:
// rs1==x7, rs2==x22, rd==x18, rs2_w0_val == -65537, rs1_w0_val == 8388608
// opcode: rsubw ; op1:x7; dest:x18; op1val:0x800000;  immval:$imm_val
TEST_RR_OP(rsubw, x18, x7, x22, 0x00000000, 0x800000, 0xfffeffff, x2, 12, x5)

inst_19:
// rs1==x20, rs2==x21, rd==x27, rs2_w0_val == -32769, rs1_w0_val == 512
// opcode: rsubw ; op1:x20; dest:x27; op1val:0x000200;  immval:$imm_val
TEST_RR_OP(rsubw, x27, x20, x21, 0x00000000, 0x000200, 0xffff7fff, x2, 16, x5)

inst_20:
// rs1==x4, rs2==x29, rd==x10, rs2_w0_val == -16385, rs1_w0_val == 2048
// opcode: rsubw ; op1:x4; dest:x10; op1val:0x000800;  immval:$imm_val
TEST_RR_OP(rsubw, x10, x4, x29, 0x00000000, 0x000800, 0xffffbfff, x2, 20, x5)

inst_21:
// rs1==x15, rs2==x31, rd==x1, rs2_w0_val == -8193, rs1_w0_val == -2
// opcode: rsubw ; op1:x15; dest:x1; op1val:0xfffffffe;  immval:$imm_val
TEST_RR_OP(rsubw, x1, x15, x31, 0x00000000, 0xfffffffe, 0xffffdfff, x2, 24, x5)

inst_22:
// rs1==x9, rs2==x23, rd==x4, rs2_w0_val == -4097, rs1_w0_val == 16384
// opcode: rsubw ; op1:x9; dest:x4; op1val:0x004000;  immval:$imm_val
TEST_RR_OP(rsubw, x4, x9, x23, 0x00000000, 0x004000, 0xffffefff, x2, 28, x5)

inst_23:
// rs1==x31, rs2==x10, rd==x30, rs2_w0_val == -2049, rs1_w0_val == 134217728
// opcode: rsubw ; op1:x31; dest:x30; op1val:0x8000000;  immval:$imm_val
TEST_RR_OP(rsubw, x30, x31, x10, 0x00000000, 0x8000000, 0xfffff7ff, x2, 32, x5)

inst_24:
// rs1==x25, rs2==x16, rd==x29, rs2_w0_val == -1025, 
// opcode: rsubw ; op1:x25; dest:x29; op1val:0xffffffbf;  immval:$imm_val
TEST_RR_OP(rsubw, x29, x25, x16, 0x00000000, 0xffffffbf, 0xfffffbff, x2, 36, x5)

inst_25:
// rs1==x13, rs2==x17, rd==x21, rs2_w0_val == -513, rs1_w0_val == 16777216
// opcode: rsubw ; op1:x13; dest:x21; op1val:0x1000000;  immval:$imm_val
TEST_RR_OP(rsubw, x21, x13, x17, 0x00000000, 0x1000000, 0xfffffdff, x2, 40, x5)

inst_26:
// rs1==x22, rs2==x25, rd==x7, rs2_w0_val == -257, rs1_w0_val == 1
// opcode: rsubw ; op1:x22; dest:x7; op1val:0x000001;  immval:$imm_val
TEST_RR_OP(rsubw, x7, x22, x25, 0x00000000, 0x000001, 0xfffffeff, x2, 44, x5)

inst_27:
// rs1==x26, rs2==x12, rd==x8, rs2_w0_val == -129, 
// opcode: rsubw ; op1:x26; dest:x8; op1val:0x000080;  immval:$imm_val
TEST_RR_OP(rsubw, x8, x26, x12, 0x00000000, 0x000080, 0xffffff7f, x2, 48, x5)

inst_28:
// rs1==x17, rs2==x14, rd==x3, rs2_w0_val == -65, rs1_w0_val == 16
// opcode: rsubw ; op1:x17; dest:x3; op1val:0x000010;  immval:$imm_val
TEST_RR_OP(rsubw, x3, x17, x14, 0x00000000, 0x000010, 0xffffffbf, x2, 52, x5)

inst_29:
// rs1==x24, rs2==x28, rd==x14, rs2_w0_val == -33, 
// opcode: rsubw ; op1:x24; dest:x14; op1val:0x000008;  immval:$imm_val
TEST_RR_OP(rsubw, x14, x24, x28, 0x00000000, 0x000008, 0xffffffdf, x2, 56, x3)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_30:
// rs1==x28, rs2==x30, rd==x17, rs2_w0_val == -17, 
// opcode: rsubw ; op1:x28; dest:x17; op1val:0xc0000000;  immval:$imm_val
TEST_RR_OP(rsubw, x17, x28, x30, 0x00000000, 0xc0000000, 0xffffffef, x1, 0, x3)

inst_31:
// rs1==x0, rs2==x18, rd==x6, rs2_w0_val == -9, 
// opcode: rsubw ; op1:x0; dest:x6; op1val:0x400000;  immval:$imm_val
TEST_RR_OP(rsubw, x6, x0, x18, 0x00000000, 0x400000, 0xfffffff7, x1, 4, x3)

inst_32:
// rs2_w0_val == -5, rs1_w0_val == 256
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000100;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000100, 0xfffffffb, x1, 8, x3)

inst_33:
// rs2_w0_val == -3, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000001;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000001, 0xfffffffd, x1, 12, x3)

inst_34:
// rs2_w0_val == -2, rs1_w0_val == -2097153
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffdfffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffdfffff, 0xfffffffe, x1, 16, x3)

inst_35:
// rs2_w0_val == -2147483648, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x008000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x008000, 0x80000000, x1, 20, x3)

inst_36:
// rs2_w0_val == 1073741824, rs1_w0_val == 2147483647
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x7fffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x7fffffff, 0x40000000, x1, 24, x3)

inst_37:
// rs2_w0_val == 536870912, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000005;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000005, 0x20000000, x1, 28, x3)

inst_38:
// rs2_w0_val == 268435456, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xf7ffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xf7ffffff, 0x10000000, x1, 32, x3)

inst_39:
// rs2_w0_val == 134217728, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffff7;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffff7, 0x8000000, x1, 36, x3)

inst_40:
// rs2_w0_val == 33554432, rs1_w0_val == -1431655766
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xaaaaaaaa;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xaaaaaaaa, 0x2000000, x1, 40, x3)

inst_41:
// rs2_w0_val == 16777216, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000080;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000080, 0x1000000, x1, 44, x3)

inst_42:
// rs2_w0_val == 8388608, rs1_w0_val == -8193
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffdfff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffdfff, 0x800000, x1, 48, x3)

inst_43:
// rs2_w0_val == 4194304, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffeffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffeffff, 0x400000, x1, 52, x3)

inst_44:
// rs1_w0_val == 32, rs2_w0_val == 1024
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000020;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000020, 0x000400, x1, 56, x3)

inst_45:
// rs1_w0_val == 4, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000004;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000004, 0xffffffef, x1, 60, x3)

inst_46:
// rs1_w0_val == 2, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000002;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000002, 0x1000000, x1, 64, x3)

inst_47:
// rs1_w0_val == 0, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000000, 0x80000000, x1, 68, x3)

inst_48:
// rs1_w0_val == -1, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffff, 0x10000000, x1, 72, x3)

inst_49:
// rs2_w0_val == 2097152, rs1_w0_val == -17
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffef;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffef, 0x200000, x1, 76, x3)

inst_50:
// rs2_w0_val == 1048576, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xf7ffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xf7ffffff, 0x100000, x1, 80, x3)

inst_51:
// rs2_w0_val == 524288, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffffc;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffffc, 0x080000, x1, 84, x3)

inst_52:
// rs2_w0_val == 262144, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000800;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000800, 0x040000, x1, 88, x3)

inst_53:
// rs2_w0_val == 131072, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffffd;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffffd, 0x020000, x1, 92, x3)

inst_54:
// rs2_w0_val == 65536, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x40000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x40000000, 0x010000, x1, 96, x3)

inst_55:
// rs2_w0_val == 32768, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000001;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000001, 0x008000, x1, 100, x3)

inst_56:
// rs2_w0_val == 16384, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xf7ffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xf7ffffff, 0x004000, x1, 104, x3)

inst_57:
// rs2_w0_val == 8192, rs1_w0_val == -268435457
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xefffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xefffffff, 0x002000, x1, 108, x3)

inst_58:
// rs2_w0_val == 4096, rs1_w0_val == 262144
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x040000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x040000, 0x001000, x1, 112, x3)

inst_59:
// rs2_w0_val == 2048, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffffd;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffffd, 0x000800, x1, 116, x3)

inst_60:
// rs2_w0_val == 512, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffef;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffef, 0x000200, x1, 120, x3)

inst_61:
// rs2_w0_val == 256, rs1_w0_val == -67108865
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfbffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfbffffff, 0x000100, x1, 124, x3)

inst_62:
// rs2_w0_val == 128, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffef;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffef, 0x000080, x1, 128, x3)

inst_63:
// rs2_w0_val == 64, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xf7ffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xf7ffffff, 0x000040, x1, 132, x3)

inst_64:
// rs2_w0_val == 32, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000200;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000200, 0x000020, x1, 136, x3)

inst_65:
// rs2_w0_val == 16, rs1_w0_val == -1048577
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffefffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffefffff, 0x000010, x1, 140, x3)

inst_66:
// rs2_w0_val == 8, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000009;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000009, 0x000008, x1, 144, x3)

inst_67:
// rs2_w0_val == 4, rs1_w0_val == -2049
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffff7ff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffff7ff, 0x000004, x1, 148, x3)

inst_68:
// rs2_w0_val == 2, rs1_w0_val == 64
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000040;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000040, 0x000002, x1, 152, x3)

inst_69:
// rs2_w0_val == 1, rs1_w0_val == 1024
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x000400;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x000400, 0x000001, x1, 156, x3)

inst_70:
// rs2_w0_val == 0, rs1_w0_val == -4194305
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffbfffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffbfffff, 0x000000, x1, 160, x3)

inst_71:
// rs2_w0_val == -1, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffffc;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffffc, 0xffffffff, x1, 164, x3)

inst_72:
// rs1_w0_val == 1431655765, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x55555555;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x55555555, 0xfffbffff, x1, 168, x3)

inst_73:
// rs1_w0_val == -1073741825, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xbfffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xbfffffff, 0xaaaaaaaa, x1, 172, x3)

inst_74:
// rs1_w0_val == -33554433, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfdffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfdffffff, 0x800000, x1, 176, x3)

inst_75:
// rs1_w0_val == -16777217, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfeffffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfeffffff, 0xfff7ffff, x1, 180, x3)

inst_76:
// rs1_w0_val == -524289, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfff7ffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfff7ffff, 0x000040, x1, 184, x3)

inst_77:
// rs1_w0_val == -262145, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffbffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffbffff, 0x800000, x1, 188, x3)

inst_78:
// rs1_w0_val == -131073, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffdffff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffdffff, 0xfffffffd, x1, 192, x3)

inst_79:
// rs1_w0_val == -32769, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffff7fff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffff7fff, 0xffffffbf, x1, 196, x3)

inst_80:
// rs1_w0_val == -16385, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffbfff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffbfff, 0xdfffffff, x1, 200, x3)

inst_81:
// rs1_w0_val == -33, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffdf;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffdf, 0x3fffffff, x1, 204, x3)

inst_82:
// rs1_w0_val == -5, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffffb;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffffb, 0xfffffff9, x1, 208, x3)

inst_83:
// rs1_w0_val == 536870912, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x20000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x20000000, 0xff7fffff, x1, 212, x3)

inst_84:
// rs1_w0_val == 268435456, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x10000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x10000000, 0xffffbfff, x1, 216, x3)

inst_85:
// rs1_w0_val == 33554432, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x2000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x2000000, 0x000005, x1, 220, x3)

inst_86:
// rs1_w0_val == 2097152, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x200000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x200000, 0xffffdfff, x1, 224, x3)

inst_87:
// rs1_w0_val == 524288, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x080000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x080000, 0x10000000, x1, 228, x3)

inst_88:
// rs1_w0_val == 131072, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x020000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x020000, 0xfffffbff, x1, 232, x3)

inst_89:
// rs1_w0_val == 65536, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x010000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x010000, 0xfeffffff, x1, 236, x3)

inst_90:
// rs1_w0_val == 8192, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x002000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x002000, 0x3fffffff, x1, 240, x3)

inst_91:
// rs1_w0_val == 4096, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x001000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x001000, 0xfff7ffff, x1, 244, x3)

inst_92:
// rs1_w0_val == -1025, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffbff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffbff, 0xaaaaaaaa, x1, 248, x3)

inst_93:
// rs1_w0_val == -513, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffdff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffdff, 0xffefffff, x1, 252, x3)

inst_94:
// rs1_w0_val == -257, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xfffffeff;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xfffffeff, 0x7fffffff, x1, 256, x3)

inst_95:
// rs1_w0_val == -129, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffff7f;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffff7f, 0xfffff7ff, x1, 260, x3)

inst_96:
// rs2_w0_val == 1431655765, rs1_w0_val == -65
// opcode: rsubw ; op1:x30; dest:x31; op1val:0xffffffbf;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0xffffffbf, 0x55555555, x1, 264, x3)

inst_97:
// rs2_w0_val == -67108865, rs1_w0_val == 1073741824
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x40000000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x40000000, 0xfbffffff, x1, 268, x3)

inst_98:
// rs2_w0_val == -9, 
// opcode: rsubw ; op1:x30; dest:x31; op1val:0x400000;  immval:$imm_val
TEST_RR_OP(rsubw, x31, x30, x29, 0x00000000, 0x400000, 0xfffffff7, x1, 272, x3)
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


signature_x17_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x17_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 69*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
