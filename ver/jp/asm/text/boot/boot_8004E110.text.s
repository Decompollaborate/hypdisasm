.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004E110 # 0
/* 04DCC0 8004E110 00803025 */  move        $a2, $a0
/* 04DCC4 8004E114 00001825 */  move        $v1, $zero
/* 04DCC8 8004E118 10A00018 */  beqz        $a1, .L8004E17C
/* 04DCCC 8004E11C 00A01025 */   move       $v0, $a1
.L8004E120:
/* 04DCD0 8004E120 24040080 */  addiu       $a0, $zero, 0x80
/* 04DCD4 8004E124 90C50000 */  lbu         $a1, 0x0($a2)
.L8004E128:
/* 04DCD8 8004E128 00037040 */  sll         $t6, $v1, 1
/* 04DCDC 8004E12C 00A47824 */  and         $t7, $a1, $a0
/* 04DCE0 8004E130 11E00008 */  beqz        $t7, .L8004E154
/* 04DCE4 8004E134 01C01825 */   move       $v1, $t6
/* 04DCE8 8004E138 31D80100 */  andi        $t8, $t6, 0x100
/* 04DCEC 8004E13C 13000003 */  beqz        $t8, .L8004E14C
/* 04DCF0 8004E140 00000000 */   nop
/* 04DCF4 8004E144 10000007 */  b           .L8004E164
/* 04DCF8 8004E148 39C30084 */   xori       $v1, $t6, 0x84
.L8004E14C:
/* 04DCFC 8004E14C 10000005 */  b           .L8004E164
/* 04DD00 8004E150 24630001 */   addiu      $v1, $v1, 0x1
.L8004E154:
/* 04DD04 8004E154 30680100 */  andi        $t0, $v1, 0x100
/* 04DD08 8004E158 11000002 */  beqz        $t0, .L8004E164
/* 04DD0C 8004E15C 38690085 */   xori       $t1, $v1, 0x85
/* 04DD10 8004E160 01201825 */  move        $v1, $t1
.L8004E164:
/* 04DD14 8004E164 00045042 */  srl         $t2, $a0, 1
/* 04DD18 8004E168 1540FFEF */  bnez        $t2, .L8004E128
/* 04DD1C 8004E16C 01402025 */   move       $a0, $t2
/* 04DD20 8004E170 2442FFFF */  addiu       $v0, $v0, -0x1
/* 04DD24 8004E174 1440FFEA */  bnez        $v0, .L8004E120
/* 04DD28 8004E178 24C60001 */   addiu      $a2, $a2, 0x1
.L8004E17C:
/* 04DD2C 8004E17C 00035840 */  sll         $t3, $v1, 1
.L8004E180:
/* 04DD30 8004E180 316C0100 */  andi        $t4, $t3, 0x100
/* 04DD34 8004E184 11800002 */  beqz        $t4, .L8004E190
/* 04DD38 8004E188 01601825 */   move       $v1, $t3
/* 04DD3C 8004E18C 39630085 */  xori        $v1, $t3, 0x85
.L8004E190:
/* 04DD40 8004E190 24420001 */  addiu       $v0, $v0, 0x1
/* 04DD44 8004E194 2C410008 */  sltiu       $at, $v0, 0x8
/* 04DD48 8004E198 5420FFF9 */  bnel        $at, $zero, .L8004E180
/* 04DD4C 8004E19C 00035840 */   sll        $t3, $v1, 1
/* 04DD50 8004E1A0 03E00008 */  jr          $ra
/* 04DD54 8004E1A4 306200FF */   andi       $v0, $v1, 0xff
/* 04DD58 8004E1A8 00000000 */  nop
/* 04DD5C 8004E1AC 00000000 */  nop
