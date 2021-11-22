.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F110 # 0
/* 01ECC0 8001F110 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01ECC4 8001F114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01ECC8 8001F118 3C048009 */  lui         $a0, %hi(D_80088E20)
/* 01ECCC 8001F11C E7AC0020 */  swc1        $f12, 0x20($sp)
/* 01ECD0 8001F120 E7AE0024 */  swc1        $f14, 0x24($sp)
/* 01ECD4 8001F124 AFA60028 */  sw          $a2, 0x28($sp)
/* 01ECD8 8001F128 AFA7002C */  sw          $a3, 0x2c($sp)
/* 01ECDC 8001F12C 0C002114 */  jal         func_80008450
/* 01ECE0 8001F130 24848E20 */   addiu      $a0, $a0, %lo(D_80088E20)
/* 01ECE4 8001F134 3C01800A */  lui         $at, %hi(D_800A4804)
/* 01ECE8 8001F138 C4204804 */  lwc1        $f0, %lo(D_800A4804)($at)
/* 01ECEC 8001F13C C7A20020 */  lwc1        $f2, 0x20($sp)
/* 01ECF0 8001F140 C7AC0024 */  lwc1        $f12, 0x24($sp)
/* 01ECF4 8001F144 C7AE0028 */  lwc1        $f14, 0x28($sp)
/* 01ECF8 8001F148 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01ECFC 8001F14C E4400008 */  swc1        $f0, 0x8($v0)
/* 01ED00 8001F150 E4400004 */  swc1        $f0, 0x4($v0)
/* 01ED04 8001F154 E4400000 */  swc1        $f0, 0x0($v0)
/* 01ED08 8001F158 E4420018 */  swc1        $f2, 0x18($v0)
/* 01ED0C 8001F15C E4420044 */  swc1        $f2, 0x44($v0)
/* 01ED10 8001F160 E44C001C */  swc1        $f12, 0x1c($v0)
/* 01ED14 8001F164 E44C0048 */  swc1        $f12, 0x48($v0)
/* 01ED18 8001F168 E44E0020 */  swc1        $f14, 0x20($v0)
/* 01ED1C 8001F16C E44E004C */  swc1        $f14, 0x4c($v0)
/* 01ED20 8001F170 8FAE002C */  lw          $t6, 0x2c($sp)
/* 01ED24 8001F174 00402025 */  move        $a0, $v0
/* 01ED28 8001F178 0C00219D */  jal         func_80008674
/* 01ED2C 8001F17C A44E0034 */   sh         $t6, 0x34($v0)
/* 01ED30 8001F180 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01ED34 8001F184 8FA2001C */  lw          $v0, 0x1c($sp)
/* 01ED38 8001F188 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01ED3C 8001F18C 03E00008 */  jr          $ra
/* 01ED40 8001F190 00000000 */   nop

glabel func_8001F194 # 1
/* 01ED44 8001F194 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01ED48 8001F198 AFA40018 */  sw          $a0, 0x18($sp)
/* 01ED4C 8001F19C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01ED50 8001F1A0 3C04800B */  lui         $a0, %hi(D_800B6C60)
/* 01ED54 8001F1A4 3C05800A */  lui         $a1, %hi(D_800A47D8)
/* 01ED58 8001F1A8 24A547D8 */  addiu       $a1, $a1, %lo(D_800A47D8)
/* 01ED5C 8001F1AC 0C014E38 */  jal         func_800538E0
/* 01ED60 8001F1B0 24846C60 */   addiu      $a0, $a0, %lo(D_800B6C60)
/* 01ED64 8001F1B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01ED68 8001F1B8 3C02800B */  lui         $v0, %hi(D_800B6C60)
/* 01ED6C 8001F1BC 24426C60 */  addiu       $v0, $v0, %lo(D_800B6C60)
/* 01ED70 8001F1C0 03E00008 */  jr          $ra
/* 01ED74 8001F1C4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001F1C8 # 2
/* 01ED78 8001F1C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01ED7C 8001F1CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 01ED80 8001F1D0 0C007A0C */  jal         func_8001E830
/* 01ED84 8001F1D4 00000000 */   nop
/* 01ED88 8001F1D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01ED8C 8001F1DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01ED90 8001F1E0 03E00008 */  jr          $ra
/* 01ED94 8001F1E4 00000000 */   nop
/* 01ED98 8001F1E8 00000000 */  nop
/* 01ED9C 8001F1EC 00000000 */  nop
