.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057F80 # 0
/* 057B30 80057F80 40085000 */  cop0        0x0085000
/* 057B34 80057F84 2409001F */  addiu       $t1, $zero, 0x1f
/* 057B38 80057F88 40890000 */  cop0        0x0890000
/* 057B3C 80057F8C 40802800 */  cop0        0x0802800
/* 057B40 80057F90 240A0017 */  addiu       $t2, $zero, 0x17
/* 057B44 80057F94 3C09C000 */  lui         $t1, 0xc000
/* 057B48 80057F98 40895000 */  cop0        0x0895000
/* 057B4C 80057F9C 3C098000 */  lui         $t1, 0x8000
/* 057B50 80057FA0 00095982 */  srl         $t3, $t1, 6
/* 057B54 80057FA4 016A5825 */  or          $t3, $t3, $t2
/* 057B58 80057FA8 408B1000 */  cop0        0x08B1000
/* 057B5C 80057FAC 24090001 */  addiu       $t1, $zero, 0x1
/* 057B60 80057FB0 40891800 */  cop0        0x0891800
/* 057B64 80057FB4 00000000 */  nop
/* 057B68 80057FB8 42000002 */  cop0        0x2000002
/* 057B6C 80057FBC 00000000 */  nop
/* 057B70 80057FC0 00000000 */  nop
/* 057B74 80057FC4 00000000 */  nop
/* 057B78 80057FC8 00000000 */  nop
/* 057B7C 80057FCC 40885000 */  cop0        0x0885000
/* 057B80 80057FD0 03E00008 */  jr          $ra
/* 057B84 80057FD4 00000000 */   nop
/* 057B88 80057FD8 00000000 */  nop
/* 057B8C 80057FDC 00000000 */  nop
