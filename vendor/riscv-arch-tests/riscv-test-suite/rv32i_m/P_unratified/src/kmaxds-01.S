
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
// This assembly file tests the kmaxds instruction of the RISC-V RV32PZicsr extension for the kmaxds covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kmaxds)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x4,signature_x4_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x6, rd==x27, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == 4, rs2_h0_val == 1
// opcode: kmaxds ; op1:x26; op2:x6; dest:x27; op1val:0x098000;  op2val:0x040001
TEST_PKRR_OP(kmaxds, x27, x26, x6, 0x00000000, 0x098000, 0x040001, x26, x4, 0, x2)

inst_1:
// rs1 == rs2 != rd, rs1==x0, rs2==x0, rd==x1, rs1_h1_val == rs2_h1_val, rs2_h0_val == -21846, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h1_val < 0 and rs2_h1_val < 0
// opcode: kmaxds ; op1:x0; op2:x0; dest:x1; op1val:0xc000fff9;  op2val:0xc000aaaa
TEST_PKRR_OP(kmaxds, x1, x0, x0, 0x00000000, 0xc000fff9, 0xc000aaaa, x0, x4, 8, x2)

inst_2:
// rs1 == rd != rs2, rs1==x29, rs2==x11, rd==x29, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h1_val == 4096, rs1_h0_val == -17, rs2_h0_val == 2048
// opcode: kmaxds ; op1:x29; op2:x11; dest:x29; op1val:0xfff9ffef;  op2val:0x10000800
TEST_PKRR_OP(kmaxds, x29, x29, x11, 0x00000000, 0xfff9ffef, 0x10000800, x29, x4, 16, x2)

inst_3:
// rs1 == rs2 == rd, rs1==x8, rs2==x8, rd==x8, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h0_val == -257, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h1_val == -3, rs1_h0_val == 21845
// opcode: kmaxds ; op1:x8; op2:x8; dest:x8; op1val:0x075555;  op2val:0xfffdfeff
TEST_PKRR_OP(kmaxds, x8, x8, x8, 0x00000000, 0x075555, 0xfffdfeff, x8, x4, 24, x2)

inst_4:
// rs2 == rd != rs1, rs1==x10, rs2==x12, rd==x12, rs1_h0_val == rs2_h0_val, rs1_h1_val == 64, rs1_h0_val == 16384, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h0_val == 16384
// opcode: kmaxds ; op1:x10; op2:x12; dest:x12; op1val:0x404000;  op2val:0x044000
TEST_PKRR_OP(kmaxds, x12, x10, x12, 0x00000000, 0x404000, 0x044000, x10, x4, 32, x2)

inst_5:
// rs1==x12, rs2==x30, rd==x20, rs2_h1_val == -21846, rs1_h1_val == -16385, rs1_h0_val == 128, rs2_h0_val == -17
// opcode: kmaxds ; op1:x12; op2:x30; dest:x20; op1val:0xbfff0080;  op2val:0xaaaaffef
TEST_PKRR_OP(kmaxds, x20, x12, x30, 0x00000000, 0xbfff0080, 0xaaaaffef, x12, x4, 40, x2)

inst_6:
// rs1==x21, rs2==x24, rd==x25, rs2_h1_val == 21845, rs1_h1_val == -3, rs1_h0_val == 16
// opcode: kmaxds ; op1:x21; op2:x24; dest:x25; op1val:0xfffd0010;  op2val:0x5555aaaa
TEST_PKRR_OP(kmaxds, x25, x21, x24, 0x00000000, 0xfffd0010, 0x5555aaaa, x21, x4, 48, x2)

inst_7:
// rs1==x31, rs2==x22, rd==x3, rs2_h1_val == 32767, rs1_h1_val == 512
// opcode: kmaxds ; op1:x31; op2:x22; dest:x3; op1val:0x200fffc;  op2val:0x7fff0009
TEST_PKRR_OP(kmaxds, x3, x31, x22, 0x00000000, 0x200fffc, 0x7fff0009, x31, x4, 56, x2)

inst_8:
// rs1==x22, rs2==x13, rd==x11, rs2_h1_val == -16385, rs2_h0_val == 1024, rs1_h0_val == -129
// opcode: kmaxds ; op1:x22; op2:x13; dest:x11; op1val:0x3fffff7f;  op2val:0xbfff0400
TEST_PKRR_OP(kmaxds, x11, x22, x13, 0x00000000, 0x3fffff7f, 0xbfff0400, x22, x4, 64, x2)

