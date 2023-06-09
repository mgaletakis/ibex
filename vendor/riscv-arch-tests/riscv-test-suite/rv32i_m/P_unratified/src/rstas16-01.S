
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
// This assembly file tests the rstas16 instruction of the RISC-V RV32PZicsr extension for the rstas16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",rstas16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x14,signature_x14_1)

inst_0:// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x22, rd==x6, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h1_val == 1024, rs2_h1_val == 0, rs2_h0_val == -9
// opcode: rstas16 ; op1:x3; op2:x22; dest:x6; op1val:0x4008000;  op2val:0x00fff7
TEST_RR_OP(rstas16, x6, x3, x22, 0x00000000, 0x4008000, 0x00fff7, x14, 0, x17)

inst_1:// rs1 == rs2 != rd, rs1==x31, rs2==x31, rd==x20, rs1_h1_val == rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 32767, rs1_h1_val == 32767, rs1_h0_val == 1
// opcode: rstas16 ; op1:x31; op2:x31; dest:x20; op1val:0x7fff0001;  op2val:0x7fff0009
TEST_RR_OP(rstas16, x20, x31, x31, 0x00000000, 0x7fff0001, 0x7fff0009, x14, 4, x17)

inst_2:// rs1 == rd != rs2, rs1==x15, rs2==x0, rd==x15, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h0_val < 0 and rs2_h0_val > 0, rs1_h1_val == -5
// opcode: rstas16 ; op1:x15; op2:x0; dest:x15; op1val:0xfffb8000;  op2val:0x063fff
TEST_RR_OP(rstas16, x15, x15, x0, 0x00000000, 0xfffb8000, 0x063fff, x14, 8, x17)

inst_3:// rs1 == rs2 == rd, rs1==x9, rs2==x9, rd==x9, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h1_val == -1, rs1_h0_val == -65
// opcode: rstas16 ; op1:x9; op2:x9; dest:x9; op1val:0xc000ffbf;  op2val:0xfffffffc
TEST_RR_OP(rstas16, x9, x9, x9, 0x00000000, 0xc000ffbf, 0xfffffffc, x14, 12, x17)

inst_4:// rs2 == rd != rs1, rs1==x10, rs2==x27, rd==x27, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h0_val == 64, rs1_h1_val == 4, rs2_h1_val == -5, rs2_h0_val == -17
// opcode: rstas16 ; op1:x10; op2:x27; dest:x27; op1val:0x040040;  op2val:0xfffbffef
TEST_RR_OP(rstas16, x27, x10, x27, 0x00000000, 0x040040, 0xfffbffef, x14, 16, x17)

inst_5:// rs1==x24, rs2==x4, rd==x16, rs1_h0_val == rs2_h0_val, rs2_h1_val == 16384, rs1_h1_val == 4096, rs1_h0_val == -9
// opcode: rstas16 ; op1:x24; op2:x4; dest:x16; op1val:0x1000fff7;  op2val:0x4000fff7
TEST_RR_OP(rstas16, x16, x24, x4, 0x00000000, 0x1000fff7, 0x4000fff7, x14, 20, x17)

inst_6:// rs1==x16, rs2==x30, rd==x3, rs2_h1_val == -21846, rs1_h0_val == 32, rs2_h0_val == -16385, rs1_h1_val == 128
// opcode: rstas16 ; op1:x16; op2:x30; dest:x3; op1val:0x800020;  op2val:0xaaaabfff
TEST_RR_OP(rstas16, x3, x16, x30, 0x00000000, 0x800020, 0xaaaabfff, x14, 24, x17)

inst_7:// rs1==x1, rs2==x19, rd==x31, rs2_h1_val == 21845, rs2_h0_val == -21846, rs1_h1_val == 256
// opcode: rstas16 ; op1:x1; op2:x19; dest:x31; op1val:0x1000009;  op2val:0x5555aaaa
TEST_RR_OP(rstas16, x31, x1, x19, 0x00000000, 0x1000009, 0x5555aaaa, x14, 28, x17)

inst_8:// rs1==x28, rs2==x13, rd==x2, rs2_h1_val == -16385, rs1_h0_val == -5, rs1_h1_val == -2049
// opcode: rstas16 ; op1:x28; op2:x13; dest:x2; op1val:0xf7fffffb;  op2val:0xbffffff7
TEST_RR_OP(rstas16, x2, x28, x13, 0x00000000, 0xf7fffffb, 0xbffffff7, x14, 32, x17)

