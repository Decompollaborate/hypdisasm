.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel osGetCount # 0
/* 052E90 800532E0 40024800 */  mfc0        $v0, Count
/* 052E94 800532E4 03E00008 */  jr          $ra
/* 052E98 800532E8 00000000 */   nop
/* 052E9C 800532EC 00000000 */  nop
