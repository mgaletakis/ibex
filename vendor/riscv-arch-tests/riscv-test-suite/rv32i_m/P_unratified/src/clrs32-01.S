
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
// This assembly file tests the clrs32 instruction of the RISC-V RV32PZicsr extension for the clrs32 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",clrs32)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x3,signature_x3_1)

inst_0:
// rs1==x26, rd==x11, rs1_w0_val == -2147483648, 
// opcode: clrs32 ; op1:x26; dest:x11; op1val:0x80000000;
TEST_RD_OP( clrs32, x11, x26, 0x00000000, 0x80000000, x3, 0, x15)

inst_1:
// rs1==x20, rd==x0, rs1_w0_val == -1431655766, 
// opcode: clrs32 ; op1:x20; dest:x0; op1val:0xaaaaaaaa;
TEST_RD_OP( clrs32, x0, x20, 0x00000000, 0xaaaaaaaa, x3, 4, x15)

inst_2:
// rs1==x21, rd==x16, rs1_w0_val == 1431655765, 
// opcode: clrs32 ; op1:x21; dest:x16; op1val:0x55555555;
TEST_RD_OP( clrs32, x16, x21, 0x00000000, 0x55555555, x3, 8, x15)

inst_3:
// rs1==x2, rd==x30, rs1_w0_val == 2147483647, 
// opcode: clrs32 ; op1:x2; dest:x30; op1val:0x7fffffff;
TEST_RD_OP( clrs32, x30, x2, 0x00000000, 0x7fffffff, x3, 12, x15)

inst_4:
// rs1==x4, rd==x22, rs1_w0_val == -1073741825, 
// opcode: clrs32 ; op1:x4; dest:x22; op1val:0xbfffffff;
TEST_RD_OP( clrs32, x22, x4, 0x00000000, 0xbfffffff, x3, 16, x15)

inst_5:
// rs1==x19, rd==x2, rs1_w0_val == -536870913, 
// opcode: clrs32 ; op1:x19; dest:x2; op1val:0xdfffffff;
TEST_RD_OP( clrs32, x2, x19, 0x00000000, 0xdfffffff, x3, 20, x15)

inst_6:
// rs1==x6, rd==x29, rs1_w0_val == -268435457, 
// opcode: clrs32 ; op1:x6; dest:x29; op1val:0xefffffff;
TEST_RD_OP( clrs32, x29, x6, 0x00000000, 0xefffffff, x3, 24, x15)

inst_7:
// rs1==x28, rd==x25, rs1_w0_val == -134217729, 
// opcode: clrs32 ; op1:x28; dest:x25; op1val:0xf7ffffff;
TEST_RD_OP( clrs32, x25, x28, 0x00000000, 0xf7ffffff, x3, 28, x15)

inst_8:
// rs1==x11, rd==x1, rs1_w0_val == -67108865, 
// opcode: clrs32 ; op1:x11; dest:x1; op1val:0xfbffffff;
TEST_RD_OP( clrs32, x1, x11, 0x00000000, 0xfbffffff, x3, 32, x15)

inst_9:
// rs1==x1, rd==x13, rs1_w0_val == -33554433, 
// opcode: clrs32 ; op1:x1; dest:x13; op1val:0xfdffffff;
TEST_RD_OP( clrs32, x13, x1, 0x00000000, 0xfdffffff, x3, 36, x15)

inst_10:
// rs1==x23, rd==x4, rs1_w0_val == -16777217, 
// opcode: clrs32 ; op1:x23; dest:x4; op1val:0xfeffffff;
TEST_RD_OP( clrs32, x4, x23, 0x00000000, 0xfeffffff, x3, 40, x15)

inst_11:
// rs1==x5, rd==x9, rs1_w0_val == -8388609, 
// opcode: clrs32 ; op1:x5; dest:x9; op1val:0xff7fffff;
TEST_RD_OP( clrs32, x9, x5, 0x00000000, 0xff7fffff, x3, 44, x15)

inst_12:
// rs1==x27, rd==x20, rs1_w0_val == -4194305, 
// opcode: clrs32 ; op1:x27; dest:x20; op1val:0xffbfffff;
TEST_RD_OP( clrs32, x20, x27, 0x00000000, 0xffbfffff, x3, 48, x15)

inst_13:
// rs1==x25, rd==x24, rs1_w0_val == -2097153, 
// opcode: clrs32 ; op1:x25; dest:x24; op1val:0xffdfffff;
TEST_RD_OP( clrs32, x24, x25, 0x00000000, 0xffdfffff, x3, 52, x15)

