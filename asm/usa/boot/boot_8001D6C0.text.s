.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001D6C0 # 0
/* 01D270 8001D6C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01D274 8001D6C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01D278 8001D6C8 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01D27C 8001D6CC 3C048008 */  lui         $a0, %hi(D_80079260)
/* 01D280 8001D6D0 46007506 */  mov.s       $f20, $f14
/* 01D284 8001D6D4 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 01D288 8001D6D8 AFA60030 */  sw          $a2, 0x30($sp)
/* 01D28C 8001D6DC 0C002114 */  jal         func_80008450
/* 01D290 8001D6E0 24849260 */   addiu      $a0, $a0, %lo(D_80079260)
/* 01D294 8001D6E4 44802000 */  mtc1        $zero, $f4
/* 01D298 8001D6E8 00402025 */  move        $a0, $v0
/* 01D29C 8001D6EC C7AC0028 */  lwc1        $f12, 0x28($sp)
/* 01D2A0 8001D6F0 4604A03C */  c.lt.s      $f20, $f4
/* 01D2A4 8001D6F4 8FA60030 */  lw          $a2, 0x30($sp)
/* 01D2A8 8001D6F8 00003825 */  move        $a3, $zero
/* 01D2AC 8001D6FC 45020009 */  bc1fl       .L8001D724
/* 01D2B0 8001D700 C7A80028 */   lwc1       $f8, 0x28($sp)
/* 01D2B4 8001D704 4600A387 */  neg.s       $f14, $f20
/* 01D2B8 8001D708 0C042F10 */  jal         func_8010BC40
/* 01D2BC 8001D70C AFA20024 */   sw         $v0, 0x24($sp)
/* 01D2C0 8001D710 3C013F80 */  lui         $at, 0x3f80
/* 01D2C4 8001D714 44813000 */  mtc1        $at, $f6
/* 01D2C8 8001D718 8FA40024 */  lw          $a0, 0x24($sp)
/* 01D2CC 8001D71C 46060500 */  add.s       $f20, $f0, $f6
/* 01D2D0 8001D720 C7A80028 */  lwc1        $f8, 0x28($sp)
.L8001D724:
/* 01D2D4 8001D724 3C01800A */  lui         $at, %hi(D_800A3A68)
/* 01D2D8 8001D728 C4203A68 */  lwc1        $f0, %lo(D_800A3A68)($at)
/* 01D2DC 8001D72C E494001C */  swc1        $f20, 0x1c($a0)
/* 01D2E0 8001D730 E4880018 */  swc1        $f8, 0x18($a0)
/* 01D2E4 8001D734 C7AA0030 */  lwc1        $f10, 0x30($sp)
/* 01D2E8 8001D738 3C014040 */  lui         $at, 0x4040
/* 01D2EC 8001D73C 44812000 */  mtc1        $at, $f4
/* 01D2F0 8001D740 E48A0020 */  swc1        $f10, 0x20($a0)
/* 01D2F4 8001D744 C7B00028 */  lwc1        $f16, 0x28($sp)
/* 01D2F8 8001D748 E4940048 */  swc1        $f20, 0x48($a0)
/* 01D2FC 8001D74C E4900044 */  swc1        $f16, 0x44($a0)
/* 01D300 8001D750 C7B20030 */  lwc1        $f18, 0x30($sp)
/* 01D304 8001D754 E4800008 */  swc1        $f0, 0x8($a0)
/* 01D308 8001D758 E4800004 */  swc1        $f0, 0x4($a0)
/* 01D30C 8001D75C E4800000 */  swc1        $f0, 0x0($a0)
/* 01D310 8001D760 E4840024 */  swc1        $f4, 0x24($a0)
/* 01D314 8001D764 E492004C */  swc1        $f18, 0x4c($a0)
/* 01D318 8001D768 0C00219D */  jal         func_80008674
/* 01D31C 8001D76C AFA40024 */   sw         $a0, 0x24($sp)
/* 01D320 8001D770 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01D324 8001D774 8FA20024 */  lw          $v0, 0x24($sp)
/* 01D328 8001D778 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01D32C 8001D77C 03E00008 */  jr          $ra
/* 01D330 8001D780 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001D784 # 1
/* 01D334 8001D784 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D338 8001D788 AFA40020 */  sw          $a0, 0x20($sp)
/* 01D33C 8001D78C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D340 8001D790 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01D344 8001D794 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01D348 8001D798 24050010 */  addiu       $a1, $zero, 0x10
/* 01D34C 8001D79C 0C00E03D */  jal         func_800380F4
/* 01D350 8001D7A0 24060046 */   addiu      $a2, $zero, 0x46
/* 01D354 8001D7A4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01D358 8001D7A8 AC400000 */  sw          $zero, 0x0($v0)
/* 01D35C 8001D7AC 3C058007 */  lui         $a1, %hi(D_8006B390)
/* 01D360 8001D7B0 8CA5B390 */  lw          $a1, %lo(D_8006B390)($a1)
/* 01D364 8001D7B4 0C002973 */  jal         func_8000A5CC
/* 01D368 8001D7B8 24440004 */   addiu      $a0, $v0, 0x4
/* 01D36C 8001D7BC 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01D370 8001D7C0 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01D374 8001D7C4 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01D378 8001D7C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D37C 8001D7CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D380 8001D7D0 03E00008 */  jr          $ra
/* 01D384 8001D7D4 00000000 */   nop

glabel func_8001D7D8 # 2
/* 01D388 8001D7D8 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01D38C 8001D7DC AFBF0044 */  sw          $ra, 0x44($sp)
/* 01D390 8001D7E0 AFB10040 */  sw          $s1, 0x40($sp)
/* 01D394 8001D7E4 AFB0003C */  sw          $s0, 0x3c($sp)
/* 01D398 8001D7E8 8C910054 */  lw          $s1, 0x54($a0)
/* 01D39C 8001D7EC 00808025 */  move        $s0, $a0
/* 01D3A0 8001D7F0 3C028007 */  lui         $v0, %hi(D_800760A8)
/* 01D3A4 8001D7F4 8E2E0000 */  lw          $t6, 0x0($s1)
/* 01D3A8 8001D7F8 15C0001F */  bne         $t6, $zero, .L8001D878
/* 01D3AC 8001D7FC 00000000 */   nop
/* 01D3B0 8001D800 8C4260A8 */  lw          $v0, %lo(D_800760A8)($v0)
/* 01D3B4 8001D804 C4860044 */  lwc1        $f6, 0x44($a0)
/* 01D3B8 8001D808 C4440044 */  lwc1        $f4, 0x44($v0)
/* 01D3BC 8001D80C 46062201 */  sub.s       $f8, $f4, $f6
/* 01D3C0 8001D810 E7A80058 */  swc1        $f8, 0x58($sp)
/* 01D3C4 8001D814 C4900048 */  lwc1        $f16, 0x48($a0)
/* 01D3C8 8001D818 C44A0048 */  lwc1        $f10, 0x48($v0)
/* 01D3CC 8001D81C 46105481 */  sub.s       $f18, $f10, $f16
/* 01D3D0 8001D820 E7B2005C */  swc1        $f18, 0x5c($sp)
/* 01D3D4 8001D824 C486004C */  lwc1        $f6, 0x4c($a0)
/* 01D3D8 8001D828 C444004C */  lwc1        $f4, 0x4c($v0)
/* 01D3DC 8001D82C 27A40058 */  addiu       $a0, $sp, 0x58
/* 01D3E0 8001D830 46062201 */  sub.s       $f8, $f4, $f6
/* 01D3E4 8001D834 0C00E974 */  jal         func_8003A5D0
/* 01D3E8 8001D838 E7A80060 */   swc1       $f8, 0x60($sp)
/* 01D3EC 8001D83C 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 01D3F0 8001D840 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 01D3F4 8001D844 C60A0024 */  lwc1        $f10, 0x24($s0)
/* 01D3F8 8001D848 24180001 */  addiu       $t8, $zero, 0x1
/* 01D3FC 8001D84C C5F00024 */  lwc1        $f16, 0x24($t7)
/* 01D400 8001D850 26240004 */  addiu       $a0, $s1, 0x4
/* 01D404 8001D854 3C058007 */  lui         $a1, %hi(D_8006B394)
/* 01D408 8001D858 46105480 */  add.s       $f18, $f10, $f16
/* 01D40C 8001D85C 4612003C */  c.lt.s      $f0, $f18
/* 01D410 8001D860 00000000 */  nop
/* 01D414 8001D864 45000004 */  bc1f        .L8001D878
/* 01D418 8001D868 00000000 */   nop
/* 01D41C 8001D86C AE380000 */  sw          $t8, 0x0($s1)
/* 01D420 8001D870 0C002973 */  jal         func_8000A5CC
/* 01D424 8001D874 8CA5B394 */   lw         $a1, %lo(D_8006B394)($a1)
.L8001D878:
/* 01D428 8001D878 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 01D42C 8001D87C 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 01D430 8001D880 26240004 */  addiu       $a0, $s1, 0x4
/* 01D434 8001D884 0C002980 */  jal         func_8000A600
/* 01D438 8001D888 27A50054 */   addiu      $a1, $sp, 0x54
/* 01D43C 8001D88C 8E390000 */  lw          $t9, 0x0($s1)
/* 01D440 8001D890 24010001 */  addiu       $at, $zero, 0x1
/* 01D444 8001D894 1320002E */  beq         $t9, $zero, .L8001D950
/* 01D448 8001D898 00000000 */   nop
/* 01D44C 8001D89C 54410006 */  bnel        $v0, $at, .L8001D8B8
/* 01D450 8001D8A0 24010002 */   addiu      $at, $zero, 0x2
/* 01D454 8001D8A4 0C0021EF */  jal         func_800087BC
/* 01D458 8001D8A8 02002025 */   move       $a0, $s0
/* 01D45C 8001D8AC 10000028 */  b           .L8001D950
/* 01D460 8001D8B0 00000000 */   nop
/* 01D464 8001D8B4 24010002 */  addiu       $at, $zero, 0x2
.L8001D8B8:
/* 01D468 8001D8B8 14410025 */  bne         $v0, $at, .L8001D950
/* 01D46C 8001D8BC 02002025 */   move       $a0, $s0
/* 01D470 8001D8C0 24050097 */  addiu       $a1, $zero, 0x97
/* 01D474 8001D8C4 3C0641A0 */  lui         $a2, 0x41a0
/* 01D478 8001D8C8 0C0026EE */  jal         func_80009BB8
/* 01D47C 8001D8CC 3C0742C8 */   lui        $a3, 0x42c8
/* 01D480 8001D8D0 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 01D484 8001D8D4 8C8460A8 */  lw          $a0, %lo(D_800760A8)($a0)
/* 01D488 8001D8D8 0C005912 */  jal         func_80016448
/* 01D48C 8001D8DC 24050079 */   addiu      $a1, $zero, 0x79
/* 01D490 8001D8E0 3C01800A */  lui         $at, %hi(D_800A3A6C)
/* 01D494 8001D8E4 C4203A6C */  lwc1        $f0, %lo(D_800A3A6C)($at)
/* 01D498 8001D8E8 3C01800A */  lui         $at, %hi(D_800A3A70)
/* 01D49C 8001D8EC 8E050044 */  lw          $a1, 0x44($s0)
/* 01D4A0 8001D8F0 8E060048 */  lw          $a2, 0x48($s0)
/* 01D4A4 8001D8F4 8E07004C */  lw          $a3, 0x4c($s0)
/* 01D4A8 8001D8F8 C4243A70 */  lwc1        $f4, %lo(D_800A3A70)($at)
/* 01D4AC 8001D8FC 3C013F80 */  lui         $at, 0x3f80
/* 01D4B0 8001D900 44813000 */  mtc1        $at, $f6
/* 01D4B4 8001D904 3C01800A */  lui         $at, %hi(D_800A3A74)
/* 01D4B8 8001D908 C4283A74 */  lwc1        $f8, %lo(D_800A3A74)($at)
/* 01D4BC 8001D90C 3C014000 */  lui         $at, 0x4000
/* 01D4C0 8001D910 44815000 */  mtc1        $at, $f10
/* 01D4C4 8001D914 240800C2 */  addiu       $t0, $zero, 0xc2
/* 01D4C8 8001D918 24090001 */  addiu       $t1, $zero, 0x1
/* 01D4CC 8001D91C 240A0008 */  addiu       $t2, $zero, 0x8
/* 01D4D0 8001D920 AFAA0034 */  sw          $t2, 0x34($sp)
/* 01D4D4 8001D924 AFA90030 */  sw          $t1, 0x30($sp)
/* 01D4D8 8001D928 AFA8002C */  sw          $t0, 0x2c($sp)
/* 01D4DC 8001D92C AFA20014 */  sw          $v0, 0x14($sp)
/* 01D4E0 8001D930 24040002 */  addiu       $a0, $zero, 0x2
/* 01D4E4 8001D934 E7A00028 */  swc1        $f0, 0x28($sp)
/* 01D4E8 8001D938 E7A00024 */  swc1        $f0, 0x24($sp)
/* 01D4EC 8001D93C E7A40010 */  swc1        $f4, 0x10($sp)
/* 01D4F0 8001D940 E7A60018 */  swc1        $f6, 0x18($sp)
/* 01D4F4 8001D944 E7A8001C */  swc1        $f8, 0x1c($sp)
/* 01D4F8 8001D948 0C0074EE */  jal         func_8001D3B8
/* 01D4FC 8001D94C E7AA0020 */   swc1       $f10, 0x20($sp)
.L8001D950:
/* 01D500 8001D950 0C0026AE */  jal         func_80009AB8
/* 01D504 8001D954 02002025 */   move       $a0, $s0
/* 01D508 8001D958 8FBF0044 */  lw          $ra, 0x44($sp)
/* 01D50C 8001D95C 8FB0003C */  lw          $s0, 0x3c($sp)
/* 01D510 8001D960 8FB10040 */  lw          $s1, 0x40($sp)
/* 01D514 8001D964 03E00008 */  jr          $ra
/* 01D518 8001D968 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8001D96C # 3
/* 01D51C 8001D96C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D520 8001D970 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D524 8001D974 AFA40018 */  sw          $a0, 0x18($sp)
/* 01D528 8001D978 8C820054 */  lw          $v0, 0x54($a0)
/* 01D52C 8001D97C 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 01D530 8001D980 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 01D534 8001D984 24050005 */  addiu       $a1, $zero, 0x5
/* 01D538 8001D988 0C00309B */  jal         func_8000C26C
/* 01D53C 8001D98C 8446000C */   lh         $a2, 0xc($v0)
/* 01D540 8001D990 8FAF0018 */  lw          $t7, 0x18($sp)
/* 01D544 8001D994 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D548 8001D998 8DE20030 */  lw          $v0, 0x30($t7)
/* 01D54C 8001D99C 03E00008 */  jr          $ra
/* 01D550 8001D9A0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001D9A4 # 4
/* 01D554 8001D9A4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D558 8001D9A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D55C 8001D9AC 8C830054 */  lw          $v1, 0x54($a0)
/* 01D560 8001D9B0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 01D564 8001D9B4 55C0000F */  bnel        $t6, $zero, .L8001D9F4
/* 01D568 8001D9B8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01D56C 8001D9BC 8CA40000 */  lw          $a0, 0x0($a1)
/* 01D570 8001D9C0 0C001FA3 */  jal         func_80007E8C
/* 01D574 8001D9C4 AFA3001C */   sw         $v1, 0x1c($sp)
/* 01D578 8001D9C8 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 01D57C 8001D9CC 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 01D580 8001D9D0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01D584 8001D9D4 24180001 */  addiu       $t8, $zero, 0x1
/* 01D588 8001D9D8 144F0005 */  bne         $v0, $t7, .L8001D9F0
/* 01D58C 8001D9DC 24640004 */   addiu      $a0, $v1, 0x4
/* 01D590 8001D9E0 AC780000 */  sw          $t8, 0x0($v1)
/* 01D594 8001D9E4 3C058007 */  lui         $a1, %hi(D_8006B394)
/* 01D598 8001D9E8 0C002973 */  jal         func_8000A5CC
/* 01D59C 8001D9EC 8CA5B394 */   lw         $a1, %lo(D_8006B394)($a1)
.L8001D9F0:
/* 01D5A0 8001D9F0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001D9F4:
/* 01D5A4 8001D9F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D5A8 8001D9F8 03E00008 */  jr          $ra
/* 01D5AC 8001D9FC 00000000 */   nop

