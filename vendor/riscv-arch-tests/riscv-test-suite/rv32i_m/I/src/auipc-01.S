
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Tue Dec 15 15:36:11 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32i.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I")

.section .text.init
.org 0x80
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

RVTEST_SIGBASE( x11,signature_x11_1)

inst_0:
// rd==x20, imm_val == 0, imm_val==0
// opcode: auipc ; dest:x20; immval:0x0
TEST_AUIPC(auipc, x20, 0x0, 0x0, x11, 0, x12)

inst_1:
// rd==x17, imm_val > 0, 
// opcode: auipc ; dest:x17; immval:0xe
TEST_AUIPC(auipc, x17, 0xe000, 0xe, x11, 4, x12)

inst_2:
// rd==x4, imm_val == ((2**20)-1), 
// opcode: auipc ; dest:x4; immval:0xfffff
TEST_AUIPC(auipc, x4, -0x1000, 0xfffff, x11, 8, x12)

inst_3:
// rd==x24, imm_val==3, 
// opcode: auipc ; dest:x24; immval:0x3
TEST_AUIPC(auipc, x24, 0x3000, 0x3, x11, 12, x12)

inst_4:
// rd==x21, imm_val==349525, imm_val == 349525
// opcode: auipc ; dest:x21; immval:0x55555
TEST_AUIPC(auipc, x21, 0x55555000, 0x55555, x11, 16, x12)

inst_5:
// rd==x8, imm_val==699050, imm_val == 699050
// opcode: auipc ; dest:x8; immval:0xaaaaa
TEST_AUIPC(auipc, x8, -0x55556000, 0xaaaaa, x11, 20, x12)

inst_6:
// rd==x14, imm_val==5, 
// opcode: auipc ; dest:x14; immval:0x5
TEST_AUIPC(auipc, x14, 0x5000, 0x5, x11, 24, x12)

inst_7:
// rd==x26, imm_val==209715, 
// opcode: auipc ; dest:x26; immval:0x33333
TEST_AUIPC(auipc, x26, 0x33333000, 0x33333, x11, 28, x12)

inst_8:
// rd==x9, imm_val==419430, 
// opcode: auipc ; dest:x9; immval:0x66666
TEST_AUIPC(auipc, x9, 0x66666000, 0x66666, x11, 32, x12)

inst_9:
// rd==x15, imm_val==724, 
// opcode: auipc ; dest:x15; immval:0x2d4
TEST_AUIPC(auipc, x15, 0x2d4000, 0x2d4, x11, 36, x12)

inst_10:
// rd==x18, imm_val==1023, 
// opcode: auipc ; dest:x18; immval:0x3ff
TEST_AUIPC(auipc, x18, 0x3ff000, 0x3ff, x11, 40, x12)

inst_11:
// rd==x10, imm_val==2, imm_val == 2
// opcode: auipc ; dest:x10; immval:0x2
TEST_AUIPC(auipc, x10, 0x2000, 0x2, x11, 44, x12)

inst_12:
// rd==x7, imm_val==349524, 
// opcode: auipc ; dest:x7; immval:0x55554
TEST_AUIPC(auipc, x7, 0x55554000, 0x55554, x11, 48, x12)

inst_13:
// rd==x1, imm_val==699049, 
// opcode: auipc ; dest:x1; immval:0xaaaa9
TEST_AUIPC(auipc, x1, -0x55557000, 0xaaaa9, x11, 52, x12)

inst_14:
// rd==x25, imm_val==4, imm_val == 4
// opcode: auipc ; dest:x25; immval:0x4
TEST_AUIPC(auipc, x25, 0x4000, 0x4, x11, 56, x12)

inst_15:
// rd==x23, imm_val==209714, 
// opcode: auipc ; dest:x23; immval:0x33332
TEST_AUIPC(auipc, x23, 0x33332000, 0x33332, x11, 60, x12)

inst_16:
// rd==x31, imm_val==419429, 
// opcode: auipc ; dest:x31; immval:0x66665
TEST_AUIPC(auipc, x31, 0x66665000, 0x66665, x11, 64, x12)

inst_17:
// rd==x5, imm_val==723, 
// opcode: auipc ; dest:x5; immval:0x2d3
TEST_AUIPC(auipc, x5, 0x2d3000, 0x2d3, x11, 68, x12)

inst_18:
// rd==x22, imm_val==1022, 
// opcode: auipc ; dest:x22; immval:0x3fe
TEST_AUIPC(auipc, x22, 0x3fe000, 0x3fe, x11, 72, x12)

inst_19:
// rd==x3, imm_val==349526, 
// opcode: auipc ; dest:x3; immval:0x55556
TEST_AUIPC(auipc, x3, 0x55556000, 0x55556, x11, 76, x12)

