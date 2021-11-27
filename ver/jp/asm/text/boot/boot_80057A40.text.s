.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057A40 # 0
/* 0575F0 80057A40 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0575F4 80057A44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0575F8 80057A48 240E0001 */  addiu       $t6, $zero, 0x1
/* 0575FC 80057A4C 3C01800A */  lui         $at, %hi(D_800A4DA0)
/* 057600 80057A50 3C048010 */  lui         $a0, %hi(D_80104BE8)
/* 057604 80057A54 3C058010 */  lui         $a1, %hi(D_80104BE0)
/* 057608 80057A58 AC2E4DA0 */  sw          $t6, %lo(D_800A4DA0)($at)
/* 05760C 80057A5C 24A54BE0 */  addiu       $a1, $a1, %lo(D_80104BE0)
/* 057610 80057A60 24844BE8 */  addiu       $a0, $a0, %lo(D_80104BE8)
/* 057614 80057A64 0C013AEC */  jal         func_8004EBB0
/* 057618 80057A68 24060001 */   addiu      $a2, $zero, 0x1
/* 05761C 80057A6C 3C048010 */  lui         $a0, %hi(D_80104BE8)
/* 057620 80057A70 24844BE8 */  addiu       $a0, $a0, %lo(D_80104BE8)
/* 057624 80057A74 00002825 */  move        $a1, $zero
/* 057628 80057A78 0C013A98 */  jal         func_8004EA60
/* 05762C 80057A7C 00003025 */   move       $a2, $zero
/* 057630 80057A80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057634 80057A84 27BD0018 */  addiu       $sp, $sp, 0x18
/* 057638 80057A88 03E00008 */  jr          $ra
/* 05763C 80057A8C 00000000 */   nop

glabel func_80057A90 # 1
/* 057640 80057A90 3C0E800A */  lui         $t6, %hi(D_800A4DA0)
/* 057644 80057A94 8DCE4DA0 */  lw          $t6, %lo(D_800A4DA0)($t6)
/* 057648 80057A98 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05764C 80057A9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 057650 80057AA0 15C00003 */  bnez        $t6, .L80057AB0
/* 057654 80057AA4 00000000 */   nop
/* 057658 80057AA8 0C015E90 */  jal         func_80057A40
/* 05765C 80057AAC 00000000 */   nop
.L80057AB0:
/* 057660 80057AB0 3C048010 */  lui         $a0, %hi(D_80104BE8)
/* 057664 80057AB4 24844BE8 */  addiu       $a0, $a0, %lo(D_80104BE8)
/* 057668 80057AB8 27A5001C */  addiu       $a1, $sp, 0x1c
/* 05766C 80057ABC 0C013A48 */  jal         func_8004E920
/* 057670 80057AC0 24060001 */   addiu      $a2, $zero, 0x1
/* 057674 80057AC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057678 80057AC8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 05767C 80057ACC 03E00008 */  jr          $ra
/* 057680 80057AD0 00000000 */   nop

glabel func_80057AD4 # 2
/* 057684 80057AD4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057688 80057AD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05768C 80057ADC 3C048010 */  lui         $a0, %hi(D_80104BE8)
/* 057690 80057AE0 24844BE8 */  addiu       $a0, $a0, %lo(D_80104BE8)
/* 057694 80057AE4 00002825 */  move        $a1, $zero
/* 057698 80057AE8 0C013A98 */  jal         func_8004EA60
/* 05769C 80057AEC 00003025 */   move       $a2, $zero
/* 0576A0 80057AF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0576A4 80057AF4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0576A8 80057AF8 03E00008 */  jr          $ra
/* 0576AC 80057AFC 00000000 */   nop

