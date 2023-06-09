
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
// This assembly file tests the sub16 instruction of the RISC-V RV32PZicsr extension for the sub16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sub16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x30, rs2==x28, rd==x18, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h0_val == 4
// opcode: sub16 ; op1:x30; op2:x28; dest:x18; op1val:0xfffa8000;  op2val:0xc0000004
TEST_RR_OP(sub16, x18, x30, x28, 0x00000000, 0xfffa8000, 0xc0000004, x1, 0, x6)

inst_1:
// rs1 == rs2 != rd, rs1==x11, rs2==x11, rd==x15, rs1_h1_val == rs2_h1_val, rs1_h1_val == -2, rs2_h1_val == -2
// opcode: sub16 ; op1:x11; op2:x11; dest:x15; op1val:0xfffec000;  op2val:0xfffe0006
TEST_RR_OP(sub16, x15, x11, x11, 0x00000000, 0xfffec000, 0xfffe0006, x1, 4, x6)

inst_2:
// rs1 == rd != rs2, rs1==x5, rs2==x27, rd==x5, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h1_val == -9, rs2_h1_val == 512, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h0_val == 64, rs2_h0_val == -257
// opcode: sub16 ; op1:x5; op2:x27; dest:x5; op1val:0xfff70040;  op2val:0x200feff
TEST_RR_OP(sub16, x5, x5, x27, 0x00000000, 0xfff70040, 0x200feff, x1, 8, x6)

inst_3:
// rs1 == rs2 == rd, rs1==x24, rs2==x24, rd==x24, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -1, rs2_h0_val == -32768, rs1_h0_val == 512
// opcode: sub16 ; op1:x24; op2:x24; dest:x24; op1val:0x070200;  op2val:0xffff8000
TEST_RR_OP(sub16, x24, x24, x24, 0x00000000, 0x070200, 0xffff8000, x1, 12, x6)

inst_4:
// rs2 == rd != rs1, rs1==x2, rs2==x14, rd==x14, rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h1_val == 8, rs2_h0_val == 32
// opcode: sub16 ; op1:x2; op2:x14; dest:x14; op1val:0x03c000;  op2val:0x080020
TEST_RR_OP(sub16, x14, x2, x14, 0x00000000, 0x03c000, 0x080020, x1, 16, x6)

inst_5:
// rs1==x15, rs2==x21, rd==x30, rs1_h0_val == rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val < 0, rs2_h0_val == -33, rs1_h0_val == -33, rs2_h1_val == -129
// opcode: sub16 ; op1:x15; op2:x21; dest:x30; op1val:0xfff9ffdf;  op2val:0xff7fffdf
TEST_RR_OP(sub16, x30, x15, x21, 0x00000000, 0xfff9ffdf, 0xff7fffdf, x1, 20, x6)

inst_6:
// rs1==x25, rs2==x20, rd==x31, rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val == -33, rs2_h1_val == -4097, rs1_h0_val == 16384, rs2_h0_val == 4096
// opcode: sub16 ; op1:x25; op2:x20; dest:x31; op1val:0xffdf4000;  op2val:0xefff1000
TEST_RR_OP(sub16, x31, x25, x20, 0x00000000, 0xffdf4000, 0xefff1000, x1, 24, x6)

inst_7:
// rs1==x9, rs2==x15, rd==x12, rs2_h1_val == -21846, rs2_h0_val == -5, rs1_h1_val == -8193, rs1_h0_val == -9
// opcode: sub16 ; op1:x9; op2:x15; dest:x12; op1val:0xdffffff7;  op2val:0xaaaafffb
TEST_RR_OP(sub16, x12, x9, x15, 0x00000000, 0xdffffff7, 0xaaaafffb, x1, 28, x6)

inst_8:
// rs1==x4, rs2==x8, rd==x25, rs2_h1_val == 21845, rs1_h0_val == -21846, rs1_h1_val == 32767
// opcode: sub16 ; op1:x4; op2:x8; dest:x25; op1val:0x7fffaaaa;  op2val:0x5555feff
TEST_RR_OP(sub16, x25, x4, x8, 0x00000000, 0x7fffaaaa, 0x5555feff, x1, 32, x6)

inst_9:
// rs1==x22, rs2==x25, rd==x16, rs2_h1_val == 32767, rs1_h0_val == 128, rs1_h1_val == 1024, rs2_h0_val == 8
// opcode: sub16 ; op1:x22; op2:x25; dest:x16; op1val:0x4000080;  op2val:0x7fff0008
TEST_RR_OP(sub16, x16, x22, x25, 0x00000000, 0x4000080, 0x7fff0008, x1, 36, x6)

