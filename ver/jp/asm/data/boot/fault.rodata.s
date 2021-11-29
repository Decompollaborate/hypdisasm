.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AC090
/* 0ABC40 800AC090  */  .asciz  "BD"
                        .balign 4

glabel D_800AC094
/* 0ABC44 800AC094  */  .asciz  "IP8"
                        .balign 4

glabel D_800AC098
/* 0ABC48 800AC098  */  .asciz  "IP7"
                        .balign 4

glabel D_800AC09C
/* 0ABC4C 800AC09C  */  .asciz  "IP6"
                        .balign 4

glabel D_800AC0A0
/* 0ABC50 800AC0A0  */  .asciz  "IP5"
                        .balign 4

glabel D_800AC0A4
/* 0ABC54 800AC0A4  */  .asciz  "IP4"
                        .balign 4

glabel D_800AC0A8
/* 0ABC58 800AC0A8  */  .asciz  "IP3"
                        .balign 4

glabel D_800AC0AC
/* 0ABC5C 800AC0AC  */  .asciz  "IP2"
                        .balign 4

glabel D_800AC0B0
/* 0ABC60 800AC0B0  */  .asciz  "IP1"
                        .balign 4

glabel D_800AC0B4
/* 0ABC64 800AC0B4  */  .asciz  "Interrupt"
                        .balign 4

glabel D_800AC0C0
/* 0ABC70 800AC0C0  */  .asciz  "TLB modification exception"
                        .balign 4

glabel D_800AC0DC
/* 0ABC8C 800AC0DC  */  .asciz  "TLB exception on load or instruction fetch"
                        .balign 4

glabel D_800AC108
/* 0ABCB8 800AC108  */  .asciz  "TLB exception on store"
                        .balign 4

glabel D_800AC120
/* 0ABCD0 800AC120  */  .asciz  "Address error on load or instruction fetch"
                        .balign 4

glabel D_800AC14C
/* 0ABCFC 800AC14C  */  .asciz  "Address error on store"
                        .balign 4

glabel D_800AC164
/* 0ABD14 800AC164  */  .asciz  "Bus error exception on instruction fetch"
                        .balign 4

glabel D_800AC190
/* 0ABD40 800AC190  */  .asciz  "Bus error exception on data reference"
                        .balign 4

glabel D_800AC1B8
/* 0ABD68 800AC1B8  */  .asciz  "System call exception"
                        .balign 4

glabel D_800AC1D0
/* 0ABD80 800AC1D0  */  .asciz  "Breakpoint exception"
                        .balign 4

glabel D_800AC1E8
/* 0ABD98 800AC1E8  */  .asciz  "Reserved instruction exception"
                        .balign 4

glabel D_800AC208
/* 0ABDB8 800AC208  */  .asciz  "Coprocessor unusable exception"
                        .balign 4

glabel D_800AC228
/* 0ABDD8 800AC228  */  .asciz  "Arithmetic overflow exception"
                        .balign 4

glabel D_800AC248
/* 0ABDF8 800AC248  */  .asciz  "Trap exception"
                        .balign 4

glabel D_800AC258
/* 0ABE08 800AC258  */  .asciz  "Virtual coherency exception on intruction fetch"
                        .balign 4

glabel D_800AC288
/* 0ABE38 800AC288  */  .asciz  "Floating point exception (see fpcsr)"
                        .balign 4

glabel D_800AC2B0
/* 0ABE60 800AC2B0  */  .asciz  "Watchpoint exception"
                        .balign 4

glabel D_800AC2C8
/* 0ABE78 800AC2C8  */  .asciz  "Virtual coherency exception on data reference"
                        .balign 4

glabel D_800AC2F8
/* 0ABEA8 800AC2F8 00000000 */  .word  0x00000000

glabel D_800AC2FC
/* 0ABEAC 800AC2FC  */  .asciz  "CU3"
                        .balign 4

glabel D_800AC300
/* 0ABEB0 800AC300  */  .asciz  "CU2"
                        .balign 4

glabel D_800AC304
/* 0ABEB4 800AC304  */  .asciz  "CU1"
                        .balign 4

glabel D_800AC308
/* 0ABEB8 800AC308  */  .asciz  "CU0"
                        .balign 4

glabel D_800AC30C
/* 0ABEBC 800AC30C  */  .asciz  "RP"
                        .balign 4

glabel D_800AC310
/* 0ABEC0 800AC310  */  .asciz  "FR"
                        .balign 4

glabel D_800AC314
/* 0ABEC4 800AC314  */  .asciz  "RE"
                        .balign 4

glabel D_800AC318
/* 0ABEC8 800AC318  */  .asciz  "BEV"
                        .balign 4

