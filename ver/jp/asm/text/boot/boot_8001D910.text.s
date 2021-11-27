.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001D910 # 0
/* 01D4C0 8001D910 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 01D4C4 8001D914 AFB00018 */  sw          $s0, 0x18($sp)
/* 01D4C8 8001D918 00808025 */  move        $s0, $a0
/* 01D4CC 8001D91C 3C0E8009 */  lui         $t6, %hi(D_8008E3C0)
/* 01D4D0 8001D920 27A4002C */  addiu       $a0, $sp, 0x2c
/* 01D4D4 8001D924 25CEE3C0 */  addiu       $t6, $t6, %lo(D_8008E3C0)
/* 01D4D8 8001D928 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01D4DC 8001D92C AFA5008C */  sw          $a1, 0x8c($sp)
/* 01D4E0 8001D930 AFA60090 */  sw          $a2, 0x90($sp)
/* 01D4E4 8001D934 AFA70094 */  sw          $a3, 0x94($sp)
/* 01D4E8 8001D938 25D90054 */  addiu       $t9, $t6, 0x54
/* 01D4EC 8001D93C 00804025 */  move        $t0, $a0
.L8001D940:
/* 01D4F0 8001D940 8DC10000 */  lw          $at, 0x0($t6)
/* 01D4F4 8001D944 25CE000C */  addiu       $t6, $t6, 0xc
/* 01D4F8 8001D948 2508000C */  addiu       $t0, $t0, 0xc
/* 01D4FC 8001D94C AD01FFF4 */  sw          $at, -0xc($t0)
/* 01D500 8001D950 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 01D504 8001D954 AD01FFF8 */  sw          $at, -0x8($t0)
/* 01D508 8001D958 8DC1FFFC */  lw          $at, -0x4($t6)
/* 01D50C 8001D95C 15D9FFF8 */  bne         $t6, $t9, .L8001D940
/* 01D510 8001D960 AD01FFFC */   sw         $at, -0x4($t0)
/* 01D514 8001D964 8DC10000 */  lw          $at, 0x0($t6)
/* 01D518 8001D968 AD010000 */  sw          $at, 0x0($t0)
/* 01D51C 8001D96C 8DD90004 */  lw          $t9, 0x4($t6)
/* 01D520 8001D970 0C001B92 */  jal         func_80006E48
/* 01D524 8001D974 AD190004 */   sw         $t9, 0x4($t0)
/* 01D528 8001D978 AFA20028 */  sw          $v0, 0x28($sp)
/* 01D52C 8001D97C C6040000 */  lwc1        $f4, 0x0($s0)
/* 01D530 8001D980 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01D534 8001D984 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01D538 8001D988 E4440018 */  swc1        $f4, 0x18($v0)
/* 01D53C 8001D98C C6060004 */  lwc1        $f6, 0x4($s0)
/* 01D540 8001D990 24050020 */  addiu       $a1, $zero, 0x20
/* 01D544 8001D994 24060032 */  addiu       $a2, $zero, 0x32
/* 01D548 8001D998 E446001C */  swc1        $f6, 0x1c($v0)
/* 01D54C 8001D99C C6080008 */  lwc1        $f8, 0x8($s0)
/* 01D550 8001D9A0 E4480020 */  swc1        $f8, 0x20($v0)
/* 01D554 8001D9A4 C60A0000 */  lwc1        $f10, 0x0($s0)
/* 01D558 8001D9A8 E44A0044 */  swc1        $f10, 0x44($v0)
/* 01D55C 8001D9AC C6100004 */  lwc1        $f16, 0x4($s0)
/* 01D560 8001D9B0 E4500048 */  swc1        $f16, 0x48($v0)
/* 01D564 8001D9B4 C6120008 */  lwc1        $f18, 0x8($s0)
/* 01D568 8001D9B8 0C00DA76 */  jal         func_800369D8
/* 01D56C 8001D9BC E452004C */   swc1       $f18, 0x4c($v0)
/* 01D570 8001D9C0 8FA3008C */  lw          $v1, 0x8c($sp)
/* 01D574 8001D9C4 8FA50090 */  lw          $a1, 0x90($sp)
/* 01D578 8001D9C8 8FB00028 */  lw          $s0, 0x28($sp)
/* 01D57C 8001D9CC C4640000 */  lwc1        $f4, 0x0($v1)
/* 01D580 8001D9D0 02002025 */  move        $a0, $s0
/* 01D584 8001D9D4 E4440000 */  swc1        $f4, 0x0($v0)
/* 01D588 8001D9D8 C4660004 */  lwc1        $f6, 0x4($v1)
/* 01D58C 8001D9DC E4460004 */  swc1        $f6, 0x4($v0)
/* 01D590 8001D9E0 C4680008 */  lwc1        $f8, 0x8($v1)
/* 01D594 8001D9E4 E4480008 */  swc1        $f8, 0x8($v0)
/* 01D598 8001D9E8 C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 01D59C 8001D9EC E44A000C */  swc1        $f10, 0xc($v0)
/* 01D5A0 8001D9F0 C4B00004 */  lwc1        $f16, 0x4($a1)
/* 01D5A4 8001D9F4 E4500010 */  swc1        $f16, 0x10($v0)
/* 01D5A8 8001D9F8 C4B20008 */  lwc1        $f18, 0x8($a1)
/* 01D5AC 8001D9FC AC400018 */  sw          $zero, 0x18($v0)
/* 01D5B0 8001DA00 E4520014 */  swc1        $f18, 0x14($v0)
/* 01D5B4 8001DA04 93A90097 */  lbu         $t1, 0x97($sp)
/* 01D5B8 8001DA08 A049001C */  sb          $t1, 0x1c($v0)
/* 01D5BC 8001DA0C 0C001C1B */  jal         func_8000706C
/* 01D5C0 8001DA10 AE020054 */   sw         $v0, 0x54($s0)
/* 01D5C4 8001DA14 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01D5C8 8001DA18 02001025 */  move        $v0, $s0
/* 01D5CC 8001DA1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 01D5D0 8001DA20 03E00008 */  jr          $ra
/* 01D5D4 8001DA24 27BD0088 */   addiu      $sp, $sp, 0x88

