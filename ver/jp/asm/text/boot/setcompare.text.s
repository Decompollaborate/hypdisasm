.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSetCompare # 0
/* 05C0C0 8005C510 40845800 */  mtc0        $a0, Compare
/* 05C0C4 8005C514 03E00008 */  jr          $ra
/* 05C0C8 8005C518 00000000 */   nop
/* 05C0CC 8005C51C 00000000 */  nop