glabel D_800AC31C
/* 0ABECC 800AC31C  */  .asciz  "TS"
                        .balign 4

glabel D_800AC320
/* 0ABED0 800AC320  */  .asciz  "SR"
                        .balign 4

glabel D_800AC324
/* 0ABED4 800AC324  */  .asciz  "CH"
                        .balign 4

glabel D_800AC328
/* 0ABED8 800AC328  */  .asciz  "CE"
                        .balign 4

glabel D_800AC32C
/* 0ABEDC 800AC32C  */  .asciz  "DE"
                        .balign 4

glabel D_800AC330
/* 0ABEE0 800AC330  */  .asciz  "IM8"
                        .balign 4

glabel D_800AC334
/* 0ABEE4 800AC334  */  .asciz  "IM7"
                        .balign 4

glabel D_800AC338
/* 0ABEE8 800AC338  */  .asciz  "IM6"
                        .balign 4

glabel D_800AC33C
/* 0ABEEC 800AC33C  */  .asciz  "IM5"
                        .balign 4

glabel D_800AC340
/* 0ABEF0 800AC340  */  .asciz  "IM4"
                        .balign 4

glabel D_800AC344
/* 0ABEF4 800AC344  */  .asciz  "IM3"
                        .balign 4

glabel D_800AC348
/* 0ABEF8 800AC348  */  .asciz  "IM2"
                        .balign 4

glabel D_800AC34C
/* 0ABEFC 800AC34C  */  .asciz  "IM1"
                        .balign 4

glabel D_800AC350
/* 0ABF00 800AC350  */  .asciz  "KX"
                        .balign 4

glabel D_800AC354
/* 0ABF04 800AC354  */  .asciz  "SX"
                        .balign 4

glabel D_800AC358
/* 0ABF08 800AC358  */  .asciz  "UX"
                        .balign 4

glabel D_800AC35C
/* 0ABF0C 800AC35C  */  .asciz  "USR"
                        .balign 4

glabel D_800AC360
/* 0ABF10 800AC360  */  .asciz  "SUP"
                        .balign 4

glabel D_800AC364
/* 0ABF14 800AC364  */  .asciz  "KER"
                        .balign 4

glabel D_800AC368
/* 0ABF18 800AC368  */  .asciz  "ERL"
                        .balign 4

glabel D_800AC36C
/* 0ABF1C 800AC36C  */  .asciz  "EXL"
                        .balign 4

glabel D_800AC370
/* 0ABF20 800AC370  */  .asciz  "IE"
                        .balign 4

glabel D_800AC374
/* 0ABF24 800AC374 00000000 */  .word  0x00000000

glabel D_800AC378
/* 0ABF28 800AC378  */  .asciz  "FS"
                        .balign 4

glabel D_800AC37C
/* 0ABF2C 800AC37C  */  .asciz  "C"
                        .balign 4

glabel D_800AC380
/* 0ABF30 800AC380  */  .asciz  "Unimplemented operation"
                        .balign 4

glabel D_800AC398
/* 0ABF48 800AC398  */  .asciz  "Invalid operation"
                        .balign 4

glabel D_800AC3AC
/* 0ABF5C 800AC3AC  */  .asciz  "Division by zero"
                        .balign 4

glabel D_800AC3C0
/* 0ABF70 800AC3C0  */  .asciz  "Overflow"
                        .balign 4

glabel D_800AC3CC
/* 0ABF7C 800AC3CC  */  .asciz  "Underflow"
                        .balign 4

glabel D_800AC3D8
/* 0ABF88 800AC3D8  */  .asciz  "Inexact operation"
                        .balign 4

glabel D_800AC3EC
/* 0ABF9C 800AC3EC  */  .asciz  "EV"
                        .balign 4

glabel D_800AC3F0
/* 0ABFA0 800AC3F0  */  .asciz  "EZ"
                        .balign 4

glabel D_800AC3F4
/* 0ABFA4 800AC3F4  */  .asciz  "EO"
                        .balign 4

glabel D_800AC3F8
/* 0ABFA8 800AC3F8  */  .asciz  "EU"
                        .balign 4

glabel D_800AC3FC
/* 0ABFAC 800AC3FC  */  .asciz  "EI"
                        .balign 4

glabel D_800AC400
/* 0ABFB0 800AC400  */  .asciz  "FV"
                        .balign 4

glabel D_800AC404
/* 0ABFB4 800AC404  */  .asciz  "FZ"
                        .balign 4

glabel D_800AC408
/* 0ABFB8 800AC408  */  .asciz  "FO"
                        .balign 4

