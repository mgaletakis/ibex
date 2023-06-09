
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
// This assembly file tests the kadd16 instruction of the RISC-V RV32PZicsr extension for the kadd16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kadd16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x2,signature_x2_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x0, rs2==x7, rd==x23, rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h1_val == -2, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0
// opcode: kadd16 ; op1:x0; op2:x7; dest:x23; op1val:0xfffe8000;  op2val:0xfff90009
TEST_PKRR_OP(kadd16, x23, x0, x7, 0x00000000, 0xfffe8000, 0xfff90009, x0, x2, 0, x10)

inst_1:
// rs1 == rs2 != rd, rs1==x15, rs2==x15, rd==x22, rs1_h1_val == rs2_h1_val, rs2_h1_val == 256, rs1_h1_val == 256, rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val > 0 and rs2_h1_val > 0
// opcode: kadd16 ; op1:x15; op2:x15; dest:x22; op1val:0x1000009;  op2val:0x1000003
TEST_PKRR_OP(kadd16, x22, x15, x15, 0x00000000, 0x1000009, 0x1000003, x15, x2, 8, x10)

inst_2:
// rs1 == rd != rs2, rs1==x5, rs2==x0, rd==x5, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h0_val < 0 and rs2_h0_val < 0, rs2_h0_val == -32768, rs1_h1_val == -4097
// opcode: kadd16 ; op1:x5; op2:x0; dest:x5; op1val:0xeffffff6;  op2val:0x3fff8000
TEST_PKRR_OP(kadd16, x5, x5, x0, 0x00000000, 0xeffffff6, 0x3fff8000, x5, x2, 16, x10)

inst_3:
// rs1 == rs2 == rd, rs1==x13, rs2==x13, rd==x13, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -8193, rs1_h0_val == 0
// opcode: kadd16 ; op1:x13; op2:x13; dest:x13; op1val:0x030000;  op2val:0xdfff0003
TEST_PKRR_OP(kadd16, x13, x13, x13, 0x00000000, 0x030000, 0xdfff0003, x13, x2, 24, x10)

inst_4:
// rs2 == rd != rs1, rs1==x24, rs2==x26, rd==x26, rs1_h0_val == rs2_h0_val, rs2_h1_val == -9, rs2_h0_val == 16384, rs1_h0_val == 16384
// opcode: kadd16 ; op1:x24; op2:x26; dest:x26; op1val:0xfffe4000;  op2val:0xfff74000
TEST_PKRR_OP(kadd16, x26, x24, x26, 0x00000000, 0xfffe4000, 0xfff74000, x24, x2, 32, x10)

inst_5:
// rs1==x20, rs2==x21, rd==x27, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h1_val == 4, rs2_h1_val == -1025, rs2_h0_val == -33
// opcode: kadd16 ; op1:x20; op2:x21; dest:x27; op1val:0x040009;  op2val:0xfbffffdf
TEST_PKRR_OP(kadd16, x27, x20, x21, 0x00000000, 0x040009, 0xfbffffdf, x20, x2, 40, x10)

inst_6:
// rs1==x9, rs2==x5, rd==x18, rs2_h1_val == -21846, rs2_h0_val == 256, rs1_h0_val == 64, rs1_h1_val == 128
// opcode: kadd16 ; op1:x9; op2:x5; dest:x18; op1val:0x800040;  op2val:0xaaaa0100
TEST_PKRR_OP(kadd16, x18, x9, x5, 0x00000000, 0x800040, 0xaaaa0100, x9, x2, 48, x10)

inst_7:
// rs1==x31, rs2==x30, rd==x9, rs2_h1_val == 21845, rs1_h1_val == -16385, rs1_h0_val == -2, rs2_h0_val == 8192
// opcode: kadd16 ; op1:x31; op2:x30; dest:x9; op1val:0xbffffffe;  op2val:0x55552000
TEST_PKRR_OP(kadd16, x9, x31, x30, 0x00000000, 0xbffffffe, 0x55552000, x31, x2, 56, x10)