inst_10:
// rs1==x23, rs2==x13, rd==x26, rs2_h1_val == -16385, rs1_h1_val == 4096, rs1_h0_val == -8193
// opcode: sub16 ; op1:x23; op2:x13; dest:x26; op1val:0x1000dfff;  op2val:0xbfff8000
TEST_RR_OP(sub16, x26, x23, x13, 0x00000000, 0x1000dfff, 0xbfff8000, x1, 40, x6)

inst_11:
// rs1==x27, rs2==x9, rd==x29, rs2_h1_val == -8193, rs1_h1_val == 32, rs2_h0_val == -16385
// opcode: sub16 ; op1:x27; op2:x9; dest:x29; op1val:0x200040;  op2val:0xdfffbfff
TEST_RR_OP(sub16, x29, x27, x9, 0x00000000, 0x200040, 0xdfffbfff, x1, 44, x6)

inst_12:
// rs1==x13, rs2==x3, rd==x23, rs2_h1_val == -2049, rs1_h0_val == -1, rs1_h1_val == -32768
// opcode: sub16 ; op1:x13; op2:x3; dest:x23; op1val:0x8000ffff;  op2val:0xf7ff0005
TEST_RR_OP(sub16, x23, x13, x3, 0x00000000, 0x8000ffff, 0xf7ff0005, x1, 48, x6)

inst_13:
// rs1==x21, rs2==x10, rd==x20, rs2_h1_val == -1025, rs2_h0_val == 256
// opcode: sub16 ; op1:x21; op2:x10; dest:x20; op1val:0x06fffc;  op2val:0xfbff0100
TEST_RR_OP(sub16, x20, x21, x10, 0x00000000, 0x06fffc, 0xfbff0100, x1, 52, x6)

inst_14:
// rs1==x19, rs2==x6, rd==x22, rs2_h1_val == -513, rs1_h1_val == 16384, rs1_h0_val == 1024
// opcode: sub16 ; op1:x19; op2:x6; dest:x22; op1val:0x40000400;  op2val:0xfdfffffc
TEST_RR_OP(sub16, x22, x19, x6, 0x00000000, 0x40000400, 0xfdfffffc, x1, 56, x10)
RVTEST_SIGBASE(x5,signature_x5_0)

inst_15:
// rs1==x14, rs2==x0, rd==x28, rs2_h1_val == -257, rs1_h1_val == -2049
// opcode: sub16 ; op1:x14; op2:x0; dest:x28; op1val:0xf7fffff6;  op2val:0xfeff0007
TEST_RR_OP(sub16, x28, x14, x0, 0x00000000, 0xf7fffff6, 0xfeff0007, x5, 0, x10)

inst_16:
// rs1==x28, rs2==x31, rd==x1, rs2_h1_val == -65, rs1_h0_val == 0, rs2_h0_val == -1
// opcode: sub16 ; op1:x28; op2:x31; dest:x1; op1val:0x4000000;  op2val:0xffbfffff
TEST_RR_OP(sub16, x1, x28, x31, 0x00000000, 0x4000000, 0xffbfffff, x5, 4, x10)

inst_17:
// rs1==x3, rs2==x30, rd==x7, rs2_h1_val == -33, rs1_h1_val == 16, rs1_h0_val == -2
// opcode: sub16 ; op1:x3; op2:x30; dest:x7; op1val:0x10fffe;  op2val:0xffdffff6
TEST_RR_OP(sub16, x7, x3, x30, 0x00000000, 0x10fffe, 0xffdffff6, x5, 8, x10)

inst_18:
// rs1==x26, rs2==x12, rd==x4, rs2_h1_val == -17, 
// opcode: sub16 ; op1:x26; op2:x12; dest:x4; op1val:0xfffc0040;  op2val:0xffefbfff
TEST_RR_OP(sub16, x4, x26, x12, 0x00000000, 0xfffc0040, 0xffefbfff, x5, 12, x10)

inst_19:
// rs1==x0, rs2==x19, rd==x27, rs2_h1_val == -9, rs1_h1_val == 8192
// opcode: sub16 ; op1:x0; op2:x19; dest:x27; op1val:0x2000aaaa;  op2val:0xfff70100
TEST_RR_OP(sub16, x27, x0, x19, 0x00000000, 0x2000aaaa, 0xfff70100, x5, 16, x10)

inst_20:
// rs1==x18, rs2==x23, rd==x8, rs2_h1_val == -5, rs2_h0_val == -17
// opcode: sub16 ; op1:x18; op2:x23; dest:x8; op1val:0x4000006;  op2val:0xfffbffef
TEST_RR_OP(sub16, x8, x18, x23, 0x00000000, 0x4000006, 0xfffbffef, x5, 20, x10)