glabel D_800AC40C
/* 0ABFBC 800AC40C  */  .asciz  "FU"
                        .balign 4

glabel D_800AC410
/* 0ABFC0 800AC410  */  .asciz  "FI"
                        .balign 4

glabel D_800AC414
/* 0ABFC4 800AC414  */  .asciz  "RN"
                        .balign 4

glabel D_800AC418
/* 0ABFC8 800AC418  */  .asciz  "RZ"
                        .balign 4

glabel D_800AC41C
/* 0ABFCC 800AC41C  */  .asciz  "RP"
                        .balign 4

glabel D_800AC420
/* 0ABFD0 800AC420  */  .asciz  "RM"
                        .balign 4

glabel D_800AC424
/* 0ABFD4 800AC424 00000000 */  .word  0x00000000

glabel _string_800AC428
/* 0ABFD8 800AC428  */  .asciz  "%s\t\t0x%08x "
                        .balign 4
/* 0ABFE4 800AC434  */  .asciz  "<"
                        .balign 4
/* 0ABFE8 800AC438  */  .asciz  ","
                        .balign 4
/* 0ABFEC 800AC43C  */  .asciz  "%s"
                        .balign 4
/* 0ABFF0 800AC440  */  .asciz  ">\n"
                        .balign 4
/* 0ABFF4 800AC444  */  .asciz  "%s  NaN           "
                        .balign 4
/* 0AC008 800AC458  */  .asciz  "%s  Inf           "
                        .balign 4
/* 0AC01C 800AC46C  */  .asciz  "%s  Denorm        "
                        .balign 4
/* 0AC030 800AC480  */  .asciz  "%s  %.7e "
                        .balign 4
/* 0AC03C 800AC48C  */  .asciz  "%s  NaN                   "
                        .balign 4
/* 0AC058 800AC4A8  */  .asciz  "%s  Inf                   "
                        .balign 4
/* 0AC074 800AC4C4  */  .asciz  "%s  Denorm                "
                        .balign 4
/* 0AC090 800AC4E0  */  .asciz  "%s  %.15e "
                        .balign 4
/* 0AC09C 800AC4EC  */  .asciz  "\nFault in thread %d:\n\n"
                        .balign 4
/* 0AC0B4 800AC504  */  .asciz  "epc\t\t0x%08x\n"
                        .balign 4

glabel D_800AC514
/* 0AC0C4 800AC514  */  .asciz  "cause"
                        .balign 4

glabel D_800AC51C
/* 0AC0CC 800AC51C  */  .asciz  "sr"
                        .balign 4
/* 0AC0D0 800AC520  */  .asciz  "badvaddr\t0x%08x\n"
                        .balign 4
/* 0AC0E4 800AC534  */  .asciz  "rcp\t\t0x%08x\n\n"
                        .balign 4
/* 0AC0F4 800AC544  */  .asciz  "at 0x%016llx v0 0x%016llx v1 0x%016llx\n"
                        .balign 4
/* 0AC11C 800AC56C  */  .asciz  "a0 0x%016llx a1 0x%016llx a2 0x%016llx\n"
                        .balign 4
/* 0AC144 800AC594  */  .asciz  "a3 0x%016llx t0 0x%016llx t1 0x%016llx\n"
                        .balign 4
/* 0AC16C 800AC5BC  */  .asciz  "t2 0x%016llx t3 0x%016llx t4 0x%016llx\n"
                        .balign 4
/* 0AC194 800AC5E4  */  .asciz  "t5 0x%016llx t6 0x%016llx t7 0x%016llx\n"
                        .balign 4
/* 0AC1BC 800AC60C  */  .asciz  "s0 0x%016llx s1 0x%016llx s2 0x%016llx\n"
                        .balign 4
/* 0AC1E4 800AC634  */  .asciz  "s3 0x%016llx s4 0x%016llx s5 0x%016llx\n"
                        .balign 4
/* 0AC20C 800AC65C  */  .asciz  "s6 0x%016llx s7 0x%016llx t8 0x%016llx\n"
                        .balign 4
/* 0AC234 800AC684  */  .asciz  "t9 0x%016llx gp 0x%016llx sp 0x%016llx\n"
                        .balign 4
/* 0AC25C 800AC6AC  */  .asciz  "s8 0x%016llx ra 0x%016llx\n"
                        .balign 4
/* 0AC278 800AC6C8  */  .asciz  "lo 0x%016llx hi 0x%016llx\n\n"
                        .balign 4

glabel D_800AC6E4
/* 0AC294 800AC6E4  */  .asciz  "fpcsr"
                        .balign 4

glabel D_800AC6EC
/* 0AC29C 800AC6EC  */  .asciz  "\nd0 "
                        .balign 4

