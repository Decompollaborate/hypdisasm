.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800519D0 # 0
/* 051580 800519D0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 051584 800519D4 3C01800B */  lui         $at, %hi(D_800AC9E0)
/* 051588 800519D8 C424C9E0 */  lwc1        $f4, %lo(D_800AC9E0)($at)
/* 05158C 800519DC AFB00018 */  sw          $s0, 0x18($sp)
/* 051590 800519E0 00808025 */  move        $s0, $a0
/* 051594 800519E4 3C018010 */  lui         $at, %hi(D_80102510)
/* 051598 800519E8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05159C 800519EC AFA5003C */  sw          $a1, 0x3c($sp)
/* 0515A0 800519F0 AFA60040 */  sw          $a2, 0x40($sp)
/* 0515A4 800519F4 AFA70044 */  sw          $a3, 0x44($sp)
/* 0515A8 800519F8 27A60048 */  addiu       $a2, $sp, 0x48
/* 0515AC 800519FC 27A50044 */  addiu       $a1, $sp, 0x44
/* 0515B0 80051A00 27A40040 */  addiu       $a0, $sp, 0x40
/* 0515B4 80051A04 0C016250 */  jal         func_80058940
/* 0515B8 80051A08 E4242510 */   swc1       $f4, %lo(D_80102510)($at)
/* 0515BC 80051A0C 3C018010 */  lui         $at, %hi(D_80102510)
/* 0515C0 80051A10 C7AC003C */  lwc1        $f12, 0x3c($sp)
/* 0515C4 80051A14 C4262510 */  lwc1        $f6, %lo(D_80102510)($at)
/* 0515C8 80051A18 46066302 */  mul.s       $f12, $f12, $f6
/* 0515CC 80051A1C 0C0149D0 */  jal         func_80052740
/* 0515D0 80051A20 E7AC003C */   swc1       $f12, 0x3c($sp)
/* 0515D4 80051A24 C7AC003C */  lwc1        $f12, 0x3c($sp)
/* 0515D8 80051A28 0C014A40 */  jal         func_80052900
/* 0515DC 80051A2C E7A00034 */   swc1       $f0, 0x34($sp)
/* 0515E0 80051A30 C7AA0040 */  lwc1        $f10, 0x40($sp)
/* 0515E4 80051A34 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 0515E8 80051A38 3C013F80 */  lui         $at, 0x3f80
/* 0515EC 80051A3C 44814000 */  mtc1        $at, $f8
/* 0515F0 80051A40 46045182 */  mul.s       $f6, $f10, $f4
/* 0515F4 80051A44 02002025 */  move        $a0, $s0
/* 0515F8 80051A48 46004081 */  sub.s       $f2, $f8, $f0
/* 0515FC 80051A4C C7A80048 */  lwc1        $f8, 0x48($sp)
/* 051600 80051A50 E7A00030 */  swc1        $f0, 0x30($sp)
/* 051604 80051A54 46023402 */  mul.s       $f16, $f6, $f2
/* 051608 80051A58 00000000 */  nop
/* 05160C 80051A5C 46082182 */  mul.s       $f6, $f4, $f8
/* 051610 80051A60 E7B0002C */  swc1        $f16, 0x2c($sp)
/* 051614 80051A64 46023482 */  mul.s       $f18, $f6, $f2
/* 051618 80051A68 00000000 */  nop
/* 05161C 80051A6C 460A4102 */  mul.s       $f4, $f8, $f10
/* 051620 80051A70 E7B20028 */  swc1        $f18, 0x28($sp)
/* 051624 80051A74 46022182 */  mul.s       $f6, $f4, $f2
/* 051628 80051A78 0C015D50 */  jal         func_80057540
/* 05162C 80051A7C E7A60024 */   swc1       $f6, 0x24($sp)
/* 051630 80051A80 C7A80040 */  lwc1        $f8, 0x40($sp)
/* 051634 80051A84 3C013F80 */  lui         $at, 0x3f80
/* 051638 80051A88 44815000 */  mtc1        $at, $f10
/* 05163C 80051A8C 46084002 */  mul.s       $f0, $f8, $f8
/* 051640 80051A90 C7AC0030 */  lwc1        $f12, 0x30($sp)
/* 051644 80051A94 C7AE0034 */  lwc1        $f14, 0x34($sp)
/* 051648 80051A98 C7B0002C */  lwc1        $f16, 0x2c($sp)
/* 05164C 80051A9C C7B20028 */  lwc1        $f18, 0x28($sp)
/* 051650 80051AA0 46005101 */  sub.s       $f4, $f10, $f0
/* 051654 80051AA4 460C2182 */  mul.s       $f6, $f4, $f12
/* 051658 80051AA8 46003200 */  add.s       $f8, $f6, $f0
/* 05165C 80051AAC E6080000 */  swc1        $f8, 0x0($s0)
/* 051660 80051AB0 C7AA0040 */  lwc1        $f10, 0x40($sp)
/* 051664 80051AB4 460E5102 */  mul.s       $f4, $f10, $f14
/* 051668 80051AB8 46049181 */  sub.s       $f6, $f18, $f4
/* 05166C 80051ABC E6060024 */  swc1        $f6, 0x24($s0)
/* 051670 80051AC0 C7A80040 */  lwc1        $f8, 0x40($sp)
/* 051674 80051AC4 460E4282 */  mul.s       $f10, $f8, $f14
/* 051678 80051AC8 44814000 */  mtc1        $at, $f8
/* 05167C 80051ACC 46125100 */  add.s       $f4, $f10, $f18
/* 051680 80051AD0 E6040018 */  swc1        $f4, 0x18($s0)
/* 051684 80051AD4 C7A60044 */  lwc1        $f6, 0x44($sp)
/* 051688 80051AD8 46063082 */  mul.s       $f2, $f6, $f6
/* 05168C 80051ADC 46024281 */  sub.s       $f10, $f8, $f2
/* 051690 80051AE0 460C5102 */  mul.s       $f4, $f10, $f12
/* 051694 80051AE4 46022180 */  add.s       $f6, $f4, $f2
/* 051698 80051AE8 E6060014 */  swc1        $f6, 0x14($s0)
/* 05169C 80051AEC C7A80044 */  lwc1        $f8, 0x44($sp)
/* 0516A0 80051AF0 C7A40024 */  lwc1        $f4, 0x24($sp)
/* 0516A4 80051AF4 460E4282 */  mul.s       $f10, $f8, $f14
/* 0516A8 80051AF8 46045180 */  add.s       $f6, $f10, $f4
/* 0516AC 80051AFC E6060020 */  swc1        $f6, 0x20($s0)
/* 0516B0 80051B00 C7AA0044 */  lwc1        $f10, 0x44($sp)
/* 0516B4 80051B04 C7A80024 */  lwc1        $f8, 0x24($sp)
/* 0516B8 80051B08 460E5102 */  mul.s       $f4, $f10, $f14
/* 0516BC 80051B0C 46044181 */  sub.s       $f6, $f8, $f4
/* 0516C0 80051B10 44814000 */  mtc1        $at, $f8
/* 0516C4 80051B14 E6060008 */  swc1        $f6, 0x8($s0)
/* 0516C8 80051B18 C7AA0048 */  lwc1        $f10, 0x48($sp)
/* 0516CC 80051B1C 460A5002 */  mul.s       $f0, $f10, $f10
/* 0516D0 80051B20 46004101 */  sub.s       $f4, $f8, $f0
/* 0516D4 80051B24 460C2182 */  mul.s       $f6, $f4, $f12
/* 0516D8 80051B28 46003280 */  add.s       $f10, $f6, $f0
/* 0516DC 80051B2C E60A0028 */  swc1        $f10, 0x28($s0)
/* 0516E0 80051B30 C7A80048 */  lwc1        $f8, 0x48($sp)
/* 0516E4 80051B34 460E4102 */  mul.s       $f4, $f8, $f14
/* 0516E8 80051B38 46048181 */  sub.s       $f6, $f16, $f4
/* 0516EC 80051B3C E6060010 */  swc1        $f6, 0x10($s0)
/* 0516F0 80051B40 C7AA0048 */  lwc1        $f10, 0x48($sp)
/* 0516F4 80051B44 460E5202 */  mul.s       $f8, $f10, $f14
/* 0516F8 80051B48 46104100 */  add.s       $f4, $f8, $f16
/* 0516FC 80051B4C E6040004 */  swc1        $f4, 0x4($s0)
/* 051700 80051B50 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051704 80051B54 8FB00018 */  lw          $s0, 0x18($sp)
/* 051708 80051B58 27BD0038 */  addiu       $sp, $sp, 0x38
/* 05170C 80051B5C 03E00008 */  jr          $ra
/* 051710 80051B60 00000000 */   nop

