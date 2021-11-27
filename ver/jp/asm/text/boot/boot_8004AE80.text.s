.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004AE80 # 0
/* 04AA30 8004AE80 3C02800A */  lui         $v0, %hi(D_800A2E64)
/* 04AA34 8004AE84 24422E64 */  addiu       $v0, $v0, %lo(D_800A2E64)
/* 04AA38 8004AE88 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04AA3C 8004AE8C ADC00000 */  sw          $zero, 0x0($t6)
/* 04AA40 8004AE90 8C4F0000 */  lw          $t7, 0x0($v0)
/* 04AA44 8004AE94 ADE00004 */  sw          $zero, 0x4($t7)
/* 04AA48 8004AE98 8C580000 */  lw          $t8, 0x0($v0)
/* 04AA4C 8004AE9C AF000008 */  sw          $zero, 0x8($t8)
/* 04AA50 8004AEA0 8C590000 */  lw          $t9, 0x0($v0)
/* 04AA54 8004AEA4 03E00008 */  jr          $ra
/* 04AA58 8004AEA8 AF20000C */   sw         $zero, 0xc($t9)
/* 04AA5C 8004AEAC 00000000 */  nop
