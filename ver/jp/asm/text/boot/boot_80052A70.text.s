.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052A70 # 0
/* 052620 80052A70 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 052624 80052A74 AFA40018 */  sw          $a0, 0x18($sp)
/* 052628 80052A78 00802825 */  move        $a1, $a0
/* 05262C 80052A7C 24A44000 */  addiu       $a0, $a1, 0x4000
/* 052630 80052A80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 052634 80052A84 308EFFFF */  andi        $t6, $a0, 0xffff
/* 052638 80052A88 0C014AA8 */  jal         func_80052AA0
/* 05263C 80052A8C 01C02025 */   move       $a0, $t6
/* 052640 80052A90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052644 80052A94 27BD0018 */  addiu       $sp, $sp, 0x18
/* 052648 80052A98 03E00008 */  jr          $ra
/* 05264C 80052A9C 00000000 */   nop

glabel func_80052AA0 # 1
/* 052650 80052AA0 308EFFFF */  andi        $t6, $a0, 0xffff
/* 052654 80052AA4 000E7902 */  srl         $t7, $t6, 4
/* 052658 80052AA8 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05265C 80052AAC 33190400 */  andi        $t9, $t8, 0x400
/* 052660 80052AB0 AFA40000 */  sw          $a0, 0x0($sp)
/* 052664 80052AB4 13200008 */  beqz        $t9, .L80052AD8
/* 052668 80052AB8 03001025 */   move       $v0, $t8
/* 05266C 80052ABC 330803FF */  andi        $t0, $t8, 0x3ff
/* 052670 80052AC0 00084840 */  sll         $t1, $t0, 1
/* 052674 80052AC4 00095023 */  negu        $t2, $t1
/* 052678 80052AC8 3C03800A */  lui         $v1, %hi(D_800A4B6E)
/* 05267C 80052ACC 006A1821 */  addu        $v1, $v1, $t2
/* 052680 80052AD0 10000006 */  b           .L80052AEC
/* 052684 80052AD4 84634B6E */   lh         $v1, %lo(D_800A4B6E)($v1)
.L80052AD8:
/* 052688 80052AD8 304B03FF */  andi        $t3, $v0, 0x3ff
/* 05268C 80052ADC 000B6040 */  sll         $t4, $t3, 1
/* 052690 80052AE0 3C03800A */  lui         $v1, %hi(D_800A4370)
/* 052694 80052AE4 006C1821 */  addu        $v1, $v1, $t4
/* 052698 80052AE8 84634370 */  lh          $v1, %lo(D_800A4370)($v1)
.L80052AEC:
/* 05269C 80052AEC 304D0800 */  andi        $t5, $v0, 0x800
/* 0526A0 80052AF0 11A00005 */  beqz        $t5, .L80052B08
/* 0526A4 80052AF4 00601025 */   move       $v0, $v1
/* 0526A8 80052AF8 00031023 */  negu        $v0, $v1
/* 0526AC 80052AFC 00027400 */  sll         $t6, $v0, 16
/* 0526B0 80052B00 03E00008 */  jr          $ra
/* 0526B4 80052B04 000E1403 */   sra        $v0, $t6, 16
.L80052B08:
/* 0526B8 80052B08 03E00008 */  jr          $ra
/* 0526BC 80052B0C 00000000 */   nop

glabel func_80052B10 # 2
/* 0526C0 80052B10 3C0EA410 */  lui         $t6, %hi(D_A4100010)
/* 0526C4 80052B14 8DCF0010 */  lw          $t7, %lo(D_A4100010)($t6)
/* 0526C8 80052B18 3C18A410 */  lui         $t8, %hi(D_A4100014)
/* 0526CC 80052B1C 3C08A410 */  lui         $t0, %hi(D_A4100018)
/* 0526D0 80052B20 AC8F0000 */  sw          $t7, 0x0($a0)
/* 0526D4 80052B24 8F190014 */  lw          $t9, %lo(D_A4100014)($t8)
/* 0526D8 80052B28 24840004 */  addiu       $a0, $a0, 0x4
/* 0526DC 80052B2C 3C0AA410 */  lui         $t2, %hi(D_A410001C)
/* 0526E0 80052B30 AC990000 */  sw          $t9, 0x0($a0)
/* 0526E4 80052B34 8D090018 */  lw          $t1, %lo(D_A4100018)($t0)
/* 0526E8 80052B38 24840004 */  addiu       $a0, $a0, 0x4
/* 0526EC 80052B3C 24840004 */  addiu       $a0, $a0, 0x4
/* 0526F0 80052B40 AC89FFFC */  sw          $t1, -0x4($a0)
/* 0526F4 80052B44 8D4B001C */  lw          $t3, %lo(D_A410001C)($t2)
/* 0526F8 80052B48 24840004 */  addiu       $a0, $a0, 0x4
/* 0526FC 80052B4C 03E00008 */  jr          $ra
/* 052700 80052B50 AC8BFFFC */   sw         $t3, -0x4($a0)
/* 052704 80052B54 00000000 */  nop
/* 052708 80052B58 00000000 */  nop
/* 05270C 80052B5C 00000000 */  nop
