.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80015920 # 0
/* 0154D0 80015920 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0154D4 80015924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0154D8 80015928 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 0154DC 8001592C 3C050003 */  lui         $a1, 0x3
/* 0154E0 80015930 34A52000 */  ori         $a1, $a1, 0x2000
/* 0154E4 80015934 2484B0B0 */  addiu       $a0, $a0, %lo(D_800BB0B0)
/* 0154E8 80015938 2406001F */  addiu       $a2, $zero, 0x1f
/* 0154EC 8001593C 0C00F538 */  jal         func_8003D4E0
/* 0154F0 80015940 24070010 */   addiu      $a3, $zero, 0x10
/* 0154F4 80015944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0154F8 80015948 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0154FC 8001594C 03E00008 */  jr          $ra
/* 015500 80015950 00000000 */   nop

glabel func_80015954 # 1
/* 015504 80015954 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015508 80015958 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01550C 8001595C 3C04800C */  lui         $a0, %hi(D_800BB0B0)
/* 015510 80015960 0C00F554 */  jal         func_8003D550
/* 015514 80015964 2484B0B0 */   addiu      $a0, $a0, %lo(D_800BB0B0)
/* 015518 80015968 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01551C 8001596C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015520 80015970 03E00008 */  jr          $ra
/* 015524 80015974 00000000 */   nop

glabel func_80015978 # 2
/* 015528 80015978 3C188007 */  lui         $t8, %hi(D_80073558)
/* 01552C 8001597C 27183558 */  addiu       $t8, $t8, %lo(D_80073558)
/* 015530 80015980 00057880 */  sll         $t7, $a1, 2
/* 015534 80015984 01F81021 */  addu        $v0, $t7, $t8
/* 015538 80015988 8C430000 */  lw          $v1, 0x0($v0)
/* 01553C 8001598C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015540 80015990 8C480004 */  lw          $t0, 0x4($v0)
/* 015544 80015994 3C1900BF */  lui         $t9, 0xbf
/* 015548 80015998 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01554C 8001599C AFA50024 */  sw          $a1, 0x24($sp)
/* 015550 800159A0 00C03825 */  move        $a3, $a2
/* 015554 800159A4 27393F80 */  addiu       $t9, $t9, 0x3f80
/* 015558 800159A8 AFA70028 */  sw          $a3, 0x28($sp)
/* 01555C 800159AC 00792821 */  addu        $a1, $v1, $t9
/* 015560 800159B0 AFA30018 */  sw          $v1, 0x18($sp)
/* 015564 800159B4 0C00F58A */  jal         func_8003D628
/* 015568 800159B8 01033023 */   subu       $a2, $t0, $v1
/* 01556C 800159BC 8FA70028 */  lw          $a3, 0x28($sp)
/* 015570 800159C0 8FA30018 */  lw          $v1, 0x18($sp)
/* 015574 800159C4 8CE90000 */  lw          $t1, 0x0($a3)
/* 015578 800159C8 01235023 */  subu        $t2, $t1, $v1
/* 01557C 800159CC ACEA0000 */  sw          $t2, 0x0($a3)
/* 015580 800159D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015584 800159D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015588 800159D8 03E00008 */  jr          $ra
/* 01558C 800159DC 00000000 */   nop

glabel func_800159E0 # 3
/* 015590 800159E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015594 800159E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015598 800159E8 AFA40020 */  sw          $a0, 0x20($sp)
/* 01559C 800159EC 0C00565E */  jal         func_80015978
/* 0155A0 800159F0 27A6001C */   addiu      $a2, $sp, 0x1c
/* 0155A4 800159F4 24010001 */  addiu       $at, $zero, 0x1
/* 0155A8 800159F8 54410004 */  bnel        $v0, $at, .L80015A0C
/* 0155AC 800159FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0155B0 80015A00 0C00F610 */  jal         func_8003D840
/* 0155B4 80015A04 8FA40020 */   lw         $a0, 0x20($sp)
/* 0155B8 80015A08 8FBF0014 */  lw          $ra, 0x14($sp)
.L80015A0C:
/* 0155BC 80015A0C 8FA2001C */  lw          $v0, 0x1c($sp)
/* 0155C0 80015A10 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0155C4 80015A14 03E00008 */  jr          $ra
/* 0155C8 80015A18 00000000 */   nop

glabel func_80015A1C # 4
/* 0155CC 80015A1C 04800003 */  bltz        $a0, .L80015A2C
/* 0155D0 80015A20 288100E6 */   slti       $at, $a0, 0xe6
/* 0155D4 80015A24 14200004 */  bnez        $at, .L80015A38
/* 0155D8 80015A28 00047080 */   sll        $t6, $a0, 2
.L80015A2C:
/* 0155DC 80015A2C 3C02800B */  lui         $v0, %hi(D_800A86B4)
/* 0155E0 80015A30 03E00008 */  jr          $ra
/* 0155E4 80015A34 244286B4 */   addiu      $v0, $v0, %lo(D_800A86B4)
.L80015A38:
/* 0155E8 80015A38 3C028007 */  lui         $v0, %hi(D_80072A90)
/* 0155EC 80015A3C 004E1021 */  addu        $v0, $v0, $t6
/* 0155F0 80015A40 8C422A90 */  lw          $v0, %lo(D_80072A90)($v0)
/* 0155F4 80015A44 03E00008 */  jr          $ra
/* 0155F8 80015A48 00000000 */   nop
/* 0155FC 80015A4C 00000000 */  nop