.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057F80 # 0
/* 000000 80057F80 40085000 */  cop0        0x0085000
/* 000004 80057F84 2409001F */  addiu       $t1, $zero, 0x1f
/* 000008 80057F88 40890000 */  cop0        0x0890000
/* 00000C 80057F8C 40802800 */  cop0        0x0802800
/* 000010 80057F90 240A0017 */  addiu       $t2, $zero, 0x17
/* 000014 80057F94 3C09C000 */  lui         $t1, 0xc000
/* 000018 80057F98 40895000 */  cop0        0x0895000
/* 00001C 80057F9C 3C098000 */  lui         $t1, 0x8000
/* 000020 80057FA0 00095982 */  srl         $t3, $t1, 6
/* 000024 80057FA4 016A5825 */  or          $t3, $t3, $t2
/* 000028 80057FA8 408B1000 */  cop0        0x08B1000
/* 00002C 80057FAC 24090001 */  addiu       $t1, $zero, 0x1
/* 000030 80057FB0 40891800 */  cop0        0x0891800
/* 000034 80057FB4 00000000 */  nop
/* 000038 80057FB8 42000002 */  cop0        0x2000002
/* 00003C 80057FBC 00000000 */  nop
/* 000040 80057FC0 00000000 */  nop
/* 000044 80057FC4 00000000 */  nop
/* 000048 80057FC8 00000000 */  nop
/* 00004C 80057FCC 40885000 */  cop0        0x0885000
/* 000050 80057FD0 03E00008 */  jr          $ra
/* 000054 80057FD4 00000000 */   nop
/* 000058 80057FD8 00000000 */  nop
/* 00005C 80057FDC 00000000 */  nop