glabel func_8001DA28 # 1
/* 01D5D8 8001DA28 8C820054 */  lw          $v0, 0x54($a0)
/* 01D5DC 8001DA2C 03E00008 */  jr          $ra
/* 01D5E0 8001DA30 AC450018 */   sw         $a1, 0x18($v0)

glabel func_8001DA34 # 2
/* 01D5E4 8001DA34 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D5E8 8001DA38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D5EC 8001DA3C 8C820054 */  lw          $v0, 0x54($a0)
/* 01D5F0 8001DA40 3C04800C */  lui         $a0, %hi(D_800BB4B0)
/* 01D5F4 8001DA44 2484B4B0 */  addiu       $a0, $a0, %lo(D_800BB4B0)
/* 01D5F8 8001DA48 904E001C */  lbu         $t6, 0x1c($v0)
/* 01D5FC 8001DA4C 3C05800B */  lui         $a1, %hi(D_800A9890)
/* 01D600 8001DA50 55C00004 */  bnel        $t6, $zero, .L8001DA64
/* 01D604 8001DA54 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01D608 8001DA58 0C014589 */  jal         func_80051624
/* 01D60C 8001DA5C 24A59890 */   addiu      $a1, $a1, %lo(D_800A9890)
/* 01D610 8001DA60 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001DA64:
/* 01D614 8001DA64 3C02800C */  lui         $v0, %hi(D_800BB4B0)
/* 01D618 8001DA68 2442B4B0 */  addiu       $v0, $v0, %lo(D_800BB4B0)
/* 01D61C 8001DA6C 03E00008 */  jr          $ra
/* 01D620 8001DA70 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001DA74 # 3
/* 01D624 8001DA74 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D628 8001DA78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D62C 8001DA7C 0C007314 */  jal         func_8001CC50
/* 01D630 8001DA80 00000000 */   nop
/* 01D634 8001DA84 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D638 8001DA88 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D63C 8001DA8C 03E00008 */  jr          $ra
/* 01D640 8001DA90 00000000 */   nop
/* 01D644 8001DA94 00000000 */  nop
/* 01D648 8001DA98 00000000 */  nop
/* 01D64C 8001DA9C 00000000 */  nop
