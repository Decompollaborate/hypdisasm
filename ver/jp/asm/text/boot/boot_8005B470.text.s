.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B470 # 0
/* 05B020 8005B470 24AEFFFF */  addiu       $t6, $a1, -0x1
/* 05B024 8005B474 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05B028 8005B478 2DC10009 */  sltiu       $at, $t6, 0x9
/* 05B02C 8005B47C AFBF0014 */  sw          $ra, 0x14($sp)
/* 05B030 8005B480 1020002B */  beqz        $at, L8005B530
/* 05B034 8005B484 00803825 */   move       $a3, $a0
/* 05B038 8005B488 000E7080 */  sll         $t6, $t6, 2
/* 05B03C 8005B48C 3C01800B */  lui         $at, %hi(jtbl_800ACCD0)
/* 05B040 8005B490 002E0821 */  addu        $at, $at, $t6
/* 05B044 8005B494 8C2ECCD0 */  lw          $t6, %lo(jtbl_800ACCD0)($at)
/* 05B048 8005B498 01C00008 */  jr          $t6
/* 05B04C 8005B49C 00000000 */   nop
glabel L8005B4A0
/* 05B050 8005B4A0 10000029 */  b           .L8005B548
/* 05B054 8005B4A4 ACE60000 */   sw         $a2, 0x0($a3)
glabel L8005B4A8
/* 05B058 8005B4A8 8CE40000 */  lw          $a0, 0x0($a3)
/* 05B05C 8005B4AC 44802000 */  mtc1        $zero, $f4
/* 05B060 8005B4B0 240F0001 */  addiu       $t7, $zero, 0x1
/* 05B064 8005B4B4 ACEF0024 */  sw          $t7, 0x24($a3)
/* 05B068 8005B4B8 ACE00030 */  sw          $zero, 0x30($a3)
/* 05B06C 8005B4BC ACE0001C */  sw          $zero, 0x1c($a3)
/* 05B070 8005B4C0 10800021 */  beqz        $a0, .L8005B548
/* 05B074 8005B4C4 E4E40020 */   swc1       $f4, 0x20($a3)
/* 05B078 8005B4C8 8C990008 */  lw          $t9, 0x8($a0)
/* 05B07C 8005B4CC 24050004 */  addiu       $a1, $zero, 0x4
/* 05B080 8005B4D0 00003025 */  move        $a2, $zero
/* 05B084 8005B4D4 0320F809 */  jalr        $t9
/* 05B088 8005B4D8 00000000 */   nop
/* 05B08C 8005B4DC 1000001B */  b           .L8005B54C
/* 05B090 8005B4E0 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8005B4E4
/* 05B094 8005B4E4 8CE40000 */  lw          $a0, 0x0($a3)
/* 05B098 8005B4E8 24180001 */  addiu       $t8, $zero, 0x1
/* 05B09C 8005B4EC ACF80030 */  sw          $t8, 0x30($a3)
/* 05B0A0 8005B4F0 50800016 */  beql        $a0, $zero, .L8005B54C
/* 05B0A4 8005B4F4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05B0A8 8005B4F8 8C990008 */  lw          $t9, 0x8($a0)
/* 05B0AC 8005B4FC 24050009 */  addiu       $a1, $zero, 0x9
/* 05B0B0 8005B500 00003025 */  move        $a2, $zero
/* 05B0B4 8005B504 0320F809 */  jalr        $t9
/* 05B0B8 8005B508 00000000 */   nop
/* 05B0BC 8005B50C 1000000F */  b           .L8005B54C
/* 05B0C0 8005B510 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8005B514
/* 05B0C4 8005B514 AFA6001C */  sw          $a2, 0x1c($sp)
/* 05B0C8 8005B518 C7A6001C */  lwc1        $f6, 0x1c($sp)
/* 05B0CC 8005B51C 1000000A */  b           .L8005B548
/* 05B0D0 8005B520 E4E60018 */   swc1       $f6, 0x18($a3)
glabel L8005B524
/* 05B0D4 8005B524 24080001 */  addiu       $t0, $zero, 0x1
/* 05B0D8 8005B528 10000007 */  b           .L8005B548
/* 05B0DC 8005B52C ACE8001C */   sw         $t0, 0x1c($a3)
glabel L8005B530
/* 05B0E0 8005B530 8CE40000 */  lw          $a0, 0x0($a3)
/* 05B0E4 8005B534 50800005 */  beql        $a0, $zero, .L8005B54C
/* 05B0E8 8005B538 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05B0EC 8005B53C 8C990008 */  lw          $t9, 0x8($a0)
/* 05B0F0 8005B540 0320F809 */  jalr        $t9
/* 05B0F4 8005B544 00000000 */   nop
.L8005B548:
/* 05B0F8 8005B548 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005B54C:
/* 05B0FC 8005B54C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05B100 8005B550 00001025 */  move        $v0, $zero
/* 05B104 8005B554 03E00008 */  jr          $ra
/* 05B108 8005B558 00000000 */   nop

