.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel lldiv # 0
/* 05D350 8005D7A0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05D354 8005D7A4 AFA40030 */  sw          $a0, 0x30($sp)
/* 05D358 8005D7A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05D35C 8005D7AC AFA60038 */  sw          $a2, 0x38($sp)
/* 05D360 8005D7B0 AFA7003C */  sw          $a3, 0x3c($sp)
/* 05D364 8005D7B4 00C02025 */  move        $a0, $a2
/* 05D368 8005D7B8 00E02825 */  move        $a1, $a3
/* 05D36C 8005D7BC 8FA70044 */  lw          $a3, 0x44($sp)
/* 05D370 8005D7C0 0C01449F */  jal         func_8005127C
/* 05D374 8005D7C4 8FA60040 */   lw         $a2, 0x40($sp)
/* 05D378 8005D7C8 AFA20020 */  sw          $v0, 0x20($sp)
/* 05D37C 8005D7CC AFA30024 */  sw          $v1, 0x24($sp)
/* 05D380 8005D7D0 8FA40040 */  lw          $a0, 0x40($sp)
/* 05D384 8005D7D4 8FA50044 */  lw          $a1, 0x44($sp)
/* 05D388 8005D7D8 00403025 */  move        $a2, $v0
/* 05D38C 8005D7DC 0C0144B6 */  jal         func_800512D8
/* 05D390 8005D7E0 00603825 */   move       $a3, $v1
/* 05D394 8005D7E4 8FAE0038 */  lw          $t6, 0x38($sp)
/* 05D398 8005D7E8 8FAF003C */  lw          $t7, 0x3c($sp)
/* 05D39C 8005D7EC 8FA80020 */  lw          $t0, 0x20($sp)
/* 05D3A0 8005D7F0 01C2C023 */  subu        $t8, $t6, $v0
/* 05D3A4 8005D7F4 01E3082B */  sltu        $at, $t7, $v1
/* 05D3A8 8005D7F8 0301C023 */  subu        $t8, $t8, $at
/* 05D3AC 8005D7FC 01E3C823 */  subu        $t9, $t7, $v1
/* 05D3B0 8005D800 AFB9002C */  sw          $t9, 0x2c($sp)
/* 05D3B4 8005D804 AFB80028 */  sw          $t8, 0x28($sp)
/* 05D3B8 8005D808 1D000017 */  bgtz        $t0, .L8005D868
/* 05D3BC 8005D80C 8FA90024 */   lw         $t1, 0x24($sp)
/* 05D3C0 8005D810 05000003 */  bltz        $t0, .L8005D820
/* 05D3C4 8005D814 00000000 */   nop
/* 05D3C8 8005D818 10000014 */  b           .L8005D86C
/* 05D3CC 8005D81C 27A80020 */   addiu      $t0, $sp, 0x20
.L8005D820:
/* 05D3D0 8005D820 07020012 */  bltzl       $t8, .L8005D86C
/* 05D3D4 8005D824 27A80020 */   addiu      $t0, $sp, 0x20
/* 05D3D8 8005D828 1F000003 */  bgtz        $t8, .L8005D838
/* 05D3DC 8005D82C 252B0001 */   addiu      $t3, $t1, 0x1
/* 05D3E0 8005D830 5320000E */  beql        $t9, $zero, .L8005D86C
/* 05D3E4 8005D834 27A80020 */   addiu      $t0, $sp, 0x20
.L8005D838:
/* 05D3E8 8005D838 8FAC0040 */  lw          $t4, 0x40($sp)
/* 05D3EC 8005D83C 8FAD0044 */  lw          $t5, 0x44($sp)
/* 05D3F0 8005D840 2D610001 */  sltiu       $at, $t3, 0x1
/* 05D3F4 8005D844 01015021 */  addu        $t2, $t0, $at
/* 05D3F8 8005D848 030C7023 */  subu        $t6, $t8, $t4
/* 05D3FC 8005D84C 032D082B */  sltu        $at, $t9, $t5
/* 05D400 8005D850 01C17023 */  subu        $t6, $t6, $at
/* 05D404 8005D854 032D7823 */  subu        $t7, $t9, $t5
/* 05D408 8005D858 AFAA0020 */  sw          $t2, 0x20($sp)
/* 05D40C 8005D85C AFAB0024 */  sw          $t3, 0x24($sp)
/* 05D410 8005D860 AFAF002C */  sw          $t7, 0x2c($sp)
/* 05D414 8005D864 AFAE0028 */  sw          $t6, 0x28($sp)
.L8005D868:
/* 05D418 8005D868 27A80020 */  addiu       $t0, $sp, 0x20
.L8005D86C:
/* 05D41C 8005D86C 8FA20030 */  lw          $v0, 0x30($sp)
/* 05D420 8005D870 8D010000 */  lw          $at, 0x0($t0)
/* 05D424 8005D874 AC410000 */  sw          $at, 0x0($v0)
/* 05D428 8005D878 8D0B0004 */  lw          $t3, 0x4($t0)
/* 05D42C 8005D87C AC4B0004 */  sw          $t3, 0x4($v0)
/* 05D430 8005D880 8D010008 */  lw          $at, 0x8($t0)
/* 05D434 8005D884 AC410008 */  sw          $at, 0x8($v0)
/* 05D438 8005D888 8D0B000C */  lw          $t3, 0xc($t0)
/* 05D43C 8005D88C AC4B000C */  sw          $t3, 0xc($v0)
/* 05D440 8005D890 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05D444 8005D894 27BD0030 */  addiu       $sp, $sp, 0x30
/* 05D448 8005D898 03E00008 */  jr          $ra
/* 05D44C 8005D89C 00000000 */   nop

