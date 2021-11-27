.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800499E0 # 0
/* 049590 800499E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049594 800499E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049598 800499E8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04959C 800499EC 8C8E0008 */  lw          $t6, 0x8($a0)
/* 0495A0 800499F0 51C00016 */  beql        $t6, $zero, .L80049A4C
/* 0495A4 800499F4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0495A8 800499F8 0C01275C */  jal         func_80049D70
/* 0495AC 800499FC AFA40018 */   sw         $a0, 0x18($sp)
/* 0495B0 80049A00 8FA70018 */  lw          $a3, 0x18($sp)
/* 0495B4 80049A04 10400010 */  beqz        $v0, .L80049A48
/* 0495B8 80049A08 00403025 */   move       $a2, $v0
/* 0495BC 80049A0C 3C0F800A */  lui         $t7, %hi(D_800A2E64)
/* 0495C0 80049A10 8DEF2E64 */  lw          $t7, %lo(D_800A2E64)($t7)
/* 0495C4 80049A14 8CF90008 */  lw          $t9, 0x8($a3)
/* 0495C8 80049A18 240A0007 */  addiu       $t2, $zero, 0x7
/* 0495CC 80049A1C 8DF80028 */  lw          $t8, 0x28($t7)
/* 0495D0 80049A20 8F280088 */  lw          $t0, 0x88($t9)
/* 0495D4 80049A24 A44A0008 */  sh          $t2, 0x8($v0)
/* 0495D8 80049A28 24050003 */  addiu       $a1, $zero, 0x3
/* 0495DC 80049A2C 03084821 */  addu        $t1, $t8, $t0
/* 0495E0 80049A30 AC490004 */  sw          $t1, 0x4($v0)
/* 0495E4 80049A34 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 0495E8 80049A38 AC400000 */  sw          $zero, 0x0($v0)
/* 0495EC 80049A3C E444000C */  swc1        $f4, 0xc($v0)
/* 0495F0 80049A40 0C012910 */  jal         func_8004A440
/* 0495F4 80049A44 8CE40008 */   lw         $a0, 0x8($a3)
.L80049A48:
/* 0495F8 80049A48 8FBF0014 */  lw          $ra, 0x14($sp)
.L80049A4C:
/* 0495FC 80049A4C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049600 80049A50 03E00008 */  jr          $ra
/* 049604 80049A54 00000000 */   nop
/* 049608 80049A58 00000000 */  nop
/* 04960C 80049A5C 00000000 */  nop
