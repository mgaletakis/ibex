
/*
 * outputs/test_pmp_ok_share_1_r0_x1_cfgl0_typex0_umode1.c
 * Generated from gen_pmp_test.cc and test_pmp_ok_share_1.cc_skel.
 * 
 * This test program is to test pmp_ok() when share mode (RW=01).
 * Based on other test cases for mseccfg stiky bits, this test expects following:
 * - RW = 01. For RW != 01, less combinations to show it fail.
 * - MML set
 * - Regine matched.
 * 
 * Remarks:
 * - 
 */

/*
 * Macros from encoding.h
 */
#define MSTATUS_MPP         0x00001800

#define PMP_R     0x01
#define PMP_W     0x02
#define PMP_X     0x04
#define PMP_A     0x18
#define PMP_L     0x80
#define PMP_SHIFT 2

#define PMP_OFF   0x0
#define PMP_TOR   0x08
#define PMP_NA4   0x10
#define PMP_NAPOT 0x18

#define MSECCFG_MML  0x1
#define MSECCFG_MMWP 0x2
#define MSECCFG_RLB  0x4

#define TEST_RW (1 - 0)
#define TEST_FETCH (0)
/*
 * Whether rwx share single cfg for M mode
 * When @set_sec_mml@ set, it must be 0, otherwise unexpected exception
 */
#define M_MODE_RWX 0

#define CAUSE_LOAD_ACCESS 0x5
#define CAUSE_STORE_ACCESS 0x7

typedef unsigned long reg_t;
typedef unsigned long uintptr_t;

/*
 * functions from syscalls.c
 */
#if PRINTF_SUPPORTED
int printf(const char* fmt, ...);
#else
#define printf(...)
#endif

void __attribute__((noreturn)) tohost_exit(uintptr_t code);
void exit(int code);

/*
 * local status
 */
#define TEST_MEM_START 0x80200000
#define TEST_MEM_END 0x80240000
#define U_MEM_END (TEST_MEM_END + 0x10000)
#define FAKE_ADDRESS 0x10000000

static const unsigned long expected_r_fail = 0;
static unsigned actual_r_fail = 0;

static const unsigned long expected_w_fail = 0;
static unsigned actual_w_fail = 0;

static const unsigned long expected_x_fail = 0;
static unsigned actual_x_fail = 0;

static void checkTestResult(void);

/*
 * override syscalls.c.
 *  currently simply skip to nexp instruction
 */
uintptr_t handle_trap(uintptr_t cause, uintptr_t epc, uintptr_t regs[32])
{
    if (epc >= TEST_MEM_START && epc < TEST_MEM_END) {
        asm volatile ("nop");
        actual_x_fail = 1;
        checkTestResult();
    } else if (cause == CAUSE_LOAD_ACCESS || cause == CAUSE_STORE_ACCESS) {
        reg_t addr;
        asm volatile ("csrr %0, mtval\n" : "=r"(addr));
        if (addr >= TEST_MEM_START && addr < TEST_MEM_END) {
            if (cause == CAUSE_LOAD_ACCESS)
                actual_r_fail = 1;
            else 
                actual_w_fail = 1;
            return epc + 4;
        }
        
        if (addr == FAKE_ADDRESS) {
            asm volatile ("nop");
            asm volatile ("nop");
            checkTestResult();
        }
    }
    
    tohost_exit(1337);
}


static void switch_mode_access() {
    reg_t tmp;
    asm volatile (
            "li %0, %1\n"
            "\tcsrc mstatus, t0\n"
            "\tla %0, try_access_umode \n"
            "\tcsrw mepc, %0\n"
            "\tli sp, %2\n"
            "\tmret\n"
            : "=r"(tmp) : "n"(MSTATUS_MPP), "n"(U_MEM_END) : "memory");
}

__attribute ((section(".text_test_foo"), noinline))
static void target_foo() {
    asm volatile ("nop");
    actual_x_fail = 0;
}

/*
 * avoid to access actual_x_fail lies in M mode
 */
__attribute ((section(".text_test_foo"), noinline))
static void target_foo_umode() {
    asm volatile ("nop");
}

__attribute ((section(".data_test_arr"), aligned(8)))
static volatile unsigned char target_arr[100] = {
        1,2,3,4,5,6,7,8,
};

/*
 * On processor_t::reset():
 *  - set_csr(CSR_PMPADDR0, ~reg_t(0));
 *    set_csr(CSR_PMPCFG0, PMP_R | PMP_W | PMP_X | PMP_NAPOT);
 */