glabel func_8001DA00 # 5
/* 01D5B0 8001DA00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D5B4 8001DA04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D5B8 8001DA08 0C0053F9 */  jal         func_80014FE4
/* 01D5BC 8001DA0C AFA40018 */   sw         $a0, 0x18($sp)
/* 01D5C0 8001DA10 0C005A6E */  jal         func_800169B8
/* 01D5C4 8001DA14 8FA40018 */   lw         $a0, 0x18($sp)
/* 01D5C8 8001DA18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D5CC 8001DA1C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D5D0 8001DA20 03E00008 */  jr          $ra
/* 01D5D4 8001DA24 00000000 */   nop

glabel func_8001DA28 # 6
/* 01D5D8 8001DA28 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D5DC 8001DA2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D5E0 8001DA30 0C045996 */  jal         func_80116658
/* 01D5E4 8001DA34 AFA40018 */   sw         $a0, 0x18($sp)
/* 01D5E8 8001DA38 0C005522 */  jal         func_80015488
/* 01D5EC 8001DA3C 8FA40018 */   lw         $a0, 0x18($sp)
/* 01D5F0 8001DA40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D5F4 8001DA44 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D5F8 8001DA48 03E00008 */  jr          $ra
/* 01D5FC 8001DA4C 00000000 */   nop

glabel func_8001DA50 # 7
/* 01D600 8001DA50 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01D604 8001DA54 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01D608 8001DA58 AFB00018 */  sw          $s0, 0x18($sp)
/* 01D60C 8001DA5C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01D610 8001DA60 00808025 */  move        $s0, $a0
/* 01D614 8001DA64 0C045996 */  jal         func_80116658
/* 01D618 8001DA68 AFAE0024 */   sw         $t6, 0x24($sp)
/* 01D61C 8001DA6C 0C005522 */  jal         func_80015488
/* 01D620 8001DA70 02002025 */   move       $a0, $s0
/* 01D624 8001DA74 0C0462CC */  jal         func_80118B30
/* 01D628 8001DA78 02002025 */   move       $a0, $s0
/* 01D62C 8001DA7C 50400013 */  beql        $v0, $zero, .L8001DACC
/* 01D630 8001DA80 8FBF001C */   lw         $ra, 0x1c($sp)
/* 01D634 8001DA84 8FA20024 */  lw          $v0, 0x24($sp)
/* 01D638 8001DA88 C6100024 */  lwc1        $f16, 0x24($s0)
/* 01D63C 8001DA8C C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 01D640 8001DA90 E6040018 */  swc1        $f4, 0x18($s0)
/* 01D644 8001DA94 C44601F0 */  lwc1        $f6, 0x1f0($v0)
/* 01D648 8001DA98 C6040018 */  lwc1        $f4, 0x18($s0)
/* 01D64C 8001DA9C E606001C */  swc1        $f6, 0x1c($s0)
/* 01D650 8001DAA0 C60A001C */  lwc1        $f10, 0x1c($s0)
/* 01D654 8001DAA4 C44801F4 */  lwc1        $f8, 0x1f4($v0)
/* 01D658 8001DAA8 E6040044 */  swc1        $f4, 0x44($s0)
/* 01D65C 8001DAAC 46105480 */  add.s       $f18, $f10, $f16
/* 01D660 8001DAB0 E6080020 */  swc1        $f8, 0x20($s0)
/* 01D664 8001DAB4 C6080020 */  lwc1        $f8, 0x20($s0)
/* 01D668 8001DAB8 E612001C */  swc1        $f18, 0x1c($s0)
/* 01D66C 8001DABC C606001C */  lwc1        $f6, 0x1c($s0)
/* 01D670 8001DAC0 E608004C */  swc1        $f8, 0x4c($s0)
/* 01D674 8001DAC4 E6060048 */  swc1        $f6, 0x48($s0)
/* 01D678 8001DAC8 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001DACC:
/* 01D67C 8001DACC 8FB00018 */  lw          $s0, 0x18($sp)
/* 01D680 8001DAD0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01D684 8001DAD4 03E00008 */  jr          $ra
/* 01D688 8001DAD8 00000000 */   nop

glabel func_8001DADC # 8
/* 01D68C 8001DADC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D690 8001DAE0 AFA40020 */  sw          $a0, 0x20($sp)
/* 01D694 8001DAE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D698 8001DAE8 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01D69C 8001DAEC 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01D6A0 8001DAF0 24050008 */  addiu       $a1, $zero, 0x8
/* 01D6A4 8001DAF4 0C00E03D */  jal         func_800380F4
/* 01D6A8 8001DAF8 24060061 */   addiu      $a2, $zero, 0x61
/* 01D6AC 8001DAFC 00402025 */  move        $a0, $v0
/* 01D6B0 8001DB00 24050008 */  addiu       $a1, $zero, 0x8
/* 01D6B4 8001DB04 0C014388 */  jal         bzero
/* 01D6B8 8001DB08 AFA2001C */   sw         $v0, 0x1c($sp)
/* 01D6BC 8001DB0C 8FA20020 */  lw          $v0, 0x20($sp)
/* 01D6C0 8001DB10 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01D6C4 8001DB14 C4440014 */  lwc1        $f4, 0x14($v0)
/* 01D6C8 8001DB18 E4640000 */  swc1        $f4, 0x0($v1)
/* 01D6CC 8001DB1C AC430054 */  sw          $v1, 0x54($v0)
/* 01D6D0 8001DB20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D6D4 8001DB24 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D6D8 8001DB28 03E00008 */  jr          $ra
/* 01D6DC 8001DB2C 00000000 */   nop

