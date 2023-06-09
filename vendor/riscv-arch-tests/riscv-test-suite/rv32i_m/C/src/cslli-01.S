
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Wed Dec 16 03:37:04 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32ic.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the c.slli instruction of the RISC-V C extension for the cslli covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IC")

.section .text.init
.org 0x80
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cslli)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rd==x11, rs1_val < 0 and imm_val < xlen, 
// opcode:c.slli; op1:x11; dest:x11 op1val:-0xa; immval:0x12
TEST_CI_OP( c.slli, x11, 0xffd80000, -0xa, 0x12, x1, 0, x2)

inst_1:
// rd==x9, rs1_val > 0 and imm_val < xlen, imm_val == 23, rs1_val == 1 and imm_val != 0 and imm_val < xlen, rs1_val == 1
// opcode:c.slli; op1:x9; dest:x9 op1val:0x1; immval:0x17
TEST_CI_OP( c.slli, x9, 0x800000, 0x1, 0x17, x1, 4, x2)

inst_2:
// rd==x10, rs1_val == imm_val and imm_val != 0  and imm_val < xlen, rs1_val == 4, rs1_val==4, imm_val == 4
// opcode:c.slli; op1:x10; dest:x10 op1val:0x4; immval:0x4
TEST_CI_OP( c.slli, x10, 0x40, 0x4, 0x4, x1, 8, x2)

inst_3:
// rd==x12, rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen, rs1_val == -2147483648
// opcode:c.slli; op1:x12; dest:x12 op1val:-0x80000000; immval:0x11
TEST_CI_OP( c.slli, x12, 0x0, -0x80000000, 0x11, x1, 12, x2)

inst_4:
// rd==x13, rs1_val == 0 and imm_val != 0 and imm_val < xlen, imm_val == 21, rs1_val==0
// opcode:c.slli; op1:x13; dest:x13 op1val:0x0; immval:0x15
TEST_CI_OP( c.slli, x13, 0x0, 0x0, 0x15, x1, 16, x2)

inst_5:
// rd==x14, rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen, imm_val == 29, rs1_val == 2147483647
// opcode:c.slli; op1:x14; dest:x14 op1val:0x7fffffff; immval:0x1d
TEST_CI_OP( c.slli, x14, 0xe0000000, 0x7fffffff, 0x1d, x1, 20, x2)

inst_6:
// rd==x8, rs1_val == 2, rs1_val==2
// opcode:c.slli; op1:x8; dest:x8 op1val:0x2; immval:0xc
TEST_CI_OP( c.slli, x8, 0x2000, 0x2, 0xc, x1, 24, x2)

inst_7:
// rd==x15, rs1_val == 8, 
// opcode:c.slli; op1:x15; dest:x15 op1val:0x8; immval:0x5
TEST_CI_OP( c.slli, x15, 0x100, 0x8, 0x5, x1, 28, x2)

inst_8:
// rs1_val == 16, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x10; immval:0x1f
TEST_CI_OP( c.slli, x10, 0x0, 0x10, 0x1f, x1, 32, x2)

inst_9:
// rs1_val == 32, imm_val == 10
// opcode:c.slli; op1:x10; dest:x10 op1val:0x20; immval:0xa
TEST_CI_OP( c.slli, x10, 0x8000, 0x20, 0xa, x1, 36, x2)

inst_10:
// rs1_val == 64, imm_val == 27
// opcode:c.slli; op1:x10; dest:x10 op1val:0x40; immval:0x1b
TEST_CI_OP( c.slli, x10, 0x0, 0x40, 0x1b, x1, 40, x2)

inst_11:
// rs1_val == 128, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x80; immval:0x12
TEST_CI_OP( c.slli, x10, 0x2000000, 0x80, 0x12, x1, 44, x2)

inst_12:
// rs1_val == 256, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x100; immval:0x4
TEST_CI_OP( c.slli, x10, 0x1000, 0x100, 0x4, x1, 48, x2)

inst_13:
// rs1_val == 512, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x200; immval:0xc
TEST_CI_OP( c.slli, x10, 0x200000, 0x200, 0xc, x1, 52, x2)

inst_14:
// rs1_val == 1024, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x400; immval:0xb
TEST_CI_OP( c.slli, x10, 0x200000, 0x400, 0xb, x1, 56, x2)

inst_15:
// rs1_val == 2048, imm_val == 8
// opcode:c.slli; op1:x10; dest:x10 op1val:0x800; immval:0x8
TEST_CI_OP( c.slli, x10, 0x80000, 0x800, 0x8, x1, 60, x2)

