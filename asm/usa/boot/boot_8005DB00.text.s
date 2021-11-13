.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005DB00 # 0
/* 000000 8005DB00 40845800 */  cop0        0x0845800
/* 000004 8005DB04 03E00008 */  jr          $ra
/* 000008 8005DB08 00000000 */   nop
/* 00000C 8005DB0C 00000000 */  nop