inst_9:// rs1==x8, rs2==x21, rd==x18, rs2_h1_val == -8193, rs1_h1_val == -16385, rs2_h0_val == -32768, rs1_h0_val == -16385
// opcode: rstas16 ; op1:x8; op2:x21; dest:x18; op1val:0xbfffbfff;  op2val:0xdfff8000
TEST_RR_OP(rstas16, x18, x8, x21, 0x00000000, 0xbfffbfff, 0xdfff8000, x14, 36, x17)

inst_10:// rs1==x2, rs2==x11, rd==x24, rs2_h1_val == -4097, 
// opcode: rstas16 ; op1:x2; op2:x11; dest:x24; op1val:0x1000009;  op2val:0xefff3fff
TEST_RR_OP(rstas16, x24, x2, x11, 0x00000000, 0x1000009, 0xefff3fff, x14, 40, x17)

inst_11:// rs1==x0, rs2==x7, rd==x4, rs2_h1_val == -2049, rs2_h0_val == 256, rs1_h0_val == -2049
// opcode: rstas16 ; op1:x0; op2:x7; dest:x4; op1val:0x05f7ff;  op2val:0xf7ff0100
TEST_RR_OP(rstas16, x4, x0, x7, 0x00000000, 0x05f7ff, 0xf7ff0100, x14, 44, x17)

inst_12:// rs1==x27, rs2==x10, rd==x12, rs2_h1_val == -1025, rs1_h0_val == -8193, rs2_h0_val == -65, rs1_h1_val == -513
// opcode: rstas16 ; op1:x27; op2:x10; dest:x12; op1val:0xfdffdfff;  op2val:0xfbffffbf
TEST_RR_OP(rstas16, x12, x27, x10, 0x00000000, 0xfdffdfff, 0xfbffffbf, x14, 48, x17)

inst_13:// rs1==x25, rs2==x8, rd==x7, rs2_h1_val == -513, rs2_h0_val == 1024, rs1_h0_val == 32767
// opcode: rstas16 ; op1:x25; op2:x8; dest:x7; op1val:0x807fff;  op2val:0xfdff0400
TEST_RR_OP(rstas16, x7, x25, x8, 0x00000000, 0x807fff, 0xfdff0400, x14, 52, x17)

inst_14:// rs1==x5, rs2==x25, rd==x11, rs2_h1_val == -257, rs2_h0_val == 512
// opcode: rstas16 ; op1:x5; op2:x25; dest:x11; op1val:0xf7ff0007;  op2val:0xfeff0200
TEST_RR_OP(rstas16, x11, x5, x25, 0x00000000, 0xf7ff0007, 0xfeff0200, x14, 56, x17)

inst_15:// rs1==x30, rs2==x12, rd==x19, rs2_h1_val == -129, rs1_h1_val == 0, rs2_h0_val == 2048
// opcode: rstas16 ; op1:x30; op2:x12; dest:x19; op1val:0x00fff6;  op2val:0xff7f0800
TEST_RR_OP(rstas16, x19, x30, x12, 0x00000000, 0x00fff6, 0xff7f0800, x14, 60, x15)

inst_16:// rs1==x29, rs2==x1, rd==x28, rs2_h1_val == -65, rs1_h0_val == -1025
// opcode: rstas16 ; op1:x29; op2:x1; dest:x28; op1val:0xbffffbff;  op2val:0xffbfaaaa
TEST_RR_OP(rstas16, x28, x29, x1, 0x00000000, 0xbffffbff, 0xffbfaaaa, x14, 64, x15)
RVTEST_SIGBASE(x9,signature_x9_0)

inst_17:// rs1==x14, rs2==x28, rd==x29, rs2_h1_val == -33, rs1_h0_val == 0
// opcode: rstas16 ; op1:x14; op2:x28; dest:x29; op1val:0xfffb0000;  op2val:0xffdf3fff
TEST_RR_OP(rstas16, x29, x14, x28, 0x00000000, 0xfffb0000, 0xffdf3fff, x9, 0, x15)

inst_18:// rs1==x23, rs2==x17, rd==x14, rs2_h1_val == -17, rs2_h0_val == 4, rs1_h1_val == -65
// opcode: rstas16 ; op1:x23; op2:x17; dest:x14; op1val:0xffbf3fff;  op2val:0xffef0004
TEST_RR_OP(rstas16, x14, x23, x17, 0x00000000, 0xffbf3fff, 0xffef0004, x9, 4, x15)

