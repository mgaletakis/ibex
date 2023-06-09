
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
// This assembly file tests the ukcras16 instruction of the RISC-V RV32PZicsr extension for the ukcras16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",ukcras16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x3,signature_x3_1)

inst_0:// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x29, rs2==x7, rd==x4, rs1_h0_val == 0, rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h0_val == 32767, rs1_h1_val == 2
// opcode: ukcras16 ; op1:x29; op2:x7; dest:x4; op1val:0x020000;  op2val:0x117fff
TEST_RR_OP(ukcras16, x4, x29, x7, 0x00000000, 0x020000, 0x117fff, x3, 0, x15) 

inst_1:// rs1 == rs2 != rd, rs1==x28, rs2==x28, rd==x17, rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h0_val == 2, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h0_val == 128
// opcode: ukcras16 ; op1:x28; op2:x28; dest:x17; op1val:0x0e0080;  op2val:0x0e0002
TEST_RR_OP(ukcras16, x17, x28, x28, 0x00000000, 0x0e0080, 0x0e0002, x3, 8, x15) 

inst_2:// rs1 == rd != rs2, rs1==x27, rs2==x31, rd==x27, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h0_val == 128, rs2_h1_val == 1024
// opcode: ukcras16 ; op1:x27; op2:x31; dest:x27; op1val:0x0a0080;  op2val:0x4000080
TEST_RR_OP(ukcras16, x27, x27, x31, 0x00000000, 0x0a0080, 0x4000080, x3, 16, x15) 

inst_3:// rs1 == rs2 == rd, rs1==x5, rs2==x5, rd==x5, rs2_h1_val == 43690, rs2_h0_val == 64, rs1_h1_val == 43690
// opcode: ukcras16 ; op1:x5; op2:x5; dest:x5; op1val:0xaaaa0006;  op2val:0xaaaa0040
TEST_RR_OP(ukcras16, x5, x5, x5, 0x00000000, 0xaaaa0006, 0xaaaa0040, x3, 24, x15) 

inst_4:// rs2 == rd != rs1, rs1==x9, rs2==x0, rd==x0, rs2_h1_val == 21845, rs2_h0_val == 16384, rs1_h1_val == 64511
// opcode: ukcras16 ; op1:x9; op2:x0; dest:x0; op1val:0xfbff0003;  op2val:0x55554000
TEST_RR_OP(ukcras16, x0, x9, x0, 0x00000000, 0xfbff0003, 0x55554000, x3, 32, x15) 

inst_5:// rs1==x12, rs2==x10, rd==x18, rs2_h1_val == 32767, rs1_h0_val == 65519
// opcode: ukcras16 ; op1:x12; op2:x10; dest:x18; op1val:0x03ffef;  op2val:0x7fff0011
TEST_RR_OP(ukcras16, x18, x12, x10, 0x00000000, 0x03ffef, 0x7fff0011, x3, 40, x15) 

inst_6:// rs1==x31, rs2==x23, rd==x9, rs2_h1_val == 49151, rs1_h0_val == 65535
// opcode: ukcras16 ; op1:x31; op2:x23; dest:x9; op1val:0x05ffff;  op2val:0xbfff0009
TEST_RR_OP(ukcras16, x9, x31, x23, 0x00000000, 0x05ffff, 0xbfff0009, x3, 48, x15) 

inst_7:// rs1==x2, rs2==x27, rd==x23, rs2_h1_val == 57343, rs2_h0_val == 65023
// opcode: ukcras16 ; op1:x2; op2:x27; dest:x23; op1val:0xaaaa0011;  op2val:0xdffffdff
TEST_RR_OP(ukcras16, x23, x2, x27, 0x00000000, 0xaaaa0011, 0xdffffdff, x3, 56, x15) 

inst_8:// rs1==x0, rs2==x21, rd==x13, rs2_h1_val == 61439, rs2_h0_val == 1024, rs1_h1_val == 4
// opcode: ukcras16 ; op1:x0; op2:x21; dest:x13; op1val:0x04000f;  op2val:0xefff0400
TEST_RR_OP(ukcras16, x13, x0, x21, 0x00000000, 0x04000f, 0xefff0400, x3, 64, x15) 

inst_9:// rs1==x18, rs2==x14, rd==x25, rs2_h1_val == 63487, rs2_h0_val == 65531, rs1_h0_val == 4096
// opcode: ukcras16 ; op1:x18; op2:x14; dest:x25; op1val:0x131000;  op2val:0xf7fffffb
TEST_RR_OP(ukcras16, x25, x18, x14, 0x00000000, 0x131000, 0xf7fffffb, x3, 72, x15) 

