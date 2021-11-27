.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EBB0 # 0
/* 04E760 8004EBB0 3C0E800A */  lui         $t6, %hi(D_800A4D60)
/* 04E764 8004EBB4 3C0F800A */  lui         $t7, %hi(D_800A4D60)
/* 04E768 8004EBB8 25CE4D60 */  addiu       $t6, $t6, %lo(D_800A4D60)
/* 04E76C 8004EBBC 25EF4D60 */  addiu       $t7, $t7, %lo(D_800A4D60)
/* 04E770 8004EBC0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 04E774 8004EBC4 AC8F0004 */  sw          $t7, 0x4($a0)
/* 04E778 8004EBC8 AC800008 */  sw          $zero, 0x8($a0)
/* 04E77C 8004EBCC AC80000C */  sw          $zero, 0xc($a0)
/* 04E780 8004EBD0 AC860010 */  sw          $a2, 0x10($a0)
/* 04E784 8004EBD4 03E00008 */  jr          $ra
/* 04E788 8004EBD8 AC850014 */   sw         $a1, 0x14($a0)
/* 04E78C 8004EBDC 00000000 */  nop
