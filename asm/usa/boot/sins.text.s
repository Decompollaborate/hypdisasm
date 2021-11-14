.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel sins # 0
/* 053ED0 80054320 308EFFFF */  andi        $t6, $a0, 0xffff
/* 053ED4 80054324 000E7902 */  srl         $t7, $t6, 4
/* 053ED8 80054328 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 053EDC 8005432C 33190400 */  andi        $t9, $t8, 0x400
/* 053EE0 80054330 AFA40000 */  sw          $a0, 0x0($sp)
/* 053EE4 80054334 13200008 */  beq         $t9, $zero, .L80054358
/* 053EE8 80054338 03001025 */   move       $v0, $t8
/* 053EEC 8005433C 330803FF */  andi        $t0, $t8, 0x3ff
/* 053EF0 80054340 00084840 */  sll         $t1, $t0, 1
/* 053EF4 80054344 00095023 */  subu        $t2, $zero, $t1
/* 053EF8 80054348 3C03800A */  lui         $v1, %hi(sintable + 0x7FE)
/* 053EFC 8005434C 006A1821 */  addu        $v1, $v1, $t2
/* 053F00 80054350 10000006 */  b           .L8005436C
/* 053F04 80054354 8463F66E */   lh         $v1, %lo(sintable + 0x7FE)($v1)
.L80054358:
/* 053F08 80054358 304B03FF */  andi        $t3, $v0, 0x3ff
/* 053F0C 8005435C 000B6040 */  sll         $t4, $t3, 1
/* 053F10 80054360 3C03800A */  lui         $v1, %hi(sintable)
/* 053F14 80054364 006C1821 */  addu        $v1, $v1, $t4
/* 053F18 80054368 8463EE70 */  lh          $v1, %lo(sintable)($v1)
.L8005436C:
/* 053F1C 8005436C 304D0800 */  andi        $t5, $v0, 0x800
/* 053F20 80054370 11A00005 */  beq         $t5, $zero, .L80054388
/* 053F24 80054374 00601025 */   move       $v0, $v1
/* 053F28 80054378 00031023 */  subu        $v0, $zero, $v1
/* 053F2C 8005437C 00027400 */  sll         $t6, $v0, 16
/* 053F30 80054380 03E00008 */  jr          $ra
/* 053F34 80054384 000E1403 */   sra        $v0, $t6, 16
.L80054388:
/* 053F38 80054388 03E00008 */  jr          $ra
/* 053F3C 8005438C 00000000 */   nop
