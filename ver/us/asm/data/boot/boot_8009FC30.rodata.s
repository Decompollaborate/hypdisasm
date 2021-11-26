.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_MeltSize
/* 09F7E0 8009FC30  */  .asciz  "meltSize = %u\n"
                        .balign 4

glabel _string_ZippedBlock
/* 09F7F0 8009FC40  */  .asciz  "zipped block size = %u\n"
                        .balign 4

glabel _string_setFilterColor
/* 09F808 8009FC58  */  .asciz  "setFilterColor:%d,%d,%d,%d\n"
                        .balign 4

glabel _string_SunsetStart
/* 09F824 8009FC74  */  .asciz  "sunset start at %f\n"
                        .balign 4

glabel D_8009FC88
/* 09F838 8009FC88 3A83126F */  .float  0.0010000000474974513

glabel D_8009FC8C
/* 09F83C 8009FC8C BA83126F */  .float  -0.0010000000474974513

glabel D_8009FC90
/* 09F840 8009FC90 3B808081 */  .float  0.003921568859368563

glabel D_8009FC94
/* 09F844 8009FC94 3A83126F */  .float  0.0010000000474974513

glabel D_8009FC98
/* 09F848 8009FC98 BA83126F */  .float  -0.0010000000474974513

glabel D_8009FC9C
/* 09F84C 8009FC9C 3FAAAAAB */  .float  1.3333333730697632

glabel jtbl_8009FCA0
/* 09F850 8009FCA0 80001E50 */  .word  L80001E50
/* 09F854 8009FCA4 80001FCC */  .word  L80001FCC
/* 09F858 8009FCA8 80001FE4 */  .word  L80001FE4
/* 09F85C 8009FCAC 80001FF4 */  .word  L80001FF4
/* 09F860 8009FCB0 80001EC4 */  .word  L80001EC4
/* 09F864 8009FCB4 80001ED4 */  .word  L80001ED4
/* 09F868 8009FCB8 80001EE4 */  .word  L80001EE4
/* 09F86C 8009FCBC 80001F54 */  .word  L80001F54
/* 09F870 8009FCC0 80002004 */  .word  L80002004
/* 09F874 8009FCC4 8000200C */  .word  L8000200C
/* 09F878 8009FCC8 8000200C */  .word  L8000200C
/* 09F87C 8009FCCC 80001EE4 */  .word  L80001EE4
/* 09F880 8009FCD0 80001EE4 */  .word  L80001EE4
/* 09F884 8009FCD4 80001F28 */  .word  L80001F28
/* 09F888 8009FCD8 80001F54 */  .word  L80001F54
/* 09F88C 8009FCDC 80001F94 */  .word  L80001F94
/* 09F890 8009FCE0 80001F94 */  .word  L80001F94
/* 09F894 8009FCE4 80001F54 */  .word  L80001F54
/* 09F898 8009FCE8 80001EB4 */  .word  L80001EB4
/* 09F89C 8009FCEC 00000000 */  .word  0x00000000
