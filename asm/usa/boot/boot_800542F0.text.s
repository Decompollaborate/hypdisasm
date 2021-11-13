.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800542F0 # 0
/* 053EA0 800542F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053EA4 800542F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 053EA8 800542F8 00802825 */  move        $a1, $a0
/* 053EAC 800542FC 24A44000 */  addiu       $a0, $a1, 0x4000
/* 053EB0 80054300 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053EB4 80054304 308EFFFF */  andi        $t6, $a0, 0xffff
/* 053EB8 80054308 0C0150C8 */  jal         func_80054320
/* 053EBC 8005430C 01C02025 */   move       $a0, $t6
/* 053EC0 80054310 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053EC4 80054314 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053EC8 80054318 03E00008 */  jr          $ra
/* 053ECC 8005431C 00000000 */   nop

glabel func_80054320 # 1
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
/* 053EF8 80054348 3C03800A */  lui         $v1, %hi(D_8009F66E)
/* 053EFC 8005434C 006A1821 */  addu        $v1, $v1, $t2
/* 053F00 80054350 10000006 */  b           .L8005436C
/* 053F04 80054354 8463F66E */   lh         $v1, %lo(D_8009F66E)($v1)
.L80054358:
/* 053F08 80054358 304B03FF */  andi        $t3, $v0, 0x3ff
/* 053F0C 8005435C 000B6040 */  sll         $t4, $t3, 1
/* 053F10 80054360 3C03800A */  lui         $v1, %hi(D_8009EE70)
/* 053F14 80054364 006C1821 */  addu        $v1, $v1, $t4
/* 053F18 80054368 8463EE70 */  lh          $v1, %lo(D_8009EE70)($v1)
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

glabel func_80054390 # 2
/* 053F40 80054390 3C0EA410 */  lui         $t6, %hi(D_A4100010)
/* 053F44 80054394 8DCF0010 */  lw          $t7, %lo(D_A4100010)($t6)
/* 053F48 80054398 3C18A410 */  lui         $t8, %hi(D_A4100014)
/* 053F4C 8005439C 3C08A410 */  lui         $t0, %hi(D_A4100018)
/* 053F50 800543A0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 053F54 800543A4 8F190014 */  lw          $t9, %lo(D_A4100014)($t8)
/* 053F58 800543A8 3C0AA410 */  lui         $t2, %hi(D_A410001C)
/* 053F5C 800543AC 2484000C */  addiu       $a0, $a0, 0xc
/* 053F60 800543B0 AC99FFF8 */  sw          $t9, -0x8($a0)
/* 053F64 800543B4 8D090018 */  lw          $t1, %lo(D_A4100018)($t0)
/* 053F68 800543B8 AC89FFFC */  sw          $t1, -0x4($a0)
/* 053F6C 800543BC 8D4B001C */  lw          $t3, %lo(D_A410001C)($t2)
/* 053F70 800543C0 03E00008 */  jr          $ra
/* 053F74 800543C4 AC8B0000 */   sw         $t3, 0x0($a0)
/* 053F78 800543C8 00000000 */  nop
/* 053F7C 800543CC 00000000 */  nop