inst_19:// rs1==x26, rs2==x18, rd==x5, rs2_h1_val == -9, rs1_h1_val == 16384, rs2_h0_val == 1, rs1_h0_val == 2
// opcode: rstas16 ; op1:x26; op2:x18; dest:x5; op1val:0x40000002;  op2val:0xfff70001
TEST_RR_OP(rstas16, x5, x26, x18, 0x00000000, 0x40000002, 0xfff70001, x9, 8, x15)

inst_20:// rs1==x11, rs2==x26, rd==x25, rs2_h1_val == -3, rs1_h1_val == -2, rs1_h0_val == 8192, rs2_h0_val == 4096
// opcode: rstas16 ; op1:x11; op2:x26; dest:x25; op1val:0xfffe2000;  op2val:0xfffd1000
TEST_RR_OP(rstas16, x25, x11, x26, 0x00000000, 0xfffe2000, 0xfffd1000, x9, 12, x15)

inst_21:// rs1==x19, rs2==x5, rd==x26, rs2_h1_val == -2, 
// opcode: rstas16 ; op1:x19; op2:x5; dest:x26; op1val:0xfffc0007;  op2val:0xfffe0009
TEST_RR_OP(rstas16, x26, x19, x5, 0x00000000, 0xfffc0007, 0xfffe0009, x9, 16, x15)

inst_22:// rs1==x7, rs2==x2, rd==x10, rs2_h1_val == -32768, rs2_h0_val == 0, rs1_h0_val == -4097
// opcode: rstas16 ; op1:x7; op2:x2; dest:x10; op1val:0xf7ffefff;  op2val:0x80000000
TEST_RR_OP(rstas16, x10, x7, x2, 0x00000000, 0xf7ffefff, 0x80000000, x9, 20, x15)

inst_23:// rs1==x4, rs2==x24, rd==x22, rs2_h1_val == 8192, rs2_h0_val == -1025, rs1_h1_val == -8193, rs1_h0_val == -21846
// opcode: rstas16 ; op1:x4; op2:x24; dest:x22; op1val:0xdfffaaaa;  op2val:0x2000fbff
TEST_RR_OP(rstas16, x22, x4, x24, 0x00000000, 0xdfffaaaa, 0x2000fbff, x9, 24, x15)

inst_24:// rs1==x21, rs2==x16, rd==x1, rs2_h1_val == 4096, rs1_h0_val == -257, rs2_h0_val == -8193
// opcode: rstas16 ; op1:x21; op2:x16; dest:x1; op1val:0x3ffffeff;  op2val:0x1000dfff
TEST_RR_OP(rstas16, x1, x21, x16, 0x00000000, 0x3ffffeff, 0x1000dfff, x9, 28, x15)

inst_25:// rs1==x17, rs2==x23, rd==x0, rs2_h1_val == 2048, rs2_h0_val == 2, rs1_h0_val == 128, rs1_h1_val == -33
// opcode: rstas16 ; op1:x17; op2:x23; dest:x0; op1val:0xffdf0080;  op2val:0x8000002
TEST_RR_OP(rstas16, x0, x17, x23, 0x00000000, 0xffdf0080, 0x8000002, x9, 32, x15)

inst_26:// rs1==x13, rs2==x6, rd==x8, rs2_h1_val == 1024, rs2_h0_val == 16
// opcode: rstas16 ; op1:x13; op2:x6; dest:x8; op1val:0x04dfff;  op2val:0x4000010
TEST_RR_OP(rstas16, x8, x13, x6, 0x00000000, 0x04dfff, 0x4000010, x9, 36, x15)

inst_27:// rs1==x20, rs2==x3, rd==x17, rs2_h1_val == 512, rs1_h1_val == -4097, rs1_h0_val == 4
// opcode: rstas16 ; op1:x20; op2:x3; dest:x17; op1val:0xefff0004;  op2val:0x2000004
TEST_RR_OP(rstas16, x17, x20, x3, 0x00000000, 0xefff0004, 0x2000004, x9, 40, x15)

inst_28:// rs1==x6, rs2==x14, rd==x30, rs2_h1_val == 256, rs1_h1_val == 512, rs1_h0_val == -33
// opcode: rstas16 ; op1:x6; op2:x14; dest:x30; op1val:0x200ffdf;  op2val:0x100dfff
TEST_RR_OP(rstas16, x30, x6, x14, 0x00000000, 0x200ffdf, 0x100dfff, x9, 44, x2)

