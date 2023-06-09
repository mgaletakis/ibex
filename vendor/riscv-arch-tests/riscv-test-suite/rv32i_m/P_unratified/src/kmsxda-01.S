
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
// This assembly file tests the kmsxda instruction of the RISC-V RV32PZicsr extension for the kmsxda covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kmsxda)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x10,signature_x10_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x19, rs2==x7, rd==x18, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val < 0, rs2_h0_val == -21846, rs1_h1_val == 21845
// opcode: kmsxda ; op1:x19; op2:x7; dest:x18; op1val:0x55558000;  op2val:0x05aaaa
TEST_PKRR_OP(kmsxda, x18, x19, x7, 0x00000000, 0x55558000, 0x05aaaa, x19, x10, 0, x11)

inst_1:
// rs1 == rs2 != rd, rs1==x24, rs2==x24, rd==x2, rs1_h1_val == rs2_h1_val, rs2_h0_val == -129, rs1_h1_val == 512, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h1_val == 512
// opcode: kmsxda ; op1:x24; op2:x24; dest:x2; op1val:0x2003fff;  op2val:0x200ff7f
TEST_PKRR_OP(kmsxda, x2, x24, x24, 0x00000000, 0x2003fff, 0x200ff7f, x24, x10, 8, x11)

inst_2:
// rs1 == rd != rs2, rs1==x14, rs2==x4, rd==x14, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h1_val == 16384, rs2_h0_val == -257, rs1_h1_val == -5, rs1_h0_val == -2
// opcode: kmsxda ; op1:x14; op2:x4; dest:x14; op1val:0xfffbfffe;  op2val:0x4000feff
TEST_PKRR_OP(kmsxda, x14, x14, x4, 0x00000000, 0xfffbfffe, 0x4000feff, x14, x10, 16, x11)

inst_3:
// rs1 == rs2 == rd, rs1==x13, rs2==x13, rd==x13, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h1_val == -33, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h0_val == 8
// opcode: kmsxda ; op1:x13; op2:x13; dest:x13; op1val:0xffdf0005;  op2val:0xfffa0008
TEST_PKRR_OP(kmsxda, x13, x13, x13, 0x00000000, 0xffdf0005, 0xfffa0008, x13, x10, 24, x11)

inst_4:
// rs2 == rd != rs1, rs1==x22, rs2==x5, rd==x5, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h0_val == 1, rs1_h1_val == 1024, rs2_h1_val == -129
// opcode: kmsxda ; op1:x22; op2:x5; dest:x5; op1val:0x4000001;  op2val:0xff7ffffc
TEST_PKRR_OP(kmsxda, x5, x22, x5, 0x00000000, 0x4000001, 0xff7ffffc, x22, x10, 32, x11)

inst_5:
// rs1==x18, rs2==x3, rd==x23, rs1_h0_val == rs2_h0_val, rs2_h0_val == -513, rs1_h1_val == -4097, rs1_h0_val == -513, rs2_h1_val == 128
// opcode: kmsxda ; op1:x18; op2:x3; dest:x23; op1val:0xeffffdff;  op2val:0x80fdff
TEST_PKRR_OP(kmsxda, x23, x18, x3, 0x00000000, 0xeffffdff, 0x80fdff, x18, x10, 40, x11)

inst_6:
// rs1==x4, rs2==x28, rd==x3, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == -2049, rs1_h0_val == -4097, rs1_h1_val == 32767
// opcode: kmsxda ; op1:x4; op2:x28; dest:x3; op1val:0x7fffefff;  op2val:0xf7ff0008
TEST_PKRR_OP(kmsxda, x3, x4, x28, 0x00000000, 0x7fffefff, 0xf7ff0008, x4, x10, 48, x11)

