.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7460
/* 0A7010 800A7460  */  .asciz  "BD"
                        .balign 4

glabel D_800A7464
/* 0A7014 800A7464  */  .asciz  "IP8"
                        .balign 4

glabel D_800A7468
/* 0A7018 800A7468  */  .asciz  "IP7"
                        .balign 4

glabel D_800A746C
/* 0A701C 800A746C  */  .asciz  "IP6"
                        .balign 4

glabel D_800A7470
/* 0A7020 800A7470  */  .asciz  "IP5"
                        .balign 4

glabel D_800A7474
/* 0A7024 800A7474  */  .asciz  "IP4"
                        .balign 4

glabel D_800A7478
/* 0A7028 800A7478  */  .asciz  "IP3"
                        .balign 4

glabel D_800A747C
/* 0A702C 800A747C  */  .asciz  "IP2"
                        .balign 4

glabel D_800A7480
/* 0A7030 800A7480  */  .asciz  "IP1"
                        .balign 4

glabel D_800A7484
/* 0A7034 800A7484  */  .asciz  "Interrupt"
                        .balign 4

glabel D_800A7490
/* 0A7040 800A7490  */  .asciz  "TLB modification exception"
                        .balign 4

glabel D_800A74AC
/* 0A705C 800A74AC  */  .asciz  "TLB exception on load or instruction fetch"
                        .balign 4

glabel D_800A74D8
/* 0A7088 800A74D8  */  .asciz  "TLB exception on store"
                        .balign 4

glabel D_800A74F0
/* 0A70A0 800A74F0  */  .asciz  "Address error on load or instruction fetch"
                        .balign 4

glabel D_800A751C
/* 0A70CC 800A751C  */  .asciz  "Address error on store"
                        .balign 4

glabel D_800A7534
/* 0A70E4 800A7534  */  .asciz  "Bus error exception on instruction fetch"
                        .balign 4

glabel D_800A7560
/* 0A7110 800A7560  */  .asciz  "Bus error exception on data reference"
                        .balign 4

glabel D_800A7588
/* 0A7138 800A7588  */  .asciz  "System call exception"
                        .balign 4

glabel D_800A75A0
/* 0A7150 800A75A0  */  .asciz  "Breakpoint exception"
                        .balign 4

glabel D_800A75B8
/* 0A7168 800A75B8  */  .asciz  "Reserved instruction exception"
                        .balign 4

glabel D_800A75D8
/* 0A7188 800A75D8  */  .asciz  "Coprocessor unusable exception"
                        .balign 4

glabel D_800A75F8
/* 0A71A8 800A75F8  */  .asciz  "Arithmetic overflow exception"
                        .balign 4

glabel D_800A7618
/* 0A71C8 800A7618  */  .asciz  "Trap exception"
                        .balign 4

glabel D_800A7628
/* 0A71D8 800A7628  */  .asciz  "Virtual coherency exception on intruction fetch"
                        .balign 4

glabel D_800A7658
/* 0A7208 800A7658  */  .asciz  "Floating point exception (see fpcsr)"
                        .balign 4

glabel D_800A7680
/* 0A7230 800A7680  */  .asciz  "Watchpoint exception"
                        .balign 4

glabel D_800A7698
/* 0A7248 800A7698  */  .asciz  "Virtual coherency exception on data reference"
                        .balign 4

glabel D_800A76C8
/* 0A7278 800A76C8 00000000 */  .word  0x00000000

glabel D_800A76CC
/* 0A727C 800A76CC  */  .asciz  "CU3"
                        .balign 4

glabel D_800A76D0
/* 0A7280 800A76D0  */  .asciz  "CU2"
                        .balign 4

glabel D_800A76D4
/* 0A7284 800A76D4  */  .asciz  "CU1"
                        .balign 4

glabel D_800A76D8
/* 0A7288 800A76D8  */  .asciz  "CU0"
                        .balign 4

glabel D_800A76DC
/* 0A728C 800A76DC  */  .asciz  "RP"
                        .balign 4

glabel D_800A76E0
/* 0A7290 800A76E0  */  .asciz  "FR"
                        .balign 4

glabel D_800A76E4
/* 0A7294 800A76E4  */  .asciz  "RE"
                        .balign 4

glabel D_800A76E8
/* 0A7298 800A76E8  */  .asciz  "BEV"
                        .balign 4

glabel D_800A76EC
/* 0A729C 800A76EC  */  .asciz  "TS"
                        .balign 4

glabel D_800A76F0
/* 0A72A0 800A76F0  */  .asciz  "SR"
                        .balign 4