inst_10:// rs1==x8, rs2==x20, rd==x31, rs2_h1_val == 64511, 
// opcode: ukcras16 ; op1:x8; op2:x20; dest:x31; op1val:0x07000b;  op2val:0xfbff000e
TEST_RR_OP(ukcras16, x31, x8, x20, 0x00000000, 0x07000b, 0xfbff000e, x3, 80, x15) 

inst_11:// rs1==x25, rs2==x29, rd==x28, rs2_h1_val == 65023, rs2_h0_val == 8192, rs1_h1_val == 65535
// opcode: ukcras16 ; op1:x25; op2:x29; dest:x28; op1val:0xffff000f;  op2val:0xfdff2000
TEST_RR_OP(ukcras16, x28, x25, x29, 0x00000000, 0xffff000f, 0xfdff2000, x3, 88, x15) 

inst_12:// rs1==x7, rs2==x4, rd==x29, rs2_h1_val == 65279, rs1_h1_val == 57343, rs2_h0_val == 65534
// opcode: ukcras16 ; op1:x7; op2:x4; dest:x29; op1val:0xdfff0003;  op2val:0xfefffffe
TEST_RR_OP(ukcras16, x29, x7, x4, 0x00000000, 0xdfff0003, 0xfefffffe, x3, 96, x15) 

inst_13:// rs1==x23, rs2==x11, rd==x1, rs2_h1_val == 65407, rs1_h1_val == 8192
// opcode: ukcras16 ; op1:x23; op2:x11; dest:x1; op1val:0x2000ffef;  op2val:0xff7ffffb
TEST_RR_OP(ukcras16, x1, x23, x11, 0x00000000, 0x2000ffef, 0xff7ffffb, x3, 104, x15) 

inst_14:// rs1==x19, rs2==x9, rd==x14, rs2_h1_val == 65471, rs1_h1_val == 65471
// opcode: ukcras16 ; op1:x19; op2:x9; dest:x14; op1val:0xffbf0011;  op2val:0xffbf0006
TEST_RR_OP(ukcras16, x14, x19, x9, 0x00000000, 0xffbf0011, 0xffbf0006, x3, 112, x15) 

inst_15:// rs1==x14, rs2==x12, rd==x24, rs2_h1_val == 65503, rs1_h0_val == 1, rs1_h1_val == 32768
// opcode: ukcras16 ; op1:x14; op2:x12; dest:x24; op1val:0x80000001;  op2val:0xffdf000f
TEST_RR_OP(ukcras16, x24, x14, x12, 0x00000000, 0x80000001, 0xffdf000f, x3, 120, x15) 

inst_16:// rs1==x6, rs2==x18, rd==x19, rs2_h1_val == 65519, rs1_h1_val == 128
// opcode: ukcras16 ; op1:x6; op2:x18; dest:x19; op1val:0x80ffff;  op2val:0xffef0002
TEST_RR_OP(ukcras16, x19, x6, x18, 0x00000000, 0x80ffff, 0xffef0002, x3, 128, x15) 

inst_17:// rs1==x1, rs2==x17, rd==x22, rs2_h1_val == 65527, rs1_h0_val == 1024, rs2_h0_val == 16
// opcode: ukcras16 ; op1:x1; op2:x17; dest:x22; op1val:0x120400;  op2val:0xfff70010
TEST_RR_OP(ukcras16, x22, x1, x17, 0x00000000, 0x120400, 0xfff70010, x3, 136, x15) 

inst_18:// rs1==x15, rs2==x24, rd==x7, rs2_h1_val == 65531, 
// opcode: ukcras16 ; op1:x15; op2:x24; dest:x7; op1val:0xffbf000c;  op2val:0xfffb2000
TEST_RR_OP(ukcras16, x7, x15, x24, 0x00000000, 0xffbf000c, 0xfffb2000, x3, 144, x9) 
RVTEST_SIGBASE(x5,signature_x5_0)

inst_19:// rs1==x3, rs2==x1, rd==x15, rs2_h1_val == 65533, rs2_h0_val == 4096
// opcode: ukcras16 ; op1:x3; op2:x1; dest:x15; op1val:0xfbff0001;  op2val:0xfffd1000
TEST_RR_OP(ukcras16, x15, x3, x1, 0x00000000, 0xfbff0001, 0xfffd1000, x5, 0, x9) 

inst_20:// rs1==x11, rs2==x15, rd==x8, rs2_h1_val == 65534, 
// opcode: ukcras16 ; op1:x11; op2:x15; dest:x8; op1val:0x121000;  op2val:0xfffe0003
TEST_RR_OP(ukcras16, x8, x11, x15, 0x00000000, 0x121000, 0xfffe0003, x5, 8, x9) 

