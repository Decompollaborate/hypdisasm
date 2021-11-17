.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800580C0 # 0
/* 057C70 800580C0 40085000 */  mfc0        $t0, EntryHi
/* 057C74 800580C4 310900FF */  andi        $t1, $t0, 0xff
/* 057C78 800580C8 2401E000 */  addiu       $at, $zero, -0x2000
/* 057C7C 800580CC 00815024 */  and         $t2, $a0, $at
/* 057C80 800580D0 012A4825 */  or          $t1, $t1, $t2
/* 057C84 800580D4 40895000 */  mtc0        $t1, EntryHi
/* 057C88 800580D8 00000000 */  nop
/* 057C8C 800580DC 00000000 */  nop
/* 057C90 800580E0 00000000 */  nop
/* 057C94 800580E4 42000008 */  tlbp
/* 057C98 800580E8 00000000 */  nop
/* 057C9C 800580EC 00000000 */  nop
/* 057CA0 800580F0 400B0000 */  mfc0        $t3, Index
/* 057CA4 800580F4 3C018000 */  lui         $at, 0x8000
/* 057CA8 800580F8 01615824 */  and         $t3, $t3, $at
/* 057CAC 800580FC 1560001A */  bne         $t3, $zero, .L80058168
/* 057CB0 80058100 00000000 */   nop
/* 057CB4 80058104 42000001 */  tlbr
/* 057CB8 80058108 00000000 */  nop
/* 057CBC 8005810C 00000000 */  nop
/* 057CC0 80058110 00000000 */  nop
/* 057CC4 80058114 400B2800 */  mfc0        $t3, PageMask
/* 057CC8 80058118 216B2000 */  addi        $t3, $t3, 0x2000
/* 057CCC 8005811C 000B5842 */  srl         $t3, $t3, 1
/* 057CD0 80058120 01646024 */  and         $t4, $t3, $a0
/* 057CD4 80058124 15800004 */  bne         $t4, $zero, .L80058138
/* 057CD8 80058128 216BFFFF */   addi       $t3, $t3, -0x1
/* 057CDC 8005812C 40021000 */  mfc0        $v0, EntryLo0
/* 057CE0 80058130 10000002 */  b           .L8005813C
/* 057CE4 80058134 00000000 */   nop
.L80058138:
/* 057CE8 80058138 40021800 */  mfc0        $v0, EntryLo1
.L8005813C:
/* 057CEC 8005813C 304D0002 */  andi        $t5, $v0, 0x2
/* 057CF0 80058140 11A00009 */  beq         $t5, $zero, .L80058168
/* 057CF4 80058144 00000000 */   nop
/* 057CF8 80058148 3C013FFF */  lui         $at, 0x3fff
/* 057CFC 8005814C 3421FFC0 */  ori         $at, $at, 0xffc0
/* 057D00 80058150 00411024 */  and         $v0, $v0, $at
/* 057D04 80058154 00021180 */  sll         $v0, $v0, 6
/* 057D08 80058158 008B6824 */  and         $t5, $a0, $t3
/* 057D0C 8005815C 004D1020 */  add         $v0, $v0, $t5
/* 057D10 80058160 10000002 */  b           .L8005816C
/* 057D14 80058164 00000000 */   nop
.L80058168:
/* 057D18 80058168 2402FFFF */  addiu       $v0, $zero, -0x1
.L8005816C:
/* 057D1C 8005816C 40885000 */  mtc0        $t0, EntryHi
/* 057D20 80058170 03E00008 */  jr          $ra
/* 057D24 80058174 00000000 */   nop
/* 057D28 80058178 00000000 */  nop
/* 057D2C 8005817C 00000000 */  nop
