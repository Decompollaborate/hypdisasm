.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSiDeviceBusy # 0
/* 05D0F0 8005D540 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 05D0F4 8005D544 8DC20018 */  lw          $v0, %lo(D_A4800018)($t6)
/* 05D0F8 8005D548 304F0003 */  andi        $t7, $v0, 0x3
/* 05D0FC 8005D54C 11E00003 */  beq         $t7, $zero, .L8005D55C
/* 05D100 8005D550 00001025 */   move       $v0, $zero
/* 05D104 8005D554 03E00008 */  jr          $ra
/* 05D108 8005D558 24020001 */   addiu      $v0, $zero, 0x1
.L8005D55C:
/* 05D10C 8005D55C 03E00008 */  jr          $ra
/* 05D110 8005D560 00000000 */   nop
/* 05D114 8005D564 00000000 */  nop
/* 05D118 8005D568 00000000 */  nop
/* 05D11C 8005D56C 00000000 */  nop
