.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80027380 # 0
/* 026F30 80027380 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 026F34 80027384 8FAE003C */  lw          $t6, 0x3c($sp)
/* 026F38 80027388 44866000 */  mtc1        $a2, $f12
/* 026F3C 8002738C 24030026 */  addiu       $v1, $zero, 0x26
/* 026F40 80027390 15C30003 */  bne         $t6, $v1, .L800273A0
/* 026F44 80027394 AFBF0024 */   sw         $ra, 0x24($sp)
/* 026F48 80027398 240F0001 */  addiu       $t7, $zero, 0x1
/* 026F4C 8002739C AFAF003C */  sw          $t7, 0x3c($sp)
.L800273A0:
/* 026F50 800273A0 8FA20040 */  lw          $v0, 0x40($sp)
/* 026F54 800273A4 44066000 */  mfc1        $a2, $f12
/* 026F58 800273A8 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 026F5C 800273AC 54430003 */  bnel        $v0, $v1, .L800273BC
/* 026F60 800273B0 8FB8003C */   lw         $t8, 0x3c($sp)
/* 026F64 800273B4 24020025 */  addiu       $v0, $zero, 0x25
/* 026F68 800273B8 8FB8003C */  lw          $t8, 0x3c($sp)
.L800273BC:
/* 026F6C 800273BC E7A40010 */  swc1        $f4, 0x10($sp)
/* 026F70 800273C0 AFA20018 */  sw          $v0, 0x18($sp)
/* 026F74 800273C4 0C0027B5 */  jal         func_80009ED4
/* 026F78 800273C8 AFB80014 */   sw         $t8, 0x14($sp)
/* 026F7C 800273CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 026F80 800273D0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 026F84 800273D4 03E00008 */  jr          $ra
/* 026F88 800273D8 00000000 */   nop

glabel func_800273DC # 1
/* 026F8C 800273DC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 026F90 800273E0 44800000 */  mtc1        $zero, $f0
/* 026F94 800273E4 3C0143B4 */  lui         $at, 0x43b4
/* 026F98 800273E8 44812000 */  mtc1        $at, $f4
/* 026F9C 800273EC AFBF0024 */  sw          $ra, 0x24($sp)
/* 026FA0 800273F0 240E0001 */  addiu       $t6, $zero, 0x1
/* 026FA4 800273F4 240F0025 */  addiu       $t7, $zero, 0x25
/* 026FA8 800273F8 AFAF0018 */  sw          $t7, 0x18($sp)
/* 026FAC 800273FC AFAE0014 */  sw          $t6, 0x14($sp)
/* 026FB0 80027400 27A7002C */  addiu       $a3, $sp, 0x2c
/* 026FB4 80027404 3C064248 */  lui         $a2, 0x4248
/* 026FB8 80027408 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 026FBC 8002740C E7A00030 */  swc1        $f0, 0x30($sp)
/* 026FC0 80027410 E7A00034 */  swc1        $f0, 0x34($sp)
/* 026FC4 80027414 0C0027B5 */  jal         func_80009ED4
/* 026FC8 80027418 E7A40010 */   swc1       $f4, 0x10($sp)
/* 026FCC 8002741C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 026FD0 80027420 27BD0038 */  addiu       $sp, $sp, 0x38
/* 026FD4 80027424 03E00008 */  jr          $ra
/* 026FD8 80027428 00000000 */   nop
/* 026FDC 8002742C 00000000 */  nop
