
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
// This assembly file tests the urcras16 instruction of the RISC-V RV32PZicsr extension for the urcras16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",urcras16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x13,signature_x13_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x27, rd==x8, rs1_h0_val == 0, rs2_h0_val == 1024, rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h1_val == 65533
// opcode: urcras16 ; op1:x1; op2:x27; dest:x8; op1val:0xfffd0000;  op2val:0x0b0400
TEST_RR_OP(urcras16, x8, x1, x27, 0x00000000, 0xfffd0000, 0x0b0400, x13, 0, x2)

inst_1:
// rs1 == rs2 != rd, rs1==x10, rs2==x10, rd==x3, rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h0_val == 65471, rs2_h0_val == 63487
// opcode: urcras16 ; op1:x10; op2:x10; dest:x3; op1val:0x0dffbf;  op2val:0x0df7ff
TEST_RR_OP(urcras16, x3, x10, x10, 0x00000000, 0x0dffbf, 0x0df7ff, x13, 4, x2)

inst_2:
// rs1 == rd != rs2, rs1==x26, rs2==x29, rd==x26, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val == 61439, rs1_h0_val == 57343, rs2_h0_val == 57343, rs2_h1_val == 65535
// opcode: urcras16 ; op1:x26; op2:x29; dest:x26; op1val:0xefffdfff;  op2val:0xffffdfff
TEST_RR_OP(urcras16, x26, x26, x29, 0x00000000, 0xefffdfff, 0xffffdfff, x13, 8, x2)

inst_3:
// rs1 == rs2 == rd, rs1==x21, rs2==x21, rd==x21, rs2_h1_val == 43690, rs2_h0_val == 2, rs1_h1_val == 1024
// opcode: urcras16 ; op1:x21; op2:x21; dest:x21; op1val:0x400000c;  op2val:0xaaaa0002
TEST_RR_OP(urcras16, x21, x21, x21, 0x00000000, 0x400000c, 0xaaaa0002, x13, 12, x2)

inst_4:
// rs2 == rd != rs1, rs1==x27, rs2==x25, rd==x25, rs2_h1_val == 21845, rs1_h1_val == 4096
// opcode: urcras16 ; op1:x27; op2:x25; dest:x25; op1val:0x1000dfff;  op2val:0x55550400
TEST_RR_OP(urcras16, x25, x27, x25, 0x00000000, 0x1000dfff, 0x55550400, x13, 16, x2)

inst_5:
// rs1==x29, rs2==x11, rd==x12, rs2_h1_val == 32767, rs2_h0_val == 43690, rs1_h0_val == 65503, rs1_h1_val == 2
// opcode: urcras16 ; op1:x29; op2:x11; dest:x12; op1val:0x02ffdf;  op2val:0x7fffaaaa
TEST_RR_OP(urcras16, x12, x29, x11, 0x00000000, 0x02ffdf, 0x7fffaaaa, x13, 20, x2)

inst_6:
// rs1==x0, rs2==x12, rd==x31, rs2_h1_val == 49151, rs1_h0_val == 65531
// opcode: urcras16 ; op1:x0; op2:x12; dest:x31; op1val:0x0dfffb;  op2val:0xbfff000e
TEST_RR_OP(urcras16, x31, x0, x12, 0x00000000, 0x0dfffb, 0xbfff000e, x13, 24, x2)

inst_7:
// rs1==x4, rs2==x7, rd==x18, rs2_h1_val == 57343, rs1_h0_val == 1024, rs2_h0_val == 65533
// opcode: urcras16 ; op1:x4; op2:x7; dest:x18; op1val:0x0f0400;  op2val:0xdffffffd
TEST_RR_OP(urcras16, x18, x4, x7, 0x00000000, 0x0f0400, 0xdffffffd, x13, 28, x2)

inst_8:
// rs1==x7, rs2==x17, rd==x19, rs2_h1_val == 61439, rs1_h0_val == 32, rs2_h0_val == 2048
// opcode: urcras16 ; op1:x7; op2:x17; dest:x19; op1val:0x0d0020;  op2val:0xefff0800
TEST_RR_OP(urcras16, x19, x7, x17, 0x00000000, 0x0d0020, 0xefff0800, x13, 32, x2)

inst_9:
// rs1==x12, rs2==x20, rd==x7, rs2_h1_val == 63487, rs1_h1_val == 32
// opcode: urcras16 ; op1:x12; op2:x20; dest:x7; op1val:0x20000f;  op2val:0xf7ff0012
TEST_RR_OP(urcras16, x7, x12, x20, 0x00000000, 0x20000f, 0xf7ff0012, x13, 36, x2)

