.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80048F60 # 0
/* 048B10 80048F60 03E00008 */  jr          $ra
/* 048B14 80048F64 00000000 */   nop

glabel func_80048F68 # 1
/* 048B18 80048F68 46206005 */  abs.d       $f0, $f12
/* 048B1C 80048F6C 00000000 */  nop
/* 048B20 80048F70 23BDFFD0 */  addi        $sp, $sp, -0x30
/* 048B24 80048F74 F7B40000 */  sdc1        $f20, 0x0($sp)
/* 048B28 80048F78 F7B60008 */  sdc1        $f22, 0x8($sp)
/* 048B2C 80048F7C F7B80010 */  sdc1        $f24, 0x10($sp)
/* 048B30 80048F80 F7BA0018 */  sdc1        $f26, 0x18($sp)
/* 048B34 80048F84 C4900000 */  lwc1        $f16, 0x0($a0)
/* 048B38 80048F88 C4920004 */  lwc1        $f18, 0x4($a0)
/* 048B3C 80048F8C C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 048B40 80048F90 C4AC000C */  lwc1        $f12, 0xc($a1)
/* 048B44 80048F94 C4AE0018 */  lwc1        $f14, 0x18($a1)
/* 048B48 80048F98 46105002 */  mul.s       $f0, $f10, $f16
/* 048B4C 80048F9C C4840008 */  lwc1        $f4, 0x8($a0)
/* 048B50 80048FA0 46126082 */  mul.s       $f2, $f12, $f18
/* 048B54 80048FA4 C494000C */  lwc1        $f20, 0xc($a0)
/* 048B58 80048FA8 F7BC0020 */  sdc1        $f28, 0x20($sp)
/* 048B5C 80048FAC 46047102 */  mul.s       $f4, $f14, $f4
/* 048B60 80048FB0 F7BE0028 */  sdc1        $f30, 0x28($sp)
/* 048B64 80048FB4 46145182 */  mul.s       $f6, $f10, $f20
/* 048B68 80048FB8 C4960010 */  lwc1        $f22, 0x10($a0)
/* 048B6C 80048FBC 46001080 */  add.s       $f2, $f2, $f0
/* 048B70 80048FC0 46166202 */  mul.s       $f8, $f12, $f22
/* 048B74 80048FC4 C4800014 */  lwc1        $f0, 0x14($a0)
/* 048B78 80048FC8 46022100 */  add.s       $f4, $f4, $f2
/* 048B7C 80048FCC 46007002 */  mul.s       $f0, $f14, $f0
/* 048B80 80048FD0 C4980018 */  lwc1        $f24, 0x18($a0)
/* 048B84 80048FD4 E4C40000 */  swc1        $f4, 0x0($a2)
/* 048B88 80048FD8 46185082 */  mul.s       $f2, $f10, $f24
/* 048B8C 80048FDC C49A001C */  lwc1        $f26, 0x1c($a0)
/* 048B90 80048FE0 46064200 */  add.s       $f8, $f8, $f6
/* 048B94 80048FE4 461A6102 */  mul.s       $f4, $f12, $f26
/* 048B98 80048FE8 C4860020 */  lwc1        $f6, 0x20($a0)
/* 048B9C 80048FEC 46080000 */  add.s       $f0, $f0, $f8
/* 048BA0 80048FF0 46067182 */  mul.s       $f6, $f14, $f6
/* 048BA4 80048FF4 C49C0024 */  lwc1        $f28, 0x24($a0)
/* 048BA8 80048FF8 E4C0000C */  swc1        $f0, 0xc($a2)
/* 048BAC 80048FFC 461C5202 */  mul.s       $f8, $f10, $f28
/* 048BB0 80049000 C49E0028 */  lwc1        $f30, 0x28($a0)
/* 048BB4 80049004 46022100 */  add.s       $f4, $f4, $f2
/* 048BB8 80049008 461E6002 */  mul.s       $f0, $f12, $f30
/* 048BBC 8004900C C482002C */  lwc1        $f2, 0x2c($a0)
/* 048BC0 80049010 46043180 */  add.s       $f6, $f6, $f4
/* 048BC4 80049014 46027082 */  mul.s       $f2, $f14, $f2
/* 048BC8 80049018 E4C60018 */  swc1        $f6, 0x18($a2)
/* 048BCC 8004901C C4A40024 */  lwc1        $f4, 0x24($a1)
/* 048BD0 80049020 C4AA0004 */  lwc1        $f10, 0x4($a1)
/* 048BD4 80049024 46044200 */  add.s       $f8, $f8, $f4
/* 048BD8 80049028 C4AC0010 */  lwc1        $f12, 0x10($a1)
/* 048BDC 8004902C C4AE001C */  lwc1        $f14, 0x1c($a1)
/* 048BE0 80049030 46105102 */  mul.s       $f4, $f10, $f16
/* 048BE4 80049034 46080000 */  add.s       $f0, $f0, $f8
/* 048BE8 80049038 46126182 */  mul.s       $f6, $f12, $f18
/* 048BEC 8004903C C4880008 */  lwc1        $f8, 0x8($a0)
/* 048BF0 80049040 46001080 */  add.s       $f2, $f2, $f0
/* 048BF4 80049044 46087202 */  mul.s       $f8, $f14, $f8
/* 048BF8 80049048 E4C20024 */  swc1        $f2, 0x24($a2)
/* 048BFC 8004904C 46145002 */  mul.s       $f0, $f10, $f20
/* 048C00 80049050 46043180 */  add.s       $f6, $f6, $f4
/* 048C04 80049054 46166082 */  mul.s       $f2, $f12, $f22
/* 048C08 80049058 C4840014 */  lwc1        $f4, 0x14($a0)
/* 048C0C 8004905C 46064200 */  add.s       $f8, $f8, $f6
/* 048C10 80049060 46047102 */  mul.s       $f4, $f14, $f4
/* 048C14 80049064 E4C80004 */  swc1        $f8, 0x4($a2)
/* 048C18 80049068 46185182 */  mul.s       $f6, $f10, $f24
/* 048C1C 8004906C 46001080 */  add.s       $f2, $f2, $f0
/* 048C20 80049070 461A6202 */  mul.s       $f8, $f12, $f26
/* 048C24 80049074 C4800020 */  lwc1        $f0, 0x20($a0)
/* 048C28 80049078 46022100 */  add.s       $f4, $f4, $f2
/* 048C2C 8004907C 46007002 */  mul.s       $f0, $f14, $f0
/* 048C30 80049080 E4C40010 */  swc1        $f4, 0x10($a2)
/* 048C34 80049084 461C5082 */  mul.s       $f2, $f10, $f28
/* 048C38 80049088 46064200 */  add.s       $f8, $f8, $f6
/* 048C3C 8004908C 461E6102 */  mul.s       $f4, $f12, $f30
/* 048C40 80049090 C486002C */  lwc1        $f6, 0x2c($a0)
/* 048C44 80049094 46080000 */  add.s       $f0, $f0, $f8
/* 048C48 80049098 46067182 */  mul.s       $f6, $f14, $f6
/* 048C4C 8004909C E4C0001C */  swc1        $f0, 0x1c($a2)
/* 048C50 800490A0 C4A80028 */  lwc1        $f8, 0x28($a1)
/* 048C54 800490A4 C4AA0008 */  lwc1        $f10, 0x8($a1)
/* 048C58 800490A8 46081080 */  add.s       $f2, $f2, $f8
/* 048C5C 800490AC C4AC0014 */  lwc1        $f12, 0x14($a1)
/* 048C60 800490B0 C4AE0020 */  lwc1        $f14, 0x20($a1)
/* 048C64 800490B4 46105202 */  mul.s       $f8, $f10, $f16
/* 048C68 800490B8 46022100 */  add.s       $f4, $f4, $f2
/* 048C6C 800490BC 46126002 */  mul.s       $f0, $f12, $f18
/* 048C70 800490C0 C4820008 */  lwc1        $f2, 0x8($a0)
/* 048C74 800490C4 46043180 */  add.s       $f6, $f6, $f4
/* 048C78 800490C8 46027082 */  mul.s       $f2, $f14, $f2
/* 048C7C 800490CC E4C60028 */  swc1        $f6, 0x28($a2)
/* 048C80 800490D0 46145102 */  mul.s       $f4, $f10, $f20
/* 048C84 800490D4 D7B40000 */  ldc1        $f20, 0x0($sp)
/* 048C88 800490D8 46080000 */  add.s       $f0, $f0, $f8
/* 048C8C 800490DC 46166182 */  mul.s       $f6, $f12, $f22
/* 048C90 800490E0 C4880014 */  lwc1        $f8, 0x14($a0)
/* 048C94 800490E4 46001080 */  add.s       $f2, $f2, $f0
/* 048C98 800490E8 46087202 */  mul.s       $f8, $f14, $f8
/* 048C9C 800490EC E4C20008 */  swc1        $f2, 0x8($a2)
/* 048CA0 800490F0 46185002 */  mul.s       $f0, $f10, $f24
/* 048CA4 800490F4 D7B60008 */  ldc1        $f22, 0x8($sp)
/* 048CA8 800490F8 46043180 */  add.s       $f6, $f6, $f4
/* 048CAC 800490FC 461A6082 */  mul.s       $f2, $f12, $f26
/* 048CB0 80049100 C4840020 */  lwc1        $f4, 0x20($a0)
/* 048CB4 80049104 46064200 */  add.s       $f8, $f8, $f6
/* 048CB8 80049108 46047102 */  mul.s       $f4, $f14, $f4
/* 048CBC 8004910C E4C80014 */  swc1        $f8, 0x14($a2)
/* 048CC0 80049110 461C5182 */  mul.s       $f6, $f10, $f28
/* 048CC4 80049114 D7B80010 */  ldc1        $f24, 0x10($sp)
/* 048CC8 80049118 46001080 */  add.s       $f2, $f2, $f0
/* 048CCC 8004911C 461E6202 */  mul.s       $f8, $f12, $f30
/* 048CD0 80049120 C480002C */  lwc1        $f0, 0x2c($a0)
/* 048CD4 80049124 46022100 */  add.s       $f4, $f4, $f2
/* 048CD8 80049128 46007002 */  mul.s       $f0, $f14, $f0
/* 048CDC 8004912C E4C40020 */  swc1        $f4, 0x20($a2)
/* 048CE0 80049130 C4A2002C */  lwc1        $f2, 0x2c($a1)
/* 048CE4 80049134 D7BA0018 */  ldc1        $f26, 0x18($sp)
/* 048CE8 80049138 46023180 */  add.s       $f6, $f6, $f2
/* 048CEC 8004913C D7BC0020 */  ldc1        $f28, 0x20($sp)
/* 048CF0 80049140 46064200 */  add.s       $f8, $f8, $f6
/* 048CF4 80049144 D7BE0028 */  ldc1        $f30, 0x28($sp)
/* 048CF8 80049148 46080000 */  add.s       $f0, $f0, $f8
/* 048CFC 8004914C E4C0002C */  swc1        $f0, 0x2c($a2)
/* 048D00 80049150 03E00008 */  jr          $ra
/* 048D04 80049154 23BD0030 */   addi       $sp, $sp, 0x30
/* 048D08 80049158 00000000 */  nop
/* 048D0C 8004915C 00000000 */  nop
