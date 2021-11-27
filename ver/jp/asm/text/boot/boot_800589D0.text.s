.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800589D0 # 0
/* 058580 800589D0 14800003 */  bnez        $a0, .L800589E0
/* 058584 800589D4 00000000 */   nop
/* 058588 800589D8 3C04800A */  lui         $a0, %hi(D_800A4D70)
/* 05858C 800589DC 8C844D70 */  lw          $a0, %lo(D_800A4D70)($a0)
.L800589E0:
/* 058590 800589E0 03E00008 */  jr          $ra
/* 058594 800589E4 8C820004 */   lw         $v0, 0x4($a0)
/* 058598 800589E8 00000000 */  nop
/* 05859C 800589EC 00000000 */  nop
