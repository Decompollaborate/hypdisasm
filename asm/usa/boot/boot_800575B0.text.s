.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800575B0 # 0
/* 057160 800575B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057164 800575B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057168 800575B8 AFA40018 */  sw          $a0, 0x18($sp)
/* 05716C 800575BC 0C017550 */  jal         __osSiDeviceBusy
/* 057170 800575C0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 057174 800575C4 10400003 */  beq         $v0, $zero, .L800575D4
/* 057178 800575C8 8FAE001C */   lw         $t6, 0x1c($sp)
/* 05717C 800575CC 10000006 */  b           .L800575E8
/* 057180 800575D0 2402FFFF */   addiu      $v0, $zero, -0x1
.L800575D4:
/* 057184 800575D4 8FAF0018 */  lw          $t7, 0x18($sp)
/* 057188 800575D8 3C01A000 */  lui         $at, 0xa000
/* 05718C 800575DC 00001025 */  move        $v0, $zero
/* 057190 800575E0 01E1C025 */  or          $t8, $t7, $at
/* 057194 800575E4 AF0E0000 */  sw          $t6, 0x0($t8)
.L800575E8:
/* 057198 800575E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05719C 800575EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0571A0 800575F0 03E00008 */  jr          $ra
/* 0571A4 800575F4 00000000 */   nop
/* 0571A8 800575F8 00000000 */  nop
/* 0571AC 800575FC 00000000 */  nop