inst_21:
// rs1==x7, rs2==x22, rd==x3, rs2_h1_val == -3, rs1_h1_val == 0
// opcode: sub16 ; op1:x7; op2:x22; dest:x3; op1val:0x00aaaa;  op2val:0xfffdc000
TEST_RR_OP(sub16, x3, x7, x22, 0x00000000, 0x00aaaa, 0xfffdc000, x5, 24, x10)

inst_22:
// rs1==x31, rs2==x29, rd==x13, rs2_h1_val == -32768, 
// opcode: sub16 ; op1:x31; op2:x29; dest:x13; op1val:0x3fff0000;  op2val:0x8000fffc
TEST_RR_OP(sub16, x13, x31, x29, 0x00000000, 0x3fff0000, 0x8000fffc, x5, 28, x10)

inst_23:
// rs1==x16, rs2==x1, rd==x21, rs2_h1_val == 16384, rs2_h0_val == -2
// opcode: sub16 ; op1:x16; op2:x1; dest:x21; op1val:0x10fff7;  op2val:0x4000fffe
TEST_RR_OP(sub16, x21, x16, x1, 0x00000000, 0x10fff7, 0x4000fffe, x5, 32, x10)

inst_24:
// rs1==x6, rs2==x4, rd==x2, rs2_h1_val == 8192, 
// opcode: sub16 ; op1:x6; op2:x4; dest:x2; op1val:0xfffc0006;  op2val:0x2000fffa
TEST_RR_OP(sub16, x2, x6, x4, 0x00000000, 0xfffc0006, 0x2000fffa, x5, 36, x10)

inst_25:
// rs1==x8, rs2==x18, rd==x9, rs2_h1_val == 4096, rs2_h0_val == 512, rs1_h1_val == 2048, rs1_h0_val == -16385
// opcode: sub16 ; op1:x8; op2:x18; dest:x9; op1val:0x800bfff;  op2val:0x10000200
TEST_RR_OP(sub16, x9, x8, x18, 0x00000000, 0x800bfff, 0x10000200, x5, 40, x10)

inst_26:
// rs1==x20, rs2==x16, rd==x11, rs2_h1_val == 2048, rs1_h1_val == 128
// opcode: sub16 ; op1:x20; op2:x16; dest:x11; op1val:0x804000;  op2val:0x8000100
TEST_RR_OP(sub16, x11, x20, x16, 0x00000000, 0x804000, 0x8000100, x5, 44, x10)

inst_27:
// rs1==x29, rs2==x2, rd==x17, rs2_h1_val == 1024, rs2_h0_val == -129
// opcode: sub16 ; op1:x29; op2:x2; dest:x17; op1val:0x8000006;  op2val:0x400ff7f
TEST_RR_OP(sub16, x17, x29, x2, 0x00000000, 0x8000006, 0x400ff7f, x5, 48, x10)

inst_28:
// rs1==x17, rs2==x7, rd==x10, rs2_h1_val == 256, rs1_h0_val == 16, rs1_h1_val == -257
// opcode: sub16 ; op1:x17; op2:x7; dest:x10; op1val:0xfeff0010;  op2val:0x100fff6
TEST_RR_OP(sub16, x10, x17, x7, 0x00000000, 0xfeff0010, 0x100fff6, x5, 52, x3)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_29:
// rs1==x10, rs2==x26, rd==x0, rs2_h1_val == 128, rs1_h1_val == -513, rs2_h0_val == 2048
// opcode: sub16 ; op1:x10; op2:x26; dest:x0; op1val:0xfdfffff9;  op2val:0x800800
TEST_RR_OP(sub16, x0, x10, x26, 0x00000000, 0xfdfffff9, 0x800800, x2, 0, x3)

inst_30:
// rs1==x1, rs2==x5, rd==x6, rs2_h1_val == 64, 
// opcode: sub16 ; op1:x1; op2:x5; dest:x6; op1val:0xfff9fff6;  op2val:0x40ffdf
TEST_RR_OP(sub16, x6, x1, x5, 0x00000000, 0xfff9fff6, 0x40ffdf, x2, 4, x3)

inst_31:
// rs1==x12, rs2==x17, rd==x19, rs2_h1_val == 32, rs2_h0_val == -3, rs1_h0_val == 21845
// opcode: sub16 ; op1:x12; op2:x17; dest:x19; op1val:0x035555;  op2val:0x20fffd
TEST_RR_OP(sub16, x19, x12, x17, 0x00000000, 0x035555, 0x20fffd, x2, 8, x3)

