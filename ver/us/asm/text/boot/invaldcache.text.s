.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osInvalDCache # 0
/* 052EF0 80053340 18A0001F */  blez        $a1, .L800533C0
/* 052EF4 80053344 00000000 */   nop
/* 052EF8 80053348 240B2000 */  addiu       $t3, $zero, 0x2000
/* 052EFC 8005334C 00AB082B */  sltu        $at, $a1, $t3
/* 052F00 80053350 1020001D */  beqz        $at, .L800533C8
/* 052F04 80053354 00000000 */   nop
/* 052F08 80053358 00804025 */  move        $t0, $a0
/* 052F0C 8005335C 00854821 */  addu        $t1, $a0, $a1
/* 052F10 80053360 0109082B */  sltu        $at, $t0, $t1
/* 052F14 80053364 10200016 */  beqz        $at, .L800533C0
/* 052F18 80053368 00000000 */   nop
/* 052F1C 8005336C 310A000F */  andi        $t2, $t0, 0xf
/* 052F20 80053370 11400007 */  beqz        $t2, .L80053390
/* 052F24 80053374 2529FFF0 */   addiu      $t1, $t1, -0x10
/* 052F28 80053378 010A4023 */  subu        $t0, $t0, $t2
/* 052F2C 8005337C BD150000 */  cache       0x15, 0x0($t0)
/* 052F30 80053380 0109082B */  sltu        $at, $t0, $t1
/* 052F34 80053384 1020000E */  beqz        $at, .L800533C0
/* 052F38 80053388 00000000 */   nop
/* 052F3C 8005338C 25080010 */  addiu       $t0, $t0, 0x10
.L80053390:
/* 052F40 80053390 312A000F */  andi        $t2, $t1, 0xf
/* 052F44 80053394 11400006 */  beqz        $t2, .L800533B0
/* 052F48 80053398 00000000 */   nop
/* 052F4C 8005339C 012A4823 */  subu        $t1, $t1, $t2
/* 052F50 800533A0 BD350010 */  cache       0x15, 0x10($t1)
/* 052F54 800533A4 0128082B */  sltu        $at, $t1, $t0
/* 052F58 800533A8 14200005 */  bnez        $at, .L800533C0
/* 052F5C 800533AC 00000000 */   nop
.L800533B0:
/* 052F60 800533B0 BD110000 */  cache       0x11, 0x0($t0)
/* 052F64 800533B4 0109082B */  sltu        $at, $t0, $t1
/* 052F68 800533B8 1420FFFD */  bnez        $at, .L800533B0
/* 052F6C 800533BC 25080010 */   addiu      $t0, $t0, 0x10
.L800533C0:
/* 052F70 800533C0 03E00008 */  jr          $ra
/* 052F74 800533C4 00000000 */   nop
.L800533C8:
/* 052F78 800533C8 3C088000 */  lui         $t0, 0x8000
/* 052F7C 800533CC 010B4821 */  addu        $t1, $t0, $t3
/* 052F80 800533D0 2529FFF0 */  addiu       $t1, $t1, -0x10
.L800533D4:
/* 052F84 800533D4 BD010000 */  cache       0x01, 0x0($t0)
/* 052F88 800533D8 0109082B */  sltu        $at, $t0, $t1
/* 052F8C 800533DC 1420FFFD */  bnez        $at, .L800533D4
/* 052F90 800533E0 25080010 */   addiu      $t0, $t0, 0x10
/* 052F94 800533E4 03E00008 */  jr          $ra
/* 052F98 800533E8 00000000 */   nop
/* 052F9C 800533EC 00000000 */  nop
