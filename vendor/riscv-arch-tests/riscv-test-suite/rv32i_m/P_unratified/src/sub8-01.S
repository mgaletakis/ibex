
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
// This assembly file tests the sub8 instruction of the RISC-V RV32PZicsr extension for the sub8 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sub8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x15, rs2==x3, rd==x2, rs1_b0_val == -128, rs1_b3_val != rs2_b3_val, rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b2_val != rs2_b2_val, rs1_b2_val == -128, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b1_val != rs2_b1_val, rs1_b1_val < 0 and rs2_b1_val > 0, rs1_b0_val != rs2_b0_val, rs1_b0_val < 0 and rs2_b0_val > 0, rs2_b2_val == 2, rs2_b3_val == -17
// opcode: sub8 ; op1:x15; op2:x3; dest:x2; op1val:0x980f880;  op2val:0xef020307
TEST_RR_OP(sub8, x2, x15, x3, 0x00000000, 0x980f880, 0xef020307, x5, 0, x14)

inst_1:
// rs1 == rs2 != rd, rs1==x18, rs2==x18, rd==x19, rs1_b3_val == rs2_b3_val, rs2_b3_val == -128, rs1_b3_val < 0 and rs2_b3_val < 0, rs1_b2_val == -3, rs1_b1_val > 0 and rs2_b1_val < 0, rs1_b3_val == -128, rs1_b1_val == 16
// opcode: sub8 ; op1:x18; op2:x18; dest:x19; op1val:0x80fd10f6;  op2val:0x8007fa03
TEST_RR_OP(sub8, x19, x18, x18, 0x00000000, 0x80fd10f6, 0x8007fa03, x5, 4, x14)

