.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D330 # 0
/* 05CEE0 8005D330 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 05CEE4 8005D334 AFB10024 */  sw          $s1, 0x24($sp)
/* 05CEE8 8005D338 8FB10058 */  lw          $s1, 0x58($sp)
/* 05CEEC 8005D33C AFBF0044 */  sw          $ra, 0x44($sp)
/* 05CEF0 8005D340 AFBE0040 */  sw          $fp, 0x40($sp)
/* 05CEF4 8005D344 AFB7003C */  sw          $s7, 0x3c($sp)
/* 05CEF8 8005D348 AFB60038 */  sw          $s6, 0x38($sp)
/* 05CEFC 8005D34C AFB50034 */  sw          $s5, 0x34($sp)
/* 05CF00 8005D350 AFB40030 */  sw          $s4, 0x30($sp)
/* 05CF04 8005D354 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05CF08 8005D358 AFB20028 */  sw          $s2, 0x28($sp)
/* 05CF0C 8005D35C AFB00020 */  sw          $s0, 0x20($sp)
/* 05CF10 8005D360 8C83001C */  lw          $v1, 0x1c($a0)
/* 05CF14 8005D364 3C0E0200 */  lui         $t6, 0x200
/* 05CF18 8005D368 00061040 */  sll         $v0, $a2, 1
/* 05CF1C 8005D36C 3C0F0200 */  lui         $t7, 0x200
/* 05CF20 8005D370 35CE0440 */  ori         $t6, $t6, 0x440
/* 05CF24 8005D374 35EF0580 */  ori         $t7, $t7, 0x580
/* 05CF28 8005D378 AE2E0000 */  sw          $t6, 0x0($s1)
/* 05CF2C 8005D37C AE220004 */  sw          $v0, 0x4($s1)
/* 05CF30 8005D380 AE2F0008 */  sw          $t7, 0x8($s1)
/* 05CF34 8005D384 AE22000C */  sw          $v0, 0xc($s1)
/* 05CF38 8005D388 8C980014 */  lw          $t8, 0x14($a0)
/* 05CF3C 8005D38C 00C0A825 */  move        $s5, $a2
/* 05CF40 8005D390 00A0B825 */  move        $s7, $a1
/* 05CF44 8005D394 00E0F025 */  move        $fp, $a3
/* 05CF48 8005D398 0080A025 */  move        $s4, $a0
/* 05CF4C 8005D39C 00008025 */  move        $s0, $zero
/* 05CF50 8005D3A0 1B00001E */  blez        $t8, .L8005D41C
/* 05CF54 8005D3A4 26330010 */   addiu      $s3, $s1, 0x10
/* 05CF58 8005D3A8 3C120C00 */  lui         $s2, 0xc00
/* 05CF5C 8005D3AC 36527FFF */  ori         $s2, $s2, 0x7fff
/* 05CF60 8005D3B0 00608825 */  move        $s1, $v1
/* 05CF64 8005D3B4 3056FFFF */  andi        $s6, $v0, 0xffff
.L8005D3B8:
/* 05CF68 8005D3B8 8E240000 */  lw          $a0, 0x0($s1)
/* 05CF6C 8005D3BC AFB30010 */  sw          $s3, 0x10($sp)
/* 05CF70 8005D3C0 02E02825 */  move        $a1, $s7
/* 05CF74 8005D3C4 8C990004 */  lw          $t9, 0x4($a0)
/* 05CF78 8005D3C8 02A03025 */  move        $a2, $s5
/* 05CF7C 8005D3CC 03C03825 */  move        $a3, $fp
/* 05CF80 8005D3D0 0320F809 */  jalr        $t9
/* 05CF84 8005D3D4 00000000 */   nop
/* 05CF88 8005D3D8 3C0906C0 */  lui         $t1, 0x6c0
/* 05CF8C 8005D3DC 3C0A0800 */  lui         $t2, 0x800
/* 05CF90 8005D3E0 3C080800 */  lui         $t0, 0x800
/* 05CF94 8005D3E4 35290440 */  ori         $t1, $t1, 0x440
/* 05CF98 8005D3E8 354A0580 */  ori         $t2, $t2, 0x580
/* 05CF9C 8005D3EC AC480000 */  sw          $t0, 0x0($v0)
/* 05CFA0 8005D3F0 AC560004 */  sw          $s6, 0x4($v0)
/* 05CFA4 8005D3F4 AC49000C */  sw          $t1, 0xc($v0)
/* 05CFA8 8005D3F8 AC520008 */  sw          $s2, 0x8($v0)
/* 05CFAC 8005D3FC AC4A0014 */  sw          $t2, 0x14($v0)
/* 05CFB0 8005D400 AC520010 */  sw          $s2, 0x10($v0)
/* 05CFB4 8005D404 8E8B0014 */  lw          $t3, 0x14($s4)
/* 05CFB8 8005D408 26100001 */  addiu       $s0, $s0, 0x1
/* 05CFBC 8005D40C 26310004 */  addiu       $s1, $s1, 0x4
/* 05CFC0 8005D410 020B082A */  slt         $at, $s0, $t3
/* 05CFC4 8005D414 1420FFE8 */  bnez        $at, .L8005D3B8
/* 05CFC8 8005D418 24530018 */   addiu      $s3, $v0, 0x18
.L8005D41C:
/* 05CFCC 8005D41C 8FBF0044 */  lw          $ra, 0x44($sp)
/* 05CFD0 8005D420 02601025 */  move        $v0, $s3
/* 05CFD4 8005D424 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05CFD8 8005D428 8FB00020 */  lw          $s0, 0x20($sp)
/* 05CFDC 8005D42C 8FB10024 */  lw          $s1, 0x24($sp)
/* 05CFE0 8005D430 8FB20028 */  lw          $s2, 0x28($sp)
/* 05CFE4 8005D434 8FB40030 */  lw          $s4, 0x30($sp)
/* 05CFE8 8005D438 8FB50034 */  lw          $s5, 0x34($sp)
/* 05CFEC 8005D43C 8FB60038 */  lw          $s6, 0x38($sp)
/* 05CFF0 8005D440 8FB7003C */  lw          $s7, 0x3c($sp)
/* 05CFF4 8005D444 8FBE0040 */  lw          $fp, 0x40($sp)
/* 05CFF8 8005D448 03E00008 */  jr          $ra
/* 05CFFC 8005D44C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8005D450 # 1
/* 05D000 8005D450 24010002 */  addiu       $at, $zero, 0x2
/* 05D004 8005D454 14A10008 */  bne         $a1, $at, .L8005D478
/* 05D008 8005D458 8C82001C */   lw         $v0, 0x1c($a0)
/* 05D00C 8005D45C 8C8E0014 */  lw          $t6, 0x14($a0)
/* 05D010 8005D460 000E7880 */  sll         $t7, $t6, 2
/* 05D014 8005D464 004FC021 */  addu        $t8, $v0, $t7
/* 05D018 8005D468 AF060000 */  sw          $a2, 0x0($t8)
/* 05D01C 8005D46C 8C990014 */  lw          $t9, 0x14($a0)
/* 05D020 8005D470 27280001 */  addiu       $t0, $t9, 0x1
/* 05D024 8005D474 AC880014 */  sw          $t0, 0x14($a0)
.L8005D478:
/* 05D028 8005D478 03E00008 */  jr          $ra
/* 05D02C 8005D47C 00001025 */   move       $v0, $zero