glabel func_8005B55C # 1
/* 05B10C 8005B55C 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 05B110 8005B560 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05B114 8005B564 AFA50054 */  sw          $a1, 0x54($sp)
/* 05B118 8005B568 8C890000 */  lw          $t1, 0x0($a0)
/* 05B11C 8005B56C 240E0140 */  addiu       $t6, $zero, 0x140
/* 05B120 8005B570 00804025 */  move        $t0, $a0
/* 05B124 8005B574 00C05025 */  move        $t2, $a2
/* 05B128 8005B578 14C00003 */  bnez        $a2, .L8005B588
/* 05B12C 8005B57C A7AE0046 */   sh         $t6, 0x46($sp)
/* 05B130 8005B580 10000074 */  b           .L8005B754
/* 05B134 8005B584 8FA20060 */   lw         $v0, 0x60($sp)
.L8005B588:
/* 05B138 8005B588 8D0F001C */  lw          $t7, 0x1c($t0)
/* 05B13C 8005B58C 8FB80060 */  lw          $t8, 0x60($sp)
/* 05B140 8005B590 51E0001A */  beql        $t7, $zero, .L8005B5FC
/* 05B144 8005B594 C5020018 */   lwc1       $f2, 0x18($t0)
/* 05B148 8005B598 AFB80010 */  sw          $t8, 0x10($sp)
/* 05B14C 8005B59C AFAA0058 */  sw          $t2, 0x58($sp)
/* 05B150 8005B5A0 8D390004 */  lw          $t9, 0x4($t1)
/* 05B154 8005B5A4 01202025 */  move        $a0, $t1
/* 05B158 8005B5A8 27A50046 */  addiu       $a1, $sp, 0x46
/* 05B15C 8005B5AC 0320F809 */  jalr        $t9
/* 05B160 8005B5B0 01403025 */   move       $a2, $t2
/* 05B164 8005B5B4 87AB0046 */  lh          $t3, 0x46($sp)
/* 05B168 8005B5B8 3C0100FF */  lui         $at, 0xff
/* 05B16C 8005B5BC 3421FFFF */  ori         $at, $at, 0xffff
/* 05B170 8005B5C0 01616024 */  and         $t4, $t3, $at
/* 05B174 8005B5C4 3C010A00 */  lui         $at, 0xa00
/* 05B178 8005B5C8 8FAA0058 */  lw          $t2, 0x58($sp)
/* 05B17C 8005B5CC 01816825 */  or          $t5, $t4, $at
/* 05B180 8005B5D0 AC4D0000 */  sw          $t5, 0x0($v0)
/* 05B184 8005B5D4 8FAE0054 */  lw          $t6, 0x54($sp)
/* 05B188 8005B5D8 000A5840 */  sll         $t3, $t2, 1
/* 05B18C 8005B5DC 316CFFFF */  andi        $t4, $t3, 0xffff
/* 05B190 8005B5E0 85D80000 */  lh          $t8, 0x0($t6)
/* 05B194 8005B5E4 24450008 */  addiu       $a1, $v0, 0x8
/* 05B198 8005B5E8 0018CC00 */  sll         $t9, $t8, 16
/* 05B19C 8005B5EC 032C6825 */  or          $t5, $t9, $t4
/* 05B1A0 8005B5F0 10000057 */  b           .L8005B750
/* 05B1A4 8005B5F4 AC4D0004 */   sw         $t5, 0x4($v0)
/* 05B1A8 8005B5F8 C5020018 */  lwc1        $f2, 0x18($t0)
.L8005B5FC:
/* 05B1AC 8005B5FC 3C01800B */  lui         $at, %hi(D_800ACCF8)
/* 05B1B0 8005B600 D424CCF8 */  ldc1        $f4, %lo(D_800ACCF8)($at)
/* 05B1B4 8005B604 460011A1 */  cvt.d.s     $f6, $f2
/* 05B1B8 8005B608 3C01800B */  lui         $at, %hi(D_800ACD00)
/* 05B1BC 8005B60C 4626203C */  c.lt.d      $f4, $f6
/* 05B1C0 8005B610 00000000 */  nop
/* 05B1C4 8005B614 45020005 */  bc1fl       .L8005B62C
/* 05B1C8 8005B618 3C014700 */   lui        $at, 0x4700
/* 05B1CC 8005B61C C428CD00 */  lwc1        $f8, %lo(D_800ACD00)($at)
/* 05B1D0 8005B620 E5080018 */  swc1        $f8, 0x18($t0)
/* 05B1D4 8005B624 C5020018 */  lwc1        $f2, 0x18($t0)
/* 05B1D8 8005B628 3C014700 */  lui         $at, 0x4700
.L8005B62C:
/* 05B1DC 8005B62C 44816000 */  mtc1        $at, $f12
/* 05B1E0 8005B630 01202025 */  move        $a0, $t1
/* 05B1E4 8005B634 27A50046 */  addiu       $a1, $sp, 0x46
/* 05B1E8 8005B638 460C1282 */  mul.s       $f10, $f2, $f12
/* 05B1EC 8005B63C 4600540D */  trunc.w.s   $f16, $f10
/* 05B1F0 8005B640 440F8000 */  mfc1        $t7, $f16
/* 05B1F4 8005B644 448A8000 */  mtc1        $t2, $f16
/* 05B1F8 8005B648 448F9000 */  mtc1        $t7, $f18
/* 05B1FC 8005B64C 00000000 */  nop
/* 05B200 8005B650 46809120 */  cvt.s.w     $f4, $f18
/* 05B204 8005B654 468084A0 */  cvt.s.w     $f18, $f16
/* 05B208 8005B658 E5040018 */  swc1        $f4, 0x18($t0)
/* 05B20C 8005B65C C5060018 */  lwc1        $f6, 0x18($t0)
/* 05B210 8005B660 460C3203 */  div.s       $f8, $f6, $f12
/* 05B214 8005B664 C5060020 */  lwc1        $f6, 0x20($t0)
/* 05B218 8005B668 E5080018 */  swc1        $f8, 0x18($t0)
/* 05B21C 8005B66C C50A0018 */  lwc1        $f10, 0x18($t0)
/* 05B220 8005B670 46125102 */  mul.s       $f4, $f10, $f18
/* 05B224 8005B674 46043000 */  add.s       $f0, $f6, $f4
/* 05B228 8005B678 4600020D */  trunc.w.s   $f8, $f0
/* 05B22C 8005B67C 44064000 */  mfc1        $a2, $f8
/* 05B230 8005B680 00000000 */  nop
/* 05B234 8005B684 44868000 */  mtc1        $a2, $f16
/* 05B238 8005B688 00000000 */  nop
/* 05B23C 8005B68C 468082A0 */  cvt.s.w     $f10, $f16
/* 05B240 8005B690 460A0481 */  sub.s       $f18, $f0, $f10
/* 05B244 8005B694 E5120020 */  swc1        $f18, 0x20($t0)
/* 05B248 8005B698 8FAB0060 */  lw          $t3, 0x60($sp)
/* 05B24C 8005B69C AFAA0058 */  sw          $t2, 0x58($sp)
/* 05B250 8005B6A0 AFA80050 */  sw          $t0, 0x50($sp)
/* 05B254 8005B6A4 AFAB0010 */  sw          $t3, 0x10($sp)
/* 05B258 8005B6A8 8D390004 */  lw          $t9, 0x4($t1)
/* 05B25C 8005B6AC 0320F809 */  jalr        $t9
/* 05B260 8005B6B0 00000000 */   nop
/* 05B264 8005B6B4 8FA80050 */  lw          $t0, 0x50($sp)
/* 05B268 8005B6B8 87AD0046 */  lh          $t5, 0x46($sp)
/* 05B26C 8005B6BC 3C014700 */  lui         $at, 0x4700
/* 05B270 8005B6C0 44812000 */  mtc1        $at, $f4
/* 05B274 8005B6C4 C5060018 */  lwc1        $f6, 0x18($t0)
/* 05B278 8005B6C8 3C010800 */  lui         $at, 0x800
/* 05B27C 8005B6CC 31AEFFFF */  andi        $t6, $t5, 0xffff
/* 05B280 8005B6D0 8FAA0058 */  lw          $t2, 0x58($sp)
/* 05B284 8005B6D4 01C17825 */  or          $t7, $t6, $at
/* 05B288 8005B6D8 AC4F0000 */  sw          $t7, 0x0($v0)
/* 05B28C 8005B6DC 8FB80054 */  lw          $t8, 0x54($sp)
/* 05B290 8005B6E0 46043202 */  mul.s       $f8, $f6, $f4
/* 05B294 8005B6E4 000A6840 */  sll         $t5, $t2, 1
/* 05B298 8005B6E8 87190000 */  lh          $t9, 0x0($t8)
/* 05B29C 8005B6EC 31AEFFFF */  andi        $t6, $t5, 0xffff
/* 05B2A0 8005B6F0 24580008 */  addiu       $t8, $v0, 0x8
/* 05B2A4 8005B6F4 00196400 */  sll         $t4, $t9, 16
/* 05B2A8 8005B6F8 018E7825 */  or          $t7, $t4, $t6
/* 05B2AC 8005B6FC 4600440D */  trunc.w.s   $f16, $f8
/* 05B2B0 8005B700 AC4F0004 */  sw          $t7, 0x4($v0)
/* 05B2B4 8005B704 AFB80028 */  sw          $t8, 0x28($sp)
/* 05B2B8 8005B708 8D0B0024 */  lw          $t3, 0x24($t0)
/* 05B2BC 8005B70C 44038000 */  mfc1        $v1, $f16
/* 05B2C0 8005B710 3C010500 */  lui         $at, 0x500
/* 05B2C4 8005B714 317900FF */  andi        $t9, $t3, 0xff
/* 05B2C8 8005B718 00196C00 */  sll         $t5, $t9, 16
/* 05B2CC 8005B71C 01A16025 */  or          $t4, $t5, $at
/* 05B2D0 8005B720 306EFFFF */  andi        $t6, $v1, 0xffff
/* 05B2D4 8005B724 018E7825 */  or          $t7, $t4, $t6
/* 05B2D8 8005B728 AC4F0008 */  sw          $t7, 0x8($v0)
/* 05B2DC 8005B72C 24450010 */  addiu       $a1, $v0, 0x10
/* 05B2E0 8005B730 8D040014 */  lw          $a0, 0x14($t0)
/* 05B2E4 8005B734 0C0140F4 */  jal         osVirtualToPhysical
/* 05B2E8 8005B738 AFA50048 */   sw         $a1, 0x48($sp)
/* 05B2EC 8005B73C 8FB80028 */  lw          $t8, 0x28($sp)
/* 05B2F0 8005B740 8FA80050 */  lw          $t0, 0x50($sp)
/* 05B2F4 8005B744 8FA50048 */  lw          $a1, 0x48($sp)
/* 05B2F8 8005B748 AF020004 */  sw          $v0, 0x4($t8)
/* 05B2FC 8005B74C AD000024 */  sw          $zero, 0x24($t0)
.L8005B750:
/* 05B300 8005B750 00A01025 */  move        $v0, $a1
.L8005B754:
/* 05B304 8005B754 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05B308 8005B758 27BD0050 */  addiu       $sp, $sp, 0x50
/* 05B30C 8005B75C 03E00008 */  jr          $ra
/* 05B310 8005B760 00000000 */   nop
/* 05B314 8005B764 00000000 */  nop
/* 05B318 8005B768 00000000 */  nop
/* 05B31C 8005B76C 00000000 */  nop