inst_2:
// rs1 == rd != rs2, rs1==x20, rs2==x30, rd==x20, rs1_b3_val < 0 and rs2_b3_val > 0, rs2_b3_val == 2, rs1_b3_val == -17, rs1_b0_val == 4, rs2_b1_val == -1, rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b2_val == 1
// opcode: sub8 ; op1:x20; op2:x30; dest:x20; op1val:0xeff60904;  op2val:0x201ff07
TEST_RR_OP(sub8, x20, x20, x30, 0x00000000, 0xeff60904, 0x201ff07, x5, 8, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs1_b3_val > 0 and rs2_b3_val > 0, rs2_b1_val == 4, rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b0_val < 0 and rs2_b0_val < 0, rs1_b1_val == 32, rs2_b2_val == 0
// opcode: sub8 ; op1:x4; op2:x4; dest:x4; op1val:0x60520fa;  op2val:0x20004c0
TEST_RR_OP(sub8, x4, x4, x4, 0x00000000, 0x60520fa, 0x20004c0, x5, 12, x14)

inst_4:
// rs2 == rd != rs1, rs1==x9, rs2==x25, rd==x25, rs1_b2_val == rs2_b2_val, rs2_b1_val == 85, rs2_b0_val == 8, rs1_b2_val < 0 and rs2_b2_val < 0, rs1_b0_val == -5, rs1_b1_val == -3
// opcode: sub8 ; op1:x9; op2:x25; dest:x25; op1val:0x7fcfdfb;  op2val:0x7fc5508
TEST_RR_OP(sub8, x25, x9, x25, 0x00000000, 0x7fcfdfb, 0x7fc5508, x5, 16, x14)

inst_5:
// rs1==x11, rs2==x1, rd==x22, rs1_b2_val > 0 and rs2_b2_val < 0, rs2_b0_val == 16, rs2_b3_val == 16, rs2_b1_val == -128, rs1_b3_val == -9, rs1_b1_val < 0 and rs2_b1_val < 0, rs1_b0_val == 64
// opcode: sub8 ; op1:x11; op2:x1; dest:x22; op1val:0xf73ff940;  op2val:0x10fa8010
TEST_RR_OP(sub8, x22, x11, x1, 0x00000000, 0xf73ff940, 0x10fa8010, x5, 20, x14)

inst_6:
// rs1==x25, rs2==x24, rd==x8, rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b1_val == 1, rs1_b0_val == rs2_b0_val, rs2_b0_val == -128
// opcode: sub8 ; op1:x25; op2:x24; dest:x8; op1val:0xef050180;  op2val:0x3070680
TEST_RR_OP(sub8, x8, x25, x24, 0x00000000, 0xef050180, 0x3070680, x5, 24, x14)

inst_7:
// rs1==x12, rs2==x21, rd==x9, rs1_b1_val == rs2_b1_val, rs1_b2_val == -33, rs2_b3_val == -2, rs1_b1_val == 85, rs1_b0_val == 0, rs2_b0_val == 127
// opcode: sub8 ; op1:x12; op2:x21; dest:x9; op1val:0x7df5500;  op2val:0xfef8557f
TEST_RR_OP(sub8, x9, x12, x21, 0x00000000, 0x7df5500, 0xfef8557f, x5, 28, x14)

inst_8:
// rs1==x7, rs2==x6, rd==x18, rs1_b0_val > 0 and rs2_b0_val < 0, rs2_b2_val == 64, rs1_b1_val == 2, rs1_b2_val == 4, rs2_b3_val == 32
// opcode: sub8 ; op1:x7; op2:x6; dest:x18; op1val:0x6040240;  op2val:0x204080fc
TEST_RR_OP(sub8, x18, x7, x6, 0x00000000, 0x6040240, 0x204080fc, x5, 32, x14)

inst_9:
// rs1==x16, rs2==x28, rd==x30, rs2_b3_val == -86, rs1_b1_val == -1, rs2_b2_val == 85, rs2_b1_val == 8
// opcode: sub8 ; op1:x16; op2:x28; dest:x30; op1val:0xc0fcfffc;  op2val:0xaa550803
TEST_RR_OP(sub8, x30, x16, x28, 0x00000000, 0xc0fcfffc, 0xaa550803, x5, 36, x14)

inst_10:
// rs1==x8, rs2==x31, rd==x15, rs2_b3_val == 85, rs2_b0_val == -2
// opcode: sub8 ; op1:x8; op2:x31; dest:x15; op1val:0xf9fdfffc;  op2val:0x5500fcfe
TEST_RR_OP(sub8, x15, x8, x31, 0x00000000, 0xf9fdfffc, 0x5500fcfe, x5, 40, x14)

inst_11:
// rs1==x17, rs2==x13, rd==x29, rs2_b3_val == 127, rs1_b2_val == 16, rs2_b0_val == -9
// opcode: sub8 ; op1:x17; op2:x13; dest:x29; op1val:0xf9100209;  op2val:0x7f0680f7
TEST_RR_OP(sub8, x29, x17, x13, 0x00000000, 0xf9100209, 0x7f0680f7, x5, 44, x14)

inst_12:
// rs1==x2, rs2==x10, rd==x28, rs2_b3_val == -65, rs2_b0_val == 32, rs2_b1_val == 1, rs2_b2_val == -3
// opcode: sub8 ; op1:x2; op2:x10; dest:x28; op1val:0xfa070180;  op2val:0xbffd0120
TEST_RR_OP(sub8, x28, x2, x10, 0x00000000, 0xfa070180, 0xbffd0120, x5, 48, x14)

inst_13:
// rs1==x31, rs2==x2, rd==x13, rs2_b3_val == -33, rs1_b3_val == -65, rs2_b2_val == 16, rs2_b0_val == 4, rs1_b0_val == -65
// opcode: sub8 ; op1:x31; op2:x2; dest:x13; op1val:0xbffa20bf;  op2val:0xdf100604
TEST_RR_OP(sub8, x13, x31, x2, 0x00000000, 0xbffa20bf, 0xdf100604, x5, 52, x4)

inst_14:
// rs1==x30, rs2==x23, rd==x16, rs2_b3_val == -9, rs2_b0_val == -33, rs1_b0_val == -17, rs1_b3_val == -33
// opcode: sub8 ; op1:x30; op2:x23; dest:x16; op1val:0xdf05fcef;  op2val:0xf7f8f6df
TEST_RR_OP(sub8, x16, x30, x23, 0x00000000, 0xdf05fcef, 0xf7f8f6df, x5, 56, x4)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_15:
// rs1==x5, rs2==x12, rd==x17, rs2_b3_val == -5, rs1_b3_val == 1, rs1_b0_val == -9, rs1_b1_val == -65, rs2_b0_val == 2
// opcode: sub8 ; op1:x5; op2:x12; dest:x17; op1val:0x1c0bff7;  op2val:0xfb000302
TEST_RR_OP(sub8, x17, x5, x12, 0x00000000, 0x1c0bff7, 0xfb000302, x2, 0, x4)

inst_16:
// rs1==x27, rs2==x0, rd==x12, rs2_b3_val == -3, rs2_b1_val == -86, rs1_b2_val == 8, rs2_b2_val == -5, rs1_b1_val == -5, rs2_b0_val == -17
// opcode: sub8 ; op1:x27; op2:x0; dest:x12; op1val:0x608fb00;  op2val:0xfdfbaaef
TEST_RR_OP(sub8, x12, x27, x0, 0x00000000, 0x608fb00, 0xfdfbaaef, x2, 4, x4)

inst_17:
// rs1==x23, rs2==x11, rd==x0, rs2_b3_val == 64, rs2_b0_val == -5, rs1_b2_val == 2
// opcode: sub8 ; op1:x23; op2:x11; dest:x0; op1val:0xf802bf3f;  op2val:0x40fdfffb
TEST_RR_OP(sub8, x0, x23, x11, 0x00000000, 0xf802bf3f, 0x40fdfffb, x2, 8, x4)

inst_18:
// rs1==x26, rs2==x7, rd==x14, rs2_b3_val == 8, rs1_b3_val == 2, rs2_b0_val == -86, rs2_b2_val == 4, rs2_b1_val == 32
// opcode: sub8 ; op1:x26; op2:x7; dest:x14; op1val:0x23ffc09;  op2val:0x80420aa
TEST_RR_OP(sub8, x14, x26, x7, 0x00000000, 0x23ffc09, 0x80420aa, x2, 12, x4)

inst_19:
// rs1==x6, rs2==x16, rd==x26, rs2_b3_val == 4, rs1_b2_val == 64
// opcode: sub8 ; op1:x6; op2:x16; dest:x26; op1val:0x34003f6;  op2val:0x4c004c0
TEST_RR_OP(sub8, x26, x6, x16, 0x00000000, 0x34003f6, 0x4c004c0, x2, 16, x4)

inst_20:
// rs1==x10, rs2==x9, rd==x23, rs2_b3_val == 1, rs2_b2_val == -1, rs1_b3_val == -2, rs1_b2_val == 0
// opcode: sub8 ; op1:x10; op2:x9; dest:x23; op1val:0xfe000209;  op2val:0x1fffffe
TEST_RR_OP(sub8, x23, x10, x9, 0x00000000, 0xfe000209, 0x1fffffe, x2, 20, x4)

inst_21:
// rs1==x29, rs2==x17, rd==x6, rs2_b3_val == 0, rs2_b2_val == -33, rs1_b1_val == 0, rs2_b1_val == 64
// opcode: sub8 ; op1:x29; op2:x17; dest:x6; op1val:0x73f0080;  op2val:0xdf4006
TEST_RR_OP(sub8, x6, x29, x17, 0x00000000, 0x73f0080, 0xdf4006, x2, 24, x4)

inst_22:
// rs1==x28, rs2==x27, rd==x7, rs2_b3_val == -1, 
// opcode: sub8 ; op1:x28; op2:x27; dest:x7; op1val:0xfe4001fc;  op2val:0xfff8f9f7
TEST_RR_OP(sub8, x7, x28, x27, 0x00000000, 0xfe4001fc, 0xfff8f9f7, x2, 28, x4)

inst_23:
// rs1==x3, rs2==x22, rd==x1, rs2_b2_val == -86, 
// opcode: sub8 ; op1:x3; op2:x22; dest:x1; op1val:0x110f8fb;  op2val:0xf7aa807f
TEST_RR_OP(sub8, x1, x3, x22, 0x00000000, 0x110f8fb, 0xf7aa807f, x2, 32, x4)

inst_24:
// rs1==x14, rs2==x8, rd==x21, rs2_b2_val == 127, rs1_b2_val == -1
// opcode: sub8 ; op1:x14; op2:x8; dest:x21; op1val:0xefff05fa;  op2val:0xfc7f08df
TEST_RR_OP(sub8, x21, x14, x8, 0x00000000, 0xefff05fa, 0xfc7f08df, x2, 36, x4)

inst_25:
// rs1==x0, rs2==x14, rd==x3, rs2_b2_val == -65, rs2_b0_val == -65, rs2_b1_val == -2, rs1_b3_val == 64
// opcode: sub8 ; op1:x0; op2:x14; dest:x3; op1val:0x4004f600;  op2val:0xc0bffebf
TEST_RR_OP(sub8, x3, x0, x14, 0x00000000, 0x4004f600, 0xc0bffebf, x2, 40, x4)

inst_26:
// rs1==x21, rs2==x5, rd==x27, rs2_b2_val == -17, rs1_b0_val == 127
// opcode: sub8 ; op1:x21; op2:x5; dest:x27; op1val:0x7f8007f;  op2val:0xf9ef8004
TEST_RR_OP(sub8, x27, x21, x5, 0x00000000, 0x7f8007f, 0xf9ef8004, x2, 44, x4)

inst_27:
// rs1==x13, rs2==x19, rd==x11, rs2_b2_val == -9, rs1_b3_val == 127
// opcode: sub8 ; op1:x13; op2:x19; dest:x11; op1val:0x7ff6fd80;  op2val:0x20f73f02
TEST_RR_OP(sub8, x11, x13, x19, 0x00000000, 0x7ff6fd80, 0x20f73f02, x2, 48, x4)

inst_28:
// rs1==x22, rs2==x15, rd==x10, rs1_b2_val == -65, rs1_b1_val == -33, rs1_b0_val == 85
// opcode: sub8 ; op1:x22; op2:x15; dest:x10; op1val:0x6bfdf55;  op2val:0xfa0301fb
TEST_RR_OP(sub8, x10, x22, x15, 0x00000000, 0x6bfdf55, 0xfa0301fb, x2, 52, x4)

inst_29:
// rs1==x24, rs2==x29, rd==x5, rs1_b2_val == -17, rs2_b0_val == -3
// opcode: sub8 ; op1:x24; op2:x29; dest:x5; op1val:0x9ef037f;  op2val:0x90920fd
TEST_RR_OP(sub8, x5, x24, x29, 0x00000000, 0x9ef037f, 0x90920fd, x2, 56, x4)

inst_30:
// rs1==x1, rs2==x20, rd==x31, rs1_b2_val == -9, 
// opcode: sub8 ; op1:x1; op2:x20; dest:x31; op1val:0xf7f702f8;  op2val:0x87ff9aa
TEST_RR_OP(sub8, x31, x1, x20, 0x00000000, 0xf7f702f8, 0x87ff9aa, x2, 60, x3)

inst_31:
// rs1==x19, rs2==x26, rd==x24, rs1_b2_val == -5, rs1_b3_val == -5, rs2_b1_val == -9, rs1_b1_val == 8
// opcode: sub8 ; op1:x19; op2:x26; dest:x24; op1val:0xfbfb08fc;  op2val:0x640f7ef
TEST_RR_OP(sub8, x24, x19, x26, 0x00000000, 0xfbfb08fc, 0x640f7ef, x2, 64, x3)

inst_32:
// rs1_b2_val == -2, rs1_b1_val == -17
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x7feeffb;  op2val:0xeffaff06
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x7feeffb, 0xeffaff06, x2, 68, x3)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_33:
// rs1_b2_val == 32, rs1_b3_val == -86, rs2_b2_val == -2
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xaa20fd04;  op2val:0x4fe06fe
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xaa20fd04, 0x4fe06fe, x1, 0, x3)

