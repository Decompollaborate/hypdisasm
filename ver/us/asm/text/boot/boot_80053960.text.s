.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053960 # 0
/* 053510 80053960 24030010 */  addiu       $v1, $zero, 0x10
/* 053514 80053964 30AE000F */  andi        $t6, $a1, 0xf
/* 053518 80053968 006E1023 */  subu        $v0, $v1, $t6
/* 05351C 8005396C 10620003 */  beq         $v1, $v0, .L8005397C
/* 053520 80053970 00A27821 */   addu       $t7, $a1, $v0
/* 053524 80053974 10000002 */  b           .L80053980
/* 053528 80053978 AC8F0000 */   sw         $t7, 0x0($a0)
.L8005397C:
/* 05352C 8005397C AC850000 */  sw          $a1, 0x0($a0)
.L80053980:
/* 053530 80053980 8C980000 */  lw          $t8, 0x0($a0)
/* 053534 80053984 AC860008 */  sw          $a2, 0x8($a0)
/* 053538 80053988 AC80000C */  sw          $zero, 0xc($a0)
/* 05353C 8005398C 03E00008 */  jr          $ra
/* 053540 80053990 AC980004 */   sw         $t8, 0x4($a0)
/* 053544 80053994 00000000 */  nop
/* 053548 80053998 00000000 */  nop
/* 05354C 8005399C 00000000 */  nop