inst_9:
// rs1==x30, rs2==x7, rd==x6, rs2_h1_val == -8193, rs1_h1_val == -17, rs2_h0_val == 64
// opcode: kmaxds ; op1:x30; op2:x7; dest:x6; op1val:0xffef5555;  op2val:0xdfff0040
TEST_PKRR_OP(kmaxds, x6, x30, x7, 0x00000000, 0xffef5555, 0xdfff0040, x30, x4, 72, x2)

inst_10:
// rs1==x5, rs2==x9, rd==x15, rs2_h1_val == -4097, rs1_h1_val == 8
// opcode: kmaxds ; op1:x5; op2:x9; dest:x15; op1val:0x080006;  op2val:0xefff0800
TEST_PKRR_OP(kmaxds, x15, x5, x9, 0x00000000, 0x080006, 0xefff0800, x5, x4, 80, x2)

inst_11:
// rs1==x11, rs2==x20, rd==x21, rs2_h1_val == -2049, rs1_h0_val == 256
// opcode: kmaxds ; op1:x11; op2:x20; dest:x21; op1val:0xfff90100;  op2val:0xf7ff0040
TEST_PKRR_OP(kmaxds, x21, x11, x20, 0x00000000, 0xfff90100, 0xf7ff0040, x11, x4, 88, x2)

inst_12:
// rs1==x14, rs2==x17, rd==x0, rs2_h1_val == -1025, rs1_h1_val == -1, rs2_h0_val == 128
// opcode: kmaxds ; op1:x14; op2:x17; dest:x0; op1val:0xffff5555;  op2val:0xfbff0080
TEST_PKRR_OP(kmaxds, x0, x14, x17, 0x00000000, 0xffff5555, 0xfbff0080, x14, x4, 96, x2)

inst_13:
// rs1==x13, rs2==x26, rd==x24, rs2_h1_val == -513, 
// opcode: kmaxds ; op1:x13; op2:x26; dest:x24; op1val:0x07fff8;  op2val:0xfdfffff6
TEST_PKRR_OP(kmaxds, x24, x13, x26, 0x00000000, 0x07fff8, 0xfdfffff6, x13, x4, 104, x2)

inst_14:
// rs1==x23, rs2==x31, rd==x9, rs2_h1_val == -257, rs2_h0_val == 8192
// opcode: kmaxds ; op1:x23; op2:x31; dest:x9; op1val:0xfff9fff9;  op2val:0xfeff2000
TEST_PKRR_OP(kmaxds, x9, x23, x31, 0x00000000, 0xfff9fff9, 0xfeff2000, x23, x4, 112, x2)

inst_15:
// rs1==x7, rs2==x27, rd==x30, rs2_h1_val == -129, rs2_h0_val == -513, rs1_h1_val == -1025, rs1_h0_val == -2049
// opcode: kmaxds ; op1:x7; op2:x27; dest:x30; op1val:0xfbfff7ff;  op2val:0xff7ffdff
TEST_PKRR_OP(kmaxds, x30, x7, x27, 0x00000000, 0xfbfff7ff, 0xff7ffdff, x7, x4, 120, x2)

inst_16:
// rs1==x27, rs2==x19, rd==x31, rs2_h1_val == -65, rs1_h0_val == 64, rs2_h0_val == 8
// opcode: kmaxds ; op1:x27; op2:x19; dest:x31; op1val:0xfffc0040;  op2val:0xffbf0008
TEST_PKRR_OP(kmaxds, x31, x27, x19, 0x00000000, 0xfffc0040, 0xffbf0008, x27, x4, 128, x2)

inst_17:
// rs1==x15, rs2==x14, rd==x2, rs2_h1_val == -33, rs1_h1_val == 1024, rs2_h0_val == 4096
// opcode: kmaxds ; op1:x15; op2:x14; dest:x2; op1val:0x400fff9;  op2val:0xffdf1000
TEST_PKRR_OP(kmaxds, x2, x15, x14, 0x00000000, 0x400fff9, 0xffdf1000, x15, x4, 136, x11)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_18:
// rs1==x18, rs2==x23, rd==x14, rs2_h1_val == -17, rs1_h0_val == -33
// opcode: kmaxds ; op1:x18; op2:x23; dest:x14; op1val:0xfff8ffdf;  op2val:0xffef0005
TEST_PKRR_OP(kmaxds, x14, x18, x23, 0x00000000, 0xfff8ffdf, 0xffef0005, x18, x8, 0, x11)

inst_19:
// rs1==x2, rs2==x29, rd==x28, rs2_h1_val == -9, 
// opcode: kmaxds ; op1:x2; op2:x29; dest:x28; op1val:0x200fff8;  op2val:0xfff71000
TEST_PKRR_OP(kmaxds, x28, x2, x29, 0x00000000, 0x200fff8, 0xfff71000, x2, x8, 8, x11)