static void set_cfg() {
#if 1
    /*
     * set MSECCFG_RLB to avoid locked
     */
    unsigned rlb_value = MSECCFG_RLB;
    asm volatile ("csrs 0x747, %0 \n"::"r"(rlb_value));
#endif
    
    /*
     * Set pmp0cfg for M mode (M_MEM), and pmp1cfg for base of TOR.
     * Then use pmp2cfg for TEST_MEM. Both test code and data share PMP entrance.
     * Also use pmp3cfg for fixed U mode (U_MEM).
     */
    asm volatile ("csrw pmpaddr7, %0 \n" :: "r"(0x8ffffff8 >> 2) : "memory");       // for ibex signature addr
    asm volatile ("csrw pmpaddr3, %0 \n" :: "r"(U_MEM_END >> 2) : "memory");
    asm volatile ("csrw pmpaddr2, %0 \n" :: "r"(TEST_MEM_END >> 2) : "memory");
    asm volatile ("csrw pmpaddr1, %0 \n" :: "r"((TEST_MEM_START) >> 2) : "memory");
    
#if M_MODE_RWX
    asm volatile ("csrw pmpaddr0, %0 \n" :: "r"((0x80000000 >> 2) | 0xfffff) : "memory");
    reg_t cfg0 = (PMP_R | PMP_W | PMP_X | PMP_NAPOT);
    reg_t cfg1 = (PMP_R | PMP_W | PMP_NAPOT) << 24;
#else
    asm volatile ("csrw pmpaddr6, %0 \n" :: "r"(TEST_MEM_START >> 2) : "memory");   // for data
    asm volatile ("csrw pmpaddr5, %0 \n" :: "r"(0x80010000 >> 2) : "memory");       // for code
    asm volatile ("csrw pmpaddr4, %0 \n" :: "r"(0x80000000 >> 2) : "memory");       // addr start
    reg_t cfg0 = PMP_OFF;
    reg_t cfg1 = PMP_OFF | ((PMP_R | PMP_W | PMP_NAPOT) << 24)
                         | ((PMP_R | PMP_W | PMP_TOR) << 16) 
                         | ((PMP_X | PMP_TOR) << 8);
#endif

    // need to set L bit for M mode before set MML
#if M_MODE_RWX
        cfg0 |= PMP_L;
        cfg1 |= (PMP_L << 24);
#else
        cfg1 |= ((PMP_L << 8) | (PMP_L << 16) | (PMP_L << 24));
#endif
        
#if __riscv_xlen == 64
    cfg0 |= (cfg1 << 32);
#else
    asm volatile ("csrw pmpcfg1, %0 \n"
                :
                : "r"(cfg1)
                : "memory");
#endif // __riscv_xlen == 64
    
    asm volatile ("csrw pmpcfg0, %0 \n"
                :
                : "r"(cfg0)
                : "memory");
    // set proc->state.mseccfg, for MML/MMWP
    const unsigned seccfg_bits = MSECCFG_MML | MSECCFG_MMWP;
    asm volatile ("csrs 0x747, %0 \n"::"r"(seccfg_bits));
    
    // after set MML, RW=01 is possible
    cfg0 |= (PMP_R | PMP_W | PMP_X | PMP_TOR) << 24;    // for U_MEM
    cfg0 |= ((0 ? PMP_R : 0)                  // for TEST_MEM
            | PMP_W
            | (1 ? PMP_X : 0)    
            | (0 ? PMP_L : 0) 
            | PMP_TOR) << 16;
    asm volatile ("csrw pmpcfg0, %0 \n"
                :
                : "r"(cfg0)
                : "memory");
    
    // currently dummy since tlb flushed when set_csr on mseccfg
    asm volatile ("fence.i \n");
}

// from pmp_ok() side,W/R/X is similar
__attribute ((noinline))
static void try_access() {
#if TEST_RW
    target_arr[0] += 1;
    const unsigned long delta = (unsigned long)0x1020304005060708ULL;
    *(long *)target_arr += delta;

    if (actual_r_fail == 0 && actual_w_fail == 0) {
        if (*(long *)target_arr != (unsigned long)0x0807060504030201ULL + delta + 1) {
            actual_r_fail = 1;
            actual_w_fail = 1;
        }
    }
#endif

#if TEST_FETCH
    actual_x_fail = 1;  // reset inside target_foo()
    target_foo();
#endif
}

// in case mml set, printf cannot be used in U mode
__attribute ((section(".text_umode")))
void try_access_umode() {
#if TEST_RW
    target_arr[0] += 1;
//    const unsigned long delta = 0x1020304005060708UL;
//    *(long *)target_arr += delta;

//    if (*(long *)target_arr != 0x0807060504030201UL + delta + 1) {
//        actual_rw_fail = 1;
//    }
#endif

#if TEST_FETCH
    target_foo_umode();
#endif
    
    /*
     * switch to M mode by invoking a write access fault for special address.
     */ 
    volatile unsigned char * p = (unsigned char *)(FAKE_ADDRESS);
    *p = 1;
}

static void checkTestResult() {
    int ret = 0;
    if (expected_r_fail != actual_r_fail) {
        ret += 1;
    }
    if (expected_w_fail != actual_w_fail) {
        ret += 2;
    }
    if (expected_x_fail != actual_x_fail) {
        ret += 4;
    }
    
    
    exit(ret); 
}

int main() {
    // assert in M mode
    set_cfg();

    try_access();
#if 1
    switch_mode_access();   // access in umode and report final result
#else
    checkTestResult();
#endif
    return 0; // assert 0
}

