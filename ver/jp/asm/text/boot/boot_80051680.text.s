.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051680 # 0
/* 051230 80051680 24030010 */  addiu       $v1, $zero, 0x10
/* 051234 80051684 30AE000F */  andi        $t6, $a1, 0xf
/* 051238 80051688 006E1023 */  subu        $v0, $v1, $t6
/* 05123C 8005168C 10620003 */  beq         $v1, $v0, .L8005169C
/* 051240 80051690 00A27821 */   addu       $t7, $a1, $v0
/* 051244 80051694 10000002 */  b           .L800516A0
/* 051248 80051698 AC8F0000 */   sw         $t7, 0x0($a0)
.L8005169C:
/* 05124C 8005169C AC850000 */  sw          $a1, 0x0($a0)
.L800516A0:
/* 051250 800516A0 8C980000 */  lw          $t8, 0x0($a0)
/* 051254 800516A4 AC860008 */  sw          $a2, 0x8($a0)
/* 051258 800516A8 AC80000C */  sw          $zero, 0xc($a0)
/* 05125C 800516AC 03E00008 */  jr          $ra
/* 051260 800516B0 AC980004 */   sw         $t8, 0x4($a0)
/* 051264 800516B4 00000000 */  nop
/* 051268 800516B8 00000000 */  nop
/* 05126C 800516BC 00000000 */  nop