inst_34:
// rs1_b2_val == 1, rs1_b3_val == -3
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfd010355;  op2val:0x4fdff07
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfd010355, 0x4fdff07, x1, 4, x3)

inst_35:
// rs1_b1_val == -86, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xf720aafa;  op2val:0x3ffcf903
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xf720aafa, 0x3ffcf903, x1, 8, x3)

inst_36:
// rs1_b1_val == 127, rs2_b0_val == 85
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xc0fb7f04;  op2val:0xaa000955
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xc0fb7f04, 0xaa000955, x1, 12, x3)

inst_37:
// rs1_b1_val == -9, rs1_b3_val == 85, rs1_b0_val == 2
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x5500f702;  op2val:0xaa060902
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x5500f702, 0xaa060902, x1, 16, x3)

inst_38:
// rs1_b1_val == -2, rs2_b0_val == 64, rs1_b0_val == -33
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfb09fedf;  op2val:0xfb00fe40
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfb09fedf, 0xfb00fe40, x1, 20, x3)

inst_39:
// rs1_b1_val == -128, rs2_b1_val == -65
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x9c08000;  op2val:0xbf07bffc
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x9c08000, 0xbf07bffc, x1, 24, x3)

inst_40:
// rs1_b1_val == 64, rs2_b0_val == -1
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfaf94004;  op2val:0x1fdfeff
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfaf94004, 0x1fdfeff, x1, 28, x3)

