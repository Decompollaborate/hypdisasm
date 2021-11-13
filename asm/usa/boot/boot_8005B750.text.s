.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B750 # 0
/* 000000 8005B750 03E00008 */  jr          $ra
/* 000004 8005B754 AC800000 */   sw         $zero, 0x0($a0)
/* 000008 8005B758 00000000 */  nop
/* 00000C 8005B75C 00000000 */  nop
