.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800543D0 # 0
/* 053F80 800543D0 3C088000 */  lui         $t0, %hi(D_80000010)
/* 053F84 800543D4 240A2000 */  addiu       $t2, $zero, 0x2000
/* 053F88 800543D8 010A4821 */  addu        $t1, $t0, $t2
/* 053F8C 800543DC 2529FFF0 */  addiu       $t1, $t1, -0x10
.L800543E0:
/* 053F90 800543E0 BD010000 */  (0x2f)      $at, %lo(D_80000000)($t0)
/* 053F94 800543E4 0109082B */  sltu        $at, $t0, $t1
/* 053F98 800543E8 1420FFFD */  bne         $at, $zero, .L800543E0
/* 053F9C 800543EC 25080010 */   addiu      $t0, $t0, %lo(D_80000010)
/* 053FA0 800543F0 03E00008 */  jr          $ra
/* 053FA4 800543F4 00000000 */   nop
/* 053FA8 800543F8 00000000 */  nop
/* 053FAC 800543FC 00000000 */  nop