inst_41:
// rs1_b1_val == 4, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfd1004ef;  op2val:0xfb3f3f3f
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfd1004ef, 0xfb3f3f3f, x1, 32, x3)

inst_42:
// rs2_b1_val == 127, rs1_b0_val == 1
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfa40ff01;  op2val:0xaa007ff7
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfa40ff01, 0xaa007ff7, x1, 36, x3)

inst_43:
// rs2_b1_val == -33, rs2_b0_val == 0
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfe07c009;  op2val:0x7fc0df00
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfe07c009, 0x7fc0df00, x1, 40, x3)

inst_44:
// rs2_b1_val == -17, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xf73ff940;  op2val:0xf6fbeff7
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xf73ff940, 0xf6fbeff7, x1, 44, x3)

inst_45:
// rs2_b1_val == -5, rs1_b0_val == -3
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfe2080fd;  op2val:0xf7f7fbfb
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfe2080fd, 0xf7f7fbfb, x1, 48, x3)

inst_46:
// rs2_b1_val == -3, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdf6f955;  op2val:0x906fd00
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfdf6f955, 0x906fd00, x1, 52, x3)

inst_47:
// rs2_b1_val == 16, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x93f02fc;  op2val:0x1051010
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x93f02fc, 0x1051010, x1, 56, x3)

