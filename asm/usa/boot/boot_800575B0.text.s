.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800575B0 # 0
/* 000000 800575B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 800575B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 800575B8 AFA40018 */  sw          $a0, 0x18($sp)
/* 00000C 800575BC 0C017550 */  jal         func_8005D540
/* 000010 800575C0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 000014 800575C4 10400003 */  beq         $v0, $zero, .L800575D4
/* 000018 800575C8 8FAE001C */   lw         $t6, 0x1c($sp)
/* 00001C 800575CC 10000006 */  b           .L800575E8
/* 000020 800575D0 2402FFFF */   addiu      $v0, $zero, -0x1
.L800575D4:
/* 000024 800575D4 8FAF0018 */  lw          $t7, 0x18($sp)
/* 000028 800575D8 3C01A000 */  lui         $at, 0xa000
/* 00002C 800575DC 00001025 */  move        $v0, $zero
/* 000030 800575E0 01E1C025 */  or          $t8, $t7, $at
/* 000034 800575E4 AF0E0000 */  sw          $t6, 0x0($t8)
.L800575E8:
/* 000038 800575E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00003C 800575EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000040 800575F0 03E00008 */  jr          $ra
/* 000044 800575F4 00000000 */   nop
/* 000048 800575F8 00000000 */  nop
/* 00004C 800575FC 00000000 */  nop
