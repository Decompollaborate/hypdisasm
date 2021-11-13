.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050EC0 # 0
/* 000000 80050EC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80050EC4 AFA40018 */  sw          $a0, 0x18($sp)
/* 000008 80050EC8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 00000C 80050ECC 3C018000 */  lui         $at, 0x8000
/* 000010 80050ED0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000014 80050ED4 01C1082B */  sltu        $at, $t6, $at
/* 000018 80050ED8 14200007 */  bne         $at, $zero, .L80050EF8
/* 00001C 80050EDC 3C01A000 */   lui        $at, 0xa000
/* 000020 80050EE0 01C1082B */  sltu        $at, $t6, $at
/* 000024 80050EE4 10200004 */  beq         $at, $zero, .L80050EF8
/* 000028 80050EE8 3C011FFF */   lui        $at, 0x1fff
/* 00002C 80050EEC 3421FFFF */  ori         $at, $at, 0xffff
/* 000030 80050EF0 1000000E */  b           .L80050F2C
/* 000034 80050EF4 01C11024 */   and        $v0, $t6, $at
.L80050EF8:
/* 000038 80050EF8 8FAF0018 */  lw          $t7, 0x18($sp)
/* 00003C 80050EFC 3C01A000 */  lui         $at, 0xa000
/* 000040 80050F00 01E1082B */  sltu        $at, $t7, $at
/* 000044 80050F04 14200007 */  bne         $at, $zero, .L80050F24
/* 000048 80050F08 3C01C000 */   lui        $at, 0xc000
/* 00004C 80050F0C 01E1082B */  sltu        $at, $t7, $at
/* 000050 80050F10 10200004 */  beq         $at, $zero, .L80050F24
/* 000054 80050F14 3C011FFF */   lui        $at, 0x1fff
/* 000058 80050F18 3421FFFF */  ori         $at, $at, 0xffff
/* 00005C 80050F1C 10000003 */  b           .L80050F2C
/* 000060 80050F20 01E11024 */   and        $v0, $t7, $at
.L80050F24:
/* 000064 80050F24 0C016030 */  jal         func_800580C0
/* 000068 80050F28 8FA40018 */   lw         $a0, 0x18($sp)
.L80050F2C:
/* 00006C 80050F2C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000070 80050F30 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000074 80050F34 03E00008 */  jr          $ra
/* 000078 80050F38 00000000 */   nop
/* 00007C 80050F3C 00000000 */  nop