inst_48:
// rs2_b1_val == 2, rs2_b2_val == -128
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xbf04c0fb;  op2val:0x108002fb
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xbf04c0fb, 0x108002fb, x1, 60, x3)

inst_49:
// rs2_b1_val == 0, rs1_b0_val == 32, rs1_b2_val == -86
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x1aafc20;  op2val:0x7f1000aa
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x1aafc20, 0x7f1000aa, x1, 64, x3)

inst_50:
// rs1_b3_val == 8, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x80080c0;  op2val:0x7f7ffd09
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x80080c0, 0x7f7ffd09, x1, 68, x3)

inst_51:
// rs1_b0_val == -86, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xfbaa02aa;  op2val:0x40301fd
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xfbaa02aa, 0x40301fd, x1, 72, x3)

inst_52:
// rs2_b0_val == 1, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x8f70207;  op2val:0x060301
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x8f70207, 0x060301, x1, 76, x3)

inst_53:
// rs2_b2_val == 8, rs1_b3_val == 4
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x4aa0980;  op2val:0x6080400
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x4aa0980, 0x6080400, x1, 80, x3)

inst_54:
// rs1_b0_val == -2, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x33ffdfe;  op2val:0x940f9f6
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x33ffdfe, 0x940f9f6, x1, 84, x3)

