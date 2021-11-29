.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSetIntMask # 0
/* 0535B0 80053A00 400C6000 */  mfc0        $t4, Status
/* 0535B4 80053A04 3182FF01 */  andi        $v0, $t4, 0xff01
/* 0535B8 80053A08 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 0535BC 80053A0C 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 0535C0 80053A10 8D0B0000 */  lw          $t3, 0x0($t0)
/* 0535C4 80053A14 2401FFFF */  addiu       $at, $zero, -0x1
/* 0535C8 80053A18 01614026 */  xor         $t0, $t3, $at
/* 0535CC 80053A1C 3108FF00 */  andi        $t0, $t0, 0xff00
/* 0535D0 80053A20 00481025 */  or          $v0, $v0, $t0
/* 0535D4 80053A24 3C0AA430 */  lui         $t2, %hi(D_A430000C)
/* 0535D8 80053A28 8D4A000C */  lw          $t2, %lo(D_A430000C)($t2)
/* 0535DC 80053A2C 11400005 */  beqz        $t2, .L80053A44
/* 0535E0 80053A30 000B4C02 */   srl        $t1, $t3, 16
/* 0535E4 80053A34 2401FFFF */  addiu       $at, $zero, -0x1
/* 0535E8 80053A38 01214826 */  xor         $t1, $t1, $at
/* 0535EC 80053A3C 3129003F */  andi        $t1, $t1, 0x3f
/* 0535F0 80053A40 01495025 */  or          $t2, $t2, $t1
.L80053A44:
/* 0535F4 80053A44 000A5400 */  sll         $t2, $t2, 16
/* 0535F8 80053A48 004A1025 */  or          $v0, $v0, $t2
/* 0535FC 80053A4C 3C01003F */  lui         $at, 0x3f
/* 053600 80053A50 00814024 */  and         $t0, $a0, $at
/* 053604 80053A54 010B4024 */  and         $t0, $t0, $t3
/* 053608 80053A58 000843C2 */  srl         $t0, $t0, 15
/* 05360C 80053A5C 3C0A800A */  lui         $t2, %hi(D_800A7D40)
/* 053610 80053A60 01485021 */  addu        $t2, $t2, $t0
/* 053614 80053A64 954A7D40 */  lhu         $t2, %lo(D_800A7D40)($t2)
/* 053618 80053A68 3C01A430 */  lui         $at, %hi(D_A430000C)
/* 05361C 80053A6C AC2A000C */  sw          $t2, %lo(D_A430000C)($at)
/* 053620 80053A70 3088FF01 */  andi        $t0, $a0, 0xff01
/* 053624 80053A74 3169FF00 */  andi        $t1, $t3, 0xff00
/* 053628 80053A78 01094024 */  and         $t0, $t0, $t1
/* 05362C 80053A7C 3C01FFFF */  lui         $at, (0xFFFF00FF >> 16)
/* 053630 80053A80 342100FF */  ori         $at, $at, (0xFFFF00FF & 0xFFFF)
/* 053634 80053A84 01816024 */  and         $t4, $t4, $at
/* 053638 80053A88 01886025 */  or          $t4, $t4, $t0
/* 05363C 80053A8C 408C6000 */  mtc0        $t4, Status
/* 053640 80053A90 00000000 */  nop
/* 053644 80053A94 00000000 */  nop
/* 053648 80053A98 03E00008 */  jr          $ra
/* 05364C 80053A9C 00000000 */   nop
