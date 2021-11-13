.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F110 # 0
/* 000000 8001F110 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 8001F114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 8001F118 3C048009 */  lui         $a0, %hi(D_80088E20)
/* 00000C 8001F11C E7AC0020 */  swc1        $f12, 0x20($sp)
/* 000010 8001F120 E7AE0024 */  swc1        $f14, 0x24($sp)
/* 000014 8001F124 AFA60028 */  sw          $a2, 0x28($sp)
/* 000018 8001F128 AFA7002C */  sw          $a3, 0x2c($sp)
/* 00001C 8001F12C 0C002114 */  jal         func_80008450
/* 000020 8001F130 24848E20 */   addiu      $a0, $a0, %lo(D_80088E20)
/* 000024 8001F134 3C01800A */  lui         $at, %hi(D_800A4804)
/* 000028 8001F138 C4204804 */  lwc1        $f0, %lo(D_800A4804)($at)
/* 00002C 8001F13C C7A20020 */  lwc1        $f2, 0x20($sp)
/* 000030 8001F140 C7AC0024 */  lwc1        $f12, 0x24($sp)
/* 000034 8001F144 C7AE0028 */  lwc1        $f14, 0x28($sp)
/* 000038 8001F148 AFA2001C */  sw          $v0, 0x1c($sp)
/* 00003C 8001F14C E4400008 */  swc1        $f0, 0x8($v0)
/* 000040 8001F150 E4400004 */  swc1        $f0, 0x4($v0)
/* 000044 8001F154 E4400000 */  swc1        $f0, 0x0($v0)
/* 000048 8001F158 E4420018 */  swc1        $f2, 0x18($v0)
/* 00004C 8001F15C E4420044 */  swc1        $f2, 0x44($v0)
/* 000050 8001F160 E44C001C */  swc1        $f12, 0x1c($v0)
/* 000054 8001F164 E44C0048 */  swc1        $f12, 0x48($v0)
/* 000058 8001F168 E44E0020 */  swc1        $f14, 0x20($v0)
/* 00005C 8001F16C E44E004C */  swc1        $f14, 0x4c($v0)
/* 000060 8001F170 8FAE002C */  lw          $t6, 0x2c($sp)
/* 000064 8001F174 00402025 */  move        $a0, $v0
/* 000068 8001F178 0C00219D */  jal         func_80008674
/* 00006C 8001F17C A44E0034 */   sh         $t6, 0x34($v0)
/* 000070 8001F180 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000074 8001F184 8FA2001C */  lw          $v0, 0x1c($sp)
/* 000078 8001F188 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00007C 8001F18C 03E00008 */  jr          $ra
/* 000080 8001F190 00000000 */   nop

glabel func_8001F194 # 1
/* 000084 8001F194 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000088 8001F198 AFA40018 */  sw          $a0, 0x18($sp)
/* 00008C 8001F19C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000090 8001F1A0 3C04800B */  lui         $a0, %hi(D_800B6C60)
/* 000094 8001F1A4 3C05800A */  lui         $a1, %hi(D_800A47D8)
/* 000098 8001F1A8 24A547D8 */  addiu       $a1, $a1, %lo(D_800A47D8)
/* 00009C 8001F1AC 0C014E38 */  jal         func_800538E0
/* 0000A0 8001F1B0 24846C60 */   addiu      $a0, $a0, %lo(D_800B6C60)
/* 0000A4 8001F1B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000A8 8001F1B8 3C02800B */  lui         $v0, %hi(D_800B6C60)
/* 0000AC 8001F1BC 24426C60 */  addiu       $v0, $v0, %lo(D_800B6C60)
/* 0000B0 8001F1C0 03E00008 */  jr          $ra
/* 0000B4 8001F1C4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001F1C8 # 2
/* 0000B8 8001F1C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0000BC 8001F1CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0000C0 8001F1D0 0C007A0C */  jal         func_8001E830
/* 0000C4 8001F1D4 00000000 */   nop
/* 0000C8 8001F1D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000CC 8001F1DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0000D0 8001F1E0 03E00008 */  jr          $ra
/* 0000D4 8001F1E4 00000000 */   nop
/* 0000D8 8001F1E8 00000000 */  nop
/* 0000DC 8001F1EC 00000000 */  nop
