.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceContDataCrc # 0
/* 05ABE0 8005B030 00803025 */  move        $a2, $a0
/* 05ABE4 8005B034 00001825 */  move        $v1, $zero
/* 05ABE8 8005B038 10A00018 */  beqz        $a1, .L8005B09C
/* 05ABEC 8005B03C 00A01025 */   move       $v0, $a1
.L8005B040:
/* 05ABF0 8005B040 24040080 */  addiu       $a0, $zero, 0x80
/* 05ABF4 8005B044 90C50000 */  lbu         $a1, 0x0($a2)
.L8005B048:
/* 05ABF8 8005B048 00037040 */  sll         $t6, $v1, 1
/* 05ABFC 8005B04C 00A47824 */  and         $t7, $a1, $a0
/* 05AC00 8005B050 11E00008 */  beqz        $t7, .L8005B074
/* 05AC04 8005B054 01C01825 */   move       $v1, $t6
/* 05AC08 8005B058 31D80100 */  andi        $t8, $t6, 0x100
/* 05AC0C 8005B05C 13000003 */  beqz        $t8, .L8005B06C
/* 05AC10 8005B060 00000000 */   nop
/* 05AC14 8005B064 10000007 */  b           .L8005B084
/* 05AC18 8005B068 39C30084 */   xori       $v1, $t6, 0x84
.L8005B06C:
/* 05AC1C 8005B06C 10000005 */  b           .L8005B084
/* 05AC20 8005B070 24630001 */   addiu      $v1, $v1, 0x1
.L8005B074:
/* 05AC24 8005B074 30680100 */  andi        $t0, $v1, 0x100
/* 05AC28 8005B078 11000002 */  beqz        $t0, .L8005B084
/* 05AC2C 8005B07C 38690085 */   xori       $t1, $v1, 0x85
/* 05AC30 8005B080 01201825 */  move        $v1, $t1
.L8005B084:
/* 05AC34 8005B084 00045042 */  srl         $t2, $a0, 1
/* 05AC38 8005B088 1540FFEF */  bnez        $t2, .L8005B048
/* 05AC3C 8005B08C 01402025 */   move       $a0, $t2
/* 05AC40 8005B090 2442FFFF */  addiu       $v0, $v0, -0x1
/* 05AC44 8005B094 1440FFEA */  bnez        $v0, .L8005B040
/* 05AC48 8005B098 24C60001 */   addiu      $a2, $a2, 0x1
.L8005B09C:
/* 05AC4C 8005B09C 00035840 */  sll         $t3, $v1, 1
.L8005B0A0:
/* 05AC50 8005B0A0 316C0100 */  andi        $t4, $t3, 0x100
/* 05AC54 8005B0A4 11800002 */  beqz        $t4, .L8005B0B0
/* 05AC58 8005B0A8 01601825 */   move       $v1, $t3
/* 05AC5C 8005B0AC 39630085 */  xori        $v1, $t3, 0x85
.L8005B0B0:
/* 05AC60 8005B0B0 24420001 */  addiu       $v0, $v0, 0x1
/* 05AC64 8005B0B4 2C410008 */  sltiu       $at, $v0, 0x8
/* 05AC68 8005B0B8 5420FFF9 */  bnel        $at, $zero, .L8005B0A0
/* 05AC6C 8005B0BC 00035840 */   sll        $t3, $v1, 1
/* 05AC70 8005B0C0 03E00008 */  jr          $ra
/* 05AC74 8005B0C4 306200FF */   andi       $v0, $v1, 0xff
/* 05AC78 8005B0C8 00000000 */  nop
/* 05AC7C 8005B0CC 00000000 */  nop
