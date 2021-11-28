.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052B90 # 0
/* 052740 80052B90 3C02800A */  lui         $v0, %hi(__osFaultedThread)
/* 052744 80052B94 03E00008 */  jr          $ra
/* 052748 80052B98 8C424D74 */   lw         $v0, %lo(__osFaultedThread)($v0)
/* 05274C 80052B9C 00000000 */  nop
