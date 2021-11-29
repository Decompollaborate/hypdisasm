.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A9840
/* 0A93F0 800A9840  */  .asciz  "carpet object was made, (%3.2f, %3.2f, %3.2f), xside = %f, zside = %f\n"
                        .balign 4
/* 0A9438 800A9888  */  .asciz  ""
                        .balign 4
/* 0A943C 800A988C  */  .asciz  ""
                        .balign 4

glabel D_800A9890
/* 0A9440 800A9890  */  .asciz  "どうくつ\nどこかにつうじている"
                        .balign 4

glabel D_800A98B0
/* 0A9460 800A98B0 40EFFFE000000000 */  .double  65535.0

glabel D_800A98B8
/* 0A9468 800A98B8 3FD3333333333333 */  .double  0.3

glabel D_800A98C0
/* 0A9470 800A98C0 3FD3333333333333 */  .double  0.3
/* 0A9478 800A98C8 0000000000000000 */  .double  0.0

glabel D_800A98D0
/* 0A9480 800A98D0 45B3B000 */  .float  5750.0
/* 0A9484 800A98D4 00000000 */  .float  0.0
/* 0A9488 800A98D8 00000000 */  .float  0.0
/* 0A948C 800A98DC 00000000 */  .float  0.0