inst_7:
// rs1==x26, rs2==x22, rd==x21, rs2_h1_val == -21846, rs2_h0_val == 1024, rs1_h0_val == 16384
// opcode: kmsxda ; op1:x26; op2:x22; dest:x21; op1val:0x074000;  op2val:0xaaaa0400
TEST_PKRR_OP(kmsxda, x21, x26, x22, 0x00000000, 0x074000, 0xaaaa0400, x26, x10, 56, x11)

inst_8:
// rs1==x31, rs2==x6, rd==x30, rs2_h1_val == 21845, rs1_h1_val == 8, rs1_h0_val == 16
// opcode: kmsxda ; op1:x31; op2:x6; dest:x30; op1val:0x080010;  op2val:0x55550006
TEST_PKRR_OP(kmsxda, x30, x31, x6, 0x00000000, 0x080010, 0x55550006, x31, x10, 64, x11)

inst_9:
// rs1==x7, rs2==x8, rd==x1, rs2_h1_val == 32767, rs1_h1_val == 16384, rs2_h0_val == -17
// opcode: kmsxda ; op1:x7; op2:x8; dest:x1; op1val:0x40008000;  op2val:0x7fffffef
TEST_PKRR_OP(kmsxda, x1, x7, x8, 0x00000000, 0x40008000, 0x7fffffef, x7, x10, 72, x11)

inst_10:
// rs1==x15, rs2==x29, rd==x20, rs2_h1_val == -16385, rs1_h1_val == 16, rs1_h0_val == 8192
// opcode: kmsxda ; op1:x15; op2:x29; dest:x20; op1val:0x102000;  op2val:0xbfffc000
TEST_PKRR_OP(kmsxda, x20, x15, x29, 0x00000000, 0x102000, 0xbfffc000, x15, x10, 80, x11)

inst_11:
// rs1==x29, rs2==x15, rd==x26, rs2_h1_val == -8193, rs1_h1_val == 1
// opcode: kmsxda ; op1:x29; op2:x15; dest:x26; op1val:0x01c000;  op2val:0xdffffff9
TEST_PKRR_OP(kmsxda, x26, x29, x15, 0x00000000, 0x01c000, 0xdffffff9, x29, x10, 88, x11)

inst_12:
// rs1==x3, rs2==x30, rd==x9, rs2_h1_val == -4097, rs2_h0_val == -2, rs1_h1_val == 2048
// opcode: kmsxda ; op1:x3; op2:x30; dest:x9; op1val:0x8000006;  op2val:0xeffffffe
TEST_PKRR_OP(kmsxda, x9, x3, x30, 0x00000000, 0x8000006, 0xeffffffe, x3, x10, 96, x11)

inst_13:
// rs1==x5, rs2==x27, rd==x12, rs2_h1_val == -1025, rs1_h1_val == -9, rs2_h0_val == 128
// opcode: kmsxda ; op1:x5; op2:x27; dest:x12; op1val:0xfff7fff9;  op2val:0xfbff0080
TEST_PKRR_OP(kmsxda, x12, x5, x27, 0x00000000, 0xfff7fff9, 0xfbff0080, x5, x10, 104, x11)

inst_14:
// rs1==x8, rs2==x26, rd==x17, rs2_h1_val == -513, rs1_h1_val == 4096, rs1_h0_val == -129
// opcode: kmsxda ; op1:x8; op2:x26; dest:x17; op1val:0x1000ff7f;  op2val:0xfdff0008
TEST_PKRR_OP(kmsxda, x17, x8, x26, 0x00000000, 0x1000ff7f, 0xfdff0008, x8, x10, 112, x5)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_15:
// rs1==x9, rs2==x25, rd==x4, rs2_h1_val == -257, rs2_h0_val == -3
// opcode: kmsxda ; op1:x9; op2:x25; dest:x4; op1val:0x4000fff9;  op2val:0xfefffffd
TEST_PKRR_OP(kmsxda, x4, x9, x25, 0x00000000, 0x4000fff9, 0xfefffffd, x9, x3, 0, x5)