inst_29:// rs1==x22, rs2==x29, rd==x13, rs1_h0_val == -513, rs2_h0_val == -3
// opcode: rstas16 ; op1:x22; op2:x29; dest:x13; op1val:0xdffffdff;  op2val:0xfff9fffd
TEST_RR_OP(rstas16, x13, x22, x29, 0x00000000, 0xdffffdff, 0xfff9fffd, x9, 48, x2)

inst_30:// rs1==x12, rs2==x15, rd==x23, rs1_h0_val == -129, 
// opcode: rstas16 ; op1:x12; op2:x15; dest:x23; op1val:0xfffeff7f;  op2val:0xfffbffbf
TEST_RR_OP(rstas16, x23, x12, x15, 0x00000000, 0xfffeff7f, 0xfffbffbf, x9, 52, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_31:// rs1==x18, rs2==x20, rd==x21, rs1_h0_val == -17, rs2_h0_val == -4097
// opcode: rstas16 ; op1:x18; op2:x20; dest:x21; op1val:0x400ffef;  op2val:0xffbfefff
TEST_RR_OP(rstas16, x21, x18, x20, 0x00000000, 0x400ffef, 0xffbfefff, x1, 0, x2)

inst_32:// rs1_h0_val == -3, rs2_h1_val == 32
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x100fffd;  op2val:0x20ffef
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x100fffd, 0x20ffef, x1, 4, x2)

inst_33:// rs1_h0_val == -2, rs2_h0_val == -129, rs2_h1_val == 128
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x3ffffffe;  op2val:0x80ff7f
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x3ffffffe, 0x80ff7f, x1, 8, x2)

inst_34:// rs1_h0_val == 16384, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff4000;  op2val:0x06fff6
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xbfff4000, 0x06fff6, x1, 12, x2)

inst_35:// rs1_h0_val == 4096, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x10001000;  op2val:0x060009
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x10001000, 0x060009, x1, 16, x2)

inst_36:// rs1_h0_val == 2048, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff0800;  op2val:0xff7ffff8
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xdfff0800, 0xff7ffff8, x1, 20, x2)

inst_37:// rs1_h0_val == 1024, rs2_h0_val == -5, rs1_h1_val == -129
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f0400;  op2val:0x7ffffffb
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xff7f0400, 0x7ffffffb, x1, 24, x2)

inst_38:// rs1_h0_val == 512, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x050200;  op2val:0x20fffc
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x050200, 0x20fffc, x1, 28, x2)

inst_39:// rs1_h0_val == 256, rs2_h0_val == -1
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000100;  op2val:0xf7ffffff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x40000100, 0xf7ffffff, x1, 32, x2)

inst_40:// rs1_h0_val == 16, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000010;  op2val:0xf7ff0003
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x2000010, 0xf7ff0003, x1, 36, x2)

inst_41:// rs1_h0_val == 8, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc0008;  op2val:0xfff60010
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfffc0008, 0xfff60010, x1, 40, x2)

inst_42:// rs1_h0_val == -1, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ffff;  op2val:0x1000100
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x07ffff, 0x1000100, x1, 44, x2)

inst_43:// rs2_h1_val == 64, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x050009;  op2val:0x40aaaa
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x050009, 0x40aaaa, x1, 48, x2)

inst_44:// rs2_h1_val == 16, rs1_h1_val == 8
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x084000;  op2val:0x100006
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x084000, 0x100006, x1, 52, x2)

inst_45:// rs2_h1_val == 8, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x093fff;  op2val:0x080400
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x093fff, 0x080400, x1, 56, x2)

inst_46:// rs2_h1_val == 4, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xefffff7f;  op2val:0x04fff8
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xefffff7f, 0x04fff8, x1, 60, x2)

inst_47:// rs2_h1_val == 2, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000ffdf;  op2val:0x020800
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x4000ffdf, 0x020800, x1, 64, x2)

inst_48:// rs2_h0_val == -2, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000003;  op2val:0xfffcfffe
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x1000003, 0xfffcfffe, x1, 68, x2)

inst_49:// rs2_h0_val == 16384, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbffffc;  op2val:0x7fff4000
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xffbffffc, 0x7fff4000, x1, 72, x2)

inst_50:// rs2_h0_val == 8192, rs1_h1_val == 16
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x100080;  op2val:0xfffb2000
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x100080, 0xfffb2000, x1, 76, x2)

inst_51:// rs2_h0_val == 128, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff;  op2val:0x030080
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xefffffff, 0x030080, x1, 80, x2)

