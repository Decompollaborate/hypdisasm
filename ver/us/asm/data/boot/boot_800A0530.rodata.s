.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_Error_CalcAnime
/* 0A00E0 800A0530  */  .asciz  "error: calcAnime: Illegal keyType(%d)\n"
                        .balign 4

glabel D_800A0558
/* 0A0108 800A0558 3D088889 */  .float  0.03333333507180214
/* 0A010C 800A055C 00000000 */  .float  0.0