inst_8:
// rs1==x26, rs2==x17, rd==x3, rs2_h1_val == 32767, rs1_h0_val == -21846, rs1_h1_val == 16
// opcode: kadd16 ; op1:x26; op2:x17; dest:x3; op1val:0x10aaaa;  op2val:0x7fff4000
TEST_PKRR_OP(kadd16, x3, x26, x17, 0x00000000, 0x10aaaa, 0x7fff4000, x26, x2, 64, x10)

inst_9:
// rs1==x23, rs2==x4, rd==x17, rs2_h1_val == -16385, rs1_h1_val == 8192, rs1_h0_val == 2048
// opcode: kadd16 ; op1:x23; op2:x4; dest:x17; op1val:0x20000800;  op2val:0xbfff8000
TEST_PKRR_OP(kadd16, x17, x23, x4, 0x00000000, 0x20000800, 0xbfff8000, x23, x2, 72, x10)

inst_10:
// rs1==x6, rs2==x9, rd==x19, rs2_h1_val == -4097, rs1_h0_val == 256, rs1_h1_val == -21846, rs2_h0_val == -2049
// opcode: kadd16 ; op1:x6; op2:x9; dest:x19; op1val:0xaaaa0100;  op2val:0xeffff7ff
TEST_PKRR_OP(kadd16, x19, x6, x9, 0x00000000, 0xaaaa0100, 0xeffff7ff, x6, x2, 80, x10)

inst_11:
// rs1==x8, rs2==x27, rd==x21, rs2_h1_val == -2049, rs2_h0_val == -5, rs1_h1_val == 512
// opcode: kadd16 ; op1:x8; op2:x27; dest:x21; op1val:0x200fffc;  op2val:0xf7fffffb
TEST_PKRR_OP(kadd16, x21, x8, x27, 0x00000000, 0x200fffc, 0xf7fffffb, x8, x2, 88, x10)

inst_12:
// rs1==x14, rs2==x8, rd==x16, rs2_h1_val == -513, rs1_h0_val == -513, rs2_h0_val == 1
// opcode: kadd16 ; op1:x14; op2:x8; dest:x16; op1val:0xfffefdff;  op2val:0xfdff0001
TEST_PKRR_OP(kadd16, x16, x14, x8, 0x00000000, 0xfffefdff, 0xfdff0001, x14, x2, 96, x10)

inst_13:
// rs1==x19, rs2==x24, rd==x25, rs2_h1_val == -257, rs1_h0_val == 2, rs1_h1_val == -8193, rs2_h0_val == 128
// opcode: kadd16 ; op1:x19; op2:x24; dest:x25; op1val:0xdfff0002;  op2val:0xfeff0080
TEST_PKRR_OP(kadd16, x25, x19, x24, 0x00000000, 0xdfff0002, 0xfeff0080, x19, x2, 104, x10)

inst_14:
// rs1==x27, rs2==x31, rd==x6, rs2_h1_val == -129, rs1_h0_val == -1025, rs2_h0_val == -1
// opcode: kadd16 ; op1:x27; op2:x31; dest:x6; op1val:0xaaaafbff;  op2val:0xff7fffff
TEST_PKRR_OP(kadd16, x6, x27, x31, 0x00000000, 0xaaaafbff, 0xff7fffff, x27, x2, 112, x10)

inst_15:
// rs1==x1, rs2==x23, rd==x20, rs2_h1_val == -65, rs2_h0_val == 4, rs1_h1_val == 21845, rs1_h0_val == 1024
// opcode: kadd16 ; op1:x1; op2:x23; dest:x20; op1val:0x55550400;  op2val:0xffbf0004
TEST_PKRR_OP(kadd16, x20, x1, x23, 0x00000000, 0x55550400, 0xffbf0004, x1, x2, 120, x10)