inst_16:
// rs1==x6, rs2==x19, rd==x31, rs2_h1_val == -65, rs2_h0_val == 2, rs1_h0_val == 256
// opcode: kmsxda ; op1:x6; op2:x19; dest:x31; op1val:0xfff70100;  op2val:0xffbf0002
TEST_PKRR_OP(kmsxda, x31, x6, x19, 0x00000000, 0xfff70100, 0xffbf0002, x6, x3, 8, x5)

inst_17:
// rs1==x17, rs2==x11, rd==x19, rs2_h1_val == -33, 
// opcode: kmsxda ; op1:x17; op2:x11; dest:x19; op1val:0xeffffffa;  op2val:0xffdfc000
TEST_PKRR_OP(kmsxda, x19, x17, x11, 0x00000000, 0xeffffffa, 0xffdfc000, x17, x3, 16, x5)

inst_18:
// rs1==x21, rs2==x9, rd==x25, rs2_h1_val == -17, rs1_h1_val == -17, rs1_h0_val == 64
// opcode: kmsxda ; op1:x21; op2:x9; dest:x25; op1val:0xffef0040;  op2val:0xffef0002
TEST_PKRR_OP(kmsxda, x25, x21, x9, 0x00000000, 0xffef0040, 0xffef0002, x21, x3, 24, x5)

inst_19:
// rs1==x25, rs2==x2, rd==x29, rs2_h1_val == -9, rs1_h0_val == -65, rs2_h0_val == 2048
// opcode: kmsxda ; op1:x25; op2:x2; dest:x29; op1val:0xfff6ffbf;  op2val:0xfff70800
TEST_PKRR_OP(kmsxda, x29, x25, x2, 0x00000000, 0xfff6ffbf, 0xfff70800, x25, x3, 32, x5)

inst_20:
// rs1==x23, rs2==x12, rd==x24, rs2_h1_val == -5, rs1_h0_val == -1, rs2_h0_val == -4097, rs1_h1_val == -129
// opcode: kmsxda ; op1:x23; op2:x12; dest:x24; op1val:0xff7fffff;  op2val:0xfffbefff
TEST_PKRR_OP(kmsxda, x24, x23, x12, 0x00000000, 0xff7fffff, 0xfffbefff, x23, x3, 40, x5)

inst_21:
// rs1==x0, rs2==x17, rd==x6, rs2_h1_val == -3, 
// opcode: kmsxda ; op1:x0; op2:x17; dest:x6; op1val:0x090005;  op2val:0xfffdff7f
TEST_PKRR_OP(kmsxda, x6, x0, x17, 0x00000000, 0x090005, 0xfffdff7f, x0, x3, 48, x5)

inst_22:
// rs1==x27, rs2==x18, rd==x7, rs2_h1_val == -2, rs2_h0_val == -1025, rs1_h0_val == -9
// opcode: kmsxda ; op1:x27; op2:x18; dest:x7; op1val:0xfffcfff7;  op2val:0xfffefbff
TEST_PKRR_OP(kmsxda, x7, x27, x18, 0x00000000, 0xfffcfff7, 0xfffefbff, x27, x3, 56, x5)

inst_23:
// rs1==x16, rs2==x23, rd==x15, rs2_h1_val == -32768, rs2_h0_val == -32768
// opcode: kmsxda ; op1:x16; op2:x23; dest:x15; op1val:0xfff90005;  op2val:0x80008000
TEST_PKRR_OP(kmsxda, x15, x16, x23, 0x00000000, 0xfff90005, 0x80008000, x16, x3, 64, x5)

inst_24:
// rs1==x1, rs2==x0, rd==x10, rs2_h1_val == 8192, rs1_h0_val == 4096
// opcode: kmsxda ; op1:x1; op2:x0; dest:x10; op1val:0x071000;  op2val:0x20000003
TEST_PKRR_OP(kmsxda, x10, x1, x0, 0x00000000, 0x071000, 0x20000003, x1, x3, 72, x5)