inst_20:
// rs1==x28, rs2==x2, rd==x16, rs2_h1_val == -5, rs1_h1_val == -33
// opcode: kmaxds ; op1:x28; op2:x2; dest:x16; op1val:0xffdf0007;  op2val:0xfffbfff9
TEST_PKRR_OP(kmaxds, x16, x28, x2, 0x00000000, 0xffdf0007, 0xfffbfff9, x28, x8, 16, x11)

inst_21:
// rs1==x24, rs2==x4, rd==x10, rs2_h1_val == -2, rs1_h0_val == 512
// opcode: kmaxds ; op1:x24; op2:x4; dest:x10; op1val:0xffef0200;  op2val:0xfffe0800
TEST_PKRR_OP(kmaxds, x10, x24, x4, 0x00000000, 0xffef0200, 0xfffe0800, x24, x8, 24, x11)

inst_22:
// rs1==x25, rs2==x18, rd==x5, rs2_h1_val == -32768, rs2_h0_val == -1
// opcode: kmaxds ; op1:x25; op2:x18; dest:x5; op1val:0x055555;  op2val:0x8000ffff
TEST_PKRR_OP(kmaxds, x5, x25, x18, 0x00000000, 0x055555, 0x8000ffff, x25, x8, 32, x11)

inst_23:
// rs1==x4, rs2==x5, rd==x19, rs2_h1_val == 16384, rs1_h1_val == -257, rs2_h0_val == 16
// opcode: kmaxds ; op1:x4; op2:x5; dest:x19; op1val:0xfeff0010;  op2val:0x40000010
TEST_PKRR_OP(kmaxds, x19, x4, x5, 0x00000000, 0xfeff0010, 0x40000010, x4, x8, 40, x11)

inst_24:
// rs1==x16, rs2==x21, rd==x22, rs2_h1_val == 8192, rs2_h0_val == 4, rs1_h0_val == -513
// opcode: kmaxds ; op1:x16; op2:x21; dest:x22; op1val:0xfff9fdff;  op2val:0x20000004
TEST_PKRR_OP(kmaxds, x22, x16, x21, 0x00000000, 0xfff9fdff, 0x20000004, x16, x8, 48, x11)

inst_25:
// rs1==x19, rs2==x16, rd==x23, rs2_h1_val == 2048, rs1_h1_val == 4096, rs1_h0_val == 1024
// opcode: kmaxds ; op1:x19; op2:x16; dest:x23; op1val:0x10000400;  op2val:0x8000007
TEST_PKRR_OP(kmaxds, x23, x19, x16, 0x00000000, 0x10000400, 0x8000007, x19, x8, 56, x11)

inst_26:
// rs1==x6, rs2==x15, rd==x18, rs2_h1_val == 1024, rs1_h1_val == -2049, rs1_h0_val == -9
// opcode: kmaxds ; op1:x6; op2:x15; dest:x18; op1val:0xf7fffff7;  op2val:0x400fff6
TEST_PKRR_OP(kmaxds, x18, x6, x15, 0x00000000, 0xf7fffff7, 0x400fff6, x6, x8, 64, x11)

inst_27:
// rs1==x20, rs2==x3, rd==x13, rs2_h1_val == 512, rs2_h0_val == 0
// opcode: kmaxds ; op1:x20; op2:x3; dest:x13; op1val:0xffdf0005;  op2val:0x2000000
TEST_PKRR_OP(kmaxds, x13, x20, x3, 0x00000000, 0xffdf0005, 0x2000000, x20, x8, 72, x11)

inst_28:
// rs1==x17, rs2==x28, rd==x7, rs2_h1_val == 256, 
// opcode: kmaxds ; op1:x17; op2:x28; dest:x7; op1val:0xfeff0005;  op2val:0x100fffa
TEST_PKRR_OP(kmaxds, x7, x17, x28, 0x00000000, 0xfeff0005, 0x100fffa, x17, x8, 80, x11)

inst_29:
// rs1==x9, rs2==x10, rd==x17, rs2_h1_val == 128, rs1_h1_val == -21846
// opcode: kmaxds ; op1:x9; op2:x10; dest:x17; op1val:0xaaaa0080;  op2val:0x800010
TEST_PKRR_OP(kmaxds, x17, x9, x10, 0x00000000, 0xaaaa0080, 0x800010, x9, x8, 88, x11)