inst_14:
// rs1==x12, rd==x21, rs1_w0_val == -1048577, 
// opcode: clrs32 ; op1:x12; dest:x21; op1val:0xffefffff;
TEST_RD_OP( clrs32, x21, x12, 0x00000000, 0xffefffff, x3, 56, x15)

inst_15:
// rs1==x13, rd==x5, rs1_w0_val == -524289, 
// opcode: clrs32 ; op1:x13; dest:x5; op1val:0xfff7ffff;
TEST_RD_OP( clrs32, x5, x13, 0x00000000, 0xfff7ffff, x3, 60, x15)

inst_16:
// rs1==x30, rd==x19, rs1_w0_val == -262145, 
// opcode: clrs32 ; op1:x30; dest:x19; op1val:0xfffbffff;
TEST_RD_OP( clrs32, x19, x30, 0x00000000, 0xfffbffff, x3, 64, x15)

inst_17:
// rs1==x7, rd==x10, rs1_w0_val == -131073, 
// opcode: clrs32 ; op1:x7; dest:x10; op1val:0xfffdffff;
TEST_RD_OP( clrs32, x10, x7, 0x00000000, 0xfffdffff, x3, 68, x15)

inst_18:
// rs1==x17, rd==x8, rs1_w0_val == -65537, 
// opcode: clrs32 ; op1:x17; dest:x8; op1val:0xfffeffff;
TEST_RD_OP( clrs32, x8, x17, 0x00000000, 0xfffeffff, x3, 72, x15)

inst_19:
// rs1==x10, rd==x27, rs1_w0_val == -32769, 
// opcode: clrs32 ; op1:x10; dest:x27; op1val:0xffff7fff;
TEST_RD_OP( clrs32, x27, x10, 0x00000000, 0xffff7fff, x3, 76, x15)

inst_20:
// rs1==x14, rd==x12, rs1_w0_val == -16385, 
// opcode: clrs32 ; op1:x14; dest:x12; op1val:0xffffbfff;
TEST_RD_OP( clrs32, x12, x14, 0x00000000, 0xffffbfff, x3, 80, x15)

inst_21:
// rs1==x16, rd==x17, rs1_w0_val == -8193, 
// opcode: clrs32 ; op1:x16; dest:x17; op1val:0xffffdfff;
TEST_RD_OP( clrs32, x17, x16, 0x00000000, 0xffffdfff, x3, 84, x2)