inst_25:
// rs1==x30, rs2==x1, rd==x27, rs2_h1_val == 4096, rs1_h1_val == -1
// opcode: kmsxda ; op1:x30; op2:x1; dest:x27; op1val:0xfffffff6;  op2val:0x10000400
TEST_PKRR_OP(kmsxda, x27, x30, x1, 0x00000000, 0xfffffff6, 0x10000400, x30, x3, 80, x5)

inst_26:
// rs1==x28, rs2==x10, rd==x0, rs2_h1_val == 2048, rs1_h0_val == -16385
// opcode: kmsxda ; op1:x28; op2:x10; dest:x0; op1val:0x10bfff;  op2val:0x800fffc
TEST_PKRR_OP(kmsxda, x0, x28, x10, 0x00000000, 0x10bfff, 0x800fffc, x28, x3, 88, x5)

inst_27:
// rs1==x20, rs2==x31, rd==x11, rs2_h1_val == 1024, rs2_h0_val == 512, rs1_h1_val == 2
// opcode: kmsxda ; op1:x20; op2:x31; dest:x11; op1val:0x023fff;  op2val:0x4000200
TEST_PKRR_OP(kmsxda, x11, x20, x31, 0x00000000, 0x023fff, 0x4000200, x20, x3, 96, x5)

inst_28:
// rs1==x2, rs2==x21, rd==x8, rs2_h1_val == 256, rs1_h1_val == 0
// opcode: kmsxda ; op1:x2; op2:x21; dest:x8; op1val:0x00ffff;  op2val:0x100c000
TEST_PKRR_OP(kmsxda, x8, x2, x21, 0x00000000, 0x00ffff, 0x100c000, x2, x3, 104, x4)

inst_29:
// rs1==x10, rs2==x16, rd==x28, rs2_h1_val == 64, 
// opcode: kmsxda ; op1:x10; op2:x16; dest:x28; op1val:0x55550005;  op2val:0x40feff
TEST_PKRR_OP(kmsxda, x28, x10, x16, 0x00000000, 0x55550005, 0x40feff, x10, x3, 112, x4)

inst_30:
// rs1==x12, rs2==x14, rd==x22, rs2_h1_val == 32, rs1_h0_val == 2
// opcode: kmsxda ; op1:x12; op2:x14; dest:x22; op1val:0xfffc0002;  op2val:0x20fffd
TEST_PKRR_OP(kmsxda, x22, x12, x14, 0x00000000, 0xfffc0002, 0x20fffd, x12, x3, 120, x4)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_31:
// rs1==x11, rs2==x20, rd==x16, rs2_h1_val == 16, rs1_h0_val == 0, rs2_h0_val == 0
// opcode: kmsxda ; op1:x11; op2:x20; dest:x16; op1val:0x090000;  op2val:0x100000
TEST_PKRR_OP(kmsxda, x16, x11, x20, 0x00000000, 0x090000, 0x100000, x11, x1, 0, x4)

inst_32:
// rs1_h0_val == -1025, rs2_h1_val == 8, rs2_h0_val == 16384
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffbff;  op2val:0x084000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xff7ffbff, 0x084000, x30, x1, 8, x4)

inst_33:
// rs1_h0_val == -257, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x00feff;  op2val:0x20feff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x00feff, 0x20feff, x30, x1, 16, x4)

inst_34:
// rs1_h0_val == -33, rs1_h1_val == 256
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x100ffdf;  op2val:0x55550009
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x100ffdf, 0x55550009, x30, x1, 24, x4)

inst_35:
// rs1_h0_val == -17, rs2_h0_val == -2049
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x02ffef;  op2val:0xfffaf7ff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x02ffef, 0xfffaf7ff, x30, x1, 32, x4)

