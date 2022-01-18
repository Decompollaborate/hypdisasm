.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AB180
/* 0AAD30 800AB180  */  .asciz  "Unknown speakerType %d\n"
                        .balign 4

glabel D_800AB198
/* 0AAD48 800AB198 3F19999A */  .float  0.6000000238418579
/* 0AAD4C 800AB19C 00000000 */  .float  0.0