glabel func_8001DB30 # 9
/* 01D6E0 8001DB30 44801000 */  mtc1        $zero, $f2
/* 01D6E4 8001DB34 3C013F80 */  lui         $at, 0x3f80
/* 01D6E8 8001DB38 44812000 */  mtc1        $at, $f4
/* 01D6EC 8001DB3C 46001005 */  abs.s       $f0, $f2
/* 01D6F0 8001DB40 8C820054 */  lw          $v0, 0x54($a0)
/* 01D6F4 8001DB44 4604003C */  c.lt.s      $f0, $f4
/* 01D6F8 8001DB48 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01D6FC 8001DB4C E4420004 */  swc1        $f2, 0x4($v0)
/* 01D700 8001DB50 45020005 */  bc1fl       .L8001DB68
/* 01D704 8001DB54 C4480004 */   lwc1       $f8, 0x4($v0)
/* 01D708 8001DB58 44803000 */  mtc1        $zero, $f6
/* 01D70C 8001DB5C 03E00008 */  jr          $ra
/* 01D710 8001DB60 E4460004 */   swc1       $f6, 0x4($v0)
/* 01D714 8001DB64 C4480004 */  lwc1        $f8, 0x4($v0)
.L8001DB68:
/* 01D718 8001DB68 C42AE4E4 */  lwc1        $f10, %lo(D_800AE4E4)($at)
/* 01D71C 8001DB6C C4920014 */  lwc1        $f18, 0x14($a0)
/* 01D720 8001DB70 460A4402 */  mul.s       $f16, $f8, $f10
/* 01D724 8001DB74 46109100 */  add.s       $f4, $f18, $f16
/* 01D728 8001DB78 E4840014 */  swc1        $f4, 0x14($a0)
/* 01D72C 8001DB7C 03E00008 */  jr          $ra
/* 01D730 8001DB80 00000000 */   nop

glabel func_8001DB84 # 10
/* 01D734 8001DB84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D738 8001DB88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D73C 8001DB8C 0C005578 */  jal         func_800155E0
/* 01D740 8001DB90 AFA40018 */   sw         $a0, 0x18($sp)
/* 01D744 8001DB94 3C014370 */  lui         $at, 0x4370
/* 01D748 8001DB98 44812000 */  mtc1        $at, $f4
/* 01D74C 8001DB9C 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01D750 8001DBA0 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 01D754 8001DBA4 8FA40018 */  lw          $a0, 0x18($sp)
/* 01D758 8001DBA8 44806000 */  mtc1        $zero, $f12
/* 01D75C 8001DBAC 46062202 */  mul.s       $f8, $f4, $f6
/* 01D760 8001DBB0 C48A0010 */  lwc1        $f10, 0x10($a0)
/* 01D764 8001DBB4 3C0143B4 */  lui         $at, 0x43b4
/* 01D768 8001DBB8 46085401 */  sub.s       $f16, $f10, $f8
/* 01D76C 8001DBBC E4900010 */  swc1        $f16, 0x10($a0)
/* 01D770 8001DBC0 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D774 8001DBC4 460C003C */  c.lt.s      $f0, $f12
/* 01D778 8001DBC8 00000000 */  nop
/* 01D77C 8001DBCC 4502000B */  bc1fl       .L8001DBFC
/* 01D780 8001DBD0 3C0143B4 */   lui        $at, 0x43b4
/* 01D784 8001DBD4 44811000 */  mtc1        $at, $f2
/* 01D788 8001DBD8 00000000 */  nop
/* 01D78C 8001DBDC 46020480 */  add.s       $f18, $f0, $f2
.L8001DBE0:
/* 01D790 8001DBE0 E4920010 */  swc1        $f18, 0x10($a0)
/* 01D794 8001DBE4 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D798 8001DBE8 460C003C */  c.lt.s      $f0, $f12
/* 01D79C 8001DBEC 00000000 */  nop
/* 01D7A0 8001DBF0 4503FFFB */  bc1tl       .L8001DBE0
/* 01D7A4 8001DBF4 46020480 */   add.s      $f18, $f0, $f2
/* 01D7A8 8001DBF8 3C0143B4 */  lui         $at, 0x43b4
.L8001DBFC:
/* 01D7AC 8001DBFC 44811000 */  mtc1        $at, $f2
/* 01D7B0 8001DC00 00000000 */  nop
/* 01D7B4 8001DC04 4600103E */  c.le.s      $f2, $f0
/* 01D7B8 8001DC08 00000000 */  nop
/* 01D7BC 8001DC0C 45020009 */  bc1fl       .L8001DC34
/* 01D7C0 8001DC10 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01D7C4 8001DC14 46020101 */  sub.s       $f4, $f0, $f2
.L8001DC18:
/* 01D7C8 8001DC18 E4840010 */  swc1        $f4, 0x10($a0)
/* 01D7CC 8001DC1C C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D7D0 8001DC20 4600103E */  c.le.s      $f2, $f0
/* 01D7D4 8001DC24 00000000 */  nop
/* 01D7D8 8001DC28 4503FFFB */  bc1tl       .L8001DC18
/* 01D7DC 8001DC2C 46020101 */   sub.s      $f4, $f0, $f2
/* 01D7E0 8001DC30 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001DC34:
/* 01D7E4 8001DC34 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D7E8 8001DC38 03E00008 */  jr          $ra
/* 01D7EC 8001DC3C 00000000 */   nop

glabel func_8001DC40 # 11
/* 01D7F0 8001DC40 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D7F4 8001DC44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D7F8 8001DC48 0C005578 */  jal         func_800155E0
/* 01D7FC 8001DC4C AFA40018 */   sw         $a0, 0x18($sp)
/* 01D800 8001DC50 3C014370 */  lui         $at, 0x4370
/* 01D804 8001DC54 44812000 */  mtc1        $at, $f4
/* 01D808 8001DC58 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01D80C 8001DC5C C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 01D810 8001DC60 8FA40018 */  lw          $a0, 0x18($sp)
/* 01D814 8001DC64 44806000 */  mtc1        $zero, $f12
/* 01D818 8001DC68 46062202 */  mul.s       $f8, $f4, $f6
/* 01D81C 8001DC6C C48A0010 */  lwc1        $f10, 0x10($a0)
/* 01D820 8001DC70 3C0143B4 */  lui         $at, 0x43b4
/* 01D824 8001DC74 46085400 */  add.s       $f16, $f10, $f8
/* 01D828 8001DC78 E4900010 */  swc1        $f16, 0x10($a0)
/* 01D82C 8001DC7C C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D830 8001DC80 460C003C */  c.lt.s      $f0, $f12
/* 01D834 8001DC84 00000000 */  nop
/* 01D838 8001DC88 4502000B */  bc1fl       .L8001DCB8
/* 01D83C 8001DC8C 3C0143B4 */   lui        $at, 0x43b4
/* 01D840 8001DC90 44811000 */  mtc1        $at, $f2
/* 01D844 8001DC94 00000000 */  nop
/* 01D848 8001DC98 46020480 */  add.s       $f18, $f0, $f2
.L8001DC9C:
/* 01D84C 8001DC9C E4920010 */  swc1        $f18, 0x10($a0)
/* 01D850 8001DCA0 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D854 8001DCA4 460C003C */  c.lt.s      $f0, $f12
/* 01D858 8001DCA8 00000000 */  nop
/* 01D85C 8001DCAC 4503FFFB */  bc1tl       .L8001DC9C
/* 01D860 8001DCB0 46020480 */   add.s      $f18, $f0, $f2
/* 01D864 8001DCB4 3C0143B4 */  lui         $at, 0x43b4
.L8001DCB8:
/* 01D868 8001DCB8 44811000 */  mtc1        $at, $f2
/* 01D86C 8001DCBC 00000000 */  nop
/* 01D870 8001DCC0 4600103E */  c.le.s      $f2, $f0
/* 01D874 8001DCC4 00000000 */  nop
/* 01D878 8001DCC8 45020009 */  bc1fl       .L8001DCF0
/* 01D87C 8001DCCC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01D880 8001DCD0 46020101 */  sub.s       $f4, $f0, $f2
.L8001DCD4:
/* 01D884 8001DCD4 E4840010 */  swc1        $f4, 0x10($a0)
/* 01D888 8001DCD8 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01D88C 8001DCDC 4600103E */  c.le.s      $f2, $f0
/* 01D890 8001DCE0 00000000 */  nop
/* 01D894 8001DCE4 4503FFFB */  bc1tl       .L8001DCD4
/* 01D898 8001DCE8 46020101 */   sub.s      $f4, $f0, $f2
/* 01D89C 8001DCEC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001DCF0:
/* 01D8A0 8001DCF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D8A4 8001DCF4 03E00008 */  jr          $ra
/* 01D8A8 8001DCF8 00000000 */   nop

glabel func_8001DCFC # 12
/* 01D8AC 8001DCFC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D8B0 8001DD00 AFA40020 */  sw          $a0, 0x20($sp)
/* 01D8B4 8001DD04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D8B8 8001DD08 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01D8BC 8001DD0C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01D8C0 8001DD10 2405000C */  addiu       $a1, $zero, 0xc
/* 01D8C4 8001DD14 0C00E03D */  jal         func_800380F4
/* 01D8C8 8001DD18 24060093 */   addiu      $a2, $zero, 0x93
/* 01D8CC 8001DD1C 3C058007 */  lui         $a1, %hi(D_8006B384)
/* 01D8D0 8001DD20 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01D8D4 8001DD24 8CA5B384 */  lw          $a1, %lo(D_8006B384)($a1)
/* 01D8D8 8001DD28 0C002973 */  jal         func_8000A5CC
/* 01D8DC 8001DD2C 00402025 */   move       $a0, $v0
/* 01D8E0 8001DD30 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01D8E4 8001DD34 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01D8E8 8001DD38 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01D8EC 8001DD3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D8F0 8001DD40 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D8F4 8001DD44 03E00008 */  jr          $ra
/* 01D8F8 8001DD48 00000000 */   nop

glabel func_8001DD4C # 13
/* 01D8FC 8001DD4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D900 8001DD50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D904 8001DD54 0C0026CE */  jal         func_80009B38
/* 01D908 8001DD58 AFA40018 */   sw         $a0, 0x18($sp)
/* 01D90C 8001DD5C 8FA40018 */  lw          $a0, 0x18($sp)
/* 01D910 8001DD60 948E0036 */  lhu         $t6, 0x36($a0)
/* 01D914 8001DD64 35CF1000 */  ori         $t7, $t6, 0x1000
/* 01D918 8001DD68 A48F0036 */  sh          $t7, 0x36($a0)
/* 01D91C 8001DD6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D920 8001DD70 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D924 8001DD74 03E00008 */  jr          $ra
/* 01D928 8001DD78 00000000 */   nop

