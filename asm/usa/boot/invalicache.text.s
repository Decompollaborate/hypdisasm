.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osInvalICache # 0
/* 053410 80053860 18A00011 */  blez        $a1, .L800538A8
/* 053414 80053864 00000000 */   nop
/* 053418 80053868 240B4000 */  addiu       $t3, $zero, 0x4000
/* 05341C 8005386C 00AB082B */  sltu        $at, $a1, $t3
/* 053420 80053870 1020000F */  beq         $at, $zero, .L800538B0
/* 053424 80053874 00000000 */   nop
/* 053428 80053878 00804025 */  move        $t0, $a0
/* 05342C 8005387C 00854821 */  addu        $t1, $a0, $a1
/* 053430 80053880 0109082B */  sltu        $at, $t0, $t1
/* 053434 80053884 10200008 */  beq         $at, $zero, .L800538A8
/* 053438 80053888 00000000 */   nop
/* 05343C 8005388C 310A001F */  andi        $t2, $t0, 0x1f
/* 053440 80053890 2529FFE0 */  addiu       $t1, $t1, -0x20
/* 053444 80053894 010A4023 */  subu        $t0, $t0, $t2
.L80053898:
/* 053448 80053898 BD100000 */  (0x2f)      $s0, 0x0($t0)
/* 05344C 8005389C 0109082B */  sltu        $at, $t0, $t1
/* 053450 800538A0 1420FFFD */  bne         $at, $zero, .L80053898
/* 053454 800538A4 25080020 */   addiu      $t0, $t0, 0x20
.L800538A8:
/* 053458 800538A8 03E00008 */  jr          $ra
/* 05345C 800538AC 00000000 */   nop
.L800538B0:
/* 053460 800538B0 3C088000 */  lui         $t0, %hi(D_80000020)
/* 053464 800538B4 010B4821 */  addu        $t1, $t0, $t3
/* 053468 800538B8 2529FFE0 */  addiu       $t1, $t1, -0x20
.L800538BC:
/* 05346C 800538BC BD000000 */  (0x2f)      $zero, %lo(D_80000000)($t0)
/* 053470 800538C0 0109082B */  sltu        $at, $t0, $t1
/* 053474 800538C4 1420FFFD */  bne         $at, $zero, .L800538BC
/* 053478 800538C8 25080020 */   addiu      $t0, $t0, %lo(D_80000020)
/* 05347C 800538CC 03E00008 */  jr          $ra
/* 053480 800538D0 00000000 */   nop
/* 053484 800538D4 00000000 */  nop
/* 053488 800538D8 00000000 */  nop
/* 05348C 800538DC 00000000 */  nop