inst_21:// rs1==x13, rs2==x25, rd==x10, rs2_h1_val == 32768, rs1_h1_val == 65279
// opcode: ukcras16 ; op1:x13; op2:x25; dest:x10; op1val:0xfeff0007;  op2val:0x80000013
TEST_RR_OP(ukcras16, x10, x13, x25, 0x00000000, 0xfeff0007, 0x80000013, x5, 16, x9) 

inst_22:// rs1==x24, rs2==x26, rd==x6, rs2_h1_val == 16384, 
// opcode: ukcras16 ; op1:x24; op2:x26; dest:x6; op1val:0x0a0001;  op2val:0x40000400
TEST_RR_OP(ukcras16, x6, x24, x26, 0x00000000, 0x0a0001, 0x40000400, x5, 24, x9) 

inst_23:// rs1==x10, rs2==x19, rd==x21, rs2_h1_val == 8192, rs2_h0_val == 1
// opcode: ukcras16 ; op1:x10; op2:x19; dest:x21; op1val:0x05000b;  op2val:0x20000001
TEST_RR_OP(ukcras16, x21, x10, x19, 0x00000000, 0x05000b, 0x20000001, x5, 32, x9) 

inst_24:// rs1==x16, rs2==x6, rd==x2, rs2_h1_val == 4096, rs2_h0_val == 65535, rs1_h0_val == 57343
// opcode: ukcras16 ; op1:x16; op2:x6; dest:x2; op1val:0x80dfff;  op2val:0x1000ffff
TEST_RR_OP(ukcras16, x2, x16, x6, 0x00000000, 0x80dfff, 0x1000ffff, x5, 40, x9) 

inst_25:// rs1==x17, rs2==x8, rd==x16, rs2_h1_val == 2048, rs1_h1_val == 63487, rs2_h0_val == 0, rs1_h0_val == 61439
// opcode: ukcras16 ; op1:x17; op2:x8; dest:x16; op1val:0xf7ffefff;  op2val:0x8000000
TEST_RR_OP(ukcras16, x16, x17, x8, 0x00000000, 0xf7ffefff, 0x8000000, x5, 48, x9) 

inst_26:// rs1==x30, rs2==x2, rd==x12, rs2_h1_val == 512, rs1_h1_val == 0, rs2_h0_val == 65533, rs1_h0_val == 65533
// opcode: ukcras16 ; op1:x30; op2:x2; dest:x12; op1val:0x00fffd;  op2val:0x200fffd
TEST_RR_OP(ukcras16, x12, x30, x2, 0x00000000, 0x00fffd, 0x200fffd, x5, 56, x9) 

inst_27:// rs1==x4, rs2==x16, rd==x11, rs2_h1_val == 256, rs1_h0_val == 65531
// opcode: ukcras16 ; op1:x4; op2:x16; dest:x11; op1val:0xfbfffffb;  op2val:0x100ffff
TEST_RR_OP(ukcras16, x11, x4, x16, 0x00000000, 0xfbfffffb, 0x100ffff, x5, 64, x9) 

inst_28:// rs1==x26, rs2==x3, rd==x30, rs2_h1_val == 128, rs1_h0_val == 64511
// opcode: ukcras16 ; op1:x26; op2:x3; dest:x30; op1val:0xfefffbff;  op2val:0x800000
TEST_RR_OP(ukcras16, x30, x26, x3, 0x00000000, 0xfefffbff, 0x800000, x5, 72, x9) 

inst_29:// rs1==x22, rs2==x30, rd==x3, rs2_h1_val == 64, 
// opcode: ukcras16 ; op1:x22; op2:x30; dest:x3; op1val:0x04000c;  op2val:0x401000
TEST_RR_OP(ukcras16, x3, x22, x30, 0x00000000, 0x04000c, 0x401000, x5, 80, x9) 

inst_30:// rs1==x21, rs2==x22, rd==x20, rs2_h1_val == 32, rs2_h0_val == 64511, rs1_h0_val == 21845
// opcode: ukcras16 ; op1:x21; op2:x22; dest:x20; op1val:0x805555;  op2val:0x20fbff
TEST_RR_OP(ukcras16, x20, x21, x22, 0x00000000, 0x805555, 0x20fbff, x5, 88, x9) 

inst_31:// rs1==x20, rs2==x13, rd==x26, rs2_h1_val == 16, 
// opcode: ukcras16 ; op1:x20; op2:x13; dest:x26; op1val:0x09fbff;  op2val:0x10000f
TEST_RR_OP(ukcras16, x26, x20, x13, 0x00000000, 0x09fbff, 0x10000f, x5, 96, x9) 