inst_16:
// rs1==x7, rs2==x12, rd==x4, rs2_h1_val == -33, rs1_h1_val == 64
// opcode: kadd16 ; op1:x7; op2:x12; dest:x4; op1val:0x400009;  op2val:0xffdffff6
TEST_PKRR_OP(kadd16, x4, x7, x12, 0x00000000, 0x400009, 0xffdffff6, x7, x2, 128, x10)

inst_17:
// rs1==x11, rs2==x18, rd==x10, rs2_h1_val == -17, rs1_h1_val == -33
// opcode: kadd16 ; op1:x11; op2:x18; dest:x10; op1val:0xffdf0007;  op2val:0xffeffffb
TEST_PKRR_OP(kadd16, x10, x11, x18, 0x00000000, 0xffdf0007, 0xffeffffb, x11, x2, 136, x9)
RVTEST_SIGBASE(x5,signature_x5_0)

inst_18:
// rs1==x29, rs2==x20, rd==x1, rs2_h1_val == -5, rs1_h0_val == -3, rs1_h1_val == 4096
// opcode: kadd16 ; op1:x29; op2:x20; dest:x1; op1val:0x1000fffd;  op2val:0xfffb0006
TEST_PKRR_OP(kadd16, x1, x29, x20, 0x00000000, 0x1000fffd, 0xfffb0006, x29, x5, 0, x9)

inst_19:
// rs1==x3, rs2==x19, rd==x29, rs2_h1_val == -3, rs2_h0_val == 2
// opcode: kadd16 ; op1:x3; op2:x19; dest:x29; op1val:0xfffa3fff;  op2val:0xfffd0002
TEST_PKRR_OP(kadd16, x29, x3, x19, 0x00000000, 0xfffa3fff, 0xfffd0002, x3, x5, 8, x9)

inst_20:
// rs1==x30, rs2==x16, rd==x12, rs2_h1_val == -2, rs2_h0_val == 32, rs1_h1_val == 0
// opcode: kadd16 ; op1:x30; op2:x16; dest:x12; op1val:0x00fdff;  op2val:0xfffe0020
TEST_PKRR_OP(kadd16, x12, x30, x16, 0x00000000, 0x00fdff, 0xfffe0020, x30, x5, 16, x9)

inst_21:
// rs1==x12, rs2==x6, rd==x7, rs2_h1_val == -32768, rs2_h0_val == -21846, rs1_h0_val == -129
// opcode: kadd16 ; op1:x12; op2:x6; dest:x7; op1val:0x1000ff7f;  op2val:0x8000aaaa
TEST_PKRR_OP(kadd16, x7, x12, x6, 0x00000000, 0x1000ff7f, 0x8000aaaa, x12, x5, 24, x9)

inst_22:
// rs1==x18, rs2==x1, rd==x30, rs2_h1_val == 16384, rs1_h1_val == 32767
// opcode: kadd16 ; op1:x18; op2:x1; dest:x30; op1val:0x7fff0002;  op2val:0x4000fff8
TEST_PKRR_OP(kadd16, x30, x18, x1, 0x00000000, 0x7fff0002, 0x4000fff8, x18, x5, 32, x9)

inst_23:
// rs1==x4, rs2==x22, rd==x0, rs2_h1_val == 8192, 
// opcode: kadd16 ; op1:x4; op2:x22; dest:x0; op1val:0x1000400;  op2val:0x20000001
TEST_PKRR_OP(kadd16, x0, x4, x22, 0x00000000, 0x1000400, 0x20000001, x4, x5, 40, x9)

inst_24:
// rs1==x21, rs2==x14, rd==x24, rs2_h1_val == 4096, 
// opcode: kadd16 ; op1:x21; op2:x14; dest:x24; op1val:0x80fff6;  op2val:0x10004000
TEST_PKRR_OP(kadd16, x24, x21, x14, 0x00000000, 0x80fff6, 0x10004000, x21, x5, 48, x9)

