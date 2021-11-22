.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osUnmapTLBAll # 0
/* 057AE0 80057F30 40085000 */  mfc0        $t0, EntryHi
/* 057AE4 80057F34 2409001E */  addiu       $t1, $zero, 0x1e
/* 057AE8 80057F38 3C0A8000 */  lui         $t2, 0x8000
/* 057AEC 80057F3C 408A5000 */  mtc0        $t2, EntryHi
/* 057AF0 80057F40 40801000 */  mtc0        $zero, EntryLo0
/* 057AF4 80057F44 40801800 */  mtc0        $zero, EntryLo1
.L80057F48:
/* 057AF8 80057F48 40890000 */  mtc0        $t1, Index
/* 057AFC 80057F4C 00000000 */  nop
/* 057B00 80057F50 42000002 */  tlbwi
/* 057B04 80057F54 00000000 */  nop
/* 057B08 80057F58 00000000 */  nop
/* 057B0C 80057F5C 2129FFFF */  addi        $t1, $t1, -0x1
/* 057B10 80057F60 0521FFF9 */  bgez        $t1, .L80057F48
/* 057B14 80057F64 00000000 */   nop
/* 057B18 80057F68 40885000 */  mtc0        $t0, EntryHi
/* 057B1C 80057F6C 03E00008 */  jr          $ra
/* 057B20 80057F70 00000000 */   nop
/* 057B24 80057F74 00000000 */  nop
/* 057B28 80057F78 00000000 */  nop
/* 057B2C 80057F7C 00000000 */  nop