inst_10:
// rs1==x16, rs2==x15, rd==x14, rs2_h1_val == 64511, rs1_h0_val == 65533, rs2_h0_val == 65407, rs1_h1_val == 256
// opcode: urcras16 ; op1:x16; op2:x15; dest:x14; op1val:0x100fffd;  op2val:0xfbffff7f
TEST_RR_OP(urcras16, x14, x16, x15, 0x00000000, 0x100fffd, 0xfbffff7f, x13, 40, x2)

inst_11:
// rs1==x11, rs2==x9, rd==x5, rs2_h1_val == 65023, rs1_h0_val == 32767
// opcode: urcras16 ; op1:x11; op2:x9; dest:x5; op1val:0x117fff;  op2val:0xfdff0003
TEST_RR_OP(urcras16, x5, x11, x9, 0x00000000, 0x117fff, 0xfdff0003, x13, 44, x2)

inst_12:
// rs1==x30, rs2==x23, rd==x0, rs2_h1_val == 65279, rs1_h1_val == 65471, rs2_h0_val == 49151
// opcode: urcras16 ; op1:x30; op2:x23; dest:x0; op1val:0xffbfffdf;  op2val:0xfeffbfff
TEST_RR_OP(urcras16, x0, x30, x23, 0x00000000, 0xffbfffdf, 0xfeffbfff, x13, 48, x2)

inst_13:
// rs1==x6, rs2==x18, rd==x15, rs2_h1_val == 65407, rs2_h0_val == 8
// opcode: urcras16 ; op1:x6; op2:x18; dest:x15; op1val:0xeffffffd;  op2val:0xff7f0008
TEST_RR_OP(urcras16, x15, x6, x18, 0x00000000, 0xeffffffd, 0xff7f0008, x13, 52, x2)

inst_14:
// rs1==x31, rs2==x2, rd==x1, rs2_h1_val == 65471, rs2_h0_val == 65534, rs1_h0_val == 256
// opcode: urcras16 ; op1:x31; op2:x2; dest:x1; op1val:0x1000100;  op2val:0xffbffffe
TEST_RR_OP(urcras16, x1, x31, x2, 0x00000000, 0x1000100, 0xffbffffe, x13, 56, x11)
RVTEST_SIGBASE(x7,signature_x7_0)

inst_15:
// rs1==x23, rs2==x31, rd==x10, rs2_h1_val == 65503, rs1_h0_val == 16
// opcode: urcras16 ; op1:x23; op2:x31; dest:x10; op1val:0x4000010;  op2val:0xffdf000f
TEST_RR_OP(urcras16, x10, x23, x31, 0x00000000, 0x4000010, 0xffdf000f, x7, 0, x11)

inst_16:
// rs1==x14, rs2==x28, rd==x27, rs2_h1_val == 65519, rs2_h0_val == 1
// opcode: urcras16 ; op1:x14; op2:x28; dest:x27; op1val:0x0e000f;  op2val:0xffef0001
TEST_RR_OP(urcras16, x27, x14, x28, 0x00000000, 0x0e000f, 0xffef0001, x7, 4, x11)

inst_17:
// rs1==x9, rs2==x26, rd==x23, rs2_h1_val == 65527, rs1_h0_val == 32768
// opcode: urcras16 ; op1:x9; op2:x26; dest:x23; op1val:0x0b8000;  op2val:0xfff70001
TEST_RR_OP(urcras16, x23, x9, x26, 0x00000000, 0x0b8000, 0xfff70001, x7, 8, x11)

inst_18:
// rs1==x17, rs2==x0, rd==x13, rs2_h1_val == 65531, rs1_h1_val == 128
// opcode: urcras16 ; op1:x17; op2:x0; dest:x13; op1val:0x800005;  op2val:0xfffbbfff
TEST_RR_OP(urcras16, x13, x17, x0, 0x00000000, 0x800005, 0xfffbbfff, x7, 12, x11)

inst_19:
// rs1==x18, rs2==x16, rd==x2, rs2_h1_val == 65533, rs1_h0_val == 128
// opcode: urcras16 ; op1:x18; op2:x16; dest:x2; op1val:0xffbf0080;  op2val:0xfffd0400
TEST_RR_OP(urcras16, x2, x18, x16, 0x00000000, 0xffbf0080, 0xfffd0400, x7, 16, x11)

