.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0AAD30 800AB180 556E6B6E */  .float  16384073400320.0

glabel _string_800AB184
/* 0AAD34 800AB184  */  .asciz  "own speakerType %d\n"
                        .balign 4

glabel D_800AB198
/* 0AAD48 800AB198 3F19999A */  .float  0.6000000238418579
/* 0AAD4C 800AB19C 00000000 */  .float  0.0
