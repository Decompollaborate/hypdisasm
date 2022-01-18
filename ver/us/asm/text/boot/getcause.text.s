.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel __osGetCause # 0
/* 057B90 80057FE0 40026800 */  mfc0        $v0, Cause
/* 057B94 80057FE4 03E00008 */  jr          $ra
/* 057B98 80057FE8 00000000 */   nop
/* 057B9C 80057FEC 00000000 */  nop