inst_20:
// rd==x30, imm_val==699051, 
// opcode: auipc ; dest:x30; immval:0xaaaab
TEST_AUIPC(auipc, x30, -0x55555000, 0xaaaab, x11, 80, x12)

inst_21:
// rd==x0, imm_val==6, 
// opcode: auipc ; dest:x0; immval:0x6
TEST_AUIPC(auipc, x0, 0, 0x6, x11, 84, x12)

inst_22:
// rd==x16, imm_val==209716, 
// opcode: auipc ; dest:x16; immval:0x33334
TEST_AUIPC(auipc, x16, 0x33334000, 0x33334, x11, 88, x12)

inst_23:
// rd==x19, imm_val==419431, 
// opcode: auipc ; dest:x19; immval:0x66667
TEST_AUIPC(auipc, x19, 0x66667000, 0x66667, x11, 92, x12)

inst_24:
// rd==x29, imm_val==725, 
// opcode: auipc ; dest:x29; immval:0x2d5
TEST_AUIPC(auipc, x29, 0x2d5000, 0x2d5, x11, 96, x12)

inst_25:
// rd==x6, imm_val==1, imm_val == 1
// opcode: auipc ; dest:x6; immval:0x1
TEST_AUIPC(auipc, x6, 0x1000, 0x1, x11, 100, x12)

inst_26:
// rd==x28, imm_val==1024, imm_val == 1024
// opcode: auipc ; dest:x28; immval:0x400
TEST_AUIPC(auipc, x28, 0x400000, 0x400, x11, 104, x12)

inst_27:
// rd==x2, imm_val == 8, 
// opcode: auipc ; dest:x2; immval:0x8
TEST_AUIPC(auipc, x2, 0x8000, 0x8, x11, 108, x12)

