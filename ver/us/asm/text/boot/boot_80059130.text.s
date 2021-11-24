.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80059130 # 0
/* 058CE0 80059130 3C03A460 */  lui         $v1, 0xa460
/* 058CE4 80059134 34630010 */  ori         $v1, $v1, 0x10
/* 058CE8 80059138 8C620000 */  lw          $v0, 0x0($v1)
/* 058CEC 8005913C 3C188000 */  lui         $t8, %hi(osRomBase)
/* 058CF0 80059140 304E0003 */  andi        $t6, $v0, 0x3
/* 058CF4 80059144 11C00005 */  beqz        $t6, .L8005915C
/* 058CF8 80059148 00000000 */   nop
/* 058CFC 8005914C 8C620000 */  lw          $v0, 0x0($v1)
.L80059150:
/* 058D00 80059150 304F0003 */  andi        $t7, $v0, 0x3
/* 058D04 80059154 55E0FFFE */  bnel        $t7, $zero, .L80059150
/* 058D08 80059158 8C620000 */   lw         $v0, 0x0($v1)
.L8005915C:
/* 058D0C 8005915C 8F180308 */  lw          $t8, %lo(osRomBase)($t8)
/* 058D10 80059160 3C01A000 */  lui         $at, 0xa000
/* 058D14 80059164 00001025 */  move        $v0, $zero
/* 058D18 80059168 0304C825 */  or          $t9, $t8, $a0
/* 058D1C 8005916C 03214025 */  or          $t0, $t9, $at
/* 058D20 80059170 8D090000 */  lw          $t1, 0x0($t0)
/* 058D24 80059174 03E00008 */  jr          $ra
/* 058D28 80059178 ACA90000 */   sw         $t1, 0x0($a1)
/* 058D2C 8005917C 00000000 */  nop
