.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054770 # 0
/* 000000 80054770 18A00011 */  blez        $a1, .L800547B8
/* 000004 80054774 00000000 */   nop
/* 000008 80054778 240B2000 */  addiu       $t3, $zero, 0x2000
/* 00000C 8005477C 00AB082B */  sltu        $at, $a1, $t3
/* 000010 80054780 1020000F */  beq         $at, $zero, .L800547C0
/* 000014 80054784 00000000 */   nop
/* 000018 80054788 00804025 */  move        $t0, $a0
/* 00001C 8005478C 00854821 */  addu        $t1, $a0, $a1
/* 000020 80054790 0109082B */  sltu        $at, $t0, $t1
/* 000024 80054794 10200008 */  beq         $at, $zero, .L800547B8
/* 000028 80054798 00000000 */   nop
/* 00002C 8005479C 310A000F */  andi        $t2, $t0, 0xf
/* 000030 800547A0 2529FFF0 */  addiu       $t1, $t1, -0x10
/* 000034 800547A4 010A4023 */  subu        $t0, $t0, $t2
.L800547A8:
/* 000038 800547A8 BD190000 */  (0x2f)      $t9, 0x0($t0)
/* 00003C 800547AC 0109082B */  sltu        $at, $t0, $t1
/* 000040 800547B0 1420FFFD */  bne         $at, $zero, .L800547A8
/* 000044 800547B4 25080010 */   addiu      $t0, $t0, 0x10
.L800547B8:
/* 000048 800547B8 03E00008 */  jr          $ra
/* 00004C 800547BC 00000000 */   nop
.L800547C0:
/* 000050 800547C0 3C088000 */  lui         $t0, %hi(D_80000010)
/* 000054 800547C4 010B4821 */  addu        $t1, $t0, $t3
/* 000058 800547C8 2529FFF0 */  addiu       $t1, $t1, -0x10
.L800547CC:
/* 00005C 800547CC BD010000 */  (0x2f)      $at, %lo(D_80000000)($t0)
/* 000060 800547D0 0109082B */  sltu        $at, $t0, $t1
/* 000064 800547D4 1420FFFD */  bne         $at, $zero, .L800547CC
/* 000068 800547D8 25080010 */   addiu      $t0, $t0, %lo(D_80000010)
/* 00006C 800547DC 03E00008 */  jr          $ra
/* 000070 800547E0 00000000 */   nop
/* 000074 800547E4 00000000 */  nop
/* 000078 800547E8 00000000 */  nop
/* 00007C 800547EC 00000000 */  nop