glabel D_800A76F4
/* 0A72A4 800A76F4  */  .asciz  "CH"
                        .balign 4

glabel D_800A76F8
/* 0A72A8 800A76F8  */  .asciz  "CE"
                        .balign 4

glabel D_800A76FC
/* 0A72AC 800A76FC  */  .asciz  "DE"
                        .balign 4

glabel D_800A7700
/* 0A72B0 800A7700  */  .asciz  "IM8"
                        .balign 4

glabel D_800A7704
/* 0A72B4 800A7704  */  .asciz  "IM7"
                        .balign 4

glabel D_800A7708
/* 0A72B8 800A7708  */  .asciz  "IM6"
                        .balign 4

glabel D_800A770C
/* 0A72BC 800A770C  */  .asciz  "IM5"
                        .balign 4

glabel D_800A7710
/* 0A72C0 800A7710  */  .asciz  "IM4"
                        .balign 4

glabel D_800A7714
/* 0A72C4 800A7714  */  .asciz  "IM3"
                        .balign 4

glabel D_800A7718
/* 0A72C8 800A7718  */  .asciz  "IM2"
                        .balign 4

glabel D_800A771C
/* 0A72CC 800A771C  */  .asciz  "IM1"
                        .balign 4

glabel D_800A7720
/* 0A72D0 800A7720  */  .asciz  "KX"
                        .balign 4

glabel D_800A7724
/* 0A72D4 800A7724  */  .asciz  "SX"
                        .balign 4

glabel D_800A7728
/* 0A72D8 800A7728  */  .asciz  "UX"
                        .balign 4

glabel D_800A772C
/* 0A72DC 800A772C  */  .asciz  "USR"
                        .balign 4

glabel D_800A7730
/* 0A72E0 800A7730  */  .asciz  "SUP"
                        .balign 4

glabel D_800A7734
/* 0A72E4 800A7734  */  .asciz  "KER"
                        .balign 4

glabel D_800A7738
/* 0A72E8 800A7738  */  .asciz  "ERL"
                        .balign 4

glabel D_800A773C
/* 0A72EC 800A773C  */  .asciz  "EXL"
                        .balign 4

glabel D_800A7740
/* 0A72F0 800A7740  */  .asciz  "IE"
                        .balign 4

glabel D_800A7744
/* 0A72F4 800A7744 00000000 */  .word  0x00000000

glabel D_800A7748
/* 0A72F8 800A7748  */  .asciz  "FS"
                        .balign 4

glabel D_800A774C
/* 0A72FC 800A774C  */  .asciz  "C"
                        .balign 4

glabel D_800A7750
/* 0A7300 800A7750  */  .asciz  "Unimplemented operation"
                        .balign 4

glabel D_800A7768
/* 0A7318 800A7768  */  .asciz  "Invalid operation"
                        .balign 4

glabel D_800A777C
/* 0A732C 800A777C  */  .asciz  "Division by zero"
                        .balign 4

glabel D_800A7790
/* 0A7340 800A7790  */  .asciz  "Overflow"
                        .balign 4

glabel D_800A779C
/* 0A734C 800A779C  */  .asciz  "Underflow"
                        .balign 4

glabel D_800A77A8
/* 0A7358 800A77A8  */  .asciz  "Inexact operation"
                        .balign 4

glabel D_800A77BC
/* 0A736C 800A77BC  */  .asciz  "EV"
                        .balign 4

glabel D_800A77C0
/* 0A7370 800A77C0  */  .asciz  "EZ"
                        .balign 4

glabel D_800A77C4
/* 0A7374 800A77C4  */  .asciz  "EO"
                        .balign 4

glabel D_800A77C8
/* 0A7378 800A77C8  */  .asciz  "EU"
                        .balign 4

glabel D_800A77CC
/* 0A737C 800A77CC  */  .asciz  "EI"
                        .balign 4

glabel D_800A77D0
/* 0A7380 800A77D0  */  .asciz  "FV"
                        .balign 4

glabel D_800A77D4
/* 0A7384 800A77D4  */  .asciz  "FZ"
                        .balign 4

glabel D_800A77D8
/* 0A7388 800A77D8  */  .asciz  "FO"
                        .balign 4

glabel D_800A77DC
/* 0A738C 800A77DC  */  .asciz  "FU"
                        .balign 4

glabel D_800A77E0
/* 0A7390 800A77E0  */  .asciz  "FI"
                        .balign 4

glabel D_800A77E4
/* 0A7394 800A77E4  */  .asciz  "RN"
                        .balign 4