inst_32:// rs2_h1_val == 8, rs1_h0_val == 65407, rs2_h0_val == 65519, rs1_h1_val == 32767
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fffff7f;  op2val:0x08ffef
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x7fffff7f, 0x08ffef, x5, 104, x9) 

inst_33:// rs2_h1_val == 4, rs2_h0_val == 21845, rs1_h1_val == 65534, rs1_h0_val == 65527
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffefff7;  op2val:0x045555
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfffefff7, 0x045555, x5, 112, x9) 

inst_34:// rs2_h1_val == 2, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff000a;  op2val:0x020010
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xf7ff000a, 0x020010, x5, 120, x9) 

inst_35:// rs1_h0_val == 65534, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x05fffe;  op2val:0x200fbff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x05fffe, 0x200fbff, x5, 128, x9) 

inst_36:// rs1_h0_val == 32768, rs1_h1_val == 49151
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff8000;  op2val:0x800fbff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xbfff8000, 0x800fbff, x5, 136, x9) 

inst_37:// rs1_h0_val == 16384, rs2_h0_val == 49151, rs1_h1_val == 65023
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff4000;  op2val:0x20bfff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfdff4000, 0x20bfff, x5, 144, x9) 

inst_38:// rs1_h0_val == 8192, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa2000;  op2val:0x7fff7fff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xaaaa2000, 0x7fff7fff, x5, 152, x9) 

inst_39:// rs1_h0_val == 2048, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x060800;  op2val:0xfffd0006
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x060800, 0xfffd0006, x5, 160, x9) 

inst_40:// rs1_h0_val == 512, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x020200;  op2val:0xfbff0001
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x020200, 0xfbff0001, x5, 168, x9) 

inst_41:// rs1_h0_val == 256, rs1_h1_val == 65527, rs2_h0_val == 65527
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff70100;  op2val:0xf7fffff7
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfff70100, 0xf7fffff7, x5, 176, x9) 

inst_42:// rs1_h0_val == 64, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x040040;  op2val:0xffdf000e
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x040040, 0xffdf000e, x5, 184, x9) 

inst_43:// rs1_h0_val == 32, rs2_h0_val == 8
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff0020;  op2val:0x20000008
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffff0020, 0x20000008, x5, 192, x9) 

inst_44:// rs1_h0_val == 16, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0010;  op2val:0x090006
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x7fff0010, 0x090006, x5, 200, x9) 

inst_45:// rs1_h0_val == 8, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0008;  op2val:0x05fffd
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfeff0008, 0x05fffd, x5, 208, x9) 

inst_46:// rs1_h0_val == 4, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0c0004;  op2val:0xfffd0000
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x0c0004, 0xfffd0000, x5, 216, x9) 

inst_47:// rs1_h0_val == 2, rs2_h0_val == 4
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x030002;  op2val:0x100004
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x030002, 0x100004, x5, 224, x9) 

inst_48:// rs2_h1_val == 1, rs1_h1_val == 512
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x2004000;  op2val:0x01fff7
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x2004000, 0x01fff7, x5, 232, x9) 

inst_49:// rs2_h1_val == 65535, rs1_h1_val == 65407
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f1000;  op2val:0xffffffff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xff7f1000, 0xffffffff, x5, 240, x9) 

inst_50:// rs2_h1_val == 0, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffff7f;  op2val:0x00ffef
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfbffff7f, 0x00ffef, x5, 248, x9) 

inst_51:// rs2_h0_val == 43690, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x07fffd;  op2val:0x02aaaa
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x07fffd, 0x02aaaa, x5, 256, x9) 

inst_52:// rs2_h0_val == 57343, rs1_h1_val == 4096
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x10000005;  op2val:0x20dfff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x10000005, 0x20dfff, x5, 264, x9) 

inst_53:// rs2_h0_val == 61439, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x04000e;  op2val:0x08efff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x04000e, 0x08efff, x5, 272, x9) 

inst_54:// rs2_h0_val == 63487, rs1_h0_val == 65471, rs1_h1_val == 65533
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffbf;  op2val:0xffeff7ff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfffdffbf, 0xffeff7ff, x5, 280, x9) 

inst_55:// rs2_h0_val == 65279, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x020000;  op2val:0x10feff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x020000, 0x10feff, x5, 288, x9) 

inst_56:// rs2_h0_val == 512, rs1_h1_val == 21845
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555ffff;  op2val:0xfbff0200
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x5555ffff, 0xfbff0200, x5, 296, x9) 

