.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osVirtualToPhysical # 0
/* 04FF80 800503D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04FF84 800503D4 AFA40018 */  sw          $a0, 0x18($sp)
/* 04FF88 800503D8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 04FF8C 800503DC 3C018000 */  lui         $at, 0x8000
/* 04FF90 800503E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04FF94 800503E4 01C1082B */  sltu        $at, $t6, $at
/* 04FF98 800503E8 14200007 */  bnez        $at, .L80050408
/* 04FF9C 800503EC 3C01A000 */   lui        $at, 0xa000
/* 04FFA0 800503F0 01C1082B */  sltu        $at, $t6, $at
/* 04FFA4 800503F4 10200004 */  beqz        $at, .L80050408
/* 04FFA8 800503F8 3C011FFF */   lui        $at, 0x1fff
/* 04FFAC 800503FC 3421FFFF */  ori         $at, $at, 0xffff
/* 04FFB0 80050400 1000000E */  b           .L8005043C
/* 04FFB4 80050404 01C11024 */   and        $v0, $t6, $at
.L80050408:
/* 04FFB8 80050408 8FAF0018 */  lw          $t7, 0x18($sp)
/* 04FFBC 8005040C 3C01A000 */  lui         $at, 0xa000
/* 04FFC0 80050410 01E1082B */  sltu        $at, $t7, $at
/* 04FFC4 80050414 14200007 */  bnez        $at, .L80050434
/* 04FFC8 80050418 3C01C000 */   lui        $at, 0xc000
/* 04FFCC 8005041C 01E1082B */  sltu        $at, $t7, $at
/* 04FFD0 80050420 10200004 */  beqz        $at, .L80050434
/* 04FFD4 80050424 3C011FFF */   lui        $at, 0x1fff
/* 04FFD8 80050428 3421FFFF */  ori         $at, $at, 0xffff
/* 04FFDC 8005042C 10000003 */  b           .L8005043C
/* 04FFE0 80050430 01E11024 */   and        $v0, $t7, $at
.L80050434:
/* 04FFE4 80050434 0C015CE0 */  jal         __osProbeTLB
/* 04FFE8 80050438 8FA40018 */   lw         $a0, 0x18($sp)
.L8005043C:
/* 04FFEC 8005043C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04FFF0 80050440 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04FFF4 80050444 03E00008 */  jr          $ra
/* 04FFF8 80050448 00000000 */   nop
/* 04FFFC 8005044C 00000000 */  nop
