.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80055590 # 0
/* 055140 80055590 40085000 */  mfc0        $t0, EntryHi
/* 055144 80055594 2409001F */  addiu       $t1, $zero, 0x1f
/* 055148 80055598 40890000 */  mtc0        $t1, Index
/* 05514C 8005559C 40802800 */  mtc0        $zero, PageMask
/* 055150 800555A0 240A0017 */  addiu       $t2, $zero, 0x17
/* 055154 800555A4 3C09C000 */  lui         $t1, 0xc000
/* 055158 800555A8 40895000 */  mtc0        $t1, EntryHi
/* 05515C 800555AC 3C098000 */  lui         $t1, 0x8000
/* 055160 800555B0 00095982 */  srl         $t3, $t1, 6
/* 055164 800555B4 016A5825 */  or          $t3, $t3, $t2
/* 055168 800555B8 408B1000 */  mtc0        $t3, EntryLo0
/* 05516C 800555BC 24090001 */  addiu       $t1, $zero, 0x1
/* 055170 800555C0 40891800 */  mtc0        $t1, EntryLo1
/* 055174 800555C4 00000000 */  nop
/* 055178 800555C8 42000002 */  tlbwi
/* 05517C 800555CC 00000000 */  nop
/* 055180 800555D0 00000000 */  nop
/* 055184 800555D4 00000000 */  nop
/* 055188 800555D8 00000000 */  nop
/* 05518C 800555DC 40885000 */  mtc0        $t0, EntryHi
/* 055190 800555E0 03E00008 */  jr          $ra
/* 055194 800555E4 00000000 */   nop
/* 055198 800555E8 00000000 */  nop
/* 05519C 800555EC 00000000 */  nop
