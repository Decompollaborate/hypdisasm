.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guRotateF # 0
/* 053810 80053C60 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 053814 80053C64 AFB00018 */  sw          $s0, 0x18($sp)
/* 053818 80053C68 00808025 */  move        $s0, $a0
/* 05381C 80053C6C AFBF001C */  sw          $ra, 0x1c($sp)
/* 053820 80053C70 AFA5004C */  sw          $a1, 0x4c($sp)
/* 053824 80053C74 AFA60050 */  sw          $a2, 0x50($sp)
/* 053828 80053C78 AFA70054 */  sw          $a3, 0x54($sp)
/* 05382C 80053C7C 27A60058 */  addiu       $a2, $sp, 0x58
/* 053830 80053C80 27A50054 */  addiu       $a1, $sp, 0x54
/* 053834 80053C84 0C0167EC */  jal         guNormalize
/* 053838 80053C88 27A40050 */   addiu      $a0, $sp, 0x50
/* 05383C 80053C8C 3C01800A */  lui         $at, %hi(D_8009EE30)
/* 053840 80053C90 C7AC004C */  lwc1        $f12, 0x4c($sp)
/* 053844 80053C94 C424EE30 */  lwc1        $f4, %lo(D_8009EE30)($at)
/* 053848 80053C98 46046302 */  mul.s       $f12, $f12, $f4
/* 05384C 80053C9C 0C014FF0 */  jal         __sinf
/* 053850 80053CA0 E7AC004C */   swc1       $f12, 0x4c($sp)
/* 053854 80053CA4 C7AC004C */  lwc1        $f12, 0x4c($sp)
/* 053858 80053CA8 0C015060 */  jal         __cosf
/* 05385C 80053CAC E7A00044 */   swc1       $f0, 0x44($sp)
/* 053860 80053CB0 C7AC0050 */  lwc1        $f12, 0x50($sp)
/* 053864 80053CB4 C7A80054 */  lwc1        $f8, 0x54($sp)
/* 053868 80053CB8 3C013F80 */  lui         $at, 0x3f80
/* 05386C 80053CBC 44813000 */  mtc1        $at, $f6
/* 053870 80053CC0 46086282 */  mul.s       $f10, $f12, $f8
/* 053874 80053CC4 C7A40058 */  lwc1        $f4, 0x58($sp)
/* 053878 80053CC8 46003081 */  sub.s       $f2, $f6, $f0
/* 05387C 80053CCC 02002025 */  move        $a0, $s0
/* 053880 80053CD0 E7A00040 */  swc1        $f0, 0x40($sp)
/* 053884 80053CD4 46025482 */  mul.s       $f18, $f10, $f2
/* 053888 80053CD8 00000000 */  nop
/* 05388C 80053CDC 46044182 */  mul.s       $f6, $f8, $f4
/* 053890 80053CE0 E7B2003C */  swc1        $f18, 0x3c($sp)
/* 053894 80053CE4 46023282 */  mul.s       $f10, $f6, $f2
/* 053898 80053CE8 00000000 */  nop
/* 05389C 80053CEC 460C2202 */  mul.s       $f8, $f4, $f12
/* 0538A0 80053CF0 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 0538A4 80053CF4 46024182 */  mul.s       $f6, $f8, $f2
/* 0538A8 80053CF8 0C016060 */  jal         guMtxIdentF
/* 0538AC 80053CFC E7A60034 */   swc1       $f6, 0x34($sp)
/* 0538B0 80053D00 C7AE0044 */  lwc1        $f14, 0x44($sp)
/* 0538B4 80053D04 C7AA0050 */  lwc1        $f10, 0x50($sp)
/* 0538B8 80053D08 C7A40054 */  lwc1        $f4, 0x54($sp)
/* 0538BC 80053D0C C7A60058 */  lwc1        $f6, 0x58($sp)
/* 0538C0 80053D10 460E5002 */  mul.s       $f0, $f10, $f14
/* 0538C4 80053D14 3C013F80 */  lui         $at, 0x3f80
/* 0538C8 80053D18 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 0538CC 80053D1C 460E2202 */  mul.s       $f8, $f4, $f14
/* 0538D0 80053D20 C7B2003C */  lwc1        $f18, 0x3c($sp)
/* 0538D4 80053D24 460E3102 */  mul.s       $f4, $f6, $f14
/* 0538D8 80053D28 00000000 */  nop
/* 0538DC 80053D2C 460A5082 */  mul.s       $f2, $f10, $f10
/* 0538E0 80053D30 E7A80028 */  swc1        $f8, 0x28($sp)
/* 0538E4 80053D34 44814000 */  mtc1        $at, $f8
/* 0538E8 80053D38 E7A40024 */  swc1        $f4, 0x24($sp)
/* 0538EC 80053D3C 46024181 */  sub.s       $f6, $f8, $f2
/* 0538F0 80053D40 46103102 */  mul.s       $f4, $f6, $f16
/* 0538F4 80053D44 46022280 */  add.s       $f10, $f4, $f2
/* 0538F8 80053D48 E60A0000 */  swc1        $f10, 0x0($s0)
/* 0538FC 80053D4C C7A80038 */  lwc1        $f8, 0x38($sp)
/* 053900 80053D50 46004181 */  sub.s       $f6, $f8, $f0
/* 053904 80053D54 E6060024 */  swc1        $f6, 0x24($s0)
/* 053908 80053D58 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 05390C 80053D5C 44813000 */  mtc1        $at, $f6
/* 053910 80053D60 46002280 */  add.s       $f10, $f4, $f0
/* 053914 80053D64 E60A0018 */  swc1        $f10, 0x18($s0)
/* 053918 80053D68 C7A80054 */  lwc1        $f8, 0x54($sp)
/* 05391C 80053D6C 46084302 */  mul.s       $f12, $f8, $f8
/* 053920 80053D70 460C3101 */  sub.s       $f4, $f6, $f12
/* 053924 80053D74 46102282 */  mul.s       $f10, $f4, $f16
/* 053928 80053D78 460C5200 */  add.s       $f8, $f10, $f12
/* 05392C 80053D7C E6080014 */  swc1        $f8, 0x14($s0)
/* 053930 80053D80 C7A20034 */  lwc1        $f2, 0x34($sp)
/* 053934 80053D84 C7A60028 */  lwc1        $f6, 0x28($sp)
/* 053938 80053D88 46061100 */  add.s       $f4, $f2, $f6
/* 05393C 80053D8C E6040020 */  swc1        $f4, 0x20($s0)
/* 053940 80053D90 C7AA0028 */  lwc1        $f10, 0x28($sp)
/* 053944 80053D94 44812000 */  mtc1        $at, $f4
/* 053948 80053D98 460A1201 */  sub.s       $f8, $f2, $f10
/* 05394C 80053D9C E6080008 */  swc1        $f8, 0x8($s0)
/* 053950 80053DA0 C7A60058 */  lwc1        $f6, 0x58($sp)
/* 053954 80053DA4 46063002 */  mul.s       $f0, $f6, $f6
/* 053958 80053DA8 46002281 */  sub.s       $f10, $f4, $f0
/* 05395C 80053DAC 46105202 */  mul.s       $f8, $f10, $f16
/* 053960 80053DB0 46004180 */  add.s       $f6, $f8, $f0
/* 053964 80053DB4 E6060028 */  swc1        $f6, 0x28($s0)
/* 053968 80053DB8 C7A40024 */  lwc1        $f4, 0x24($sp)
/* 05396C 80053DBC 46049281 */  sub.s       $f10, $f18, $f4
/* 053970 80053DC0 E60A0010 */  swc1        $f10, 0x10($s0)
/* 053974 80053DC4 C7A80024 */  lwc1        $f8, 0x24($sp)
/* 053978 80053DC8 46089180 */  add.s       $f6, $f18, $f8
/* 05397C 80053DCC E6060004 */  swc1        $f6, 0x4($s0)
/* 053980 80053DD0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 053984 80053DD4 8FB00018 */  lw          $s0, 0x18($sp)
/* 053988 80053DD8 27BD0048 */  addiu       $sp, $sp, 0x48
/* 05398C 80053DDC 03E00008 */  jr          $ra
/* 053990 80053DE0 00000000 */   nop

