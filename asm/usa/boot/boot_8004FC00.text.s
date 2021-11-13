.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004FC00 # 0
/* 04F7B0 8004FC00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04F7B4 8004FC04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04F7B8 8004FC08 0C014160 */  jal         func_80050580
/* 04F7BC 8004FC0C 00000000 */   nop
/* 04F7C0 8004FC10 3C0E0D00 */  lui         $t6, 0xd00
/* 04F7C4 8004FC14 3C0F062E */  lui         $t7, 0x62e
/* 04F7C8 8004FC18 AC4F0008 */  sw          $t7, 0x8($v0)
/* 04F7CC 8004FC1C AC4E0000 */  sw          $t6, 0x0($v0)
/* 04F7D0 8004FC20 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 04F7D4 8004FC24 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 04F7D8 8004FC28 24420010 */  addiu       $v0, $v0, 0x10
/* 04F7DC 8004FC2C 8F190054 */  lw          $t9, 0x54($t8)
/* 04F7E0 8004FC30 AC59FFFC */  sw          $t9, -0x4($v0)
/* 04F7E4 8004FC34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04F7E8 8004FC38 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04F7EC 8004FC3C 03E00008 */  jr          $ra
/* 04F7F0 8004FC40 00000000 */   nop
/* 04F7F4 8004FC44 00000000 */  nop
/* 04F7F8 8004FC48 00000000 */  nop
/* 04F7FC 8004FC4C 00000000 */  nop