glabel func_8001DD7C # 14
/* 01D92C 8001DD7C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01D930 8001DD80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D934 8001DD84 AFA40030 */  sw          $a0, 0x30($sp)
/* 01D938 8001DD88 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 01D93C 8001DD8C 8C840054 */  lw          $a0, 0x54($a0)
/* 01D940 8001DD90 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 01D944 8001DD94 0C002980 */  jal         func_8000A600
/* 01D948 8001DD98 27A50028 */   addiu      $a1, $sp, 0x28
/* 01D94C 8001DD9C 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 01D950 8001DDA0 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 01D954 8001DDA4 8C820000 */  lw          $v0, 0x0($a0)
/* 01D958 8001DDA8 3C18E700 */  lui         $t8, 0xe700
/* 01D95C 8001DDAC 3C09E200 */  lui         $t1, 0xe200
/* 01D960 8001DDB0 244F0008 */  addiu       $t7, $v0, 0x8
/* 01D964 8001DDB4 AC8F0000 */  sw          $t7, 0x0($a0)
/* 01D968 8001DDB8 AC400004 */  sw          $zero, 0x4($v0)
/* 01D96C 8001DDBC AC580000 */  sw          $t8, 0x0($v0)
/* 01D970 8001DDC0 8C820000 */  lw          $v0, 0x0($a0)
/* 01D974 8001DDC4 3C0A0010 */  lui         $t2, 0x10
/* 01D978 8001DDC8 354A49D8 */  ori         $t2, $t2, 0x49d8
/* 01D97C 8001DDCC 24590008 */  addiu       $t9, $v0, 0x8
/* 01D980 8001DDD0 AC990000 */  sw          $t9, 0x0($a0)
/* 01D984 8001DDD4 3529001C */  ori         $t1, $t1, 0x1c
/* 01D988 8001DDD8 AC490000 */  sw          $t1, 0x0($v0)
/* 01D98C 8001DDDC AC4A0004 */  sw          $t2, 0x4($v0)
/* 01D990 8001DDE0 8C820000 */  lw          $v0, 0x0($a0)
/* 01D994 8001DDE4 3C0CFCFF */  lui         $t4, 0xfcff
/* 01D998 8001DDE8 3C0DF0FC */  lui         $t5, 0xf0fc
/* 01D99C 8001DDEC 244B0008 */  addiu       $t3, $v0, 0x8
/* 01D9A0 8001DDF0 AC8B0000 */  sw          $t3, 0x0($a0)
/* 01D9A4 8001DDF4 35ADF238 */  ori         $t5, $t5, 0xf238
/* 01D9A8 8001DDF8 358CFEAC */  ori         $t4, $t4, 0xfeac
/* 01D9AC 8001DDFC AC4C0000 */  sw          $t4, 0x0($v0)
/* 01D9B0 8001DE00 AC4D0004 */  sw          $t5, 0x4($v0)
/* 01D9B4 8001DE04 8FA60028 */  lw          $a2, 0x28($sp)
/* 01D9B8 8001DE08 0C00309B */  jal         func_8000C26C
/* 01D9BC 8001DE0C 24050005 */   addiu      $a1, $zero, 0x5
/* 01D9C0 8001DE10 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01D9C4 8001DE14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D9C8 8001DE18 8DC20030 */  lw          $v0, 0x30($t6)
/* 01D9CC 8001DE1C 03E00008 */  jr          $ra
/* 01D9D0 8001DE20 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001DE24 # 15
/* 01D9D4 8001DE24 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D9D8 8001DE28 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01D9DC 8001DE2C AFB00018 */  sw          $s0, 0x18($sp)
/* 01D9E0 8001DE30 0C005578 */  jal         func_800155E0
/* 01D9E4 8001DE34 00808025 */   move       $s0, $a0
/* 01D9E8 8001DE38 8E02002C */  lw          $v0, 0x2c($s0)
/* 01D9EC 8001DE3C C604000C */  lwc1        $f4, 0xc($s0)
/* 01D9F0 8001DE40 3C018009 */  lui         $at, %hi(D_80088C40)
/* 01D9F4 8001DE44 C42C8C40 */  lwc1        $f12, %lo(D_80088C40)($at)
/* 01D9F8 8001DE48 E444000C */  swc1        $f4, 0xc($v0)
/* 01D9FC 8001DE4C C6060010 */  lwc1        $f6, 0x10($s0)
/* 01DA00 8001DE50 44801000 */  mtc1        $zero, $f2
/* 01DA04 8001DE54 E4460010 */  swc1        $f6, 0x10($v0)
/* 01DA08 8001DE58 C6080014 */  lwc1        $f8, 0x14($s0)
/* 01DA0C 8001DE5C E4480014 */  swc1        $f8, 0x14($v0)
/* 01DA10 8001DE60 0C00F0F7 */  jal         func_8003C3DC
/* 01DA14 8001DE64 E602000C */   swc1       $f2, 0xc($s0)
/* 01DA18 8001DE68 3C018009 */  lui         $at, %hi(D_80088C44)
/* 01DA1C 8001DE6C C42C8C44 */  lwc1        $f12, %lo(D_80088C44)($at)
/* 01DA20 8001DE70 3C0141A0 */  lui         $at, 0x41a0
/* 01DA24 8001DE74 44815000 */  mtc1        $at, $f10
/* 01DA28 8001DE78 00000000 */  nop
/* 01DA2C 8001DE7C 460A0402 */  mul.s       $f16, $f0, $f10
/* 01DA30 8001DE80 0C00F0F7 */  jal         func_8003C3DC
/* 01DA34 8001DE84 E6100010 */   swc1       $f16, 0x10($s0)
/* 01DA38 8001DE88 3C018009 */  lui         $at, %hi(D_80088C40)
/* 01DA3C 8001DE8C C42C8C40 */  lwc1        $f12, %lo(D_80088C40)($at)
/* 01DA40 8001DE90 3C018009 */  lui         $at, %hi(D_80088C44)
/* 01DA44 8001DE94 C42E8C44 */  lwc1        $f14, %lo(D_80088C44)($at)
/* 01DA48 8001DE98 3C0140A0 */  lui         $at, 0x40a0
/* 01DA4C 8001DE9C 44819000 */  mtc1        $at, $f18
/* 01DA50 8001DEA0 3C01800A */  lui         $at, %hi(D_800A4774)
/* 01DA54 8001DEA4 44801000 */  mtc1        $zero, $f2
/* 01DA58 8001DEA8 46120102 */  mul.s       $f4, $f0, $f18
/* 01DA5C 8001DEAC E6040014 */  swc1        $f4, 0x14($s0)
/* 01DA60 8001DEB0 C4264774 */  lwc1        $f6, %lo(D_800A4774)($at)
/* 01DA64 8001DEB4 3C01800A */  lui         $at, %hi(D_800A4778)
/* 01DA68 8001DEB8 C4284778 */  lwc1        $f8, %lo(D_800A4778)($at)
/* 01DA6C 8001DEBC 46066300 */  add.s       $f12, $f12, $f6
/* 01DA70 8001DEC0 3C0143B4 */  lui         $at, 0x43b4
/* 01DA74 8001DEC4 46087380 */  add.s       $f14, $f14, $f8
/* 01DA78 8001DEC8 4602603C */  c.lt.s      $f12, $f2
/* 01DA7C 8001DECC 00000000 */  nop
/* 01DA80 8001DED0 45020009 */  bc1fl       .L8001DEF8
/* 01DA84 8001DED4 3C0143B4 */   lui        $at, 0x43b4
/* 01DA88 8001DED8 44810000 */  mtc1        $at, $f0
/* 01DA8C 8001DEDC 00000000 */  nop
/* 01DA90 8001DEE0 46006300 */  add.s       $f12, $f12, $f0
.L8001DEE4:
/* 01DA94 8001DEE4 4602603C */  c.lt.s      $f12, $f2
/* 01DA98 8001DEE8 00000000 */  nop
/* 01DA9C 8001DEEC 4503FFFD */  bc1tl       .L8001DEE4
/* 01DAA0 8001DEF0 46006300 */   add.s      $f12, $f12, $f0
/* 01DAA4 8001DEF4 3C0143B4 */  lui         $at, 0x43b4
.L8001DEF8:
/* 01DAA8 8001DEF8 44810000 */  mtc1        $at, $f0
/* 01DAAC 8001DEFC 3C018009 */  lui         $at, %hi(D_80088C40)
/* 01DAB0 8001DF00 E42C8C40 */  swc1        $f12, %lo(D_80088C40)($at)
/* 01DAB4 8001DF04 460C003E */  c.le.s      $f0, $f12
/* 01DAB8 8001DF08 3C018009 */  lui         $at, %hi(D_80088C40)
/* 01DABC 8001DF0C 45020008 */  bc1fl       .L8001DF30
/* 01DAC0 8001DF10 4602703C */   c.lt.s     $f14, $f2
/* 01DAC4 8001DF14 46006301 */  sub.s       $f12, $f12, $f0
.L8001DF18:
/* 01DAC8 8001DF18 460C003E */  c.le.s      $f0, $f12
/* 01DACC 8001DF1C 00000000 */  nop
/* 01DAD0 8001DF20 4503FFFD */  bc1tl       .L8001DF18
/* 01DAD4 8001DF24 46006301 */   sub.s      $f12, $f12, $f0
/* 01DAD8 8001DF28 E42C8C40 */  swc1        $f12, %lo(D_80088C40)($at)
/* 01DADC 8001DF2C 4602703C */  c.lt.s      $f14, $f2
.L8001DF30:
/* 01DAE0 8001DF30 00000000 */  nop
/* 01DAE4 8001DF34 45020007 */  bc1fl       .L8001DF54
/* 01DAE8 8001DF38 460E003E */   c.le.s     $f0, $f14
/* 01DAEC 8001DF3C 46007380 */  add.s       $f14, $f14, $f0
.L8001DF40:
/* 01DAF0 8001DF40 4602703C */  c.lt.s      $f14, $f2
/* 01DAF4 8001DF44 00000000 */  nop
/* 01DAF8 8001DF48 4503FFFD */  bc1tl       .L8001DF40
/* 01DAFC 8001DF4C 46007380 */   add.s      $f14, $f14, $f0
/* 01DB00 8001DF50 460E003E */  c.le.s      $f0, $f14
.L8001DF54:
/* 01DB04 8001DF54 3C018009 */  lui         $at, %hi(D_80088C44)
/* 01DB08 8001DF58 E42E8C44 */  swc1        $f14, %lo(D_80088C44)($at)
/* 01DB0C 8001DF5C 3C018009 */  lui         $at, %hi(D_80088C44)
/* 01DB10 8001DF60 45020008 */  bc1fl       .L8001DF84
/* 01DB14 8001DF64 8FBF001C */   lw         $ra, 0x1c($sp)
/* 01DB18 8001DF68 46007381 */  sub.s       $f14, $f14, $f0
.L8001DF6C:
/* 01DB1C 8001DF6C 460E003E */  c.le.s      $f0, $f14
/* 01DB20 8001DF70 00000000 */  nop
/* 01DB24 8001DF74 4503FFFD */  bc1tl       .L8001DF6C
/* 01DB28 8001DF78 46007381 */   sub.s      $f14, $f14, $f0
/* 01DB2C 8001DF7C E42E8C44 */  swc1        $f14, %lo(D_80088C44)($at)
/* 01DB30 8001DF80 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001DF84:
/* 01DB34 8001DF84 8FB00018 */  lw          $s0, 0x18($sp)
/* 01DB38 8001DF88 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01DB3C 8001DF8C 03E00008 */  jr          $ra
/* 01DB40 8001DF90 00000000 */   nop

glabel func_8001DF94 # 16
/* 01DB44 8001DF94 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DB48 8001DF98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DB4C 8001DF9C 0C005578 */  jal         func_800155E0
/* 01DB50 8001DFA0 AFA40018 */   sw         $a0, 0x18($sp)
/* 01DB54 8001DFA4 8FA40018 */  lw          $a0, 0x18($sp)
/* 01DB58 8001DFA8 8C82002C */  lw          $v0, 0x2c($a0)
/* 01DB5C 8001DFAC C484000C */  lwc1        $f4, 0xc($a0)
/* 01DB60 8001DFB0 E444000C */  swc1        $f4, 0xc($v0)
/* 01DB64 8001DFB4 C4860010 */  lwc1        $f6, 0x10($a0)
/* 01DB68 8001DFB8 E4460010 */  swc1        $f6, 0x10($v0)
/* 01DB6C 8001DFBC C4880014 */  lwc1        $f8, 0x14($a0)
/* 01DB70 8001DFC0 E4480014 */  swc1        $f8, 0x14($v0)
/* 01DB74 8001DFC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DB78 8001DFC8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DB7C 8001DFCC 03E00008 */  jr          $ra
/* 01DB80 8001DFD0 00000000 */   nop

