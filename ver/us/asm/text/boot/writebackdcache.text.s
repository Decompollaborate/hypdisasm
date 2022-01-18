.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel osWriteBackDCache # 0
/* 054320 80054770 18A00011 */  blez        $a1, .L800547B8
/* 054324 80054774 00000000 */   nop
/* 054328 80054778 240B2000 */  addiu       $t3, $zero, 0x2000
/* 05432C 8005477C 00AB082B */  sltu        $at, $a1, $t3
/* 054330 80054780 1020000F */  beqz        $at, .L800547C0
/* 054334 80054784 00000000 */   nop
/* 054338 80054788 00804025 */  move        $t0, $a0
/* 05433C 8005478C 00854821 */  addu        $t1, $a0, $a1
/* 054340 80054790 0109082B */  sltu        $at, $t0, $t1
/* 054344 80054794 10200008 */  beqz        $at, .L800547B8
/* 054348 80054798 00000000 */   nop
/* 05434C 8005479C 310A000F */  andi        $t2, $t0, 0xf
/* 054350 800547A0 2529FFF0 */  addiu       $t1, $t1, -0x10
/* 054354 800547A4 010A4023 */  subu        $t0, $t0, $t2
.L800547A8:
/* 054358 800547A8 BD190000 */  cache       0x19, 0x0($t0)
/* 05435C 800547AC 0109082B */  sltu        $at, $t0, $t1
/* 054360 800547B0 1420FFFD */  bnez        $at, .L800547A8
/* 054364 800547B4 25080010 */   addiu      $t0, $t0, 0x10
.L800547B8:
/* 054368 800547B8 03E00008 */  jr          $ra
/* 05436C 800547BC 00000000 */   nop
.L800547C0:
/* 054370 800547C0 3C088000 */  lui         $t0, 0x8000
/* 054374 800547C4 010B4821 */  addu        $t1, $t0, $t3
/* 054378 800547C8 2529FFF0 */  addiu       $t1, $t1, -0x10
.L800547CC:
/* 05437C 800547CC BD010000 */  cache       0x01, 0x0($t0)
/* 054380 800547D0 0109082B */  sltu        $at, $t0, $t1
/* 054384 800547D4 1420FFFD */  bnez        $at, .L800547CC
/* 054388 800547D8 25080010 */   addiu      $t0, $t0, 0x10
/* 05438C 800547DC 03E00008 */  jr          $ra
/* 054390 800547E0 00000000 */   nop
/* 054394 800547E4 00000000 */  nop
/* 054398 800547E8 00000000 */  nop
/* 05439C 800547EC 00000000 */  nop
