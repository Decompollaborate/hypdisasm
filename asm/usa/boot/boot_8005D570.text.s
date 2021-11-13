.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D570 # 0
/* 05D120 8005D570 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 05D124 8005D574 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05D128 8005D578 AFA40038 */  sw          $a0, 0x38($sp)
/* 05D12C 8005D57C AFB20020 */  sw          $s2, 0x20($sp)
/* 05D130 8005D580 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05D134 8005D584 0C015FFC */  jal         func_80057FF0
/* 05D138 8005D588 AFB00018 */   sw         $s0, 0x18($sp)
/* 05D13C 8005D58C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 05D140 8005D590 00408025 */  move        $s0, $v0
/* 05D144 8005D594 15C00005 */  bne         $t6, $zero, .L8005D5AC
/* 05D148 8005D598 00000000 */   nop
/* 05D14C 8005D59C 3C0F800A */  lui         $t7, %hi(D_8009F8A0)
/* 05D150 8005D5A0 8DEFF8A0 */  lw          $t7, %lo(D_8009F8A0)($t7)
/* 05D154 8005D5A4 10000009 */  b           .L8005D5CC
/* 05D158 8005D5A8 AFAF0038 */   sw         $t7, 0x38($sp)
.L8005D5AC:
/* 05D15C 8005D5AC 8FB80038 */  lw          $t8, 0x38($sp)
/* 05D160 8005D5B0 24010001 */  addiu       $at, $zero, 0x1
/* 05D164 8005D5B4 97190010 */  lhu         $t9, 0x10($t8)
/* 05D168 8005D5B8 13210004 */  beq         $t9, $at, .L8005D5CC
/* 05D16C 8005D5BC 00000000 */   nop
/* 05D170 8005D5C0 8F040008 */  lw          $a0, 0x8($t8)
/* 05D174 8005D5C4 0C016020 */  jal         func_80058080
/* 05D178 8005D5C8 03002825 */   move       $a1, $t8
.L8005D5CC:
/* 05D17C 8005D5CC 3C08800A */  lui         $t0, %hi(D_8009F89C)
/* 05D180 8005D5D0 8D08F89C */  lw          $t0, %lo(D_8009F89C)($t0)
/* 05D184 8005D5D4 8FA90038 */  lw          $t1, 0x38($sp)
/* 05D188 8005D5D8 15090005 */  bne         $t0, $t1, .L8005D5F0
/* 05D18C 8005D5DC 00000000 */   nop
/* 05D190 8005D5E0 8D0A000C */  lw          $t2, 0xc($t0)
/* 05D194 8005D5E4 3C01800A */  lui         $at, %hi(D_8009F89C)
/* 05D198 8005D5E8 10000013 */  b           .L8005D638
/* 05D19C 8005D5EC AC2AF89C */   sw         $t2, %lo(D_8009F89C)($at)
.L8005D5F0:
/* 05D1A0 8005D5F0 3C11800A */  lui         $s1, %hi(D_8009F89C)
/* 05D1A4 8005D5F4 8E31F89C */  lw          $s1, %lo(D_8009F89C)($s1)
/* 05D1A8 8005D5F8 2401FFFF */  addiu       $at, $zero, -0x1
/* 05D1AC 8005D5FC 8E2B0004 */  lw          $t3, 0x4($s1)
/* 05D1B0 8005D600 1161000D */  beq         $t3, $at, .L8005D638
/* 05D1B4 8005D604 00000000 */   nop
.L8005D608:
/* 05D1B8 8005D608 8E32000C */  lw          $s2, 0xc($s1)
/* 05D1BC 8005D60C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 05D1C0 8005D610 164C0004 */  bne         $s2, $t4, .L8005D624
/* 05D1C4 8005D614 00000000 */   nop
/* 05D1C8 8005D618 8D8D000C */  lw          $t5, 0xc($t4)
/* 05D1CC 8005D61C 10000006 */  b           .L8005D638
/* 05D1D0 8005D620 AE2D000C */   sw         $t5, 0xc($s1)
.L8005D624:
/* 05D1D4 8005D624 02408825 */  move        $s1, $s2
/* 05D1D8 8005D628 8E2E0004 */  lw          $t6, 0x4($s1)
/* 05D1DC 8005D62C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05D1E0 8005D630 15C1FFF5 */  bne         $t6, $at, .L8005D608
/* 05D1E4 8005D634 00000000 */   nop
.L8005D638:
/* 05D1E8 8005D638 3C19800A */  lui         $t9, %hi(D_8009F8A0)
/* 05D1EC 8005D63C 8F39F8A0 */  lw          $t9, %lo(D_8009F8A0)($t9)
/* 05D1F0 8005D640 8FAF0038 */  lw          $t7, 0x38($sp)
/* 05D1F4 8005D644 15F90003 */  bne         $t7, $t9, .L8005D654
/* 05D1F8 8005D648 00000000 */   nop
/* 05D1FC 8005D64C 0C015F69 */  jal         func_80057DA4
/* 05D200 8005D650 00000000 */   nop
.L8005D654:
/* 05D204 8005D654 0C016018 */  jal         func_80058060
/* 05D208 8005D658 02002025 */   move       $a0, $s0
/* 05D20C 8005D65C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05D210 8005D660 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D214 8005D664 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05D218 8005D668 8FB20020 */  lw          $s2, 0x20($sp)
/* 05D21C 8005D66C 03E00008 */  jr          $ra
/* 05D220 8005D670 27BD0038 */   addiu      $sp, $sp, 0x38
/* 05D224 8005D674 00000000 */  nop
/* 05D228 8005D678 00000000 */  nop
/* 05D22C 8005D67C 00000000 */  nop