glabel func_80057B00 # 3
/* 0576B0 80057B00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0576B4 80057B04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0576B8 80057B08 3C04800A */  lui         $a0, %hi(D_800A4DB0)
/* 0576BC 80057B0C 24844DB0 */  addiu       $a0, $a0, %lo(D_800A4DB0)
/* 0576C0 80057B10 0C013C58 */  jal         func_8004F160
/* 0576C4 80057B14 24050060 */   addiu      $a1, $zero, 0x60
/* 0576C8 80057B18 3C0E800A */  lui         $t6, %hi(D_800A4DB0)
/* 0576CC 80057B1C 25CE4DB0 */  addiu       $t6, $t6, %lo(D_800A4DB0)
/* 0576D0 80057B20 3C01800A */  lui         $at, %hi(D_800A4E10)
/* 0576D4 80057B24 AC2E4E10 */  sw          $t6, %lo(D_800A4E10)($at)
/* 0576D8 80057B28 3C01800A */  lui         $at, %hi(D_800A4E14)
/* 0576DC 80057B2C 25CF0030 */  addiu       $t7, $t6, 0x30
/* 0576E0 80057B30 AC2F4E14 */  sw          $t7, %lo(D_800A4E14)($at)
/* 0576E4 80057B34 24180001 */  addiu       $t8, $zero, 0x1
/* 0576E8 80057B38 A5D80032 */  sh          $t8, 0x32($t6)
/* 0576EC 80057B3C 3C08800A */  lui         $t0, %hi(D_800A4E10)
/* 0576F0 80057B40 8D084E10 */  lw          $t0, %lo(D_800A4E10)($t0)
/* 0576F4 80057B44 24190001 */  addiu       $t9, $zero, 0x1
/* 0576F8 80057B48 3C0A800A */  lui         $t2, %hi(D_800A4E14)
/* 0576FC 80057B4C A5190002 */  sh          $t9, 0x2($t0)
/* 057700 80057B50 8D4A4E14 */  lw          $t2, %lo(D_800A4E14)($t2)
/* 057704 80057B54 3C098000 */  lui         $t1, 0x8000
/* 057708 80057B58 3C0C800A */  lui         $t4, %hi(D_800A4E10)
/* 05770C 80057B5C AD490004 */  sw          $t1, 0x4($t2)
/* 057710 80057B60 8D8C4E10 */  lw          $t4, %lo(D_800A4E10)($t4)
/* 057714 80057B64 3C0B8000 */  lui         $t3, 0x8000
/* 057718 80057B68 3C0D8000 */  lui         $t5, %hi(osTvType)
/* 05771C 80057B6C AD8B0004 */  sw          $t3, 0x4($t4)
/* 057720 80057B70 8DAD0300 */  lw          $t5, %lo(osTvType)($t5)
/* 057724 80057B74 15A00007 */  bnez        $t5, .L80057B94
/* 057728 80057B78 00000000 */   nop
/* 05772C 80057B7C 3C18800A */  lui         $t8, %hi(D_800A4E14)
/* 057730 80057B80 8F184E14 */  lw          $t8, %lo(D_800A4E14)($t8)
/* 057734 80057B84 3C0F800A */  lui         $t7, %hi(D_800A4FB0)
/* 057738 80057B88 25EF4FB0 */  addiu       $t7, $t7, %lo(D_800A4FB0)
/* 05773C 80057B8C 10000011 */  b           .L80057BD4
/* 057740 80057B90 AF0F0008 */   sw         $t7, 0x8($t8)
.L80057B94:
/* 057744 80057B94 3C0E8000 */  lui         $t6, %hi(osTvType)
/* 057748 80057B98 8DCE0300 */  lw          $t6, %lo(osTvType)($t6)
/* 05774C 80057B9C 24010002 */  addiu       $at, $zero, 0x2
/* 057750 80057BA0 15C10007 */  bne         $t6, $at, .L80057BC0
/* 057754 80057BA4 00000000 */   nop
/* 057758 80057BA8 3C08800A */  lui         $t0, %hi(D_800A4E14)
/* 05775C 80057BAC 8D084E14 */  lw          $t0, %lo(D_800A4E14)($t0)
/* 057760 80057BB0 3C19800A */  lui         $t9, %hi(D_800A5000)
/* 057764 80057BB4 27395000 */  addiu       $t9, $t9, %lo(D_800A5000)
/* 057768 80057BB8 10000006 */  b           .L80057BD4
/* 05776C 80057BBC AD190008 */   sw         $t9, 0x8($t0)
.L80057BC0:
/* 057770 80057BC0 3C0A800A */  lui         $t2, %hi(D_800A4E14)
/* 057774 80057BC4 8D4A4E14 */  lw          $t2, %lo(D_800A4E14)($t2)
/* 057778 80057BC8 3C09800A */  lui         $t1, %hi(D_800A5050)
/* 05777C 80057BCC 25295050 */  addiu       $t1, $t1, %lo(D_800A5050)
/* 057780 80057BD0 AD490008 */  sw          $t1, 0x8($t2)
.L80057BD4:
/* 057784 80057BD4 3C0C800A */  lui         $t4, %hi(D_800A4E14)
/* 057788 80057BD8 8D8C4E14 */  lw          $t4, %lo(D_800A4E14)($t4)
/* 05778C 80057BDC 240B0020 */  addiu       $t3, $zero, 0x20
/* 057790 80057BE0 3C0D800A */  lui         $t5, %hi(D_800A4E14)
/* 057794 80057BE4 A58B0000 */  sh          $t3, 0x0($t4)
/* 057798 80057BE8 8DAD4E14 */  lw          $t5, %lo(D_800A4E14)($t5)
/* 05779C 80057BEC 3C0EA440 */  lui         $t6, %hi(D_A4400010)
/* 0577A0 80057BF0 8DAF0008 */  lw          $t7, 0x8($t5)
/* 0577A4 80057BF4 8DF80004 */  lw          $t8, 0x4($t7)
/* 0577A8 80057BF8 ADB8000C */  sw          $t8, 0xc($t5)
/* 0577AC 80057BFC 8DD90010 */  lw          $t9, %lo(D_A4400010)($t6)
/* 0577B0 80057C00 2F21000B */  sltiu       $at, $t9, 0xb
/* 0577B4 80057C04 14200006 */  bnez        $at, .L80057C20
/* 0577B8 80057C08 00000000 */   nop
.L80057C0C:
/* 0577BC 80057C0C 3C08A440 */  lui         $t0, %hi(D_A4400010)
/* 0577C0 80057C10 8D090010 */  lw          $t1, %lo(D_A4400010)($t0)
/* 0577C4 80057C14 2D21000B */  sltiu       $at, $t1, 0xb
/* 0577C8 80057C18 1020FFFC */  beqz        $at, .L80057C0C
/* 0577CC 80057C1C 00000000 */   nop
.L80057C20:
/* 0577D0 80057C20 3C0AA440 */  lui         $t2, %hi(D_A4400000)
/* 0577D4 80057C24 0C016468 */  jal         func_800591A0
/* 0577D8 80057C28 AD400000 */   sw         $zero, %lo(D_A4400000)($t2)
/* 0577DC 80057C2C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0577E0 80057C30 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0577E4 80057C34 03E00008 */  jr          $ra
/* 0577E8 80057C38 00000000 */   nop
/* 0577EC 80057C3C 00000000 */  nop
