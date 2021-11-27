.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050AD0 # 0
/* 050680 80050AD0 40024800 */  mfc0        $v0, Count
/* 050684 80050AD4 03E00008 */  jr          $ra
/* 050688 80050AD8 00000000 */   nop
/* 05068C 80050ADC 00000000 */  nop
