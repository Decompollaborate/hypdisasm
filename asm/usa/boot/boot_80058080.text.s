.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058080 # 0
/* 057C30 80058080 00803025 */  move        $a2, $a0
/* 057C34 80058084 8CC70000 */  lw          $a3, 0x0($a2)
/* 057C38 80058088 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 057C3C 8005808C 10E0000A */  beq         $a3, $zero, .L800580B8
/* 057C40 80058090 00000000 */   nop
.L80058094:
/* 057C44 80058094 14E50004 */  bne         $a3, $a1, .L800580A8
/* 057C48 80058098 00000000 */   nop
/* 057C4C 8005809C 8CAE0000 */  lw          $t6, 0x0($a1)
/* 057C50 800580A0 10000005 */  b           .L800580B8
/* 057C54 800580A4 ACCE0000 */   sw         $t6, 0x0($a2)
.L800580A8:
/* 057C58 800580A8 00E03025 */  move        $a2, $a3
/* 057C5C 800580AC 8CC70000 */  lw          $a3, 0x0($a2)
/* 057C60 800580B0 14E0FFF8 */  bne         $a3, $zero, .L80058094
/* 057C64 800580B4 00000000 */   nop
.L800580B8:
/* 057C68 800580B8 03E00008 */  jr          $ra
/* 057C6C 800580BC 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_800580C0 # 1
/* 057C70 800580C0 40085000 */  cop0        0x0085000
/* 057C74 800580C4 310900FF */  andi        $t1, $t0, 0xff
/* 057C78 800580C8 2401E000 */  addiu       $at, $zero, -0x2000
/* 057C7C 800580CC 00815024 */  and         $t2, $a0, $at
/* 057C80 800580D0 012A4825 */  or          $t1, $t1, $t2
/* 057C84 800580D4 40895000 */  cop0        0x0895000
/* 057C88 800580D8 00000000 */  nop
/* 057C8C 800580DC 00000000 */  nop
/* 057C90 800580E0 00000000 */  nop
/* 057C94 800580E4 42000008 */  cop0        0x2000008
/* 057C98 800580E8 00000000 */  nop
/* 057C9C 800580EC 00000000 */  nop
/* 057CA0 800580F0 400B0000 */  cop0        0x00B0000
/* 057CA4 800580F4 3C018000 */  lui         $at, 0x8000
/* 057CA8 800580F8 01615824 */  and         $t3, $t3, $at
/* 057CAC 800580FC 1560001A */  bne         $t3, $zero, .L80058168
/* 057CB0 80058100 00000000 */   nop
/* 057CB4 80058104 42000001 */  cop0        0x2000001
/* 057CB8 80058108 00000000 */  nop
/* 057CBC 8005810C 00000000 */  nop
/* 057CC0 80058110 00000000 */  nop
/* 057CC4 80058114 400B2800 */  cop0        0x00B2800
/* 057CC8 80058118 216B2000 */  addi        $t3, $t3, 0x2000
/* 057CCC 8005811C 000B5842 */  srl         $t3, $t3, 1
/* 057CD0 80058120 01646024 */  and         $t4, $t3, $a0
/* 057CD4 80058124 15800004 */  bne         $t4, $zero, .L80058138
/* 057CD8 80058128 216BFFFF */   addi       $t3, $t3, -0x1
/* 057CDC 8005812C 40021000 */  cop0        0x0021000
/* 057CE0 80058130 10000002 */  b           .L8005813C
/* 057CE4 80058134 00000000 */   nop
.L80058138:
/* 057CE8 80058138 40021800 */  cop0        0x0021800
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
/* 057D1C 8005816C 40885000 */  cop0        0x0885000
/* 057D20 80058170 03E00008 */  jr          $ra
/* 057D24 80058174 00000000 */   nop
/* 057D28 80058178 00000000 */  nop
/* 057D2C 8005817C 00000000 */  nop