inst_25:
// rs1==x10, rs2==x29, rd==x14, rs2_h1_val == 2048, 
// opcode: kadd16 ; op1:x10; op2:x29; dest:x14; op1val:0x100800;  op2val:0x8000080
TEST_PKRR_OP(kadd16, x14, x10, x29, 0x00000000, 0x100800, 0x8000080, x10, x5, 56, x9)

inst_26:
// rs1==x2, rs2==x28, rd==x15, rs2_h1_val == 1024, 
// opcode: kadd16 ; op1:x2; op2:x28; dest:x15; op1val:0x06fffe;  op2val:0x400fff6
TEST_PKRR_OP(kadd16, x15, x2, x28, 0x00000000, 0x06fffe, 0x400fff6, x2, x5, 64, x9)

inst_27:
// rs1==x22, rs2==x11, rd==x8, rs2_h1_val == 512, 
// opcode: kadd16 ; op1:x22; op2:x11; dest:x8; op1val:0x070007;  op2val:0x2000080
TEST_PKRR_OP(kadd16, x8, x22, x11, 0x00000000, 0x070007, 0x2000080, x22, x5, 72, x9)

inst_28:
// rs1==x25, rs2==x3, rd==x31, rs2_h1_val == 128, rs1_h1_val == 8, rs2_h0_val == -17
// opcode: kadd16 ; op1:x25; op2:x3; dest:x31; op1val:0x080009;  op2val:0x80ffef
TEST_PKRR_OP(kadd16, x31, x25, x3, 0x00000000, 0x080009, 0x80ffef, x25, x5, 80, x9)

inst_29:
// rs1==x16, rs2==x10, rd==x11, rs2_h1_val == 64, rs1_h1_val == -3, rs1_h0_val == -9
// opcode: kadd16 ; op1:x16; op2:x10; dest:x11; op1val:0xfffdfff7;  op2val:0x400006
TEST_PKRR_OP(kadd16, x11, x16, x10, 0x00000000, 0xfffdfff7, 0x400006, x16, x5, 88, x9)

inst_30:
// rs1==x28, rs2==x25, rd==x2, rs2_h1_val == 32, rs1_h0_val == -16385, rs2_h0_val == 64
// opcode: kadd16 ; op1:x28; op2:x25; dest:x2; op1val:0xfffcbfff;  op2val:0x200040
TEST_PKRR_OP(kadd16, x2, x28, x25, 0x00000000, 0xfffcbfff, 0x200040, x28, x5, 96, x9)

inst_31:
// rs1==x17, rs2==x2, rd==x28, rs2_h1_val == 16, rs1_h0_val == 512, rs2_h0_val == 512, rs1_h1_val == -5
// opcode: kadd16 ; op1:x17; op2:x2; dest:x28; op1val:0xfffb0200;  op2val:0x100200
TEST_PKRR_OP(kadd16, x28, x17, x2, 0x00000000, 0xfffb0200, 0x100200, x17, x5, 104, x9)

inst_32:
// rs1_h0_val == -257, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x08feff;  op2val:0x80aaaa
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x08feff, 0x80aaaa, x30, x5, 112, x9)

inst_33:
// rs1_h0_val == -65, rs2_h0_val == -4097
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ffbf;  op2val:0x7fffefff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x07ffbf, 0x7fffefff, x30, x5, 120, x9)

inst_34:
// rs1_h0_val == -33, rs2_h1_val == 2
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x00ffdf;  op2val:0x020009
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x00ffdf, 0x020009, x30, x5, 128, x9)

inst_35:
// rs1_h0_val == -17, rs1_h1_val == -17, rs2_h0_val == 8
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xffefffef;  op2val:0xffef0008
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xffefffef, 0xffef0008, x30, x5, 136, x9)

inst_36:
// rs1_h0_val == -5, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffffb;  op2val:0xfbfffffa
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x7ffffffb, 0xfbfffffa, x30, x5, 144, x9)

