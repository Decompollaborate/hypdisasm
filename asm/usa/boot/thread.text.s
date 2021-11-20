.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osDequeueThread # 0
/* 057C30 80058080 00803025 */  move        $a2, $a0
/* 057C34 80058084 8CC70000 */  lw          $a3, 0x0($a2)
/* 057C38 80058088 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 057C3C 8005808C 10E0000A */  beqz        $a3, .L800580B8
/* 057C40 80058090 00000000 */   nop
.L80058094:
/* 057C44 80058094 14E50004 */  bne         $a3, $a1, .L800580A8
/* 057C48 80058098 00000000 */   nop
/* 057C4C 8005809C 8CAE0000 */  lw          $t6, 0x0($a1)
/* 057C50 800580A0 10000005 */  b           .L800580B8
/* 057C54 800580A4 ACCE0000 */   sw         $t6, 0x0($a2)
.L800580A8:
/* 057C58 800580A8 00E03025 */  move        $a2, $a3
/* 057C5C 800580AC 8CC70000 */  lw          $a3, 0x0($a2)
/* 057C60 800580B0 14E0FFF8 */  bnez        $a3, .L80058094
/* 057C64 800580B4 00000000 */   nop
.L800580B8:
/* 057C68 800580B8 03E00008 */  jr          $ra
/* 057C6C 800580BC 27BD0008 */   addiu      $sp, $sp, 0x8