inst_28:
// rd==x27, imm_val == 16, 
// opcode: auipc ; dest:x27; immval:0x10
TEST_AUIPC(auipc, x27, 0x10000, 0x10, x11, 112, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_29:
// rd==x13, imm_val == 32, 
// opcode: auipc ; dest:x13; immval:0x20
TEST_AUIPC(auipc, x13, 0x20000, 0x20, x1, 0, x2)

inst_30:
// rd==x11, imm_val == 64, 
// opcode: auipc ; dest:x11; immval:0x40
TEST_AUIPC(auipc, x11, 0x40000, 0x40, x1, 4, x2)

inst_31:
// rd==x12, imm_val == 128, 
// opcode: auipc ; dest:x12; immval:0x80
TEST_AUIPC(auipc, x12, 0x80000, 0x80, x1, 8, x2)

inst_32:
// imm_val == 983039, 
// opcode: auipc ; dest:x10; immval:0xeffff
TEST_AUIPC(auipc, x10, -0x10001000, 0xeffff, x1, 12, x2)

inst_33:
// imm_val == 917503, 
// opcode: auipc ; dest:x10; immval:0xdffff
TEST_AUIPC(auipc, x10, -0x20001000, 0xdffff, x1, 16, x2)

inst_34:
// imm_val == 786431, 
// opcode: auipc ; dest:x10; immval:0xbffff
TEST_AUIPC(auipc, x10, -0x40001000, 0xbffff, x1, 20, x2)

inst_35:
// imm_val == 524287, 
// opcode: auipc ; dest:x10; immval:0x7ffff
TEST_AUIPC(auipc, x10, 0x7ffff000, 0x7ffff, x1, 24, x2)

inst_36:
// imm_val == 256, 
// opcode: auipc ; dest:x10; immval:0x100
TEST_AUIPC(auipc, x10, 0x100000, 0x100, x1, 28, x2)

inst_37:
// imm_val == 512, 
// opcode: auipc ; dest:x10; immval:0x200
TEST_AUIPC(auipc, x10, 0x200000, 0x200, x1, 32, x2)

inst_38:
// imm_val == 2048, 
// opcode: auipc ; dest:x10; immval:0x800
TEST_AUIPC(auipc, x10, 0x800000, 0x800, x1, 36, x2)

inst_39:
// imm_val == 4096, 
// opcode: auipc ; dest:x10; immval:0x1000
TEST_AUIPC(auipc, x10, 0x1000000, 0x1000, x1, 40, x2)

inst_40:
// imm_val == 8192, 
// opcode: auipc ; dest:x10; immval:0x2000
TEST_AUIPC(auipc, x10, 0x2000000, 0x2000, x1, 44, x2)

inst_41:
// imm_val == 16384, 
// opcode: auipc ; dest:x10; immval:0x4000
TEST_AUIPC(auipc, x10, 0x4000000, 0x4000, x1, 48, x2)

inst_42:
// imm_val == 32768, 
// opcode: auipc ; dest:x10; immval:0x8000
TEST_AUIPC(auipc, x10, 0x8000000, 0x8000, x1, 52, x2)

inst_43:
// imm_val == 65536, 
// opcode: auipc ; dest:x10; immval:0x10000
TEST_AUIPC(auipc, x10, 0x10000000, 0x10000, x1, 56, x2)

inst_44:
// imm_val == 131072, 
// opcode: auipc ; dest:x10; immval:0x20000
TEST_AUIPC(auipc, x10, 0x20000000, 0x20000, x1, 60, x2)

inst_45:
// imm_val == 262144, 
// opcode: auipc ; dest:x10; immval:0x40000
TEST_AUIPC(auipc, x10, 0x40000000, 0x40000, x1, 64, x2)

inst_46:
// imm_val == 524288, 
// opcode: auipc ; dest:x10; immval:0x80000
TEST_AUIPC(auipc, x10, -0x80000000, 0x80000, x1, 68, x2)

inst_47:
// imm_val == 1048574, 
// opcode: auipc ; dest:x10; immval:0xffffe
TEST_AUIPC(auipc, x10, -0x2000, 0xffffe, x1, 72, x2)

inst_48:
// imm_val == 1048573, 
// opcode: auipc ; dest:x10; immval:0xffffd
TEST_AUIPC(auipc, x10, -0x3000, 0xffffd, x1, 76, x2)

inst_49:
// imm_val == 1048571, 
// opcode: auipc ; dest:x10; immval:0xffffb
TEST_AUIPC(auipc, x10, -0x5000, 0xffffb, x1, 80, x2)

inst_50:
// imm_val == 1048567, 
// opcode: auipc ; dest:x10; immval:0xffff7
TEST_AUIPC(auipc, x10, -0x9000, 0xffff7, x1, 84, x2)

inst_51:
// imm_val == 1048559, 
// opcode: auipc ; dest:x10; immval:0xfffef
TEST_AUIPC(auipc, x10, -0x11000, 0xfffef, x1, 88, x2)

inst_52:
// imm_val == 1048543, 
// opcode: auipc ; dest:x10; immval:0xfffdf
TEST_AUIPC(auipc, x10, -0x21000, 0xfffdf, x1, 92, x2)

inst_53:
// imm_val == 1048511, 
// opcode: auipc ; dest:x10; immval:0xfffbf
TEST_AUIPC(auipc, x10, -0x41000, 0xfffbf, x1, 96, x2)

inst_54:
// imm_val == 1048447, 
// opcode: auipc ; dest:x10; immval:0xfff7f
TEST_AUIPC(auipc, x10, -0x81000, 0xfff7f, x1, 100, x2)

inst_55:
// imm_val == 1048319, 
// opcode: auipc ; dest:x10; immval:0xffeff
TEST_AUIPC(auipc, x10, -0x101000, 0xffeff, x1, 104, x2)

inst_56:
// imm_val == 1048063, 
// opcode: auipc ; dest:x10; immval:0xffdff
TEST_AUIPC(auipc, x10, -0x201000, 0xffdff, x1, 108, x2)

inst_57:
// imm_val == 1047551, 
// opcode: auipc ; dest:x10; immval:0xffbff
TEST_AUIPC(auipc, x10, -0x401000, 0xffbff, x1, 112, x2)

inst_58:
// imm_val == 1046527, 
// opcode: auipc ; dest:x10; immval:0xff7ff
TEST_AUIPC(auipc, x10, -0x801000, 0xff7ff, x1, 116, x2)

inst_59:
// imm_val == 1044479, 
// opcode: auipc ; dest:x10; immval:0xfefff
TEST_AUIPC(auipc, x10, -0x1001000, 0xfefff, x1, 120, x2)

inst_60:
// imm_val == 1040383, 
// opcode: auipc ; dest:x10; immval:0xfdfff
TEST_AUIPC(auipc, x10, -0x2001000, 0xfdfff, x1, 124, x2)

inst_61:
// imm_val == 1032191, 
// opcode: auipc ; dest:x10; immval:0xfbfff
TEST_AUIPC(auipc, x10, -0x4001000, 0xfbfff, x1, 128, x2)

inst_62:
// imm_val == 1015807, 
// opcode: auipc ; dest:x10; immval:0xf7fff
TEST_AUIPC(auipc, x10, -0x8001000, 0xf7fff, x1, 132, x2)

inst_63:
// imm_val==6, 
// opcode: auipc ; dest:x10; immval:0x6
TEST_AUIPC(auipc, x10, 0x6000, 0x6, x1, 136, x2)
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


signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 35*(XLEN/32),4,0xdeadbeef

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