glabel guRotate # 1
/* 053994 80053DE4 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 053998 80053DE8 44856000 */  mtc1        $a1, $f12
/* 05399C 80053DEC 44867000 */  mtc1        $a2, $f14
/* 0539A0 80053DF0 C7A40070 */  lwc1        $f4, 0x70($sp)
/* 0539A4 80053DF4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0539A8 80053DF8 AFA40060 */  sw          $a0, 0x60($sp)
/* 0539AC 80053DFC 44056000 */  mfc1        $a1, $f12
/* 0539B0 80053E00 44067000 */  mfc1        $a2, $f14
/* 0539B4 80053E04 AFA7006C */  sw          $a3, 0x6c($sp)
/* 0539B8 80053E08 27A40020 */  addiu       $a0, $sp, 0x20
/* 0539BC 80053E0C 0C014F18 */  jal         guRotateF
/* 0539C0 80053E10 E7A40010 */   swc1       $f4, 0x10($sp)
/* 0539C4 80053E14 27A40020 */  addiu       $a0, $sp, 0x20
/* 0539C8 80053E18 0C016074 */  jal         guMtxF2L
/* 0539CC 80053E1C 8FA50060 */   lw         $a1, 0x60($sp)
/* 0539D0 80053E20 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0539D4 80053E24 27BD0060 */  addiu       $sp, $sp, 0x60
/* 0539D8 80053E28 03E00008 */  jr          $ra
/* 0539DC 80053E2C 00000000 */   nop