inst_20:
// rs1==x25, rs2==x4, rd==x16, rs2_h1_val == 65534, rs1_h1_val == 57343
// opcode: urcras16 ; op1:x25; op2:x4; dest:x16; op1val:0xdffffffb;  op2val:0xfffe000d
TEST_RR_OP(urcras16, x16, x25, x4, 0x00000000, 0xdffffffb, 0xfffe000d, x7, 20, x11)

inst_21:
// rs1==x8, rs2==x6, rd==x22, rs2_h1_val == 32768, rs1_h0_val == 49151, rs2_h0_val == 16
// opcode: urcras16 ; op1:x8; op2:x6; dest:x22; op1val:0x0abfff;  op2val:0x80000010
TEST_RR_OP(urcras16, x22, x8, x6, 0x00000000, 0x0abfff, 0x80000010, x7, 24, x11)

inst_22:
// rs1==x3, rs2==x5, rd==x30, rs2_h1_val == 16384, rs2_h0_val == 256, rs1_h1_val == 65519, rs1_h0_val == 4096
// opcode: urcras16 ; op1:x3; op2:x5; dest:x30; op1val:0xffef1000;  op2val:0x40000100
TEST_RR_OP(urcras16, x30, x3, x5, 0x00000000, 0xffef1000, 0x40000100, x7, 28, x11)

inst_23:
// rs1==x22, rs2==x13, rd==x20, rs2_h1_val == 8192, rs1_h1_val == 65527, rs2_h0_val == 65519
// opcode: urcras16 ; op1:x22; op2:x13; dest:x20; op1val:0xfff70009;  op2val:0x2000ffef
TEST_RR_OP(urcras16, x20, x22, x13, 0x00000000, 0xfff70009, 0x2000ffef, x7, 32, x11)

inst_24:
// rs1==x5, rs2==x30, rd==x4, rs2_h1_val == 4096, rs2_h0_val == 512, rs1_h0_val == 21845
// opcode: urcras16 ; op1:x5; op2:x30; dest:x4; op1val:0xefff5555;  op2val:0x10000200
TEST_RR_OP(urcras16, x4, x5, x30, 0x00000000, 0xefff5555, 0x10000200, x7, 36, x11)

inst_25:
// rs1==x28, rs2==x24, rd==x29, rs2_h1_val == 2048, 
// opcode: urcras16 ; op1:x28; op2:x24; dest:x29; op1val:0x0d8000;  op2val:0x8000800
TEST_RR_OP(urcras16, x29, x28, x24, 0x00000000, 0x0d8000, 0x8000800, x7, 40, x11)

inst_26:
// rs1==x19, rs2==x3, rd==x9, rs2_h1_val == 1024, rs1_h1_val == 2048
// opcode: urcras16 ; op1:x19; op2:x3; dest:x9; op1val:0x8000013;  op2val:0x400fffd
TEST_RR_OP(urcras16, x9, x19, x3, 0x00000000, 0x8000013, 0x400fffd, x7, 44, x11)

inst_27:
// rs1==x13, rs2==x14, rd==x17, rs2_h1_val == 512, rs1_h0_val == 65535, rs1_h1_val == 21845
// opcode: urcras16 ; op1:x13; op2:x14; dest:x17; op1val:0x5555ffff;  op2val:0x2000013
TEST_RR_OP(urcras16, x17, x13, x14, 0x00000000, 0x5555ffff, 0x2000013, x7, 48, x3)

inst_28:
// rs1==x2, rs2==x8, rd==x11, rs2_h1_val == 256, rs2_h0_val == 64511, rs1_h1_val == 43690
// opcode: urcras16 ; op1:x2; op2:x8; dest:x11; op1val:0xaaaa0100;  op2val:0x100fbff
TEST_RR_OP(urcras16, x11, x2, x8, 0x00000000, 0xaaaa0100, 0x100fbff, x7, 52, x3)

inst_29:
// rs1==x24, rs2==x1, rd==x28, rs2_h1_val == 128, rs1_h0_val == 65527
// opcode: urcras16 ; op1:x24; op2:x1; dest:x28; op1val:0x20fff7;  op2val:0x80000e
TEST_RR_OP(urcras16, x28, x24, x1, 0x00000000, 0x20fff7, 0x80000e, x7, 56, x3)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_30:
// rs1==x20, rs2==x22, rd==x6, rs2_h1_val == 64, rs1_h0_val == 16384, rs1_h1_val == 32767
// opcode: urcras16 ; op1:x20; op2:x22; dest:x6; op1val:0x7fff4000;  op2val:0x40000f
TEST_RR_OP(urcras16, x6, x20, x22, 0x00000000, 0x7fff4000, 0x40000f, x1, 0, x3)

