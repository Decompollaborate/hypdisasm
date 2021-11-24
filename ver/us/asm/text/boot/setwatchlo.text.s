.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osGetWatchLo # 0
/* 057100 80057550 40849000 */  mtc0        $a0, WatchLo
/* 057104 80057554 00000000 */  nop
/* 057108 80057558 03E00008 */  jr          $ra
/* 05710C 8005755C 00000000 */   nop
