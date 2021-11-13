.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AAB0 # 0
/* 000000 8005AAB0 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 000004 8005AAB4 8DC20010 */  lw          $v0, %lo(D_A4040010)($t6)
/* 000008 8005AAB8 304F001C */  andi        $t7, $v0, 0x1c
/* 00000C 8005AABC 11E00003 */  beq         $t7, $zero, .L8005AACC
/* 000010 8005AAC0 00001025 */   move       $v0, $zero
/* 000014 8005AAC4 03E00008 */  jr          $ra
/* 000018 8005AAC8 24020001 */   addiu      $v0, $zero, 0x1
.L8005AACC:
/* 00001C 8005AACC 03E00008 */  jr          $ra
/* 000020 8005AAD0 00000000 */   nop
/* 000024 8005AAD4 00000000 */  nop
/* 000028 8005AAD8 00000000 */  nop
/* 00002C 8005AADC 00000000 */  nop