inst_57:// rs2_h0_val == 256, rs1_h1_val == 64
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x40ffef;  op2val:0x2000100
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x40ffef, 0x2000100, x5, 304, x9) 

inst_58:// rs2_h0_val == 32, rs1_h0_val == 32767
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff7fff;  op2val:0xfff70020
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfbff7fff, 0xfff70020, x5, 312, x9) 

inst_59:// rs1_h1_val == 61439, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff000d;  op2val:0x11000a
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xefff000d, 0x11000a, x5, 320, x9) 

inst_60:// rs1_h1_val == 65503, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf7fff;  op2val:0x40000004
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffdf7fff, 0x40000004, x5, 328, x9) 

inst_61:// rs1_h1_val == 65519, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef0011;  op2val:0x030080
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffef0011, 0x030080, x5, 336, x9) 

inst_62:// rs1_h1_val == 65531, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0100;  op2val:0x115555
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfffb0100, 0x115555, x5, 344, x9) 

inst_63:// rs1_h1_val == 16384, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000fff7;  op2val:0x130013
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x4000fff7, 0x130013, x5, 352, x9) 

inst_64:// rs1_h1_val == 2048, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x800000c;  op2val:0x030002
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x800000c, 0x030002, x5, 360, x9) 

inst_65:// rs1_h1_val == 1024, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x4007fff;  op2val:0x080003
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x4007fff, 0x080003, x5, 368, x9) 

inst_66:// rs1_h1_val == 256, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x1007fff;  op2val:0x10000400
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x1007fff, 0x10000400, x5, 376, x9) 

inst_67:// rs1_h1_val == 32, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x200040;  op2val:0xffbf0080
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x200040, 0xffbf0080, x5, 384, x9) 

inst_68:// rs1_h1_val == 16, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x100013;  op2val:0x80feff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x100013, 0x80feff, x5, 392, x9) 

inst_69:// rs1_h1_val == 8, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x08000d;  op2val:0x010010
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x08000d, 0x010010, x5, 400, x9) 

inst_70:// rs1_h1_val == 1, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x010200;  op2val:0x000007
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x010200, 0x000007, x5, 408, x9) 

inst_71:// rs1_h0_val == 43690, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfffaaaa;  op2val:0x120008
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xbfffaaaa, 0x120008, x5, 416, x9) 

inst_72:// rs2_h0_val == 65407, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffaaaa;  op2val:0xefffff7f
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfbffaaaa, 0xefffff7f, x5, 424, x9) 

inst_73:// rs2_h0_val == 65471, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0001;  op2val:0xff7fffbf
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfffd0001, 0xff7fffbf, x5, 432, x9) 

inst_74:// rs1_h0_val == 49151, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x12bfff;  op2val:0xffff0020
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x12bfff, 0xffff0020, x5, 440, x9) 

inst_75:// rs2_h0_val == 65503, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x0affff;  op2val:0x0fffdf
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x0affff, 0x0fffdf, x5, 448, x9) 

inst_76:// rs1_h0_val == 63487, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdff7ff;  op2val:0xaaaa0004
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffdff7ff, 0xaaaa0004, x5, 456, x9) 

inst_77:// rs1_h0_val == 65023, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffdff;  op2val:0x00000b
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffeffdff, 0x00000b, x5, 464, x9) 

inst_78:// rs1_h0_val == 65279, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555feff;  op2val:0xffbffdff
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x5555feff, 0xffbffdff, x5, 472, x9) 

inst_79:// rs2_h0_val == 32768, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0080;  op2val:0xefff8000
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xffbf0080, 0xefff8000, x5, 480, x9) 

inst_80:// rs1_h0_val == 65503, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ffdf;  op2val:0x400002
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x07ffdf, 0x400002, x5, 488, x9) 

inst_81:// rs2_h0_val == 2048, 
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000040;  op2val:0xff7f0800
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0x8000040, 0xff7f0800, x5, 496, x9) 

inst_82:// rs2_h1_val == 43690, rs2_h0_val == 64, rs1_h1_val == 43690
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa0006;  op2val:0xaaaa0040
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xaaaa0006, 0xaaaa0040, x5, 504, x9) 

inst_83:// rs2_h1_val == 21845, rs2_h0_val == 16384, rs1_h1_val == 64511
// opcode: ukcras16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0003;  op2val:0x55554000
TEST_RR_OP(ukcras16, x31, x30, x29, 0x00000000, 0xfbff0003, 0x55554000, x5, 512, x9) 
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


signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 38*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 130*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