glabel func_8005D480 # 2
/* 05D030 8005D480 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05D034 8005D484 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05D038 8005D488 AFA40020 */  sw          $a0, 0x20($sp)
/* 05D03C 8005D48C 8C840000 */  lw          $a0, 0x0($a0)
/* 05D040 8005D490 8FAF0030 */  lw          $t7, 0x30($sp)
/* 05D044 8005D494 AFA60028 */  sw          $a2, 0x28($sp)
/* 05D048 8005D498 AFAF0010 */  sw          $t7, 0x10($sp)
/* 05D04C 8005D49C 8C990004 */  lw          $t9, 0x4($a0)
/* 05D050 8005D4A0 0320F809 */  jalr        $t9
/* 05D054 8005D4A4 00000000 */   nop
/* 05D058 8005D4A8 8FA60028 */  lw          $a2, 0x28($sp)
/* 05D05C 8005D4AC 3C030800 */  lui         $v1, 0x800
/* 05D060 8005D4B0 3C0A0440 */  lui         $t2, 0x440
/* 05D064 8005D4B4 0006C040 */  sll         $t8, $a2, 1
/* 05D068 8005D4B8 00065880 */  sll         $t3, $a2, 2
/* 05D06C 8005D4BC 3308FFFF */  andi        $t0, $t8, 0xffff
/* 05D070 8005D4C0 354A0580 */  ori         $t2, $t2, 0x580
/* 05D074 8005D4C4 3C090D00 */  lui         $t1, 0xd00
/* 05D078 8005D4C8 316CFFFF */  andi        $t4, $t3, 0xffff
/* 05D07C 8005D4CC 3C0D0600 */  lui         $t5, 0x600
/* 05D080 8005D4D0 AC480004 */  sw          $t0, 0x4($v0)
/* 05D084 8005D4D4 AC430000 */  sw          $v1, 0x0($v0)
/* 05D088 8005D4D8 AC490008 */  sw          $t1, 0x8($v0)
/* 05D08C 8005D4DC AC4A000C */  sw          $t2, 0xc($v0)
/* 05D090 8005D4E0 AC4C0014 */  sw          $t4, 0x14($v0)
/* 05D094 8005D4E4 AC430010 */  sw          $v1, 0x10($v0)
/* 05D098 8005D4E8 AC4D0018 */  sw          $t5, 0x18($v0)
/* 05D09C 8005D4EC 8FAE0020 */  lw          $t6, 0x20($sp)
/* 05D0A0 8005D4F0 24420020 */  addiu       $v0, $v0, 0x20
/* 05D0A4 8005D4F4 8DCF0014 */  lw          $t7, 0x14($t6)
/* 05D0A8 8005D4F8 AC4FFFFC */  sw          $t7, -0x4($v0)
/* 05D0AC 8005D4FC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05D0B0 8005D500 27BD0020 */  addiu       $sp, $sp, 0x20
/* 05D0B4 8005D504 03E00008 */  jr          $ra
/* 05D0B8 8005D508 00000000 */   nop

glabel func_8005D50C # 3
/* 05D0BC 8005D50C 24010001 */  addiu       $at, $zero, 0x1
/* 05D0C0 8005D510 10A10006 */  beq         $a1, $at, .L8005D52C
/* 05D0C4 8005D514 00001025 */   move       $v0, $zero
/* 05D0C8 8005D518 24010006 */  addiu       $at, $zero, 0x6
/* 05D0CC 8005D51C 50A10006 */  beql        $a1, $at, .L8005D538
/* 05D0D0 8005D520 AC860014 */   sw         $a2, 0x14($a0)
/* 05D0D4 8005D524 03E00008 */  jr          $ra
/* 05D0D8 8005D528 00001025 */   move       $v0, $zero
.L8005D52C:
/* 05D0DC 8005D52C 03E00008 */  jr          $ra
/* 05D0E0 8005D530 AC860000 */   sw         $a2, 0x0($a0)
/* 05D0E4 8005D534 AC860014 */  sw          $a2, 0x14($a0)
.L8005D538:
/* 05D0E8 8005D538 03E00008 */  jr          $ra
/* 05D0EC 8005D53C 00001025 */   move       $v0, $zero
