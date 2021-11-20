.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osVirtualToPhysical # 0
/* 050A70 80050EC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 050A74 80050EC4 AFA40018 */  sw          $a0, 0x18($sp)
/* 050A78 80050EC8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 050A7C 80050ECC 3C018000 */  lui         $at, 0x8000
/* 050A80 80050ED0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 050A84 80050ED4 01C1082B */  sltu        $at, $t6, $at
/* 050A88 80050ED8 14200007 */  bnez        $at, .L80050EF8
/* 050A8C 80050EDC 3C01A000 */   lui        $at, 0xa000
/* 050A90 80050EE0 01C1082B */  sltu        $at, $t6, $at
/* 050A94 80050EE4 10200004 */  beqz        $at, .L80050EF8
/* 050A98 80050EE8 3C011FFF */   lui        $at, 0x1fff
/* 050A9C 80050EEC 3421FFFF */  ori         $at, $at, 0xffff
/* 050AA0 80050EF0 1000000E */  b           .L80050F2C
/* 050AA4 80050EF4 01C11024 */   and        $v0, $t6, $at
.L80050EF8:
/* 050AA8 80050EF8 8FAF0018 */  lw          $t7, 0x18($sp)
/* 050AAC 80050EFC 3C01A000 */  lui         $at, 0xa000
/* 050AB0 80050F00 01E1082B */  sltu        $at, $t7, $at
/* 050AB4 80050F04 14200007 */  bnez        $at, .L80050F24
/* 050AB8 80050F08 3C01C000 */   lui        $at, 0xc000
/* 050ABC 80050F0C 01E1082B */  sltu        $at, $t7, $at
/* 050AC0 80050F10 10200004 */  beqz        $at, .L80050F24
/* 050AC4 80050F14 3C011FFF */   lui        $at, 0x1fff
/* 050AC8 80050F18 3421FFFF */  ori         $at, $at, 0xffff
/* 050ACC 80050F1C 10000003 */  b           .L80050F2C
/* 050AD0 80050F20 01E11024 */   and        $v0, $t7, $at
.L80050F24:
/* 050AD4 80050F24 0C016030 */  jal         func_800580C0
/* 050AD8 80050F28 8FA40018 */   lw         $a0, 0x18($sp)
.L80050F2C:
/* 050ADC 80050F2C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 050AE0 80050F30 27BD0018 */  addiu       $sp, $sp, 0x18
/* 050AE4 80050F34 03E00008 */  jr          $ra
/* 050AE8 80050F38 00000000 */   nop
/* 050AEC 80050F3C 00000000 */  nop