glabel func_8005D8A0 # 1
/* 05D450 8005D8A0 00A6001A */  div         $zero, $a1, $a2
/* 05D454 8005D8A4 00001012 */  mflo        $v0
/* 05D458 8005D8A8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 05D45C 8005D8AC 14C00002 */  bnez        $a2, .L8005D8B8
/* 05D460 8005D8B0 00000000 */   nop
/* 05D464 8005D8B4 0007000D */  break       7
.L8005D8B8:
/* 05D468 8005D8B8 2401FFFF */  addiu       $at, $zero, -0x1
/* 05D46C 8005D8BC 14C10004 */  bne         $a2, $at, .L8005D8D0
/* 05D470 8005D8C0 3C018000 */   lui        $at, 0x8000
/* 05D474 8005D8C4 14A10002 */  bne         $a1, $at, .L8005D8D0
/* 05D478 8005D8C8 00000000 */   nop
/* 05D47C 8005D8CC 0006000D */  break       6
.L8005D8D0:
/* 05D480 8005D8D0 00C20019 */  multu       $a2, $v0
/* 05D484 8005D8D4 AFA20000 */  sw          $v0, 0x0($sp)
/* 05D488 8005D8D8 27AF0000 */  addiu       $t7, $sp, 0x0
/* 05D48C 8005D8DC 00007012 */  mflo        $t6
/* 05D490 8005D8E0 00AE1823 */  subu        $v1, $a1, $t6
/* 05D494 8005D8E4 04410008 */  bgez        $v0, .L8005D908
/* 05D498 8005D8E8 AFA30004 */   sw         $v1, 0x4($sp)
/* 05D49C 8005D8EC AFA20000 */  sw          $v0, 0x0($sp)
/* 05D4A0 8005D8F0 18600005 */  blez        $v1, .L8005D908
/* 05D4A4 8005D8F4 AFA30004 */   sw         $v1, 0x4($sp)
/* 05D4A8 8005D8F8 24420001 */  addiu       $v0, $v0, 0x1
/* 05D4AC 8005D8FC 00661823 */  subu        $v1, $v1, $a2
/* 05D4B0 8005D900 AFA30004 */  sw          $v1, 0x4($sp)
/* 05D4B4 8005D904 AFA20000 */  sw          $v0, 0x0($sp)
.L8005D908:
/* 05D4B8 8005D908 8DE10000 */  lw          $at, 0x0($t7)
/* 05D4BC 8005D90C 00801025 */  move        $v0, $a0
/* 05D4C0 8005D910 AC810000 */  sw          $at, 0x0($a0)
/* 05D4C4 8005D914 8DE80004 */  lw          $t0, 0x4($t7)
/* 05D4C8 8005D918 27BD0008 */  addiu       $sp, $sp, 0x8
/* 05D4CC 8005D91C 03E00008 */  jr          $ra
/* 05D4D0 8005D920 AC880004 */   sw         $t0, 0x4($a0)
/* 05D4D4 8005D924 00000000 */  nop
/* 05D4D8 8005D928 00000000 */  nop
/* 05D4DC 8005D92C 00000000 */  nop