inst_55:
// rs1_b0_val == 16, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x8f90810;  op2val:0xbff70502
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x8f90810, 0xbff70502, x1, 88, x3)

inst_56:
// rs1_b0_val == 8, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x55020808;  op2val:0xdf000601
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x55020808, 0xdf000601, x1, 92, x3)

inst_57:
// rs1_b3_val == 32, rs1_b2_val == 127
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x207f05f9;  op2val:0x7f030805
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x207f05f9, 0x7f030805, x1, 96, x3)

inst_58:
// rs1_b3_val == 16, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x10f8bf20;  op2val:0x80ef0403
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x10f8bf20, 0x80ef0403, x1, 100, x3)

inst_59:
// rs1_b0_val == -1, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x40fdaaff;  op2val:0x801f700
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x40fdaaff, 0x801f700, x1, 104, x3)

inst_60:
// rs2_b2_val == 32, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xaa2040fc;  op2val:0xaa208055
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xaa2040fc, 0xaa208055, x1, 108, x3)

inst_61:
// rs1_b3_val == 0, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xef0803;  op2val:0xbf054006
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xef0803, 0xbf054006, x1, 112, x3)

inst_62:
// rs1_b3_val == -1, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xff80fbbf;  op2val:0x107f0210
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xff80fbbf, 0x107f0210, x1, 116, x3)

inst_63:
// rs1_b2_val == 85, 
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x855fe7f;  op2val:0xfb4008
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x855fe7f, 0xfb4008, x1, 120, x3)

inst_64:
// rs1_b3_val == rs2_b3_val, rs2_b3_val == -128, rs1_b3_val < 0 and rs2_b3_val < 0, rs1_b2_val == -3, rs1_b1_val > 0 and rs2_b1_val < 0, rs1_b3_val == -128, rs1_b1_val == 16
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x80fd10f6;  op2val:0x8007fa03
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x80fd10f6, 0x8007fa03, x1, 124, x3)

inst_65:
// rs2_b3_val == -3, rs2_b1_val == -86, rs1_b2_val == 8, rs2_b2_val == -5, rs1_b1_val == -5, rs2_b0_val == -17
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x608fb00;  op2val:0xfdfbaaef
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x608fb00, 0xfdfbaaef, x1, 128, x3)

inst_66:
// rs2_b3_val == 64, rs2_b0_val == -5, rs1_b2_val == 2
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0xf802bf3f;  op2val:0x40fdfffb
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0xf802bf3f, 0x40fdfffb, x1, 132, x3)

inst_67:
// rs2_b2_val == -65, rs2_b0_val == -65, rs2_b1_val == -2, rs1_b3_val == 64
// opcode: sub8 ; op1:x30; op2:x29; dest:x31; op1val:0x4004f600;  op2val:0xc0bffebf
TEST_RR_OP(sub8, x31, x30, x29, 0x00000000, 0x4004f600, 0xc0bffebf, x1, 136, x3)
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


signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 35*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
