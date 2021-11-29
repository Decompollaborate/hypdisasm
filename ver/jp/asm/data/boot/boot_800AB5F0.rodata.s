.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AB5F0
/* 0AB1A0 800AB5F0 3E2E147B */  .float  0.17000000178813934

glabel D_800AB5F4
/* 0AB1A4 800AB5F4 3E99999A */  .float  0.30000001192092896
/* 0AB1A8 800AB5F8 00000000 */  .float  0.0
/* 0AB1AC 800AB5FC 00000000 */  .float  0.0
