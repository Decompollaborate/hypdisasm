.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050580 # 0
/* 050130 80050580 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 050134 80050584 AFBF0014 */  sw          $ra, 0x14($sp)
/* 050138 80050588 3C0E0200 */  lui         $t6, (0x20004E0 >> 16)
/* 05013C 8005058C 35CE04E0 */  ori         $t6, $t6, (0x20004E0 & 0xFFFF)
/* 050140 80050590 240F02E0 */  addiu       $t7, $zero, 0x2e0
/* 050144 80050594 ACAF0004 */  sw          $t7, 0x4($a1)
/* 050148 80050598 ACAE0000 */  sw          $t6, 0x0($a1)
/* 05014C 8005059C 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 050150 800505A0 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 050154 800505A4 24A50008 */  addiu       $a1, $a1, 0x8
/* 050158 800505A8 8F19003C */  lw          $t9, 0x3c($t8)
/* 05015C 800505AC 8F390004 */  lw          $t9, 0x4($t9)
/* 050160 800505B0 0320F809 */  jalr        $t9
/* 050164 800505B4 00000000 */   nop
/* 050168 800505B8 3C030C00 */  lui         $v1, (0xC007FFF >> 16)
/* 05016C 800505BC 34637FFF */  ori         $v1, $v1, (0xC007FFF & 0xFFFF)
/* 050170 800505C0 3C0807C0 */  lui         $t0, (0x7C004E0 >> 16)
/* 050174 800505C4 3C090930 */  lui         $t1, (0x9300650 >> 16)
/* 050178 800505C8 350804E0 */  ori         $t0, $t0, (0x7C004E0 & 0xFFFF)
/* 05017C 800505CC 35290650 */  ori         $t1, $t1, (0x9300650 & 0xFFFF)
/* 050180 800505D0 AC480004 */  sw          $t0, 0x4($v0)
/* 050184 800505D4 AC430000 */  sw          $v1, 0x0($v0)
/* 050188 800505D8 AC49000C */  sw          $t1, 0xc($v0)
/* 05018C 800505DC AC430008 */  sw          $v1, 0x8($v0)
/* 050190 800505E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 050194 800505E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 050198 800505E8 24420010 */  addiu       $v0, $v0, 0x10
/* 05019C 800505EC 03E00008 */  jr          $ra
/* 0501A0 800505F0 00000000 */   nop
/* 0501A4 800505F4 00000000 */  nop
/* 0501A8 800505F8 00000000 */  nop
/* 0501AC 800505FC 00000000 */  nop