inst_36:
// rs1_h0_val == -5, rs2_h0_val == 32767
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x400fffb;  op2val:0x107fff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x400fffb, 0x107fff, x30, x1, 40, x4)

inst_37:
// rs1_h0_val == -3, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfff6fffd;  op2val:0x10000003
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfff6fffd, 0x10000003, x30, x1, 48, x4)

inst_38:
// rs1_h0_val == 2048, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfffa0800;  op2val:0xefffff7f
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfffa0800, 0xefffff7f, x30, x1, 56, x4)

inst_39:
// rs1_h0_val == 1024, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xffdf0400;  op2val:0x080007
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xffdf0400, 0x080007, x30, x1, 64, x4)

inst_40:
// rs1_h0_val == 512, rs2_h0_val == 1
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x030200;  op2val:0x10000001
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x030200, 0x10000001, x30, x1, 72, x4)

inst_41:
// rs1_h0_val == 128, rs1_h1_val == -65
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0080;  op2val:0x400006
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xffbf0080, 0x400006, x30, x1, 80, x4)

inst_42:
// rs1_h0_val == 32, rs2_h0_val == -9
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x020020;  op2val:0xdffffff7
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x020020, 0xdffffff7, x30, x1, 88, x4)

inst_43:
// rs1_h0_val == 8, rs2_h1_val == 2
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xff7f0008;  op2val:0x02fff8
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xff7f0008, 0x02fff8, x30, x1, 96, x4)

inst_44:
// rs1_h0_val == 4, rs1_h1_val == -513
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfdff0004;  op2val:0xfefffff7
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfdff0004, 0xfefffff7, x30, x1, 104, x4)

inst_45:
// rs2_h1_val == 4, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fff8;  op2val:0x040009
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfff9fff8, 0x040009, x30, x1, 112, x4)

inst_46:
// rs2_h1_val == 1, rs1_h1_val == -21846, rs2_h0_val == 4096
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa8000;  op2val:0x011000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xaaaa8000, 0x011000, x30, x1, 120, x4)

inst_47:
// rs2_h1_val == 0, rs2_h0_val == 4
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffef;  op2val:0x000004
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x1000ffef, 0x000004, x30, x1, 128, x4)

inst_48:
// rs2_h1_val == -1, rs1_h0_val == -8193
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x09dfff;  op2val:0xffff0000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x09dfff, 0xffff0000, x30, x1, 136, x4)

inst_49:
// rs2_h0_val == -5, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x1000000;  op2val:0x1000fffb
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x1000000, 0x1000fffb, x30, x1, 144, x4)

inst_50:
// rs2_h0_val == 8192, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaffdf;  op2val:0xffdf2000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xaaaaffdf, 0xffdf2000, x30, x1, 152, x4)

inst_51:
// rs2_h0_val == 256, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfffbdfff;  op2val:0xffef0100
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfffbdfff, 0xffef0100, x30, x1, 160, x4)

inst_52:
// rs2_h0_val == 64, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xffff0020;  op2val:0xffef0040
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xffff0020, 0xffef0040, x30, x1, 168, x4)

inst_53:
// rs2_h0_val == 32, rs1_h1_val == -2049
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffeff;  op2val:0x010020
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xf7fffeff, 0x010020, x30, x1, 176, x4)

inst_54:
// rs2_h0_val == 16, rs1_h1_val == -32768
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x80000003;  op2val:0x100010
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x80000003, 0x100010, x30, x1, 184, x4)

inst_55:
// rs2_h0_val == -1, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x02fff6;  op2val:0xfffcffff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x02fff6, 0xfffcffff, x30, x1, 192, x4)

inst_56:
// rs1_h1_val == -16385, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffbf;  op2val:0xffdf2000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xbfffffbf, 0xffdf2000, x30, x1, 200, x4)

inst_57:
// rs1_h1_val == -8193, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xdfff0080;  op2val:0x7fff2000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xdfff0080, 0x7fff2000, x30, x1, 208, x4)

