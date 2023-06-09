
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
// This assembly file tests the c.li instruction of the RISC-V C extension for the cli covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)

RVTEST_SIGBASE( x4,signature_x4_1)

inst_0:
// rd==x10, imm_val == (-2**(6-1)), imm_val == -32
// opcode:c.li; dest:x10; immval:-0x20
TEST_CASE(x19, x10, -0x20, x4, 0, c.li x10, -0x20;)

inst_1:
// rd==x18, imm_val == 0, 
// opcode:c.li; dest:x18; immval:0x0
TEST_CASE(x19, x18, 0x0, x4, 4, c.li x18, 0x0;)

inst_2:
// rd==x16, imm_val == (2**(6-1)-1), imm_val == 31
// opcode:c.li; dest:x16; immval:0x1f
TEST_CASE(x19, x16, 0x1f, x4, 8, c.li x16, 0x1f;)

inst_3:
// rd==x29, imm_val == 1, 
// opcode:c.li; dest:x29; immval:0x1
TEST_CASE(x19, x29, 0x1, x4, 12, c.li x29, 0x1;)

inst_4:
// rd==x15, imm_val == 2, 
// opcode:c.li; dest:x15; immval:0x2
TEST_CASE(x19, x15, 0x2, x4, 16, c.li x15, 0x2;)

inst_5:
// rd==x2, imm_val == 4, 
// opcode:c.li; dest:x2; immval:0x4
TEST_CASE(x19, x2, 0x4, x4, 20, c.li x2, 0x4;)

inst_6:
// rd==x14, imm_val == 8, 
// opcode:c.li; dest:x14; immval:0x8
TEST_CASE(x19, x14, 0x8, x4, 24, c.li x14, 0x8;)

inst_7:
// rd==x27, imm_val == 16, 
// opcode:c.li; dest:x27; immval:0x10
TEST_CASE(x19, x27, 0x10, x4, 28, c.li x27, 0x10;)

inst_8:
// rd==x8, imm_val == -22, 
// opcode:c.li; dest:x8; immval:-0x16
TEST_CASE(x19, x8, -0x16, x4, 32, c.li x8, -0x16;)

inst_9:
// rd==x13, imm_val == -2, 
// opcode:c.li; dest:x13; immval:-0x2
TEST_CASE(x19, x13, -0x2, x4, 36, c.li x13, -0x2;)

inst_10:
// rd==x30, imm_val == -3, 
// opcode:c.li; dest:x30; immval:-0x3
TEST_CASE(x19, x30, -0x3, x4, 40, c.li x30, -0x3;)

inst_11:
// rd==x11, imm_val == -5, 
// opcode:c.li; dest:x11; immval:-0x5
TEST_CASE(x19, x11, -0x5, x4, 44, c.li x11, -0x5;)

inst_12:
// rd==x6, imm_val == -9, 
// opcode:c.li; dest:x6; immval:-0x9
TEST_CASE(x19, x6, -0x9, x4, 48, c.li x6, -0x9;)

inst_13:
// rd==x26, imm_val == -17, 
// opcode:c.li; dest:x26; immval:-0x11
TEST_CASE(x19, x26, -0x11, x4, 52, c.li x26, -0x11;)

inst_14:
// rd==x9, imm_val == 21, 
// opcode:c.li; dest:x9; immval:0x15
TEST_CASE(x19, x9, 0x15, x4, 56, c.li x9, 0x15;)

inst_15:
// rd==x1, 
// opcode:c.li; dest:x1; immval:0x0
TEST_CASE(x19, x1, 0x0, x4, 60, c.li x1, 0x0;)

inst_16:
// rd==x12, 
// opcode:c.li; dest:x12; immval:0x0
TEST_CASE(x19, x12, 0x0, x4, 64, c.li x12, 0x0;)

inst_17:
// rd==x17, 
// opcode:c.li; dest:x17; immval:0x0
TEST_CASE(x19, x17, 0x0, x4, 68, c.li x17, 0x0;)

inst_18:
// rd==x7, 
// opcode:c.li; dest:x7; immval:0x0
TEST_CASE(x19, x7, 0x0, x4, 72, c.li x7, 0x0;)

inst_19:
// rd==x5, 
// opcode:c.li; dest:x5; immval:0x0
TEST_CASE(x19, x5, 0x0, x4, 76, c.li x5, 0x0;)

inst_20:
// rd==x20, 
// opcode:c.li; dest:x20; immval:0x0
TEST_CASE(x19, x20, 0x0, x4, 80, c.li x20, 0x0;)

inst_21:
// rd==x0, 
// opcode:c.li; dest:x0; immval:0x0
TEST_CASE(x19, x0, 0, x4, 84, c.li x0, 0x0;)

inst_22:
// rd==x31, 
// opcode:c.li; dest:x31; immval:0x0
TEST_CASE(x19, x31, 0x0, x4, 88, c.li x31, 0x0;)

inst_23:
// rd==x24, 
// opcode:c.li; dest:x24; immval:0x0
TEST_CASE(x19, x24, 0x0, x4, 92, c.li x24, 0x0;)

inst_24:
// rd==x3, 
// opcode:c.li; dest:x3; immval:0x0
TEST_CASE(x19, x3, 0x0, x4, 96, c.li x3, 0x0;)

inst_25:
// rd==x22, 
// opcode:c.li; dest:x22; immval:0x0
TEST_CASE(x19, x22, 0x0, x4, 100, c.li x22, 0x0;)

inst_26:
// rd==x25, 
// opcode:c.li; dest:x25; immval:0x0
TEST_CASE(x19, x25, 0x0, x4, 104, c.li x25, 0x0;)

inst_27:
// rd==x21, 
// opcode:c.li; dest:x21; immval:0x0
TEST_CASE(x19, x21, 0x0, x4, 108, c.li x21, 0x0;)

inst_28:
// rd==x19, 
// opcode:c.li; dest:x19; immval:0x0
TEST_CASE(x2, x19, 0x0, x4, 112, c.li x19, 0x0;)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_29:
// rd==x28, 
// opcode:c.li; dest:x28; immval:0x0
TEST_CASE(x2, x28, 0x0, x1, 0, c.li x28, 0x0;)

inst_30:
// rd==x4, 
// opcode:c.li; dest:x4; immval:0x0
TEST_CASE(x2, x4, 0x0, x1, 4, c.li x4, 0x0;)

inst_31:
// rd==x23, 
// opcode:c.li; dest:x23; immval:0x0
TEST_CASE(x2, x23, 0x0, x1, 8, c.li x23, 0x0;)
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


signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 3*(XLEN/32),4,0xdeadbeef

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
