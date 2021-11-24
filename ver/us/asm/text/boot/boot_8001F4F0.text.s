.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F4F0 # 0
/* 01F0A0 8001F4F0 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01F0A4 8001F4F4 AFB00018 */  sw          $s0, 0x18($sp)
/* 01F0A8 8001F4F8 00808025 */  move        $s0, $a0
/* 01F0AC 8001F4FC 3C0E8009 */  lui         $t6, %hi(D_80088EA0)
/* 01F0B0 8001F500 27A40028 */  addiu       $a0, $sp, 0x28
/* 01F0B4 8001F504 25CE8EA0 */  addiu       $t6, $t6, %lo(D_80088EA0)
/* 01F0B8 8001F508 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01F0BC 8001F50C AFA50064 */  sw          $a1, 0x64($sp)
/* 01F0C0 8001F510 AFA60068 */  sw          $a2, 0x68($sp)
/* 01F0C4 8001F514 AFA7006C */  sw          $a3, 0x6c($sp)
/* 01F0C8 8001F518 25D90030 */  addiu       $t9, $t6, 0x30
/* 01F0CC 8001F51C 00804025 */  move        $t0, $a0
.L8001F520:
/* 01F0D0 8001F520 8DC10000 */  lw          $at, 0x0($t6)
/* 01F0D4 8001F524 25CE000C */  addiu       $t6, $t6, 0xc
/* 01F0D8 8001F528 2508000C */  addiu       $t0, $t0, 0xc
/* 01F0DC 8001F52C AD01FFF4 */  sw          $at, -0xc($t0)
/* 01F0E0 8001F530 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 01F0E4 8001F534 AD01FFF8 */  sw          $at, -0x8($t0)
/* 01F0E8 8001F538 8DC1FFFC */  lw          $at, -0x4($t6)
/* 01F0EC 8001F53C 15D9FFF8 */  bne         $t6, $t9, .L8001F520
/* 01F0F0 8001F540 AD01FFFC */   sw         $at, -0x4($t0)
/* 01F0F4 8001F544 8DC10000 */  lw          $at, 0x0($t6)
/* 01F0F8 8001F548 AD010000 */  sw          $at, 0x0($t0)
/* 01F0FC 8001F54C 8DD90004 */  lw          $t9, 0x4($t6)
/* 01F100 8001F550 0C002114 */  jal         func_80008450
/* 01F104 8001F554 AD190004 */   sw         $t9, 0x4($t0)
/* 01F108 8001F558 AFA20024 */  sw          $v0, 0x24($sp)
/* 01F10C 8001F55C C6040000 */  lwc1        $f4, 0x0($s0)
/* 01F110 8001F560 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01F114 8001F564 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01F118 8001F568 E4440018 */  swc1        $f4, 0x18($v0)
/* 01F11C 8001F56C C6060004 */  lwc1        $f6, 0x4($s0)
/* 01F120 8001F570 24050020 */  addiu       $a1, $zero, 0x20
/* 01F124 8001F574 24060032 */  addiu       $a2, $zero, 0x32
/* 01F128 8001F578 E446001C */  swc1        $f6, 0x1c($v0)
/* 01F12C 8001F57C C6080008 */  lwc1        $f8, 0x8($s0)
/* 01F130 8001F580 E4480020 */  swc1        $f8, 0x20($v0)
/* 01F134 8001F584 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 01F138 8001F588 E44A0044 */  swc1        $f10, 0x44($v0)
/* 01F13C 8001F58C C6100004 */  lwc1        $f16, 0x4($s0)
/* 01F140 8001F590 E4500048 */  swc1        $f16, 0x48($v0)
/* 01F144 8001F594 C6120008 */  lwc1        $f18, 0x8($s0)
/* 01F148 8001F598 0C00E03D */  jal         func_800380F4
/* 01F14C 8001F59C E452004C */   swc1       $f18, 0x4c($v0)
/* 01F150 8001F5A0 8FA30064 */  lw          $v1, 0x64($sp)
/* 01F154 8001F5A4 8FA50068 */  lw          $a1, 0x68($sp)
/* 01F158 8001F5A8 8FB00024 */  lw          $s0, 0x24($sp)
/* 01F15C 8001F5AC C4640000 */  lwc1        $f4, 0x0($v1)
/* 01F160 8001F5B0 02002025 */  move        $a0, $s0
/* 01F164 8001F5B4 E4440000 */  swc1        $f4, 0x0($v0)
/* 01F168 8001F5B8 C4660004 */  lwc1        $f6, 0x4($v1)
/* 01F16C 8001F5BC E4460004 */  swc1        $f6, 0x4($v0)
/* 01F170 8001F5C0 C4680008 */  lwc1        $f8, 0x8($v1)
/* 01F174 8001F5C4 E4480008 */  swc1        $f8, 0x8($v0)
/* 01F178 8001F5C8 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 01F17C 8001F5CC E44A000C */  swc1        $f10, 0xc($v0)
/* 01F180 8001F5D0 C4B00004 */  lwc1        $f16, 0x4($a1)
/* 01F184 8001F5D4 E4500010 */  swc1        $f16, 0x10($v0)
/* 01F188 8001F5D8 C4B20008 */  lwc1        $f18, 0x8($a1)
/* 01F18C 8001F5DC AC400018 */  sw          $zero, 0x18($v0)
/* 01F190 8001F5E0 E4520014 */  swc1        $f18, 0x14($v0)
/* 01F194 8001F5E4 93A9006F */  lbu         $t1, 0x6f($sp)
/* 01F198 8001F5E8 A049001C */  sb          $t1, 0x1c($v0)
/* 01F19C 8001F5EC 0C00219D */  jal         func_80008674
/* 01F1A0 8001F5F0 AE020054 */   sw         $v0, 0x54($s0)
/* 01F1A4 8001F5F4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01F1A8 8001F5F8 02001025 */  move        $v0, $s0
/* 01F1AC 8001F5FC 8FB00018 */  lw          $s0, 0x18($sp)
/* 01F1B0 8001F600 03E00008 */  jr          $ra
/* 01F1B4 8001F604 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8001F608 # 1
/* 01F1B8 8001F608 8C820054 */  lw          $v0, 0x54($a0)
/* 01F1BC 8001F60C 03E00008 */  jr          $ra
/* 01F1C0 8001F610 AC450018 */   sw         $a1, 0x18($v0)

