.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057560 # 0
/* 057110 80057560 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057114 80057564 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057118 80057568 AFA40018 */  sw          $a0, 0x18($sp)
/* 05711C 8005756C 0C017550 */  jal         func_8005D540
/* 057120 80057570 AFA5001C */   sw         $a1, 0x1c($sp)
/* 057124 80057574 10400003 */  beq         $v0, $zero, .L80057584
/* 057128 80057578 8FAE0018 */   lw         $t6, 0x18($sp)
/* 05712C 8005757C 10000007 */  b           .L8005759C
/* 057130 80057580 2402FFFF */   addiu      $v0, $zero, -0x1
.L80057584:
/* 057134 80057584 3C01A000 */  lui         $at, 0xa000
/* 057138 80057588 01C17825 */  or          $t7, $t6, $at
/* 05713C 8005758C 8DF80000 */  lw          $t8, 0x0($t7)
/* 057140 80057590 8FB9001C */  lw          $t9, 0x1c($sp)
/* 057144 80057594 00001025 */  move        $v0, $zero
/* 057148 80057598 AF380000 */  sw          $t8, 0x0($t9)
.L8005759C:
/* 05714C 8005759C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057150 800575A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 057154 800575A4 03E00008 */  jr          $ra
/* 057158 800575A8 00000000 */   nop
/* 05715C 800575AC 00000000 */  nop