inst_58:
// rs1_h1_val == -1025, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffffa;  op2val:0xfff7fff7
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfbfffffa, 0xfff7fff7, x30, x1, 216, x4)

inst_59:
// rs1_h1_val == -257, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfefffffd;  op2val:0xaaaa0007
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfefffffd, 0xaaaa0007, x30, x1, 224, x4)

inst_60:
// rs1_h1_val == -3, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0000;  op2val:0x4000040
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfffd0000, 0x4000040, x30, x1, 232, x4)

inst_61:
// rs1_h1_val == -2, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfffefff7;  op2val:0x1000003
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfffefff7, 0x1000003, x30, x1, 240, x4)

inst_62:
// rs1_h1_val == 8192, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x20000009;  op2val:0xfeff0007
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x20000009, 0xfeff0007, x30, x1, 248, x4)

inst_63:
// rs1_h1_val == 128, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x80fff8;  op2val:0x040020
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x80fff8, 0x040020, x30, x1, 256, x4)

inst_64:
// rs1_h1_val == 64, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x400080;  op2val:0x4000fffe
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x400080, 0x4000fffe, x30, x1, 264, x4)

inst_65:
// rs1_h1_val == 32, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x200100;  op2val:0xf7ff0080
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x200100, 0xf7ff0080, x30, x1, 272, x4)

inst_66:
// rs2_h0_val == 21845, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x200fff7;  op2val:0x20005555
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x200fff7, 0x20005555, x30, x1, 280, x4)

inst_67:
// rs2_h0_val == -16385, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x02fffb;  op2val:0x07bfff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x02fffb, 0x07bfff, x30, x1, 288, x4)

inst_68:
// rs1_h1_val == 4, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x04ffef;  op2val:0xffefc000
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x04ffef, 0xffefc000, x30, x1, 296, x4)

inst_69:
// rs2_h0_val == -8193, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffff7;  op2val:0xefffdfff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x7ffffff7, 0xefffdfff, x30, x1, 304, x4)

inst_70:
// rs1_h0_val == -21846, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x01aaaa;  op2val:0x3fffaaaa
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x01aaaa, 0x3fffaaaa, x30, x1, 312, x4)

inst_71:
// rs1_h0_val == 21845, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x40005555;  op2val:0xfffc0004
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x40005555, 0xfffc0004, x30, x1, 320, x4)

inst_72:
// rs1_h0_val == 32767, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff7fff;  op2val:0x027fff
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xf7ff7fff, 0x027fff, x30, x1, 328, x4)

inst_73:
// rs2_h0_val == -65, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x010007;  op2val:0x04ffbf
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x010007, 0x04ffbf, x30, x1, 336, x4)

inst_74:
// rs2_h0_val == -33, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xfff61000;  op2val:0xfff9ffdf
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xfff61000, 0xfff9ffdf, x30, x1, 344, x4)

inst_75:
// rs1_h0_val == -2049, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0xbffff7ff;  op2val:0x20000003
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0xbffff7ff, 0x20000003, x30, x1, 352, x4)

inst_76:
// rs1_h1_val == rs2_h1_val, rs2_h0_val == -129, rs1_h1_val == 512, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h1_val == 512
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x2003fff;  op2val:0x200ff7f
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x2003fff, 0x200ff7f, x30, x1, 360, x4)

inst_77:
// rs2_h1_val == -3, 
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x090005;  op2val:0xfffdff7f
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x090005, 0xfffdff7f, x30, x1, 368, x4)

inst_78:
// rs2_h1_val == 2048, rs1_h0_val == -16385
// opcode: kmsxda ; op1:x30; op2:x29; dest:x31; op1val:0x10bfff;  op2val:0x800fffc
TEST_PKRR_OP(kmsxda, x31, x30, x29, 0x00000000, 0x10bfff, 0x800fffc, x30, x1, 376, x4)
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
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 96*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