inst_16:
// rs1_val == 4096, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x1000; immval:0x6
TEST_CI_OP( c.slli, x10, 0x40000, 0x1000, 0x6, x1, 64, x2)

inst_17:
// rs1_val == 8192, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x2000; immval:0xd
TEST_CI_OP( c.slli, x10, 0x4000000, 0x2000, 0xd, x1, 68, x2)

inst_18:
// rs1_val == 16384, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x4000; immval:0x7
TEST_CI_OP( c.slli, x10, 0x200000, 0x4000, 0x7, x1, 72, x2)

inst_19:
// rs1_val == 32768, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x8000; immval:0xc
TEST_CI_OP( c.slli, x10, 0x8000000, 0x8000, 0xc, x1, 76, x2)

inst_20:
// rs1_val == 65536, imm_val == 2
// opcode:c.slli; op1:x10; dest:x10 op1val:0x10000; immval:0x2
TEST_CI_OP( c.slli, x10, 0x40000, 0x10000, 0x2, x1, 80, x2)

inst_21:
// rs1_val == 131072, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x20000; immval:0x12
TEST_CI_OP( c.slli, x10, 0x0, 0x20000, 0x12, x1, 84, x2)

inst_22:
// rs1_val == 262144, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x40000; immval:0x3
TEST_CI_OP( c.slli, x10, 0x200000, 0x40000, 0x3, x1, 88, x2)

inst_23:
// rs1_val == 524288, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x80000; immval:0xa
TEST_CI_OP( c.slli, x10, 0x20000000, 0x80000, 0xa, x1, 92, x2)

inst_24:
// rs1_val == 1048576, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x100000; immval:0x5
TEST_CI_OP( c.slli, x10, 0x2000000, 0x100000, 0x5, x1, 96, x2)

inst_25:
// rs1_val == 2097152, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x200000; immval:0x12
TEST_CI_OP( c.slli, x10, 0x0, 0x200000, 0x12, x1, 100, x2)

inst_26:
// rs1_val == 4194304, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x400000; immval:0x1d
TEST_CI_OP( c.slli, x10, 0x0, 0x400000, 0x1d, x1, 104, x2)

inst_27:
// rs1_val == 8388608, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x800000; immval:0x8
TEST_CI_OP( c.slli, x10, 0x80000000, 0x800000, 0x8, x1, 108, x2)

inst_28:
// rs1_val == 16777216, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x1000000; immval:0x5
TEST_CI_OP( c.slli, x10, 0x20000000, 0x1000000, 0x5, x1, 112, x2)

inst_29:
// rs1_val == 33554432, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x2000000; immval:0xb
TEST_CI_OP( c.slli, x10, 0x0, 0x2000000, 0xb, x1, 116, x2)

inst_30:
// rs1_val == 67108864, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x4000000; immval:0xc
TEST_CI_OP( c.slli, x10, 0x0, 0x4000000, 0xc, x1, 120, x2)

inst_31:
// rs1_val == 134217728, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x8000000; immval:0x7
TEST_CI_OP( c.slli, x10, 0x0, 0x8000000, 0x7, x1, 124, x2)

inst_32:
// rs1_val == 268435456, imm_val == 16
// opcode:c.slli; op1:x10; dest:x10 op1val:0x10000000; immval:0x10
TEST_CI_OP( c.slli, x10, 0x0, 0x10000000, 0x10, x1, 128, x2)

inst_33:
// rs1_val == 536870912, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x20000000; immval:0x11
TEST_CI_OP( c.slli, x10, 0x0, 0x20000000, 0x11, x1, 132, x2)

inst_34:
// rs1_val == 1073741824, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x40000000; immval:0xd
TEST_CI_OP( c.slli, x10, 0x0, 0x40000000, 0xd, x1, 136, x2)

inst_35:
// rs1_val == -2, imm_val == 15
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x2; immval:0xf
TEST_CI_OP( c.slli, x10, 0xffff0000, -0x2, 0xf, x1, 140, x2)

inst_36:
// rs1_val == -3, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x3; immval:0x7
TEST_CI_OP( c.slli, x10, 0xfffffe80, -0x3, 0x7, x1, 144, x2)

inst_37:
// rs1_val == -5, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x5; immval:0x11
TEST_CI_OP( c.slli, x10, 0xfff60000, -0x5, 0x11, x1, 148, x2)

inst_38:
// rs1_val == -9, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x9; immval:0xb
TEST_CI_OP( c.slli, x10, 0xffffb800, -0x9, 0xb, x1, 152, x2)

inst_39:
// rs1_val == -17, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x11; immval:0xf
TEST_CI_OP( c.slli, x10, 0xfff78000, -0x11, 0xf, x1, 156, x2)