glabel func_8001DFD4 # 17
/* 01DB84 8001DFD4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DB88 8001DFD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DB8C 8001DFDC 3C04800B */  lui         $a0, %hi(D_800B6BB8)
/* 01DB90 8001DFE0 24846BB8 */  addiu       $a0, $a0, %lo(D_800B6BB8)
/* 01DB94 8001DFE4 0C014388 */  jal         bzero
/* 01DB98 8001DFE8 24050090 */   addiu      $a1, $zero, 0x90
/* 01DB9C 8001DFEC 3C04800B */  lui         $a0, %hi(D_800B6B90)
/* 01DBA0 8001DFF0 24846B90 */  addiu       $a0, $a0, %lo(D_800B6B90)
/* 01DBA4 8001DFF4 0C00DEFB */  jal         func_80037BEC
/* 01DBA8 8001DFF8 24050024 */   addiu      $a1, $zero, 0x24
/* 01DBAC 8001DFFC 3C038008 */  lui         $v1, %hi(D_800792A0)
/* 01DBB0 8001E000 246392A0 */  addiu       $v1, $v1, %lo(D_800792A0)
/* 01DBB4 8001E004 00001025 */  move        $v0, $zero
/* 01DBB8 8001E008 24040024 */  addiu       $a0, $zero, 0x24
.L8001E00C:
/* 01DBBC 8001E00C 24420004 */  addiu       $v0, $v0, 0x4
/* 01DBC0 8001E010 1444FFFE */  bne         $v0, $a0, .L8001E00C
/* 01DBC4 8001E014 24630090 */   addiu      $v1, $v1, 0x90
/* 01DBC8 8001E018 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DBCC 8001E01C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DBD0 8001E020 03E00008 */  jr          $ra
/* 01DBD4 8001E024 00000000 */   nop

glabel func_8001E028 # 18
/* 01DBD8 8001E028 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DBDC 8001E02C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DBE0 8001E030 3C04800B */  lui         $a0, %hi(D_800B6B90)
/* 01DBE4 8001E034 0C00DF1D */  jal         func_80037C74
/* 01DBE8 8001E038 24846B90 */   addiu      $a0, $a0, %lo(D_800B6B90)
/* 01DBEC 8001E03C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DBF0 8001E040 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DBF4 8001E044 03E00008 */  jr          $ra
/* 01DBF8 8001E048 00000000 */   nop

glabel func_8001E04C # 19
/* 01DBFC 8001E04C 00047080 */  sll         $t6, $a0, 2
/* 01DC00 8001E050 01C47021 */  addu        $t6, $t6, $a0
/* 01DC04 8001E054 000E7080 */  sll         $t6, $t6, 2
/* 01DC08 8001E058 01C47021 */  addu        $t6, $t6, $a0
/* 01DC0C 8001E05C 000E7080 */  sll         $t6, $t6, 2
/* 01DC10 8001E060 3C028009 */  lui         $v0, %hi(D_80088018)
/* 01DC14 8001E064 004E1021 */  addu        $v0, $v0, $t6
/* 01DC18 8001E068 8C428018 */  lw          $v0, %lo(D_80088018)($v0)
/* 01DC1C 8001E06C 3C18800B */  lui         $t8, %hi(D_800B6BB8)
/* 01DC20 8001E070 27186BB8 */  addiu       $t8, $t8, %lo(D_800B6BB8)
/* 01DC24 8001E074 00027880 */  sll         $t7, $v0, 2
/* 01DC28 8001E078 01F83821 */  addu        $a3, $t7, $t8
/* 01DC2C 8001E07C 8CF90000 */  lw          $t9, 0x0($a3)
/* 01DC30 8001E080 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01DC34 8001E084 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DC38 8001E088 17200034 */  bne         $t9, $zero, .L8001E15C
/* 01DC3C 8001E08C 000240C0 */   sll        $t0, $v0, 3
/* 01DC40 8001E090 01024021 */  addu        $t0, $t0, $v0
/* 01DC44 8001E094 3C098008 */  lui         $t1, %hi(D_800792A0)
/* 01DC48 8001E098 252992A0 */  addiu       $t1, $t1, %lo(D_800792A0)
/* 01DC4C 8001E09C 00084080 */  sll         $t0, $t0, 2
/* 01DC50 8001E0A0 01091821 */  addu        $v1, $t0, $t1
/* 01DC54 8001E0A4 8C6C0004 */  lw          $t4, 0x4($v1)
/* 01DC58 8001E0A8 8C6A000C */  lw          $t2, 0xc($v1)
/* 01DC5C 8001E0AC 8C6B0008 */  lw          $t3, 0x8($v1)
/* 01DC60 8001E0B0 3C04800F */  lui         $a0, 0x800f
/* 01DC64 8001E0B4 1580000F */  bne         $t4, $zero, .L8001E0F4
/* 01DC68 8001E0B8 014B2823 */   subu       $a1, $t2, $t3
/* 01DC6C 8001E0BC 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DC70 8001E0C0 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01DC74 8001E0C4 24060100 */  addiu       $a2, $zero, 0x100
/* 01DC78 8001E0C8 AFA3001C */  sw          $v1, 0x1c($sp)
/* 01DC7C 8001E0CC AFA50028 */  sw          $a1, 0x28($sp)
/* 01DC80 8001E0D0 0C00E03D */  jal         func_800380F4
/* 01DC84 8001E0D4 AFA70020 */   sw         $a3, 0x20($sp)
/* 01DC88 8001E0D8 8FA70020 */  lw          $a3, 0x20($sp)
/* 01DC8C 8001E0DC 3C01800B */  lui         $at, %hi(D_800B6C48)
/* 01DC90 8001E0E0 AC206C48 */  sw          $zero, %lo(D_800B6C48)($at)
/* 01DC94 8001E0E4 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01DC98 8001E0E8 AFA20024 */  sw          $v0, 0x24($sp)
/* 01DC9C 8001E0EC 10000015 */  b           .L8001E144
/* 01DCA0 8001E0F0 ACE20000 */   sw         $v0, 0x0($a3)
.L8001E0F4:
/* 01DCA4 8001E0F4 24842960 */  addiu       $a0, $a0, 0x2960
/* 01DCA8 8001E0F8 2406010D */  addiu       $a2, $zero, 0x10d
/* 01DCAC 8001E0FC AFA3001C */  sw          $v1, 0x1c($sp)
/* 01DCB0 8001E100 AFA50028 */  sw          $a1, 0x28($sp)
/* 01DCB4 8001E104 0C00E075 */  jal         func_800381D4
/* 01DCB8 8001E108 AFA70020 */   sw         $a3, 0x20($sp)
/* 01DCBC 8001E10C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01DCC0 8001E110 3C01800B */  lui         $at, %hi(D_800B6C48)
/* 01DCC4 8001E114 AC226C48 */  sw          $v0, %lo(D_800B6C48)($at)
/* 01DCC8 8001E118 8C6E0010 */  lw          $t6, 0x10($v1)
/* 01DCCC 8001E11C 8C6D0014 */  lw          $t5, 0x14($v1)
/* 01DCD0 8001E120 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DCD4 8001E124 AFA20024 */  sw          $v0, 0x24($sp)
/* 01DCD8 8001E128 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01DCDC 8001E12C 24060113 */  addiu       $a2, $zero, 0x113
/* 01DCE0 8001E130 0C00E03D */  jal         func_800380F4
/* 01DCE4 8001E134 01AE2823 */   subu       $a1, $t5, $t6
/* 01DCE8 8001E138 8FA70020 */  lw          $a3, 0x20($sp)
/* 01DCEC 8001E13C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01DCF0 8001E140 ACE20000 */  sw          $v0, 0x0($a3)
.L8001E144:
/* 01DCF4 8001E144 3C04800B */  lui         $a0, %hi(D_800B6B90)
/* 01DCF8 8001E148 24846B90 */  addiu       $a0, $a0, %lo(D_800B6B90)
/* 01DCFC 8001E14C 8C650008 */  lw          $a1, 0x8($v1)
/* 01DD00 8001E150 8FA60024 */  lw          $a2, 0x24($sp)
/* 01DD04 8001E154 0C00DF85 */  jal         func_80037E14
/* 01DD08 8001E158 8FA70028 */   lw         $a3, 0x28($sp)
.L8001E15C:
/* 01DD0C 8001E15C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DD10 8001E160 27BD0030 */  addiu       $sp, $sp, 0x30
/* 01DD14 8001E164 03E00008 */  jr          $ra
/* 01DD18 8001E168 00000000 */   nop

glabel func_8001E16C # 20
/* 01DD1C 8001E16C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01DD20 8001E170 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01DD24 8001E174 3C04800B */  lui         $a0, %hi(D_800B6B90)
/* 01DD28 8001E178 0C00DFA8 */  jal         func_80037EA0
/* 01DD2C 8001E17C 24846B90 */   addiu      $a0, $a0, %lo(D_800B6B90)
/* 01DD30 8001E180 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01DD34 8001E184 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01DD38 8001E188 03E00008 */  jr          $ra
/* 01DD3C 8001E18C 00000000 */   nop

glabel func_8001E190 # 21
/* 01DD40 8001E190 00047080 */  sll         $t6, $a0, 2
/* 01DD44 8001E194 01C47021 */  addu        $t6, $t6, $a0
/* 01DD48 8001E198 000E7080 */  sll         $t6, $t6, 2
/* 01DD4C 8001E19C 01C47021 */  addu        $t6, $t6, $a0
/* 01DD50 8001E1A0 000E7080 */  sll         $t6, $t6, 2
/* 01DD54 8001E1A4 3C028009 */  lui         $v0, %hi(D_80088018)
/* 01DD58 8001E1A8 004E1021 */  addu        $v0, $v0, $t6
/* 01DD5C 8001E1AC 8C428018 */  lw          $v0, %lo(D_80088018)($v0)
/* 01DD60 8001E1B0 3C03800B */  lui         $v1, %hi(D_800B6BB8)
/* 01DD64 8001E1B4 00027880 */  sll         $t7, $v0, 2
/* 01DD68 8001E1B8 006F1821 */  addu        $v1, $v1, $t7
/* 01DD6C 8001E1BC 03E00008 */  jr          $ra
/* 01DD70 8001E1C0 8C626BB8 */   lw         $v0, %lo(D_800B6BB8)($v1)

