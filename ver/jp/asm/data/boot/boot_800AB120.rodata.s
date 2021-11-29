.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800AB120
/* 0AACD0 800AB120  */  .asciz  "allocated %u bytes for BG\n"
                        .balign 4
/* 0AACEC 800AB13C  */  .asciz  "%d bytes buffer needed for melting BG.\n"
                        .balign 4
/* 0AAD14 800AB164  */  .asciz  "cnt:%d\n"
                        .balign 4

glabel D_800AB16C
/* 0AAD1C 800AB16C 3A83126F */  .float  0.0010000000474974513

glabel D_800AB170
/* 0AAD20 800AB170 3C98EAD6 */  .float  0.018666666001081467

glabel D_800AB174
/* 0AAD24 800AB174 40B60B61 */  .float  5.688889026641846
/* 0AAD28 800AB178 00000000 */  .float  0.0
/* 0AAD2C 800AB17C 00000000 */  .float  0.0
