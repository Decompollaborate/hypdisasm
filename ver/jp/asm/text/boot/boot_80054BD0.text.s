.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054BD0 # 0
/* 054780 80054BD0 4442F800 */  cfc1        $v0, FpcCsr
/* 054784 80054BD4 44C4F800 */  ctc1        $a0, FpcCsr
/* 054788 80054BD8 03E00008 */  jr          $ra
/* 05478C 80054BDC 00000000 */   nop

glabel func_80054BE0 # 1
/* 054790 80054BE0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 054794 80054BE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 054798 80054BE8 AFA40018 */  sw          $a0, 0x18($sp)
/* 05479C 80054BEC 0C016EA4 */  jal         func_8005BA90
/* 0547A0 80054BF0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 0547A4 80054BF4 10400003 */  beqz        $v0, .L80054C04
/* 0547A8 80054BF8 00000000 */   nop
/* 0547AC 80054BFC 10000008 */  b           .L80054C20
/* 0547B0 80054C00 2402FFFF */   addiu      $v0, $zero, -0x1
.L80054C04:
/* 0547B4 80054C04 8FAE0018 */  lw          $t6, 0x18($sp)
/* 0547B8 80054C08 3C01A000 */  lui         $at, 0xa000
/* 0547BC 80054C0C 8FB9001C */  lw          $t9, 0x1c($sp)
/* 0547C0 80054C10 01C17825 */  or          $t7, $t6, $at
/* 0547C4 80054C14 8DF80000 */  lw          $t8, 0x0($t7)
/* 0547C8 80054C18 00001025 */  move        $v0, $zero
/* 0547CC 80054C1C AF380000 */  sw          $t8, 0x0($t9)
.L80054C20:
/* 0547D0 80054C20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0547D4 80054C24 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0547D8 80054C28 03E00008 */  jr          $ra
/* 0547DC 80054C2C 00000000 */   nop

glabel func_80054C30 # 2
/* 0547E0 80054C30 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0547E4 80054C34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0547E8 80054C38 AFA40018 */  sw          $a0, 0x18($sp)
/* 0547EC 80054C3C 0C016EA4 */  jal         func_8005BA90
/* 0547F0 80054C40 AFA5001C */   sw         $a1, 0x1c($sp)
/* 0547F4 80054C44 10400003 */  beqz        $v0, .L80054C54
/* 0547F8 80054C48 00000000 */   nop
/* 0547FC 80054C4C 10000007 */  b           .L80054C6C
/* 054800 80054C50 2402FFFF */   addiu      $v0, $zero, -0x1
.L80054C54:
/* 054804 80054C54 8FAF0018 */  lw          $t7, 0x18($sp)
/* 054808 80054C58 8FAE001C */  lw          $t6, 0x1c($sp)
/* 05480C 80054C5C 3C01A000 */  lui         $at, 0xa000
/* 054810 80054C60 01E1C025 */  or          $t8, $t7, $at
/* 054814 80054C64 00001025 */  move        $v0, $zero
/* 054818 80054C68 AF0E0000 */  sw          $t6, 0x0($t8)
.L80054C6C:
/* 05481C 80054C6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 054820 80054C70 27BD0018 */  addiu       $sp, $sp, 0x18
/* 054824 80054C74 03E00008 */  jr          $ra
/* 054828 80054C78 00000000 */   nop
/* 05482C 80054C7C 00000000 */  nop