glabel func_8001E1C4 # 22
/* 01DD74 8001E1C4 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01DD78 8001E1C8 AFB00020 */  sw          $s0, 0x20($sp)
/* 01DD7C 8001E1CC 00808025 */  move        $s0, $a0
/* 01DD80 8001E1D0 AFA50064 */  sw          $a1, 0x64($sp)
/* 01DD84 8001E1D4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01DD88 8001E1D8 3C05800A */  lui         $a1, %hi(D_800A465C)
/* 01DD8C 8001E1DC 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DD90 8001E1E0 AFB20028 */  sw          $s2, 0x28($sp)
/* 01DD94 8001E1E4 AFB10024 */  sw          $s1, 0x24($sp)
/* 01DD98 8001E1E8 AFA60068 */  sw          $a2, 0x68($sp)
/* 01DD9C 8001E1EC AFA7006C */  sw          $a3, 0x6c($sp)
/* 01DDA0 8001E1F0 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01DDA4 8001E1F4 0C00E1A4 */  jal         func_80038690
/* 01DDA8 8001E1F8 24A5465C */   addiu      $a1, $a1, %lo(D_800A465C)
/* 01DDAC 8001E1FC 0C007813 */  jal         func_8001E04C
/* 01DDB0 8001E200 02002025 */   move       $a0, $s0
/* 01DDB4 8001E204 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DDB8 8001E208 3C05800A */  lui         $a1, %hi(D_800A46D0)
/* 01DDBC 8001E20C 24A546D0 */  addiu       $a1, $a1, %lo(D_800A46D0)
/* 01DDC0 8001E210 0C00E1A4 */  jal         func_80038690
/* 01DDC4 8001E214 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01DDC8 8001E218 00107080 */  sll         $t6, $s0, 2
/* 01DDCC 8001E21C 01D07021 */  addu        $t6, $t6, $s0
/* 01DDD0 8001E220 000E7080 */  sll         $t6, $t6, 2
/* 01DDD4 8001E224 01D07021 */  addu        $t6, $t6, $s0
/* 01DDD8 8001E228 3C0F8009 */  lui         $t7, %hi(D_8008801C)
/* 01DDDC 8001E22C 25EF801C */  addiu       $t7, $t7, %lo(D_8008801C)
/* 01DDE0 8001E230 000E7080 */  sll         $t6, $t6, 2
/* 01DDE4 8001E234 01CF1021 */  addu        $v0, $t6, $t7
/* 01DDE8 8001E238 8C44FFC4 */  lw          $a0, -0x3c($v0)
/* 01DDEC 8001E23C AFA20034 */  sw          $v0, 0x34($sp)
/* 01DDF0 8001E240 0C0020F0 */  jal         func_800083C0
/* 01DDF4 8001E244 00002825 */   move       $a1, $zero
/* 01DDF8 8001E248 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DDFC 8001E24C 3C05800A */  lui         $a1, %hi(D_800A46E8)
/* 01DE00 8001E250 00408025 */  move        $s0, $v0
/* 01DE04 8001E254 8C520054 */  lw          $s2, 0x54($v0)
/* 01DE08 8001E258 24A546E8 */  addiu       $a1, $a1, %lo(D_800A46E8)
/* 01DE0C 8001E25C 0C00E1A4 */  jal         func_80038690
/* 01DE10 8001E260 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01DE14 8001E264 8FB10034 */  lw          $s1, 0x34($sp)
/* 01DE18 8001E268 8E38FFF8 */  lw          $t8, -0x8($s1)
/* 01DE1C 8001E26C 2631FFAC */  addiu       $s1, $s1, -0x54
/* 01DE20 8001E270 AE580194 */  sw          $t8, 0x194($s2)
/* 01DE24 8001E274 8FB90080 */  lw          $t9, 0x80($sp)
/* 01DE28 8001E278 0C00208F */  jal         func_8000823C
/* 01DE2C 8001E27C AE590238 */   sw         $t9, 0x238($s2)
/* 01DE30 8001E280 AC500050 */  sw          $s0, 0x50($v0)
/* 01DE34 8001E284 AFA20050 */  sw          $v0, 0x50($sp)
/* 01DE38 8001E288 0C002039 */  jal         func_800080E4
/* 01DE3C 8001E28C 02002025 */   move       $a0, $s0
/* 01DE40 8001E290 8FA30050 */  lw          $v1, 0x50($sp)
/* 01DE44 8001E294 AC430028 */  sw          $v1, 0x28($v0)
/* 01DE48 8001E298 AE430000 */  sw          $v1, 0x0($s2)
/* 01DE4C 8001E29C 8E2A003C */  lw          $t2, 0x3c($s1)
/* 01DE50 8001E2A0 19400012 */  blez        $t2, .L8001E2EC
/* 01DE54 8001E2A4 00000000 */   nop
/* 01DE58 8001E2A8 0C002039 */  jal         func_800080E4
/* 01DE5C 8001E2AC 02002025 */   move       $a0, $s0
/* 01DE60 8001E2B0 AFA20048 */  sw          $v0, 0x48($sp)
/* 01DE64 8001E2B4 8E24003C */  lw          $a0, 0x3c($s1)
/* 01DE68 8001E2B8 C6240024 */  lwc1        $f4, 0x24($s1)
/* 01DE6C 8001E2BC 3C01800A */  lui         $at, %hi(D_800A477C)
/* 01DE70 8001E2C0 44843000 */  mtc1        $a0, $f6
/* 01DE74 8001E2C4 C430477C */  lwc1        $f16, %lo(D_800A477C)($at)
/* 01DE78 8001E2C8 46803220 */  cvt.s.w     $f8, $f6
/* 01DE7C 8001E2CC 46082283 */  div.s       $f10, $f4, $f8
/* 01DE80 8001E2D0 46105482 */  mul.s       $f18, $f10, $f16
/* 01DE84 8001E2D4 44059000 */  mfc1        $a1, $f18
/* 01DE88 8001E2D8 0C00DA75 */  jal         func_800369D4
/* 01DE8C 8001E2DC 00000000 */   nop
/* 01DE90 8001E2E0 AC500050 */  sw          $s0, 0x50($v0)
/* 01DE94 8001E2E4 8FAB0048 */  lw          $t3, 0x48($sp)
/* 01DE98 8001E2E8 AD620028 */  sw          $v0, 0x28($t3)
.L8001E2EC:
/* 01DE9C 8001E2EC 0C0020CE */  jal         func_80008338
/* 01DEA0 8001E2F0 02002025 */   move       $a0, $s0
/* 01DEA4 8001E2F4 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DEA8 8001E2F8 3C05800A */  lui         $a1, %hi(D_800A46F8)
/* 01DEAC 8001E2FC 24A546F8 */  addiu       $a1, $a1, %lo(D_800A46F8)
/* 01DEB0 8001E300 0C00E1A4 */  jal         func_80038690
/* 01DEB4 8001E304 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01DEB8 8001E308 02002025 */  move        $a0, $s0
/* 01DEBC 8001E30C 0C005A87 */  jal         func_80016A1C
/* 01DEC0 8001E310 02002825 */   move       $a1, $s0
/* 01DEC4 8001E314 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01DEC8 8001E318 3C05800A */  lui         $a1, %hi(D_800A470C)
/* 01DECC 8001E31C 24A5470C */  addiu       $a1, $a1, %lo(D_800A470C)
/* 01DED0 8001E320 0C00E1A4 */  jal         func_80038690
/* 01DED4 8001E324 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01DED8 8001E328 C7A60064 */  lwc1        $f6, 0x64($sp)
/* 01DEDC 8001E32C C7A00078 */  lwc1        $f0, 0x78($sp)
/* 01DEE0 8001E330 02002025 */  move        $a0, $s0
/* 01DEE4 8001E334 E6060018 */  swc1        $f6, 0x18($s0)
/* 01DEE8 8001E338 C7A40068 */  lwc1        $f4, 0x68($sp)
/* 01DEEC 8001E33C 00003025 */  move        $a2, $zero
/* 01DEF0 8001E340 E604001C */  swc1        $f4, 0x1c($s0)
/* 01DEF4 8001E344 C7A8006C */  lwc1        $f8, 0x6c($sp)
/* 01DEF8 8001E348 E6000008 */  swc1        $f0, 0x8($s0)
/* 01DEFC 8001E34C E6000004 */  swc1        $f0, 0x4($s0)
/* 01DF00 8001E350 E6000000 */  swc1        $f0, 0x0($s0)
/* 01DF04 8001E354 E6080020 */  swc1        $f8, 0x20($s0)
/* 01DF08 8001E358 0C0057E5 */  jal         func_80015F94
/* 01DF0C 8001E35C 8FA50070 */   lw         $a1, 0x70($sp)
/* 01DF10 8001E360 02002025 */  move        $a0, $s0
/* 01DF14 8001E364 8FA50074 */  lw          $a1, 0x74($sp)
/* 01DF18 8001E368 0C0057E5 */  jal         func_80015F94
/* 01DF1C 8001E36C 24060001 */   addiu      $a2, $zero, 0x1
/* 01DF20 8001E370 C62A0024 */  lwc1        $f10, 0x24($s1)
/* 01DF24 8001E374 3C0C8009 */  lui         $t4, %hi(D_80088BEC)
/* 01DF28 8001E378 C7A00078 */  lwc1        $f0, 0x78($sp)
/* 01DF2C 8001E37C 258C8BEC */  addiu       $t4, $t4, %lo(D_80088BEC)
/* 01DF30 8001E380 162C0012 */  bne         $s1, $t4, .L8001E3CC
/* 01DF34 8001E384 E60A0024 */   swc1       $f10, 0x24($s0)
/* 01DF38 8001E388 02002025 */  move        $a0, $s0
/* 01DF3C 8001E38C 0C0058FF */  jal         func_800163FC
/* 01DF40 8001E390 2405002F */   addiu      $a1, $zero, 0x2f
/* 01DF44 8001E394 10400005 */  beq         $v0, $zero, .L8001E3AC
/* 01DF48 8001E398 02002025 */   move       $a0, $s0
/* 01DF4C 8001E39C 3C0142A0 */  lui         $at, 0x42a0
/* 01DF50 8001E3A0 44818000 */  mtc1        $at, $f16
/* 01DF54 8001E3A4 00000000 */  nop
/* 01DF58 8001E3A8 E4500024 */  swc1        $f16, 0x24($v0)
.L8001E3AC:
/* 01DF5C 8001E3AC 0C0058FF */  jal         func_800163FC
/* 01DF60 8001E3B0 2405002D */   addiu      $a1, $zero, 0x2d
/* 01DF64 8001E3B4 10400005 */  beq         $v0, $zero, .L8001E3CC
/* 01DF68 8001E3B8 C7A00078 */   lwc1       $f0, 0x78($sp)
/* 01DF6C 8001E3BC 3C0142A0 */  lui         $at, 0x42a0
/* 01DF70 8001E3C0 44819000 */  mtc1        $at, $f18
/* 01DF74 8001E3C4 00000000 */  nop
/* 01DF78 8001E3C8 E4520024 */  swc1        $f18, 0x24($v0)
.L8001E3CC:
/* 01DF7C 8001E3CC C6260028 */  lwc1        $f6, 0x28($s1)
/* 01DF80 8001E3D0 02002025 */  move        $a0, $s0
/* 01DF84 8001E3D4 3C053F80 */  lui         $a1, 0x3f80
/* 01DF88 8001E3D8 46003102 */  mul.s       $f4, $f6, $f0
/* 01DF8C 8001E3DC E64401FC */  swc1        $f4, 0x1fc($s2)
/* 01DF90 8001E3E0 C628002C */  lwc1        $f8, 0x2c($s1)
/* 01DF94 8001E3E4 46004282 */  mul.s       $f10, $f8, $f0
/* 01DF98 8001E3E8 E64A0200 */  swc1        $f10, 0x200($s2)
/* 01DF9C 8001E3EC C6300030 */  lwc1        $f16, 0x30($s1)
/* 01DFA0 8001E3F0 46008482 */  mul.s       $f18, $f16, $f0
/* 01DFA4 8001E3F4 E6520204 */  swc1        $f18, 0x204($s2)
/* 01DFA8 8001E3F8 C6260034 */  lwc1        $f6, 0x34($s1)
/* 01DFAC 8001E3FC 46003102 */  mul.s       $f4, $f6, $f0
/* 01DFB0 8001E400 E6440208 */  swc1        $f4, 0x208($s2)
/* 01DFB4 8001E404 C6280038 */  lwc1        $f8, 0x38($s1)
/* 01DFB8 8001E408 46004282 */  mul.s       $f10, $f8, $f0
/* 01DFBC 8001E40C 0C002148 */  jal         func_80008520
/* 01DFC0 8001E410 E64A020C */   swc1       $f10, 0x20c($s2)
/* 01DFC4 8001E414 0C0023EB */  jal         func_80008FAC
/* 01DFC8 8001E418 02002025 */   move       $a0, $s0
/* 01DFCC 8001E41C 8E250020 */  lw          $a1, 0x20($s1)
/* 01DFD0 8001E420 10A00003 */  beq         $a1, $zero, .L8001E430
/* 01DFD4 8001E424 00000000 */   nop
/* 01DFD8 8001E428 0C005A21 */  jal         func_80016884
/* 01DFDC 8001E42C 02002025 */   move       $a0, $s0
.L8001E430:
/* 01DFE0 8001E430 0C00219D */  jal         func_80008674
/* 01DFE4 8001E434 02002025 */   move       $a0, $s0
/* 01DFE8 8001E438 24040064 */  addiu       $a0, $zero, 0x64
/* 01DFEC 8001E43C 0C001F72 */  jal         func_80007DC8
/* 01DFF0 8001E440 24050004 */   addiu      $a1, $zero, 0x4
/* 01DFF4 8001E444 02002025 */  move        $a0, $s0
/* 01DFF8 8001E448 8E450204 */  lw          $a1, 0x204($s2)
/* 01DFFC 8001E44C 8E4601FC */  lw          $a2, 0x1fc($s2)
/* 01E000 8001E450 0C009CA3 */  jal         func_8002728C
/* 01E004 8001E454 8E470200 */   lw         $a3, 0x200($s2)
/* 01E008 8001E458 8FA4007C */  lw          $a0, 0x7c($sp)
/* 01E00C 8001E45C 8C4D0038 */  lw          $t5, 0x38($v0)
/* 01E010 8001E460 10800005 */  beq         $a0, $zero, .L8001E478
/* 01E014 8001E464 AE4D0234 */   sw         $t5, 0x234($s2)
/* 01E018 8001E468 0C04546C */  jal         func_801151B0
/* 01E01C 8001E46C 00000000 */   nop
/* 01E020 8001E470 AE4201B8 */  sw          $v0, 0x1b8($s2)
/* 01E024 8001E474 AC400000 */  sw          $zero, 0x0($v0)
.L8001E478:
/* 01E028 8001E478 0C00785B */  jal         func_8001E16C
/* 01E02C 8001E47C 00000000 */   nop
/* 01E030 8001E480 3C12800B */  lui         $s2, %hi(D_800B6C48)
/* 01E034 8001E484 26526C48 */  addiu       $s2, $s2, %lo(D_800B6C48)
/* 01E038 8001E488 8E450000 */  lw          $a1, 0x0($s2)
/* 01E03C 8001E48C 10A0002A */  beq         $a1, $zero, .L8001E538
/* 01E040 8001E490 00000000 */   nop
/* 01E044 8001E494 8E280050 */  lw          $t0, 0x50($s1)
/* 01E048 8001E498 3C0F8008 */  lui         $t7, %hi(D_800792A0)
/* 01E04C 8001E49C 25EF92A0 */  addiu       $t7, $t7, %lo(D_800792A0)
/* 01E050 8001E4A0 000870C0 */  sll         $t6, $t0, 3
/* 01E054 8001E4A4 01C87021 */  addu        $t6, $t6, $t0
/* 01E058 8001E4A8 000E7080 */  sll         $t6, $t6, 2
/* 01E05C 8001E4AC 01CF4821 */  addu        $t1, $t6, $t7
/* 01E060 8001E4B0 8D380004 */  lw          $t8, 0x4($t1)
/* 01E064 8001E4B4 24010001 */  addiu       $at, $zero, 0x1
/* 01E068 8001E4B8 3C04800B */  lui         $a0, %hi(D_800B6BB8)
/* 01E06C 8001E4BC 1701001E */  bne         $t8, $at, .L8001E538
/* 01E070 8001E4C0 0008C880 */   sll        $t9, $t0, 2
/* 01E074 8001E4C4 8D230010 */  lw          $v1, 0x10($t1)
/* 01E078 8001E4C8 8D2C001C */  lw          $t4, 0x1c($t1)
/* 01E07C 8001E4CC 8D2E0020 */  lw          $t6, 0x20($t1)
/* 01E080 8001E4D0 8D2A0018 */  lw          $t2, 0x18($t1)
/* 01E084 8001E4D4 8D2B0014 */  lw          $t3, 0x14($t1)
/* 01E088 8001E4D8 00992021 */  addu        $a0, $a0, $t9
/* 01E08C 8001E4DC 01836823 */  subu        $t5, $t4, $v1
/* 01E090 8001E4E0 01C37823 */  subu        $t7, $t6, $v1
/* 01E094 8001E4E4 AFAF0014 */  sw          $t7, 0x14($sp)
/* 01E098 8001E4E8 AFAD0010 */  sw          $t5, 0x10($sp)
/* 01E09C 8001E4EC 8C846BB8 */  lw          $a0, %lo(D_800B6BB8)($a0)
/* 01E0A0 8001E4F0 01433023 */  subu        $a2, $t2, $v1
/* 01E0A4 8001E4F4 0C00B404 */  jal         func_8002D010
/* 01E0A8 8001E4F8 01633823 */   subu       $a3, $t3, $v1
/* 01E0AC 8001E4FC 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01E0B0 8001E500 3C05800A */  lui         $a1, %hi(D_800A4744)
/* 01E0B4 8001E504 24A54744 */  addiu       $a1, $a1, %lo(D_800A4744)
/* 01E0B8 8001E508 0C00E1A4 */  jal         func_80038690
/* 01E0BC 8001E50C 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01E0C0 8001E510 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01E0C4 8001E514 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01E0C8 8001E518 0C00E152 */  jal         func_80038548
/* 01E0CC 8001E51C 8E450000 */   lw         $a1, 0x0($s2)
/* 01E0D0 8001E520 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01E0D4 8001E524 3C05800A */  lui         $a1, %hi(D_800A4754)
/* 01E0D8 8001E528 AE400000 */  sw          $zero, 0x0($s2)
/* 01E0DC 8001E52C 24A54754 */  addiu       $a1, $a1, %lo(D_800A4754)
/* 01E0E0 8001E530 0C00E1A4 */  jal         func_80038690
/* 01E0E4 8001E534 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
.L8001E538:
/* 01E0E8 8001E538 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01E0EC 8001E53C 3C05800A */  lui         $a1, %hi(D_800A4764)
/* 01E0F0 8001E540 24A54764 */  addiu       $a1, $a1, %lo(D_800A4764)
/* 01E0F4 8001E544 0C00E1A4 */  jal         func_80038690
/* 01E0F8 8001E548 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 01E0FC 8001E54C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01E100 8001E550 02001025 */  move        $v0, $s0
/* 01E104 8001E554 8FB00020 */  lw          $s0, 0x20($sp)
/* 01E108 8001E558 8FB10024 */  lw          $s1, 0x24($sp)
/* 01E10C 8001E55C 8FB20028 */  lw          $s2, 0x28($sp)
/* 01E110 8001E560 03E00008 */  jr          $ra
/* 01E114 8001E564 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8001E568 # 23
/* 01E118 8001E568 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01E11C 8001E56C AFB00030 */  sw          $s0, 0x30($sp)
/* 01E120 8001E570 00808025 */  move        $s0, $a0
/* 01E124 8001E574 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01E128 8001E578 AFA50044 */  sw          $a1, 0x44($sp)
/* 01E12C 8001E57C C604000C */  lwc1        $f4, 0xc($s0)
/* 01E130 8001E580 00A02025 */  move        $a0, $a1
/* 01E134 8001E584 8E050044 */  lw          $a1, 0x44($s0)
/* 01E138 8001E588 8E07004C */  lw          $a3, 0x4c($s0)
/* 01E13C 8001E58C 8E060048 */  lw          $a2, 0x48($s0)
/* 01E140 8001E590 E7A40010 */  swc1        $f4, 0x10($sp)
/* 01E144 8001E594 C6060010 */  lwc1        $f6, 0x10($s0)
/* 01E148 8001E598 E7A60014 */  swc1        $f6, 0x14($sp)
/* 01E14C 8001E59C C6080000 */  lwc1        $f8, 0x0($s0)
/* 01E150 8001E5A0 AFA0001C */  sw          $zero, 0x1c($sp)
/* 01E154 8001E5A4 E7A80018 */  swc1        $f8, 0x18($sp)
/* 01E158 8001E5A8 8E0E0054 */  lw          $t6, 0x54($s0)
/* 01E15C 8001E5AC 8DCF0238 */  lw          $t7, 0x238($t6)
/* 01E160 8001E5B0 0C007871 */  jal         func_8001E1C4
/* 01E164 8001E5B4 AFAF0020 */   sw         $t7, 0x20($sp)
/* 01E168 8001E5B8 AFA2003C */  sw          $v0, 0x3c($sp)
/* 01E16C 8001E5BC 8E180054 */  lw          $t8, 0x54($s0)
/* 01E170 8001E5C0 8C480054 */  lw          $t0, 0x54($v0)
/* 01E174 8001E5C4 02002025 */  move        $a0, $s0
/* 01E178 8001E5C8 8F1901B8 */  lw          $t9, 0x1b8($t8)
/* 01E17C 8001E5CC AD1901B8 */  sw          $t9, 0x1b8($t0)
/* 01E180 8001E5D0 8E090054 */  lw          $t1, 0x54($s0)
/* 01E184 8001E5D4 0C0021EF */  jal         func_800087BC
/* 01E188 8001E5D8 AD2001B8 */   sw         $zero, 0x1b8($t1)
/* 01E18C 8001E5DC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01E190 8001E5E0 8FA2003C */  lw          $v0, 0x3c($sp)
/* 01E194 8001E5E4 8FB00030 */  lw          $s0, 0x30($sp)
/* 01E198 8001E5E8 03E00008 */  jr          $ra
/* 01E19C 8001E5EC 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001E5F0 # 24
/* 01E1A0 8001E5F0 00047080 */  sll         $t6, $a0, 2
/* 01E1A4 8001E5F4 01C47021 */  addu        $t6, $t6, $a0
/* 01E1A8 8001E5F8 000E7080 */  sll         $t6, $t6, 2
/* 01E1AC 8001E5FC 01C47021 */  addu        $t6, $t6, $a0
/* 01E1B0 8001E600 000E7080 */  sll         $t6, $t6, 2
/* 01E1B4 8001E604 3C028008 */  lui         $v0, %hi(D_80087FE4)
/* 01E1B8 8001E608 004E1021 */  addu        $v0, $v0, $t6
/* 01E1BC 8001E60C 03E00008 */  jr          $ra
/* 01E1C0 8001E610 8C427FE4 */   lw         $v0, %lo(D_80087FE4)($v0)

