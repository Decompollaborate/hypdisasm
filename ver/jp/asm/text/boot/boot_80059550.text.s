.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80059550 # 0
/* 059100 80059550 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 059104 80059554 8DC40010 */  lw          $a0, %lo(D_A4040010)($t6)
/* 059108 80059558 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 05910C 8005955C 308F001C */  andi        $t7, $a0, 0x1c
/* 059110 80059560 11E00003 */  beqz        $t7, .L80059570
/* 059114 80059564 00000000 */   nop
/* 059118 80059568 10000002 */  b           .L80059574
/* 05911C 8005956C 24020001 */   addiu      $v0, $zero, 0x1
.L80059570:
/* 059120 80059570 00001025 */  move        $v0, $zero
.L80059574:
/* 059124 80059574 03E00008 */  jr          $ra
/* 059128 80059578 27BD0008 */   addiu      $sp, $sp, 0x8
/* 05912C 8005957C 00000000 */  nop