glabel D_800A77E8
/* 0A7398 800A77E8  */  .asciz  "RZ"
                        .balign 4

glabel D_800A77EC
/* 0A739C 800A77EC  */  .asciz  "RP"
                        .balign 4

glabel D_800A77F0
/* 0A73A0 800A77F0  */  .asciz  "RM"
                        .balign 4

glabel D_800A77F4
/* 0A73A4 800A77F4 00000000 */  .word  0x00000000

glabel D_800A77F8
/* 0A73A8 800A77F8  */  .asciz  "%s\t\t0x%08x "
                        .balign 4
/* 0A73B4 800A7804  */  .asciz  "<"
                        .balign 4
/* 0A73B8 800A7808  */  .asciz  ","
                        .balign 4
/* 0A73BC 800A780C  */  .asciz  "%s"
                        .balign 4
/* 0A73C0 800A7810  */  .asciz  ">\n"
                        .balign 4
/* 0A73C4 800A7814  */  .asciz  "%s  NaN           "
                        .balign 4
/* 0A73D8 800A7828  */  .asciz  "%s  Inf           "
                        .balign 4
/* 0A73EC 800A783C  */  .asciz  "%s  Denorm        "
                        .balign 4
/* 0A7400 800A7850  */  .asciz  "%s  %.7e "
                        .balign 4
/* 0A740C 800A785C  */  .asciz  "%s  NaN                   "
                        .balign 4
/* 0A7428 800A7878  */  .asciz  "%s  Inf                   "
                        .balign 4
/* 0A7444 800A7894  */  .asciz  "%s  Denorm                "
                        .balign 4
/* 0A7460 800A78B0  */  .asciz  "%s  %.15e "
                        .balign 4
/* 0A746C 800A78BC  */  .asciz  "\nFault in thread %d:\n\n"
                        .balign 4
/* 0A7484 800A78D4  */  .asciz  "epc\t\t0x%08x\n"
                        .balign 4

glabel _faultstring_cause
/* 0A7494 800A78E4  */  .asciz  "cause"
                        .balign 4

glabel D_800A78EC
/* 0A749C 800A78EC  */  .asciz  "sr"
                        .balign 4
/* 0A74A0 800A78F0  */  .asciz  "badvaddr\t0x%08x\n"
                        .balign 4
/* 0A74B4 800A7904  */  .asciz  "rcp\t\t0x%08x\n\n"
                        .balign 4
/* 0A74C4 800A7914  */  .asciz  "at 0x%016llx v0 0x%016llx v1 0x%016llx\n"
                        .balign 4
/* 0A74EC 800A793C  */  .asciz  "a0 0x%016llx a1 0x%016llx a2 0x%016llx\n"
                        .balign 4
/* 0A7514 800A7964  */  .asciz  "a3 0x%016llx t0 0x%016llx t1 0x%016llx\n"
                        .balign 4
/* 0A753C 800A798C  */  .asciz  "t2 0x%016llx t3 0x%016llx t4 0x%016llx\n"
                        .balign 4
/* 0A7564 800A79B4  */  .asciz  "t5 0x%016llx t6 0x%016llx t7 0x%016llx\n"
                        .balign 4
/* 0A758C 800A79DC  */  .asciz  "s0 0x%016llx s1 0x%016llx s2 0x%016llx\n"
                        .balign 4
/* 0A75B4 800A7A04  */  .asciz  "s3 0x%016llx s4 0x%016llx s5 0x%016llx\n"
                        .balign 4
/* 0A75DC 800A7A2C  */  .asciz  "s6 0x%016llx s7 0x%016llx t8 0x%016llx\n"
                        .balign 4
/* 0A7604 800A7A54  */  .asciz  "t9 0x%016llx gp 0x%016llx sp 0x%016llx\n"
                        .balign 4
/* 0A762C 800A7A7C  */  .asciz  "s8 0x%016llx ra 0x%016llx\n"
                        .balign 4
/* 0A7648 800A7A98  */  .asciz  "lo 0x%016llx hi 0x%016llx\n\n"
                        .balign 4

glabel D_800A7AB4
/* 0A7664 800A7AB4  */  .asciz  "fpcsr"
                        .balign 4

glabel D_800A7ABC
/* 0A766C 800A7ABC  */  .asciz  "\nd0 "
                        .balign 4

glabel D_800A7AC4
/* 0A7674 800A7AC4  */  .asciz  "d2 "
                        .balign 4