inst_30:
// rs1==x1, rs2==x25, rd==x26, rs2_h1_val == 64, 
// opcode: kmaxds ; op1:x1; op2:x25; dest:x26; op1val:0xfbff0007;  op2val:0x400080
TEST_PKRR_OP(kmaxds, x26, x1, x25, 0x00000000, 0xfbff0007, 0x400080, x1, x8, 96, x11)

inst_31:
// rs1==x3, rs2==x1, rd==x4, rs2_h1_val == 32, rs1_h1_val == 128
// opcode: kmaxds ; op1:x3; op2:x1; dest:x4; op1val:0x80fffc;  op2val:0x200040
TEST_PKRR_OP(kmaxds, x4, x3, x1, 0x00000000, 0x80fffc, 0x200040, x3, x8, 104, x11)

inst_32:
// rs2_h1_val == 16, rs2_h0_val == 2, rs1_h1_val == 21845
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x55550040;  op2val:0x100002
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x55550040, 0x100002, x30, x8, 112, x11)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_33:
// rs2_h1_val == 8, rs1_h1_val == 32
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x200007;  op2val:0x08ffff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x200007, 0x08ffff, x30, x1, 0, x2)

inst_34:
// rs1_h0_val == -1025, rs1_h1_val == 32767
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffbff;  op2val:0x03fdff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x7ffffbff, 0x03fdff, x30, x1, 8, x2)

inst_35:
// rs1_h0_val == -257, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x03feff;  op2val:0x3fff1000
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x03feff, 0x3fff1000, x30, x1, 16, x2)

inst_36:
// rs1_h0_val == -65, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaffbf;  op2val:0xdffffff6
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xaaaaffbf, 0xdffffff6, x30, x1, 24, x2)

inst_37:
// rs1_h0_val == -5, rs2_h0_val == -2049
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb;  op2val:0x2000f7ff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffffffb, 0x2000f7ff, x30, x1, 32, x2)

inst_38:
// rs1_h0_val == -3, rs1_h1_val == -9
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfff7fffd;  op2val:0x07f7ff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfff7fffd, 0x07f7ff, x30, x1, 40, x2)

inst_39:
// rs1_h0_val == -2, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfffe;  op2val:0xfff80001
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffdfffe, 0xfff80001, x30, x1, 48, x2)

inst_40:
// rs1_h0_val == 8192, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffa2000;  op2val:0x8000005
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffa2000, 0x8000005, x30, x1, 56, x2)

inst_41:
// rs1_h0_val == 4096, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x401000;  op2val:0x070009
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x401000, 0x070009, x30, x1, 64, x2)

inst_42:
// rs1_h0_val == 2048, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfff80800;  op2val:0xfffefff8
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfff80800, 0xfffefff8, x30, x1, 72, x2)

inst_43:
// rs1_h0_val == 32, rs1_h1_val == 16, rs2_h0_val == -32768
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x100020;  op2val:0x80008000
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x100020, 0x80008000, x30, x1, 80, x2)

inst_44:
// rs1_h0_val == 8, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfff60008;  op2val:0x200ffff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfff60008, 0x200ffff, x30, x1, 88, x2)

inst_45:
// rs1_h0_val == 4, rs1_h1_val == 2048, rs2_h0_val == -8193
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x8000004;  op2val:0x3fffdfff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x8000004, 0x3fffdfff, x30, x1, 96, x2)

inst_46:
// rs1_h0_val == 2, rs2_h0_val == -129
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x4000002;  op2val:0x8000ff7f
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x4000002, 0x8000ff7f, x30, x1, 104, x2)

inst_47:
// rs1_h0_val == 1, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x800001;  op2val:0xc0004000
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x800001, 0xc0004000, x30, x1, 112, x2)

inst_48:
// rs1_h0_val == 0, rs2_h0_val == -3, rs1_h1_val == -2
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0000;  op2val:0xfff7fffd
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffe0000, 0xfff7fffd, x30, x1, 120, x2)

inst_49:
// rs1_h0_val == -1, rs2_h0_val == 21845
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff;  op2val:0x095555
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xffefffff, 0x095555, x30, x1, 128, x2)

inst_50:
// rs2_h1_val == 2, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x80fffc;  op2val:0x02c000
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x80fffc, 0x02c000, x30, x1, 136, x2)

inst_51:
// rs2_h1_val == 1, rs2_h0_val == 512
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0800;  op2val:0x010200
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfeff0800, 0x010200, x30, x1, 144, x2)

inst_52:
// rs2_h1_val == 0, rs1_h1_val == 16384
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x4000fffb;  op2val:0x000800
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x4000fffb, 0x000800, x30, x1, 152, x2)

inst_53:
// rs2_h0_val == -5, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffaffef;  op2val:0xfff8fffb
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffaffef, 0xfff8fffb, x30, x1, 160, x2)