inst_37:
// rs1_h0_val == 8192, rs1_h1_val == 2
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x022000;  op2val:0xfeff0006
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x022000, 0xfeff0006, x30, x5, 152, x9)

inst_38:
// rs1_h0_val == 4096, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x031000;  op2val:0xfffe0040
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x031000, 0xfffe0040, x30, x5, 160, x9)

inst_39:
// rs1_h0_val == 128, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0080;  op2val:0x4000fffb
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfffb0080, 0x4000fffb, x30, x5, 168, x9)

inst_40:
// rs1_h0_val == 32, rs1_h1_val == 32
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x200020;  op2val:0x060008
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x200020, 0x060008, x30, x5, 176, x9)

inst_41:
// rs1_h0_val == 16, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x400010;  op2val:0x8000001
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x400010, 0x8000001, x30, x5, 184, x9)

inst_42:
// rs1_h0_val == 8, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x100008;  op2val:0xaaaa0001
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x100008, 0xaaaa0001, x30, x5, 192, x9)

inst_43:
// rs1_h0_val == 4, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff0004;  op2val:0x800008
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xefff0004, 0x800008, x30, x5, 200, x9)

inst_44:
// rs1_h0_val == 1, rs2_h0_val == 2048
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff60001;  op2val:0xfffe0800
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfff60001, 0xfffe0800, x30, x5, 208, x9)

inst_45:
// rs1_h0_val == -1, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x05ffff;  op2val:0x06fff6
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x05ffff, 0x06fff6, x30, x5, 216, x9)

inst_46:
// rs2_h1_val == 8, rs1_h1_val == -2049
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff0000;  op2val:0x080002
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xf7ff0000, 0x080002, x30, x5, 224, x9)

inst_47:
// rs2_h1_val == 4, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000004;  op2val:0x04ffef
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x2000004, 0x04ffef, x30, x5, 232, x9)

inst_48:
// rs2_h1_val == 1, rs1_h0_val == 32767, rs1_h1_val == 2048
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x8007fff;  op2val:0x01fff6
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x8007fff, 0x01fff6, x30, x5, 240, x9)

inst_49:
// rs2_h1_val == 0, rs2_h0_val == -257, rs1_h0_val == -4097
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x40efff;  op2val:0x00feff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x40efff, 0x00feff, x30, x5, 248, x9)

inst_50:
// rs2_h1_val == -1, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ffff;  op2val:0xffff8000
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x07ffff, 0xffff8000, x30, x5, 256, x9)

inst_51:
// rs2_h0_val == -3, rs1_h1_val == 16384
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x40007fff;  op2val:0x1000fffd
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x40007fff, 0x1000fffd, x30, x5, 264, x9)

inst_52:
// rs2_h0_val == -2, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdffdff;  op2val:0x09fffe
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xffdffdff, 0x09fffe, x30, x5, 272, x9)

inst_53:
// rs2_h0_val == 4096, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000ff7f;  op2val:0xfffd1000
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x4000ff7f, 0xfffd1000, x30, x5, 280, x9)

inst_54:
// rs2_h0_val == 1024, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff8fbff;  op2val:0xffbf0400
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfff8fbff, 0xffbf0400, x30, x5, 288, x9)

inst_55:
// rs2_h0_val == 16, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffa0800;  op2val:0x010010
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfffa0800, 0x010010, x30, x5, 296, x9)

inst_56:
// rs2_h0_val == 0, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x80ffbf;  op2val:0x040000
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x80ffbf, 0x040000, x30, x5, 304, x9)

inst_57:
// rs1_h1_val == -1025, rs2_h0_val == -129
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffffd;  op2val:0x1000ff7f
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfbfffffd, 0x1000ff7f, x30, x5, 312, x9)

inst_58:
// rs2_h0_val == -1025, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x02ff7f;  op2val:0xaaaafbff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x02ff7f, 0xaaaafbff, x30, x5, 320, x9)