glabel func_80051B64 # 1
/* 051714 80051B64 44856000 */  mtc1        $a1, $f12
/* 051718 80051B68 44867000 */  mtc1        $a2, $f14
/* 05171C 80051B6C 44878000 */  mtc1        $a3, $f16
/* 051720 80051B70 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 051724 80051B74 C7A40070 */  lwc1        $f4, 0x70($sp)
/* 051728 80051B78 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05172C 80051B7C AFA40060 */  sw          $a0, 0x60($sp)
/* 051730 80051B80 44056000 */  mfc1        $a1, $f12
/* 051734 80051B84 44067000 */  mfc1        $a2, $f14
/* 051738 80051B88 44078000 */  mfc1        $a3, $f16
/* 05173C 80051B8C 27A40020 */  addiu       $a0, $sp, 0x20
/* 051740 80051B90 0C014674 */  jal         func_800519D0
/* 051744 80051B94 E7A40010 */   swc1       $f4, 0x10($sp)
/* 051748 80051B98 27A40020 */  addiu       $a0, $sp, 0x20
/* 05174C 80051B9C 0C015D10 */  jal         func_80057440
/* 051750 80051BA0 8FA50060 */   lw         $a1, 0x60($sp)
/* 051754 80051BA4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051758 80051BA8 27BD0060 */  addiu       $sp, $sp, 0x60
/* 05175C 80051BAC 03E00008 */  jr          $ra
/* 051760 80051BB0 00000000 */   nop
/* 051764 80051BB4 00000000 */  nop
/* 051768 80051BB8 00000000 */  nop
/* 05176C 80051BBC 00000000 */  nop