inst_32:
// rs2_h1_val == 16, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff90007;  op2val:0x100200
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfff90007, 0x100200, x2, 12, x3)

inst_33:
// rs1_h0_val == -1025, rs1_h1_val == 512
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x200fbff;  op2val:0x05bfff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x200fbff, 0x05bfff, x2, 16, x3)

inst_34:
// rs1_h0_val == -513, rs1_h1_val == -129
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffdff;  op2val:0xfffb0003
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xff7ffdff, 0xfffb0003, x2, 20, x3)

inst_35:
// rs1_h0_val == -257, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffeff;  op2val:0xfffefffe
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x7ffffeff, 0xfffefffe, x2, 24, x3)

inst_36:
// rs1_h0_val == -129, rs2_h0_val == -9
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffff7f;  op2val:0x03fff7
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xf7ffff7f, 0x03fff7, x2, 28, x3)

inst_37:
// rs1_h0_val == -65, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffffbf;  op2val:0x051000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xdfffffbf, 0x051000, x2, 32, x3)

inst_38:
// rs1_h0_val == -17, rs1_h1_val == -1
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef;  op2val:0x1000007
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffffffef, 0x1000007, x2, 36, x3)

inst_39:
// rs1_h0_val == -5, rs2_h0_val == -513, rs1_h1_val == 2
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x02fffb;  op2val:0xfbfffdff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x02fffb, 0xfbfffdff, x2, 40, x3)

inst_40:
// rs1_h0_val == -3, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000fffd;  op2val:0xdfff0007
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x8000fffd, 0xdfff0007, x2, 44, x3)

inst_41:
// rs1_h0_val == 8192, rs1_h1_val == -1025
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff2000;  op2val:0x07fffe
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfbff2000, 0x07fffe, x2, 48, x3)

inst_42:
// rs1_h0_val == 4096, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x031000;  op2val:0xfffbfffd
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x031000, 0xfffbfffd, x2, 52, x3)

inst_43:
// rs1_h0_val == 2048, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0800;  op2val:0xffdf8000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfeff0800, 0xffdf8000, x2, 56, x3)

inst_44:
// rs1_h0_val == 256, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x000100;  op2val:0xfffdfdff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x000100, 0xfffdfdff, x2, 60, x3)

inst_45:
// rs1_h0_val == 32, rs2_h0_val == -8193
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x3fff0020;  op2val:0x8000dfff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x3fff0020, 0x8000dfff, x2, 64, x3)

inst_46:
// rs1_h0_val == 8, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc0008;  op2val:0x03c000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfffc0008, 0x03c000, x2, 68, x3)

inst_47:
// rs1_h0_val == 4, rs1_h1_val == -65
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0004;  op2val:0xfffefeff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffbf0004, 0xfffefeff, x2, 72, x3)

inst_48:
// rs1_h0_val == 2, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0002;  op2val:0xffbffff9
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x7fff0002, 0xffbffff9, x2, 76, x3)

inst_49:
// rs1_h0_val == 1, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x030001;  op2val:0xfffbfff9
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x030001, 0xfffbfff9, x2, 80, x3)

inst_50:
// rs2_h1_val == 4, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf3fff;  op2val:0x04fff6
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffbf3fff, 0x04fff6, x2, 84, x3)

inst_51:
// rs2_h1_val == 2, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9dfff;  op2val:0x02feff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfff9dfff, 0x02feff, x2, 88, x3)

inst_52:
// rs2_h1_val == 1, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x20008000;  op2val:0x011000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x20008000, 0x011000, x2, 92, x3)

inst_53:
// rs2_h1_val == 0, rs2_h0_val == -1025
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc2000;  op2val:0x00fbff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfffc2000, 0x00fbff, x2, 96, x3)

inst_54:
// rs2_h0_val == 16384, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff;  op2val:0xbfff4000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffffdfff, 0xbfff4000, x2, 100, x3)

inst_55:
// rs2_h0_val == 8192, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x200fff6;  op2val:0x202000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x200fff6, 0x202000, x2, 104, x3)

inst_56:
// rs2_h0_val == 1024, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x054000;  op2val:0x2000400
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x054000, 0x2000400, x2, 108, x3)

inst_57:
// rs2_h0_val == 128, rs1_h0_val == -4097
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffefff;  op2val:0xc0000080
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfbffefff, 0xc0000080, x2, 112, x3)

