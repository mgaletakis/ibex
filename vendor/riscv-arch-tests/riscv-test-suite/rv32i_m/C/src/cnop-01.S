
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
// This assembly file tests the c.nop instruction of the RISC-V C extension for the cnop covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cnop)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// imm_val == 1, 
// opcode:c.nop; immval:0x1
TEST_CNOP_OP(c.nop, x2, 0x1, x1, 0)

inst_1:
// imm_val == 2, 
// opcode:c.nop; immval:0x2
TEST_CNOP_OP(c.nop, x2, 0x2, x1, 4)

inst_2:
// imm_val == 4, 
// opcode:c.nop; immval:0x4
TEST_CNOP_OP(c.nop, x2, 0x4, x1, 8)

inst_3:
// imm_val == 8, 
// opcode:c.nop; immval:0x8
TEST_CNOP_OP(c.nop, x2, 0x8, x1, 12)

inst_4:
// imm_val == 16, 
// opcode:c.nop; immval:0x10
TEST_CNOP_OP(c.nop, x2, 0x10, x1, 16)

inst_5:
// imm_val == -32, 
// opcode:c.nop; immval:-0x20
TEST_CNOP_OP(c.nop, x2, -0x20, x1, 20)

inst_6:
// imm_val == -2, 
// opcode:c.nop; immval:-0x2
TEST_CNOP_OP(c.nop, x2, -0x2, x1, 24)

inst_7:
// imm_val == -3, 
// opcode:c.nop; immval:-0x3
TEST_CNOP_OP(c.nop, x2, -0x3, x1, 28)

inst_8:
// imm_val == -5, 
// opcode:c.nop; immval:-0x5
TEST_CNOP_OP(c.nop, x2, -0x5, x1, 32)

inst_9:
// imm_val == -9, 
// opcode:c.nop; immval:-0x9
TEST_CNOP_OP(c.nop, x2, -0x9, x1, 36)

inst_10:
// imm_val == -17, 
// opcode:c.nop; immval:-0x11
TEST_CNOP_OP(c.nop, x2, -0x11, x1, 40)

inst_11:
// imm_val == 31, 
// opcode:c.nop; immval:0x1f
TEST_CNOP_OP(c.nop, x2, 0x1f, x1, 44)

inst_12:
// imm_val == 21, 
// opcode:c.nop; immval:0x15
TEST_CNOP_OP(c.nop, x2, 0x15, x1, 48)

inst_13:
// imm_val == -22, 
// opcode:c.nop; immval:-0x16
TEST_CNOP_OP(c.nop, x2, -0x16, x1, 52)
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
    .fill 14*(XLEN/32),4,0xdeadbeef

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