inst_59:
// rs1_h1_val == -513, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdfffeff;  op2val:0xfefffffa
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfdfffeff, 0xfefffffa, x30, x5, 328, x9)

inst_60:
// rs1_h1_val == -257, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0009;  op2val:0x5555feff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfeff0009, 0x5555feff, x30, x5, 336, x9)

inst_61:
// rs1_h1_val == -129, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffbf;  op2val:0x1000001
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xff7fffbf, 0x1000001, x30, x5, 344, x9)

inst_62:
// rs1_h1_val == -65, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf7fff;  op2val:0xfdfffff6
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xffbf7fff, 0xfdfffff6, x30, x5, 352, x9)

inst_63:
// rs1_h1_val == -9, rs2_h0_val == -16385
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff77fff;  op2val:0xefffbfff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfff77fff, 0xefffbfff, x30, x5, 360, x9)

inst_64:
// rs1_h1_val == -32768, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000fdff;  op2val:0x06fffc
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x8000fdff, 0x06fffc, x30, x5, 368, x9)

inst_65:
// rs1_h1_val == 1024, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x4001000;  op2val:0x3ffffffa
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x4001000, 0x3ffffffa, x30, x5, 376, x9)

inst_66:
// rs2_h0_val == 21845, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0004;  op2val:0xfeff5555
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xbfff0004, 0xfeff5555, x30, x5, 384, x9)

inst_67:
// rs1_h0_val == -2049, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xbffff7ff;  op2val:0xfefffbff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xbffff7ff, 0xfefffbff, x30, x5, 392, x9)

inst_68:
// rs2_h0_val == 32767, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fff7;  op2val:0xfffe7fff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x00fff7, 0xfffe7fff, x30, x5, 400, x9)

inst_69:
// rs2_h0_val == -8193, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff8fffc;  op2val:0x05dfff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfff8fffc, 0x05dfff, x30, x5, 408, x9)

inst_70:
// rs1_h1_val == 1, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x010009;  op2val:0x200007
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x010009, 0x200007, x30, x5, 416, x9)

inst_71:
// rs1_h1_val == -1, rs2_h0_val == -513
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb;  op2val:0x00fdff
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfffffffb, 0x00fdff, x30, x5, 424, x9)

inst_72:
// rs1_h0_val == 21845, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff5555;  op2val:0xfeff4000
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xdfff5555, 0xfeff4000, x30, x5, 432, x9)

inst_73:
// rs2_h0_val == -65, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf5555;  op2val:0xf7ffffbf
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xffbf5555, 0xf7ffffbf, x30, x5, 440, x9)

inst_74:
// rs1_h0_val == -8193, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000dfff;  op2val:0x072000
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x4000dfff, 0x072000, x30, x5, 448, x9)

inst_75:
// rs2_h0_val == -9, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x090100;  op2val:0xfbfffff7
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x090100, 0xfbfffff7, x30, x5, 456, x9)

inst_76:
// rs1_h0_val == -32768, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h1_val == -2, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe8000;  op2val:0xfff90009
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0xfffe8000, 0xfff90009, x30, x5, 464, x9)

inst_77:
// rs1_h1_val == rs2_h1_val, rs2_h1_val == 256, rs1_h1_val == 256, rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val > 0 and rs2_h1_val > 0
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000009;  op2val:0x1000003
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x1000009, 0x1000003, x30, x5, 472, x9)

inst_78:
// rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h1_val == -8193, rs1_h0_val == 0
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x030000;  op2val:0xdfff0003
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x030000, 0xdfff0003, x30, x5, 480, x9)

inst_79:
// rs2_h1_val == 8192, 
// opcode: kadd16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000400;  op2val:0x20000001
TEST_PKRR_OP(kadd16, x31, x30, x29, 0x00000000, 0x1000400, 0x20000001, x30, x5, 488, x9)
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


signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 36*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 124*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
