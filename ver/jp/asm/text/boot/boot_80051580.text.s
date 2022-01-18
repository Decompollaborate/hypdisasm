.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel func_80051580 # 0
/* 051130 80051580 18A00011 */  blez        $a1, .L800515C8
/* 051134 80051584 00000000 */   nop
/* 051138 80051588 240B4000 */  addiu       $t3, $zero, 0x4000
/* 05113C 8005158C 00AB082B */  sltu        $at, $a1, $t3
/* 051140 80051590 1020000F */  beqz        $at, .L800515D0
/* 051144 80051594 00000000 */   nop
/* 051148 80051598 00804025 */  move        $t0, $a0
/* 05114C 8005159C 00854821 */  addu        $t1, $a0, $a1
/* 051150 800515A0 0109082B */  sltu        $at, $t0, $t1
/* 051154 800515A4 10200008 */  beqz        $at, .L800515C8
/* 051158 800515A8 00000000 */   nop
/* 05115C 800515AC 310A001F */  andi        $t2, $t0, 0x1f
/* 051160 800515B0 2529FFE0 */  addiu       $t1, $t1, -0x20
/* 051164 800515B4 010A4023 */  subu        $t0, $t0, $t2
.L800515B8:
/* 051168 800515B8 BD100000 */  cache       0x10, 0x0($t0)
/* 05116C 800515BC 0109082B */  sltu        $at, $t0, $t1
/* 051170 800515C0 1420FFFD */  bnez        $at, .L800515B8
/* 051174 800515C4 25080020 */   addiu      $t0, $t0, 0x20
.L800515C8:
/* 051178 800515C8 03E00008 */  jr          $ra
/* 05117C 800515CC 00000000 */   nop
.L800515D0:
/* 051180 800515D0 3C088000 */  lui         $t0, 0x8000
/* 051184 800515D4 010B4821 */  addu        $t1, $t0, $t3
/* 051188 800515D8 2529FFE0 */  addiu       $t1, $t1, -0x20
.L800515DC:
/* 05118C 800515DC BD000000 */  cache       0x00, 0x0($t0)
/* 051190 800515E0 0109082B */  sltu        $at, $t0, $t1
/* 051194 800515E4 1420FFFD */  bnez        $at, .L800515DC
/* 051198 800515E8 25080020 */   addiu      $t0, $t0, 0x20
/* 05119C 800515EC 03E00008 */  jr          $ra
/* 0511A0 800515F0 00000000 */   nop
/* 0511A4 800515F4 00000000 */  nop
/* 0511A8 800515F8 00000000 */  nop
/* 0511AC 800515FC 00000000 */  nop