inst_22:
// rs1==x22, rd==x15, rs1_w0_val == -4097, 
// opcode: clrs32 ; op1:x22; dest:x15; op1val:0xffffefff;
TEST_RD_OP( clrs32, x15, x22, 0x00000000, 0xffffefff, x3, 88, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_23:
// rs1==x29, rd==x6, rs1_w0_val == -2049, 
// opcode: clrs32 ; op1:x29; dest:x6; op1val:0xfffff7ff;
TEST_RD_OP( clrs32, x6, x29, 0x00000000, 0xfffff7ff, x1, 0, x2)

inst_24:
// rs1==x15, rd==x7, rs1_w0_val == -1025, 
// opcode: clrs32 ; op1:x15; dest:x7; op1val:0xfffffbff;
TEST_RD_OP( clrs32, x7, x15, 0x00000000, 0xfffffbff, x1, 4, x2)

inst_25:
// rs1==x9, rd==x3, rs1_w0_val == -513, 
// opcode: clrs32 ; op1:x9; dest:x3; op1val:0xfffffdff;
TEST_RD_OP( clrs32, x3, x9, 0x00000000, 0xfffffdff, x1, 8, x2)

inst_26:
// rs1==x8, rd==x28, rs1_w0_val == -257, 
// opcode: clrs32 ; op1:x8; dest:x28; op1val:0xfffffeff;
TEST_RD_OP( clrs32, x28, x8, 0x00000000, 0xfffffeff, x1, 12, x2)

inst_27:
// rs1==x18, rd==x23, rs1_w0_val == -129, 
// opcode: clrs32 ; op1:x18; dest:x23; op1val:0xffffff7f;
TEST_RD_OP( clrs32, x23, x18, 0x00000000, 0xffffff7f, x1, 16, x2)

inst_28:
// rs1==x0, rd==x14, rs1_w0_val == -65, 
// opcode: clrs32 ; op1:x0; dest:x14; op1val:0xffffffbf;
TEST_RD_OP( clrs32, x14, x0, 0x00000000, 0xffffffbf, x1, 20, x2)

inst_29:
// rs1==x31, rd==x18, rs1_w0_val == -33, 
// opcode: clrs32 ; op1:x31; dest:x18; op1val:0xffffffdf;
TEST_RD_OP( clrs32, x18, x31, 0x00000000, 0xffffffdf, x1, 24, x2)

inst_30:
// rs1==x3, rd==x26, rs1_w0_val == -17, 
// opcode: clrs32 ; op1:x3; dest:x26; op1val:0xffffffef;
TEST_RD_OP( clrs32, x26, x3, 0x00000000, 0xffffffef, x1, 28, x2)

inst_31:
// rs1==x24, rd==x31, rs1_w0_val == -9, 
// opcode: clrs32 ; op1:x24; dest:x31; op1val:0xfffffff7;
TEST_RD_OP( clrs32, x31, x24, 0x00000000, 0xfffffff7, x1, 32, x2)

inst_32:
// rs1_w0_val == -5, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xfffffffb;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xfffffffb, x1, 36, x2)

inst_33:
// rs1_w0_val == -3, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xfffffffd;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xfffffffd, x1, 40, x2)

inst_34:
// rs1_w0_val == -2, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xfffffffe;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xfffffffe, x1, 44, x2)

inst_35:
// rs1_w0_val == 1073741824, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x40000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x40000000, x1, 48, x2)

inst_36:
// rs1_w0_val == 536870912, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x20000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x20000000, x1, 52, x2)

inst_37:
// rs1_w0_val == 2, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000002;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000002, x1, 56, x2)

inst_38:
// rs1_w0_val == 1, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000001;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000001, x1, 60, x2)

inst_39:
// rs1_w0_val == 0, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000000, x1, 64, x2)

inst_40:
// rs1_w0_val == -1, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xffffffff;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xffffffff, x1, 68, x2)

inst_41:
// rs1_w0_val == 268435456, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x10000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x10000000, x1, 72, x2)

inst_42:
// rs1_w0_val == 134217728, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x8000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x8000000, x1, 76, x2)

inst_43:
// rs1_w0_val == 67108864, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x4000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x4000000, x1, 80, x2)

inst_44:
// rs1_w0_val == 33554432, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x2000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x2000000, x1, 84, x2)

inst_45:
// rs1_w0_val == 16777216, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x1000000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x1000000, x1, 88, x2)

inst_46:
// rs1_w0_val == 8388608, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x800000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x800000, x1, 92, x2)

inst_47:
// rs1_w0_val == 4194304, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x400000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x400000, x1, 96, x2)

inst_48:
// rs1_w0_val == 2097152, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x200000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x200000, x1, 100, x2)

inst_49:
// rs1_w0_val == 1048576, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x100000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x100000, x1, 104, x2)

inst_50:
// rs1_w0_val == 524288, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x080000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x080000, x1, 108, x2)

inst_51:
// rs1_w0_val == 262144, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x040000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x040000, x1, 112, x2)

inst_52:
// rs1_w0_val == 131072, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x020000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x020000, x1, 116, x2)

inst_53:
// rs1_w0_val == 65536, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x010000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x010000, x1, 120, x2)

inst_54:
// rs1_w0_val == 32768, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x008000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x008000, x1, 124, x2)

inst_55:
// rs1_w0_val == 16384, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x004000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x004000, x1, 128, x2)

inst_56:
// rs1_w0_val == 8192, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x002000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x002000, x1, 132, x2)

inst_57:
// rs1_w0_val == 4096, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x001000;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x001000, x1, 136, x2)

inst_58:
// rs1_w0_val == 2048, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000800;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000800, x1, 140, x2)

inst_59:
// rs1_w0_val == 1024, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000400;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000400, x1, 144, x2)

inst_60:
// rs1_w0_val == 512, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000200;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000200, x1, 148, x2)

inst_61:
// rs1_w0_val == 256, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000100;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000100, x1, 152, x2)

inst_62:
// rs1_w0_val == 128, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000080;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000080, x1, 156, x2)

inst_63:
// rs1_w0_val == 64, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000040;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000040, x1, 160, x2)

inst_64:
// rs1_w0_val == 32, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000020;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000020, x1, 164, x2)

inst_65:
// rs1_w0_val == 16, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000010;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000010, x1, 168, x2)

inst_66:
// rs1_w0_val == 8, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000008;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000008, x1, 172, x2)

inst_67:
// rs1_w0_val == 4, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0x000004;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0x000004, x1, 176, x2)

inst_68:
// rs1_w0_val == -1431655766, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xaaaaaaaa;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xaaaaaaaa, x1, 180, x2)

inst_69:
// rs1_w0_val == -65, 
// opcode: clrs32 ; op1:x30; dest:x31; op1val:0xffffffbf;
TEST_RD_OP( clrs32, x31, x30, 0x00000000, 0xffffffbf, x1, 184, x2)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


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