inst_40:
// rs1_val == -33, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x21; immval:0x1f
TEST_CI_OP( c.slli, x10, 0x80000000, -0x21, 0x1f, x1, 160, x2)

inst_41:
// rs1_val == -65, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x41; immval:0x10
TEST_CI_OP( c.slli, x10, 0xffbf0000, -0x41, 0x10, x1, 164, x2)

inst_42:
// rs1_val == -129, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x81; immval:0xc
TEST_CI_OP( c.slli, x10, 0xfff7f000, -0x81, 0xc, x1, 168, x2)

inst_43:
// rs1_val == -257, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x101; immval:0x12
TEST_CI_OP( c.slli, x10, 0xfbfc0000, -0x101, 0x12, x1, 172, x2)

inst_44:
// rs1_val == -513, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x201; immval:0x4
TEST_CI_OP( c.slli, x10, 0xffffdff0, -0x201, 0x4, x1, 176, x2)

inst_45:
// rs1_val == -1025, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x401; immval:0x17
TEST_CI_OP( c.slli, x10, 0xff800000, -0x401, 0x17, x1, 180, x2)

inst_46:
// rs1_val == -2049, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x801; immval:0xd
TEST_CI_OP( c.slli, x10, 0xfeffe000, -0x801, 0xd, x1, 184, x2)

inst_47:
// rs1_val == -4097, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x1001; immval:0xc
TEST_CI_OP( c.slli, x10, 0xfefff000, -0x1001, 0xc, x1, 188, x2)

inst_48:
// rs1_val == -8193, imm_val == 1
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x2001; immval:0x1
TEST_CI_OP( c.slli, x10, 0xffffbffe, -0x2001, 0x1, x1, 192, x2)

inst_49:
// rs1_val == -16385, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x4001; immval:0xd
TEST_CI_OP( c.slli, x10, 0xf7ffe000, -0x4001, 0xd, x1, 196, x2)

inst_50:
// rs1_val == -32769, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x8001; immval:0xf
TEST_CI_OP( c.slli, x10, 0xbfff8000, -0x8001, 0xf, x1, 200, x2)

inst_51:
// rs1_val == -65537, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x10001; immval:0x7
TEST_CI_OP( c.slli, x10, 0xff7fff80, -0x10001, 0x7, x1, 204, x2)

inst_52:
// rs1_val == -131073, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x20001; immval:0x2
TEST_CI_OP( c.slli, x10, 0xfff7fffc, -0x20001, 0x2, x1, 208, x2)

inst_53:
// rs1_val == -262145, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x40001; immval:0x1f
TEST_CI_OP( c.slli, x10, 0x80000000, -0x40001, 0x1f, x1, 212, x2)

inst_54:
// rs1_val == -524289, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x80001; immval:0x15
TEST_CI_OP( c.slli, x10, 0xffe00000, -0x80001, 0x15, x1, 216, x2)

inst_55:
// rs1_val == -1048577, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x100001; immval:0x9
TEST_CI_OP( c.slli, x10, 0xdffffe00, -0x100001, 0x9, x1, 220, x2)

inst_56:
// rs1_val == -2097153, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x200001; immval:0xd
TEST_CI_OP( c.slli, x10, 0xffffe000, -0x200001, 0xd, x1, 224, x2)

inst_57:
// rs1_val == -33554433, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x2000001; immval:0x8
TEST_CI_OP( c.slli, x10, 0xffffff00, -0x2000001, 0x8, x1, 228, x2)

inst_58:
// rs1_val == -67108865, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x4000001; immval:0x15
TEST_CI_OP( c.slli, x10, 0xffe00000, -0x4000001, 0x15, x1, 232, x2)

inst_59:
// rs1_val == -134217729, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x8000001; immval:0xf
TEST_CI_OP( c.slli, x10, 0xffff8000, -0x8000001, 0xf, x1, 236, x2)

inst_60:
// rs1_val == -268435457, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x10000001; immval:0x8
TEST_CI_OP( c.slli, x10, 0xffffff00, -0x10000001, 0x8, x1, 240, x2)

inst_61:
// rs1_val == -536870913, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x20000001; immval:0x13
TEST_CI_OP( c.slli, x10, 0xfff80000, -0x20000001, 0x13, x1, 244, x2)

inst_62:
// rs1_val == -1073741825, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x40000001; immval:0xa
TEST_CI_OP( c.slli, x10, 0xfffffc00, -0x40000001, 0xa, x1, 248, x2)

