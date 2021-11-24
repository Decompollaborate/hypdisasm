.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSetFpcCsr # 0
/* 0570F0 80057540 4442F800 */  cfc1        $v0, $31
/* 0570F4 80057544 44C4F800 */  ctc1        $a0, $31
/* 0570F8 80057548 03E00008 */  jr          $ra
/* 0570FC 8005754C 00000000 */   nop