inst_31:
// rs1==x15, rs2==x19, rd==x24, rs2_h1_val == 32, 
// opcode: urcras16 ; op1:x15; op2:x19; dest:x24; op1val:0x060013;  op2val:0x20000d
TEST_RR_OP(urcras16, x24, x15, x19, 0x00000000, 0x060013, 0x20000d, x1, 4, x3)

inst_32:
// rs1_h0_val == 65534, rs1_h1_val == 65535
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe;  op2val:0x0bffef
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfffffffe, 0x0bffef, x1, 8, x3)

inst_33:
// rs1_h0_val == 8192, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x202000;  op2val:0xfffd0200
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x202000, 0xfffd0200, x1, 12, x3)

inst_34:
// rs1_h0_val == 2048, rs1_h1_val == 0, rs2_h1_val == 1
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x000800;  op2val:0x010012
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x000800, 0x010012, x1, 16, x3)

inst_35:
// rs1_h0_val == 512, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x200200;  op2val:0x8000010
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x200200, 0x8000010, x1, 20, x3)

inst_36:
// rs1_h0_val == 64, rs2_h0_val == 64
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x000040;  op2val:0xbfff0040
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x000040, 0xbfff0040, x1, 24, x3)

inst_37:
// rs1_h0_val == 8, rs2_h0_val == 21845, rs2_h1_val == 4
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x020008;  op2val:0x045555
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x020008, 0x045555, x1, 28, x3)

inst_38:
// rs1_h0_val == 4, rs1_h1_val == 8, rs2_h0_val == 128
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x080004;  op2val:0x0a0080
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x080004, 0x0a0080, x1, 32, x3)

inst_39:
// rs1_h0_val == 2, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x200002;  op2val:0x8000fffd
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x200002, 0x8000fffd, x1, 36, x3)

inst_40:
// rs1_h0_val == 1, rs2_h0_val == 65535
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0c0001;  op2val:0x13ffff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0c0001, 0x13ffff, x1, 40, x3)

inst_41:
// rs2_h1_val == 16, rs1_h0_val == 65279
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffeff;  op2val:0x100003
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xffeffeff, 0x100003, x1, 44, x3)

inst_42:
// rs2_h1_val == 8, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0ebfff;  op2val:0x08000f
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0ebfff, 0x08000f, x1, 48, x3)

inst_43:
// rs2_h1_val == 2, rs1_h0_val == 65023
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfdff;  op2val:0x02bfff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfffdfdff, 0x02bfff, x1, 52, x3)

inst_44:
// rs2_h1_val == 0, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0c0008;  op2val:0x000040
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0c0008, 0x000040, x1, 56, x3)

inst_45:
// rs2_h0_val == 32767, rs1_h1_val == 8192
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000100;  op2val:0x80007fff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x20000100, 0x80007fff, x1, 60, x3)

inst_46:
// rs2_h0_val == 61439, rs1_h1_val == 64511
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0007;  op2val:0x11efff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfbff0007, 0x11efff, x1, 64, x3)

inst_47:
// rs2_h0_val == 65023, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0a0040;  op2val:0xdffffdff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0a0040, 0xdffffdff, x1, 68, x3)

inst_48:
// rs2_h0_val == 65279, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x02dfff;  op2val:0x08feff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x02dfff, 0x08feff, x1, 72, x3)

inst_49:
// rs2_h0_val == 65471, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0005;  op2val:0x06ffbf
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfbff0005, 0x06ffbf, x1, 76, x3)

inst_50:
// rs2_h0_val == 32, rs1_h1_val == 65023
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff4000;  op2val:0xf7ff0020
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfdff4000, 0xf7ff0020, x1, 80, x3)

inst_51:
// rs2_h0_val == 4, rs1_h1_val == 65279
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0005;  op2val:0xffef0004
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfeff0005, 0xffef0004, x1, 84, x3)

inst_52:
// rs2_h0_val == 0, rs1_h1_val == 63487
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffdf;  op2val:0xffff0000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xf7ffffdf, 0xffff0000, x1, 88, x3)

inst_53:
// rs1_h1_val == 49151, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0009;  op2val:0x000010
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xbfff0009, 0x000010, x1, 92, x3)

