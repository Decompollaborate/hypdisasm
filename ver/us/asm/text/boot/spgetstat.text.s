.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSpGetStatus # 0
/* 05A5C0 8005AA10 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 05A5C4 8005AA14 03E00008 */  jr          $ra
/* 05A5C8 8005AA18 8DC20010 */   lw         $v0, %lo(D_A4040010)($t6)
/* 05A5CC 8005AA1C 00000000 */  nop
