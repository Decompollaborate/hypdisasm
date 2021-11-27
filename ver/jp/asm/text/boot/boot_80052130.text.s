.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052130 # 0
/* 051CE0 80052130 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 051CE4 80052134 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051CE8 80052138 AFA40028 */  sw          $a0, 0x28($sp)
/* 051CEC 8005213C AFA5002C */  sw          $a1, 0x2c($sp)
/* 051CF0 80052140 AFA60030 */  sw          $a2, 0x30($sp)
/* 051CF4 80052144 0C015594 */  jal         func_80055650
/* 051CF8 80052148 AFB00018 */   sw         $s0, 0x18($sp)
/* 051CFC 8005214C 3C0F800A */  lui         $t7, %hi(D_800A4E14)
/* 051D00 80052150 8DEF4E14 */  lw          $t7, %lo(D_800A4E14)($t7)
/* 051D04 80052154 8FAE0028 */  lw          $t6, 0x28($sp)
/* 051D08 80052158 3C19800A */  lui         $t9, %hi(D_800A4E14)
/* 051D0C 8005215C 3C09800A */  lui         $t1, %hi(D_800A4E14)
/* 051D10 80052160 ADEE0010 */  sw          $t6, 0x10($t7)
/* 051D14 80052164 8F394E14 */  lw          $t9, %lo(D_800A4E14)($t9)
/* 051D18 80052168 8FB8002C */  lw          $t8, 0x2c($sp)
/* 051D1C 8005216C 00408025 */  move        $s0, $v0
/* 051D20 80052170 02002025 */  move        $a0, $s0
/* 051D24 80052174 AF380014 */  sw          $t8, 0x14($t9)
/* 051D28 80052178 8D294E14 */  lw          $t1, %lo(D_800A4E14)($t1)
/* 051D2C 8005217C 8FA80030 */  lw          $t0, 0x30($sp)
/* 051D30 80052180 0C01559C */  jal         func_80055670
/* 051D34 80052184 A5280002 */   sh         $t0, 0x2($t1)
/* 051D38 80052188 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051D3C 8005218C 8FB00018 */  lw          $s0, 0x18($sp)
/* 051D40 80052190 27BD0028 */  addiu       $sp, $sp, 0x28
/* 051D44 80052194 03E00008 */  jr          $ra
/* 051D48 80052198 00000000 */   nop
/* 051D4C 8005219C 00000000 */  nop
