.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800555F0 # 0
/* 0551A0 800555F0 3C0EA460 */  lui         $t6, %hi(D_A4600010)
/* 0551A4 800555F4 8DC60010 */  lw          $a2, %lo(D_A4600010)($t6)
/* 0551A8 800555F8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0551AC 800555FC 30CF0003 */  andi        $t7, $a2, 0x3
/* 0551B0 80055600 11E00006 */  beqz        $t7, .L8005561C
/* 0551B4 80055604 00000000 */   nop
.L80055608:
/* 0551B8 80055608 3C18A460 */  lui         $t8, %hi(D_A4600010)
/* 0551BC 8005560C 8F060010 */  lw          $a2, %lo(D_A4600010)($t8)
/* 0551C0 80055610 30D90003 */  andi        $t9, $a2, 0x3
/* 0551C4 80055614 1720FFFC */  bnez        $t9, .L80055608
/* 0551C8 80055618 00000000 */   nop
.L8005561C:
/* 0551CC 8005561C 3C088000 */  lui         $t0, %hi(osRomBase)
/* 0551D0 80055620 8D080308 */  lw          $t0, %lo(osRomBase)($t0)
/* 0551D4 80055624 3C01A000 */  lui         $at, 0xa000
/* 0551D8 80055628 00001025 */  move        $v0, $zero
/* 0551DC 8005562C 01044825 */  or          $t1, $t0, $a0
/* 0551E0 80055630 01215025 */  or          $t2, $t1, $at
/* 0551E4 80055634 8D4B0000 */  lw          $t3, 0x0($t2)
/* 0551E8 80055638 27BD0008 */  addiu       $sp, $sp, 0x8
/* 0551EC 8005563C 03E00008 */  jr          $ra
/* 0551F0 80055640 ACAB0000 */   sw         $t3, 0x0($a1)
/* 0551F4 80055644 00000000 */  nop
/* 0551F8 80055648 00000000 */  nop
/* 0551FC 8005564C 00000000 */  nop