glabel func_8001F614 # 2
/* 01F1C4 8001F614 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F1C8 8001F618 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F1CC 8001F61C 8C820054 */  lw          $v0, 0x54($a0)
/* 01F1D0 8001F620 3C04800B */  lui         $a0, %hi(D_800B6D30)
/* 01F1D4 8001F624 24846D30 */  addiu       $a0, $a0, %lo(D_800B6D30)
/* 01F1D8 8001F628 904E001C */  lbu         $t6, 0x1c($v0)
/* 01F1DC 8001F62C 3C05800A */  lui         $a1, %hi(D_800A4860)
/* 01F1E0 8001F630 55C00004 */  bnel        $t6, $zero, .L8001F644
/* 01F1E4 8001F634 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01F1E8 8001F638 0C014E38 */  jal         sprintf
/* 01F1EC 8001F63C 24A54860 */   addiu      $a1, $a1, %lo(D_800A4860)
/* 01F1F0 8001F640 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001F644:
/* 01F1F4 8001F644 3C02800B */  lui         $v0, %hi(D_800B6D30)
/* 01F1F8 8001F648 24426D30 */  addiu       $v0, $v0, %lo(D_800B6D30)
/* 01F1FC 8001F64C 03E00008 */  jr          $ra
/* 01F200 8001F650 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001F654 # 3
/* 01F204 8001F654 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F208 8001F658 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F20C 8001F65C 0C007A0C */  jal         func_8001E830
/* 01F210 8001F660 00000000 */   nop
/* 01F214 8001F664 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01F218 8001F668 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01F21C 8001F66C 03E00008 */  jr          $ra
/* 01F220 8001F670 00000000 */   nop
/* 01F224 8001F674 00000000 */  nop
/* 01F228 8001F678 00000000 */  nop
/* 01F22C 8001F67C 00000000 */  nop