glabel D_800A7AC8
/* 0A7678 800A7AC8  */  .asciz  "\nd4 "
                        .balign 4

glabel D_800A7AD0
/* 0A7680 800A7AD0  */  .asciz  "d6 "
                        .balign 4

glabel D_800A7AD4
/* 0A7684 800A7AD4  */  .asciz  "\nd8 "
                        .balign 4

glabel D_800A7ADC
/* 0A768C 800A7ADC  */  .asciz  "d10"
                        .balign 4

glabel D_800A7AE0
/* 0A7690 800A7AE0  */  .asciz  "\nd12"
                        .balign 4

glabel D_800A7AE8
/* 0A7698 800A7AE8  */  .asciz  "d14"
                        .balign 4

glabel D_800A7AEC
/* 0A769C 800A7AEC  */  .asciz  "\nd16"
                        .balign 4

glabel D_800A7AF4
/* 0A76A4 800A7AF4  */  .asciz  "d18"
                        .balign 4

glabel D_800A7AF8
/* 0A76A8 800A7AF8  */  .asciz  "\nd20"
                        .balign 4

glabel D_800A7B00
/* 0A76B0 800A7B00  */  .asciz  "d22"
                        .balign 4

glabel D_800A7B04
/* 0A76B4 800A7B04  */  .asciz  "\nd24"
                        .balign 4

glabel D_800A7B0C
/* 0A76BC 800A7B0C  */  .asciz  "d26"
                        .balign 4

glabel D_800A7B10
/* 0A76C0 800A7B10  */  .asciz  "\nd28"
                        .balign 4

glabel D_800A7B18
/* 0A76C8 800A7B18  */  .asciz  "d30"
                        .balign 4
/* 0A76CC 800A7B1C  */  .asciz  "\n"
                        .balign 4

glabel D_800A7B20
/* 0A76D0 800A7B20  */  .asciz  "\nf0 "
                        .balign 4

glabel D_800A7B28
/* 0A76D8 800A7B28  */  .asciz  "f2 "
                        .balign 4

glabel D_800A7B2C
/* 0A76DC 800A7B2C  */  .asciz  "f4 "
                        .balign 4

glabel D_800A7B30
/* 0A76E0 800A7B30  */  .asciz  "f6 "
                        .balign 4

glabel D_800A7B34
/* 0A76E4 800A7B34  */  .asciz  "\nf8 "
                        .balign 4

glabel D_800A7B3C
/* 0A76EC 800A7B3C  */  .asciz  "f10"
                        .balign 4

glabel D_800A7B40
/* 0A76F0 800A7B40  */  .asciz  "f12"
                        .balign 4

glabel D_800A7B44
/* 0A76F4 800A7B44  */  .asciz  "f14"
                        .balign 4

glabel D_800A7B48
/* 0A76F8 800A7B48  */  .asciz  "\nf16"
                        .balign 4

glabel D_800A7B50
/* 0A7700 800A7B50  */  .asciz  "f18"
                        .balign 4

glabel D_800A7B54
/* 0A7704 800A7B54  */  .asciz  "f20"
                        .balign 4

glabel D_800A7B58
/* 0A7708 800A7B58  */  .asciz  "f22"
                        .balign 4

glabel D_800A7B5C
/* 0A770C 800A7B5C  */  .asciz  "\nf24"
                        .balign 4

glabel D_800A7B64
/* 0A7714 800A7B64  */  .asciz  "f26"
                        .balign 4

glabel D_800A7B68
/* 0A7718 800A7B68  */  .asciz  "f28"
                        .balign 4

glabel D_800A7B6C
/* 0A771C 800A7B6C  */  .asciz  "f30"
                        .balign 4
/* 0A7720 800A7B70  */  .asciz  "\n"
                        .balign 4

glabel _faultstring_FiT
/* 0A7724 800A7B74  */  .asciz  "FiT"
                        .balign 4

glabel D_800A7B78
/* 0A7728 800A7B78  */  .asciz  "%d"
                        .balign 4

glabel D_800A7B7C
/* 0A772C 800A7B7C  */  .asciz  "%08x"
                        .balign 4

glabel D_800A7B84
/* 0A7734 800A7B84  */  .asciz  "%08x"
                        .balign 4
/* 0A773C 800A7B8C  */  .asciz  "\n (flPass: file %s line %d)\n"
                        .balign 4
/* 0A775C 800A7BAC  */  .asciz  "halt: %s: %d\n"
                        .balign 4

glabel D_800A7BBC
/* 0A776C 800A7BBC  */  .asciz  "%d"
                        .balign 4