glabel func_8001E614 # 25
/* 01E1C4 8001E614 00047080 */  sll         $t6, $a0, 2
/* 01E1C8 8001E618 01C47021 */  addu        $t6, $t6, $a0
/* 01E1CC 8001E61C 000E7080 */  sll         $t6, $t6, 2
/* 01E1D0 8001E620 01C47021 */  addu        $t6, $t6, $a0
/* 01E1D4 8001E624 000E7080 */  sll         $t6, $t6, 2
/* 01E1D8 8001E628 3C028009 */  lui         $v0, %hi(D_8008800C)
/* 01E1DC 8001E62C 004E1021 */  addu        $v0, $v0, $t6
/* 01E1E0 8001E630 03E00008 */  jr          $ra
/* 01E1E4 8001E634 8C42800C */   lw         $v0, %lo(D_8008800C)($v0)

glabel func_8001E638 # 26
/* 01E1E8 8001E638 00047080 */  sll         $t6, $a0, 2
/* 01E1EC 8001E63C 01C47021 */  addu        $t6, $t6, $a0
/* 01E1F0 8001E640 000E7080 */  sll         $t6, $t6, 2
/* 01E1F4 8001E644 01C47021 */  addu        $t6, $t6, $a0
/* 01E1F8 8001E648 000E7080 */  sll         $t6, $t6, 2
/* 01E1FC 8001E64C 3C028009 */  lui         $v0, %hi(D_80088010)
/* 01E200 8001E650 004E1021 */  addu        $v0, $v0, $t6
/* 01E204 8001E654 03E00008 */  jr          $ra
/* 01E208 8001E658 8C428010 */   lw         $v0, %lo(D_80088010)($v0)