inst_58:
// rs2_h0_val == 64, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000000;  op2val:0xfff70040
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x40000000, 0xfff70040, x2, 116, x3)

inst_59:
// rs2_h0_val == 16, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff90008;  op2val:0xfff90010
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfff90008, 0xfff90010, x2, 120, x3)

inst_60:
// rs2_h0_val == 2, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x030040;  op2val:0x080002
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x030040, 0x080002, x2, 124, x3)

inst_61:
// rs2_h0_val == 1, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf0800;  op2val:0xefff0001
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffdf0800, 0xefff0001, x2, 128, x3)

inst_62:
// rs2_h0_val == 0, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x800005;  op2val:0xfffd0000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x800005, 0xfffd0000, x2, 132, x3)

inst_63:
// rs1_h1_val == -21846, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafff6;  op2val:0x3fff0004
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xaaaafff6, 0x3fff0004, x2, 136, x3)

inst_64:
// rs1_h1_val == 21845, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x55550080;  op2val:0x02ffff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x55550080, 0x02ffff, x2, 140, x3)

inst_65:
// rs1_h1_val == -16385, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfffefff;  op2val:0xdfff0400
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xbfffefff, 0xdfff0400, x2, 144, x3)

inst_66:
// rs1_h1_val == -4097, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff0009;  op2val:0xfff9c000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xefff0009, 0xfff9c000, x2, 148, x3)

inst_67:
// rs1_h1_val == -17, rs2_h0_val == 21845
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffdff;  op2val:0xfff95555
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffeffdff, 0xfff95555, x2, 152, x3)

inst_68:
// rs1_h1_val == -5, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffff;  op2val:0xffdf0003
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfffbffff, 0xffdf0003, x2, 156, x3)

inst_69:
// rs1_h1_val == -3, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffddfff;  op2val:0x3fff0000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfffddfff, 0x3fff0000, x2, 160, x3)

inst_70:
// rs1_h1_val == 256, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000007;  op2val:0x8000080
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x1000007, 0x8000080, x2, 164, x3)

inst_71:
// rs1_h1_val == 64, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x400001;  op2val:0x070040
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x400001, 0x070040, x2, 168, x3)

inst_72:
// rs2_h0_val == -21846, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0400;  op2val:0x3fffaaaa
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x7fff0400, 0x3fffaaaa, x2, 172, x3)

inst_73:
// rs2_h0_val == 32767, rs1_h0_val == -2049
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdff7ff;  op2val:0xfffc7fff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffdff7ff, 0xfffc7fff, x2, 176, x3)

inst_74:
// rs1_h1_val == 8, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x080080;  op2val:0x02ffef
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x080080, 0x02ffef, x2, 180, x3)

inst_75:
// rs1_h1_val == 4, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x040004;  op2val:0xfffd0006
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x040004, 0xfffd0006, x2, 184, x3)

inst_76:
// rs2_h0_val == -4097, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0800;  op2val:0x02efff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xffbf0800, 0x02efff, x2, 188, x3)

inst_77:
// rs1_h0_val == 32767, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x077fff;  op2val:0x2000ffdf
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x077fff, 0x2000ffdf, x2, 192, x3)

inst_78:
// rs2_h0_val == -65, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x02ffff;  op2val:0x01ffbf
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x02ffff, 0x01ffbf, x2, 196, x3)

inst_79:
// rs1_h1_val == 1, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x010008;  op2val:0xf7ff3fff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x010008, 0xf7ff3fff, x2, 200, x3)

inst_80:
// rs2_h0_val == -2049, 
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x100800;  op2val:0xfffcf7ff
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x100800, 0xfffcf7ff, x2, 204, x3)

inst_81:
// rs1_h1_val == rs2_h1_val, rs1_h1_val == -2, rs2_h1_val == -2
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffec000;  op2val:0xfffe0006
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfffec000, 0xfffe0006, x2, 208, x3)

inst_82:
// rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -1, rs2_h0_val == -32768, rs1_h0_val == 512
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0x070200;  op2val:0xffff8000
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0x070200, 0xffff8000, x2, 212, x3)

inst_83:
// rs2_h1_val == -257, rs1_h1_val == -2049
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffff6;  op2val:0xfeff0007
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xf7fffff6, 0xfeff0007, x2, 216, x3)

inst_84:
// rs2_h1_val == 128, rs1_h1_val == -513, rs2_h0_val == 2048
// opcode: sub16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdfffff9;  op2val:0x800800
TEST_RR_OP(sub16, x31, x30, x29, 0x00000000, 0xfdfffff9, 0x800800, x2, 220, x3)
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


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 14*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 56*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