inst_52:// rs2_h0_val == 64, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000fffe;  op2val:0xfffa0040
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x4000fffe, 0xfffa0040, x1, 84, x2)

inst_53:// rs2_h0_val == 32, rs1_h1_val == -1
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff8000;  op2val:0x080020
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xffff8000, 0x080020, x1, 88, x2)

inst_54:// rs2_h0_val == 8, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffef;  op2val:0xff7f0008
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x7fffffef, 0xff7f0008, x1, 92, x2)

inst_55:// rs1_h1_val == -21846, rs2_h0_val == -33
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafffc;  op2val:0x40ffdf
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xaaaafffc, 0x40ffdf, x1, 96, x2)

inst_56:// rs1_h1_val == 21845, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555fff6;  op2val:0xffffdfff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x5555fff6, 0xffffdfff, x1, 100, x2)

inst_57:// rs1_h1_val == -1025, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffeff;  op2val:0xfbff0200
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfbfffeff, 0xfbff0200, x1, 104, x2)

inst_58:// rs1_h1_val == -257, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0010;  op2val:0xffbfefff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfeff0010, 0xffbfefff, x1, 108, x2)

inst_59:// rs1_h1_val == -17, rs1_h0_val == 21845
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef5555;  op2val:0x06ffbf
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xffef5555, 0x06ffbf, x1, 112, x2)

inst_60:// rs1_h1_val == -9, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff70008;  op2val:0xfff90800
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfff70008, 0xfff90800, x1, 116, x2)

inst_61:// rs1_h1_val == -3, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfffa;  op2val:0x10000005
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfffdfffa, 0x10000005, x1, 120, x2)

inst_62:// rs1_h1_val == -32768, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000ff7f;  op2val:0xfff90004
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x8000ff7f, 0xfff90004, x1, 124, x2)

inst_63:// rs1_h1_val == 8192, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20007fff;  op2val:0x204000
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x20007fff, 0x204000, x1, 128, x2)

inst_64:// rs1_h1_val == 2048, rs2_h0_val == 21845
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000;  op2val:0xfbff5555
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x8000000, 0xfbff5555, x1, 132, x2)

inst_65:// rs2_h1_val == 1, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffdfff;  op2val:0x010004
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfeffdfff, 0x010004, x1, 136, x2)

inst_66:// rs1_h1_val == 64, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x400800;  op2val:0x098000
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x400800, 0x098000, x1, 140, x2)

inst_67:// rs1_h1_val == 32, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20ffdf;  op2val:0x080007
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x20ffdf, 0x080007, x1, 144, x2)

inst_68:// rs2_h0_val == 32767, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x200007;  op2val:0x8007fff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x200007, 0x8007fff, x1, 148, x2)

inst_69:// rs1_h1_val == 2, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x02c000;  op2val:0x05ffef
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x02c000, 0x05ffef, x1, 152, x2)

inst_70:// rs2_h0_val == -513, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff60100;  op2val:0xfffffdff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xfff60100, 0xfffffdff, x1, 156, x2)

inst_71:// rs2_h0_val == -257, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x200100;  op2val:0x3ffffeff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x200100, 0x3ffffeff, x1, 160, x2)

inst_72:// rs1_h1_val == 1, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x01fbff;  op2val:0xfeffffff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x01fbff, 0xfeffffff, x1, 164, x2)

inst_73:// rs2_h0_val == -2049, 
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x00ffff;  op2val:0xfff9f7ff
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x00ffff, 0xfff9f7ff, x1, 168, x2)

inst_74:// rs1_h1_val == rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 32767, rs1_h1_val == 32767, rs1_h0_val == 1
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0001;  op2val:0x7fff0009
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x7fff0001, 0x7fff0009, x1, 172, x2)

inst_75:// rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h1_val == -1, rs1_h0_val == -65
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000ffbf;  op2val:0xfffffffc
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xc000ffbf, 0xfffffffc, x1, 176, x2)

inst_76:// rs2_h1_val == -2049, rs2_h0_val == 256, rs1_h0_val == -2049
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x05f7ff;  op2val:0xf7ff0100
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0x05f7ff, 0xf7ff0100, x1, 180, x2)

inst_77:// rs2_h1_val == 2048, rs2_h0_val == 2, rs1_h0_val == 128, rs1_h1_val == -33
// opcode: rstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf0080;  op2val:0x8000002
TEST_RR_OP(rstas16, x31, x30, x29, 0x00000000, 0xffdf0080, 0x8000002, x1, 184, x2)
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
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x9_0:
    .fill 14*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 47*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