glabel func_8001E65C # 27
/* 01E20C 8001E65C 00047080 */  sll         $t6, $a0, 2
/* 01E210 8001E660 01C47021 */  addu        $t6, $t6, $a0
/* 01E214 8001E664 000E7080 */  sll         $t6, $t6, 2
/* 01E218 8001E668 01C47021 */  addu        $t6, $t6, $a0
/* 01E21C 8001E66C 000E7080 */  sll         $t6, $t6, 2
/* 01E220 8001E670 3C028009 */  lui         $v0, %hi(D_80088008)
/* 01E224 8001E674 004E1021 */  addu        $v0, $v0, $t6
/* 01E228 8001E678 03E00008 */  jr          $ra
/* 01E22C 8001E67C 8C428008 */   lw         $v0, %lo(D_80088008)($v0)

glabel func_8001E680 # 28
/* 01E230 8001E680 14A0000A */  bne         $a1, $zero, .L8001E6AC
/* 01E234 8001E684 00047080 */   sll        $t6, $a0, 2
/* 01E238 8001E688 01C47021 */  addu        $t6, $t6, $a0
/* 01E23C 8001E68C 000E7080 */  sll         $t6, $t6, 2
/* 01E240 8001E690 01C47021 */  addu        $t6, $t6, $a0
/* 01E244 8001E694 000E7080 */  sll         $t6, $t6, 2
/* 01E248 8001E698 3C038008 */  lui         $v1, %hi(D_80087FC8)
/* 01E24C 8001E69C 006E1821 */  addu        $v1, $v1, $t6
/* 01E250 8001E6A0 8C637FC8 */  lw          $v1, %lo(D_80087FC8)($v1)
/* 01E254 8001E6A4 1460000A */  bne         $v1, $zero, .L8001E6D0
/* 01E258 8001E6A8 00601025 */   move       $v0, $v1
.L8001E6AC:
/* 01E25C 8001E6AC 00047880 */  sll         $t7, $a0, 2
/* 01E260 8001E6B0 01E47821 */  addu        $t7, $t7, $a0
/* 01E264 8001E6B4 000F7880 */  sll         $t7, $t7, 2
/* 01E268 8001E6B8 01E47821 */  addu        $t7, $t7, $a0
/* 01E26C 8001E6BC 000F7880 */  sll         $t7, $t7, 2
/* 01E270 8001E6C0 3C028008 */  lui         $v0, %hi(D_80087FD0)
/* 01E274 8001E6C4 004F1021 */  addu        $v0, $v0, $t7
/* 01E278 8001E6C8 03E00008 */  jr          $ra
/* 01E27C 8001E6CC 8C427FD0 */   lw         $v0, %lo(D_80087FD0)($v0)
.L8001E6D0:
/* 01E280 8001E6D0 03E00008 */  jr          $ra
/* 01E284 8001E6D4 00000000 */   nop

glabel func_8001E6D8 # 29
/* 01E288 8001E6D8 14A0000A */  bne         $a1, $zero, .L8001E704
/* 01E28C 8001E6DC 00047080 */   sll        $t6, $a0, 2
/* 01E290 8001E6E0 01C47021 */  addu        $t6, $t6, $a0
/* 01E294 8001E6E4 000E7080 */  sll         $t6, $t6, 2
/* 01E298 8001E6E8 01C47021 */  addu        $t6, $t6, $a0
/* 01E29C 8001E6EC 000E7080 */  sll         $t6, $t6, 2
/* 01E2A0 8001E6F0 3C038008 */  lui         $v1, %hi(D_80087FCC)
/* 01E2A4 8001E6F4 006E1821 */  addu        $v1, $v1, $t6
/* 01E2A8 8001E6F8 8C637FCC */  lw          $v1, %lo(D_80087FCC)($v1)
/* 01E2AC 8001E6FC 1460000A */  bne         $v1, $zero, .L8001E728
/* 01E2B0 8001E700 00601025 */   move       $v0, $v1
.L8001E704:
/* 01E2B4 8001E704 00047880 */  sll         $t7, $a0, 2
/* 01E2B8 8001E708 01E47821 */  addu        $t7, $t7, $a0
/* 01E2BC 8001E70C 000F7880 */  sll         $t7, $t7, 2
/* 01E2C0 8001E710 01E47821 */  addu        $t7, $t7, $a0
/* 01E2C4 8001E714 000F7880 */  sll         $t7, $t7, 2
/* 01E2C8 8001E718 3C028008 */  lui         $v0, %hi(D_80087FD4)
/* 01E2CC 8001E71C 004F1021 */  addu        $v0, $v0, $t7
/* 01E2D0 8001E720 03E00008 */  jr          $ra
/* 01E2D4 8001E724 8C427FD4 */   lw         $v0, %lo(D_80087FD4)($v0)
.L8001E728:
/* 01E2D8 8001E728 03E00008 */  jr          $ra
/* 01E2DC 8001E72C 00000000 */   nop

glabel func_8001E730 # 30
/* 01E2E0 8001E730 00047080 */  sll         $t6, $a0, 2
/* 01E2E4 8001E734 01C47021 */  addu        $t6, $t6, $a0
/* 01E2E8 8001E738 44802000 */  mtc1        $zero, $f4
/* 01E2EC 8001E73C 000E7080 */  sll         $t6, $t6, 2
/* 01E2F0 8001E740 01C47021 */  addu        $t6, $t6, $a0
/* 01E2F4 8001E744 3C0F8009 */  lui         $t7, %hi(D_8008801C)
/* 01E2F8 8001E748 25EF801C */  addiu       $t7, $t7, %lo(D_8008801C)
/* 01E2FC 8001E74C 000E7080 */  sll         $t6, $t6, 2
/* 01E300 8001E750 01CF1021 */  addu        $v0, $t6, $t7
/* 01E304 8001E754 E4A40000 */  swc1        $f4, 0x0($a1)
/* 01E308 8001E758 C446FFC0 */  lwc1        $f6, -0x40($v0)
/* 01E30C 8001E75C E4A60004 */  swc1        $f6, 0x4($a1)
/* 01E310 8001E760 C448FFBC */  lwc1        $f8, -0x44($v0)
/* 01E314 8001E764 03E00008 */  jr          $ra
/* 01E318 8001E768 E4A80008 */   swc1       $f8, 0x8($a1)

glabel func_8001E76C # 31
/* 01E31C 8001E76C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01E320 8001E770 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01E324 8001E774 E7AC0038 */  swc1        $f12, 0x38($sp)
/* 01E328 8001E778 E7AE003C */  swc1        $f14, 0x3c($sp)
/* 01E32C 8001E77C AFA60040 */  sw          $a2, 0x40($sp)
/* 01E330 8001E780 AFA70044 */  sw          $a3, 0x44($sp)
/* 01E334 8001E784 0C00CB07 */  jal         func_80032C1C
/* 01E338 8001E788 24040018 */   addiu      $a0, $zero, 0x18
/* 01E33C 8001E78C AFA20030 */  sw          $v0, 0x30($sp)
/* 01E340 8001E790 0C00CAFD */  jal         func_80032BF4
/* 01E344 8001E794 24040018 */   addiu      $a0, $zero, 0x18
/* 01E348 8001E798 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01E34C 8001E79C 44828000 */  mtc1        $v0, $f16
/* 01E350 8001E7A0 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 01E354 8001E7A4 448E4000 */  mtc1        $t6, $f8
/* 01E358 8001E7A8 468084A0 */  cvt.s.w     $f18, $f16
/* 01E35C 8001E7AC E7A40010 */  swc1        $f4, 0x10($sp)
/* 01E360 8001E7B0 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 01E364 8001E7B4 3C013F80 */  lui         $at, 0x3f80
/* 01E368 8001E7B8 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 01E36C 8001E7BC 468042A0 */  cvt.s.w     $f10, $f8
/* 01E370 8001E7C0 E7A60014 */  swc1        $f6, 0x14($sp)
/* 01E374 8001E7C4 44813000 */  mtc1        $at, $f6
/* 01E378 8001E7C8 3C013F00 */  lui         $at, 0x3f00
/* 01E37C 8001E7CC 44818000 */  mtc1        $at, $f16
/* 01E380 8001E7D0 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 01E384 8001E7D4 46125103 */  div.s       $f4, $f10, $f18
/* 01E388 8001E7D8 8FB8004C */  lw          $t8, 0x4c($sp)
/* 01E38C 8001E7DC C5F2000C */  lwc1        $f18, 0xc($t7)
/* 01E390 8001E7E0 8FB90050 */  lw          $t9, 0x50($sp)
/* 01E394 8001E7E4 24040016 */  addiu       $a0, $zero, 0x16
/* 01E398 8001E7E8 8FA50038 */  lw          $a1, 0x38($sp)
/* 01E39C 8001E7EC 8FA6003C */  lw          $a2, 0x3c($sp)
/* 01E3A0 8001E7F0 8FA70040 */  lw          $a3, 0x40($sp)
/* 01E3A4 8001E7F4 AFB8001C */  sw          $t8, 0x1c($sp)
/* 01E3A8 8001E7F8 AFB90020 */  sw          $t9, 0x20($sp)
/* 01E3AC 8001E7FC 46062200 */  add.s       $f8, $f4, $f6
/* 01E3B0 8001E800 46104282 */  mul.s       $f10, $f8, $f16
/* 01E3B4 8001E804 00000000 */  nop
/* 01E3B8 8001E808 460A9102 */  mul.s       $f4, $f18, $f10
/* 01E3BC 8001E80C 0C007871 */  jal         func_8001E1C4
/* 01E3C0 8001E810 E7A40018 */   swc1       $f4, 0x18($sp)
/* 01E3C4 8001E814 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01E3C8 8001E818 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01E3CC 8001E81C 03E00008 */  jr          $ra
/* 01E3D0 8001E820 00000000 */   nop
/* 01E3D4 8001E824 00000000 */  nop
/* 01E3D8 8001E828 00000000 */  nop
/* 01E3DC 8001E82C 00000000 */  nop
