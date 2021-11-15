.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osGetIntMask # 0
/* 054D10 80055160 40026000 */  mfc0        $v0, Status
/* 054D14 80055164 3042FF01 */  andi        $v0, $v0, 0xff01
/* 054D18 80055168 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 054D1C 8005516C 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 054D20 80055170 8D090000 */  lw          $t1, 0x0($t0)
/* 054D24 80055174 2401FFFF */  addiu       $at, $zero, -0x1
/* 054D28 80055178 01214026 */  xor         $t0, $t1, $at
/* 054D2C 8005517C 3108FF00 */  andi        $t0, $t0, 0xff00
/* 054D30 80055180 00481025 */  or          $v0, $v0, $t0
/* 054D34 80055184 3C09A430 */  lui         $t1, %hi(D_A430000C)
/* 054D38 80055188 8D29000C */  lw          $t1, %lo(D_A430000C)($t1)
/* 054D3C 8005518C 11200008 */  beq         $t1, $zero, .L800551B0
/* 054D40 80055190 3C08800A */   lui        $t0, %hi(__OSGlobalIntMask)
/* 054D44 80055194 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 054D48 80055198 8D080000 */  lw          $t0, 0x0($t0)
/* 054D4C 8005519C 00084402 */  srl         $t0, $t0, 16
/* 054D50 800551A0 2401FFFF */  addiu       $at, $zero, -0x1
/* 054D54 800551A4 01014026 */  xor         $t0, $t0, $at
/* 054D58 800551A8 3108003F */  andi        $t0, $t0, 0x3f
/* 054D5C 800551AC 01284825 */  or          $t1, $t1, $t0
.L800551B0:
/* 054D60 800551B0 00095400 */  sll         $t2, $t1, 16
/* 054D64 800551B4 004A1025 */  or          $v0, $v0, $t2
/* 054D68 800551B8 03E00008 */  jr          $ra
/* 054D6C 800551BC 00000000 */   nop
