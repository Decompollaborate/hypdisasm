.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003FB90 # 0
/* 03F740 8003FB90 C4A00000 */  lwc1        $f0, 0x0($a1)
/* 03F744 8003FB94 C4860000 */  lwc1        $f6, 0x0($a0)
/* 03F748 8003FB98 C4A20004 */  lwc1        $f2, 0x4($a1)
/* 03F74C 8003FB9C 46003182 */  mul.s       $f6, $f6, $f0
/* 03F750 8003FBA0 C488000C */  lwc1        $f8, 0xc($a0)
/* 03F754 8003FBA4 C4A40008 */  lwc1        $f4, 0x8($a1)
/* 03F758 8003FBA8 46024202 */  mul.s       $f8, $f8, $f2
/* 03F75C 8003FBAC C48A0018 */  lwc1        $f10, 0x18($a0)
/* 03F760 8003FBB0 C48C0024 */  lwc1        $f12, 0x24($a0)
/* 03F764 8003FBB4 46045282 */  mul.s       $f10, $f10, $f4
/* 03F768 8003FBB8 C48E0004 */  lwc1        $f14, 0x4($a0)
/* 03F76C 8003FBBC 46083180 */  add.s       $f6, $f6, $f8
/* 03F770 8003FBC0 46007382 */  mul.s       $f14, $f14, $f0
/* 03F774 8003FBC4 C4880010 */  lwc1        $f8, 0x10($a0)
/* 03F778 8003FBC8 460A3180 */  add.s       $f6, $f6, $f10
/* 03F77C 8003FBCC 46024202 */  mul.s       $f8, $f8, $f2
/* 03F780 8003FBD0 C48A001C */  lwc1        $f10, 0x1c($a0)
/* 03F784 8003FBD4 460C3180 */  add.s       $f6, $f6, $f12
/* 03F788 8003FBD8 46045282 */  mul.s       $f10, $f10, $f4
/* 03F78C 8003FBDC C48C0008 */  lwc1        $f12, 0x8($a0)
/* 03F790 8003FBE0 460E4200 */  add.s       $f8, $f8, $f14
/* 03F794 8003FBE4 46006302 */  mul.s       $f12, $f12, $f0
/* 03F798 8003FBE8 C48E0014 */  lwc1        $f14, 0x14($a0)
/* 03F79C 8003FBEC 460A4200 */  add.s       $f8, $f8, $f10
/* 03F7A0 8003FBF0 46027382 */  mul.s       $f14, $f14, $f2
/* 03F7A4 8003FBF4 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 03F7A8 8003FBF8 C4900028 */  lwc1        $f16, 0x28($a0)
/* 03F7AC 8003FBFC 46045282 */  mul.s       $f10, $f10, $f4
/* 03F7B0 8003FC00 46104200 */  add.s       $f8, $f8, $f16
/* 03F7B4 8003FC04 C490002C */  lwc1        $f16, 0x2c($a0)
/* 03F7B8 8003FC08 460E6300 */  add.s       $f12, $f12, $f14
/* 03F7BC 8003FC0C 46106300 */  add.s       $f12, $f12, $f16
/* 03F7C0 8003FC10 460C5280 */  add.s       $f10, $f10, $f12
/* 03F7C4 8003FC14 E4C60000 */  swc1        $f6, 0x0($a2)
/* 03F7C8 8003FC18 E4C80004 */  swc1        $f8, 0x4($a2)
/* 03F7CC 8003FC1C 03E00008 */  jr          $ra
/* 03F7D0 8003FC20 E4CA0008 */   swc1       $f10, 0x8($a2)
/* 03F7D4 8003FC24 00000000 */  nop
/* 03F7D8 8003FC28 00000000 */  nop
/* 03F7DC 8003FC2C 00000000 */  nop