glabel D_800AC6F4
/* 0AC2A4 800AC6F4  */  .asciz  "d2 "
                        .balign 4

glabel D_800AC6F8
/* 0AC2A8 800AC6F8  */  .asciz  "\nd4 "
                        .balign 4

glabel D_800AC700
/* 0AC2B0 800AC700  */  .asciz  "d6 "
                        .balign 4

glabel D_800AC704
/* 0AC2B4 800AC704  */  .asciz  "\nd8 "
                        .balign 4

glabel D_800AC70C
/* 0AC2BC 800AC70C  */  .asciz  "d10"
                        .balign 4

glabel D_800AC710
/* 0AC2C0 800AC710  */  .asciz  "\nd12"
                        .balign 4

glabel D_800AC718
/* 0AC2C8 800AC718  */  .asciz  "d14"
                        .balign 4

glabel D_800AC71C
/* 0AC2CC 800AC71C  */  .asciz  "\nd16"
                        .balign 4

glabel D_800AC724
/* 0AC2D4 800AC724  */  .asciz  "d18"
                        .balign 4

glabel D_800AC728
/* 0AC2D8 800AC728  */  .asciz  "\nd20"
                        .balign 4

glabel D_800AC730
/* 0AC2E0 800AC730  */  .asciz  "d22"
                        .balign 4

glabel D_800AC734
/* 0AC2E4 800AC734  */  .asciz  "\nd24"
                        .balign 4

glabel D_800AC73C
/* 0AC2EC 800AC73C  */  .asciz  "d26"
                        .balign 4

glabel D_800AC740
/* 0AC2F0 800AC740  */  .asciz  "\nd28"
                        .balign 4

glabel D_800AC748
/* 0AC2F8 800AC748  */  .asciz  "d30"
                        .balign 4
/* 0AC2FC 800AC74C  */  .asciz  "\n"
                        .balign 4

glabel D_800AC750
/* 0AC300 800AC750  */  .asciz  "\nf0 "
                        .balign 4

glabel D_800AC758
/* 0AC308 800AC758  */  .asciz  "f2 "
                        .balign 4

glabel D_800AC75C
/* 0AC30C 800AC75C  */  .asciz  "f4 "
                        .balign 4

glabel D_800AC760
/* 0AC310 800AC760  */  .asciz  "f6 "
                        .balign 4

glabel D_800AC764
/* 0AC314 800AC764  */  .asciz  "\nf8 "
                        .balign 4

glabel D_800AC76C
/* 0AC31C 800AC76C  */  .asciz  "f10"
                        .balign 4

glabel D_800AC770
/* 0AC320 800AC770  */  .asciz  "f12"
                        .balign 4

glabel D_800AC774
/* 0AC324 800AC774  */  .asciz  "f14"
                        .balign 4

glabel D_800AC778
/* 0AC328 800AC778  */  .asciz  "\nf16"
                        .balign 4

glabel D_800AC780
/* 0AC330 800AC780  */  .asciz  "f18"
                        .balign 4

glabel D_800AC784
/* 0AC334 800AC784  */  .asciz  "f20"
                        .balign 4

glabel D_800AC788
/* 0AC338 800AC788  */  .asciz  "f22"
                        .balign 4

glabel D_800AC78C
/* 0AC33C 800AC78C  */  .asciz  "\nf24"
                        .balign 4

glabel D_800AC794
/* 0AC344 800AC794  */  .asciz  "f26"
                        .balign 4

glabel D_800AC798
/* 0AC348 800AC798  */  .asciz  "f28"
                        .balign 4

glabel D_800AC79C
/* 0AC34C 800AC79C  */  .asciz  "f30"
                        .balign 4
/* 0AC350 800AC7A0  */  .asciz  "\n"
                        .balign 4

glabel D_800AC7A4
/* 0AC354 800AC7A4  */  .asciz  "FiT"
                        .balign 4

glabel D_800AC7A8
/* 0AC358 800AC7A8  */  .asciz  "%d"
                        .balign 4

glabel D_800AC7AC
/* 0AC35C 800AC7AC  */  .asciz  "%08x"
                        .balign 4

glabel D_800AC7B4
/* 0AC364 800AC7B4  */  .asciz  "%08x"
                        .balign 4
/* 0AC36C 800AC7BC  */  .asciz  "\n (flPass: file %s line %d)\n"
                        .balign 4
/* 0AC38C 800AC7DC  */  .asciz  "halt: %s: %d\n"
                        .balign 4

glabel D_800AC7EC
/* 0AC39C 800AC7EC  */  .asciz  "%d"
                        .balign 4