inst_54:
// rs1_h1_val == 65407, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f5555;  op2val:0x0a000e
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xff7f5555, 0x0a000e, x1, 96, x3)

inst_55:
// rs2_h0_val == 65527, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x000400;  op2val:0x0ffff7
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x000400, 0x0ffff7, x1, 100, x3)

inst_56:
// rs1_h1_val == 65503, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf1000;  op2val:0xfbff0080
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xffdf1000, 0xfbff0080, x1, 104, x3)

inst_57:
// rs2_h0_val == 4096, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x100000e;  op2val:0x091000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x100000e, 0x091000, x1, 108, x3)

inst_58:
// rs1_h1_val == 65531, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0004;  op2val:0xffeffff7
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfffb0004, 0xffeffff7, x1, 112, x3)

inst_59:
// rs2_h0_val == 65531, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x200003;  op2val:0xfffefffb
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x200003, 0xfffefffb, x1, 116, x3)

inst_60:
// rs1_h1_val == 65534, rs2_h0_val == 32768
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe000e;  op2val:0xfffe8000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfffe000e, 0xfffe8000, x1, 120, x3)

inst_61:
// rs1_h1_val == 32768, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x80005555;  op2val:0x04feff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x80005555, 0x04feff, x1, 124, x3)

inst_62:
// rs1_h1_val == 16384, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000002;  op2val:0xaaaa1000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x40000002, 0xaaaa1000, x1, 128, x3)

inst_63:
// rs1_h1_val == 512, rs1_h0_val == 61439
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x200efff;  op2val:0x4000008
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x200efff, 0x4000008, x1, 132, x3)

inst_64:
// rs1_h1_val == 64, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x400007;  op2val:0xffdf0800
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x400007, 0xffdf0800, x1, 136, x3)

inst_65:
// rs1_h1_val == 16, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x100001;  op2val:0x11000d
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x100001, 0x11000d, x1, 140, x3)

inst_66:
// rs1_h1_val == 4, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x04fffb;  op2val:0x2000040
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x04fffb, 0x2000040, x1, 144, x3)

inst_67:
// rs1_h1_val == 1, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x01bfff;  op2val:0xdffffffb
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x01bfff, 0xdffffffb, x1, 148, x3)

inst_68:
// rs1_h0_val == 43690, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x10aaaa;  op2val:0x8000100
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x10aaaa, 0x8000100, x1, 152, x3)

inst_69:
// rs2_h0_val == 65503, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x20002000;  op2val:0xfff7ffdf
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x20002000, 0xfff7ffdf, x1, 156, x3)

inst_70:
// rs1_h0_val == 63487, rs2_h0_val == 16384
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbf7ff;  op2val:0x20004000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xfffbf7ff, 0x20004000, x1, 160, x3)

inst_71:
// rs1_h0_val == 64511, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x04fbff;  op2val:0xfffb0009
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x04fbff, 0xfffb0009, x1, 164, x3)

inst_72:
// rs1_h0_val == 65407, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaff7f;  op2val:0xaaaa000f
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xaaaaff7f, 0xaaaa000f, x1, 168, x3)

inst_73:
// rs2_h0_val == 8192, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0c0013;  op2val:0x112000
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0c0013, 0x112000, x1, 172, x3)

inst_74:
// rs1_h0_val == 65519, 
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0fffef;  op2val:0x13aaaa
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0fffef, 0x13aaaa, x1, 176, x3)

inst_75:
// rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h0_val == 65471, rs2_h0_val == 63487
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0dffbf;  op2val:0x0df7ff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x0dffbf, 0x0df7ff, x1, 180, x3)

inst_76:
// rs2_h1_val == 43690, rs2_h0_val == 2, rs1_h1_val == 1024
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x400000c;  op2val:0xaaaa0002
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x400000c, 0xaaaa0002, x1, 184, x3)

inst_77:
// rs2_h1_val == 65279, rs1_h1_val == 65471, rs2_h0_val == 49151
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffdf;  op2val:0xfeffbfff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0xffbfffdf, 0xfeffbfff, x1, 188, x3)

inst_78:
// rs2_h1_val == 65531, rs1_h1_val == 128
// opcode: urcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x800005;  op2val:0xfffbbfff
TEST_RR_OP(urcras16, x31, x30, x29, 0x00000000, 0x800005, 0xfffbbfff, x1, 192, x3)
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
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 49*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
