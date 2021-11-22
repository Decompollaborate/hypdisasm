.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AAB0 # 0
/* 05A660 8005AAB0 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 05A664 8005AAB4 8DC20010 */  lw          $v0, %lo(D_A4040010)($t6)
/* 05A668 8005AAB8 304F001C */  andi        $t7, $v0, 0x1c
/* 05A66C 8005AABC 11E00003 */  beqz        $t7, .L8005AACC
/* 05A670 8005AAC0 00001025 */   move       $v0, $zero
/* 05A674 8005AAC4 03E00008 */  jr          $ra
/* 05A678 8005AAC8 24020001 */   addiu      $v0, $zero, 0x1
.L8005AACC:
/* 05A67C 8005AACC 03E00008 */  jr          $ra
/* 05A680 8005AAD0 00000000 */   nop
/* 05A684 8005AAD4 00000000 */  nop
/* 05A688 8005AAD8 00000000 */  nop
/* 05A68C 8005AADC 00000000 */  nop
