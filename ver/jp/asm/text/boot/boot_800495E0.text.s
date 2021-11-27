.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800495E0 # 0
/* 049190 800495E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049194 800495E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049198 800495E8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04919C 800495EC 8C8E0008 */  lw          $t6, 0x8($a0)
/* 0491A0 800495F0 51C00016 */  beql        $t6, $zero, .L8004964C
/* 0491A4 800495F4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0491A8 800495F8 0C01275C */  jal         func_80049D70
/* 0491AC 800495FC AFA40018 */   sw         $a0, 0x18($sp)
/* 0491B0 80049600 8FA70018 */  lw          $a3, 0x18($sp)
/* 0491B4 80049604 10400010 */  beqz        $v0, .L80049648
/* 0491B8 80049608 00403025 */   move       $a2, $v0
/* 0491BC 8004960C 3C0F800A */  lui         $t7, %hi(D_800A2E64)
/* 0491C0 80049610 8DEF2E64 */  lw          $t7, %lo(D_800A2E64)($t7)
/* 0491C4 80049614 8CF90008 */  lw          $t9, 0x8($a3)
/* 0491C8 80049618 240A000C */  addiu       $t2, $zero, 0xc
/* 0491CC 8004961C 8DF80028 */  lw          $t8, 0x28($t7)
/* 0491D0 80049620 8F280088 */  lw          $t0, 0x88($t9)
/* 0491D4 80049624 A44A0008 */  sh          $t2, 0x8($v0)
/* 0491D8 80049628 24050003 */  addiu       $a1, $zero, 0x3
/* 0491DC 8004962C 03084821 */  addu        $t1, $t8, $t0
/* 0491E0 80049630 AC490004 */  sw          $t1, 0x4($v0)
/* 0491E4 80049634 93AB001F */  lbu         $t3, 0x1f($sp)
/* 0491E8 80049638 AC400000 */  sw          $zero, 0x0($v0)
/* 0491EC 8004963C AC4B000C */  sw          $t3, 0xc($v0)
/* 0491F0 80049640 0C012910 */  jal         func_8004A440
/* 0491F4 80049644 8CE40008 */   lw         $a0, 0x8($a3)
.L80049648:
/* 0491F8 80049648 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004964C:
/* 0491FC 8004964C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049200 80049650 03E00008 */  jr          $ra
/* 049204 80049654 00000000 */   nop
/* 049208 80049658 00000000 */  nop
/* 04920C 8004965C 00000000 */  nop
