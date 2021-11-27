.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80025050 # 0
/* 024C00 80025050 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 024C04 80025054 8FAE003C */  lw          $t6, 0x3c($sp)
/* 024C08 80025058 44866000 */  mtc1        $a2, $f12
/* 024C0C 8002505C 24030026 */  addiu       $v1, $zero, 0x26
/* 024C10 80025060 15C30003 */  bne         $t6, $v1, .L80025070
/* 024C14 80025064 AFBF0024 */   sw         $ra, 0x24($sp)
/* 024C18 80025068 240F0001 */  addiu       $t7, $zero, 0x1
/* 024C1C 8002506C AFAF003C */  sw          $t7, 0x3c($sp)
.L80025070:
/* 024C20 80025070 8FA20040 */  lw          $v0, 0x40($sp)
/* 024C24 80025074 44066000 */  mfc1        $a2, $f12
/* 024C28 80025078 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 024C2C 8002507C 54430003 */  bnel        $v0, $v1, .L8002508C
/* 024C30 80025080 8FB8003C */   lw         $t8, 0x3c($sp)
/* 024C34 80025084 24020025 */  addiu       $v0, $zero, 0x25
/* 024C38 80025088 8FB8003C */  lw          $t8, 0x3c($sp)
.L8002508C:
/* 024C3C 8002508C E7A40010 */  swc1        $f4, 0x10($sp)
/* 024C40 80025090 AFA20018 */  sw          $v0, 0x18($sp)
/* 024C44 80025094 0C002233 */  jal         func_800088CC
/* 024C48 80025098 AFB80014 */   sw         $t8, 0x14($sp)
/* 024C4C 8002509C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 024C50 800250A0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 024C54 800250A4 03E00008 */  jr          $ra
/* 024C58 800250A8 00000000 */   nop

glabel func_800250AC # 1
/* 024C5C 800250AC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 024C60 800250B0 44800000 */  mtc1        $zero, $f0
/* 024C64 800250B4 3C0143B4 */  lui         $at, 0x43b4
/* 024C68 800250B8 44812000 */  mtc1        $at, $f4
/* 024C6C 800250BC AFBF0024 */  sw          $ra, 0x24($sp)
/* 024C70 800250C0 240E0001 */  addiu       $t6, $zero, 0x1
/* 024C74 800250C4 240F0025 */  addiu       $t7, $zero, 0x25
/* 024C78 800250C8 AFAF0018 */  sw          $t7, 0x18($sp)
/* 024C7C 800250CC AFAE0014 */  sw          $t6, 0x14($sp)
/* 024C80 800250D0 27A7002C */  addiu       $a3, $sp, 0x2c
/* 024C84 800250D4 3C064248 */  lui         $a2, 0x4248
/* 024C88 800250D8 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 024C8C 800250DC E7A00030 */  swc1        $f0, 0x30($sp)
/* 024C90 800250E0 E7A00034 */  swc1        $f0, 0x34($sp)
/* 024C94 800250E4 0C002233 */  jal         func_800088CC
/* 024C98 800250E8 E7A40010 */   swc1       $f4, 0x10($sp)
/* 024C9C 800250EC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 024CA0 800250F0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 024CA4 800250F4 03E00008 */  jr          $ra
/* 024CA8 800250F8 00000000 */   nop
/* 024CAC 800250FC 00000000 */  nop
