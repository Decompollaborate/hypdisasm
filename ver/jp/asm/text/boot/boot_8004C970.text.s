.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004C970 # 0
/* 04C520 8004C970 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04C524 8004C974 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04C528 8004C978 3C0E0200 */  lui         $t6, (0x20004E0 >> 16)
/* 04C52C 8004C97C 35CE04E0 */  ori         $t6, $t6, (0x20004E0 & 0xFFFF)
/* 04C530 8004C980 240F02E0 */  addiu       $t7, $zero, 0x2e0
/* 04C534 8004C984 ACAF0004 */  sw          $t7, 0x4($a1)
/* 04C538 8004C988 ACAE0000 */  sw          $t6, 0x0($a1)
/* 04C53C 8004C98C 3C18800A */  lui         $t8, %hi(D_800A2E64)
/* 04C540 8004C990 8F182E64 */  lw          $t8, %lo(D_800A2E64)($t8)
/* 04C544 8004C994 24A50008 */  addiu       $a1, $a1, 0x8
/* 04C548 8004C998 8F19003C */  lw          $t9, 0x3c($t8)
/* 04C54C 8004C99C 8F390004 */  lw          $t9, 0x4($t9)
/* 04C550 8004C9A0 0320F809 */  jalr        $t9
/* 04C554 8004C9A4 00000000 */   nop
/* 04C558 8004C9A8 3C030C00 */  lui         $v1, (0xC007FFF >> 16)
/* 04C55C 8004C9AC 34637FFF */  ori         $v1, $v1, (0xC007FFF & 0xFFFF)
/* 04C560 8004C9B0 3C0807C0 */  lui         $t0, (0x7C004E0 >> 16)
/* 04C564 8004C9B4 3C090930 */  lui         $t1, (0x9300650 >> 16)
/* 04C568 8004C9B8 350804E0 */  ori         $t0, $t0, (0x7C004E0 & 0xFFFF)
/* 04C56C 8004C9BC 35290650 */  ori         $t1, $t1, (0x9300650 & 0xFFFF)
/* 04C570 8004C9C0 AC480004 */  sw          $t0, 0x4($v0)
/* 04C574 8004C9C4 AC430000 */  sw          $v1, 0x0($v0)
/* 04C578 8004C9C8 AC49000C */  sw          $t1, 0xc($v0)
/* 04C57C 8004C9CC AC430008 */  sw          $v1, 0x8($v0)
/* 04C580 8004C9D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04C584 8004C9D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04C588 8004C9D8 24420010 */  addiu       $v0, $v0, 0x10
/* 04C58C 8004C9DC 03E00008 */  jr          $ra
/* 04C590 8004C9E0 00000000 */   nop
/* 04C594 8004C9E4 00000000 */  nop
/* 04C598 8004C9E8 00000000 */  nop
/* 04C59C 8004C9EC 00000000 */  nop
