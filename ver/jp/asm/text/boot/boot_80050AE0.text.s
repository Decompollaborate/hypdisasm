.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050AE0 # 0
/* 050690 80050AE0 3C013F80 */  lui         $at, 0x3f80
/* 050694 80050AE4 44811000 */  mtc1        $at, $f2
/* 050698 80050AE8 04800004 */  bltz        $a0, .L80050AFC
/* 05069C 80050AEC 3C01800B */   lui        $at, %hi(D_800AC944)
/* 0506A0 80050AF0 3C01800B */  lui         $at, %hi(D_800AC940)
/* 0506A4 80050AF4 10000003 */  b           .L80050B04
/* 0506A8 80050AF8 C420C940 */   lwc1       $f0, %lo(D_800AC940)($at)
.L80050AFC:
/* 0506AC 80050AFC C420C944 */  lwc1        $f0, %lo(D_800AC944)($at)
/* 0506B0 80050B00 00042023 */  negu        $a0, $a0
.L80050B04:
/* 0506B4 80050B04 10800008 */  beqz        $a0, .L80050B28
.L80050B08:
/* 0506B8 80050B08 308E0001 */   andi       $t6, $a0, 0x1
/* 0506BC 80050B0C 11C00003 */  beqz        $t6, .L80050B1C
/* 0506C0 80050B10 00047843 */   sra        $t7, $a0, 1
/* 0506C4 80050B14 46001082 */  mul.s       $f2, $f2, $f0
/* 0506C8 80050B18 00000000 */  nop
.L80050B1C:
/* 0506CC 80050B1C 46000002 */  mul.s       $f0, $f0, $f0
/* 0506D0 80050B20 15E0FFF9 */  bnez        $t7, .L80050B08
/* 0506D4 80050B24 01E02025 */   move       $a0, $t7
.L80050B28:
/* 0506D8 80050B28 03E00008 */  jr          $ra
/* 0506DC 80050B2C 46001006 */   mov.s      $f0, $f2

/* Possibly handwritten function */
glabel func_80050B30 # 1
/* 0506E0 80050B30 18A0001F */  blez        $a1, .L80050BB0
/* 0506E4 80050B34 00000000 */   nop
/* 0506E8 80050B38 240B2000 */  addiu       $t3, $zero, 0x2000
/* 0506EC 80050B3C 00AB082B */  sltu        $at, $a1, $t3
/* 0506F0 80050B40 1020001D */  beqz        $at, .L80050BB8
/* 0506F4 80050B44 00000000 */   nop
/* 0506F8 80050B48 00804025 */  move        $t0, $a0
/* 0506FC 80050B4C 00854821 */  addu        $t1, $a0, $a1
/* 050700 80050B50 0109082B */  sltu        $at, $t0, $t1
/* 050704 80050B54 10200016 */  beqz        $at, .L80050BB0
/* 050708 80050B58 00000000 */   nop
/* 05070C 80050B5C 310A000F */  andi        $t2, $t0, 0xf
/* 050710 80050B60 11400007 */  beqz        $t2, .L80050B80
/* 050714 80050B64 2529FFF0 */   addiu      $t1, $t1, -0x10
/* 050718 80050B68 010A4023 */  subu        $t0, $t0, $t2
/* 05071C 80050B6C BD150000 */  cache       0x15, 0x0($t0)
/* 050720 80050B70 0109082B */  sltu        $at, $t0, $t1
/* 050724 80050B74 1020000E */  beqz        $at, .L80050BB0
/* 050728 80050B78 00000000 */   nop
/* 05072C 80050B7C 25080010 */  addiu       $t0, $t0, 0x10
.L80050B80:
/* 050730 80050B80 312A000F */  andi        $t2, $t1, 0xf
/* 050734 80050B84 11400006 */  beqz        $t2, .L80050BA0
/* 050738 80050B88 00000000 */   nop
/* 05073C 80050B8C 012A4823 */  subu        $t1, $t1, $t2
/* 050740 80050B90 BD350010 */  cache       0x15, 0x10($t1)
/* 050744 80050B94 0128082B */  sltu        $at, $t1, $t0
/* 050748 80050B98 14200005 */  bnez        $at, .L80050BB0
/* 05074C 80050B9C 00000000 */   nop
.L80050BA0:
/* 050750 80050BA0 BD110000 */  cache       0x11, 0x0($t0)
/* 050754 80050BA4 0109082B */  sltu        $at, $t0, $t1
/* 050758 80050BA8 1420FFFD */  bnez        $at, .L80050BA0
/* 05075C 80050BAC 25080010 */   addiu      $t0, $t0, 0x10
.L80050BB0:
/* 050760 80050BB0 03E00008 */  jr          $ra
/* 050764 80050BB4 00000000 */   nop
.L80050BB8:
/* 050768 80050BB8 3C088000 */  lui         $t0, 0x8000
/* 05076C 80050BBC 010B4821 */  addu        $t1, $t0, $t3
/* 050770 80050BC0 2529FFF0 */  addiu       $t1, $t1, -0x10
.L80050BC4:
/* 050774 80050BC4 BD010000 */  cache       0x01, 0x0($t0)
/* 050778 80050BC8 0109082B */  sltu        $at, $t0, $t1
/* 05077C 80050BCC 1420FFFD */  bnez        $at, .L80050BC4
/* 050780 80050BD0 25080010 */   addiu      $t0, $t0, 0x10
/* 050784 80050BD4 03E00008 */  jr          $ra
/* 050788 80050BD8 00000000 */   nop
/* 05078C 80050BDC 00000000 */  nop