inst_54:
// rs2_h0_val == -33, rs1_h1_val == -129
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xff7f5555;  op2val:0x8000ffdf
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xff7f5555, 0x8000ffdf, x30, x1, 168, x2)

inst_55:
// rs2_h0_val == -2, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x10fffc;  op2val:0xbffffffe
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x10fffc, 0xbffffffe, x30, x1, 176, x2)

inst_56:
// rs2_h0_val == 256, rs1_h1_val == -5
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0200;  op2val:0xf7ff0100
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffb0200, 0xf7ff0100, x30, x1, 184, x2)

inst_57:
// rs2_h0_val == 32, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x3fff0000;  op2val:0x20000020
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x3fff0000, 0x20000020, x30, x1, 192, x2)

inst_58:
// rs1_h0_val == -8193, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfffcdfff;  op2val:0xc0002000
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfffcdfff, 0xc0002000, x30, x1, 200, x2)

inst_59:
// rs1_h1_val == -8193, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xdfffffff;  op2val:0xffdfffdf
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xdfffffff, 0xffdfffdf, x30, x1, 208, x2)

inst_60:
// rs1_h1_val == -4097, rs2_h0_val == 32767
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xefffff7f;  op2val:0x80007fff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xefffff7f, 0x80007fff, x30, x1, 216, x2)

inst_61:
// rs1_h1_val == -513, rs1_h0_val == -21846
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xfdffaaaa;  op2val:0xfffafff6
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xfdffaaaa, 0xfffafff6, x30, x1, 224, x2)

inst_62:
// rs1_h1_val == -65, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0003;  op2val:0x2000006
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xffbf0003, 0x2000006, x30, x1, 232, x2)

inst_63:
// rs1_h1_val == -32768, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x8000ffff;  op2val:0x02fff8
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x8000ffff, 0x02fff8, x30, x1, 240, x2)

inst_64:
// rs1_h1_val == 8192, rs2_h0_val == -16385
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x20001000;  op2val:0x00bfff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x20001000, 0x00bfff, x30, x1, 248, x2)

inst_65:
// rs1_h1_val == 256, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x1000001;  op2val:0xdffffffb
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x1000001, 0xdffffffb, x30, x1, 256, x2)

inst_66:
// rs2_h0_val == -65, rs1_h1_val == 4
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x04feff;  op2val:0x80ffbf
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x04feff, 0x80ffbf, x30, x1, 264, x2)

inst_67:
// rs2_h1_val == -1, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xc0000002;  op2val:0xffff0005
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xc0000002, 0xffff0005, x30, x1, 272, x2)

inst_68:
// rs1_h1_val == 2, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x020000;  op2val:0x01fff8
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x020000, 0x01fff8, x30, x1, 280, x2)

inst_69:
// rs2_h0_val == -4097, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffff7;  op2val:0xff7fefff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xff7ffff7, 0xff7fefff, x30, x1, 288, x2)

inst_70:
// rs1_h1_val == 1, rs2_h0_val == -9
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x010020;  op2val:0x10fff7
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x010020, 0x10fff7, x30, x1, 296, x2)

inst_71:
// rs1_h1_val == 0, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x000001;  op2val:0x40fffa
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x000001, 0x40fffa, x30, x1, 304, x2)

inst_72:
// rs2_h0_val == -1025, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x4008000;  op2val:0xbffffbff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x4008000, 0xbffffbff, x30, x1, 312, x2)

inst_73:
// rs1_h0_val == 32767, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x007fff;  op2val:0x07ffef
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x007fff, 0x07ffef, x30, x1, 320, x2)

inst_74:
// rs1_h0_val == -16385, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x2000bfff;  op2val:0x015555
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x2000bfff, 0x015555, x30, x1, 328, x2)

inst_75:
// rs1_h0_val == -4097, 
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x800efff;  op2val:0x03fffa
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x800efff, 0x03fffa, x30, x1, 336, x2)

inst_76:
// rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h0_val == -257, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h1_val == -3, rs1_h0_val == 21845
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0x075555;  op2val:0xfffdfeff
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0x075555, 0xfffdfeff, x30, x1, 344, x2)

inst_77:
// rs2_h1_val == -1025, rs1_h1_val == -1, rs2_h0_val == 128
// opcode: kmaxds ; op1:x30; op2:x29; dest:x31; op1val:0xffff5555;  op2val:0xfbff0080
TEST_PKRR_OP(kmaxds, x31, x30, x29, 0x00000000, 0xffff5555, 0xfbff0080, x30, x1, 352, x2)
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


signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 36*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 90*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