inst_63:
// rs1_val == 1431655765, rs1_val==1431655765
// opcode:c.slli; op1:x10; dest:x10 op1val:0x55555555; immval:0x2
TEST_CI_OP( c.slli, x10, 0x55555554, 0x55555555, 0x2, x1, 252, x2)

inst_64:
// rs1_val == -1431655766, rs1_val==-1431655766
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x55555556; immval:0x1
TEST_CI_OP( c.slli, x10, 0x55555554, -0x55555556, 0x1, x1, 256, x2)

inst_65:
// rs1_val==3, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x3; immval:0x7
TEST_CI_OP( c.slli, x10, 0x180, 0x3, 0x7, x1, 260, x2)

inst_66:
// rs1_val==5, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x5; immval:0xd
TEST_CI_OP( c.slli, x10, 0xa000, 0x5, 0xd, x1, 264, x2)

inst_67:
// rs1_val==858993459, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x33333333; immval:0x8
TEST_CI_OP( c.slli, x10, 0x33333300, 0x33333333, 0x8, x1, 268, x2)

inst_68:
// rs1_val==1717986918, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x66666666; immval:0x3
TEST_CI_OP( c.slli, x10, 0x33333330, 0x66666666, 0x3, x1, 272, x2)

inst_69:
// rs1_val==-46340, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0xb504; immval:0x1
TEST_CI_OP( c.slli, x10, 0xfffe95f8, -0xb504, 0x1, x1, 276, x2)

inst_70:
// rs1_val==46340, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0xb504; immval:0x1
TEST_CI_OP( c.slli, x10, 0x16a08, 0xb504, 0x1, x1, 280, x2)

inst_71:
// imm_val == 30, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x55555555; immval:0x1e
TEST_CI_OP( c.slli, x10, 0x40000000, 0x55555555, 0x1e, x1, 284, x2)

inst_72:
// rs1_val==46341, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0xb505; immval:0xd
TEST_CI_OP( c.slli, x10, 0x16a0a000, 0xb505, 0xd, x1, 288, x2)

inst_73:
// rs1_val==1431655764, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x55555554; immval:0x5
TEST_CI_OP( c.slli, x10, 0xaaaaaa80, 0x55555554, 0x5, x1, 292, x2)

inst_74:
// rs1_val==-46339, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0xb503; immval:0x8
TEST_CI_OP( c.slli, x10, 0xff4afd00, -0xb503, 0x8, x1, 296, x2)

inst_75:
// rs1_val==858993458, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x33333332; immval:0x12
TEST_CI_OP( c.slli, x10, 0xccc80000, 0x33333332, 0x12, x1, 300, x2)

inst_76:
// rs1_val==1717986917, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x66666665; immval:0xf
TEST_CI_OP( c.slli, x10, 0x33328000, 0x66666665, 0xf, x1, 304, x2)

inst_77:
// rs1_val==46339, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0xb503; immval:0x1e
TEST_CI_OP( c.slli, x10, 0xc0000000, 0xb503, 0x1e, x1, 308, x2)

inst_78:
// rs1_val==1431655766, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x55555556; immval:0x1e
TEST_CI_OP( c.slli, x10, 0x80000000, 0x55555556, 0x1e, x1, 312, x2)

inst_79:
// rs1_val==-1431655765, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x55555555; immval:0x15
TEST_CI_OP( c.slli, x10, 0x55600000, -0x55555555, 0x15, x1, 316, x2)

inst_80:
// rs1_val==6, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x6; immval:0x11
TEST_CI_OP( c.slli, x10, 0xc0000, 0x6, 0x11, x1, 320, x2)

inst_81:
// rs1_val==858993460, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x33333334; immval:0x3
TEST_CI_OP( c.slli, x10, 0x999999a0, 0x33333334, 0x3, x1, 324, x2)

inst_82:
// rs1_val==1717986919, 
// opcode:c.slli; op1:x10; dest:x10 op1val:0x66666667; immval:0x10
TEST_CI_OP( c.slli, x10, 0x66670000, 0x66666667, 0x10, x1, 328, x2)

inst_83:
// rs1_val == -4194305, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x400001; immval:0x10
TEST_CI_OP( c.slli, x10, 0xffff0000, -0x400001, 0x10, x1, 332, x2)

inst_84:
// rs1_val == -8388609, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x800001; immval:0x10
TEST_CI_OP( c.slli, x10, 0xffff0000, -0x800001, 0x10, x1, 336, x2)

inst_85:
// rs1_val == -16777217, 
// opcode:c.slli; op1:x10; dest:x10 op1val:-0x1000001; immval:0x15
TEST_CI_OP( c.slli, x10, 0xffe00000, -0x1000001, 0x15, x1, 340, x2)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 86*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
