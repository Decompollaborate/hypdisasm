.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F9C0 # 0
/* 01F570 8001F9C0 03E00008 */  jr          $ra
/* 01F574 8001F9C4 00000000 */   nop

glabel func_8001F9C8 # 1
/* 01F578 8001F9C8 03E00008 */  jr          $ra
/* 01F57C 8001F9CC AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8001F9D0 # 2
/* 01F580 8001F9D0 03E00008 */  jr          $ra
/* 01F584 8001F9D4 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8001F9D8 # 3
/* 01F588 8001F9D8 03E00008 */  jr          $ra
/* 01F58C 8001F9DC 00000000 */   nop

glabel func_8001F9E0 # 4
/* 01F590 8001F9E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01F594 8001F9E4 AFB00018 */  sw          $s0, 0x18($sp)
/* 01F598 8001F9E8 3C108007 */  lui         $s0, %hi(D_80068E30)
/* 01F59C 8001F9EC 26108E30 */  addiu       $s0, $s0, %lo(D_80068E30)
/* 01F5A0 8001F9F0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01F5A4 8001F9F4 3C04800F */  lui         $a0, %hi(D_800F4968)
/* 01F5A8 8001F9F8 24844968 */  addiu       $a0, $a0, %lo(D_800F4968)
/* 01F5AC 8001F9FC 0C0023F3 */  jal         func_80008FCC
/* 01F5B0 8001FA00 8E050374 */   lw         $a1, 0x374($s0)
/* 01F5B4 8001FA04 3C04800F */  lui         $a0, %hi(D_800F4974)
/* 01F5B8 8001FA08 24844974 */  addiu       $a0, $a0, %lo(D_800F4974)
/* 01F5BC 8001FA0C 0C0023F3 */  jal         func_80008FCC
/* 01F5C0 8001FA10 8E050378 */   lw         $a1, 0x378($s0)
/* 01F5C4 8001FA14 3C04800F */  lui         $a0, %hi(D_800F4980)
/* 01F5C8 8001FA18 24844980 */  addiu       $a0, $a0, %lo(D_800F4980)
/* 01F5CC 8001FA1C 0C0023F3 */  jal         func_80008FCC
/* 01F5D0 8001FA20 8E05037C */   lw         $a1, 0x37c($s0)
/* 01F5D4 8001FA24 3C04800F */  lui         $a0, %hi(D_800F498C)
/* 01F5D8 8001FA28 2484498C */  addiu       $a0, $a0, %lo(D_800F498C)
/* 01F5DC 8001FA2C 0C0023F3 */  jal         func_80008FCC
/* 01F5E0 8001FA30 8E050380 */   lw         $a1, 0x380($s0)
/* 01F5E4 8001FA34 3C04800F */  lui         $a0, %hi(D_800F4998)
/* 01F5E8 8001FA38 24844998 */  addiu       $a0, $a0, %lo(D_800F4998)
/* 01F5EC 8001FA3C 0C0023F3 */  jal         func_80008FCC
/* 01F5F0 8001FA40 8E050384 */   lw         $a1, 0x384($s0)
/* 01F5F4 8001FA44 3C04800F */  lui         $a0, %hi(D_800F49A4)
/* 01F5F8 8001FA48 248449A4 */  addiu       $a0, $a0, %lo(D_800F49A4)
/* 01F5FC 8001FA4C 0C0023F3 */  jal         func_80008FCC
/* 01F600 8001FA50 8E050388 */   lw         $a1, 0x388($s0)
/* 01F604 8001FA54 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01F608 8001FA58 8FB00018 */  lw          $s0, 0x18($sp)
/* 01F60C 8001FA5C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01F610 8001FA60 03E00008 */  jr          $ra
/* 01F614 8001FA64 00000000 */   nop

glabel func_8001FA68 # 5
/* 01F618 8001FA68 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 01F61C 8001FA6C 3C028007 */  lui         $v0, %hi(D_80071E88)
/* 01F620 8001FA70 8C421E88 */  lw          $v0, %lo(D_80071E88)($v0)
/* 01F624 8001FA74 AFBF006C */  sw          $ra, 0x6c($sp)
/* 01F628 8001FA78 AFBE0068 */  sw          $fp, 0x68($sp)
/* 01F62C 8001FA7C AFB70064 */  sw          $s7, 0x64($sp)
/* 01F630 8001FA80 AFB60060 */  sw          $s6, 0x60($sp)
/* 01F634 8001FA84 AFB5005C */  sw          $s5, 0x5c($sp)
/* 01F638 8001FA88 AFB40058 */  sw          $s4, 0x58($sp)
/* 01F63C 8001FA8C AFB30054 */  sw          $s3, 0x54($sp)
/* 01F640 8001FA90 AFB20050 */  sw          $s2, 0x50($sp)
/* 01F644 8001FA94 AFB1004C */  sw          $s1, 0x4c($sp)
/* 01F648 8001FA98 AFB00048 */  sw          $s0, 0x48($sp)
/* 01F64C 8001FA9C F7B60040 */  sdc1        $f22, 0x40($sp)
/* 01F650 8001FAA0 F7B40038 */  sdc1        $f20, 0x38($sp)
/* 01F654 8001FAA4 3C014000 */  lui         $at, 0x4000
/* 01F658 8001FAA8 44813000 */  mtc1        $at, $f6
/* 01F65C 8001FAAC C4440024 */  lwc1        $f4, 0x24($v0)
/* 01F660 8001FAB0 0080A025 */  move        $s4, $a0
/* 01F664 8001FAB4 27A600CC */  addiu       $a2, $sp, 0xcc
/* 01F668 8001FAB8 46062302 */  mul.s       $f12, $f4, $f6
/* 01F66C 8001FABC 0C04421A */  jal         func_80110868
/* 01F670 8001FAC0 24450044 */   addiu      $a1, $v0, 0x44
/* 01F674 8001FAC4 144000BF */  bnez        $v0, .L8001FDC4
/* 01F678 8001FAC8 3C0FE700 */   lui        $t7, 0xe700
/* 01F67C 8001FACC 8E820000 */  lw          $v0, 0x0($s4)
/* 01F680 8001FAD0 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 01F684 8001FAD4 3C080050 */  lui         $t0, (0x504240 >> 16)
/* 01F688 8001FAD8 244E0008 */  addiu       $t6, $v0, 0x8
/* 01F68C 8001FADC AE8E0000 */  sw          $t6, 0x0($s4)
/* 01F690 8001FAE0 AC400004 */  sw          $zero, 0x4($v0)
/* 01F694 8001FAE4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01F698 8001FAE8 8E820000 */  lw          $v0, 0x0($s4)
/* 01F69C 8001FAEC 35084240 */  ori         $t0, $t0, (0x504240 & 0xFFFF)
/* 01F6A0 8001FAF0 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 01F6A4 8001FAF4 24580008 */  addiu       $t8, $v0, 0x8
/* 01F6A8 8001FAF8 AE980000 */  sw          $t8, 0x0($s4)
/* 01F6AC 8001FAFC AC480004 */  sw          $t0, 0x4($v0)
/* 01F6B0 8001FB00 AC590000 */  sw          $t9, 0x0($v0)
/* 01F6B4 8001FB04 8E820000 */  lw          $v0, 0x0($s4)
/* 01F6B8 8001FB08 3C0AFC11 */  lui         $t2, (0xFC119623 >> 16)
/* 01F6BC 8001FB0C 3C0BFF2F */  lui         $t3, (0xFF2FFFFF >> 16)
/* 01F6C0 8001FB10 24490008 */  addiu       $t1, $v0, 0x8
/* 01F6C4 8001FB14 AE890000 */  sw          $t1, 0x0($s4)
/* 01F6C8 8001FB18 356BFFFF */  ori         $t3, $t3, (0xFF2FFFFF & 0xFFFF)
/* 01F6CC 8001FB1C 354A9623 */  ori         $t2, $t2, (0xFC119623 & 0xFFFF)
/* 01F6D0 8001FB20 AC4A0000 */  sw          $t2, 0x0($v0)
/* 01F6D4 8001FB24 AC4B0004 */  sw          $t3, 0x4($v0)
/* 01F6D8 8001FB28 8E820000 */  lw          $v0, 0x0($s4)
/* 01F6DC 8001FB2C 240EFFFF */  addiu       $t6, $zero, -0x1
/* 01F6E0 8001FB30 3C0DFA00 */  lui         $t5, 0xfa00
/* 01F6E4 8001FB34 244C0008 */  addiu       $t4, $v0, 0x8
/* 01F6E8 8001FB38 AE8C0000 */  sw          $t4, 0x0($s4)
/* 01F6EC 8001FB3C AC4E0004 */  sw          $t6, 0x4($v0)
/* 01F6F0 8001FB40 AC4D0000 */  sw          $t5, 0x0($v0)
/* 01F6F4 8001FB44 C7A200D4 */  lwc1        $f2, 0xd4($sp)
/* 01F6F8 8001FB48 C7A000CC */  lwc1        $f0, 0xcc($sp)
/* 01F6FC 8001FB4C 3C12800F */  lui         $s2, %hi(D_800F4968)
/* 01F700 8001FB50 46001087 */  neg.s       $f2, $f2
/* 01F704 8001FB54 26524968 */  addiu       $s2, $s2, %lo(D_800F4968)
/* 01F708 8001FB58 4600103E */  c.le.s      $f2, $f0
/* 01F70C 8001FB5C 00008825 */  move        $s1, $zero
/* 01F710 8001FB60 3C013F80 */  lui         $at, 0x3f80
/* 01F714 8001FB64 241E0104 */  addiu       $fp, $zero, 0x104
/* 01F718 8001FB68 45010006 */  bc1t        .L8001FB84
/* 01F71C 8001FB6C 27B7009C */   addiu      $s7, $sp, 0x9c
/* 01F720 8001FB70 46000207 */  neg.s       $f8, $f0
/* 01F724 8001FB74 C7A000D0 */  lwc1        $f0, 0xd0($sp)
/* 01F728 8001FB78 4608103E */  c.le.s      $f2, $f8
/* 01F72C 8001FB7C 00000000 */  nop
/* 01F730 8001FB80 45000043 */  bc1f        .L8001FC90
.L8001FB84:
/* 01F734 8001FB84 3C16800B */   lui        $s6, %hi(D_800B2C64)
/* 01F738 8001FB88 4481B000 */  mtc1        $at, $f22
/* 01F73C 8001FB8C 4480A000 */  mtc1        $zero, $f20
/* 01F740 8001FB90 26D62C64 */  addiu       $s6, $s6, %lo(D_800B2C64)
/* 01F744 8001FB94 27B500C8 */  addiu       $s5, $sp, 0xc8
/* 01F748 8001FB98 27B300AC */  addiu       $s3, $sp, 0xac
.L8001FB9C:
/* 01F74C 8001FB9C 02402025 */  move        $a0, $s2
/* 01F750 8001FBA0 02A02825 */  move        $a1, $s5
/* 01F754 8001FBA4 0C002400 */  jal         func_80009000
/* 01F758 8001FBA8 8EC60000 */   lw         $a2, 0x0($s6)
/* 01F75C 8001FBAC 24040005 */  addiu       $a0, $zero, 0x5
/* 01F760 8001FBB0 8FA500C8 */  lw          $a1, 0xc8($sp)
/* 01F764 8001FBB4 0C002A76 */  jal         func_8000A9D8
/* 01F768 8001FBB8 02E03025 */   move       $a2, $s7
/* 01F76C 8001FBBC 93AF00A8 */  lbu         $t7, 0xa8($sp)
/* 01F770 8001FBC0 97B800A4 */  lhu         $t8, 0xa4($sp)
/* 01F774 8001FBC4 97B900A6 */  lhu         $t9, 0xa6($sp)
/* 01F778 8001FBC8 02602025 */  move        $a0, $s3
/* 01F77C 8001FBCC 8FA5009C */  lw          $a1, 0x9c($sp)
/* 01F780 8001FBD0 8FA600A0 */  lw          $a2, 0xa0($sp)
/* 01F784 8001FBD4 93A700A9 */  lbu         $a3, 0xa9($sp)
/* 01F788 8001FBD8 AFAF0010 */  sw          $t7, 0x10($sp)
/* 01F78C 8001FBDC AFB80014 */  sw          $t8, 0x14($sp)
/* 01F790 8001FBE0 0C00FE60 */  jal         func_8003F980
/* 01F794 8001FBE4 AFB90018 */   sw         $t9, 0x18($sp)
/* 01F798 8001FBE8 C7A000CC */  lwc1        $f0, 0xcc($sp)
/* 01F79C 8001FBEC 97A800A6 */  lhu         $t0, 0xa6($sp)
/* 01F7A0 8001FBF0 240900F0 */  addiu       $t1, $zero, 0xf0
/* 01F7A4 8001FBF4 4600A03C */  c.lt.s      $f20, $f0
/* 01F7A8 8001FBF8 02802025 */  move        $a0, $s4
/* 01F7AC 8001FBFC 02602825 */  move        $a1, $s3
/* 01F7B0 8001FC00 240B0002 */  addiu       $t3, $zero, 0x2
/* 01F7B4 8001FC04 45000003 */  bc1f        .L8001FC14
/* 01F7B8 8001FC08 01283823 */   subu       $a3, $t1, $t0
/* 01F7BC 8001FC0C 10000002 */  b           .L8001FC18
/* 01F7C0 8001FC10 03D18023 */   subu       $s0, $fp, $s1
.L8001FC14:
/* 01F7C4 8001FC14 26300030 */  addiu       $s0, $s1, 0x30
.L8001FC18:
/* 01F7C8 8001FC18 4600A03C */  c.lt.s      $f20, $f0
/* 01F7CC 8001FC1C 02003025 */  move        $a2, $s0
/* 01F7D0 8001FC20 240C0002 */  addiu       $t4, $zero, 0x2
/* 01F7D4 8001FC24 240D0001 */  addiu       $t5, $zero, 0x1
/* 01F7D8 8001FC28 45000003 */  bc1f        .L8001FC38
/* 01F7DC 8001FC2C 240E0001 */   addiu      $t6, $zero, 0x1
/* 01F7E0 8001FC30 10000002 */  b           .L8001FC3C
/* 01F7E4 8001FC34 00001025 */   move       $v0, $zero
.L8001FC38:
/* 01F7E8 8001FC38 24020001 */  addiu       $v0, $zero, 0x1
.L8001FC3C:
/* 01F7EC 8001FC3C 04E10003 */  bgez        $a3, .L8001FC4C
/* 01F7F0 8001FC40 00075043 */   sra        $t2, $a3, 1
/* 01F7F4 8001FC44 24E10001 */  addiu       $at, $a3, 0x1
/* 01F7F8 8001FC48 00015043 */  sra         $t2, $at, 1
.L8001FC4C:
/* 01F7FC 8001FC4C 2547FFF8 */  addiu       $a3, $t2, -0x8
/* 01F800 8001FC50 AFAB0010 */  sw          $t3, 0x10($sp)
/* 01F804 8001FC54 AFAC0014 */  sw          $t4, 0x14($sp)
/* 01F808 8001FC58 AFAD0018 */  sw          $t5, 0x18($sp)
/* 01F80C 8001FC5C AFAE001C */  sw          $t6, 0x1c($sp)
/* 01F810 8001FC60 E7B60020 */  swc1        $f22, 0x20($sp)
/* 01F814 8001FC64 E7B60024 */  swc1        $f22, 0x24($sp)
/* 01F818 8001FC68 AFA20028 */  sw          $v0, 0x28($sp)
/* 01F81C 8001FC6C 0C00FE91 */  jal         func_8003FA44
/* 01F820 8001FC70 AFA0002C */   sw         $zero, 0x2c($sp)
/* 01F824 8001FC74 3C0F800F */  lui         $t7, %hi(D_800F498C)
/* 01F828 8001FC78 25EF498C */  addiu       $t7, $t7, %lo(D_800F498C)
/* 01F82C 8001FC7C 2652000C */  addiu       $s2, $s2, 0xc
/* 01F830 8001FC80 164FFFC6 */  bne         $s2, $t7, .L8001FB9C
/* 01F834 8001FC84 2631000C */   addiu      $s1, $s1, 0xc
/* 01F838 8001FC88 1000004F */  b           .L8001FDC8
/* 01F83C 8001FC8C 8FBF006C */   lw         $ra, 0x6c($sp)
.L8001FC90:
/* 01F840 8001FC90 4600103E */  c.le.s      $f2, $f0
/* 01F844 8001FC94 3C12800F */  lui         $s2, %hi(D_800F498C)
/* 01F848 8001FC98 2652498C */  addiu       $s2, $s2, %lo(D_800F498C)
/* 01F84C 8001FC9C 00008825 */  move        $s1, $zero
/* 01F850 8001FCA0 45010005 */  bc1t        .L8001FCB8
/* 01F854 8001FCA4 3C013F80 */   lui        $at, 0x3f80
/* 01F858 8001FCA8 46000287 */  neg.s       $f10, $f0
/* 01F85C 8001FCAC 460A103E */  c.le.s      $f2, $f10
/* 01F860 8001FCB0 00000000 */  nop
/* 01F864 8001FCB4 45000043 */  bc1f        .L8001FDC4
.L8001FCB8:
/* 01F868 8001FCB8 3C16800B */   lui        $s6, %hi(D_800B2C64)
/* 01F86C 8001FCBC 4481B000 */  mtc1        $at, $f22
/* 01F870 8001FCC0 4480A000 */  mtc1        $zero, $f20
/* 01F874 8001FCC4 26D62C64 */  addiu       $s6, $s6, %lo(D_800B2C64)
/* 01F878 8001FCC8 241E0140 */  addiu       $fp, $zero, 0x140
/* 01F87C 8001FCCC 27B7009C */  addiu       $s7, $sp, 0x9c
/* 01F880 8001FCD0 27B500C8 */  addiu       $s5, $sp, 0xc8
/* 01F884 8001FCD4 27B300AC */  addiu       $s3, $sp, 0xac
.L8001FCD8:
/* 01F888 8001FCD8 02402025 */  move        $a0, $s2
/* 01F88C 8001FCDC 02A02825 */  move        $a1, $s5
/* 01F890 8001FCE0 0C002400 */  jal         func_80009000
/* 01F894 8001FCE4 8EC60000 */   lw         $a2, 0x0($s6)
/* 01F898 8001FCE8 24040005 */  addiu       $a0, $zero, 0x5
/* 01F89C 8001FCEC 8FA500C8 */  lw          $a1, 0xc8($sp)
/* 01F8A0 8001FCF0 0C002A76 */  jal         func_8000A9D8
/* 01F8A4 8001FCF4 02E03025 */   move       $a2, $s7
/* 01F8A8 8001FCF8 93B800A8 */  lbu         $t8, 0xa8($sp)
/* 01F8AC 8001FCFC 97B900A4 */  lhu         $t9, 0xa4($sp)
/* 01F8B0 8001FD00 97A900A6 */  lhu         $t1, 0xa6($sp)
/* 01F8B4 8001FD04 02602025 */  move        $a0, $s3
/* 01F8B8 8001FD08 8FA5009C */  lw          $a1, 0x9c($sp)
/* 01F8BC 8001FD0C 8FA600A0 */  lw          $a2, 0xa0($sp)
/* 01F8C0 8001FD10 93A700A9 */  lbu         $a3, 0xa9($sp)
/* 01F8C4 8001FD14 AFB80010 */  sw          $t8, 0x10($sp)
/* 01F8C8 8001FD18 AFB90014 */  sw          $t9, 0x14($sp)
/* 01F8CC 8001FD1C 0C00FE60 */  jal         func_8003F980
/* 01F8D0 8001FD20 AFA90018 */   sw         $t1, 0x18($sp)
/* 01F8D4 8001FD24 C7A000D0 */  lwc1        $f0, 0xd0($sp)
/* 01F8D8 8001FD28 97AA00A4 */  lhu         $t2, 0xa4($sp)
/* 01F8DC 8001FD2C 02802025 */  move        $a0, $s4
/* 01F8E0 8001FD30 4600A03C */  c.lt.s      $f20, $f0
/* 01F8E4 8001FD34 02602825 */  move        $a1, $s3
/* 01F8E8 8001FD38 240C0002 */  addiu       $t4, $zero, 0x2
/* 01F8EC 8001FD3C 240D0002 */  addiu       $t5, $zero, 0x2
/* 01F8F0 8001FD40 45000003 */  bc1f        .L8001FD50
/* 01F8F4 8001FD44 03CA3023 */   subu       $a2, $fp, $t2
/* 01F8F8 8001FD48 10000003 */  b           .L8001FD58
/* 01F8FC 8001FD4C 26300028 */   addiu      $s0, $s1, 0x28
.L8001FD50:
/* 01F900 8001FD50 240800BC */  addiu       $t0, $zero, 0xbc
/* 01F904 8001FD54 01118023 */  subu        $s0, $t0, $s1
.L8001FD58:
/* 01F908 8001FD58 4600A03C */  c.lt.s      $f20, $f0
/* 01F90C 8001FD5C 02003825 */  move        $a3, $s0
/* 01F910 8001FD60 240E0001 */  addiu       $t6, $zero, 0x1
/* 01F914 8001FD64 240F0001 */  addiu       $t7, $zero, 0x1
/* 01F918 8001FD68 45000003 */  bc1f        .L8001FD78
/* 01F91C 8001FD6C 24020001 */   addiu      $v0, $zero, 0x1
/* 01F920 8001FD70 10000001 */  b           .L8001FD78
/* 01F924 8001FD74 00001025 */   move       $v0, $zero
.L8001FD78:
/* 01F928 8001FD78 04C10003 */  bgez        $a2, .L8001FD88
/* 01F92C 8001FD7C 00065843 */   sra        $t3, $a2, 1
/* 01F930 8001FD80 24C10001 */  addiu       $at, $a2, 0x1
/* 01F934 8001FD84 00015843 */  sra         $t3, $at, 1
.L8001FD88:
/* 01F938 8001FD88 01603025 */  move        $a2, $t3
/* 01F93C 8001FD8C AFAC0010 */  sw          $t4, 0x10($sp)
/* 01F940 8001FD90 AFAD0014 */  sw          $t5, 0x14($sp)
/* 01F944 8001FD94 AFAE0018 */  sw          $t6, 0x18($sp)
/* 01F948 8001FD98 AFAF001C */  sw          $t7, 0x1c($sp)
/* 01F94C 8001FD9C E7B60020 */  swc1        $f22, 0x20($sp)
/* 01F950 8001FDA0 E7B60024 */  swc1        $f22, 0x24($sp)
/* 01F954 8001FDA4 AFA00028 */  sw          $zero, 0x28($sp)
/* 01F958 8001FDA8 0C00FE91 */  jal         func_8003FA44
/* 01F95C 8001FDAC AFA2002C */   sw         $v0, 0x2c($sp)
/* 01F960 8001FDB0 3C18800F */  lui         $t8, %hi(D_800F49B0)
/* 01F964 8001FDB4 271849B0 */  addiu       $t8, $t8, %lo(D_800F49B0)
/* 01F968 8001FDB8 2652000C */  addiu       $s2, $s2, 0xc
/* 01F96C 8001FDBC 1658FFC6 */  bne         $s2, $t8, .L8001FCD8
/* 01F970 8001FDC0 2631000C */   addiu      $s1, $s1, 0xc
.L8001FDC4:
/* 01F974 8001FDC4 8FBF006C */  lw          $ra, 0x6c($sp)
.L8001FDC8:
/* 01F978 8001FDC8 D7B40038 */  ldc1        $f20, 0x38($sp)
/* 01F97C 8001FDCC D7B60040 */  ldc1        $f22, 0x40($sp)
/* 01F980 8001FDD0 8FB00048 */  lw          $s0, 0x48($sp)
/* 01F984 8001FDD4 8FB1004C */  lw          $s1, 0x4c($sp)
/* 01F988 8001FDD8 8FB20050 */  lw          $s2, 0x50($sp)
/* 01F98C 8001FDDC 8FB30054 */  lw          $s3, 0x54($sp)
/* 01F990 8001FDE0 8FB40058 */  lw          $s4, 0x58($sp)
/* 01F994 8001FDE4 8FB5005C */  lw          $s5, 0x5c($sp)
/* 01F998 8001FDE8 8FB60060 */  lw          $s6, 0x60($sp)
/* 01F99C 8001FDEC 8FB70064 */  lw          $s7, 0x64($sp)
/* 01F9A0 8001FDF0 8FBE0068 */  lw          $fp, 0x68($sp)
/* 01F9A4 8001FDF4 03E00008 */  jr          $ra
/* 01F9A8 8001FDF8 27BD00D8 */   addiu      $sp, $sp, 0xd8

glabel func_8001FDFC # 6
/* 01F9AC 8001FDFC 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 01F9B0 8001FE00 3C0F8009 */  lui         $t7, %hi(D_8008E480)
/* 01F9B4 8001FE04 25EFE480 */  addiu       $t7, $t7, %lo(D_8008E480)
/* 01F9B8 8001FE08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F9BC 8001FE0C 00803025 */  move        $a2, $a0
/* 01F9C0 8001FE10 25E9006C */  addiu       $t1, $t7, 0x6c
/* 01F9C4 8001FE14 27AE002C */  addiu       $t6, $sp, 0x2c
.L8001FE18:
/* 01F9C8 8001FE18 8DE10000 */  lw          $at, 0x0($t7)
/* 01F9CC 8001FE1C 25EF000C */  addiu       $t7, $t7, 0xc
/* 01F9D0 8001FE20 25CE000C */  addiu       $t6, $t6, 0xc
/* 01F9D4 8001FE24 ADC1FFF4 */  sw          $at, -0xc($t6)
/* 01F9D8 8001FE28 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 01F9DC 8001FE2C ADC1FFF8 */  sw          $at, -0x8($t6)
/* 01F9E0 8001FE30 8DE1FFFC */  lw          $at, -0x4($t7)
/* 01F9E4 8001FE34 15E9FFF8 */  bne         $t7, $t1, .L8001FE18
/* 01F9E8 8001FE38 ADC1FFFC */   sw         $at, -0x4($t6)
/* 01F9EC 8001FE3C 8CC20000 */  lw          $v0, 0x0($a2)
/* 01F9F0 8001FE40 3C0BE700 */  lui         $t3, 0xe700
/* 01F9F4 8001FE44 3C0DE200 */  lui         $t5, (0xE200001C >> 16)
/* 01F9F8 8001FE48 244A0008 */  addiu       $t2, $v0, 0x8
/* 01F9FC 8001FE4C ACCA0000 */  sw          $t2, 0x0($a2)
/* 01FA00 8001FE50 AC400004 */  sw          $zero, 0x4($v0)
/* 01FA04 8001FE54 AC4B0000 */  sw          $t3, 0x0($v0)
/* 01FA08 8001FE58 8CC20000 */  lw          $v0, 0x0($a2)
/* 01FA0C 8001FE5C 3C190050 */  lui         $t9, (0x504240 >> 16)
/* 01FA10 8001FE60 37394240 */  ori         $t9, $t9, (0x504240 & 0xFFFF)
/* 01FA14 8001FE64 244C0008 */  addiu       $t4, $v0, 0x8
/* 01FA18 8001FE68 ACCC0000 */  sw          $t4, 0x0($a2)
/* 01FA1C 8001FE6C 35AD001C */  ori         $t5, $t5, (0xE200001C & 0xFFFF)
/* 01FA20 8001FE70 AC4D0000 */  sw          $t5, 0x0($v0)
/* 01FA24 8001FE74 AC590004 */  sw          $t9, 0x4($v0)
/* 01FA28 8001FE78 8CC20000 */  lw          $v0, 0x0($a2)
/* 01FA2C 8001FE7C 3C09FC11 */  lui         $t1, (0xFC119623 >> 16)
/* 01FA30 8001FE80 3C0FFF2F */  lui         $t7, (0xFF2FFFFF >> 16)
/* 01FA34 8001FE84 24580008 */  addiu       $t8, $v0, 0x8
/* 01FA38 8001FE88 ACD80000 */  sw          $t8, 0x0($a2)
/* 01FA3C 8001FE8C 35EFFFFF */  ori         $t7, $t7, (0xFF2FFFFF & 0xFFFF)
/* 01FA40 8001FE90 35299623 */  ori         $t1, $t1, (0xFC119623 & 0xFFFF)
/* 01FA44 8001FE94 AC490000 */  sw          $t1, 0x0($v0)
/* 01FA48 8001FE98 AC4F0004 */  sw          $t7, 0x4($v0)
/* 01FA4C 8001FE9C 8CC20000 */  lw          $v0, 0x0($a2)
/* 01FA50 8001FEA0 240BFFFF */  addiu       $t3, $zero, -0x1
/* 01FA54 8001FEA4 3C0AFA00 */  lui         $t2, 0xfa00
/* 01FA58 8001FEA8 244E0008 */  addiu       $t6, $v0, 0x8
/* 01FA5C 8001FEAC ACCE0000 */  sw          $t6, 0x0($a2)
/* 01FA60 8001FEB0 AC4B0004 */  sw          $t3, 0x4($v0)
/* 01FA64 8001FEB4 AC4A0000 */  sw          $t2, 0x0($v0)
/* 01FA68 8001FEB8 AFA60098 */  sw          $a2, 0x98($sp)
/* 01FA6C 8001FEBC 24040005 */  addiu       $a0, $zero, 0x5
/* 01FA70 8001FEC0 0C002AE5 */  jal         func_8000AB94
/* 01FA74 8001FEC4 27A5002C */   addiu      $a1, $sp, 0x2c
/* 01FA78 8001FEC8 0C007E9A */  jal         func_8001FA68
/* 01FA7C 8001FECC 8FA40098 */   lw         $a0, 0x98($sp)
/* 01FA80 8001FED0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FA84 8001FED4 27BD0098 */  addiu       $sp, $sp, 0x98
/* 01FA88 8001FED8 03E00008 */  jr          $ra
/* 01FA8C 8001FEDC 00000000 */   nop

glabel func_8001FEE0 # 7
/* 01FA90 8001FEE0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FA94 8001FEE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FA98 8001FEE8 8C820000 */  lw          $v0, 0x0($a0)
/* 01FA9C 8001FEEC 3C0FE700 */  lui         $t7, 0xe700
/* 01FAA0 8001FEF0 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 01FAA4 8001FEF4 244E0008 */  addiu       $t6, $v0, 0x8
/* 01FAA8 8001FEF8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 01FAAC 8001FEFC AC400004 */  sw          $zero, 0x4($v0)
/* 01FAB0 8001FF00 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01FAB4 8001FF04 8C820000 */  lw          $v0, 0x0($a0)
/* 01FAB8 8001FF08 3C090050 */  lui         $t1, (0x504240 >> 16)
/* 01FABC 8001FF0C 35294240 */  ori         $t1, $t1, (0x504240 & 0xFFFF)
/* 01FAC0 8001FF10 24580008 */  addiu       $t8, $v0, 0x8
/* 01FAC4 8001FF14 AC980000 */  sw          $t8, 0x0($a0)
/* 01FAC8 8001FF18 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 01FACC 8001FF1C AC590000 */  sw          $t9, 0x0($v0)
/* 01FAD0 8001FF20 AC490004 */  sw          $t1, 0x4($v0)
/* 01FAD4 8001FF24 8C820000 */  lw          $v0, 0x0($a0)
/* 01FAD8 8001FF28 3C0BFC11 */  lui         $t3, (0xFC119623 >> 16)
/* 01FADC 8001FF2C 3C0CFF2F */  lui         $t4, (0xFF2FFFFF >> 16)
/* 01FAE0 8001FF30 244A0008 */  addiu       $t2, $v0, 0x8
/* 01FAE4 8001FF34 AC8A0000 */  sw          $t2, 0x0($a0)
/* 01FAE8 8001FF38 358CFFFF */  ori         $t4, $t4, (0xFF2FFFFF & 0xFFFF)
/* 01FAEC 8001FF3C 356B9623 */  ori         $t3, $t3, (0xFC119623 & 0xFFFF)
/* 01FAF0 8001FF40 AC4B0000 */  sw          $t3, 0x0($v0)
/* 01FAF4 8001FF44 AC4C0004 */  sw          $t4, 0x4($v0)
/* 01FAF8 8001FF48 8C820000 */  lw          $v0, 0x0($a0)
/* 01FAFC 8001FF4C 240FFFFF */  addiu       $t7, $zero, -0x1
/* 01FB00 8001FF50 3C0EFA00 */  lui         $t6, 0xfa00
/* 01FB04 8001FF54 244D0008 */  addiu       $t5, $v0, 0x8
/* 01FB08 8001FF58 AC8D0000 */  sw          $t5, 0x0($a0)
/* 01FB0C 8001FF5C 00803025 */  move        $a2, $a0
/* 01FB10 8001FF60 3C058009 */  lui         $a1, %hi(D_8008E4EC)
/* 01FB14 8001FF64 AC4F0004 */  sw          $t7, 0x4($v0)
/* 01FB18 8001FF68 AC4E0000 */  sw          $t6, 0x0($v0)
/* 01FB1C 8001FF6C AFA60018 */  sw          $a2, 0x18($sp)
/* 01FB20 8001FF70 24A5E4EC */  addiu       $a1, $a1, %lo(D_8008E4EC)
/* 01FB24 8001FF74 0C002AE5 */  jal         func_8000AB94
/* 01FB28 8001FF78 24040005 */   addiu      $a0, $zero, 0x5
/* 01FB2C 8001FF7C 0C007E9A */  jal         func_8001FA68
/* 01FB30 8001FF80 8FA40018 */   lw         $a0, 0x18($sp)
/* 01FB34 8001FF84 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FB38 8001FF88 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FB3C 8001FF8C 03E00008 */  jr          $ra
/* 01FB40 8001FF90 00000000 */   nop

glabel func_8001FF94 # 8
/* 01FB44 8001FF94 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FB48 8001FF98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FB4C 8001FF9C 8C820000 */  lw          $v0, 0x0($a0)
/* 01FB50 8001FFA0 3C0FE700 */  lui         $t7, 0xe700
/* 01FB54 8001FFA4 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 01FB58 8001FFA8 244E0008 */  addiu       $t6, $v0, 0x8
/* 01FB5C 8001FFAC AC8E0000 */  sw          $t6, 0x0($a0)
/* 01FB60 8001FFB0 AC400004 */  sw          $zero, 0x4($v0)
/* 01FB64 8001FFB4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01FB68 8001FFB8 8C820000 */  lw          $v0, 0x0($a0)
/* 01FB6C 8001FFBC 3C090050 */  lui         $t1, (0x504240 >> 16)
/* 01FB70 8001FFC0 35294240 */  ori         $t1, $t1, (0x504240 & 0xFFFF)
/* 01FB74 8001FFC4 24580008 */  addiu       $t8, $v0, 0x8
/* 01FB78 8001FFC8 AC980000 */  sw          $t8, 0x0($a0)
/* 01FB7C 8001FFCC 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 01FB80 8001FFD0 AC590000 */  sw          $t9, 0x0($v0)
/* 01FB84 8001FFD4 AC490004 */  sw          $t1, 0x4($v0)
/* 01FB88 8001FFD8 8C820000 */  lw          $v0, 0x0($a0)
/* 01FB8C 8001FFDC 3C0BFC11 */  lui         $t3, (0xFC119623 >> 16)
/* 01FB90 8001FFE0 3C0CFF2F */  lui         $t4, (0xFF2FFFFF >> 16)
/* 01FB94 8001FFE4 244A0008 */  addiu       $t2, $v0, 0x8
/* 01FB98 8001FFE8 AC8A0000 */  sw          $t2, 0x0($a0)
/* 01FB9C 8001FFEC 358CFFFF */  ori         $t4, $t4, (0xFF2FFFFF & 0xFFFF)
/* 01FBA0 8001FFF0 356B9623 */  ori         $t3, $t3, (0xFC119623 & 0xFFFF)
/* 01FBA4 8001FFF4 AC4B0000 */  sw          $t3, 0x0($v0)
/* 01FBA8 8001FFF8 AC4C0004 */  sw          $t4, 0x4($v0)
/* 01FBAC 8001FFFC 8C820000 */  lw          $v0, 0x0($a0)
/* 01FBB0 80020000 240FFFFF */  addiu       $t7, $zero, -0x1
/* 01FBB4 80020004 3C0EFA00 */  lui         $t6, 0xfa00
/* 01FBB8 80020008 244D0008 */  addiu       $t5, $v0, 0x8
/* 01FBBC 8002000C AC8D0000 */  sw          $t5, 0x0($a0)
/* 01FBC0 80020010 00803025 */  move        $a2, $a0
/* 01FBC4 80020014 3C058009 */  lui         $a1, %hi(D_8008E558)
/* 01FBC8 80020018 AC4F0004 */  sw          $t7, 0x4($v0)
/* 01FBCC 8002001C AC4E0000 */  sw          $t6, 0x0($v0)
/* 01FBD0 80020020 AFA60018 */  sw          $a2, 0x18($sp)
/* 01FBD4 80020024 24A5E558 */  addiu       $a1, $a1, %lo(D_8008E558)
/* 01FBD8 80020028 0C002AE5 */  jal         func_8000AB94
/* 01FBDC 8002002C 24040005 */   addiu      $a0, $zero, 0x5
/* 01FBE0 80020030 0C007E9A */  jal         func_8001FA68
/* 01FBE4 80020034 8FA40018 */   lw         $a0, 0x18($sp)
/* 01FBE8 80020038 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FBEC 8002003C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FBF0 80020040 03E00008 */  jr          $ra
/* 01FBF4 80020044 00000000 */   nop

glabel func_80020048 # 9
/* 01FBF8 80020048 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FBFC 8002004C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FC00 80020050 8C820000 */  lw          $v0, 0x0($a0)
/* 01FC04 80020054 3C0FE700 */  lui         $t7, 0xe700
/* 01FC08 80020058 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 01FC0C 8002005C 244E0008 */  addiu       $t6, $v0, 0x8
/* 01FC10 80020060 AC8E0000 */  sw          $t6, 0x0($a0)
/* 01FC14 80020064 AC400004 */  sw          $zero, 0x4($v0)
/* 01FC18 80020068 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01FC1C 8002006C 8C820000 */  lw          $v0, 0x0($a0)
/* 01FC20 80020070 3C090050 */  lui         $t1, (0x504240 >> 16)
/* 01FC24 80020074 35294240 */  ori         $t1, $t1, (0x504240 & 0xFFFF)
/* 01FC28 80020078 24580008 */  addiu       $t8, $v0, 0x8
/* 01FC2C 8002007C AC980000 */  sw          $t8, 0x0($a0)
/* 01FC30 80020080 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 01FC34 80020084 AC590000 */  sw          $t9, 0x0($v0)
/* 01FC38 80020088 AC490004 */  sw          $t1, 0x4($v0)
/* 01FC3C 8002008C 8C820000 */  lw          $v0, 0x0($a0)
/* 01FC40 80020090 3C0BFC11 */  lui         $t3, (0xFC119623 >> 16)
/* 01FC44 80020094 3C0CFF2F */  lui         $t4, (0xFF2FFFFF >> 16)
/* 01FC48 80020098 244A0008 */  addiu       $t2, $v0, 0x8
/* 01FC4C 8002009C AC8A0000 */  sw          $t2, 0x0($a0)
/* 01FC50 800200A0 358CFFFF */  ori         $t4, $t4, (0xFF2FFFFF & 0xFFFF)
/* 01FC54 800200A4 356B9623 */  ori         $t3, $t3, (0xFC119623 & 0xFFFF)
/* 01FC58 800200A8 AC4B0000 */  sw          $t3, 0x0($v0)
/* 01FC5C 800200AC AC4C0004 */  sw          $t4, 0x4($v0)
/* 01FC60 800200B0 8C820000 */  lw          $v0, 0x0($a0)
/* 01FC64 800200B4 240FFFFF */  addiu       $t7, $zero, -0x1
/* 01FC68 800200B8 3C0EFA00 */  lui         $t6, 0xfa00
/* 01FC6C 800200BC 244D0008 */  addiu       $t5, $v0, 0x8
/* 01FC70 800200C0 AC8D0000 */  sw          $t5, 0x0($a0)
/* 01FC74 800200C4 00803025 */  move        $a2, $a0
/* 01FC78 800200C8 3C058009 */  lui         $a1, %hi(D_8008E5C4)
/* 01FC7C 800200CC AC4F0004 */  sw          $t7, 0x4($v0)
/* 01FC80 800200D0 AC4E0000 */  sw          $t6, 0x0($v0)
/* 01FC84 800200D4 AFA60018 */  sw          $a2, 0x18($sp)
/* 01FC88 800200D8 24A5E5C4 */  addiu       $a1, $a1, %lo(D_8008E5C4)
/* 01FC8C 800200DC 0C002AE5 */  jal         func_8000AB94
/* 01FC90 800200E0 24040005 */   addiu      $a0, $zero, 0x5
/* 01FC94 800200E4 0C007E9A */  jal         func_8001FA68
/* 01FC98 800200E8 8FA40018 */   lw         $a0, 0x18($sp)
/* 01FC9C 800200EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FCA0 800200F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FCA4 800200F4 03E00008 */  jr          $ra
/* 01FCA8 800200F8 00000000 */   nop

glabel func_800200FC # 10
/* 01FCAC 800200FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FCB0 80020100 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FCB4 80020104 10800008 */  beqz        $a0, .L80020128
/* 01FCB8 80020108 00802825 */   move       $a1, $a0
/* 01FCBC 8002010C 3C0E800F */  lui         $t6, %hi(D_800F4960)
/* 01FCC0 80020110 8DCE4960 */  lw          $t6, %lo(D_800F4960)($t6)
/* 01FCC4 80020114 108E0004 */  beq         $a0, $t6, .L80020128
/* 01FCC8 80020118 24040021 */   addiu      $a0, $zero, 0x21
/* 01FCCC 8002011C 0C0084D9 */  jal         func_80021364
/* 01FCD0 80020120 AFA50018 */   sw         $a1, 0x18($sp)
/* 01FCD4 80020124 8FA50018 */  lw          $a1, 0x18($sp)
.L80020128:
/* 01FCD8 80020128 00057880 */  sll         $t7, $a1, 2
/* 01FCDC 8002012C 3C188009 */  lui         $t8, %hi(D_8008E630)
/* 01FCE0 80020130 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FCE4 80020134 3C01800F */  lui         $at, %hi(D_800F4960)
/* 01FCE8 80020138 030FC021 */  addu        $t8, $t8, $t7
/* 01FCEC 8002013C 8F18E630 */  lw          $t8, %lo(D_8008E630)($t8)
/* 01FCF0 80020140 AC254960 */  sw          $a1, %lo(D_800F4960)($at)
/* 01FCF4 80020144 3C01800F */  lui         $at, %hi(D_800F4964)
/* 01FCF8 80020148 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FCFC 8002014C 03E00008 */  jr          $ra
/* 01FD00 80020150 AC384964 */   sw         $t8, %lo(D_800F4964)($at)

glabel func_80020154 # 11
/* 01FD04 80020154 3C02800F */  lui         $v0, %hi(D_800F4960)
/* 01FD08 80020158 03E00008 */  jr          $ra
/* 01FD0C 8002015C 8C424960 */   lw         $v0, %lo(D_800F4960)($v0)

glabel func_80020160 # 12
/* 01FD10 80020160 240E0008 */  addiu       $t6, $zero, 0x8
/* 01FD14 80020164 3C01800F */  lui         $at, %hi(D_800F495C)
/* 01FD18 80020168 03E00008 */  jr          $ra
/* 01FD1C 8002016C AC2E495C */   sw         $t6, %lo(D_800F495C)($at)

glabel func_80020170 # 13
/* 01FD20 80020170 27BDFF20 */  addiu       $sp, $sp, -0xe0
/* 01FD24 80020174 3C0F8009 */  lui         $t7, %hi(D_8008E644)
/* 01FD28 80020178 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01FD2C 8002017C AFA400E0 */  sw          $a0, 0xe0($sp)
/* 01FD30 80020180 25EFE644 */  addiu       $t7, $t7, %lo(D_8008E644)
/* 01FD34 80020184 8DE10000 */  lw          $at, 0x0($t7)
/* 01FD38 80020188 8DE80004 */  lw          $t0, 0x4($t7)
/* 01FD3C 8002018C 27AE0074 */  addiu       $t6, $sp, 0x74
/* 01FD40 80020190 ADC10000 */  sw          $at, 0x0($t6)
/* 01FD44 80020194 ADC80004 */  sw          $t0, 0x4($t6)
/* 01FD48 80020198 8DE8000C */  lw          $t0, 0xc($t7)
/* 01FD4C 8002019C 8DE10008 */  lw          $at, 0x8($t7)
/* 01FD50 800201A0 3C0A8009 */  lui         $t2, %hi(D_8008E664)
/* 01FD54 800201A4 ADC8000C */  sw          $t0, 0xc($t6)
/* 01FD58 800201A8 ADC10008 */  sw          $at, 0x8($t6)
/* 01FD5C 800201AC 8DE10010 */  lw          $at, 0x10($t7)
/* 01FD60 800201B0 8DE80014 */  lw          $t0, 0x14($t7)
/* 01FD64 800201B4 254AE664 */  addiu       $t2, $t2, %lo(D_8008E664)
/* 01FD68 800201B8 ADC10010 */  sw          $at, 0x10($t6)
/* 01FD6C 800201BC ADC80014 */  sw          $t0, 0x14($t6)
/* 01FD70 800201C0 8DE8001C */  lw          $t0, 0x1c($t7)
/* 01FD74 800201C4 8DE10018 */  lw          $at, 0x18($t7)
/* 01FD78 800201C8 27A90054 */  addiu       $t1, $sp, 0x54
/* 01FD7C 800201CC ADC8001C */  sw          $t0, 0x1c($t6)
/* 01FD80 800201D0 ADC10018 */  sw          $at, 0x18($t6)
/* 01FD84 800201D4 8D4D0004 */  lw          $t5, 0x4($t2)
/* 01FD88 800201D8 8D410000 */  lw          $at, 0x0($t2)
/* 01FD8C 800201DC 3C198007 */  lui         $t9, %hi(D_80070000)
/* 01FD90 800201E0 AD2D0004 */  sw          $t5, 0x4($t1)
/* 01FD94 800201E4 AD210000 */  sw          $at, 0x0($t1)
/* 01FD98 800201E8 8D410008 */  lw          $at, 0x8($t2)
/* 01FD9C 800201EC 8D4D000C */  lw          $t5, 0xc($t2)
/* 01FDA0 800201F0 3C18800F */  lui         $t8, %hi(D_800F49EC)
/* 01FDA4 800201F4 AD210008 */  sw          $at, 0x8($t1)
/* 01FDA8 800201F8 AD2D000C */  sw          $t5, 0xc($t1)
/* 01FDAC 800201FC 8D4D0014 */  lw          $t5, 0x14($t2)
/* 01FDB0 80020200 8D410010 */  lw          $at, 0x10($t2)
/* 01FDB4 80020204 AD2D0014 */  sw          $t5, 0x14($t1)
/* 01FDB8 80020208 AD210010 */  sw          $at, 0x10($t1)
/* 01FDBC 8002020C 8D410018 */  lw          $at, 0x18($t2)
/* 01FDC0 80020210 8D4D001C */  lw          $t5, 0x1c($t2)
/* 01FDC4 80020214 AD210018 */  sw          $at, 0x18($t1)
/* 01FDC8 80020218 AD2D001C */  sw          $t5, 0x1c($t1)
/* 01FDCC 8002021C 8F390000 */  lw          $t9, %lo(D_80070000)($t9)
/* 01FDD0 80020220 5320013B */  beql        $t9, $zero, .L80020710
/* 01FDD4 80020224 8FBF0034 */   lw         $ra, 0x34($sp)
/* 01FDD8 80020228 8F1849EC */  lw          $t8, %lo(D_800F49EC)($t8)
/* 01FDDC 8002022C 8FAF00E0 */  lw          $t7, 0xe0($sp)
/* 01FDE0 80020230 3C0C800B */  lui         $t4, %hi(D_800B0960 + 0x3)
/* 01FDE4 80020234 330E0004 */  andi        $t6, $t8, 0x4
/* 01FDE8 80020238 51C00135 */  beql        $t6, $zero, .L80020710
/* 01FDEC 8002023C 8FBF0034 */   lw         $ra, 0x34($sp)
/* 01FDF0 80020240 918C0963 */  lbu         $t4, %lo(D_800B0960 + 0x3)($t4)
/* 01FDF4 80020244 8DE80000 */  lw          $t0, 0x0($t7)
/* 01FDF8 80020248 24010002 */  addiu       $at, $zero, 0x2
/* 01FDFC 8002024C 11810005 */  beq         $t4, $at, .L80020264
/* 01FE00 80020250 AFA800B0 */   sw         $t0, 0xb0($sp)
/* 01FE04 80020254 3C013F00 */  lui         $at, 0x3f00
/* 01FE08 80020258 44810000 */  mtc1        $at, $f0
/* 01FE0C 8002025C 1000004A */  b           .L80020388
/* 01FE10 80020260 00001825 */   move       $v1, $zero
.L80020264:
/* 01FE14 80020264 0C00D9DB */  jal         func_8003676C
/* 01FE18 80020268 00000000 */   nop
/* 01FE1C 8002026C 14400005 */  bnez        $v0, .L80020284
/* 01FE20 80020270 3C0B8007 */   lui        $t3, %hi(D_80070004)
/* 01FE24 80020274 3C013F80 */  lui         $at, 0x3f80
/* 01FE28 80020278 44810000 */  mtc1        $at, $f0
/* 01FE2C 8002027C 10000042 */  b           .L80020388
/* 01FE30 80020280 24030001 */   addiu      $v1, $zero, 0x1
.L80020284:
/* 01FE34 80020284 8D6B0004 */  lw          $t3, %lo(D_80070004)($t3)
/* 01FE38 80020288 11600004 */  beqz        $t3, .L8002029C
/* 01FE3C 8002028C 00000000 */   nop
/* 01FE40 80020290 0C0004B6 */  jal         func_800012D8
/* 01FE44 80020294 00000000 */   nop
/* 01FE48 80020298 10400004 */  beqz        $v0, .L800202AC
.L8002029C:
/* 01FE4C 8002029C 3C01800B */   lui        $at, %hi(D_800A990C)
/* 01FE50 800202A0 24030002 */  addiu       $v1, $zero, 0x2
/* 01FE54 800202A4 10000038 */  b           .L80020388
/* 01FE58 800202A8 C420990C */   lwc1       $f0, %lo(D_800A990C)($at)
.L800202AC:
/* 01FE5C 800202AC 0C0005CC */  jal         func_80001730
/* 01FE60 800202B0 00000000 */   nop
/* 01FE64 800202B4 14400004 */  bnez        $v0, .L800202C8
/* 01FE68 800202B8 24030003 */   addiu      $v1, $zero, 0x3
/* 01FE6C 800202BC 3C01800B */  lui         $at, %hi(D_800A9910)
/* 01FE70 800202C0 10000031 */  b           .L80020388
/* 01FE74 800202C4 C4209910 */   lwc1       $f0, %lo(D_800A9910)($at)
.L800202C8:
/* 01FE78 800202C8 3C02800F */  lui         $v0, %hi(D_800F495C)
/* 01FE7C 800202CC 8C42495C */  lw          $v0, %lo(D_800F495C)($v0)
/* 01FE80 800202D0 24010003 */  addiu       $at, $zero, 0x3
/* 01FE84 800202D4 10410003 */  beq         $v0, $at, .L800202E4
/* 01FE88 800202D8 24010004 */   addiu      $at, $zero, 0x4
/* 01FE8C 800202DC 14410003 */  bne         $v0, $at, .L800202EC
/* 01FE90 800202E0 24030005 */   addiu      $v1, $zero, 0x5
.L800202E4:
/* 01FE94 800202E4 10000001 */  b           .L800202EC
/* 01FE98 800202E8 24030004 */   addiu      $v1, $zero, 0x4
.L800202EC:
/* 01FE9C 800202EC 3C01800B */  lui         $at, %hi(D_800A9914)
/* 01FEA0 800202F0 C4209914 */  lwc1        $f0, %lo(D_800A9914)($at)
/* 01FEA4 800202F4 AFA300B8 */  sw          $v1, 0xb8($sp)
/* 01FEA8 800202F8 0C00D989 */  jal         func_80036624
/* 01FEAC 800202FC E7A0009C */   swc1       $f0, 0x9c($sp)
/* 01FEB0 80020300 24010003 */  addiu       $at, $zero, 0x3
/* 01FEB4 80020304 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 01FEB8 80020308 10410006 */  beq         $v0, $at, .L80020324
/* 01FEBC 8002030C C7A0009C */   lwc1       $f0, 0x9c($sp)
/* 01FEC0 80020310 24010005 */  addiu       $at, $zero, 0x5
/* 01FEC4 80020314 50410006 */  beql        $v0, $at, .L80020330
/* 01FEC8 80020318 24030007 */   addiu      $v1, $zero, 0x7
/* 01FECC 8002031C 1000001A */  b           .L80020388
/* 01FED0 80020320 00000000 */   nop
.L80020324:
/* 01FED4 80020324 10000018 */  b           .L80020388
/* 01FED8 80020328 24030006 */   addiu      $v1, $zero, 0x6
/* 01FEDC 8002032C 24030007 */  addiu       $v1, $zero, 0x7
.L80020330:
/* 01FEE0 80020330 0C00E512 */  jal         func_80039448
/* 01FEE4 80020334 AFA300B8 */   sw         $v1, 0xb8($sp)
/* 01FEE8 80020338 44822000 */  mtc1        $v0, $f4
/* 01FEEC 8002033C 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 01FEF0 80020340 04410006 */  bgez        $v0, .L8002035C
/* 01FEF4 80020344 468021A1 */   cvt.d.w    $f6, $f4
/* 01FEF8 80020348 3C0141F0 */  lui         $at, 0x41f0
/* 01FEFC 8002034C 44814800 */  mtc1        $at, $f9
/* 01FF00 80020350 44804000 */  mtc1        $zero, $f8
/* 01FF04 80020354 00000000 */  nop
/* 01FF08 80020358 46283180 */  add.d       $f6, $f6, $f8
.L8002035C:
/* 01FF0C 8002035C 3C013DF0 */  lui         $at, 0x3df0
/* 01FF10 80020360 44815800 */  mtc1        $at, $f11
/* 01FF14 80020364 44805000 */  mtc1        $zero, $f10
/* 01FF18 80020368 3C01800B */  lui         $at, %hi(D_800A9918)
/* 01FF1C 8002036C D4329918 */  ldc1        $f18, %lo(D_800A9918)($at)
/* 01FF20 80020370 462A3402 */  mul.d       $f16, $f6, $f10
/* 01FF24 80020374 3C01800B */  lui         $at, %hi(D_800A9920)
/* 01FF28 80020378 D4289920 */  ldc1        $f8, %lo(D_800A9920)($at)
/* 01FF2C 8002037C 46328102 */  mul.d       $f4, $f16, $f18
/* 01FF30 80020380 46282180 */  add.d       $f6, $f4, $f8
/* 01FF34 80020384 46203020 */  cvt.s.d     $f0, $f6
.L80020388:
/* 01FF38 80020388 3C09800F */  lui         $t1, %hi(D_800F495C)
/* 01FF3C 8002038C 8D29495C */  lw          $t1, %lo(D_800F495C)($t1)
/* 01FF40 80020390 3C01800F */  lui         $at, %hi(D_800F495C)
/* 01FF44 80020394 10690016 */  beq         $v1, $t1, .L800203F0
/* 01FF48 80020398 00000000 */   nop
/* 01FF4C 8002039C AC23495C */  sw          $v1, %lo(D_800F495C)($at)
/* 01FF50 800203A0 24010004 */  addiu       $at, $zero, 0x4
/* 01FF54 800203A4 14610004 */  bne         $v1, $at, .L800203B8
/* 01FF58 800203A8 240400BE */   addiu      $a0, $zero, 0xbe
/* 01FF5C 800203AC 0C00789A */  jal         func_8001E268
/* 01FF60 800203B0 E7A0009C */   swc1       $f0, 0x9c($sp)
/* 01FF64 800203B4 C7A0009C */  lwc1        $f0, 0x9c($sp)
.L800203B8:
/* 01FF68 800203B8 3C0A800F */  lui         $t2, %hi(D_800F495C)
/* 01FF6C 800203BC 8D4A495C */  lw          $t2, %lo(D_800F495C)($t2)
/* 01FF70 800203C0 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 01FF74 800203C4 3C04800F */  lui         $a0, %hi(D_800F4950)
/* 01FF78 800203C8 000A6880 */  sll         $t5, $t2, 2
/* 01FF7C 800203CC 03ADC821 */  addu        $t9, $sp, $t5
/* 01FF80 800203D0 8F390074 */  lw          $t9, 0x74($t9)
/* 01FF84 800203D4 E7A0009C */  swc1        $f0, 0x9c($sp)
/* 01FF88 800203D8 24844950 */  addiu       $a0, $a0, %lo(D_800F4950)
/* 01FF8C 800203DC 0019C080 */  sll         $t8, $t9, 2
/* 01FF90 800203E0 00B82821 */  addu        $a1, $a1, $t8
/* 01FF94 800203E4 0C0023F3 */  jal         func_80008FCC
/* 01FF98 800203E8 8CA58E30 */   lw         $a1, %lo(D_80068E30)($a1)
/* 01FF9C 800203EC C7A0009C */  lwc1        $f0, 0x9c($sp)
.L800203F0:
/* 01FFA0 800203F0 3C0E800F */  lui         $t6, %hi(D_800F4958)
/* 01FFA4 800203F4 85CE4958 */  lh          $t6, %lo(D_800F4958)($t6)
/* 01FFA8 800203F8 3C04800F */  lui         $a0, %hi(D_800F4950)
/* 01FFAC 800203FC 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01FFB0 80020400 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01FFB4 80020404 24844950 */  addiu       $a0, $a0, %lo(D_800F4950)
/* 01FFB8 80020408 27A500BC */  addiu       $a1, $sp, 0xbc
/* 01FFBC 8002040C E7A0009C */  swc1        $f0, 0x9c($sp)
/* 01FFC0 80020410 0C002400 */  jal         func_80009000
/* 01FFC4 80020414 AFAE00DC */   sw         $t6, 0xdc($sp)
/* 01FFC8 80020418 8FAF00B0 */  lw          $t7, 0xb0($sp)
/* 01FFCC 8002041C C7A0009C */  lwc1        $f0, 0x9c($sp)
/* 01FFD0 80020420 3C0CE700 */  lui         $t4, 0xe700
/* 01FFD4 80020424 25E80008 */  addiu       $t0, $t7, 0x8
/* 01FFD8 80020428 AFA800B0 */  sw          $t0, 0xb0($sp)
/* 01FFDC 8002042C 3C0B800F */  lui         $t3, %hi(D_800F495C)
/* 01FFE0 80020430 ADE00004 */  sw          $zero, 0x4($t7)
/* 01FFE4 80020434 ADEC0000 */  sw          $t4, 0x0($t7)
/* 01FFE8 80020438 8D6B495C */  lw          $t3, %lo(D_800F495C)($t3)
/* 01FFEC 8002043C 24010006 */  addiu       $at, $zero, 0x6
/* 01FFF0 80020440 8FA200BC */  lw          $v0, 0xbc($sp)
/* 01FFF4 80020444 1561000C */  bne         $t3, $at, .L80020478
/* 01FFF8 80020448 24040005 */   addiu      $a0, $zero, 0x5
/* 01FFFC 8002044C 24010050 */  addiu       $at, $zero, 0x50
/* 020000 80020450 10410009 */  beq         $v0, $at, .L80020478
/* 020004 80020454 8FA900B0 */   lw         $t1, 0xb0($sp)
/* 020008 80020458 252A0008 */  addiu       $t2, $t1, 0x8
/* 02000C 8002045C 3C0DFC70 */  lui         $t5, (0xFC70FEE1 >> 16)
/* 020010 80020460 35ADFEE1 */  ori         $t5, $t5, (0xFC70FEE1 & 0xFFFF)
/* 020014 80020464 AFAA00B0 */  sw          $t2, 0xb0($sp)
/* 020018 80020468 2419F3F9 */  addiu       $t9, $zero, -0xc07
/* 02001C 8002046C AD390004 */  sw          $t9, 0x4($t1)
/* 020020 80020470 1000000A */  b           .L8002049C
/* 020024 80020474 AD2D0000 */   sw         $t5, 0x0($t1)
.L80020478:
/* 020028 80020478 8FB800B0 */  lw          $t8, 0xb0($sp)
/* 02002C 8002047C 3C0FFC11 */  lui         $t7, (0xFC119623 >> 16)
/* 020030 80020480 3C08FF2F */  lui         $t0, (0xFF2FFFFF >> 16)
/* 020034 80020484 270E0008 */  addiu       $t6, $t8, 0x8
/* 020038 80020488 AFAE00B0 */  sw          $t6, 0xb0($sp)
/* 02003C 8002048C 3508FFFF */  ori         $t0, $t0, (0xFF2FFFFF & 0xFFFF)
/* 020040 80020490 35EF9623 */  ori         $t7, $t7, (0xFC119623 & 0xFFFF)
/* 020044 80020494 AF0F0000 */  sw          $t7, 0x0($t8)
/* 020048 80020498 AF080004 */  sw          $t0, 0x4($t8)
.L8002049C:
/* 02004C 8002049C 8FAC00B0 */  lw          $t4, 0xb0($sp)
/* 020050 800204A0 3C09E200 */  lui         $t1, (0xE200001C >> 16)
/* 020054 800204A4 3C0A0050 */  lui         $t2, (0x504240 >> 16)
/* 020058 800204A8 258B0008 */  addiu       $t3, $t4, 0x8
/* 02005C 800204AC AFAB00B0 */  sw          $t3, 0xb0($sp)
/* 020060 800204B0 354A4240 */  ori         $t2, $t2, (0x504240 & 0xFFFF)
/* 020064 800204B4 3529001C */  ori         $t1, $t1, (0xE200001C & 0xFFFF)
/* 020068 800204B8 AD890000 */  sw          $t1, 0x0($t4)
/* 02006C 800204BC AD8A0004 */  sw          $t2, 0x4($t4)
/* 020070 800204C0 8FA700B0 */  lw          $a3, 0xb0($sp)
/* 020074 800204C4 3C18FA00 */  lui         $t8, 0xfa00
/* 020078 800204C8 3C0E800F */  lui         $t6, %hi(D_800F495C)
/* 02007C 800204CC 24F90008 */  addiu       $t9, $a3, 0x8
/* 020080 800204D0 AFB900B0 */  sw          $t9, 0xb0($sp)
/* 020084 800204D4 ACF80000 */  sw          $t8, 0x0($a3)
/* 020088 800204D8 8DCE495C */  lw          $t6, %lo(D_800F495C)($t6)
/* 02008C 800204DC 27A80054 */  addiu       $t0, $sp, 0x54
/* 020090 800204E0 27A600A0 */  addiu       $a2, $sp, 0xa0
/* 020094 800204E4 000E7880 */  sll         $t7, $t6, 2
/* 020098 800204E8 01E81021 */  addu        $v0, $t7, $t0
/* 02009C 800204EC 904A0000 */  lbu         $t2, 0x0($v0)
/* 0200A0 800204F0 904B0003 */  lbu         $t3, 0x3($v0)
/* 0200A4 800204F4 904E0001 */  lbu         $t6, 0x1($v0)
/* 0200A8 800204F8 90490002 */  lbu         $t1, 0x2($v0)
/* 0200AC 800204FC 000A6E00 */  sll         $t5, $t2, 24
/* 0200B0 80020500 016DC825 */  or          $t9, $t3, $t5
/* 0200B4 80020504 000E7C00 */  sll         $t7, $t6, 16
/* 0200B8 80020508 032F4025 */  or          $t0, $t9, $t7
/* 0200BC 8002050C 00095200 */  sll         $t2, $t1, 8
/* 0200C0 80020510 010A5825 */  or          $t3, $t0, $t2
/* 0200C4 80020514 ACEB0004 */  sw          $t3, 0x4($a3)
/* 0200C8 80020518 E7A0009C */  swc1        $f0, 0x9c($sp)
/* 0200CC 8002051C 0C002A76 */  jal         func_8000A9D8
/* 0200D0 80020520 8FA500BC */   lw         $a1, 0xbc($sp)
/* 0200D4 80020524 3C0D800F */  lui         $t5, %hi(D_800F495C)
/* 0200D8 80020528 8DAD495C */  lw          $t5, %lo(D_800F495C)($t5)
/* 0200DC 8002052C 24010001 */  addiu       $at, $zero, 0x1
/* 0200E0 80020530 C7A0009C */  lwc1        $f0, 0x9c($sp)
/* 0200E4 80020534 15A10029 */  bne         $t5, $at, .L800205DC
/* 0200E8 80020538 97AA00A8 */   lhu        $t2, 0xa8($sp)
/* 0200EC 8002053C 97B800A8 */  lhu         $t8, 0xa8($sp)
/* 0200F0 80020540 3C014396 */  lui         $at, 0x4396
/* 0200F4 80020544 44815000 */  mtc1        $at, $f10
/* 0200F8 80020548 44988000 */  mtc1        $t8, $f16
/* 0200FC 8002054C 8FA200BC */  lw          $v0, 0xbc($sp)
/* 020100 80020550 07010005 */  bgez        $t8, .L80020568
/* 020104 80020554 468084A0 */   cvt.s.w    $f18, $f16
/* 020108 80020558 3C014F80 */  lui         $at, 0x4f80
/* 02010C 8002055C 44812000 */  mtc1        $at, $f4
/* 020110 80020560 00000000 */  nop
/* 020114 80020564 46049480 */  add.s       $f18, $f18, $f4
.L80020568:
/* 020118 80020568 46009202 */  mul.s       $f8, $f18, $f0
/* 02011C 8002056C 97AF00AA */  lhu         $t7, 0xaa($sp)
/* 020120 80020570 3C01435C */  lui         $at, 0x435c
/* 020124 80020574 44812000 */  mtc1        $at, $f4
/* 020128 80020578 448F9000 */  mtc1        $t7, $f18
/* 02012C 8002057C 3C014F80 */  lui         $at, 0x4f80
/* 020130 80020580 46085181 */  sub.s       $f6, $f10, $f8
/* 020134 80020584 468092A0 */  cvt.s.w     $f10, $f18
/* 020138 80020588 4600340D */  trunc.w.s   $f16, $f6
/* 02013C 8002058C 44198000 */  mfc1        $t9, $f16
/* 020140 80020590 05E10004 */  bgez        $t7, .L800205A4
/* 020144 80020594 AFB90098 */   sw         $t9, 0x98($sp)
/* 020148 80020598 44814000 */  mtc1        $at, $f8
/* 02014C 8002059C 00000000 */  nop
/* 020150 800205A0 46085280 */  add.s       $f10, $f10, $f8
.L800205A4:
/* 020154 800205A4 46005182 */  mul.s       $f6, $f10, $f0
/* 020158 800205A8 8FA800DC */  lw          $t0, 0xdc($sp)
/* 02015C 800205AC 24010059 */  addiu       $at, $zero, 0x59
/* 020160 800205B0 46062401 */  sub.s       $f16, $f4, $f6
/* 020164 800205B4 4600848D */  trunc.w.s   $f18, $f16
/* 020168 800205B8 44099000 */  mfc1        $t1, $f18
/* 02016C 800205BC 1048002E */  beq         $v0, $t0, .L80020678
/* 020170 800205C0 AFA90094 */   sw         $t1, 0x94($sp)
/* 020174 800205C4 1441002C */  bne         $v0, $at, .L80020678
/* 020178 800205C8 2404001A */   addiu      $a0, $zero, 0x1a
/* 02017C 800205CC 0C0084D9 */  jal         func_80021364
/* 020180 800205D0 E7A0009C */   swc1       $f0, 0x9c($sp)
/* 020184 800205D4 10000028 */  b           .L80020678
/* 020188 800205D8 C7A0009C */   lwc1       $f0, 0x9c($sp)
.L800205DC:
/* 02018C 800205DC 448A4000 */  mtc1        $t2, $f8
/* 020190 800205E0 3C014F80 */  lui         $at, 0x4f80
/* 020194 800205E4 05410004 */  bgez        $t2, .L800205F8
/* 020198 800205E8 468042A0 */   cvt.s.w    $f10, $f8
/* 02019C 800205EC 44812000 */  mtc1        $at, $f4
/* 0201A0 800205F0 00000000 */  nop
/* 0201A4 800205F4 46045280 */  add.s       $f10, $f10, $f4
.L800205F8:
/* 0201A8 800205F8 46005182 */  mul.s       $f6, $f10, $f0
/* 0201AC 800205FC 3C013F00 */  lui         $at, 0x3f00
/* 0201B0 80020600 44818000 */  mtc1        $at, $f16
/* 0201B4 80020604 3C014389 */  lui         $at, 0x4389
/* 0201B8 80020608 44814000 */  mtc1        $at, $f8
/* 0201BC 8002060C 3C013F80 */  lui         $at, 0x3f80
/* 0201C0 80020610 44815000 */  mtc1        $at, $f10
/* 0201C4 80020614 46103482 */  mul.s       $f18, $f6, $f16
/* 0201C8 80020618 97B800AA */  lhu         $t8, 0xaa($sp)
/* 0201CC 8002061C 3C014F80 */  lui         $at, 0x4f80
/* 0201D0 80020620 46124101 */  sub.s       $f4, $f8, $f18
/* 0201D4 80020624 44984000 */  mtc1        $t8, $f8
/* 0201D8 80020628 460A2182 */  mul.s       $f6, $f4, $f10
/* 0201DC 8002062C 468044A0 */  cvt.s.w     $f18, $f8
/* 0201E0 80020630 4600340D */  trunc.w.s   $f16, $f6
/* 0201E4 80020634 440D8000 */  mfc1        $t5, $f16
/* 0201E8 80020638 07010004 */  bgez        $t8, .L8002064C
/* 0201EC 8002063C AFAD0098 */   sw         $t5, 0x98($sp)
/* 0201F0 80020640 44812000 */  mtc1        $at, $f4
/* 0201F4 80020644 00000000 */  nop
/* 0201F8 80020648 46049480 */  add.s       $f18, $f18, $f4
.L8002064C:
/* 0201FC 8002064C 46009282 */  mul.s       $f10, $f18, $f0
/* 020200 80020650 3C013F00 */  lui         $at, 0x3f00
/* 020204 80020654 44813000 */  mtc1        $at, $f6
/* 020208 80020658 3C014348 */  lui         $at, 0x4348
/* 02020C 8002065C 44814000 */  mtc1        $at, $f8
/* 020210 80020660 46065402 */  mul.s       $f16, $f10, $f6
/* 020214 80020664 46104101 */  sub.s       $f4, $f8, $f16
/* 020218 80020668 4600248D */  trunc.w.s   $f18, $f4
/* 02021C 8002066C 44199000 */  mfc1        $t9, $f18
/* 020220 80020670 00000000 */  nop
/* 020224 80020674 AFB90094 */  sw          $t9, 0x94($sp)
.L80020678:
/* 020228 80020678 93AF00AC */  lbu         $t7, 0xac($sp)
/* 02022C 8002067C 97AC00A8 */  lhu         $t4, 0xa8($sp)
/* 020230 80020680 97A900AA */  lhu         $t1, 0xaa($sp)
/* 020234 80020684 27A400C0 */  addiu       $a0, $sp, 0xc0
/* 020238 80020688 8FA500A0 */  lw          $a1, 0xa0($sp)
/* 02023C 8002068C 8FA600A4 */  lw          $a2, 0xa4($sp)
/* 020240 80020690 93A700AD */  lbu         $a3, 0xad($sp)
/* 020244 80020694 E7A0009C */  swc1        $f0, 0x9c($sp)
/* 020248 80020698 AFAF0010 */  sw          $t7, 0x10($sp)
/* 02024C 8002069C AFAC0014 */  sw          $t4, 0x14($sp)
/* 020250 800206A0 0C00FE60 */  jal         func_8003F980
/* 020254 800206A4 AFA90018 */   sw         $t1, 0x18($sp)
/* 020258 800206A8 3C013F80 */  lui         $at, 0x3f80
/* 02025C 800206AC C7A0009C */  lwc1        $f0, 0x9c($sp)
/* 020260 800206B0 44815000 */  mtc1        $at, $f10
/* 020264 800206B4 24080002 */  addiu       $t0, $zero, 0x2
/* 020268 800206B8 240A0002 */  addiu       $t2, $zero, 0x2
/* 02026C 800206BC 46005182 */  mul.s       $f6, $f10, $f0
/* 020270 800206C0 240B0001 */  addiu       $t3, $zero, 0x1
/* 020274 800206C4 240D0001 */  addiu       $t5, $zero, 0x1
/* 020278 800206C8 24180001 */  addiu       $t8, $zero, 0x1
/* 02027C 800206CC AFB8002C */  sw          $t8, 0x2c($sp)
/* 020280 800206D0 AFAD001C */  sw          $t5, 0x1c($sp)
/* 020284 800206D4 AFAB0018 */  sw          $t3, 0x18($sp)
/* 020288 800206D8 E7A60020 */  swc1        $f6, 0x20($sp)
/* 02028C 800206DC AFAA0014 */  sw          $t2, 0x14($sp)
/* 020290 800206E0 AFA80010 */  sw          $t0, 0x10($sp)
/* 020294 800206E4 27A400B0 */  addiu       $a0, $sp, 0xb0
/* 020298 800206E8 27A500C0 */  addiu       $a1, $sp, 0xc0
/* 02029C 800206EC 8FA60098 */  lw          $a2, 0x98($sp)
/* 0202A0 800206F0 8FA70094 */  lw          $a3, 0x94($sp)
/* 0202A4 800206F4 AFA00028 */  sw          $zero, 0x28($sp)
/* 0202A8 800206F8 0C00FE91 */  jal         func_8003FA44
/* 0202AC 800206FC E7A00024 */   swc1       $f0, 0x24($sp)
/* 0202B0 80020700 8FAE00B0 */  lw          $t6, 0xb0($sp)
/* 0202B4 80020704 8FB900E0 */  lw          $t9, 0xe0($sp)
/* 0202B8 80020708 AF2E0000 */  sw          $t6, 0x0($t9)
/* 0202BC 8002070C 8FBF0034 */  lw          $ra, 0x34($sp)
.L80020710:
/* 0202C0 80020710 27BD00E0 */  addiu       $sp, $sp, 0xe0
/* 0202C4 80020714 03E00008 */  jr          $ra
/* 0202C8 80020718 00000000 */   nop

glabel func_8002071C # 14
/* 0202CC 8002071C 3C018009 */  lui         $at, %hi(D_8008E7C8)
/* 0202D0 80020720 C420E7C8 */  lwc1        $f0, %lo(D_8008E7C8)($at)
/* 0202D4 80020724 3C014200 */  lui         $at, 0x4200
/* 0202D8 80020728 44811000 */  mtc1        $at, $f2
/* 0202DC 8002072C 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 0202E0 80020730 C4242C64 */  lwc1        $f4, %lo(D_800B2C64)($at)
/* 0202E4 80020734 44806000 */  mtc1        $zero, $f12
/* 0202E8 80020738 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0202EC 8002073C 46022182 */  mul.s       $f6, $f4, $f2
/* 0202F0 80020740 3C09E200 */  lui         $t1, (0xE200001C >> 16)
/* 0202F4 80020744 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0202F8 80020748 00803825 */  move        $a3, $a0
/* 0202FC 8002074C 3C018009 */  lui         $at, %hi(D_8008E6C0)
/* 020300 80020750 3C18E700 */  lui         $t8, 0xe700
/* 020304 80020754 3529001C */  ori         $t1, $t1, (0xE200001C & 0xFFFF)
/* 020308 80020758 46060001 */  sub.s       $f0, $f0, $f6
/* 02030C 8002075C 460C003C */  c.lt.s      $f0, $f12
/* 020310 80020760 00000000 */  nop
/* 020314 80020764 45020007 */  bc1fl       .L80020784
/* 020318 80020768 4600103E */   c.le.s     $f2, $f0
/* 02031C 8002076C 46020000 */  add.s       $f0, $f0, $f2
.L80020770:
/* 020320 80020770 460C003C */  c.lt.s      $f0, $f12
/* 020324 80020774 00000000 */  nop
/* 020328 80020778 4503FFFD */  bc1tl       .L80020770
/* 02032C 8002077C 46020000 */   add.s      $f0, $f0, $f2
/* 020330 80020780 4600103E */  c.le.s      $f2, $f0
.L80020784:
/* 020334 80020784 00000000 */  nop
/* 020338 80020788 45020007 */  bc1fl       .L800207A8
/* 02033C 8002078C 4600020D */   trunc.w.s  $f8, $f0
/* 020340 80020790 46020001 */  sub.s       $f0, $f0, $f2
.L80020794:
/* 020344 80020794 4600103E */  c.le.s      $f2, $f0
/* 020348 80020798 00000000 */  nop
/* 02034C 8002079C 4503FFFD */  bc1tl       .L80020794
/* 020350 800207A0 46020001 */   sub.s      $f0, $f0, $f2
/* 020354 800207A4 4600020D */  trunc.w.s   $f8, $f0
.L800207A8:
/* 020358 800207A8 3C0A0050 */  lui         $t2, (0x504240 >> 16)
/* 02035C 800207AC 354A4240 */  ori         $t2, $t2, (0x504240 & 0xFFFF)
/* 020360 800207B0 3C0CFC11 */  lui         $t4, (0xFC119623 >> 16)
/* 020364 800207B4 44034000 */  mfc1        $v1, $f8
/* 020368 800207B8 3C0DFF2F */  lui         $t5, (0xFF2FFFFF >> 16)
/* 02036C 800207BC 35ADFFFF */  ori         $t5, $t5, (0xFF2FFFFF & 0xFFFF)
/* 020370 800207C0 AC23E6C0 */  sw          $v1, %lo(D_8008E6C0)($at)
/* 020374 800207C4 3C018009 */  lui         $at, %hi(D_8008E69C)
/* 020378 800207C8 AC23E69C */  sw          $v1, %lo(D_8008E69C)($at)
/* 02037C 800207CC 8CE20000 */  lw          $v0, 0x0($a3)
/* 020380 800207D0 358C9623 */  ori         $t4, $t4, (0xFC119623 & 0xFFFF)
/* 020384 800207D4 3C018009 */  lui         $at, %hi(D_8008E7C8)
/* 020388 800207D8 244F0008 */  addiu       $t7, $v0, 0x8
/* 02038C 800207DC ACEF0000 */  sw          $t7, 0x0($a3)
/* 020390 800207E0 AC400004 */  sw          $zero, 0x4($v0)
/* 020394 800207E4 AC580000 */  sw          $t8, 0x0($v0)
/* 020398 800207E8 8CE20000 */  lw          $v0, 0x0($a3)
/* 02039C 800207EC 3C0FFA00 */  lui         $t7, 0xfa00
/* 0203A0 800207F0 24180050 */  addiu       $t8, $zero, 0x50
/* 0203A4 800207F4 24590008 */  addiu       $t9, $v0, 0x8
/* 0203A8 800207F8 ACF90000 */  sw          $t9, 0x0($a3)
/* 0203AC 800207FC AC4A0004 */  sw          $t2, 0x4($v0)
/* 0203B0 80020800 AC490000 */  sw          $t1, 0x0($v0)
/* 0203B4 80020804 8CE20000 */  lw          $v0, 0x0($a3)
/* 0203B8 80020808 3C058009 */  lui         $a1, %hi(D_8008E684)
/* 0203BC 8002080C 24A5E684 */  addiu       $a1, $a1, %lo(D_8008E684)
/* 0203C0 80020810 244B0008 */  addiu       $t3, $v0, 0x8
/* 0203C4 80020814 ACEB0000 */  sw          $t3, 0x0($a3)
/* 0203C8 80020818 AC4D0004 */  sw          $t5, 0x4($v0)
/* 0203CC 8002081C AC4C0000 */  sw          $t4, 0x0($v0)
/* 0203D0 80020820 8CE20000 */  lw          $v0, 0x0($a3)
/* 0203D4 80020824 24040005 */  addiu       $a0, $zero, 0x5
/* 0203D8 80020828 00E03025 */  move        $a2, $a3
/* 0203DC 8002082C 244E0008 */  addiu       $t6, $v0, 0x8
/* 0203E0 80020830 ACEE0000 */  sw          $t6, 0x0($a3)
/* 0203E4 80020834 AC4F0000 */  sw          $t7, 0x0($v0)
/* 0203E8 80020838 E420E7C8 */  swc1        $f0, %lo(D_8008E7C8)($at)
/* 0203EC 8002083C 0C002AE5 */  jal         func_8000AB94
/* 0203F0 80020840 AC580004 */   sw         $t8, 0x4($v0)
/* 0203F4 80020844 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0203F8 80020848 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0203FC 8002084C 03E00008 */  jr          $ra
/* 020400 80020850 00000000 */   nop

glabel func_80020854 # 15
/* 020404 80020854 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020408 80020858 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02040C 8002085C 8C820000 */  lw          $v0, 0x0($a0)
/* 020410 80020860 3C0FE700 */  lui         $t7, 0xe700
/* 020414 80020864 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 020418 80020868 244E0008 */  addiu       $t6, $v0, 0x8
/* 02041C 8002086C AC8E0000 */  sw          $t6, 0x0($a0)
/* 020420 80020870 AC400004 */  sw          $zero, 0x4($v0)
/* 020424 80020874 AC4F0000 */  sw          $t7, 0x0($v0)
/* 020428 80020878 8C820000 */  lw          $v0, 0x0($a0)
/* 02042C 8002087C 3C090050 */  lui         $t1, (0x504240 >> 16)
/* 020430 80020880 35294240 */  ori         $t1, $t1, (0x504240 & 0xFFFF)
/* 020434 80020884 24580008 */  addiu       $t8, $v0, 0x8
/* 020438 80020888 AC980000 */  sw          $t8, 0x0($a0)
/* 02043C 8002088C 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 020440 80020890 AC590000 */  sw          $t9, 0x0($v0)
/* 020444 80020894 AC490004 */  sw          $t1, 0x4($v0)
/* 020448 80020898 8C820000 */  lw          $v0, 0x0($a0)
/* 02044C 8002089C 3C0BFC11 */  lui         $t3, (0xFC119623 >> 16)
/* 020450 800208A0 3C0CFF2F */  lui         $t4, (0xFF2FFFFF >> 16)
/* 020454 800208A4 244A0008 */  addiu       $t2, $v0, 0x8
/* 020458 800208A8 AC8A0000 */  sw          $t2, 0x0($a0)
/* 02045C 800208AC 358CFFFF */  ori         $t4, $t4, (0xFF2FFFFF & 0xFFFF)
/* 020460 800208B0 356B9623 */  ori         $t3, $t3, (0xFC119623 & 0xFFFF)
/* 020464 800208B4 AC4B0000 */  sw          $t3, 0x0($v0)
/* 020468 800208B8 AC4C0004 */  sw          $t4, 0x4($v0)
/* 02046C 800208BC 8C820000 */  lw          $v0, 0x0($a0)
/* 020470 800208C0 00803025 */  move        $a2, $a0
/* 020474 800208C4 240FFFFF */  addiu       $t7, $zero, -0x1
/* 020478 800208C8 244D0008 */  addiu       $t5, $v0, 0x8
/* 02047C 800208CC AC8D0000 */  sw          $t5, 0x0($a0)
/* 020480 800208D0 3C0EFA00 */  lui         $t6, 0xfa00
/* 020484 800208D4 3C058009 */  lui         $a1, %hi(D_8008E7CC)
/* 020488 800208D8 24A5E7CC */  addiu       $a1, $a1, %lo(D_8008E7CC)
/* 02048C 800208DC 24040005 */  addiu       $a0, $zero, 0x5
/* 020490 800208E0 AC4E0000 */  sw          $t6, 0x0($v0)
/* 020494 800208E4 0C002AE5 */  jal         func_8000AB94
/* 020498 800208E8 AC4F0004 */   sw         $t7, 0x4($v0)
/* 02049C 800208EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0204A0 800208F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0204A4 800208F4 03E00008 */  jr          $ra
/* 0204A8 800208F8 00000000 */   nop

glabel func_800208FC # 16
/* 0204AC 800208FC 44842000 */  mtc1        $a0, $f4
/* 0204B0 80020900 3C013E20 */  lui         $at, 0x3e20
/* 0204B4 80020904 44814000 */  mtc1        $at, $f8
/* 0204B8 80020908 468021A0 */  cvt.s.w     $f6, $f4
/* 0204BC 8002090C 3C028009 */  lui         $v0, %hi(D_8008E814)
/* 0204C0 80020910 46083282 */  mul.s       $f10, $f6, $f8
/* 0204C4 80020914 4600540D */  trunc.w.s   $f16, $f10
/* 0204C8 80020918 44048000 */  mfc1        $a0, $f16
/* 0204CC 8002091C 00000000 */  nop
/* 0204D0 80020920 04810003 */  bgez        $a0, .L80020930
/* 0204D4 80020924 28810005 */   slti       $at, $a0, 0x5
/* 0204D8 80020928 10000004 */  b           .L8002093C
/* 0204DC 8002092C 00002025 */   move       $a0, $zero
.L80020930:
/* 0204E0 80020930 54200003 */  bnel        $at, $zero, .L80020940
/* 0204E4 80020934 00047880 */   sll        $t7, $a0, 2
/* 0204E8 80020938 24040004 */  addiu       $a0, $zero, 0x4
.L8002093C:
/* 0204EC 8002093C 00047880 */  sll         $t7, $a0, 2
.L80020940:
/* 0204F0 80020940 004F1021 */  addu        $v0, $v0, $t7
/* 0204F4 80020944 03E00008 */  jr          $ra
/* 0204F8 80020948 8C42E814 */   lw         $v0, %lo(D_8008E814)($v0)

glabel func_8002094C # 17
/* 0204FC 8002094C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020500 80020950 AFBF0014 */  sw          $ra, 0x14($sp)
/* 020504 80020954 0C00823F */  jal         func_800208FC
/* 020508 80020958 00002025 */   move       $a0, $zero
/* 02050C 8002095C 00027080 */  sll         $t6, $v0, 2
/* 020510 80020960 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 020514 80020964 00AE2821 */  addu        $a1, $a1, $t6
/* 020518 80020968 3C04800F */  lui         $a0, %hi(D_800F49B0)
/* 02051C 8002096C 248449B0 */  addiu       $a0, $a0, %lo(D_800F49B0)
/* 020520 80020970 0C0023F3 */  jal         func_80008FCC
/* 020524 80020974 8CA58E30 */   lw         $a1, %lo(D_80068E30)($a1)
/* 020528 80020978 3C04800F */  lui         $a0, %hi(D_800F49C0)
/* 02052C 8002097C 3C058007 */  lui         $a1, %hi(D_800691E8)
/* 020530 80020980 8CA591E8 */  lw          $a1, %lo(D_800691E8)($a1)
/* 020534 80020984 0C0023F3 */  jal         func_80008FCC
/* 020538 80020988 248449C0 */   addiu      $a0, $a0, %lo(D_800F49C0)
/* 02053C 8002098C 3C0140A0 */  lui         $at, 0x40a0
/* 020540 80020990 44812000 */  mtc1        $at, $f4
/* 020544 80020994 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020548 80020998 3C01800F */  lui         $at, %hi(D_800F49CC)
/* 02054C 8002099C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020550 800209A0 03E00008 */  jr          $ra
/* 020554 800209A4 E42449CC */   swc1       $f4, %lo(D_800F49CC)($at)

glabel func_800209A8 # 18
/* 020558 800209A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02055C 800209AC AFA40018 */  sw          $a0, 0x18($sp)
/* 020560 800209B0 8FAE0018 */  lw          $t6, 0x18($sp)
/* 020564 800209B4 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 020568 800209B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02056C 800209BC 000E7880 */  sll         $t7, $t6, 2
/* 020570 800209C0 00AF2821 */  addu        $a1, $a1, $t7
/* 020574 800209C4 3C04800F */  lui         $a0, %hi(D_800F49D0)
/* 020578 800209C8 248449D0 */  addiu       $a0, $a0, %lo(D_800F49D0)
/* 02057C 800209CC 0C0023F3 */  jal         func_80008FCC
/* 020580 800209D0 8CA58E30 */   lw         $a1, %lo(D_80068E30)($a1)
/* 020584 800209D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020588 800209D8 8FB80018 */  lw          $t8, 0x18($sp)
/* 02058C 800209DC 3C01800F */  lui         $at, %hi(D_800F49DC)
/* 020590 800209E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020594 800209E4 03E00008 */  jr          $ra
/* 020598 800209E8 AC3849DC */   sw         $t8, %lo(D_800F49DC)($at)

glabel func_800209EC # 19
/* 02059C 800209EC 3C0E8007 */  lui         $t6, %hi(D_80071E88)
/* 0205A0 800209F0 8DCE1E88 */  lw          $t6, %lo(D_80071E88)($t6)
/* 0205A4 800209F4 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 0205A8 800209F8 AFB00018 */  sw          $s0, 0x18($sp)
/* 0205AC 800209FC AFBF001C */  sw          $ra, 0x1c($sp)
/* 0205B0 80020A00 3C05800F */  lui         $a1, %hi(D_800F49DC)
/* 0205B4 80020A04 8CA549DC */  lw          $a1, %lo(D_800F49DC)($a1)
/* 0205B8 80020A08 8DCF0054 */  lw          $t7, 0x54($t6)
/* 0205BC 80020A0C 00808025 */  move        $s0, $a0
/* 0205C0 80020A10 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 0205C4 80020A14 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 0205C8 80020A18 AFA50068 */  sw          $a1, 0x68($sp)
/* 0205CC 80020A1C 0C045661 */  jal         func_80115984
/* 0205D0 80020A20 AFAF007C */   sw         $t7, 0x7c($sp)
/* 0205D4 80020A24 1040000A */  beqz        $v0, .L80020A50
/* 0205D8 80020A28 8FA50068 */   lw         $a1, 0x68($sp)
/* 0205DC 80020A2C 0C0457B3 */  jal         func_80115ECC
/* 0205E0 80020A30 00000000 */   nop
/* 0205E4 80020A34 0002C080 */  sll         $t8, $v0, 2
/* 0205E8 80020A38 3C058009 */  lui         $a1, %hi(D_8008E948)
/* 0205EC 80020A3C 00B82821 */  addu        $a1, $a1, $t8
/* 0205F0 80020A40 8CA5E948 */  lw          $a1, %lo(D_8008E948)($a1)
/* 0205F4 80020A44 24080001 */  addiu       $t0, $zero, 0x1
/* 0205F8 80020A48 10000019 */  b           .L80020AB0
/* 0205FC 80020A4C 24030001 */   addiu      $v1, $zero, 0x1
.L80020A50:
/* 020600 80020A50 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 020604 80020A54 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 020608 80020A58 0C04565F */  jal         func_8011597C
/* 02060C 80020A5C AFA50068 */   sw         $a1, 0x68($sp)
/* 020610 80020A60 10400011 */  beqz        $v0, .L80020AA8
/* 020614 80020A64 8FA50068 */   lw         $a1, 0x68($sp)
/* 020618 80020A68 3C198007 */  lui         $t9, %hi(D_80071E88)
/* 02061C 80020A6C 8F391E88 */  lw          $t9, %lo(D_80071E88)($t9)
/* 020620 80020A70 3C0B800F */  lui         $t3, %hi(D_800F3E70)
/* 020624 80020A74 8D6B3E70 */  lw          $t3, %lo(D_800F3E70)($t3)
/* 020628 80020A78 8F2A0038 */  lw          $t2, 0x38($t9)
/* 02062C 80020A7C 554B000B */  bnel        $t2, $t3, .L80020AAC
/* 020630 80020A80 00004025 */   move       $t0, $zero
/* 020634 80020A84 0C04579C */  jal         func_80115E70
/* 020638 80020A88 00000000 */   nop
/* 02063C 80020A8C 00026080 */  sll         $t4, $v0, 2
/* 020640 80020A90 3C058009 */  lui         $a1, %hi(D_8008E950)
/* 020644 80020A94 00AC2821 */  addu        $a1, $a1, $t4
/* 020648 80020A98 8CA5E950 */  lw          $a1, %lo(D_8008E950)($a1)
/* 02064C 80020A9C 24080001 */  addiu       $t0, $zero, 0x1
/* 020650 80020AA0 10000003 */  b           .L80020AB0
/* 020654 80020AA4 24030001 */   addiu      $v1, $zero, 0x1
.L80020AA8:
/* 020658 80020AA8 00004025 */  move        $t0, $zero
.L80020AAC:
/* 02065C 80020AAC 00001825 */  move        $v1, $zero
.L80020AB0:
/* 020660 80020AB0 3C02800F */  lui         $v0, %hi(D_800F49EC)
/* 020664 80020AB4 8C4249EC */  lw          $v0, %lo(D_800F49EC)($v0)
/* 020668 80020AB8 3C0F800F */  lui         $t7, %hi(D_800F49DC)
/* 02066C 80020ABC 304D0001 */  andi        $t5, $v0, 0x1
/* 020670 80020AC0 15A00002 */  bnez        $t5, .L80020ACC
/* 020674 80020AC4 304E0002 */   andi       $t6, $v0, 0x2
/* 020678 80020AC8 00001825 */  move        $v1, $zero
.L80020ACC:
/* 02067C 80020ACC 15C00002 */  bnez        $t6, .L80020AD8
/* 020680 80020AD0 00000000 */   nop
/* 020684 80020AD4 00004025 */  move        $t0, $zero
.L80020AD8:
/* 020688 80020AD8 5060003A */  beql        $v1, $zero, .L80020BC4
/* 02068C 80020ADC 8FAB007C */   lw         $t3, 0x7c($sp)
/* 020690 80020AE0 8DEF49DC */  lw          $t7, %lo(D_800F49DC)($t7)
/* 020694 80020AE4 00A02025 */  move        $a0, $a1
/* 020698 80020AE8 10AF0004 */  beq         $a1, $t7, .L80020AFC
/* 02069C 80020AEC 00000000 */   nop
/* 0206A0 80020AF0 0C00826A */  jal         func_800209A8
/* 0206A4 80020AF4 AFA80070 */   sw         $t0, 0x70($sp)
/* 0206A8 80020AF8 8FA80070 */  lw          $t0, 0x70($sp)
.L80020AFC:
/* 0206AC 80020AFC 3C04800F */  lui         $a0, %hi(D_800F49D0)
/* 0206B0 80020B00 3C058009 */  lui         $a1, %hi(D_8008E900)
/* 0206B4 80020B04 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 0206B8 80020B08 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 0206BC 80020B0C 24A5E900 */  addiu       $a1, $a1, %lo(D_8008E900)
/* 0206C0 80020B10 248449D0 */  addiu       $a0, $a0, %lo(D_800F49D0)
/* 0206C4 80020B14 0C002400 */  jal         func_80009000
/* 0206C8 80020B18 AFA80070 */   sw         $t0, 0x70($sp)
/* 0206CC 80020B1C 8E030000 */  lw          $v1, 0x0($s0)
/* 0206D0 80020B20 8FA80070 */  lw          $t0, 0x70($sp)
/* 0206D4 80020B24 3C19E700 */  lui         $t9, 0xe700
/* 0206D8 80020B28 24780008 */  addiu       $t8, $v1, 0x8
/* 0206DC 80020B2C AE180000 */  sw          $t8, 0x0($s0)
/* 0206E0 80020B30 AC600004 */  sw          $zero, 0x4($v1)
/* 0206E4 80020B34 AC790000 */  sw          $t9, 0x0($v1)
/* 0206E8 80020B38 8E030000 */  lw          $v1, 0x0($s0)
/* 0206EC 80020B3C 3C0BE200 */  lui         $t3, (0xE200001C >> 16)
/* 0206F0 80020B40 3C0C0050 */  lui         $t4, (0x504240 >> 16)
/* 0206F4 80020B44 246A0008 */  addiu       $t2, $v1, 0x8
/* 0206F8 80020B48 AE0A0000 */  sw          $t2, 0x0($s0)
/* 0206FC 80020B4C 358C4240 */  ori         $t4, $t4, (0x504240 & 0xFFFF)
/* 020700 80020B50 356B001C */  ori         $t3, $t3, (0xE200001C & 0xFFFF)
/* 020704 80020B54 AC6B0000 */  sw          $t3, 0x0($v1)
/* 020708 80020B58 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02070C 80020B5C 8E030000 */  lw          $v1, 0x0($s0)
/* 020710 80020B60 3C0EFC11 */  lui         $t6, (0xFC119623 >> 16)
/* 020714 80020B64 3C0FFF2F */  lui         $t7, (0xFF2FFFFF >> 16)
/* 020718 80020B68 246D0008 */  addiu       $t5, $v1, 0x8
/* 02071C 80020B6C AE0D0000 */  sw          $t5, 0x0($s0)
/* 020720 80020B70 35EFFFFF */  ori         $t7, $t7, (0xFF2FFFFF & 0xFFFF)
/* 020724 80020B74 35CE9623 */  ori         $t6, $t6, (0xFC119623 & 0xFFFF)
/* 020728 80020B78 AC6E0000 */  sw          $t6, 0x0($v1)
/* 02072C 80020B7C AC6F0004 */  sw          $t7, 0x4($v1)
/* 020730 80020B80 8E030000 */  lw          $v1, 0x0($s0)
/* 020734 80020B84 240AFF88 */  addiu       $t2, $zero, -0x78
/* 020738 80020B88 3C19FA00 */  lui         $t9, 0xfa00
/* 02073C 80020B8C 24780008 */  addiu       $t8, $v1, 0x8
/* 020740 80020B90 AE180000 */  sw          $t8, 0x0($s0)
/* 020744 80020B94 3C058009 */  lui         $a1, %hi(D_8008E900)
/* 020748 80020B98 AC6A0004 */  sw          $t2, 0x4($v1)
/* 02074C 80020B9C AC790000 */  sw          $t9, 0x0($v1)
/* 020750 80020BA0 24A5E900 */  addiu       $a1, $a1, %lo(D_8008E900)
/* 020754 80020BA4 24040005 */  addiu       $a0, $zero, 0x5
/* 020758 80020BA8 02003025 */  move        $a2, $s0
/* 02075C 80020BAC 0C002AE5 */  jal         func_8000AB94
/* 020760 80020BB0 AFA80070 */   sw         $t0, 0x70($sp)
/* 020764 80020BB4 8FA80070 */  lw          $t0, 0x70($sp)
/* 020768 80020BB8 510000B0 */  beql        $t0, $zero, .L80020E7C
/* 02076C 80020BBC 8FBF001C */   lw         $ra, 0x1c($sp)
/* 020770 80020BC0 8FAB007C */  lw          $t3, 0x7c($sp)
.L80020BC4:
/* 020774 80020BC4 C5640400 */  lwc1        $f4, 0x400($t3)
/* 020778 80020BC8 4600218D */  trunc.w.s   $f6, $f4
/* 02077C 80020BCC 44043000 */  mfc1        $a0, $f6
/* 020780 80020BD0 0C00823F */  jal         func_800208FC
/* 020784 80020BD4 00000000 */   nop
/* 020788 80020BD8 8FA3007C */  lw          $v1, 0x7c($sp)
/* 02078C 80020BDC 3C01800B */  lui         $at, %hi(D_800A9928)
/* 020790 80020BE0 C4229928 */  lwc1        $f2, %lo(D_800A9928)($at)
/* 020794 80020BE4 C46803F4 */  lwc1        $f8, 0x3f4($v1)
/* 020798 80020BE8 C46403F8 */  lwc1        $f4, 0x3f8($v1)
/* 02079C 80020BEC 3C06800F */  lui         $a2, %hi(D_800F49CC)
/* 0207A0 80020BF0 46024282 */  mul.s       $f10, $f8, $f2
/* 0207A4 80020BF4 24C649CC */  addiu       $a2, $a2, %lo(D_800F49CC)
/* 0207A8 80020BF8 C4C00000 */  lwc1        $f0, 0x0($a2)
/* 0207AC 80020BFC 44804000 */  mtc1        $zero, $f8
/* 0207B0 80020C00 46022182 */  mul.s       $f6, $f4, $f2
/* 0207B4 80020C04 C47203FC */  lwc1        $f18, 0x3fc($v1)
/* 0207B8 80020C08 4600403C */  c.lt.s      $f8, $f0
/* 0207BC 80020C0C C4700400 */  lwc1        $f16, 0x400($v1)
/* 0207C0 80020C10 00402825 */  move        $a1, $v0
/* 0207C4 80020C14 46125301 */  sub.s       $f12, $f10, $f18
/* 0207C8 80020C18 45000007 */  bc1f        .L80020C38
/* 0207CC 80020C1C 46103381 */   sub.s      $f14, $f6, $f16
/* 0207D0 80020C20 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 0207D4 80020C24 C42A2C64 */  lwc1        $f10, %lo(D_800B2C64)($at)
/* 0207D8 80020C28 460A0101 */  sub.s       $f4, $f0, $f10
/* 0207DC 80020C2C E4C40000 */  swc1        $f4, 0x0($a2)
/* 0207E0 80020C30 C47203FC */  lwc1        $f18, 0x3fc($v1)
/* 0207E4 80020C34 C4700400 */  lwc1        $f16, 0x400($v1)
.L80020C38:
/* 0207E8 80020C38 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 0207EC 80020C3C C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 0207F0 80020C40 3C014200 */  lui         $at, 0x4200
/* 0207F4 80020C44 44814000 */  mtc1        $at, $f8
/* 0207F8 80020C48 00000000 */  nop
/* 0207FC 80020C4C 46083002 */  mul.s       $f0, $f6, $f8
/* 020800 80020C50 46000087 */  neg.s       $f2, $f0
/* 020804 80020C54 4602603C */  c.lt.s      $f12, $f2
/* 020808 80020C58 00000000 */  nop
/* 02080C 80020C5C 45020004 */  bc1fl       .L80020C70
/* 020810 80020C60 460C003C */   c.lt.s     $f0, $f12
/* 020814 80020C64 10000006 */  b           .L80020C80
/* 020818 80020C68 46001306 */   mov.s      $f12, $f2
/* 02081C 80020C6C 460C003C */  c.lt.s      $f0, $f12
.L80020C70:
/* 020820 80020C70 00000000 */  nop
/* 020824 80020C74 45020003 */  bc1fl       .L80020C84
/* 020828 80020C78 4602703C */   c.lt.s     $f14, $f2
/* 02082C 80020C7C 46000306 */  mov.s       $f12, $f0
.L80020C80:
/* 020830 80020C80 4602703C */  c.lt.s      $f14, $f2
.L80020C84:
/* 020834 80020C84 00000000 */  nop
/* 020838 80020C88 45020004 */  bc1fl       .L80020C9C
/* 02083C 80020C8C 460E003C */   c.lt.s     $f0, $f14
/* 020840 80020C90 10000006 */  b           .L80020CAC
/* 020844 80020C94 46001386 */   mov.s      $f14, $f2
/* 020848 80020C98 460E003C */  c.lt.s      $f0, $f14
.L80020C9C:
/* 02084C 80020C9C 00000000 */  nop
/* 020850 80020CA0 45020003 */  bc1fl       .L80020CB0
/* 020854 80020CA4 460E8100 */   add.s      $f4, $f16, $f14
/* 020858 80020CA8 46000386 */  mov.s       $f14, $f0
.L80020CAC:
/* 02085C 80020CAC 460E8100 */  add.s       $f4, $f16, $f14
.L80020CB0:
/* 020860 80020CB0 460C9280 */  add.s       $f10, $f18, $f12
/* 020864 80020CB4 E4640400 */  swc1        $f4, 0x400($v1)
/* 020868 80020CB8 C4660400 */  lwc1        $f6, 0x400($v1)
/* 02086C 80020CBC E46A03FC */  swc1        $f10, 0x3fc($v1)
/* 020870 80020CC0 4600320D */  trunc.w.s   $f8, $f6
/* 020874 80020CC4 AFA50044 */  sw          $a1, 0x44($sp)
/* 020878 80020CC8 44044000 */  mfc1        $a0, $f8
/* 02087C 80020CCC 0C00823F */  jal         func_800208FC
/* 020880 80020CD0 00000000 */   nop
/* 020884 80020CD4 8FA50044 */  lw          $a1, 0x44($sp)
/* 020888 80020CD8 3C04800F */  lui         $a0, %hi(D_800F49B0)
/* 02088C 80020CDC 248449B0 */  addiu       $a0, $a0, %lo(D_800F49B0)
/* 020890 80020CE0 10A20005 */  beq         $a1, $v0, .L80020CF8
/* 020894 80020CE4 00027080 */   sll        $t6, $v0, 2
/* 020898 80020CE8 3C058007 */  lui         $a1, %hi(D_80068E30)
/* 02089C 80020CEC 00AE2821 */  addu        $a1, $a1, $t6
/* 0208A0 80020CF0 0C0023F3 */  jal         func_80008FCC
/* 0208A4 80020CF4 8CA58E30 */   lw         $a1, %lo(D_80068E30)($a1)
.L80020CF8:
/* 0208A8 80020CF8 8FAF007C */  lw          $t7, 0x7c($sp)
/* 0208AC 80020CFC 3C013F00 */  lui         $at, 0x3f00
/* 0208B0 80020D00 44810000 */  mtc1        $at, $f0
/* 0208B4 80020D04 C5EA03FC */  lwc1        $f10, 0x3fc($t7)
/* 0208B8 80020D08 C5E80400 */  lwc1        $f8, 0x400($t7)
/* 0208BC 80020D0C 3C04800F */  lui         $a0, %hi(D_800F49B0)
/* 0208C0 80020D10 46005100 */  add.s       $f4, $f10, $f0
/* 0208C4 80020D14 248449B0 */  addiu       $a0, $a0, %lo(D_800F49B0)
/* 0208C8 80020D18 27A50084 */  addiu       $a1, $sp, 0x84
/* 0208CC 80020D1C 46004280 */  add.s       $f10, $f8, $f0
/* 0208D0 80020D20 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 0208D4 80020D24 4600218D */  trunc.w.s   $f6, $f4
/* 0208D8 80020D28 4600510D */  trunc.w.s   $f4, $f10
/* 0208DC 80020D2C 44083000 */  mfc1        $t0, $f6
/* 0208E0 80020D30 44092000 */  mfc1        $t1, $f4
/* 0208E4 80020D34 05010003 */  bgez        $t0, .L80020D44
/* 0208E8 80020D38 29010020 */   slti       $at, $t0, 0x20
/* 0208EC 80020D3C 10000004 */  b           .L80020D50
/* 0208F0 80020D40 00004025 */   move       $t0, $zero
.L80020D44:
/* 0208F4 80020D44 14200002 */  bnez        $at, .L80020D50
/* 0208F8 80020D48 00000000 */   nop
/* 0208FC 80020D4C 2408001F */  addiu       $t0, $zero, 0x1f
.L80020D50:
/* 020900 80020D50 05210003 */  bgez        $t1, .L80020D60
/* 020904 80020D54 29210020 */   slti       $at, $t1, 0x20
/* 020908 80020D58 10000004 */  b           .L80020D6C
/* 02090C 80020D5C 00004825 */   move       $t1, $zero
.L80020D60:
/* 020910 80020D60 14200002 */  bnez        $at, .L80020D6C
/* 020914 80020D64 00000000 */   nop
/* 020918 80020D68 2409001F */  addiu       $t1, $zero, 0x1f
.L80020D6C:
/* 02091C 80020D6C 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 020920 80020D70 AFA80078 */  sw          $t0, 0x78($sp)
/* 020924 80020D74 0C002400 */  jal         func_80009000
/* 020928 80020D78 AFA90074 */   sw         $t1, 0x74($sp)
/* 02092C 80020D7C 3C04800F */  lui         $a0, %hi(D_800F49C0)
/* 020930 80020D80 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 020934 80020D84 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 020938 80020D88 248449C0 */  addiu       $a0, $a0, %lo(D_800F49C0)
/* 02093C 80020D8C 0C002400 */  jal         func_80009000
/* 020940 80020D90 27A50080 */   addiu      $a1, $sp, 0x80
/* 020944 80020D94 8E030000 */  lw          $v1, 0x0($s0)
/* 020948 80020D98 8FA80078 */  lw          $t0, 0x78($sp)
/* 02094C 80020D9C 8FA90074 */  lw          $t1, 0x74($sp)
/* 020950 80020DA0 246A0008 */  addiu       $t2, $v1, 0x8
/* 020954 80020DA4 AE0A0000 */  sw          $t2, 0x0($s0)
/* 020958 80020DA8 3C0BE700 */  lui         $t3, 0xe700
/* 02095C 80020DAC AC6B0000 */  sw          $t3, 0x0($v1)
/* 020960 80020DB0 AC600004 */  sw          $zero, 0x4($v1)
/* 020964 80020DB4 8E030000 */  lw          $v1, 0x0($s0)
/* 020968 80020DB8 3C0DE200 */  lui         $t5, (0xE200001C >> 16)
/* 02096C 80020DBC 3C0E0050 */  lui         $t6, (0x504240 >> 16)
/* 020970 80020DC0 246C0008 */  addiu       $t4, $v1, 0x8
/* 020974 80020DC4 AE0C0000 */  sw          $t4, 0x0($s0)
/* 020978 80020DC8 35CE4240 */  ori         $t6, $t6, (0x504240 & 0xFFFF)
/* 02097C 80020DCC 35AD001C */  ori         $t5, $t5, (0xE200001C & 0xFFFF)
/* 020980 80020DD0 AC6D0000 */  sw          $t5, 0x0($v1)
/* 020984 80020DD4 AC6E0004 */  sw          $t6, 0x4($v1)
/* 020988 80020DD8 8E030000 */  lw          $v1, 0x0($s0)
/* 02098C 80020DDC 3C0FFC11 */  lui         $t7, (0xFC119623 >> 16)
/* 020990 80020DE0 3C19FF2F */  lui         $t9, (0xFF2FFFFF >> 16)
/* 020994 80020DE4 24780008 */  addiu       $t8, $v1, 0x8
/* 020998 80020DE8 AE180000 */  sw          $t8, 0x0($s0)
/* 02099C 80020DEC 3739FFFF */  ori         $t9, $t9, (0xFF2FFFFF & 0xFFFF)
/* 0209A0 80020DF0 35EF9623 */  ori         $t7, $t7, (0xFC119623 & 0xFFFF)
/* 0209A4 80020DF4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0209A8 80020DF8 AC790004 */  sw          $t9, 0x4($v1)
/* 0209AC 80020DFC 8E030000 */  lw          $v1, 0x0($s0)
/* 0209B0 80020E00 240CFFA0 */  addiu       $t4, $zero, -0x60
/* 0209B4 80020E04 3C0BFA00 */  lui         $t3, 0xfa00
/* 0209B8 80020E08 246A0008 */  addiu       $t2, $v1, 0x8
/* 0209BC 80020E0C AE0A0000 */  sw          $t2, 0x0($s0)
/* 0209C0 80020E10 3C01800F */  lui         $at, %hi(D_800F49CC)
/* 0209C4 80020E14 AC6C0004 */  sw          $t4, 0x4($v1)
/* 0209C8 80020E18 AC6B0000 */  sw          $t3, 0x0($v1)
/* 0209CC 80020E1C C42849CC */  lwc1        $f8, %lo(D_800F49CC)($at)
/* 0209D0 80020E20 44803000 */  mtc1        $zero, $f6
/* 0209D4 80020E24 3C058009 */  lui         $a1, %hi(D_8008E828)
/* 0209D8 80020E28 24A5E828 */  addiu       $a1, $a1, %lo(D_8008E828)
/* 0209DC 80020E2C 4608303C */  c.lt.s      $f6, $f8
/* 0209E0 80020E30 24040005 */  addiu       $a0, $zero, 0x5
/* 0209E4 80020E34 02003025 */  move        $a2, $s0
/* 0209E8 80020E38 4502000C */  bc1fl       .L80020E6C
/* 0209EC 80020E3C 8FAE0084 */   lw         $t6, 0x84($sp)
/* 0209F0 80020E40 8FAD0080 */  lw          $t5, 0x80($sp)
/* 0209F4 80020E44 3C058009 */  lui         $a1, %hi(D_8008E894)
/* 0209F8 80020E48 24A5E894 */  addiu       $a1, $a1, %lo(D_8008E894)
/* 0209FC 80020E4C ACA80018 */  sw          $t0, 0x18($a1)
/* 020A00 80020E50 24040005 */  addiu       $a0, $zero, 0x5
/* 020A04 80020E54 02003025 */  move        $a2, $s0
/* 020A08 80020E58 0C002AE5 */  jal         func_8000AB94
/* 020A0C 80020E5C ACAD0024 */   sw         $t5, 0x24($a1)
/* 020A10 80020E60 10000006 */  b           .L80020E7C
/* 020A14 80020E64 8FBF001C */   lw         $ra, 0x1c($sp)
/* 020A18 80020E68 8FAE0084 */  lw          $t6, 0x84($sp)
.L80020E6C:
/* 020A1C 80020E6C ACA90018 */  sw          $t1, 0x18($a1)
/* 020A20 80020E70 0C002AE5 */  jal         func_8000AB94
/* 020A24 80020E74 ACAE0024 */   sw         $t6, 0x24($a1)
/* 020A28 80020E78 8FBF001C */  lw          $ra, 0x1c($sp)
.L80020E7C:
/* 020A2C 80020E7C 8FB00018 */  lw          $s0, 0x18($sp)
/* 020A30 80020E80 27BD0088 */  addiu       $sp, $sp, 0x88
/* 020A34 80020E84 03E00008 */  jr          $ra
/* 020A38 80020E88 00000000 */   nop

glabel func_80020E8C # 20
/* 020A3C 80020E8C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020A40 80020E90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 020A44 80020E94 3C018009 */  lui         $at, %hi(D_8008E958)
/* 020A48 80020E98 3C04800B */  lui         $a0, %hi(D_800B2C78)
/* 020A4C 80020E9C AC20E958 */  sw          $zero, %lo(D_8008E958)($at)
/* 020A50 80020EA0 0C044854 */  jal         func_80112150
/* 020A54 80020EA4 8C842C78 */   lw         $a0, %lo(D_800B2C78)($a0)
/* 020A58 80020EA8 3C048009 */  lui         $a0, %hi(D_8008E958)
/* 020A5C 80020EAC 3C068007 */  lui         $a2, %hi(D_80070B58)
/* 020A60 80020EB0 24C60B58 */  addiu       $a2, $a2, %lo(D_80070B58)
/* 020A64 80020EB4 2484E958 */  addiu       $a0, $a0, %lo(D_8008E958)
/* 020A68 80020EB8 0C00F1B7 */  jal         func_8003C6DC
/* 020A6C 80020EBC 00402825 */   move       $a1, $v0
/* 020A70 80020EC0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020A74 80020EC4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020A78 80020EC8 03E00008 */  jr          $ra
/* 020A7C 80020ECC 00000000 */   nop

glabel func_80020ED0 # 21
/* 020A80 80020ED0 3C0E800F */  lui         $t6, %hi(D_800F49E0)
/* 020A84 80020ED4 8DCE49E0 */  lw          $t6, %lo(D_800F49E0)($t6)
/* 020A88 80020ED8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 020A8C 80020EDC AFB00018 */  sw          $s0, 0x18($sp)
/* 020A90 80020EE0 00808025 */  move        $s0, $a0
/* 020A94 80020EE4 11C00069 */  beqz        $t6, .L8002108C
/* 020A98 80020EE8 AFBF001C */   sw         $ra, 0x1c($sp)
/* 020A9C 80020EEC 3C04800B */  lui         $a0, %hi(D_800B2C78)
/* 020AA0 80020EF0 0C044854 */  jal         func_80112150
/* 020AA4 80020EF4 8C842C78 */   lw         $a0, %lo(D_800B2C78)($a0)
/* 020AA8 80020EF8 0C01190B */  jal         func_8004642C
/* 020AAC 80020EFC 00402025 */   move       $a0, $v0
/* 020AB0 80020F00 04410003 */  bgez        $v0, .L80020F10
/* 020AB4 80020F04 00027843 */   sra        $t7, $v0, 1
/* 020AB8 80020F08 24410001 */  addiu       $at, $v0, 0x1
/* 020ABC 80020F0C 00017843 */  sra         $t7, $at, 1
.L80020F10:
/* 020AC0 80020F10 000FC100 */  sll         $t8, $t7, 4
/* 020AC4 80020F14 44982000 */  mtc1        $t8, $f4
/* 020AC8 80020F18 3C01800B */  lui         $at, %hi(D_800A992C)
/* 020ACC 80020F1C C428992C */  lwc1        $f8, %lo(D_800A992C)($at)
/* 020AD0 80020F20 468021A0 */  cvt.s.w     $f6, $f4
/* 020AD4 80020F24 240900D5 */  addiu       $t1, $zero, 0xd5
/* 020AD8 80020F28 3C0DE700 */  lui         $t5, 0xe700
/* 020ADC 80020F2C 3C0FE300 */  lui         $t7, (0xE3000A01 >> 16)
/* 020AE0 80020F30 35EF0A01 */  ori         $t7, $t7, (0xE3000A01 & 0xFFFF)
/* 020AE4 80020F34 3C19E200 */  lui         $t9, (0xE200001C >> 16)
/* 020AE8 80020F38 46083282 */  mul.s       $f10, $f6, $f8
/* 020AEC 80020F3C 3739001C */  ori         $t9, $t9, (0xE200001C & 0xFFFF)
/* 020AF0 80020F40 4600540D */  trunc.w.s   $f16, $f10
/* 020AF4 80020F44 44088000 */  mfc1        $t0, $f16
/* 020AF8 80020F48 00000000 */  nop
/* 020AFC 80020F4C 01285023 */  subu        $t2, $t1, $t0
/* 020B00 80020F50 05410003 */  bgez        $t2, .L80020F60
/* 020B04 80020F54 000A5843 */   sra        $t3, $t2, 1
/* 020B08 80020F58 25410001 */  addiu       $at, $t2, 0x1
/* 020B0C 80020F5C 00015843 */  sra         $t3, $at, 1
.L80020F60:
/* 020B10 80020F60 AFAB0020 */  sw          $t3, 0x20($sp)
/* 020B14 80020F64 8E030000 */  lw          $v1, 0x0($s0)
/* 020B18 80020F68 3C090050 */  lui         $t1, (0x504240 >> 16)
/* 020B1C 80020F6C 35294240 */  ori         $t1, $t1, (0x504240 & 0xFFFF)
/* 020B20 80020F70 246C0008 */  addiu       $t4, $v1, 0x8
/* 020B24 80020F74 AE0C0000 */  sw          $t4, 0x0($s0)
/* 020B28 80020F78 AC600004 */  sw          $zero, 0x4($v1)
/* 020B2C 80020F7C AC6D0000 */  sw          $t5, 0x0($v1)
/* 020B30 80020F80 8E030000 */  lw          $v1, 0x0($s0)
/* 020B34 80020F84 3C0BFFFD */  lui         $t3, (0xFFFDF6FB >> 16)
/* 020B38 80020F88 3C0AFCFF */  lui         $t2, (0xFCFFFFFF >> 16)
/* 020B3C 80020F8C 246E0008 */  addiu       $t6, $v1, 0x8
/* 020B40 80020F90 AE0E0000 */  sw          $t6, 0x0($s0)
/* 020B44 80020F94 AC600004 */  sw          $zero, 0x4($v1)
/* 020B48 80020F98 AC6F0000 */  sw          $t7, 0x0($v1)
/* 020B4C 80020F9C 8E030000 */  lw          $v1, 0x0($s0)
/* 020B50 80020FA0 354AFFFF */  ori         $t2, $t2, (0xFCFFFFFF & 0xFFFF)
/* 020B54 80020FA4 356BF6FB */  ori         $t3, $t3, (0xFFFDF6FB & 0xFFFF)
/* 020B58 80020FA8 24780008 */  addiu       $t8, $v1, 0x8
/* 020B5C 80020FAC AE180000 */  sw          $t8, 0x0($s0)
/* 020B60 80020FB0 AC690004 */  sw          $t1, 0x4($v1)
/* 020B64 80020FB4 AC790000 */  sw          $t9, 0x0($v1)
/* 020B68 80020FB8 8E030000 */  lw          $v1, 0x0($s0)
/* 020B6C 80020FBC 240E00B4 */  addiu       $t6, $zero, 0xb4
/* 020B70 80020FC0 3C0DFA00 */  lui         $t5, 0xfa00
/* 020B74 80020FC4 24680008 */  addiu       $t0, $v1, 0x8
/* 020B78 80020FC8 AE080000 */  sw          $t0, 0x0($s0)
/* 020B7C 80020FCC AC6B0004 */  sw          $t3, 0x4($v1)
/* 020B80 80020FD0 AC6A0000 */  sw          $t2, 0x0($v1)
/* 020B84 80020FD4 8E030000 */  lw          $v1, 0x0($s0)
/* 020B88 80020FD8 3C19000D */  lui         $t9, (0xD4184 >> 16)
/* 020B8C 80020FDC 3C18F642 */  lui         $t8, (0xF642823C >> 16)
/* 020B90 80020FE0 246C0008 */  addiu       $t4, $v1, 0x8
/* 020B94 80020FE4 AE0C0000 */  sw          $t4, 0x0($s0)
/* 020B98 80020FE8 AC6E0004 */  sw          $t6, 0x4($v1)
/* 020B9C 80020FEC AC6D0000 */  sw          $t5, 0x0($v1)
/* 020BA0 80020FF0 8E030000 */  lw          $v1, 0x0($s0)
/* 020BA4 80020FF4 3718823C */  ori         $t8, $t8, (0xF642823C & 0xFFFF)
/* 020BA8 80020FF8 37394184 */  ori         $t9, $t9, (0xD4184 & 0xFFFF)
/* 020BAC 80020FFC 246F0008 */  addiu       $t7, $v1, 0x8
/* 020BB0 80021000 AE0F0000 */  sw          $t7, 0x0($s0)
/* 020BB4 80021004 AC790004 */  sw          $t9, 0x4($v1)
/* 020BB8 80021008 AC780000 */  sw          $t8, 0x0($v1)
/* 020BBC 8002100C 0C00ED84 */  jal         func_8003B610
/* 020BC0 80021010 8E040000 */   lw         $a0, 0x0($s0)
/* 020BC4 80021014 0C00F134 */  jal         func_8003C4D0
/* 020BC8 80021018 00002025 */   move       $a0, $zero
/* 020BCC 8002101C 0C00EDD9 */  jal         func_8003B764
/* 020BD0 80021020 00000000 */   nop
/* 020BD4 80021024 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 020BD8 80021028 0C00F131 */  jal         func_8003C4C4
/* 020BDC 8002102C 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 020BE0 80021030 24040035 */  addiu       $a0, $zero, 0x35
/* 020BE4 80021034 24050061 */  addiu       $a1, $zero, 0x61
/* 020BE8 80021038 2406010A */  addiu       $a2, $zero, 0x10a
/* 020BEC 8002103C 0C00F098 */  jal         func_8003C260
/* 020BF0 80021040 2407008F */   addiu      $a3, $zero, 0x8f
/* 020BF4 80021044 8FA40020 */  lw          $a0, 0x20($sp)
/* 020BF8 80021048 0C00F0CA */  jal         func_8003C328
/* 020BFC 8002104C 2405000F */   addiu      $a1, $zero, 0xf
/* 020C00 80021050 240400FF */  addiu       $a0, $zero, 0xff
/* 020C04 80021054 240500FF */  addiu       $a1, $zero, 0xff
/* 020C08 80021058 240600FF */  addiu       $a2, $zero, 0xff
/* 020C0C 8002105C 0C00F0F9 */  jal         func_8003C3E4
/* 020C10 80021060 240700FE */   addiu      $a3, $zero, 0xfe
/* 020C14 80021064 3C048009 */  lui         $a0, %hi(D_8008E958)
/* 020C18 80021068 0C00F423 */  jal         func_8003D08C
/* 020C1C 8002106C 8C84E958 */   lw         $a0, %lo(D_8008E958)($a0)
/* 020C20 80021070 0C00EDD5 */  jal         func_8003B754
/* 020C24 80021074 02002025 */   move       $a0, $s0
/* 020C28 80021078 0C00EDD9 */  jal         func_8003B764
/* 020C2C 8002107C 00000000 */   nop
/* 020C30 80021080 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 020C34 80021084 0C00F131 */  jal         func_8003C4C4
/* 020C38 80021088 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
.L8002108C:
/* 020C3C 8002108C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 020C40 80021090 8FB00018 */  lw          $s0, 0x18($sp)
/* 020C44 80021094 27BD0028 */  addiu       $sp, $sp, 0x28
/* 020C48 80021098 03E00008 */  jr          $ra
/* 020C4C 8002109C 00000000 */   nop

glabel func_800210A0 # 22
/* 020C50 800210A0 3C01800F */  lui         $at, %hi(D_800F49E0)
/* 020C54 800210A4 03E00008 */  jr          $ra
/* 020C58 800210A8 AC2449E0 */   sw         $a0, %lo(D_800F49E0)($at)

glabel func_800210AC # 23
/* 020C5C 800210AC 3C01800F */  lui         $at, %hi(D_800F49E4)
/* 020C60 800210B0 10800009 */  beqz        $a0, .L800210D8
/* 020C64 800210B4 AC2449E4 */   sw         $a0, %lo(D_800F49E4)($at)
/* 020C68 800210B8 3C018010 */  lui         $at, %hi(D_800FD088)
/* 020C6C 800210BC AC20D088 */  sw          $zero, %lo(D_800FD088)($at)
/* 020C70 800210C0 3C018006 */  lui         $at, %hi(D_80061290)
/* 020C74 800210C4 AC201290 */  sw          $zero, %lo(D_80061290)($at)
/* 020C78 800210C8 3C018007 */  lui         $at, %hi(D_80070000)
/* 020C7C 800210CC AC200000 */  sw          $zero, %lo(D_80070000)($at)
/* 020C80 800210D0 3C018007 */  lui         $at, %hi(D_80070004)
/* 020C84 800210D4 AC200004 */  sw          $zero, %lo(D_80070004)($at)
.L800210D8:
/* 020C88 800210D8 03E00008 */  jr          $ra
/* 020C8C 800210DC 00000000 */   nop

glabel func_800210E0 # 24
/* 020C90 800210E0 3C01800F */  lui         $at, %hi(D_800F49E8)
/* 020C94 800210E4 03E00008 */  jr          $ra
/* 020C98 800210E8 AC2449E8 */   sw         $a0, %lo(D_800F49E8)($at)

glabel func_800210EC # 25
/* 020C9C 800210EC 3C01800F */  lui         $at, %hi(D_800F49EC)
/* 020CA0 800210F0 03E00008 */  jr          $ra
/* 020CA4 800210F4 AC2449EC */   sw         $a0, %lo(D_800F49EC)($at)

glabel func_800210F8 # 26
/* 020CA8 800210F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 020CAC 800210FC AFBF001C */  sw          $ra, 0x1c($sp)
/* 020CB0 80021100 AFB00018 */  sw          $s0, 0x18($sp)
/* 020CB4 80021104 8C820000 */  lw          $v0, 0x0($a0)
/* 020CB8 80021108 3C0FE700 */  lui         $t7, 0xe700
/* 020CBC 8002110C 3C19E300 */  lui         $t9, (0xE3000A01 >> 16)
/* 020CC0 80021110 244E0008 */  addiu       $t6, $v0, 0x8
/* 020CC4 80021114 AC8E0000 */  sw          $t6, 0x0($a0)
/* 020CC8 80021118 AC400004 */  sw          $zero, 0x4($v0)
/* 020CCC 8002111C AC4F0000 */  sw          $t7, 0x0($v0)
/* 020CD0 80021120 8C820000 */  lw          $v0, 0x0($a0)
/* 020CD4 80021124 37390A01 */  ori         $t9, $t9, (0xE3000A01 & 0xFFFF)
/* 020CD8 80021128 3C08800F */  lui         $t0, %hi(D_800F49E4)
/* 020CDC 8002112C 24580008 */  addiu       $t8, $v0, 0x8
/* 020CE0 80021130 AC980000 */  sw          $t8, 0x0($a0)
/* 020CE4 80021134 AC400004 */  sw          $zero, 0x4($v0)
/* 020CE8 80021138 AC590000 */  sw          $t9, 0x0($v0)
/* 020CEC 8002113C 8D0849E4 */  lw          $t0, %lo(D_800F49E4)($t0)
/* 020CF0 80021140 00808025 */  move        $s0, $a0
/* 020CF4 80021144 3C02800F */  lui         $v0, %hi(D_800F4964)
/* 020CF8 80021148 11000005 */  beqz        $t0, .L80021160
/* 020CFC 8002114C 00000000 */   nop
/* 020D00 80021150 0C0081C7 */  jal         func_8002071C
/* 020D04 80021154 00000000 */   nop
/* 020D08 80021158 1000000E */  b           .L80021194
/* 020D0C 8002115C 00000000 */   nop
.L80021160:
/* 020D10 80021160 8C424964 */  lw          $v0, %lo(D_800F4964)($v0)
/* 020D14 80021164 10400003 */  beqz        $v0, .L80021174
/* 020D18 80021168 00000000 */   nop
/* 020D1C 8002116C 0040F809 */  jalr        $v0
/* 020D20 80021170 02002025 */   move       $a0, $s0
.L80021174:
/* 020D24 80021174 3C09800F */  lui         $t1, %hi(D_800F49EC)
/* 020D28 80021178 8D2949EC */  lw          $t1, %lo(D_800F49EC)($t1)
/* 020D2C 8002117C 11200005 */  beqz        $t1, .L80021194
/* 020D30 80021180 00000000 */   nop
/* 020D34 80021184 0C00827B */  jal         func_800209EC
/* 020D38 80021188 02002025 */   move       $a0, $s0
/* 020D3C 8002118C 0C00805C */  jal         func_80020170
/* 020D40 80021190 02002025 */   move       $a0, $s0
.L80021194:
/* 020D44 80021194 3C0A800F */  lui         $t2, %hi(D_800F49E8)
/* 020D48 80021198 8D4A49E8 */  lw          $t2, %lo(D_800F49E8)($t2)
/* 020D4C 8002119C 51400004 */  beql        $t2, $zero, .L800211B0
/* 020D50 800211A0 8FBF001C */   lw         $ra, 0x1c($sp)
/* 020D54 800211A4 0C008215 */  jal         func_80020854
/* 020D58 800211A8 02002025 */   move       $a0, $s0
/* 020D5C 800211AC 8FBF001C */  lw          $ra, 0x1c($sp)
.L800211B0:
/* 020D60 800211B0 8FB00018 */  lw          $s0, 0x18($sp)
/* 020D64 800211B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 020D68 800211B8 03E00008 */  jr          $ra
/* 020D6C 800211BC 00000000 */   nop

glabel func_800211C0 # 27
/* 020D70 800211C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020D74 800211C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 020D78 800211C8 0C008058 */  jal         func_80020160
/* 020D7C 800211CC 00000000 */   nop
/* 020D80 800211D0 0C007E78 */  jal         func_8001F9E0
/* 020D84 800211D4 00000000 */   nop
/* 020D88 800211D8 0C00826A */  jal         func_800209A8
/* 020D8C 800211DC 240400F2 */   addiu      $a0, $zero, 0xf2
/* 020D90 800211E0 0C008253 */  jal         func_8002094C
/* 020D94 800211E4 00000000 */   nop
/* 020D98 800211E8 0C0083A3 */  jal         func_80020E8C
/* 020D9C 800211EC 00000000 */   nop
/* 020DA0 800211F0 0C008428 */  jal         func_800210A0
/* 020DA4 800211F4 00002025 */   move       $a0, $zero
/* 020DA8 800211F8 0C00842B */  jal         func_800210AC
/* 020DAC 800211FC 00002025 */   move       $a0, $zero
/* 020DB0 80021200 0C008438 */  jal         func_800210E0
/* 020DB4 80021204 00002025 */   move       $a0, $zero
/* 020DB8 80021208 0C00843B */  jal         func_800210EC
/* 020DBC 8002120C 24040007 */   addiu      $a0, $zero, 0x7
/* 020DC0 80021210 0C00803F */  jal         func_800200FC
/* 020DC4 80021214 00002025 */   move       $a0, $zero
/* 020DC8 80021218 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020DCC 8002121C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020DD0 80021220 03E00008 */  jr          $ra
/* 020DD4 80021224 00000000 */   nop

glabel func_80021228 # 28
/* 020DD8 80021228 3C02800F */  lui         $v0, %hi(D_800F49CC)
/* 020DDC 8002122C 244249CC */  addiu       $v0, $v0, %lo(D_800F49CC)
/* 020DE0 80021230 C4440000 */  lwc1        $f4, 0x0($v0)
/* 020DE4 80021234 460C203E */  c.le.s      $f4, $f12
/* 020DE8 80021238 00000000 */  nop
/* 020DEC 8002123C 45000002 */  bc1f        .L80021248
/* 020DF0 80021240 00000000 */   nop
/* 020DF4 80021244 E44C0000 */  swc1        $f12, 0x0($v0)
.L80021248:
/* 020DF8 80021248 03E00008 */  jr          $ra
/* 020DFC 8002124C 00000000 */   nop

glabel func_80021250 # 29
/* 020E00 80021250 3C0E8009 */  lui         $t6, %hi(D_8008E964)
/* 020E04 80021254 8DCEE964 */  lw          $t6, %lo(D_8008E964)($t6)
/* 020E08 80021258 3C018009 */  lui         $at, %hi(D_8008E970)
/* 020E0C 8002125C 00001025 */  move        $v0, $zero
/* 020E10 80021260 AC8E0000 */  sw          $t6, 0x0($a0)
/* 020E14 80021264 D424E970 */  ldc1        $f4, %lo(D_8008E970)($at)
/* 020E18 80021268 03E00008 */  jr          $ra
/* 020E1C 8002126C F4A40000 */   sdc1       $f4, 0x0($a1)

glabel func_80021270 # 30
/* 020E20 80021270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020E24 80021274 AFA40018 */  sw          $a0, 0x18($sp)
/* 020E28 80021278 00802825 */  move        $a1, $a0
/* 020E2C 8002127C AFBF0014 */  sw          $ra, 0x14($sp)
/* 020E30 80021280 AFA60020 */  sw          $a2, 0x20($sp)
/* 020E34 80021284 AFA70024 */  sw          $a3, 0x24($sp)
/* 020E38 80021288 3C048009 */  lui         $a0, %hi(D_8008E960)
/* 020E3C 8002128C 8C84E960 */  lw          $a0, %lo(D_8008E960)($a0)
/* 020E40 80021290 8FA7002C */  lw          $a3, 0x2c($sp)
/* 020E44 80021294 8FA60028 */  lw          $a2, 0x28($sp)
/* 020E48 80021298 0C007976 */  jal         func_8001E5D8
/* 020E4C 8002129C AFA50018 */   sw         $a1, 0x18($sp)
/* 020E50 800212A0 8FA50018 */  lw          $a1, 0x18($sp)
/* 020E54 800212A4 3C048009 */  lui         $a0, %hi(D_8008E968)
/* 020E58 800212A8 240EFFFF */  addiu       $t6, $zero, -0x1
/* 020E5C 800212AC 04A00011 */  bltz        $a1, .L800212F4
/* 020E60 800212B0 3C018009 */   lui        $at, %hi(D_8008E964)
/* 020E64 800212B4 3C018009 */  lui         $at, %hi(D_8008E964)
/* 020E68 800212B8 AC25E964 */  sw          $a1, %lo(D_8008E964)($at)
/* 020E6C 800212BC 0C0084F3 */  jal         func_800213CC
/* 020E70 800212C0 8C84E968 */   lw         $a0, %lo(D_8008E968)($a0)
/* 020E74 800212C4 00402025 */  move        $a0, $v0
/* 020E78 800212C8 8FA60020 */  lw          $a2, 0x20($sp)
/* 020E7C 800212CC 0C007940 */  jal         func_8001E500
/* 020E80 800212D0 8FA70024 */   lw         $a3, 0x24($sp)
/* 020E84 800212D4 3C018009 */  lui         $at, %hi(D_8008E960)
/* 020E88 800212D8 AC22E960 */  sw          $v0, %lo(D_8008E960)($at)
/* 020E8C 800212DC 3C013FF0 */  lui         $at, 0x3ff0
/* 020E90 800212E0 44812800 */  mtc1        $at, $f5
/* 020E94 800212E4 44802000 */  mtc1        $zero, $f4
/* 020E98 800212E8 3C018009 */  lui         $at, %hi(D_8008E970)
/* 020E9C 800212EC 10000004 */  b           .L80021300
/* 020EA0 800212F0 F424E970 */   sdc1       $f4, %lo(D_8008E970)($at)
.L800212F4:
/* 020EA4 800212F4 AC2EE964 */  sw          $t6, %lo(D_8008E964)($at)
/* 020EA8 800212F8 3C018009 */  lui         $at, %hi(D_8008E960)
/* 020EAC 800212FC AC20E960 */  sw          $zero, %lo(D_8008E960)($at)
.L80021300:
/* 020EB0 80021300 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020EB4 80021304 3C028009 */  lui         $v0, %hi(D_8008E960)
/* 020EB8 80021308 8C42E960 */  lw          $v0, %lo(D_8008E960)($v0)
/* 020EBC 8002130C 03E00008 */  jr          $ra
/* 020EC0 80021310 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_80021314 # 31
/* 020EC4 80021314 3C028009 */  lui         $v0, %hi(D_8008E970)
/* 020EC8 80021318 2442E970 */  addiu       $v0, $v0, %lo(D_8008E970)
/* 020ECC 8002131C F44C0000 */  sdc1        $f12, 0x0($v0)
/* 020ED0 80021320 3C0E8009 */  lui         $t6, %hi(D_8008E964)
/* 020ED4 80021324 8DCEE964 */  lw          $t6, %lo(D_8008E964)($t6)
/* 020ED8 80021328 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020EDC 8002132C 24010002 */  addiu       $at, $zero, 0x2
/* 020EE0 80021330 15C10003 */  bne         $t6, $at, .L80021340
/* 020EE4 80021334 AFBF0014 */   sw         $ra, 0x14($sp)
/* 020EE8 80021338 10000006 */  b           .L80021354
/* 020EEC 8002133C 00001025 */   move       $v0, $zero
.L80021340:
/* 020EF0 80021340 3C048009 */  lui         $a0, %hi(D_8008E960)
/* 020EF4 80021344 8C84E960 */  lw          $a0, %lo(D_8008E960)($a0)
/* 020EF8 80021348 8C460000 */  lw          $a2, 0x0($v0)
/* 020EFC 8002134C 0C0078E9 */  jal         func_8001E3A4
/* 020F00 80021350 8C470004 */   lw         $a3, 0x4($v0)
.L80021354:
/* 020F04 80021354 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020F08 80021358 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020F0C 8002135C 03E00008 */  jr          $ra
/* 020F10 80021360 00000000 */   nop

glabel func_80021364 # 32
/* 020F14 80021364 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020F18 80021368 00802825 */  move        $a1, $a0
/* 020F1C 8002136C AFBF0014 */  sw          $ra, 0x14($sp)
/* 020F20 80021370 3C048009 */  lui         $a0, %hi(D_8008E968)
/* 020F24 80021374 0C0084F3 */  jal         func_800213CC
/* 020F28 80021378 8C84E968 */   lw         $a0, %lo(D_8008E968)($a0)
/* 020F2C 8002137C 00402025 */  move        $a0, $v0
/* 020F30 80021380 24060000 */  addiu       $a2, $zero, 0x0
/* 020F34 80021384 0C007940 */  jal         func_8001E500
/* 020F38 80021388 24070000 */   addiu      $a3, $zero, 0x0
/* 020F3C 8002138C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020F40 80021390 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020F44 80021394 03E00008 */  jr          $ra
/* 020F48 80021398 00000000 */   nop

glabel func_8002139C # 33
/* 020F4C 8002139C 3C018009 */  lui         $at, %hi(D_8008E968)
/* 020F50 800213A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 020F54 800213A4 AC24E968 */  sw          $a0, %lo(D_8008E968)($at)
/* 020F58 800213A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 020F5C 800213AC 3C04800F */  lui         $a0, %hi(D_800F49F0)
/* 020F60 800213B0 0C00852A */  jal         func_800214A8
/* 020F64 800213B4 248449F0 */   addiu      $a0, $a0, %lo(D_800F49F0)
/* 020F68 800213B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 020F6C 800213BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 020F70 800213C0 00001025 */  move        $v0, $zero
/* 020F74 800213C4 03E00008 */  jr          $ra
/* 020F78 800213C8 00000000 */   nop

glabel func_800213CC # 34
/* 020F7C 800213CC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 020F80 800213D0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 020F84 800213D4 3C11800F */  lui         $s1, %hi(D_800F49F0)
/* 020F88 800213D8 AFB20020 */  sw          $s2, 0x20($sp)
/* 020F8C 800213DC 00809025 */  move        $s2, $a0
/* 020F90 800213E0 263149F0 */  addiu       $s1, $s1, %lo(D_800F49F0)
/* 020F94 800213E4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 020F98 800213E8 AFA50034 */  sw          $a1, 0x34($sp)
/* 020F9C 800213EC AFB00018 */  sw          $s0, 0x18($sp)
/* 020FA0 800213F0 02402825 */  move        $a1, $s2
/* 020FA4 800213F4 0C00853C */  jal         func_800214F0
/* 020FA8 800213F8 02202025 */   move       $a0, $s1
/* 020FAC 800213FC 02202025 */  move        $a0, $s1
/* 020FB0 80021400 0C00853C */  jal         func_800214F0
/* 020FB4 80021404 26450001 */   addiu      $a1, $s2, 0x1
/* 020FB8 80021408 02202025 */  move        $a0, $s1
/* 020FBC 8002140C 0C00853C */  jal         func_800214F0
/* 020FC0 80021410 26450002 */   addiu      $a1, $s2, 0x2
/* 020FC4 80021414 02202025 */  move        $a0, $s1
/* 020FC8 80021418 0C00853C */  jal         func_800214F0
/* 020FCC 8002141C 26450003 */   addiu      $a1, $s2, 0x3
/* 020FD0 80021420 8FAE0034 */  lw          $t6, 0x34($sp)
/* 020FD4 80021424 02202025 */  move        $a0, $s1
/* 020FD8 80021428 000E78C0 */  sll         $t7, $t6, 3
/* 020FDC 8002142C 024F8021 */  addu        $s0, $s2, $t7
/* 020FE0 80021430 0C00853C */  jal         func_800214F0
/* 020FE4 80021434 26050006 */   addiu      $a1, $s0, 0x6
/* 020FE8 80021438 A3A20029 */  sb          $v0, 0x29($sp)
/* 020FEC 8002143C 02202025 */  move        $a0, $s1
/* 020FF0 80021440 0C00853C */  jal         func_800214F0
/* 020FF4 80021444 26050005 */   addiu      $a1, $s0, 0x5
/* 020FF8 80021448 A3A2002A */  sb          $v0, 0x2a($sp)
/* 020FFC 8002144C 02202025 */  move        $a0, $s1
/* 021000 80021450 0C00853C */  jal         func_800214F0
/* 021004 80021454 26050004 */   addiu      $a1, $s0, 0x4
/* 021008 80021458 A3A2002B */  sb          $v0, 0x2b($sp)
/* 02100C 8002145C 02202025 */  move        $a0, $s1
/* 021010 80021460 0C00853C */  jal         func_800214F0
/* 021014 80021464 26050007 */   addiu      $a1, $s0, 0x7
/* 021018 80021468 93B8002B */  lbu         $t8, 0x2b($sp)
/* 02101C 8002146C 93A9002A */  lbu         $t1, 0x2a($sp)
/* 021020 80021470 93AC0029 */  lbu         $t4, 0x29($sp)
/* 021024 80021474 0018CE00 */  sll         $t9, $t8, 24
/* 021028 80021478 00594025 */  or          $t0, $v0, $t9
/* 02102C 8002147C 00095400 */  sll         $t2, $t1, 16
/* 021030 80021480 010A5825 */  or          $t3, $t0, $t2
/* 021034 80021484 000C6A00 */  sll         $t5, $t4, 8
/* 021038 80021488 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02103C 8002148C 016D7025 */  or          $t6, $t3, $t5
/* 021040 80021490 024E1021 */  addu        $v0, $s2, $t6
/* 021044 80021494 8FB20020 */  lw          $s2, 0x20($sp)
/* 021048 80021498 8FB00018 */  lw          $s0, 0x18($sp)
/* 02104C 8002149C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 021050 800214A0 03E00008 */  jr          $ra
/* 021054 800214A4 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_800214A8 # 35
/* 021058 800214A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02105C 800214AC 248F000F */  addiu       $t7, $a0, 0xf
/* 021060 800214B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021064 800214B4 000FC102 */  srl         $t8, $t7, 4
/* 021068 800214B8 00803825 */  move        $a3, $a0
/* 02106C 800214BC 3C0E8000 */  lui         $t6, 0x8000
/* 021070 800214C0 0018C900 */  sll         $t9, $t8, 4
/* 021074 800214C4 AC8E0400 */  sw          $t6, 0x400($a0)
/* 021078 800214C8 AC990404 */  sw          $t9, 0x404($a0)
/* 02107C 800214CC 24E50420 */  addiu       $a1, $a3, 0x420
/* 021080 800214D0 24840408 */  addiu       $a0, $a0, 0x408
/* 021084 800214D4 0C013AEC */  jal         func_8004EBB0
/* 021088 800214D8 24060001 */   addiu      $a2, $zero, 0x1
/* 02108C 800214DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 021090 800214E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021094 800214E4 00001025 */  move        $v0, $zero
/* 021098 800214E8 03E00008 */  jr          $ra
/* 02109C 800214EC 00000000 */   nop

glabel func_800214F0 # 36
/* 0210A0 800214F0 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 0210A4 800214F4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0210A8 800214F8 AFB00028 */  sw          $s0, 0x28($sp)
/* 0210AC 800214FC 8C830400 */  lw          $v1, 0x400($a0)
/* 0210B0 80021500 00808025 */  move        $s0, $a0
/* 0210B4 80021504 00A03025 */  move        $a2, $a1
/* 0210B8 80021508 00A3082A */  slt         $at, $a1, $v1
/* 0210BC 8002150C 14200003 */  bnez        $at, .L8002151C
/* 0210C0 80021510 246E0400 */   addiu      $t6, $v1, 0x400
/* 0210C4 80021514 00AE082A */  slt         $at, $a1, $t6
/* 0210C8 80021518 14200019 */  bnez        $at, .L80021580
.L8002151C:
/* 0210CC 8002151C 2401FFF0 */   addiu      $at, $zero, -0x10
/* 0210D0 80021520 00C17824 */  and         $t7, $a2, $at
/* 0210D4 80021524 AE0F0400 */  sw          $t7, 0x400($s0)
/* 0210D8 80021528 8E040404 */  lw          $a0, 0x404($s0)
/* 0210DC 8002152C AFA60054 */  sw          $a2, 0x54($sp)
/* 0210E0 80021530 0C0142CC */  jal         func_80050B30
/* 0210E4 80021534 24050400 */   addiu      $a1, $zero, 0x400
/* 0210E8 80021538 8E180404 */  lw          $t8, 0x404($s0)
/* 0210EC 8002153C 8E070400 */  lw          $a3, 0x400($s0)
/* 0210F0 80021540 24190400 */  addiu       $t9, $zero, 0x400
/* 0210F4 80021544 26020408 */  addiu       $v0, $s0, 0x408
/* 0210F8 80021548 AFA20018 */  sw          $v0, 0x18($sp)
/* 0210FC 8002154C AFA20030 */  sw          $v0, 0x30($sp)
/* 021100 80021550 AFB90014 */  sw          $t9, 0x14($sp)
/* 021104 80021554 27A40038 */  addiu       $a0, $sp, 0x38
/* 021108 80021558 24050001 */  addiu       $a1, $zero, 0x1
/* 02110C 8002155C 00003025 */  move        $a2, $zero
/* 021110 80021560 0C0142F8 */  jal         func_80050BE0
/* 021114 80021564 AFB80010 */   sw         $t8, 0x10($sp)
/* 021118 80021568 8FA40030 */  lw          $a0, 0x30($sp)
/* 02111C 8002156C 27A50034 */  addiu       $a1, $sp, 0x34
/* 021120 80021570 0C013A48 */  jal         func_8004E920
/* 021124 80021574 24060001 */   addiu      $a2, $zero, 0x1
/* 021128 80021578 8E030400 */  lw          $v1, 0x400($s0)
/* 02112C 8002157C 8FA60054 */  lw          $a2, 0x54($sp)
.L80021580:
/* 021130 80021580 8E080404 */  lw          $t0, 0x404($s0)
/* 021134 80021584 8FBF002C */  lw          $ra, 0x2c($sp)
/* 021138 80021588 8FB00028 */  lw          $s0, 0x28($sp)
/* 02113C 8002158C 01064821 */  addu        $t1, $t0, $a2
/* 021140 80021590 01235023 */  subu        $t2, $t1, $v1
/* 021144 80021594 91420000 */  lbu         $v0, 0x0($t2)
/* 021148 80021598 03E00008 */  jr          $ra
/* 02114C 8002159C 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_800215A0 # 37
/* 021150 800215A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021154 800215A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021158 800215A8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 02115C 800215AC AFA60020 */  sw          $a2, 0x20($sp)
/* 021160 800215B0 AFA70024 */  sw          $a3, 0x24($sp)
/* 021164 800215B4 8CC5000C */  lw          $a1, 0xc($a2)
/* 021168 800215B8 00C07025 */  move        $t6, $a2
/* 02116C 800215BC 8DC70008 */  lw          $a3, 0x8($t6)
/* 021170 800215C0 0C004C48 */  jal         func_80013120
/* 021174 800215C4 8CC60010 */   lw         $a2, 0x10($a2)
/* 021178 800215C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02117C 800215CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021180 800215D0 03E00008 */  jr          $ra
/* 021184 800215D4 00000000 */   nop

glabel func_800215D8 # 38
/* 021188 800215D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02118C 800215DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 021190 800215E0 AFA40018 */  sw          $a0, 0x18($sp)
/* 021194 800215E4 AFA60020 */  sw          $a2, 0x20($sp)
/* 021198 800215E8 AFA70024 */  sw          $a3, 0x24($sp)
/* 02119C 800215EC 0C001A23 */  jal         func_8000688C
/* 0211A0 800215F0 8CA4018C */   lw         $a0, 0x18c($a1)
/* 0211A4 800215F4 10400004 */  beqz        $v0, .L80021608
/* 0211A8 800215F8 00402025 */   move       $a0, $v0
/* 0211AC 800215FC 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0211B0 80021600 0C045EFF */  jal         func_80117BFC
/* 0211B4 80021604 8DC50008 */   lw         $a1, 0x8($t6)
.L80021608:
/* 0211B8 80021608 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0211BC 8002160C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0211C0 80021610 03E00008 */  jr          $ra
/* 0211C4 80021614 00000000 */   nop

glabel func_80021618 # 39
/* 0211C8 80021618 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0211CC 8002161C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0211D0 80021620 AFA5001C */  sw          $a1, 0x1c($sp)
/* 0211D4 80021624 AFA60020 */  sw          $a2, 0x20($sp)
/* 0211D8 80021628 AFA70024 */  sw          $a3, 0x24($sp)
/* 0211DC 8002162C 0C004CC4 */  jal         func_80013310
/* 0211E0 80021630 8CC50008 */   lw         $a1, 0x8($a2)
/* 0211E4 80021634 8FAF0020 */  lw          $t7, 0x20($sp)
/* 0211E8 80021638 00402025 */  move        $a0, $v0
/* 0211EC 8002163C 0C0078C7 */  jal         func_8001E31C
/* 0211F0 80021640 8DE5000C */   lw         $a1, 0xc($t7)
/* 0211F4 80021644 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0211F8 80021648 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0211FC 8002164C 03E00008 */  jr          $ra
/* 021200 80021650 00000000 */   nop

glabel func_80021654 # 40
/* 021204 80021654 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 021208 80021658 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02120C 8002165C AFB00018 */  sw          $s0, 0x18($sp)
/* 021210 80021660 AFA7004C */  sw          $a3, 0x4c($sp)
/* 021214 80021664 AFA50044 */  sw          $a1, 0x44($sp)
/* 021218 80021668 AFA60048 */  sw          $a2, 0x48($sp)
/* 02121C 8002166C 00808025 */  move        $s0, $a0
/* 021220 80021670 8C86004C */  lw          $a2, 0x4c($a0)
/* 021224 80021674 C48E0048 */  lwc1        $f14, 0x48($a0)
/* 021228 80021678 C48C0044 */  lwc1        $f12, 0x44($a0)
/* 02122C 8002167C 0C043D75 */  jal         func_8010F5D4
/* 021230 80021680 00003825 */   move       $a3, $zero
/* 021234 80021684 8FAE0048 */  lw          $t6, 0x48($sp)
/* 021238 80021688 AFA20038 */  sw          $v0, 0x38($sp)
/* 02123C 8002168C 3C198007 */  lui         $t9, %hi(D_80071E88)
/* 021240 80021690 25CF0008 */  addiu       $t7, $t6, 0x8
/* 021244 80021694 AFAF0020 */  sw          $t7, 0x20($sp)
/* 021248 80021698 8DD80008 */  lw          $t8, 0x8($t6)
/* 02124C 8002169C 5B00002F */  blezl       $t8, .L8002175C
/* 021250 800216A0 8FAA0020 */   lw         $t2, 0x20($sp)
/* 021254 800216A4 8F391E88 */  lw          $t9, %lo(D_80071E88)($t9)
/* 021258 800216A8 24040004 */  addiu       $a0, $zero, 0x4
/* 02125C 800216AC 16190003 */  bne         $s0, $t9, .L800216BC
/* 021260 800216B0 00000000 */   nop
/* 021264 800216B4 10000001 */  b           .L800216BC
/* 021268 800216B8 24040003 */   addiu      $a0, $zero, 0x3
.L800216BC:
/* 02126C 800216BC 0C043E85 */  jal         func_8010FA14
/* 021270 800216C0 8FA50038 */   lw         $a1, 0x38($sp)
/* 021274 800216C4 04400024 */  bltz        $v0, .L80021758
/* 021278 800216C8 00402825 */   move       $a1, $v0
/* 02127C 800216CC 0C004CC4 */  jal         func_80013310
/* 021280 800216D0 02002025 */   move       $a0, $s0
/* 021284 800216D4 0C00E512 */  jal         func_80039448
/* 021288 800216D8 AFA2002C */   sw         $v0, 0x2c($sp)
/* 02128C 800216DC 44822000 */  mtc1        $v0, $f4
/* 021290 800216E0 8FA4002C */  lw          $a0, 0x2c($sp)
/* 021294 800216E4 04410006 */  bgez        $v0, .L80021700
/* 021298 800216E8 468021A1 */   cvt.d.w    $f6, $f4
/* 02129C 800216EC 3C0141F0 */  lui         $at, 0x41f0
/* 0212A0 800216F0 44814800 */  mtc1        $at, $f9
/* 0212A4 800216F4 44804000 */  mtc1        $zero, $f8
/* 0212A8 800216F8 00000000 */  nop
/* 0212AC 800216FC 46283180 */  add.d       $f6, $f6, $f8
.L80021700:
/* 0212B0 80021700 3C013DF0 */  lui         $at, 0x3df0
/* 0212B4 80021704 44815800 */  mtc1        $at, $f11
/* 0212B8 80021708 44805000 */  mtc1        $zero, $f10
/* 0212BC 8002170C 8FA80020 */  lw          $t0, 0x20($sp)
/* 0212C0 80021710 3C013FE0 */  lui         $at, 0x3fe0
/* 0212C4 80021714 462A3402 */  mul.d       $f16, $f6, $f10
/* 0212C8 80021718 8D090000 */  lw          $t1, 0x0($t0)
/* 0212CC 8002171C 44819800 */  mtc1        $at, $f19
/* 0212D0 80021720 44809000 */  mtc1        $zero, $f18
/* 0212D4 80021724 44894000 */  mtc1        $t1, $f8
/* 0212D8 80021728 3C014008 */  lui         $at, 0x4008
/* 0212DC 8002172C 468041A1 */  cvt.d.w     $f6, $f8
/* 0212E0 80021730 46328101 */  sub.d       $f4, $f16, $f18
/* 0212E4 80021734 44808000 */  mtc1        $zero, $f16
/* 0212E8 80021738 44818800 */  mtc1        $at, $f17
/* 0212EC 8002173C 46262282 */  mul.d       $f10, $f4, $f6
/* 0212F0 80021740 00000000 */  nop
/* 0212F4 80021744 46305482 */  mul.d       $f18, $f10, $f16
/* 0212F8 80021748 46209220 */  cvt.s.d     $f8, $f18
/* 0212FC 8002174C 44054000 */  mfc1        $a1, $f8
/* 021300 80021750 0C0078C7 */  jal         func_8001E31C
/* 021304 80021754 00000000 */   nop
.L80021758:
/* 021308 80021758 8FAA0020 */  lw          $t2, 0x20($sp)
.L8002175C:
/* 02130C 8002175C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 021310 80021760 29610002 */  slti        $at, $t3, 0x2
/* 021314 80021764 54200007 */  bnel        $at, $zero, .L80021784
/* 021318 80021768 8FBF001C */   lw         $ra, 0x1c($sp)
/* 02131C 8002176C 0C0052F5 */  jal         func_80014BD4
/* 021320 80021770 02002025 */   move       $a0, $s0
/* 021324 80021774 24440044 */  addiu       $a0, $v0, 0x44
/* 021328 80021778 0C043E8D */  jal         func_8010FA34
/* 02132C 8002177C 8FA50038 */   lw         $a1, 0x38($sp)
/* 021330 80021780 8FBF001C */  lw          $ra, 0x1c($sp)
.L80021784:
/* 021334 80021784 8FB00018 */  lw          $s0, 0x18($sp)
/* 021338 80021788 27BD0040 */  addiu       $sp, $sp, 0x40
/* 02133C 8002178C 03E00008 */  jr          $ra
/* 021340 80021790 00000000 */   nop

glabel func_80021794 # 41
/* 021344 80021794 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021348 80021798 AFA70024 */  sw          $a3, 0x24($sp)
/* 02134C 8002179C AFBF0014 */  sw          $ra, 0x14($sp)
/* 021350 800217A0 AFA40018 */  sw          $a0, 0x18($sp)
/* 021354 800217A4 AFA5001C */  sw          $a1, 0x1c($sp)
/* 021358 800217A8 AFA60020 */  sw          $a2, 0x20($sp)
/* 02135C 800217AC 00C03825 */  move        $a3, $a2
/* 021360 800217B0 8CC50008 */  lw          $a1, 0x8($a2)
/* 021364 800217B4 8CC60010 */  lw          $a2, 0x10($a2)
/* 021368 800217B8 0C004BE9 */  jal         func_80012FA4
/* 02136C 800217BC AFA70020 */   sw         $a3, 0x20($sp)
/* 021370 800217C0 8FA70020 */  lw          $a3, 0x20($sp)
/* 021374 800217C4 8FA40018 */  lw          $a0, 0x18($sp)
/* 021378 800217C8 24E20008 */  addiu       $v0, $a3, 0x8
/* 02137C 800217CC 8C450000 */  lw          $a1, 0x0($v0)
/* 021380 800217D0 0C004BD3 */  jal         func_80012F4C
/* 021384 800217D4 8C460004 */   lw         $a2, 0x4($v0)
/* 021388 800217D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02138C 800217DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021390 800217E0 03E00008 */  jr          $ra
/* 021394 800217E4 00000000 */   nop

glabel func_800217E8 # 42
/* 021398 800217E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02139C 800217EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0213A0 800217F0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 0213A4 800217F4 AFA60020 */  sw          $a2, 0x20($sp)
/* 0213A8 800217F8 AFA70024 */  sw          $a3, 0x24($sp)
/* 0213AC 800217FC C4C4000C */  lwc1        $f4, 0xc($a2)
/* 0213B0 80021800 90C5000B */  lbu         $a1, 0xb($a2)
/* 0213B4 80021804 00C07025 */  move        $t6, $a2
/* 0213B8 80021808 24060001 */  addiu       $a2, $zero, 0x1
/* 0213BC 8002180C 444FF800 */  cfc1        $t7, FpcCsr
/* 0213C0 80021810 44C6F800 */  ctc1        $a2, FpcCsr
/* 0213C4 80021814 3C014F00 */  lui         $at, 0x4f00
/* 0213C8 80021818 460021A4 */  cvt.w.s     $f6, $f4
/* 0213CC 8002181C 4446F800 */  cfc1        $a2, FpcCsr
/* 0213D0 80021820 00000000 */  nop
/* 0213D4 80021824 30C60078 */  andi        $a2, $a2, 0x78
/* 0213D8 80021828 50C00013 */  beql        $a2, $zero, .L80021878
/* 0213DC 8002182C 44063000 */   mfc1       $a2, $f6
/* 0213E0 80021830 44813000 */  mtc1        $at, $f6
/* 0213E4 80021834 24060001 */  addiu       $a2, $zero, 0x1
/* 0213E8 80021838 46062181 */  sub.s       $f6, $f4, $f6
/* 0213EC 8002183C 44C6F800 */  ctc1        $a2, FpcCsr
/* 0213F0 80021840 00000000 */  nop
/* 0213F4 80021844 460031A4 */  cvt.w.s     $f6, $f6
/* 0213F8 80021848 4446F800 */  cfc1        $a2, FpcCsr
/* 0213FC 8002184C 00000000 */  nop
/* 021400 80021850 30C60078 */  andi        $a2, $a2, 0x78
/* 021404 80021854 14C00005 */  bnez        $a2, .L8002186C
/* 021408 80021858 00000000 */   nop
/* 02140C 8002185C 44063000 */  mfc1        $a2, $f6
/* 021410 80021860 3C018000 */  lui         $at, 0x8000
/* 021414 80021864 10000007 */  b           .L80021884
/* 021418 80021868 00C13025 */   or         $a2, $a2, $at
.L8002186C:
/* 02141C 8002186C 10000005 */  b           .L80021884
/* 021420 80021870 2406FFFF */   addiu      $a2, $zero, -0x1
/* 021424 80021874 44063000 */  mfc1        $a2, $f6
.L80021878:
/* 021428 80021878 00000000 */  nop
/* 02142C 8002187C 04C0FFFB */  bltz        $a2, .L8002186C
/* 021430 80021880 00000000 */   nop
.L80021884:
/* 021434 80021884 44CFF800 */  ctc1        $t7, FpcCsr
/* 021438 80021888 30D800FF */  andi        $t8, $a2, 0xff
/* 02143C 8002188C 03003025 */  move        $a2, $t8
/* 021440 80021890 0C00498B */  jal         func_8001262C
/* 021444 80021894 91C70013 */   lbu        $a3, 0x13($t6)
/* 021448 80021898 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02144C 8002189C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021450 800218A0 03E00008 */  jr          $ra
/* 021454 800218A4 00000000 */   nop

glabel func_800218A8 # 43
/* 021458 800218A8 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 02145C 800218AC AFBF0024 */  sw          $ra, 0x24($sp)
/* 021460 800218B0 AFB10020 */  sw          $s1, 0x20($sp)
/* 021464 800218B4 AFB0001C */  sw          $s0, 0x1c($sp)
/* 021468 800218B8 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 02146C 800218BC AFA40080 */  sw          $a0, 0x80($sp)
/* 021470 800218C0 AFA60088 */  sw          $a2, 0x88($sp)
/* 021474 800218C4 AFA7008C */  sw          $a3, 0x8c($sp)
/* 021478 800218C8 00A08825 */  move        $s1, $a1
/* 02147C 800218CC 0C001A23 */  jal         func_8000688C
/* 021480 800218D0 8CA4018C */   lw         $a0, 0x18c($a1)
/* 021484 800218D4 104000C3 */  beqz        $v0, .L80021BE4
/* 021488 800218D8 00408025 */   move       $s0, $v0
/* 02148C 800218DC 8FA50088 */  lw          $a1, 0x88($sp)
/* 021490 800218E0 3C014270 */  lui         $at, 0x4270
/* 021494 800218E4 44813000 */  mtc1        $at, $f6
/* 021498 800218E8 C4A4000C */  lwc1        $f4, 0xc($a1)
/* 02149C 800218EC 8CA20008 */  lw          $v0, 0x8($a1)
/* 0214A0 800218F0 24A50008 */  addiu       $a1, $a1, 0x8
/* 0214A4 800218F4 46062502 */  mul.s       $f20, $f4, $f6
/* 0214A8 800218F8 2C410007 */  sltiu       $at, $v0, 0x7
/* 0214AC 800218FC 102000AC */  beqz        $at, .L80021BB0
/* 0214B0 80021900 00027080 */   sll        $t6, $v0, 2
/* 0214B4 80021904 3C01800B */  lui         $at, %hi(jtbl_800A9A08)
/* 0214B8 80021908 002E0821 */  addu        $at, $at, $t6
/* 0214BC 8002190C 8C2E9A08 */  lw          $t6, %lo(jtbl_800A9A08)($at)
/* 0214C0 80021910 01C00008 */  jr          $t6
/* 0214C4 80021914 00000000 */   nop
glabel L80021918
/* 0214C8 80021918 8E2F0198 */  lw          $t7, 0x198($s1)
/* 0214CC 8002191C 24010001 */  addiu       $at, $zero, 0x1
/* 0214D0 80021920 8FA40080 */  lw          $a0, 0x80($sp)
/* 0214D4 80021924 55E10026 */  bnel        $t7, $at, L800219C0
/* 0214D8 80021928 8CA20000 */   lw         $v0, 0x0($a1)
/* 0214DC 8002192C 0C047038 */  jal         func_8011C0E0
/* 0214E0 80021930 AFA5002C */   sw         $a1, 0x2c($sp)
/* 0214E4 80021934 10400021 */  beqz        $v0, .L800219BC
/* 0214E8 80021938 8FA5002C */   lw         $a1, 0x2c($sp)
/* 0214EC 8002193C 94580034 */  lhu         $t8, 0x34($v0)
/* 0214F0 80021940 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 0214F4 80021944 2401007F */  addiu       $at, $zero, 0x7f
/* 0214F8 80021948 1701001C */  bne         $t8, $at, .L800219BC
/* 0214FC 8002194C 24423E20 */   addiu      $v0, $v0, %lo(D_800F3E20)
/* 021500 80021950 C4480000 */  lwc1        $f8, 0x0($v0)
/* 021504 80021954 C60A0018 */  lwc1        $f10, 0x18($s0)
/* 021508 80021958 C4500008 */  lwc1        $f16, 0x8($v0)
/* 02150C 8002195C C6120020 */  lwc1        $f18, 0x20($s0)
/* 021510 80021960 460A4081 */  sub.s       $f2, $f8, $f10
/* 021514 80021964 3C01800B */  lui         $at, %hi(D_800A9948)
/* 021518 80021968 46128301 */  sub.s       $f12, $f16, $f18
/* 02151C 8002196C 46021102 */  mul.s       $f4, $f2, $f2
/* 021520 80021970 00000000 */  nop
/* 021524 80021974 460C6182 */  mul.s       $f6, $f12, $f12
/* 021528 80021978 46062000 */  add.s       $f0, $f4, $f6
/* 02152C 8002197C 46000004 */  sqrt.s      $f0, $f0
/* 021530 80021980 4600A503 */  div.s       $f20, $f20, $f0
/* 021534 80021984 46141202 */  mul.s       $f8, $f2, $f20
/* 021538 80021988 E7A80064 */  swc1        $f8, 0x64($sp)
/* 02153C 8002198C 8CB90000 */  lw          $t9, 0x0($a1)
/* 021540 80021990 C4B20004 */  lwc1        $f18, 0x4($a1)
/* 021544 80021994 00194080 */  sll         $t0, $t9, 2
/* 021548 80021998 00280821 */  addu        $at, $at, $t0
/* 02154C 8002199C C42A9948 */  lwc1        $f10, %lo(D_800A9948)($at)
/* 021550 800219A0 46005407 */  neg.s       $f16, $f10
/* 021554 800219A4 46128102 */  mul.s       $f4, $f16, $f18
/* 021558 800219A8 00000000 */  nop
/* 02155C 800219AC 46146182 */  mul.s       $f6, $f12, $f20
/* 021560 800219B0 E7A40068 */  swc1        $f4, 0x68($sp)
/* 021564 800219B4 1000007E */  b           .L80021BB0
/* 021568 800219B8 E7A6006C */   swc1       $f6, 0x6c($sp)
.L800219BC:
/* 02156C 800219BC 8CA20000 */  lw          $v0, 0x0($a1)
glabel L800219C0
/* 021570 800219C0 00024880 */  sll         $t1, $v0, 2
/* 021574 800219C4 3C01800B */  lui         $at, %hi(D_800A9964)
/* 021578 800219C8 00290821 */  addu        $at, $at, $t1
/* 02157C 800219CC C4289964 */  lwc1        $f8, %lo(D_800A9964)($at)
/* 021580 800219D0 C62A0010 */  lwc1        $f10, 0x10($s1)
/* 021584 800219D4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 021588 800219D8 460A4300 */  add.s       $f12, $f8, $f10
/* 02158C 800219DC 0C00EB2F */  jal         func_8003ACBC
/* 021590 800219E0 E7AC0050 */   swc1       $f12, 0x50($sp)
/* 021594 800219E4 46140402 */  mul.s       $f16, $f0, $f20
/* 021598 800219E8 8FA5002C */  lw          $a1, 0x2c($sp)
/* 02159C 800219EC 3C01800B */  lui         $at, %hi(D_800A9948)
/* 0215A0 800219F0 C7AC0050 */  lwc1        $f12, 0x50($sp)
/* 0215A4 800219F4 E7B00064 */  swc1        $f16, 0x64($sp)
/* 0215A8 800219F8 8CAA0000 */  lw          $t2, 0x0($a1)
/* 0215AC 800219FC C4A60004 */  lwc1        $f6, 0x4($a1)
/* 0215B0 80021A00 000A5880 */  sll         $t3, $t2, 2
/* 0215B4 80021A04 002B0821 */  addu        $at, $at, $t3
/* 0215B8 80021A08 C4329948 */  lwc1        $f18, %lo(D_800A9948)($at)
/* 0215BC 80021A0C 46009107 */  neg.s       $f4, $f18
/* 0215C0 80021A10 46062202 */  mul.s       $f8, $f4, $f6
/* 0215C4 80021A14 0C00EB6C */  jal         func_8003ADB0
/* 0215C8 80021A18 E7A80068 */   swc1       $f8, 0x68($sp)
/* 0215CC 80021A1C 46140282 */  mul.s       $f10, $f0, $f20
/* 0215D0 80021A20 10000063 */  b           .L80021BB0
/* 0215D4 80021A24 E7AA006C */   swc1       $f10, 0x6c($sp)
glabel L80021A28
/* 0215D8 80021A28 0C00E512 */  jal         func_80039448
/* 0215DC 80021A2C AFA5002C */   sw         $a1, 0x2c($sp)
/* 0215E0 80021A30 44828000 */  mtc1        $v0, $f16
/* 0215E4 80021A34 3C013FE0 */  lui         $at, 0x3fe0
/* 0215E8 80021A38 44810800 */  mtc1        $at, $f1
/* 0215EC 80021A3C 44800000 */  mtc1        $zero, $f0
/* 0215F0 80021A40 04410006 */  bgez        $v0, .L80021A5C
/* 0215F4 80021A44 468084A1 */   cvt.d.w    $f18, $f16
/* 0215F8 80021A48 3C0141F0 */  lui         $at, 0x41f0
/* 0215FC 80021A4C 44812800 */  mtc1        $at, $f5
/* 021600 80021A50 44802000 */  mtc1        $zero, $f4
/* 021604 80021A54 00000000 */  nop
/* 021608 80021A58 46249480 */  add.d       $f18, $f18, $f4
.L80021A5C:
/* 02160C 80021A5C 3C013DF0 */  lui         $at, 0x3df0
/* 021610 80021A60 44813800 */  mtc1        $at, $f7
/* 021614 80021A64 44803000 */  mtc1        $zero, $f6
/* 021618 80021A68 4600A121 */  cvt.d.s     $f4, $f20
/* 02161C 80021A6C 46269202 */  mul.d       $f8, $f18, $f6
/* 021620 80021A70 00000000 */  nop
/* 021624 80021A74 46204282 */  mul.d       $f10, $f8, $f0
/* 021628 80021A78 46205400 */  add.d       $f16, $f10, $f0
/* 02162C 80021A7C 46302482 */  mul.d       $f18, $f4, $f16
/* 021630 80021A80 0C00E512 */  jal         func_80039448
/* 021634 80021A84 46209520 */   cvt.s.d    $f20, $f18
/* 021638 80021A88 44823000 */  mtc1        $v0, $f6
/* 02163C 80021A8C 3C013FE0 */  lui         $at, 0x3fe0
/* 021640 80021A90 44810800 */  mtc1        $at, $f1
/* 021644 80021A94 44800000 */  mtc1        $zero, $f0
/* 021648 80021A98 8FA5002C */  lw          $a1, 0x2c($sp)
/* 02164C 80021A9C 04410006 */  bgez        $v0, .L80021AB8
/* 021650 80021AA0 46803221 */   cvt.d.w    $f8, $f6
/* 021654 80021AA4 3C0141F0 */  lui         $at, 0x41f0
/* 021658 80021AA8 44815800 */  mtc1        $at, $f11
/* 02165C 80021AAC 44805000 */  mtc1        $zero, $f10
/* 021660 80021AB0 00000000 */  nop
/* 021664 80021AB4 462A4200 */  add.d       $f8, $f8, $f10
.L80021AB8:
/* 021668 80021AB8 3C013DF0 */  lui         $at, 0x3df0
/* 02166C 80021ABC 44812800 */  mtc1        $at, $f5
/* 021670 80021AC0 44802000 */  mtc1        $zero, $f4
/* 021674 80021AC4 8CAC0000 */  lw          $t4, 0x0($a1)
/* 021678 80021AC8 3C01800B */  lui         $at, %hi(D_800A9A28)
/* 02167C 80021ACC 46244402 */  mul.d       $f16, $f8, $f4
/* 021680 80021AD0 D4269A28 */  ldc1        $f6, %lo(D_800A9A28)($at)
/* 021684 80021AD4 3C01800B */  lui         $at, %hi(D_800A9964)
/* 021688 80021AD8 000C6880 */  sll         $t5, $t4, 2
/* 02168C 80021ADC 002D0821 */  addu        $at, $at, $t5
/* 021690 80021AE0 C4249964 */  lwc1        $f4, %lo(D_800A9964)($at)
/* 021694 80021AE4 C6280010 */  lwc1        $f8, 0x10($s1)
/* 021698 80021AE8 46208481 */  sub.d       $f18, $f16, $f0
/* 02169C 80021AEC 46044400 */  add.s       $f16, $f8, $f4
/* 0216A0 80021AF0 46269282 */  mul.d       $f10, $f18, $f6
/* 0216A4 80021AF4 460084A1 */  cvt.d.s     $f18, $f16
/* 0216A8 80021AF8 46325180 */  add.d       $f6, $f10, $f18
/* 0216AC 80021AFC 46203320 */  cvt.s.d     $f12, $f6
/* 0216B0 80021B00 0C00EB2F */  jal         func_8003ACBC
/* 0216B4 80021B04 E7AC004C */   swc1       $f12, 0x4c($sp)
/* 0216B8 80021B08 46140202 */  mul.s       $f8, $f0, $f20
/* 0216BC 80021B0C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0216C0 80021B10 3C01800B */  lui         $at, %hi(D_800A9948)
/* 0216C4 80021B14 C7AC004C */  lwc1        $f12, 0x4c($sp)
/* 0216C8 80021B18 E7A80064 */  swc1        $f8, 0x64($sp)
/* 0216CC 80021B1C 8CAE0000 */  lw          $t6, 0x0($a1)
/* 0216D0 80021B20 C4AA0004 */  lwc1        $f10, 0x4($a1)
/* 0216D4 80021B24 000E7880 */  sll         $t7, $t6, 2
/* 0216D8 80021B28 002F0821 */  addu        $at, $at, $t7
/* 0216DC 80021B2C C4249948 */  lwc1        $f4, %lo(D_800A9948)($at)
/* 0216E0 80021B30 46002407 */  neg.s       $f16, $f4
/* 0216E4 80021B34 460A8482 */  mul.s       $f18, $f16, $f10
/* 0216E8 80021B38 0C00EB6C */  jal         func_8003ADB0
/* 0216EC 80021B3C E7B20068 */   swc1       $f18, 0x68($sp)
/* 0216F0 80021B40 46140182 */  mul.s       $f6, $f0, $f20
/* 0216F4 80021B44 1000001A */  b           .L80021BB0
/* 0216F8 80021B48 E7A6006C */   swc1       $f6, 0x6c($sp)
glabel L80021B4C
/* 0216FC 80021B4C C62801EC */  lwc1        $f8, 0x1ec($s1)
/* 021700 80021B50 C6040044 */  lwc1        $f4, 0x44($s0)
/* 021704 80021B54 27A40040 */  addiu       $a0, $sp, 0x40
/* 021708 80021B58 46044401 */  sub.s       $f16, $f8, $f4
/* 02170C 80021B5C E7B00040 */  swc1        $f16, 0x40($sp)
/* 021710 80021B60 C6120048 */  lwc1        $f18, 0x48($s0)
/* 021714 80021B64 C62A01F0 */  lwc1        $f10, 0x1f0($s1)
/* 021718 80021B68 46125181 */  sub.s       $f6, $f10, $f18
/* 02171C 80021B6C E7A60044 */  swc1        $f6, 0x44($sp)
/* 021720 80021B70 C604004C */  lwc1        $f4, 0x4c($s0)
/* 021724 80021B74 C62801F4 */  lwc1        $f8, 0x1f4($s1)
/* 021728 80021B78 46044401 */  sub.s       $f16, $f8, $f4
/* 02172C 80021B7C 0C00E428 */  jal         func_800390A0
/* 021730 80021B80 E7B00048 */   swc1       $f16, 0x48($sp)
/* 021734 80021B84 C7AA0040 */  lwc1        $f10, 0x40($sp)
/* 021738 80021B88 C7A60044 */  lwc1        $f6, 0x44($sp)
/* 02173C 80021B8C C7A40048 */  lwc1        $f4, 0x48($sp)
/* 021740 80021B90 46145482 */  mul.s       $f18, $f10, $f20
/* 021744 80021B94 00000000 */  nop
/* 021748 80021B98 46143202 */  mul.s       $f8, $f6, $f20
/* 02174C 80021B9C 00000000 */  nop
/* 021750 80021BA0 46142402 */  mul.s       $f16, $f4, $f20
/* 021754 80021BA4 E7B20064 */  swc1        $f18, 0x64($sp)
/* 021758 80021BA8 E7A80068 */  swc1        $f8, 0x68($sp)
/* 02175C 80021BAC E7B0006C */  swc1        $f16, 0x6c($sp)
.L80021BB0:
/* 021760 80021BB0 8FA40080 */  lw          $a0, 0x80($sp)
/* 021764 80021BB4 8E050024 */  lw          $a1, 0x24($s0)
/* 021768 80021BB8 0C005315 */  jal         func_80014C54
/* 02176C 80021BBC 27A60034 */   addiu      $a2, $sp, 0x34
/* 021770 80021BC0 8E040038 */  lw          $a0, 0x38($s0)
/* 021774 80021BC4 26050018 */  addiu       $a1, $s0, 0x18
/* 021778 80021BC8 27A60034 */  addiu       $a2, $sp, 0x34
/* 02177C 80021BCC 0C045DEF */  jal         func_801177BC
/* 021780 80021BD0 27A70064 */   addiu      $a3, $sp, 0x64
/* 021784 80021BD4 0C002671 */  jal         func_800099C4
/* 021788 80021BD8 00000000 */   nop
/* 02178C 80021BDC AE2201A8 */  sw          $v0, 0x1a8($s1)
/* 021790 80021BE0 AE2301AC */  sw          $v1, 0x1ac($s1)
.L80021BE4:
/* 021794 80021BE4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 021798 80021BE8 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 02179C 80021BEC 8FB0001C */  lw          $s0, 0x1c($sp)
/* 0217A0 80021BF0 8FB10020 */  lw          $s1, 0x20($sp)
/* 0217A4 80021BF4 03E00008 */  jr          $ra
/* 0217A8 80021BF8 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_80021BFC # 44
/* 0217AC 80021BFC 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0217B0 80021C00 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0217B4 80021C04 AFA40048 */  sw          $a0, 0x48($sp)
/* 0217B8 80021C08 AFA5004C */  sw          $a1, 0x4c($sp)
/* 0217BC 80021C0C AFA60050 */  sw          $a2, 0x50($sp)
/* 0217C0 80021C10 AFA70054 */  sw          $a3, 0x54($sp)
/* 0217C4 80021C14 0C001A23 */  jal         func_8000688C
/* 0217C8 80021C18 8CA4018C */   lw         $a0, 0x18c($a1)
/* 0217CC 80021C1C 1440001A */  bnez        $v0, .L80021C88
/* 0217D0 80021C20 8FA40048 */   lw         $a0, 0x48($sp)
/* 0217D4 80021C24 24050000 */  addiu       $a1, $zero, 0x0
/* 0217D8 80021C28 0C005315 */  jal         func_80014C54
/* 0217DC 80021C2C 27A60034 */   addiu      $a2, $sp, 0x34
/* 0217E0 80021C30 8FA3004C */  lw          $v1, 0x4c($sp)
/* 0217E4 80021C34 3C0143B4 */  lui         $at, 0x43b4
/* 0217E8 80021C38 44812000 */  mtc1        $at, $f4
/* 0217EC 80021C3C 8C6501B4 */  lw          $a1, 0x1b4($v1)
/* 0217F0 80021C40 44800000 */  mtc1        $zero, $f0
/* 0217F4 80021C44 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0217F8 80021C48 8C6201B0 */  lw          $v0, 0x1b0($v1)
/* 0217FC 80021C4C 8FAF0050 */  lw          $t7, 0x50($sp)
/* 021800 80021C50 44060000 */  mfc1        $a2, $f0
/* 021804 80021C54 AFA20014 */  sw          $v0, 0x14($sp)
/* 021808 80021C58 AFA20018 */  sw          $v0, 0x18($sp)
/* 02180C 80021C5C 8DF80008 */  lw          $t8, 0x8($t7)
/* 021810 80021C60 44070000 */  mfc1        $a3, $f0
/* 021814 80021C64 AFA00020 */  sw          $zero, 0x20($sp)
/* 021818 80021C68 27A40034 */  addiu       $a0, $sp, 0x34
/* 02181C 80021C6C 0C0459D8 */  jal         func_80116760
/* 021820 80021C70 AFB8001C */   sw         $t8, 0x1c($sp)
/* 021824 80021C74 10400004 */  beqz        $v0, .L80021C88
/* 021828 80021C78 8FA40048 */   lw         $a0, 0x48($sp)
/* 02182C 80021C7C 8C450038 */  lw          $a1, 0x38($v0)
/* 021830 80021C80 0C047157 */  jal         func_8011C55C
/* 021834 80021C84 00003025 */   move       $a2, $zero
.L80021C88:
/* 021838 80021C88 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02183C 80021C8C 27BD0048 */  addiu       $sp, $sp, 0x48
/* 021840 80021C90 03E00008 */  jr          $ra
/* 021844 80021C94 00000000 */   nop

glabel func_80021C98 # 45
/* 021848 80021C98 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02184C 80021C9C AFB00018 */  sw          $s0, 0x18($sp)
/* 021850 80021CA0 00808025 */  move        $s0, $a0
/* 021854 80021CA4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 021858 80021CA8 8E070008 */  lw          $a3, 0x8($s0)
/* 02185C 80021CAC 8E060004 */  lw          $a2, 0x4($s0)
/* 021860 80021CB0 8E050000 */  lw          $a1, 0x0($s0)
/* 021864 80021CB4 0C00581A */  jal         func_80016068
/* 021868 80021CB8 24040001 */   addiu      $a0, $zero, 0x1
/* 02186C 80021CBC 3C01419C */  lui         $at, 0x419c
/* 021870 80021CC0 44813000 */  mtc1        $at, $f6
/* 021874 80021CC4 C6040004 */  lwc1        $f4, 0x4($s0)
/* 021878 80021CC8 24040001 */  addiu       $a0, $zero, 0x1
/* 02187C 80021CCC 8E050000 */  lw          $a1, 0x0($s0)
/* 021880 80021CD0 46062200 */  add.s       $f8, $f4, $f6
/* 021884 80021CD4 8E070008 */  lw          $a3, 0x8($s0)
/* 021888 80021CD8 44064000 */  mfc1        $a2, $f8
/* 02188C 80021CDC 0C00581A */  jal         func_80016068
/* 021890 80021CE0 00000000 */   nop
/* 021894 80021CE4 3C01421E */  lui         $at, 0x421e
/* 021898 80021CE8 44818000 */  mtc1        $at, $f16
/* 02189C 80021CEC C60A0004 */  lwc1        $f10, 0x4($s0)
/* 0218A0 80021CF0 24040001 */  addiu       $a0, $zero, 0x1
/* 0218A4 80021CF4 8E050000 */  lw          $a1, 0x0($s0)
/* 0218A8 80021CF8 46105480 */  add.s       $f18, $f10, $f16
/* 0218AC 80021CFC 8E070008 */  lw          $a3, 0x8($s0)
/* 0218B0 80021D00 44069000 */  mfc1        $a2, $f18
/* 0218B4 80021D04 0C00581A */  jal         func_80016068
/* 0218B8 80021D08 00000000 */   nop
/* 0218BC 80021D0C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0218C0 80021D10 8FB00018 */  lw          $s0, 0x18($sp)
/* 0218C4 80021D14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0218C8 80021D18 03E00008 */  jr          $ra
/* 0218CC 80021D1C 00000000 */   nop

glabel func_80021D20 # 46
/* 0218D0 80021D20 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0218D4 80021D24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0218D8 80021D28 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0218DC 80021D2C 0C047041 */  jal         func_8011C104
/* 0218E0 80021D30 AFAE001C */   sw         $t6, 0x1c($sp)
/* 0218E4 80021D34 10400003 */  beqz        $v0, .L80021D44
/* 0218E8 80021D38 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0218EC 80021D3C 10000003 */  b           .L80021D4C
/* 0218F0 80021D40 24420044 */   addiu      $v0, $v0, 0x44
.L80021D44:
/* 0218F4 80021D44 8FA2001C */  lw          $v0, 0x1c($sp)
/* 0218F8 80021D48 244201EC */  addiu       $v0, $v0, 0x1ec
.L80021D4C:
/* 0218FC 80021D4C 03E00008 */  jr          $ra
/* 021900 80021D50 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80021D54 # 47
/* 021904 80021D54 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 021908 80021D58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02190C 80021D5C AFA40020 */  sw          $a0, 0x20($sp)
/* 021910 80021D60 0C045F84 */  jal         func_80117E10
/* 021914 80021D64 24050001 */   addiu      $a1, $zero, 0x1
/* 021918 80021D68 AFA2001C */  sw          $v0, 0x1c($sp)
/* 02191C 80021D6C 0C001A23 */  jal         func_8000688C
/* 021920 80021D70 00402025 */   move       $a0, $v0
/* 021924 80021D74 10400006 */  beqz        $v0, .L80021D90
/* 021928 80021D78 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02192C 80021D7C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 021930 80021D80 8FAF001C */  lw          $t7, 0x1c($sp)
/* 021934 80021D84 24020001 */  addiu       $v0, $zero, 0x1
/* 021938 80021D88 15CF0003 */  bne         $t6, $t7, .L80021D98
/* 02193C 80021D8C 00000000 */   nop
.L80021D90:
/* 021940 80021D90 10000001 */  b           .L80021D98
/* 021944 80021D94 00001025 */   move       $v0, $zero
.L80021D98:
/* 021948 80021D98 03E00008 */  jr          $ra
/* 02194C 80021D9C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80021DA0 # 48
/* 021950 80021DA0 27BDFF38 */  addiu       $sp, $sp, -0xc8
/* 021954 80021DA4 AFBF0084 */  sw          $ra, 0x84($sp)
/* 021958 80021DA8 AFB60080 */  sw          $s6, 0x80($sp)
/* 02195C 80021DAC AFB5007C */  sw          $s5, 0x7c($sp)
/* 021960 80021DB0 AFB40078 */  sw          $s4, 0x78($sp)
/* 021964 80021DB4 AFB30074 */  sw          $s3, 0x74($sp)
/* 021968 80021DB8 AFB20070 */  sw          $s2, 0x70($sp)
/* 02196C 80021DBC AFB1006C */  sw          $s1, 0x6c($sp)
/* 021970 80021DC0 AFB00068 */  sw          $s0, 0x68($sp)
/* 021974 80021DC4 F7BE0060 */  sdc1        $f30, 0x60($sp)
/* 021978 80021DC8 F7BC0058 */  sdc1        $f28, 0x58($sp)
/* 02197C 80021DCC F7BA0050 */  sdc1        $f26, 0x50($sp)
/* 021980 80021DD0 F7B80048 */  sdc1        $f24, 0x48($sp)
/* 021984 80021DD4 F7B60040 */  sdc1        $f22, 0x40($sp)
/* 021988 80021DD8 F7B40038 */  sdc1        $f20, 0x38($sp)
/* 02198C 80021DDC AFA500CC */  sw          $a1, 0xcc($sp)
/* 021990 80021DE0 AFA700D4 */  sw          $a3, 0xd4($sp)
/* 021994 80021DE4 8CCE0008 */  lw          $t6, 0x8($a2)
/* 021998 80021DE8 8CA203EC */  lw          $v0, 0x3ec($a1)
/* 02199C 80021DEC 00A03825 */  move        $a3, $a1
/* 0219A0 80021DF0 00C08025 */  move        $s0, $a2
/* 0219A4 80021DF4 01C2082A */  slt         $at, $t6, $v0
/* 0219A8 80021DF8 10200003 */  beqz        $at, .L80021E08
/* 0219AC 80021DFC 0080A025 */   move       $s4, $a0
/* 0219B0 80021E00 10000002 */  b           .L80021E0C
/* 0219B4 80021E04 01C0A825 */   move       $s5, $t6
.L80021E08:
/* 0219B8 80021E08 0040A825 */  move        $s5, $v0
.L80021E0C:
/* 0219BC 80021E0C 1AA00092 */  blez        $s5, .L80022058
/* 0219C0 80021E10 00557823 */   subu       $t7, $v0, $s5
/* 0219C4 80021E14 ACEF03EC */  sw          $t7, 0x3ec($a3)
/* 0219C8 80021E18 AFA700CC */  sw          $a3, 0xcc($sp)
/* 0219CC 80021E1C 02802025 */  move        $a0, $s4
/* 0219D0 80021E20 24050074 */  addiu       $a1, $zero, 0x74
/* 0219D4 80021E24 0C005301 */  jal         func_80014C04
/* 0219D8 80021E28 27A600B4 */   addiu      $a2, $sp, 0xb4
/* 0219DC 80021E2C 02802025 */  move        $a0, $s4
/* 0219E0 80021E30 24050075 */  addiu       $a1, $zero, 0x75
/* 0219E4 80021E34 0C005301 */  jal         func_80014C04
/* 0219E8 80021E38 27A600A8 */   addiu      $a2, $sp, 0xa8
/* 0219EC 80021E3C 0C008748 */  jal         func_80021D20
/* 0219F0 80021E40 02802025 */   move       $a0, $s4
/* 0219F4 80021E44 1AA00076 */  blez        $s5, .L80022020
/* 0219F8 80021E48 0040B025 */   move       $s6, $v0
/* 0219FC 80021E4C 3C0142F0 */  lui         $at, 0x42f0
/* 021A00 80021E50 4481F000 */  mtc1        $at, $f30
/* 021A04 80021E54 3C014270 */  lui         $at, 0x4270
/* 021A08 80021E58 4481E000 */  mtc1        $at, $f28
/* 021A0C 80021E5C 3C014234 */  lui         $at, 0x4234
/* 021A10 80021E60 4481D000 */  mtc1        $at, $f26
/* 021A14 80021E64 3C013F00 */  lui         $at, 0x3f00
/* 021A18 80021E68 4481C000 */  mtc1        $at, $f24
/* 021A1C 80021E6C 3C01800B */  lui         $at, %hi(D_800A9A30)
/* 021A20 80021E70 D4369A30 */  ldc1        $f22, %lo(D_800A9A30)($at)
/* 021A24 80021E74 3C013DF0 */  lui         $at, 0x3df0
/* 021A28 80021E78 4481A800 */  mtc1        $at, $f21
/* 021A2C 80021E7C 4480A000 */  mtc1        $zero, $f20
/* 021A30 80021E80 26130008 */  addiu       $s3, $s0, 0x8
.L80021E84:
/* 021A34 80021E84 0C00E500 */  jal         func_80039400
/* 021A38 80021E88 2404000A */   addiu      $a0, $zero, 0xa
/* 021A3C 80021E8C 0C00E512 */  jal         func_80039448
/* 021A40 80021E90 00408825 */   move       $s1, $v0
/* 021A44 80021E94 00409025 */  move        $s2, $v0
/* 021A48 80021E98 0C00E500 */  jal         func_80039400
/* 021A4C 80021E9C 2404005A */   addiu      $a0, $zero, 0x5a
/* 021A50 80021EA0 00408025 */  move        $s0, $v0
/* 021A54 80021EA4 0C00E500 */  jal         func_80039400
/* 021A58 80021EA8 2404005A */   addiu      $a0, $zero, 0x5a
/* 021A5C 80021EAC 44922000 */  mtc1        $s2, $f4
/* 021A60 80021EB0 4406C000 */  mfc1        $a2, $f24
/* 021A64 80021EB4 2624000A */  addiu       $a0, $s1, 0xa
/* 021A68 80021EB8 8E650004 */  lw          $a1, 0x4($s3)
/* 021A6C 80021EBC 06410006 */  bgez        $s2, .L80021ED8
/* 021A70 80021EC0 468021A1 */   cvt.d.w    $f6, $f4
/* 021A74 80021EC4 3C0141F0 */  lui         $at, 0x41f0
/* 021A78 80021EC8 44814800 */  mtc1        $at, $f9
/* 021A7C 80021ECC 44804000 */  mtc1        $zero, $f8
/* 021A80 80021ED0 00000000 */  nop
/* 021A84 80021ED4 46283180 */  add.d       $f6, $f6, $f8
.L80021ED8:
/* 021A88 80021ED8 46343282 */  mul.d       $f10, $f6, $f20
/* 021A8C 80021EDC 8E780008 */  lw          $t8, 0x8($s3)
/* 021A90 80021EE0 C7A600BC */  lwc1        $f6, 0xbc($sp)
/* 021A94 80021EE4 C7A400B4 */  lwc1        $f4, 0xb4($sp)
/* 021A98 80021EE8 C7A800B8 */  lwc1        $f8, 0xb8($sp)
/* 021A9C 80021EEC AFB80010 */  sw          $t8, 0x10($sp)
/* 021AA0 80021EF0 E7A6001C */  swc1        $f6, 0x1c($sp)
/* 021AA4 80021EF4 E7A40014 */  swc1        $f4, 0x14($sp)
/* 021AA8 80021EF8 46365402 */  mul.d       $f16, $f10, $f22
/* 021AAC 80021EFC E7A80018 */  swc1        $f8, 0x18($sp)
/* 021AB0 80021F00 C68A0010 */  lwc1        $f10, 0x10($s4)
/* 021AB4 80021F04 44904000 */  mtc1        $s0, $f8
/* 021AB8 80021F08 3C0141F0 */  lui         $at, 0x41f0
/* 021ABC 80021F0C 468041A0 */  cvt.s.w     $f6, $f8
/* 021AC0 80021F10 44824000 */  mtc1        $v0, $f8
/* 021AC4 80021F14 462084A0 */  cvt.s.d     $f18, $f16
/* 021AC8 80021F18 461E5401 */  sub.s       $f16, $f10, $f30
/* 021ACC 80021F1C 44079000 */  mfc1        $a3, $f18
/* 021AD0 80021F20 44819000 */  mtc1        $at, $f18
/* 021AD4 80021F24 00000000 */  nop
/* 021AD8 80021F28 46128100 */  add.s       $f4, $f16, $f18
/* 021ADC 80021F2C 46062281 */  sub.s       $f10, $f4, $f6
/* 021AE0 80021F30 46804120 */  cvt.s.w     $f4, $f8
/* 021AE4 80021F34 E7AA0020 */  swc1        $f10, 0x20($sp)
/* 021AE8 80021F38 C6900014 */  lwc1        $f16, 0x14($s4)
/* 021AEC 80021F3C AFB60028 */  sw          $s6, 0x28($sp)
/* 021AF0 80021F40 461A8480 */  add.s       $f18, $f16, $f26
/* 021AF4 80021F44 46049181 */  sub.s       $f6, $f18, $f4
/* 021AF8 80021F48 0C005B19 */  jal         func_80016C64
/* 021AFC 80021F4C E7A60024 */   swc1       $f6, 0x24($sp)
/* 021B00 80021F50 0C00E500 */  jal         func_80039400
/* 021B04 80021F54 2404000A */   addiu      $a0, $zero, 0xa
/* 021B08 80021F58 0C00E512 */  jal         func_80039448
/* 021B0C 80021F5C 00408825 */   move       $s1, $v0
/* 021B10 80021F60 00409025 */  move        $s2, $v0
/* 021B14 80021F64 0C00E500 */  jal         func_80039400
/* 021B18 80021F68 2404005A */   addiu      $a0, $zero, 0x5a
/* 021B1C 80021F6C 00408025 */  move        $s0, $v0
/* 021B20 80021F70 0C00E500 */  jal         func_80039400
/* 021B24 80021F74 2404005A */   addiu      $a0, $zero, 0x5a
/* 021B28 80021F78 44925000 */  mtc1        $s2, $f10
/* 021B2C 80021F7C 4406C000 */  mfc1        $a2, $f24
/* 021B30 80021F80 2624000A */  addiu       $a0, $s1, 0xa
/* 021B34 80021F84 8E650004 */  lw          $a1, 0x4($s3)
/* 021B38 80021F88 06410006 */  bgez        $s2, .L80021FA4
/* 021B3C 80021F8C 46805421 */   cvt.d.w    $f16, $f10
/* 021B40 80021F90 3C0141F0 */  lui         $at, 0x41f0
/* 021B44 80021F94 44814800 */  mtc1        $at, $f9
/* 021B48 80021F98 44804000 */  mtc1        $zero, $f8
/* 021B4C 80021F9C 00000000 */  nop
/* 021B50 80021FA0 46288400 */  add.d       $f16, $f16, $f8
.L80021FA4:
/* 021B54 80021FA4 46348482 */  mul.d       $f18, $f16, $f20
/* 021B58 80021FA8 8E790008 */  lw          $t9, 0x8($s3)
/* 021B5C 80021FAC C7B000B0 */  lwc1        $f16, 0xb0($sp)
/* 021B60 80021FB0 C7AA00A8 */  lwc1        $f10, 0xa8($sp)
/* 021B64 80021FB4 C7A800AC */  lwc1        $f8, 0xac($sp)
/* 021B68 80021FB8 AFB90010 */  sw          $t9, 0x10($sp)
/* 021B6C 80021FBC E7B0001C */  swc1        $f16, 0x1c($sp)
/* 021B70 80021FC0 E7AA0014 */  swc1        $f10, 0x14($sp)
/* 021B74 80021FC4 46369102 */  mul.d       $f4, $f18, $f22
/* 021B78 80021FC8 E7A80018 */  swc1        $f8, 0x18($sp)
/* 021B7C 80021FCC C6920010 */  lwc1        $f18, 0x10($s4)
/* 021B80 80021FD0 44905000 */  mtc1        $s0, $f10
/* 021B84 80021FD4 00000000 */  nop
/* 021B88 80021FD8 46805220 */  cvt.s.w     $f8, $f10
/* 021B8C 80021FDC 44825000 */  mtc1        $v0, $f10
/* 021B90 80021FE0 462021A0 */  cvt.s.d     $f6, $f4
/* 021B94 80021FE4 461C9101 */  sub.s       $f4, $f18, $f28
/* 021B98 80021FE8 44073000 */  mfc1        $a3, $f6
/* 021B9C 80021FEC 461C2180 */  add.s       $f6, $f4, $f28
/* 021BA0 80021FF0 46083401 */  sub.s       $f16, $f6, $f8
/* 021BA4 80021FF4 468051A0 */  cvt.s.w     $f6, $f10
/* 021BA8 80021FF8 E7B00020 */  swc1        $f16, 0x20($sp)
/* 021BAC 80021FFC C6920014 */  lwc1        $f18, 0x14($s4)
/* 021BB0 80022000 AFB60028 */  sw          $s6, 0x28($sp)
/* 021BB4 80022004 461A9100 */  add.s       $f4, $f18, $f26
/* 021BB8 80022008 46062201 */  sub.s       $f8, $f4, $f6
/* 021BBC 8002200C 0C005B19 */  jal         func_80016C64
/* 021BC0 80022010 E7A80024 */   swc1       $f8, 0x24($sp)
/* 021BC4 80022014 26B5FFFF */  addiu       $s5, $s5, -0x1
/* 021BC8 80022018 1EA0FF9A */  bgtz        $s5, .L80021E84
/* 021BCC 8002201C 00000000 */   nop
.L80022020:
/* 021BD0 80022020 0C047041 */  jal         func_8011C104
/* 021BD4 80022024 02802025 */   move       $a0, $s4
/* 021BD8 80022028 5040000C */  beql        $v0, $zero, .L8002205C
/* 021BDC 8002202C 8FBF0084 */   lw         $ra, 0x84($sp)
/* 021BE0 80022030 94480034 */  lhu         $t0, 0x34($v0)
/* 021BE4 80022034 24010086 */  addiu       $at, $zero, 0x86
/* 021BE8 80022038 55010008 */  bnel        $t0, $at, .L8002205C
/* 021BEC 8002203C 8FBF0084 */   lw         $ra, 0x84($sp)
/* 021BF0 80022040 0C008755 */  jal         func_80021D54
/* 021BF4 80022044 8C440038 */   lw         $a0, 0x38($v0)
/* 021BF8 80022048 10400003 */  beqz        $v0, .L80022058
/* 021BFC 8002204C 8FAA00CC */   lw         $t2, 0xcc($sp)
/* 021C00 80022050 24090001 */  addiu       $t1, $zero, 0x1
/* 021C04 80022054 AD4903F0 */  sw          $t1, 0x3f0($t2)
.L80022058:
/* 021C08 80022058 8FBF0084 */  lw          $ra, 0x84($sp)
.L8002205C:
/* 021C0C 8002205C D7B40038 */  ldc1        $f20, 0x38($sp)
/* 021C10 80022060 D7B60040 */  ldc1        $f22, 0x40($sp)
/* 021C14 80022064 D7B80048 */  ldc1        $f24, 0x48($sp)
/* 021C18 80022068 D7BA0050 */  ldc1        $f26, 0x50($sp)
/* 021C1C 8002206C D7BC0058 */  ldc1        $f28, 0x58($sp)
/* 021C20 80022070 D7BE0060 */  ldc1        $f30, 0x60($sp)
/* 021C24 80022074 8FB00068 */  lw          $s0, 0x68($sp)
/* 021C28 80022078 8FB1006C */  lw          $s1, 0x6c($sp)
/* 021C2C 8002207C 8FB20070 */  lw          $s2, 0x70($sp)
/* 021C30 80022080 8FB30074 */  lw          $s3, 0x74($sp)
/* 021C34 80022084 8FB40078 */  lw          $s4, 0x78($sp)
/* 021C38 80022088 8FB5007C */  lw          $s5, 0x7c($sp)
/* 021C3C 8002208C 8FB60080 */  lw          $s6, 0x80($sp)
/* 021C40 80022090 03E00008 */  jr          $ra
/* 021C44 80022094 27BD00C8 */   addiu      $sp, $sp, 0xc8

glabel func_80022098 # 49
/* 021C48 80022098 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 021C4C 8002209C AFBF001C */  sw          $ra, 0x1c($sp)
/* 021C50 800220A0 AFA40028 */  sw          $a0, 0x28($sp)
/* 021C54 800220A4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 021C58 800220A8 AFA60030 */  sw          $a2, 0x30($sp)
/* 021C5C 800220AC AFA70034 */  sw          $a3, 0x34($sp)
/* 021C60 800220B0 8CC20008 */  lw          $v0, 0x8($a2)
/* 021C64 800220B4 24010001 */  addiu       $at, $zero, 0x1
/* 021C68 800220B8 8FA40028 */  lw          $a0, 0x28($sp)
/* 021C6C 800220BC 10410005 */  beq         $v0, $at, .L800220D4
/* 021C70 800220C0 24010002 */   addiu      $at, $zero, 0x2
/* 021C74 800220C4 10410007 */  beq         $v0, $at, .L800220E4
/* 021C78 800220C8 00000000 */   nop
/* 021C7C 800220CC 1000000B */  b           .L800220FC
/* 021C80 800220D0 00000000 */   nop
.L800220D4:
/* 021C84 800220D4 0C0052D5 */  jal         func_80014B54
/* 021C88 800220D8 24050079 */   addiu      $a1, $zero, 0x79
/* 021C8C 800220DC 1000000A */  b           .L80022108
/* 021C90 800220E0 00404025 */   move       $t0, $v0
.L800220E4:
/* 021C94 800220E4 0C047041 */  jal         func_8011C104
/* 021C98 800220E8 8FA40028 */   lw         $a0, 0x28($sp)
/* 021C9C 800220EC 14400006 */  bnez        $v0, .L80022108
/* 021CA0 800220F0 00404025 */   move       $t0, $v0
/* 021CA4 800220F4 10000027 */  b           .L80022194
/* 021CA8 800220F8 8FBF001C */   lw         $ra, 0x1c($sp)
.L800220FC:
/* 021CAC 800220FC 0C0052F5 */  jal         func_80014BD4
/* 021CB0 80022100 8FA40028 */   lw         $a0, 0x28($sp)
/* 021CB4 80022104 00404025 */  move        $t0, $v0
.L80022108:
/* 021CB8 80022108 14400002 */  bnez        $v0, .L80022114
/* 021CBC 8002210C 00000000 */   nop
/* 021CC0 80022110 8FA80028 */  lw          $t0, 0x28($sp)
.L80022114:
/* 021CC4 80022114 0C00E512 */  jal         func_80039448
/* 021CC8 80022118 AFA80020 */   sw         $t0, 0x20($sp)
/* 021CCC 8002211C 8FA30030 */  lw          $v1, 0x30($sp)
/* 021CD0 80022120 44822000 */  mtc1        $v0, $f4
/* 021CD4 80022124 8FA80020 */  lw          $t0, 0x20($sp)
/* 021CD8 80022128 3C0640A0 */  lui         $a2, 0x40a0
/* 021CDC 8002212C 24630008 */  addiu       $v1, $v1, 0x8
/* 021CE0 80022130 8C650004 */  lw          $a1, 0x4($v1)
/* 021CE4 80022134 8C640008 */  lw          $a0, 0x8($v1)
/* 021CE8 80022138 04410006 */  bgez        $v0, .L80022154
/* 021CEC 8002213C 468021A1 */   cvt.d.w    $f6, $f4
/* 021CF0 80022140 3C0141F0 */  lui         $at, 0x41f0
/* 021CF4 80022144 44814800 */  mtc1        $at, $f9
/* 021CF8 80022148 44804000 */  mtc1        $zero, $f8
/* 021CFC 8002214C 00000000 */  nop
/* 021D00 80022150 46283180 */  add.d       $f6, $f6, $f8
.L80022154:
/* 021D04 80022154 3C013DF0 */  lui         $at, 0x3df0
/* 021D08 80022158 44815800 */  mtc1        $at, $f11
/* 021D0C 8002215C 44805000 */  mtc1        $zero, $f10
/* 021D10 80022160 3C01800B */  lui         $at, %hi(D_800A9A38)
/* 021D14 80022164 D4329A38 */  ldc1        $f18, %lo(D_800A9A38)($at)
/* 021D18 80022168 462A3402 */  mul.d       $f16, $f6, $f10
/* 021D1C 8002216C 3C01800B */  lui         $at, %hi(D_800A9A40)
/* 021D20 80022170 D4289A40 */  ldc1        $f8, %lo(D_800A9A40)($at)
/* 021D24 80022174 AFA80010 */  sw          $t0, 0x10($sp)
/* 021D28 80022178 46328102 */  mul.d       $f4, $f16, $f18
/* 021D2C 8002217C 46282180 */  add.d       $f6, $f4, $f8
/* 021D30 80022180 462032A0 */  cvt.s.d     $f10, $f6
/* 021D34 80022184 44075000 */  mfc1        $a3, $f10
/* 021D38 80022188 0C005FCC */  jal         func_80017F30
/* 021D3C 8002218C 00000000 */   nop
/* 021D40 80022190 8FBF001C */  lw          $ra, 0x1c($sp)
.L80022194:
/* 021D44 80022194 27BD0028 */  addiu       $sp, $sp, 0x28
/* 021D48 80022198 03E00008 */  jr          $ra
/* 021D4C 8002219C 00000000 */   nop

glabel func_800221A0 # 50
/* 021D50 800221A0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 021D54 800221A4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 021D58 800221A8 AFA5003C */  sw          $a1, 0x3c($sp)
/* 021D5C 800221AC AFA60040 */  sw          $a2, 0x40($sp)
/* 021D60 800221B0 AFA70044 */  sw          $a3, 0x44($sp)
/* 021D64 800221B4 8CCF0008 */  lw          $t7, 0x8($a2)
/* 021D68 800221B8 24010002 */  addiu       $at, $zero, 0x2
/* 021D6C 800221BC 00801825 */  move        $v1, $a0
/* 021D70 800221C0 15E10007 */  bne         $t7, $at, .L800221E0
/* 021D74 800221C4 00000000 */   nop
/* 021D78 800221C8 0C047041 */  jal         func_8011C104
/* 021D7C 800221CC 00000000 */   nop
/* 021D80 800221D0 14400003 */  bnez        $v0, .L800221E0
/* 021D84 800221D4 00401825 */   move       $v1, $v0
/* 021D88 800221D8 10000019 */  b           .L80022240
/* 021D8C 800221DC 8FBF001C */   lw         $ra, 0x1c($sp)
.L800221E0:
/* 021D90 800221E0 C4640044 */  lwc1        $f4, 0x44($v1)
/* 021D94 800221E4 00003825 */  move        $a3, $zero
/* 021D98 800221E8 E7A40024 */  swc1        $f4, 0x24($sp)
/* 021D9C 800221EC 8C66004C */  lw          $a2, 0x4c($v1)
/* 021DA0 800221F0 C46E0048 */  lwc1        $f14, 0x48($v1)
/* 021DA4 800221F4 C46C0044 */  lwc1        $f12, 0x44($v1)
/* 021DA8 800221F8 0C043D2C */  jal         func_8010F4B0
/* 021DAC 800221FC AFA30030 */   sw         $v1, 0x30($sp)
/* 021DB0 80022200 8FA30030 */  lw          $v1, 0x30($sp)
/* 021DB4 80022204 E7A00028 */  swc1        $f0, 0x28($sp)
/* 021DB8 80022208 8FB80040 */  lw          $t8, 0x40($sp)
/* 021DBC 8002220C C466004C */  lwc1        $f6, 0x4c($v1)
/* 021DC0 80022210 3C01C0C0 */  lui         $at, 0xc0c0
/* 021DC4 80022214 44814000 */  mtc1        $at, $f8
/* 021DC8 80022218 E7A6002C */  swc1        $f6, 0x2c($sp)
/* 021DCC 8002221C 8C790038 */  lw          $t9, 0x38($v1)
/* 021DD0 80022220 8F06000C */  lw          $a2, 0xc($t8)
/* 021DD4 80022224 24040006 */  addiu       $a0, $zero, 0x6
/* 021DD8 80022228 00003825 */  move        $a3, $zero
/* 021DDC 8002222C 24650044 */  addiu       $a1, $v1, 0x44
/* 021DE0 80022230 E7A80014 */  swc1        $f8, 0x14($sp)
/* 021DE4 80022234 0C005E18 */  jal         func_80017860
/* 021DE8 80022238 AFB90010 */   sw         $t9, 0x10($sp)
/* 021DEC 8002223C 8FBF001C */  lw          $ra, 0x1c($sp)
.L80022240:
/* 021DF0 80022240 27BD0038 */  addiu       $sp, $sp, 0x38
/* 021DF4 80022244 03E00008 */  jr          $ra
/* 021DF8 80022248 00000000 */   nop

glabel func_8002224C # 51
/* 021DFC 8002224C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021E00 80022250 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021E04 80022254 AFA5001C */  sw          $a1, 0x1c($sp)
/* 021E08 80022258 AFA40018 */  sw          $a0, 0x18($sp)
/* 021E0C 8002225C AFA60020 */  sw          $a2, 0x20($sp)
/* 021E10 80022260 AFA70024 */  sw          $a3, 0x24($sp)
/* 021E14 80022264 0C0052D5 */  jal         func_80014B54
/* 021E18 80022268 24050079 */   addiu      $a1, $zero, 0x79
/* 021E1C 8002226C 14400002 */  bnez        $v0, .L80022278
/* 021E20 80022270 00401825 */   move       $v1, $v0
/* 021E24 80022274 8FA30018 */  lw          $v1, 0x18($sp)
.L80022278:
/* 021E28 80022278 8FA20020 */  lw          $v0, 0x20($sp)
/* 021E2C 8002227C 8C640038 */  lw          $a0, 0x38($v1)
/* 021E30 80022280 24420008 */  addiu       $v0, $v0, 0x8
/* 021E34 80022284 8C470000 */  lw          $a3, 0x0($v0)
/* 021E38 80022288 8C460008 */  lw          $a2, 0x8($v0)
/* 021E3C 8002228C 0C006293 */  jal         func_80018A4C
/* 021E40 80022290 8C450004 */   lw         $a1, 0x4($v0)
/* 021E44 80022294 8FBF0014 */  lw          $ra, 0x14($sp)
/* 021E48 80022298 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021E4C 8002229C 03E00008 */  jr          $ra
/* 021E50 800222A0 00000000 */   nop

glabel func_800222A4 # 52
/* 021E54 800222A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021E58 800222A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021E5C 800222AC AFA40018 */  sw          $a0, 0x18($sp)
/* 021E60 800222B0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 021E64 800222B4 AFA70024 */  sw          $a3, 0x24($sp)
/* 021E68 800222B8 8CCE0008 */  lw          $t6, 0x8($a2)
/* 021E6C 800222BC 24010002 */  addiu       $at, $zero, 0x2
/* 021E70 800222C0 8FAF0018 */  lw          $t7, 0x18($sp)
/* 021E74 800222C4 55C1000B */  bnel        $t6, $at, .L800222F4
/* 021E78 800222C8 3C014000 */   lui        $at, 0x4000
/* 021E7C 800222CC 0C008748 */  jal         func_80021D20
/* 021E80 800222D0 00000000 */   nop
/* 021E84 800222D4 00002025 */  move        $a0, $zero
/* 021E88 800222D8 8C450000 */  lw          $a1, 0x0($v0)
/* 021E8C 800222DC 8C460004 */  lw          $a2, 0x4($v0)
/* 021E90 800222E0 0C00581A */  jal         func_80016068
/* 021E94 800222E4 8C470008 */   lw         $a3, 0x8($v0)
/* 021E98 800222E8 10000013 */  b           .L80022338
/* 021E9C 800222EC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 021EA0 800222F0 3C014000 */  lui         $at, 0x4000
.L800222F4:
/* 021EA4 800222F4 44813000 */  mtc1        $at, $f6
/* 021EA8 800222F8 C5E40048 */  lwc1        $f4, 0x48($t7)
/* 021EAC 800222FC 00002025 */  move        $a0, $zero
/* 021EB0 80022300 8DE50044 */  lw          $a1, 0x44($t7)
/* 021EB4 80022304 46062200 */  add.s       $f8, $f4, $f6
/* 021EB8 80022308 8DE7004C */  lw          $a3, 0x4c($t7)
/* 021EBC 8002230C 44064000 */  mfc1        $a2, $f8
/* 021EC0 80022310 0C00581A */  jal         func_80016068
/* 021EC4 80022314 00000000 */   nop
/* 021EC8 80022318 8FB8001C */  lw          $t8, 0x1c($sp)
/* 021ECC 8002231C 0C008755 */  jal         func_80021D54
/* 021ED0 80022320 8F04018C */   lw         $a0, 0x18c($t8)
/* 021ED4 80022324 10400003 */  beqz        $v0, .L80022334
/* 021ED8 80022328 8FA8001C */   lw         $t0, 0x1c($sp)
/* 021EDC 8002232C 24190001 */  addiu       $t9, $zero, 0x1
/* 021EE0 80022330 AD1903F0 */  sw          $t9, 0x3f0($t0)
.L80022334:
/* 021EE4 80022334 8FBF0014 */  lw          $ra, 0x14($sp)
.L80022338:
/* 021EE8 80022338 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021EEC 8002233C 03E00008 */  jr          $ra
/* 021EF0 80022340 00000000 */   nop

glabel func_80022344 # 53
/* 021EF4 80022344 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021EF8 80022348 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021EFC 8002234C AFA5001C */  sw          $a1, 0x1c($sp)
/* 021F00 80022350 AFA60020 */  sw          $a2, 0x20($sp)
/* 021F04 80022354 0C0052F5 */  jal         func_80014BD4
/* 021F08 80022358 AFA70024 */   sw         $a3, 0x24($sp)
/* 021F0C 8002235C 8FA30020 */  lw          $v1, 0x20($sp)
/* 021F10 80022360 8C440038 */  lw          $a0, 0x38($v0)
/* 021F14 80022364 24630008 */  addiu       $v1, $v1, 0x8
/* 021F18 80022368 8C660000 */  lw          $a2, 0x0($v1)
/* 021F1C 8002236C 0C0064C1 */  jal         func_80019304
/* 021F20 80022370 8C650004 */   lw         $a1, 0x4($v1)
/* 021F24 80022374 8FBF0014 */  lw          $ra, 0x14($sp)
/* 021F28 80022378 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021F2C 8002237C 03E00008 */  jr          $ra
/* 021F30 80022380 00000000 */   nop

glabel func_80022384 # 54
/* 021F34 80022384 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021F38 80022388 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021F3C 8002238C AFA40018 */  sw          $a0, 0x18($sp)
/* 021F40 80022390 AFA5001C */  sw          $a1, 0x1c($sp)
/* 021F44 80022394 AFA70024 */  sw          $a3, 0x24($sp)
/* 021F48 80022398 8CCE0008 */  lw          $t6, 0x8($a2)
/* 021F4C 8002239C 24010002 */  addiu       $at, $zero, 0x2
/* 021F50 800223A0 00802825 */  move        $a1, $a0
/* 021F54 800223A4 15C10007 */  bne         $t6, $at, .L800223C4
/* 021F58 800223A8 00000000 */   nop
/* 021F5C 800223AC 0C008748 */  jal         func_80021D20
/* 021F60 800223B0 00000000 */   nop
/* 021F64 800223B4 0C008726 */  jal         func_80021C98
/* 021F68 800223B8 00402025 */   move       $a0, $v0
/* 021F6C 800223BC 10000004 */  b           .L800223D0
/* 021F70 800223C0 8FBF0014 */   lw         $ra, 0x14($sp)
.L800223C4:
/* 021F74 800223C4 0C008726 */  jal         func_80021C98
/* 021F78 800223C8 24A40044 */   addiu      $a0, $a1, 0x44
/* 021F7C 800223CC 8FBF0014 */  lw          $ra, 0x14($sp)
.L800223D0:
/* 021F80 800223D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021F84 800223D4 03E00008 */  jr          $ra
/* 021F88 800223D8 00000000 */   nop

glabel func_800223DC # 55
/* 021F8C 800223DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 021F90 800223E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 021F94 800223E4 AFA40018 */  sw          $a0, 0x18($sp)
/* 021F98 800223E8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 021F9C 800223EC AFA60020 */  sw          $a2, 0x20($sp)
/* 021FA0 800223F0 AFA70024 */  sw          $a3, 0x24($sp)
/* 021FA4 800223F4 8CC5000C */  lw          $a1, 0xc($a2)
/* 021FA8 800223F8 8CC60008 */  lw          $a2, 0x8($a2)
/* 021FAC 800223FC 0C006690 */  jal         func_80019A40
/* 021FB0 80022400 8C840038 */   lw         $a0, 0x38($a0)
/* 021FB4 80022404 8FBF0014 */  lw          $ra, 0x14($sp)
/* 021FB8 80022408 27BD0018 */  addiu       $sp, $sp, 0x18
/* 021FBC 8002240C 03E00008 */  jr          $ra
/* 021FC0 80022410 00000000 */   nop

glabel func_80022414 # 56
/* 021FC4 80022414 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 021FC8 80022418 AFBF0024 */  sw          $ra, 0x24($sp)
/* 021FCC 8002241C AFB00020 */  sw          $s0, 0x20($sp)
/* 021FD0 80022420 AFA50044 */  sw          $a1, 0x44($sp)
/* 021FD4 80022424 AFA60048 */  sw          $a2, 0x48($sp)
/* 021FD8 80022428 AFA7004C */  sw          $a3, 0x4c($sp)
/* 021FDC 8002242C 8CC20008 */  lw          $v0, 0x8($a2)
/* 021FE0 80022430 00808025 */  move        $s0, $a0
/* 021FE4 80022434 24010001 */  addiu       $at, $zero, 0x1
/* 021FE8 80022438 10400008 */  beqz        $v0, .L8002245C
/* 021FEC 8002243C 02002025 */   move       $a0, $s0
/* 021FF0 80022440 10410015 */  beq         $v0, $at, .L80022498
/* 021FF4 80022444 02002025 */   move       $a0, $s0
/* 021FF8 80022448 24010002 */  addiu       $at, $zero, 0x2
/* 021FFC 8002244C 10410030 */  beq         $v0, $at, .L80022510
/* 022000 80022450 00000000 */   nop
/* 022004 80022454 1000004A */  b           .L80022580
/* 022008 80022458 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002245C:
/* 02200C 8002245C 0C0052E8 */  jal         func_80014BA0
/* 022010 80022460 24050076 */   addiu      $a1, $zero, 0x76
/* 022014 80022464 8FA90048 */  lw          $t1, 0x48($sp)
/* 022018 80022468 8E0F0038 */  lw          $t7, 0x38($s0)
/* 02201C 8002246C 26050044 */  addiu       $a1, $s0, 0x44
/* 022020 80022470 25230008 */  addiu       $v1, $t1, 0x8
/* 022024 80022474 8C640008 */  lw          $a0, 0x8($v1)
/* 022028 80022478 8C660004 */  lw          $a2, 0x4($v1)
/* 02202C 8002247C AFAF0010 */  sw          $t7, 0x10($sp)
/* 022030 80022480 C6040024 */  lwc1        $f4, 0x24($s0)
/* 022034 80022484 00403825 */  move        $a3, $v0
/* 022038 80022488 0C005E18 */  jal         func_80017860
/* 02203C 8002248C E7A40014 */   swc1       $f4, 0x14($sp)
/* 022040 80022490 1000003B */  b           .L80022580
/* 022044 80022494 8FBF0024 */   lw         $ra, 0x24($sp)
.L80022498:
/* 022048 80022498 0C0052E8 */  jal         func_80014BA0
/* 02204C 8002249C 24050074 */   addiu      $a1, $zero, 0x74
/* 022050 800224A0 8FA90048 */  lw          $t1, 0x48($sp)
/* 022054 800224A4 8E180038 */  lw          $t8, 0x38($s0)
/* 022058 800224A8 26050044 */  addiu       $a1, $s0, 0x44
/* 02205C 800224AC 25230008 */  addiu       $v1, $t1, 0x8
/* 022060 800224B0 8C640008 */  lw          $a0, 0x8($v1)
/* 022064 800224B4 8C660004 */  lw          $a2, 0x4($v1)
/* 022068 800224B8 AFB80010 */  sw          $t8, 0x10($sp)
/* 02206C 800224BC C6060024 */  lwc1        $f6, 0x24($s0)
/* 022070 800224C0 AFA50028 */  sw          $a1, 0x28($sp)
/* 022074 800224C4 AFA3002C */  sw          $v1, 0x2c($sp)
/* 022078 800224C8 00403825 */  move        $a3, $v0
/* 02207C 800224CC 0C005E18 */  jal         func_80017860
/* 022080 800224D0 E7A60014 */   swc1       $f6, 0x14($sp)
/* 022084 800224D4 02002025 */  move        $a0, $s0
/* 022088 800224D8 0C0052E8 */  jal         func_80014BA0
/* 02208C 800224DC 24050075 */   addiu      $a1, $zero, 0x75
/* 022090 800224E0 8FA3002C */  lw          $v1, 0x2c($sp)
/* 022094 800224E4 8E190038 */  lw          $t9, 0x38($s0)
/* 022098 800224E8 8FA50028 */  lw          $a1, 0x28($sp)
/* 02209C 800224EC 8C640008 */  lw          $a0, 0x8($v1)
/* 0220A0 800224F0 8C660004 */  lw          $a2, 0x4($v1)
/* 0220A4 800224F4 AFB90010 */  sw          $t9, 0x10($sp)
/* 0220A8 800224F8 C6080024 */  lwc1        $f8, 0x24($s0)
/* 0220AC 800224FC 00403825 */  move        $a3, $v0
/* 0220B0 80022500 0C005E18 */  jal         func_80017860
/* 0220B4 80022504 E7A80014 */   swc1       $f8, 0x14($sp)
/* 0220B8 80022508 1000001D */  b           .L80022580
/* 0220BC 8002250C 8FBF0024 */   lw         $ra, 0x24($sp)
.L80022510:
/* 0220C0 80022510 0C047041 */  jal         func_8011C104
/* 0220C4 80022514 02002025 */   move       $a0, $s0
/* 0220C8 80022518 1040000D */  beqz        $v0, .L80022550
/* 0220CC 8002251C 8FA90048 */   lw         $t1, 0x48($sp)
/* 0220D0 80022520 8E0A0038 */  lw          $t2, 0x38($s0)
/* 0220D4 80022524 25230008 */  addiu       $v1, $t1, 0x8
/* 0220D8 80022528 8C640008 */  lw          $a0, 0x8($v1)
/* 0220DC 8002252C 8C660004 */  lw          $a2, 0x4($v1)
/* 0220E0 80022530 8C470038 */  lw          $a3, 0x38($v0)
/* 0220E4 80022534 AFAA0010 */  sw          $t2, 0x10($sp)
/* 0220E8 80022538 C60A0024 */  lwc1        $f10, 0x24($s0)
/* 0220EC 8002253C 24450044 */  addiu       $a1, $v0, 0x44
/* 0220F0 80022540 0C005E18 */  jal         func_80017860
/* 0220F4 80022544 E7AA0014 */   swc1       $f10, 0x14($sp)
/* 0220F8 80022548 1000000D */  b           .L80022580
/* 0220FC 8002254C 8FBF0024 */   lw         $ra, 0x24($sp)
.L80022550:
/* 022100 80022550 8E0B0038 */  lw          $t3, 0x38($s0)
/* 022104 80022554 25230008 */  addiu       $v1, $t1, 0x8
/* 022108 80022558 8C640008 */  lw          $a0, 0x8($v1)
/* 02210C 8002255C 8C660004 */  lw          $a2, 0x4($v1)
/* 022110 80022560 AFAB0010 */  sw          $t3, 0x10($sp)
/* 022114 80022564 C6100024 */  lwc1        $f16, 0x24($s0)
/* 022118 80022568 8FA50044 */  lw          $a1, 0x44($sp)
/* 02211C 8002256C 00003825 */  move        $a3, $zero
/* 022120 80022570 E7B00014 */  swc1        $f16, 0x14($sp)
/* 022124 80022574 0C005E18 */  jal         func_80017860
/* 022128 80022578 24A501EC */   addiu      $a1, $a1, 0x1ec
/* 02212C 8002257C 8FBF0024 */  lw          $ra, 0x24($sp)
.L80022580:
/* 022130 80022580 8FB00020 */  lw          $s0, 0x20($sp)
/* 022134 80022584 27BD0040 */  addiu       $sp, $sp, 0x40
/* 022138 80022588 03E00008 */  jr          $ra
/* 02213C 8002258C 00000000 */   nop

glabel func_80022590 # 57
/* 022140 80022590 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 022144 80022594 AFBF0014 */  sw          $ra, 0x14($sp)
/* 022148 80022598 AFA40018 */  sw          $a0, 0x18($sp)
/* 02214C 8002259C AFA5001C */  sw          $a1, 0x1c($sp)
/* 022150 800225A0 AFA60020 */  sw          $a2, 0x20($sp)
/* 022154 800225A4 AFA70024 */  sw          $a3, 0x24($sp)
/* 022158 800225A8 8CC20008 */  lw          $v0, 0x8($a2)
/* 02215C 800225AC 24010002 */  addiu       $at, $zero, 0x2
/* 022160 800225B0 8FAF0020 */  lw          $t7, 0x20($sp)
/* 022164 800225B4 50400006 */  beql        $v0, $zero, .L800225D0
/* 022168 800225B8 C5E4000C */   lwc1       $f4, 0xc($t7)
/* 02216C 800225BC 1041000E */  beq         $v0, $at, .L800225F8
/* 022170 800225C0 00000000 */   nop
/* 022174 800225C4 10000019 */  b           .L8002262C
/* 022178 800225C8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02217C 800225CC C5E4000C */  lwc1        $f4, 0xc($t7)
.L800225D0:
/* 022180 800225D0 8FB90018 */  lw          $t9, 0x18($sp)
/* 022184 800225D4 4600218D */  trunc.w.s   $f6, $f4
/* 022188 800225D8 8F250044 */  lw          $a1, 0x44($t9)
/* 02218C 800225DC 8F260048 */  lw          $a2, 0x48($t9)
/* 022190 800225E0 8F27004C */  lw          $a3, 0x4c($t9)
/* 022194 800225E4 44043000 */  mfc1        $a0, $f6
/* 022198 800225E8 0C00581A */  jal         func_80016068
/* 02219C 800225EC 00000000 */   nop
/* 0221A0 800225F0 1000000E */  b           .L8002262C
/* 0221A4 800225F4 8FBF0014 */   lw         $ra, 0x14($sp)
.L800225F8:
/* 0221A8 800225F8 0C047041 */  jal         func_8011C104
/* 0221AC 800225FC 8FA40018 */   lw         $a0, 0x18($sp)
/* 0221B0 80022600 10400009 */  beqz        $v0, .L80022628
/* 0221B4 80022604 8FA80020 */   lw         $t0, 0x20($sp)
/* 0221B8 80022608 C508000C */  lwc1        $f8, 0xc($t0)
/* 0221BC 8002260C 8C450044 */  lw          $a1, 0x44($v0)
/* 0221C0 80022610 8C460048 */  lw          $a2, 0x48($v0)
/* 0221C4 80022614 4600428D */  trunc.w.s   $f10, $f8
/* 0221C8 80022618 8C47004C */  lw          $a3, 0x4c($v0)
/* 0221CC 8002261C 44045000 */  mfc1        $a0, $f10
/* 0221D0 80022620 0C00581A */  jal         func_80016068
/* 0221D4 80022624 00000000 */   nop
.L80022628:
/* 0221D8 80022628 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002262C:
/* 0221DC 8002262C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0221E0 80022630 03E00008 */  jr          $ra
/* 0221E4 80022634 00000000 */   nop

glabel func_80022638 # 58
/* 0221E8 80022638 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0221EC 8002263C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0221F0 80022640 AFA5001C */  sw          $a1, 0x1c($sp)
/* 0221F4 80022644 AFA60020 */  sw          $a2, 0x20($sp)
/* 0221F8 80022648 AFA70024 */  sw          $a3, 0x24($sp)
/* 0221FC 8002264C C4C4000C */  lwc1        $f4, 0xc($a2)
/* 022200 80022650 8CC50008 */  lw          $a1, 0x8($a2)
/* 022204 80022654 4600218D */  trunc.w.s   $f6, $f4
/* 022208 80022658 44063000 */  mfc1        $a2, $f6
/* 02220C 8002265C 0C00463C */  jal         func_800118F0
/* 022210 80022660 00000000 */   nop
/* 022214 80022664 8FBF0014 */  lw          $ra, 0x14($sp)
/* 022218 80022668 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02221C 8002266C 03E00008 */  jr          $ra
/* 022220 80022670 00000000 */   nop

glabel func_80022674 # 59
/* 022224 80022674 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 022228 80022678 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02222C 8002267C AFA5003C */  sw          $a1, 0x3c($sp)
/* 022230 80022680 AFA60040 */  sw          $a2, 0x40($sp)
/* 022234 80022684 0C008748 */  jal         func_80021D20
/* 022238 80022688 AFA70044 */   sw         $a3, 0x44($sp)
/* 02223C 8002268C 3C01800F */  lui         $at, %hi(D_800F3E20)
/* 022240 80022690 C4263E20 */  lwc1        $f6, %lo(D_800F3E20)($at)
/* 022244 80022694 C4440000 */  lwc1        $f4, 0x0($v0)
/* 022248 80022698 3C01800F */  lui         $at, %hi(D_800F3E24)
/* 02224C 8002269C C4303E24 */  lwc1        $f16, %lo(D_800F3E24)($at)
/* 022250 800226A0 46062201 */  sub.s       $f8, $f4, $f6
/* 022254 800226A4 3C01800F */  lui         $at, %hi(D_800F3E28)
/* 022258 800226A8 C4263E28 */  lwc1        $f6, %lo(D_800F3E28)($at)
/* 02225C 800226AC 27A40020 */  addiu       $a0, $sp, 0x20
/* 022260 800226B0 E7A80020 */  swc1        $f8, 0x20($sp)
/* 022264 800226B4 C44A0004 */  lwc1        $f10, 0x4($v0)
/* 022268 800226B8 46105481 */  sub.s       $f18, $f10, $f16
/* 02226C 800226BC E7B20024 */  swc1        $f18, 0x24($sp)
/* 022270 800226C0 C4440008 */  lwc1        $f4, 0x8($v0)
/* 022274 800226C4 46062201 */  sub.s       $f8, $f4, $f6
/* 022278 800226C8 0C00E3AC */  jal         func_80038EB0
/* 02227C 800226CC E7A80028 */   swc1       $f8, 0x28($sp)
/* 022280 800226D0 8FA20040 */  lw          $v0, 0x40($sp)
/* 022284 800226D4 8FA3003C */  lw          $v1, 0x3c($sp)
/* 022288 800226D8 C44A000C */  lwc1        $f10, 0xc($v0)
/* 02228C 800226DC 24420008 */  addiu       $v0, $v0, 0x8
/* 022290 800226E0 460A003E */  c.le.s      $f0, $f10
/* 022294 800226E4 00000000 */  nop
/* 022298 800226E8 4503000A */  bc1tl       .L80022714
/* 02229C 800226EC 8C590000 */   lw         $t9, 0x0($v0)
/* 0222A0 800226F0 8C6E0198 */  lw          $t6, 0x198($v1)
/* 0222A4 800226F4 3C0F800F */  lui         $t7, %hi(D_800F3EA8)
/* 0222A8 800226F8 51C0000F */  beql        $t6, $zero, .L80022738
/* 0222AC 800226FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0222B0 80022700 8DEF3EA8 */  lw          $t7, %lo(D_800F3EA8)($t7)
/* 0222B4 80022704 8C780194 */  lw          $t8, 0x194($v1)
/* 0222B8 80022708 55F8000B */  bnel        $t7, $t8, .L80022738
/* 0222BC 8002270C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0222C0 80022710 8C590000 */  lw          $t9, 0x0($v0)
.L80022714:
/* 0222C4 80022714 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 0222C8 80022718 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 0222CC 8002271C 44998000 */  mtc1        $t9, $f16
/* 0222D0 80022720 00000000 */  nop
/* 0222D4 80022724 46808420 */  cvt.s.w     $f16, $f16
/* 0222D8 80022728 44058000 */  mfc1        $a1, $f16
/* 0222DC 8002272C 0C04542D */  jal         func_801150B4
/* 0222E0 80022730 00000000 */   nop
/* 0222E4 80022734 8FBF0014 */  lw          $ra, 0x14($sp)
.L80022738:
/* 0222E8 80022738 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0222EC 8002273C 03E00008 */  jr          $ra
/* 0222F0 80022740 00000000 */   nop

glabel func_80022744 # 60
/* 0222F4 80022744 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0222F8 80022748 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 0222FC 8002274C F7B40018 */  sdc1        $f20, 0x18($sp)
/* 022300 80022750 3C01C220 */  lui         $at, 0xc220
/* 022304 80022754 AFB40038 */  sw          $s4, 0x38($sp)
/* 022308 80022758 AFB30034 */  sw          $s3, 0x34($sp)
/* 02230C 8002275C AFB20030 */  sw          $s2, 0x30($sp)
/* 022310 80022760 AFB1002C */  sw          $s1, 0x2c($sp)
/* 022314 80022764 AFB00028 */  sw          $s0, 0x28($sp)
/* 022318 80022768 4481A000 */  mtc1        $at, $f20
/* 02231C 8002276C 4480B000 */  mtc1        $zero, $f22
/* 022320 80022770 AFBF003C */  sw          $ra, 0x3c($sp)
/* 022324 80022774 AFA40068 */  sw          $a0, 0x68($sp)
/* 022328 80022778 AFA70074 */  sw          $a3, 0x74($sp)
/* 02232C 8002277C 00008025 */  move        $s0, $zero
/* 022330 80022780 27B10054 */  addiu       $s1, $sp, 0x54
/* 022334 80022784 24D20008 */  addiu       $s2, $a2, 0x8
/* 022338 80022788 24B30060 */  addiu       $s3, $a1, 0x60
/* 02233C 8002278C 24140002 */  addiu       $s4, $zero, 0x2
.L80022790:
/* 022340 80022790 8E4E0000 */  lw          $t6, 0x0($s2)
/* 022344 80022794 4405A000 */  mfc1        $a1, $f20
/* 022348 80022798 4406B000 */  mfc1        $a2, $f22
/* 02234C 8002279C 448E2000 */  mtc1        $t6, $f4
/* 022350 800227A0 02602025 */  move        $a0, $s3
/* 022354 800227A4 02003825 */  move        $a3, $s0
/* 022358 800227A8 468021A0 */  cvt.s.w     $f6, $f4
/* 02235C 800227AC E6260000 */  swc1        $f6, 0x0($s1)
/* 022360 800227B0 8E4F0008 */  lw          $t7, 0x8($s2)
/* 022364 800227B4 448F4000 */  mtc1        $t7, $f8
/* 022368 800227B8 00000000 */  nop
/* 02236C 800227BC 468042A0 */  cvt.s.w     $f10, $f8
/* 022370 800227C0 0C00BE29 */  jal         func_8002F8A4
/* 022374 800227C4 E62A0004 */   swc1       $f10, 0x4($s1)
/* 022378 800227C8 26100001 */  addiu       $s0, $s0, 0x1
/* 02237C 800227CC 1614FFF0 */  bne         $s0, $s4, .L80022790
/* 022380 800227D0 26310008 */   addiu      $s1, $s1, 0x8
/* 022384 800227D4 02602025 */  move        $a0, $s3
/* 022388 800227D8 8E450004 */  lw          $a1, 0x4($s2)
/* 02238C 800227DC 0C00BF25 */  jal         func_8002FC94
/* 022390 800227E0 27A60054 */   addiu      $a2, $sp, 0x54
/* 022394 800227E4 8FBF003C */  lw          $ra, 0x3c($sp)
/* 022398 800227E8 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02239C 800227EC D7B60020 */  ldc1        $f22, 0x20($sp)
/* 0223A0 800227F0 8FB00028 */  lw          $s0, 0x28($sp)
/* 0223A4 800227F4 8FB1002C */  lw          $s1, 0x2c($sp)
/* 0223A8 800227F8 8FB20030 */  lw          $s2, 0x30($sp)
/* 0223AC 800227FC 8FB30034 */  lw          $s3, 0x34($sp)
/* 0223B0 80022800 8FB40038 */  lw          $s4, 0x38($sp)
/* 0223B4 80022804 03E00008 */  jr          $ra
/* 0223B8 80022808 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8002280C # 61
/* 0223BC 8002280C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0223C0 80022810 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0223C4 80022814 AFA40028 */  sw          $a0, 0x28($sp)
/* 0223C8 80022818 AFA70034 */  sw          $a3, 0x34($sp)
/* 0223CC 8002281C 8CCE0008 */  lw          $t6, 0x8($a2)
/* 0223D0 80022820 44802000 */  mtc1        $zero, $f4
/* 0223D4 80022824 24C30008 */  addiu       $v1, $a2, 0x8
/* 0223D8 80022828 05C20007 */  bltzl       $t6, .L80022848
/* 0223DC 8002282C C4660004 */   lwc1       $f6, 0x4($v1)
/* 0223E0 80022830 8CC20008 */  lw          $v0, 0x8($a2)
/* 0223E4 80022834 28410006 */  slti        $at, $v0, 0x6
/* 0223E8 80022838 50200003 */  beql        $at, $zero, .L80022848
/* 0223EC 8002283C C4660004 */   lwc1       $f6, 0x4($v1)
/* 0223F0 80022840 ACA20190 */  sw          $v0, 0x190($a1)
/* 0223F4 80022844 C4660004 */  lwc1        $f6, 0x4($v1)
.L80022848:
/* 0223F8 80022848 4606203C */  c.lt.s      $f4, $f6
/* 0223FC 8002284C 00000000 */  nop
/* 022400 80022850 4502000F */  bc1fl       .L80022890
/* 022404 80022854 8FBF0014 */   lw         $ra, 0x14($sp)
/* 022408 80022858 8CA4018C */  lw          $a0, 0x18c($a1)
/* 02240C 8002285C 0C001A23 */  jal         func_8000688C
/* 022410 80022860 AFA30018 */   sw         $v1, 0x18($sp)
/* 022414 80022864 10400009 */  beqz        $v0, .L8002288C
/* 022418 80022868 8FA30018 */   lw         $v1, 0x18($sp)
/* 02241C 8002286C 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 022420 80022870 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 022424 80022874 C46A0004 */  lwc1        $f10, 0x4($v1)
/* 022428 80022878 C5E8000C */  lwc1        $f8, 0xc($t7)
/* 02242C 8002287C 460A4002 */  mul.s       $f0, $f8, $f10
/* 022430 80022880 E4400000 */  swc1        $f0, 0x0($v0)
/* 022434 80022884 E4400004 */  swc1        $f0, 0x4($v0)
/* 022438 80022888 E4400008 */  swc1        $f0, 0x8($v0)
.L8002288C:
/* 02243C 8002288C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80022890:
/* 022440 80022890 27BD0028 */  addiu       $sp, $sp, 0x28
/* 022444 80022894 03E00008 */  jr          $ra
/* 022448 80022898 00000000 */   nop

glabel func_8002289C # 62
/* 02244C 8002289C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 022450 800228A0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 022454 800228A4 AFB00018 */  sw          $s0, 0x18($sp)
/* 022458 800228A8 AFA50034 */  sw          $a1, 0x34($sp)
/* 02245C 800228AC AFA60038 */  sw          $a2, 0x38($sp)
/* 022460 800228B0 0C047038 */  jal         func_8011C0E0
/* 022464 800228B4 AFA7003C */   sw         $a3, 0x3c($sp)
/* 022468 800228B8 10400006 */  beqz        $v0, .L800228D4
/* 02246C 800228BC 00408025 */   move       $s0, $v0
/* 022470 800228C0 944E0034 */  lhu         $t6, 0x34($v0)
/* 022474 800228C4 8FA30038 */  lw          $v1, 0x38($sp)
/* 022478 800228C8 24010086 */  addiu       $at, $zero, 0x86
/* 02247C 800228CC 11C10007 */  beq         $t6, $at, .L800228EC
/* 022480 800228D0 24630008 */   addiu      $v1, $v1, 0x8
.L800228D4:
/* 022484 800228D4 5040001D */  beql        $v0, $zero, .L8002294C
/* 022488 800228D8 8FBF001C */   lw         $ra, 0x1c($sp)
/* 02248C 800228DC 0C0019B4 */  jal         func_800066D0
/* 022490 800228E0 02002025 */   move       $a0, $s0
/* 022494 800228E4 10000019 */  b           .L8002294C
/* 022498 800228E8 8FBF001C */   lw         $ra, 0x1c($sp)
.L800228EC:
/* 02249C 800228EC 8E040038 */  lw          $a0, 0x38($s0)
/* 0224A0 800228F0 8C650000 */  lw          $a1, 0x0($v1)
/* 0224A4 800228F4 0C045F84 */  jal         func_80117E10
/* 0224A8 800228F8 AFA30020 */   sw         $v1, 0x20($sp)
/* 0224AC 800228FC 8FA30020 */  lw          $v1, 0x20($sp)
/* 0224B0 80022900 44802000 */  mtc1        $zero, $f4
/* 0224B4 80022904 C4600004 */  lwc1        $f0, 0x4($v1)
/* 0224B8 80022908 4600203E */  c.le.s      $f4, $f0
/* 0224BC 8002290C 00000000 */  nop
/* 0224C0 80022910 4502000E */  bc1fl       .L8002294C
/* 0224C4 80022914 8FBF001C */   lw         $ra, 0x1c($sp)
/* 0224C8 80022918 50400005 */  beql        $v0, $zero, .L80022930
/* 0224CC 8002291C 4600018D */   trunc.w.s  $f6, $f0
/* 0224D0 80022920 8E0F0038 */  lw          $t7, 0x38($s0)
/* 0224D4 80022924 544F0009 */  bnel        $v0, $t7, .L8002294C
/* 0224D8 80022928 8FBF001C */   lw         $ra, 0x1c($sp)
/* 0224DC 8002292C 4600018D */  trunc.w.s   $f6, $f0
.L80022930:
/* 0224E0 80022930 02002025 */  move        $a0, $s0
/* 0224E4 80022934 3C0641A0 */  lui         $a2, 0x41a0
/* 0224E8 80022938 3C0742C8 */  lui         $a3, 0x42c8
/* 0224EC 8002293C 44053000 */  mfc1        $a1, $f6
/* 0224F0 80022940 0C00216C */  jal         func_800085B0
/* 0224F4 80022944 00000000 */   nop
/* 0224F8 80022948 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002294C:
/* 0224FC 8002294C 8FB00018 */  lw          $s0, 0x18($sp)
/* 022500 80022950 27BD0030 */  addiu       $sp, $sp, 0x30
/* 022504 80022954 03E00008 */  jr          $ra
/* 022508 80022958 00000000 */   nop

glabel func_8002295C # 63
/* 02250C 8002295C 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 022510 80022960 AFBF0024 */  sw          $ra, 0x24($sp)
/* 022514 80022964 AFA40050 */  sw          $a0, 0x50($sp)
/* 022518 80022968 AFA50054 */  sw          $a1, 0x54($sp)
/* 02251C 8002296C AFA60058 */  sw          $a2, 0x58($sp)
/* 022520 80022970 0C047038 */  jal         func_8011C0E0
/* 022524 80022974 AFA7005C */   sw         $a3, 0x5c($sp)
/* 022528 80022978 10400028 */  beqz        $v0, .L80022A1C
/* 02252C 8002297C 00402025 */   move       $a0, $v0
/* 022530 80022980 94430034 */  lhu         $v1, 0x34($v0)
/* 022534 80022984 18600025 */  blez        $v1, .L80022A1C
/* 022538 80022988 28610026 */   slti       $at, $v1, 0x26
/* 02253C 8002298C 10200023 */  beqz        $at, .L80022A1C
/* 022540 80022990 240E0010 */   addiu      $t6, $zero, 0x10
/* 022544 80022994 8FA20058 */  lw          $v0, 0x58($sp)
/* 022548 80022998 AFA0003C */  sw          $zero, 0x3c($sp)
/* 02254C 8002299C AFAE0034 */  sw          $t6, 0x34($sp)
/* 022550 800229A0 8C4F0008 */  lw          $t7, 0x8($v0)
/* 022554 800229A4 8FA90050 */  lw          $t1, 0x50($sp)
/* 022558 800229A8 27AB0034 */  addiu       $t3, $sp, 0x34
/* 02255C 800229AC AFAF0038 */  sw          $t7, 0x38($sp)
/* 022560 800229B0 C444000C */  lwc1        $f4, 0xc($v0)
/* 022564 800229B4 24420008 */  addiu       $v0, $v0, 0x8
/* 022568 800229B8 4600218D */  trunc.w.s   $f6, $f4
/* 02256C 800229BC 44193000 */  mfc1        $t9, $f6
/* 022570 800229C0 00000000 */  nop
/* 022574 800229C4 AFB90040 */  sw          $t9, 0x40($sp)
/* 022578 800229C8 8C480008 */  lw          $t0, 0x8($v0)
/* 02257C 800229CC AFA80044 */  sw          $t0, 0x44($sp)
/* 022580 800229D0 8D2A0038 */  lw          $t2, 0x38($t1)
/* 022584 800229D4 AFAA0048 */  sw          $t2, 0x48($sp)
/* 022588 800229D8 8D610000 */  lw          $at, 0x0($t3)
/* 02258C 800229DC AFA10004 */  sw          $at, 0x4($sp)
/* 022590 800229E0 8D6D0004 */  lw          $t5, 0x4($t3)
/* 022594 800229E4 8FA50004 */  lw          $a1, 0x4($sp)
/* 022598 800229E8 AFAD0008 */  sw          $t5, 0x8($sp)
/* 02259C 800229EC 8D610008 */  lw          $at, 0x8($t3)
/* 0225A0 800229F0 8FA60008 */  lw          $a2, 0x8($sp)
/* 0225A4 800229F4 AFA1000C */  sw          $at, 0xc($sp)
/* 0225A8 800229F8 8D6D000C */  lw          $t5, 0xc($t3)
/* 0225AC 800229FC 8FA7000C */  lw          $a3, 0xc($sp)
/* 0225B0 80022A00 AFAD0010 */  sw          $t5, 0x10($sp)
/* 0225B4 80022A04 8D610010 */  lw          $at, 0x10($t3)
/* 0225B8 80022A08 AFA10014 */  sw          $at, 0x14($sp)
/* 0225BC 80022A0C 8D6D0014 */  lw          $t5, 0x14($t3)
/* 0225C0 80022A10 AFA0001C */  sw          $zero, 0x1c($sp)
/* 0225C4 80022A14 0C047109 */  jal         func_8011C424
/* 0225C8 80022A18 AFAD0018 */   sw         $t5, 0x18($sp)
.L80022A1C:
/* 0225CC 80022A1C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0225D0 80022A20 27BD0050 */  addiu       $sp, $sp, 0x50
/* 0225D4 80022A24 03E00008 */  jr          $ra
/* 0225D8 80022A28 00000000 */   nop

glabel func_80022A2C # 64
/* 0225DC 80022A2C AFA40000 */  sw          $a0, 0x0($sp)
/* 0225E0 80022A30 AFA50004 */  sw          $a1, 0x4($sp)
/* 0225E4 80022A34 C4E40000 */  lwc1        $f4, 0x0($a3)
/* 0225E8 80022A38 C4C6000C */  lwc1        $f6, 0xc($a2)
/* 0225EC 80022A3C 46062200 */  add.s       $f8, $f4, $f6
/* 0225F0 80022A40 03E00008 */  jr          $ra
/* 0225F4 80022A44 E4E80000 */   swc1       $f8, 0x0($a3)

glabel func_80022A48 # 65
/* 0225F8 80022A48 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0225FC 80022A4C AFBF0034 */  sw          $ra, 0x34($sp)
/* 022600 80022A50 AFB20030 */  sw          $s2, 0x30($sp)
/* 022604 80022A54 AFB1002C */  sw          $s1, 0x2c($sp)
/* 022608 80022A58 AFB00028 */  sw          $s0, 0x28($sp)
/* 02260C 80022A5C F7B60020 */  sdc1        $f22, 0x20($sp)
/* 022610 80022A60 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 022614 80022A64 AFA40038 */  sw          $a0, 0x38($sp)
/* 022618 80022A68 AFA5003C */  sw          $a1, 0x3c($sp)
/* 02261C 80022A6C 8CD20008 */  lw          $s2, 0x8($a2)
/* 022620 80022A70 00E08825 */  move        $s1, $a3
/* 022624 80022A74 C4C0000C */  lwc1        $f0, 0xc($a2)
/* 022628 80022A78 1A400018 */  blez        $s2, .L80022ADC
/* 02262C 80022A7C 00008025 */   move       $s0, $zero
/* 022630 80022A80 3C013DF0 */  lui         $at, 0x3df0
/* 022634 80022A84 4481B800 */  mtc1        $at, $f23
/* 022638 80022A88 4480B000 */  mtc1        $zero, $f22
/* 02263C 80022A8C 46000521 */  cvt.d.s     $f20, $f0
.L80022A90:
/* 022640 80022A90 0C00E512 */  jal         func_80039448
/* 022644 80022A94 00000000 */   nop
/* 022648 80022A98 C6240000 */  lwc1        $f4, 0x0($s1)
/* 02264C 80022A9C 44824000 */  mtc1        $v0, $f8
/* 022650 80022AA0 3C0141F0 */  lui         $at, 0x41f0
/* 022654 80022AA4 460021A1 */  cvt.d.s     $f6, $f4
/* 022658 80022AA8 04410005 */  bgez        $v0, .L80022AC0
/* 02265C 80022AAC 468042A1 */   cvt.d.w    $f10, $f8
/* 022660 80022AB0 44818800 */  mtc1        $at, $f17
/* 022664 80022AB4 44808000 */  mtc1        $zero, $f16
/* 022668 80022AB8 00000000 */  nop
/* 02266C 80022ABC 46305280 */  add.d       $f10, $f10, $f16
.L80022AC0:
/* 022670 80022AC0 46365482 */  mul.d       $f18, $f10, $f22
/* 022674 80022AC4 26100001 */  addiu       $s0, $s0, 0x1
/* 022678 80022AC8 46349102 */  mul.d       $f4, $f18, $f20
/* 02267C 80022ACC 46243200 */  add.d       $f8, $f6, $f4
/* 022680 80022AD0 46204420 */  cvt.s.d     $f16, $f8
/* 022684 80022AD4 1612FFEE */  bne         $s0, $s2, .L80022A90
/* 022688 80022AD8 E6300000 */   swc1       $f16, 0x0($s1)
.L80022ADC:
/* 02268C 80022ADC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 022690 80022AE0 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 022694 80022AE4 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 022698 80022AE8 8FB00028 */  lw          $s0, 0x28($sp)
/* 02269C 80022AEC 8FB1002C */  lw          $s1, 0x2c($sp)
/* 0226A0 80022AF0 8FB20030 */  lw          $s2, 0x30($sp)
/* 0226A4 80022AF4 03E00008 */  jr          $ra
/* 0226A8 80022AF8 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80022AFC # 66
/* 0226AC 80022AFC 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0226B0 80022B00 AFBF0054 */  sw          $ra, 0x54($sp)
/* 0226B4 80022B04 AFBE0050 */  sw          $fp, 0x50($sp)
/* 0226B8 80022B08 AFB7004C */  sw          $s7, 0x4c($sp)
/* 0226BC 80022B0C AFB60048 */  sw          $s6, 0x48($sp)
/* 0226C0 80022B10 AFB50044 */  sw          $s5, 0x44($sp)
/* 0226C4 80022B14 AFB40040 */  sw          $s4, 0x40($sp)
/* 0226C8 80022B18 AFB3003C */  sw          $s3, 0x3c($sp)
/* 0226CC 80022B1C AFB20038 */  sw          $s2, 0x38($sp)
/* 0226D0 80022B20 AFB10034 */  sw          $s1, 0x34($sp)
/* 0226D4 80022B24 AFB00030 */  sw          $s0, 0x30($sp)
/* 0226D8 80022B28 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 0226DC 80022B2C F7B60020 */  sdc1        $f22, 0x20($sp)
/* 0226E0 80022B30 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 0226E4 80022B34 AFA5005C */  sw          $a1, 0x5c($sp)
/* 0226E8 80022B38 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 0226EC 80022B3C C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 0226F0 80022B40 C4C40000 */  lwc1        $f4, 0x0($a2)
/* 0226F4 80022B44 8C920054 */  lw          $s2, 0x54($a0)
/* 0226F8 80022B48 00C08825 */  move        $s1, $a2
/* 0226FC 80022B4C 46062200 */  add.s       $f8, $f4, $f6
/* 022700 80022B50 0080F025 */  move        $fp, $a0
/* 022704 80022B54 E4C80000 */  swc1        $f8, 0x0($a2)
/* 022708 80022B58 8FAE005C */  lw          $t6, 0x5c($sp)
/* 02270C 80022B5C 8DD00000 */  lw          $s0, 0x0($t6)
/* 022710 80022B60 5200004B */  beql        $s0, $zero, .L80022C90
/* 022714 80022B64 8FBF0054 */   lw         $ra, 0x54($sp)
/* 022718 80022B68 C4C00000 */  lwc1        $f0, 0x0($a2)
/* 02271C 80022B6C C60A0004 */  lwc1        $f10, 0x4($s0)
/* 022720 80022B70 3C178009 */  lui         $s7, %hi(D_8008E980)
/* 022724 80022B74 26F7E980 */  addiu       $s7, $s7, %lo(D_8008E980)
/* 022728 80022B78 4600503E */  c.le.s      $f10, $f0
/* 02272C 80022B7C 3C01800B */  lui         $at, %hi(D_800A9A48)
/* 022730 80022B80 24160030 */  addiu       $s6, $zero, 0x30
/* 022734 80022B84 2415002F */  addiu       $s5, $zero, 0x2f
/* 022738 80022B88 4500003E */  bc1f        .L80022C84
/* 02273C 80022B8C 2414002E */   addiu      $s4, $zero, 0x2e
/* 022740 80022B90 C4389A48 */  lwc1        $f24, %lo(D_800A9A48)($at)
/* 022744 80022B94 3C01800B */  lui         $at, %hi(D_800A9A4C)
/* 022748 80022B98 4480A000 */  mtc1        $zero, $f20
/* 02274C 80022B9C C4369A4C */  lwc1        $f22, %lo(D_800A9A4C)($at)
/* 022750 80022BA0 2413002D */  addiu       $s3, $zero, 0x2d
/* 022754 80022BA4 8E020000 */  lw          $v0, 0x0($s0)
.L80022BA8:
/* 022758 80022BA8 28410013 */  slti        $at, $v0, 0x13
/* 02275C 80022BAC 10200003 */  beqz        $at, .L80022BBC
/* 022760 80022BB0 00000000 */   nop
/* 022764 80022BB4 1000002E */  b           .L80022C70
/* 022768 80022BB8 26100014 */   addiu      $s0, $s0, 0x14
.L80022BBC:
/* 02276C 80022BBC 5053000A */  beql        $v0, $s3, .L80022BE8
/* 022770 80022BC0 26020008 */   addiu      $v0, $s0, 0x8
/* 022774 80022BC4 10540011 */  beq         $v0, $s4, .L80022C0C
/* 022778 80022BC8 03C02025 */   move       $a0, $fp
/* 02277C 80022BCC 1055001E */  beq         $v0, $s5, .L80022C48
/* 022780 80022BD0 0002C080 */   sll        $t8, $v0, 2
/* 022784 80022BD4 1056001C */  beq         $v0, $s6, .L80022C48
/* 022788 80022BD8 02F8C821 */   addu       $t9, $s7, $t8
/* 02278C 80022BDC 1000001E */  b           .L80022C58
/* 022790 80022BE0 8F39FFB4 */   lw         $t9, -0x4c($t9)
/* 022794 80022BE4 26020008 */  addiu       $v0, $s0, 0x8
.L80022BE8:
/* 022798 80022BE8 C4500004 */  lwc1        $f16, 0x4($v0)
/* 02279C 80022BEC 8E100008 */  lw          $s0, 0x8($s0)
/* 0227A0 80022BF0 4610A032 */  c.eq.s      $f20, $f16
/* 0227A4 80022BF4 00000000 */  nop
/* 0227A8 80022BF8 4503001E */  bc1tl       .L80022C74
/* 0227AC 80022BFC C6060004 */   lwc1       $f6, 0x4($s0)
/* 0227B0 80022C00 E6340000 */  swc1        $f20, 0x0($s1)
/* 0227B4 80022C04 1000001A */  b           .L80022C70
/* 0227B8 80022C08 C6200000 */   lwc1       $f0, 0x0($s1)
.L80022C0C:
/* 0227BC 80022C0C C6520134 */  lwc1        $f18, 0x134($s2)
/* 0227C0 80022C10 C6440138 */  lwc1        $f4, 0x138($s2)
/* 0227C4 80022C14 46049001 */  sub.s       $f0, $f18, $f4
/* 0227C8 80022C18 4616003C */  c.lt.s      $f0, $f22
/* 0227CC 80022C1C 00000000 */  nop
/* 0227D0 80022C20 45020019 */  bc1fl       .L80022C88
/* 0227D4 80022C24 8FA8005C */   lw         $t0, 0x5c($sp)
/* 0227D8 80022C28 4600C03C */  c.lt.s      $f24, $f0
/* 0227DC 80022C2C 00000000 */  nop
/* 0227E0 80022C30 45020015 */  bc1fl       .L80022C88
/* 0227E4 80022C34 8FA8005C */   lw         $t0, 0x5c($sp)
/* 0227E8 80022C38 E6340000 */  swc1        $f20, 0x0($s1)
/* 0227EC 80022C3C C6200000 */  lwc1        $f0, 0x0($s1)
/* 0227F0 80022C40 1000000B */  b           .L80022C70
/* 0227F4 80022C44 26100014 */   addiu      $s0, $s0, 0x14
.L80022C48:
/* 0227F8 80022C48 8FAF005C */  lw          $t7, 0x5c($sp)
/* 0227FC 80022C4C 1000000F */  b           .L80022C8C
/* 022800 80022C50 ADE00000 */   sw         $zero, 0x0($t7)
/* 022804 80022C54 8F39FFB4 */  lw          $t9, -0x4c($t9)
.L80022C58:
/* 022808 80022C58 02402825 */  move        $a1, $s2
/* 02280C 80022C5C 02003025 */  move        $a2, $s0
/* 022810 80022C60 0320F809 */  jalr        $t9
/* 022814 80022C64 02203825 */   move       $a3, $s1
/* 022818 80022C68 26100014 */  addiu       $s0, $s0, 0x14
/* 02281C 80022C6C C6200000 */  lwc1        $f0, 0x0($s1)
.L80022C70:
/* 022820 80022C70 C6060004 */  lwc1        $f6, 0x4($s0)
.L80022C74:
/* 022824 80022C74 4600303E */  c.le.s      $f6, $f0
/* 022828 80022C78 00000000 */  nop
/* 02282C 80022C7C 4503FFCA */  bc1tl       .L80022BA8
/* 022830 80022C80 8E020000 */   lw         $v0, 0x0($s0)
.L80022C84:
/* 022834 80022C84 8FA8005C */  lw          $t0, 0x5c($sp)
.L80022C88:
/* 022838 80022C88 AD100000 */  sw          $s0, 0x0($t0)
.L80022C8C:
/* 02283C 80022C8C 8FBF0054 */  lw          $ra, 0x54($sp)
.L80022C90:
/* 022840 80022C90 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 022844 80022C94 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 022848 80022C98 D7B80028 */  ldc1        $f24, 0x28($sp)
/* 02284C 80022C9C 8FB00030 */  lw          $s0, 0x30($sp)
/* 022850 80022CA0 8FB10034 */  lw          $s1, 0x34($sp)
/* 022854 80022CA4 8FB20038 */  lw          $s2, 0x38($sp)
/* 022858 80022CA8 8FB3003C */  lw          $s3, 0x3c($sp)
/* 02285C 80022CAC 8FB40040 */  lw          $s4, 0x40($sp)
/* 022860 80022CB0 8FB50044 */  lw          $s5, 0x44($sp)
/* 022864 80022CB4 8FB60048 */  lw          $s6, 0x48($sp)
/* 022868 80022CB8 8FB7004C */  lw          $s7, 0x4c($sp)
/* 02286C 80022CBC 8FBE0050 */  lw          $fp, 0x50($sp)
/* 022870 80022CC0 03E00008 */  jr          $ra
/* 022874 80022CC4 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_80022CC8 # 67
/* 022878 80022CC8 8C820054 */  lw          $v0, 0x54($a0)
/* 02287C 80022CCC 24070012 */  addiu       $a3, $zero, 0x12
/* 022880 80022CD0 8443013E */  lh          $v1, 0x13e($v0)
/* 022884 80022CD4 14E30007 */  bne         $a3, $v1, .L80022CF4
/* 022888 80022CD8 00000000 */   nop
/* 02288C 80022CDC 10C00003 */  beqz        $a2, .L80022CEC
/* 022890 80022CE0 00000000 */   nop
/* 022894 80022CE4 03E00008 */  jr          $ra
/* 022898 80022CE8 00A01025 */   move       $v0, $a1
.L80022CEC:
/* 02289C 80022CEC 03E00008 */  jr          $ra
/* 0228A0 80022CF0 00A01025 */   move       $v0, $a1
.L80022CF4:
/* 0228A4 80022CF4 14A00003 */  bnez        $a1, .L80022D04
/* 0228A8 80022CF8 00A02025 */   move       $a0, $a1
/* 0228AC 80022CFC 03E00008 */  jr          $ra
/* 0228B0 80022D00 00001025 */   move       $v0, $zero
.L80022D04:
/* 0228B4 80022D04 8CAE0000 */  lw          $t6, 0x0($a1)
/* 0228B8 80022D08 24060030 */  addiu       $a2, $zero, 0x30
/* 0228BC 80022D0C 00601025 */  move        $v0, $v1
/* 0228C0 80022D10 50CE000D */  beql        $a2, $t6, .L80022D48
/* 0228C4 80022D14 00001025 */   move       $v0, $zero
/* 0228C8 80022D18 8C830000 */  lw          $v1, 0x0($a0)
.L80022D1C:
/* 0228CC 80022D1C 10E30003 */  beq         $a3, $v1, .L80022D2C
/* 0228D0 80022D20 00000000 */   nop
/* 0228D4 80022D24 54430004 */  bnel        $v0, $v1, .L80022D38
/* 0228D8 80022D28 8C830014 */   lw         $v1, 0x14($a0)
.L80022D2C:
/* 0228DC 80022D2C 03E00008 */  jr          $ra
/* 0228E0 80022D30 24820014 */   addiu      $v0, $a0, 0x14
/* 0228E4 80022D34 8C830014 */  lw          $v1, 0x14($a0)
.L80022D38:
/* 0228E8 80022D38 24840014 */  addiu       $a0, $a0, 0x14
/* 0228EC 80022D3C 14C3FFF7 */  bne         $a2, $v1, .L80022D1C
/* 0228F0 80022D40 00000000 */   nop
/* 0228F4 80022D44 00001025 */  move        $v0, $zero
.L80022D48:
/* 0228F8 80022D48 03E00008 */  jr          $ra
/* 0228FC 80022D4C 00000000 */   nop

glabel func_80022D50 # 68
/* 022900 80022D50 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 022904 80022D54 AFBF0024 */  sw          $ra, 0x24($sp)
/* 022908 80022D58 AFB10020 */  sw          $s1, 0x20($sp)
/* 02290C 80022D5C AFB0001C */  sw          $s0, 0x1c($sp)
/* 022910 80022D60 AFA5004C */  sw          $a1, 0x4c($sp)
/* 022914 80022D64 00808025 */  move        $s0, $a0
/* 022918 80022D68 00C08825 */  move        $s1, $a2
/* 02291C 80022D6C AFA70054 */  sw          $a3, 0x54($sp)
/* 022920 80022D70 0C0043BC */  jal         func_80010EF0
/* 022924 80022D74 00C02825 */   move       $a1, $a2
/* 022928 80022D78 26040020 */  addiu       $a0, $s0, 0x20
/* 02292C 80022D7C 0C0043BC */  jal         func_80010EF0
/* 022930 80022D80 02202825 */   move       $a1, $s1
/* 022934 80022D84 8FAE004C */  lw          $t6, 0x4c($sp)
/* 022938 80022D88 AE110044 */  sw          $s1, 0x44($s0)
/* 02293C 80022D8C AE000048 */  sw          $zero, 0x48($s0)
/* 022940 80022D90 000E7880 */  sll         $t7, $t6, 2
/* 022944 80022D94 01EE7823 */  subu        $t7, $t7, $t6
/* 022948 80022D98 000F7880 */  sll         $t7, $t7, 2
/* 02294C 80022D9C AE0F0040 */  sw          $t7, 0x40($s0)
/* 022950 80022DA0 AE00004C */  sw          $zero, 0x4c($s0)
/* 022954 80022DA4 8FB80064 */  lw          $t8, 0x64($sp)
/* 022958 80022DA8 00116080 */  sll         $t4, $s1, 2
/* 02295C 80022DAC 01916021 */  addu        $t4, $t4, $s1
/* 022960 80022DB0 A2180070 */  sb          $t8, 0x70($s0)
/* 022964 80022DB4 8FB90068 */  lw          $t9, 0x68($sp)
/* 022968 80022DB8 000C7140 */  sll         $t6, $t4, 5
/* 02296C 80022DBC 001158C0 */  sll         $t3, $s1, 3
/* 022970 80022DC0 000B68C0 */  sll         $t5, $t3, 3
/* 022974 80022DC4 25CC00A0 */  addiu       $t4, $t6, 0xa0
/* 022978 80022DC8 000C7840 */  sll         $t7, $t4, 1
/* 02297C 80022DCC 25AD00A0 */  addiu       $t5, $t5, 0xa0
/* 022980 80022DD0 01EDC021 */  addu        $t8, $t7, $t5
/* 022984 80022DD4 A2190071 */  sb          $t9, 0x71($s0)
/* 022988 80022DD8 000BC840 */  sll         $t9, $t3, 1
/* 02298C 80022DDC 03197021 */  addu        $t6, $t8, $t9
/* 022990 80022DE0 00117980 */  sll         $t7, $s1, 6
/* 022994 80022DE4 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 022998 80022DE8 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 02299C 80022DEC 01CF2821 */  addu        $a1, $t6, $t7
/* 0229A0 80022DF0 AFAD0030 */  sw          $t5, 0x30($sp)
/* 0229A4 80022DF4 AFAC002C */  sw          $t4, 0x2c($sp)
/* 0229A8 80022DF8 AFAB0034 */  sw          $t3, 0x34($sp)
/* 0229AC 80022DFC 0C00DA76 */  jal         func_800369D8
/* 0229B0 80022E00 2406008E */   addiu      $a2, $zero, 0x8e
/* 0229B4 80022E04 8FAB0034 */  lw          $t3, 0x34($sp)
/* 0229B8 80022E08 8FAC002C */  lw          $t4, 0x2c($sp)
/* 0229BC 80022E0C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 0229C0 80022E10 AE020050 */  sw          $v0, 0x50($s0)
/* 0229C4 80022E14 02002025 */  move        $a0, $s0
/* 0229C8 80022E18 004D1821 */  addu        $v1, $v0, $t5
/* 0229CC 80022E1C 006B4021 */  addu        $t0, $v1, $t3
/* 0229D0 80022E20 010B4821 */  addu        $t1, $t0, $t3
/* 0229D4 80022E24 012C5021 */  addu        $t2, $t1, $t4
/* 0229D8 80022E28 014CC021 */  addu        $t8, $t2, $t4
/* 0229DC 80022E2C AE030054 */  sw          $v1, 0x54($s0)
/* 0229E0 80022E30 AE080058 */  sw          $t0, 0x58($s0)
/* 0229E4 80022E34 AE09005C */  sw          $t1, 0x5c($s0)
/* 0229E8 80022E38 AE0A0060 */  sw          $t2, 0x60($s0)
/* 0229EC 80022E3C AE180064 */  sw          $t8, 0x64($s0)
/* 0229F0 80022E40 93B90063 */  lbu         $t9, 0x63($sp)
/* 0229F4 80022E44 93A7005F */  lbu         $a3, 0x5f($sp)
/* 0229F8 80022E48 93A6005B */  lbu         $a2, 0x5b($sp)
/* 0229FC 80022E4C 93A50057 */  lbu         $a1, 0x57($sp)
/* 022A00 80022E50 0C008BB5 */  jal         func_80022ED4
/* 022A04 80022E54 AFB90010 */   sw         $t9, 0x10($sp)
/* 022A08 80022E58 0C008C0A */  jal         func_80023028
/* 022A0C 80022E5C 02002025 */   move       $a0, $s0
/* 022A10 80022E60 0C008C9B */  jal         func_8002326C
/* 022A14 80022E64 02002025 */   move       $a0, $s0
/* 022A18 80022E68 240200FF */  addiu       $v0, $zero, 0xff
/* 022A1C 80022E6C A202006C */  sb          $v0, 0x6c($s0)
/* 022A20 80022E70 A202006D */  sb          $v0, 0x6d($s0)
/* 022A24 80022E74 A202006E */  sb          $v0, 0x6e($s0)
/* 022A28 80022E78 A202006F */  sb          $v0, 0x6f($s0)
/* 022A2C 80022E7C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 022A30 80022E80 8FB10020 */  lw          $s1, 0x20($sp)
/* 022A34 80022E84 8FB0001C */  lw          $s0, 0x1c($sp)
/* 022A38 80022E88 03E00008 */  jr          $ra
/* 022A3C 80022E8C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80022E90 # 69
/* 022A40 80022E90 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 022A44 80022E94 AFA40018 */  sw          $a0, 0x18($sp)
/* 022A48 80022E98 8FAE0018 */  lw          $t6, 0x18($sp)
/* 022A4C 80022E9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 022A50 80022EA0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 022A54 80022EA4 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 022A58 80022EA8 0C00DB8B */  jal         func_80036E2C
/* 022A5C 80022EAC 8DC50050 */   lw         $a1, 0x50($t6)
/* 022A60 80022EB0 0C0043FB */  jal         func_80010FEC
/* 022A64 80022EB4 8FA40018 */   lw         $a0, 0x18($sp)
/* 022A68 80022EB8 8FA40018 */  lw          $a0, 0x18($sp)
/* 022A6C 80022EBC 0C0043FB */  jal         func_80010FEC
/* 022A70 80022EC0 24840020 */   addiu      $a0, $a0, 0x20
/* 022A74 80022EC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 022A78 80022EC8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 022A7C 80022ECC 03E00008 */  jr          $ra
/* 022A80 80022ED0 00000000 */   nop

glabel func_80022ED4 # 70
/* 022A84 80022ED4 AFA50004 */  sw          $a1, 0x4($sp)
/* 022A88 80022ED8 AFA60008 */  sw          $a2, 0x8($sp)
/* 022A8C 80022EDC AFA7000C */  sw          $a3, 0xc($sp)
/* 022A90 80022EE0 8C830044 */  lw          $v1, 0x44($a0)
/* 022A94 80022EE4 8C880040 */  lw          $t0, 0x40($a0)
/* 022A98 80022EE8 30AE00FF */  andi        $t6, $a1, 0xff
/* 022A9C 80022EEC 00031100 */  sll         $v0, $v1, 4
/* 022AA0 80022EF0 30CF00FF */  andi        $t7, $a2, 0xff
/* 022AA4 80022EF4 30F800FF */  andi        $t8, $a3, 0xff
/* 022AA8 80022EF8 03003825 */  move        $a3, $t8
/* 022AAC 80022EFC 01E03025 */  move        $a2, $t7
/* 022AB0 80022F00 01C02825 */  move        $a1, $t6
/* 022AB4 80022F04 04410003 */  bgez        $v0, .L80022F14
/* 022AB8 80022F08 0002C843 */   sra        $t9, $v0, 1
/* 022ABC 80022F0C 24410001 */  addiu       $at, $v0, 0x1
/* 022AC0 80022F10 0001C843 */  sra         $t9, $at, 1
.L80022F14:
/* 022AC4 80022F14 03201025 */  move        $v0, $t9
/* 022AC8 80022F18 05010003 */  bgez        $t0, .L80022F28
/* 022ACC 80022F1C 00086843 */   sra        $t5, $t0, 1
/* 022AD0 80022F20 25010001 */  addiu       $at, $t0, 0x1
/* 022AD4 80022F24 00016843 */  sra         $t5, $at, 1
.L80022F28:
/* 022AD8 80022F28 01A04025 */  move        $t0, $t5
/* 022ADC 80022F2C 8C890064 */  lw          $t1, 0x64($a0)
/* 022AE0 80022F30 1860003B */  blez        $v1, .L80023020
/* 022AE4 80022F34 00005025 */   move       $t2, $zero
/* 022AE8 80022F38 240C0200 */  addiu       $t4, $zero, 0x200
/* 022AEC 80022F3C 93A30013 */  lbu         $v1, 0x13($sp)
/* 022AF0 80022F40 244BFFF0 */  addiu       $t3, $v0, -0x10
.L80022F44:
/* 022AF4 80022F44 A5200000 */  sh          $zero, 0x0($t1)
/* 022AF8 80022F48 A5220002 */  sh          $v0, 0x2($t1)
/* 022AFC 80022F4C A5280004 */  sh          $t0, 0x4($t1)
/* 022B00 80022F50 A5200006 */  sh          $zero, 0x6($t1)
/* 022B04 80022F54 A5200008 */  sh          $zero, 0x8($t1)
/* 022B08 80022F58 A520000A */  sh          $zero, 0xa($t1)
/* 022B0C 80022F5C A125000C */  sb          $a1, 0xc($t1)
/* 022B10 80022F60 A126000D */  sb          $a2, 0xd($t1)
/* 022B14 80022F64 A127000E */  sb          $a3, 0xe($t1)
/* 022B18 80022F68 A123000F */  sb          $v1, 0xf($t1)
/* 022B1C 80022F6C A52B0012 */  sh          $t3, 0x12($t1)
/* 022B20 80022F70 A5200010 */  sh          $zero, 0x10($t1)
/* 022B24 80022F74 A5280014 */  sh          $t0, 0x14($t1)
/* 022B28 80022F78 A5200016 */  sh          $zero, 0x16($t1)
/* 022B2C 80022F7C A5200018 */  sh          $zero, 0x18($t1)
/* 022B30 80022F80 A52C001A */  sh          $t4, 0x1a($t1)
/* 022B34 80022F84 A125001C */  sb          $a1, 0x1c($t1)
/* 022B38 80022F88 A126001D */  sb          $a2, 0x1d($t1)
/* 022B3C 80022F8C A127001E */  sb          $a3, 0x1e($t1)
/* 022B40 80022F90 A123001F */  sb          $v1, 0x1f($t1)
/* 022B44 80022F94 A52B0022 */  sh          $t3, 0x22($t1)
/* 022B48 80022F98 A5200020 */  sh          $zero, 0x20($t1)
/* 022B4C 80022F9C 8C8E0040 */  lw          $t6, 0x40($a0)
/* 022B50 80022FA0 A5200026 */  sh          $zero, 0x26($t1)
/* 022B54 80022FA4 254A0001 */  addiu       $t2, $t2, 0x1
/* 022B58 80022FA8 010E7823 */  subu        $t7, $t0, $t6
/* 022B5C 80022FAC A52F0024 */  sh          $t7, 0x24($t1)
/* 022B60 80022FB0 8C980040 */  lw          $t8, 0x40($a0)
/* 022B64 80022FB4 A123002F */  sb          $v1, 0x2f($t1)
/* 022B68 80022FB8 A127002E */  sb          $a3, 0x2e($t1)
/* 022B6C 80022FBC 0018C940 */  sll         $t9, $t8, 5
/* 022B70 80022FC0 A5390028 */  sh          $t9, 0x28($t1)
/* 022B74 80022FC4 A126002D */  sb          $a2, 0x2d($t1)
/* 022B78 80022FC8 A125002C */  sb          $a1, 0x2c($t1)
/* 022B7C 80022FCC A52C002A */  sh          $t4, 0x2a($t1)
/* 022B80 80022FD0 A5220032 */  sh          $v0, 0x32($t1)
/* 022B84 80022FD4 A5200030 */  sh          $zero, 0x30($t1)
/* 022B88 80022FD8 8C8D0040 */  lw          $t5, 0x40($a0)
/* 022B8C 80022FDC A5200036 */  sh          $zero, 0x36($t1)
/* 022B90 80022FE0 25290040 */  addiu       $t1, $t1, 0x40
/* 022B94 80022FE4 010D7023 */  subu        $t6, $t0, $t5
/* 022B98 80022FE8 A52EFFF4 */  sh          $t6, -0xc($t1)
/* 022B9C 80022FEC 8C8F0040 */  lw          $t7, 0x40($a0)
/* 022BA0 80022FF0 A123FFFF */  sb          $v1, -0x1($t1)
/* 022BA4 80022FF4 A127FFFE */  sb          $a3, -0x2($t1)
/* 022BA8 80022FF8 000FC140 */  sll         $t8, $t7, 5
/* 022BAC 80022FFC A538FFF8 */  sh          $t8, -0x8($t1)
/* 022BB0 80023000 A126FFFD */  sb          $a2, -0x3($t1)
/* 022BB4 80023004 A125FFFC */  sb          $a1, -0x4($t1)
/* 022BB8 80023008 A520FFFA */  sh          $zero, -0x6($t1)
/* 022BBC 8002300C 8C990044 */  lw          $t9, 0x44($a0)
/* 022BC0 80023010 01601025 */  move        $v0, $t3
/* 022BC4 80023014 0159082A */  slt         $at, $t2, $t9
/* 022BC8 80023018 5420FFCA */  bnel        $at, $zero, .L80022F44
/* 022BCC 8002301C 244BFFF0 */   addiu      $t3, $v0, -0x10
.L80023020:
/* 022BD0 80023020 03E00008 */  jr          $ra
/* 022BD4 80023024 00000000 */   nop

glabel func_80023028 # 71
/* 022BD8 80023028 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 022BDC 8002302C AFB70024 */  sw          $s7, 0x24($sp)
/* 022BE0 80023030 AFB60020 */  sw          $s6, 0x20($sp)
/* 022BE4 80023034 AFB5001C */  sw          $s5, 0x1c($sp)
/* 022BE8 80023038 AFB40018 */  sw          $s4, 0x18($sp)
/* 022BEC 8002303C AFB30014 */  sw          $s3, 0x14($sp)
/* 022BF0 80023040 AFB20010 */  sw          $s2, 0x10($sp)
/* 022BF4 80023044 AFB1000C */  sw          $s1, 0xc($sp)
/* 022BF8 80023048 AFB00008 */  sw          $s0, 0x8($sp)
/* 022BFC 8002304C 8C820050 */  lw          $v0, 0x50($a0)
/* 022C00 80023050 8C860044 */  lw          $a2, 0x44($a0)
/* 022C04 80023054 8C870064 */  lw          $a3, 0x64($a0)
/* 022C08 80023058 00404825 */  move        $t1, $v0
/* 022C0C 8002305C 3C0FE700 */  lui         $t7, 0xe700
/* 022C10 80023060 24420008 */  addiu       $v0, $v0, 0x8
/* 022C14 80023064 AD2F0000 */  sw          $t7, 0x0($t1)
/* 022C18 80023068 00405025 */  move        $t2, $v0
/* 022C1C 8002306C AD200004 */  sw          $zero, 0x4($t1)
/* 022C20 80023070 24420008 */  addiu       $v0, $v0, 0x8
/* 022C24 80023074 3C18D900 */  lui         $t8, 0xd900
/* 022C28 80023078 3C190020 */  lui         $t9, (0x200005 >> 16)
/* 022C2C 8002307C 00067080 */  sll         $t6, $a2, 2
/* 022C30 80023080 01C03025 */  move        $a2, $t6
/* 022C34 80023084 37390005 */  ori         $t9, $t9, (0x200005 & 0xFFFF)
/* 022C38 80023088 AD580000 */  sw          $t8, 0x0($t2)
/* 022C3C 8002308C 00405825 */  move        $t3, $v0
/* 022C40 80023090 AD590004 */  sw          $t9, 0x4($t2)
/* 022C44 80023094 24420008 */  addiu       $v0, $v0, 0x8
/* 022C48 80023098 3C0EE200 */  lui         $t6, (0xE200001C >> 16)
/* 022C4C 8002309C 3C0F0050 */  lui         $t7, (0x5049D8 >> 16)
/* 022C50 800230A0 35EF49D8 */  ori         $t7, $t7, (0x5049D8 & 0xFFFF)
/* 022C54 800230A4 35CE001C */  ori         $t6, $t6, (0xE200001C & 0xFFFF)
/* 022C58 800230A8 00406025 */  move        $t4, $v0
/* 022C5C 800230AC AD6E0000 */  sw          $t6, 0x0($t3)
/* 022C60 800230B0 AD6F0004 */  sw          $t7, 0x4($t3)
/* 022C64 800230B4 3C18E300 */  lui         $t8, (0xE3000F00 >> 16)
/* 022C68 800230B8 37180F00 */  ori         $t8, $t8, (0xE3000F00 & 0xFFFF)
/* 022C6C 800230BC 24420008 */  addiu       $v0, $v0, 0x8
/* 022C70 800230C0 AD980000 */  sw          $t8, 0x0($t4)
/* 022C74 800230C4 AD800004 */  sw          $zero, 0x4($t4)
/* 022C78 800230C8 00404025 */  move        $t0, $v0
/* 022C7C 800230CC 24420008 */  addiu       $v0, $v0, 0x8
/* 022C80 800230D0 3C19E300 */  lui         $t9, (0xE3000D01 >> 16)
/* 022C84 800230D4 37390D01 */  ori         $t9, $t9, (0xE3000D01 & 0xFFFF)
/* 022C88 800230D8 00406025 */  move        $t4, $v0
/* 022C8C 800230DC AD190000 */  sw          $t9, 0x0($t0)
/* 022C90 800230E0 AD000004 */  sw          $zero, 0x4($t0)
/* 022C94 800230E4 3C0ED700 */  lui         $t6, (0xD7000002 >> 16)
/* 022C98 800230E8 3C097FFF */  lui         $t1, 0x7fff
/* 022C9C 800230EC 35CE0002 */  ori         $t6, $t6, (0xD7000002 & 0xFFFF)
/* 022CA0 800230F0 24420008 */  addiu       $v0, $v0, 0x8
/* 022CA4 800230F4 3C0ADB08 */  lui         $t2, (0xDB080010 >> 16)
/* 022CA8 800230F8 00406825 */  move        $t5, $v0
/* 022CAC 800230FC AD8E0000 */  sw          $t6, 0x0($t4)
/* 022CB0 80023100 AD890004 */  sw          $t1, 0x4($t4)
/* 022CB4 80023104 354A0010 */  ori         $t2, $t2, (0xDB080010 & 0xFFFF)
/* 022CB8 80023108 240B7FFF */  addiu       $t3, $zero, 0x7fff
/* 022CBC 8002310C 00808025 */  move        $s0, $a0
/* 022CC0 80023110 ADAB0004 */  sw          $t3, 0x4($t5)
/* 022CC4 80023114 ADAA0000 */  sw          $t2, 0x0($t5)
/* 022CC8 80023118 8E0F0044 */  lw          $t7, 0x44($s0)
/* 022CCC 8002311C 00001825 */  move        $v1, $zero
/* 022CD0 80023120 00002825 */  move        $a1, $zero
/* 022CD4 80023124 24420008 */  addiu       $v0, $v0, 0x8
/* 022CD8 80023128 19E0003B */  blez        $t7, .L80023218
/* 022CDC 8002312C 00002025 */   move       $a0, $zero
/* 022CE0 80023130 3C170600 */  lui         $s7, 0x600
/* 022CE4 80023134 3C160600 */  lui         $s6, 0x600
/* 022CE8 80023138 3C15DE00 */  lui         $s5, 0xde00
/* 022CEC 8002313C 3C140100 */  lui         $s4, 0x100
.L80023140:
/* 022CF0 80023140 00A3082A */  slt         $at, $a1, $v1
/* 022CF4 80023144 14200013 */  bnez        $at, .L80023194
/* 022CF8 80023148 00406025 */   move       $t4, $v0
/* 022CFC 8002314C 28C10021 */  slti        $at, $a2, 0x21
/* 022D00 80023150 14200003 */  bnez        $at, .L80023160
/* 022D04 80023154 00002825 */   move       $a1, $zero
/* 022D08 80023158 10000002 */  b           .L80023164
/* 022D0C 8002315C 24030020 */   addiu      $v1, $zero, 0x20
.L80023160:
/* 022D10 80023160 00C01825 */  move        $v1, $a2
.L80023164:
/* 022D14 80023164 307800FF */  andi        $t8, $v1, 0xff
/* 022D18 80023168 0018CB00 */  sll         $t9, $t8, 12
/* 022D1C 8002316C 306F007F */  andi        $t7, $v1, 0x7f
/* 022D20 80023170 000FC040 */  sll         $t8, $t7, 1
/* 022D24 80023174 03347025 */  or          $t6, $t9, $s4
/* 022D28 80023178 01D8C825 */  or          $t9, $t6, $t8
/* 022D2C 8002317C AD870004 */  sw          $a3, 0x4($t4)
/* 022D30 80023180 00037900 */  sll         $t7, $v1, 4
/* 022D34 80023184 AD990000 */  sw          $t9, 0x0($t4)
/* 022D38 80023188 24420008 */  addiu       $v0, $v0, 0x8
/* 022D3C 8002318C 00C33023 */  subu        $a2, $a2, $v1
/* 022D40 80023190 00EF3821 */  addu        $a3, $a3, $t7
.L80023194:
/* 022D44 80023194 000470C0 */  sll         $t6, $a0, 3
/* 022D48 80023198 00058840 */  sll         $s1, $a1, 1
/* 022D4C 8002319C 01D6C021 */  addu        $t8, $t6, $s6
/* 022D50 800231A0 00406025 */  move        $t4, $v0
/* 022D54 800231A4 323200FF */  andi        $s2, $s1, 0xff
/* 022D58 800231A8 AD980004 */  sw          $t8, 0x4($t4)
/* 022D5C 800231AC 0012CC00 */  sll         $t9, $s2, 16
/* 022D60 800231B0 262E0002 */  addiu       $t6, $s1, 0x2
/* 022D64 800231B4 26330004 */  addiu       $s3, $s1, 0x4
/* 022D68 800231B8 326F00FF */  andi        $t7, $s3, 0xff
/* 022D6C 800231BC 31D800FF */  andi        $t8, $t6, 0xff
/* 022D70 800231C0 03209025 */  move        $s2, $t9
/* 022D74 800231C4 0018CA00 */  sll         $t9, $t8, 8
/* 022D78 800231C8 01E09825 */  move        $s3, $t7
/* 022D7C 800231CC 02597825 */  or          $t7, $s2, $t9
/* 022D80 800231D0 01F37025 */  or          $t6, $t7, $s3
/* 022D84 800231D4 24420008 */  addiu       $v0, $v0, 0x8
/* 022D88 800231D8 01D7C025 */  or          $t8, $t6, $s7
/* 022D8C 800231DC AD950000 */  sw          $s5, 0x0($t4)
/* 022D90 800231E0 00406825 */  move        $t5, $v0
/* 022D94 800231E4 ADB80000 */  sw          $t8, 0x0($t5)
/* 022D98 800231E8 262E0006 */  addiu       $t6, $s1, 0x6
/* 022D9C 800231EC 0013CA00 */  sll         $t9, $s3, 8
/* 022DA0 800231F0 02597825 */  or          $t7, $s2, $t9
/* 022DA4 800231F4 31D800FF */  andi        $t8, $t6, 0xff
/* 022DA8 800231F8 01F8C825 */  or          $t9, $t7, $t8
/* 022DAC 800231FC ADB90004 */  sw          $t9, 0x4($t5)
/* 022DB0 80023200 8E0E0044 */  lw          $t6, 0x44($s0)
/* 022DB4 80023204 24840001 */  addiu       $a0, $a0, 0x1
/* 022DB8 80023208 24420008 */  addiu       $v0, $v0, 0x8
/* 022DBC 8002320C 008E082A */  slt         $at, $a0, $t6
/* 022DC0 80023210 1420FFCB */  bnez        $at, .L80023140
/* 022DC4 80023214 24A50004 */   addiu      $a1, $a1, 0x4
.L80023218:
/* 022DC8 80023218 00401825 */  move        $v1, $v0
/* 022DCC 8002321C 24440008 */  addiu       $a0, $v0, 0x8
/* 022DD0 80023220 3C0FD700 */  lui         $t7, 0xd700
/* 022DD4 80023224 AC6F0000 */  sw          $t7, 0x0($v1)
/* 022DD8 80023228 AC690004 */  sw          $t1, 0x4($v1)
/* 022DDC 8002322C AC8B0004 */  sw          $t3, 0x4($a0)
/* 022DE0 80023230 AC8A0000 */  sw          $t2, 0x0($a0)
/* 022DE4 80023234 24820008 */  addiu       $v0, $a0, 0x8
/* 022DE8 80023238 3C18DF00 */  lui         $t8, 0xdf00
/* 022DEC 8002323C AC580000 */  sw          $t8, 0x0($v0)
/* 022DF0 80023240 AC400004 */  sw          $zero, 0x4($v0)
/* 022DF4 80023244 8FB70024 */  lw          $s7, 0x24($sp)
/* 022DF8 80023248 8FB60020 */  lw          $s6, 0x20($sp)
/* 022DFC 8002324C 8FB5001C */  lw          $s5, 0x1c($sp)
/* 022E00 80023250 8FB40018 */  lw          $s4, 0x18($sp)
/* 022E04 80023254 8FB30014 */  lw          $s3, 0x14($sp)
/* 022E08 80023258 8FB20010 */  lw          $s2, 0x10($sp)
/* 022E0C 8002325C 8FB1000C */  lw          $s1, 0xc($sp)
/* 022E10 80023260 8FB00008 */  lw          $s0, 0x8($sp)
/* 022E14 80023264 03E00008 */  jr          $ra
/* 022E18 80023268 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002326C # 72
/* 022E1C 8002326C 8C8E0044 */  lw          $t6, 0x44($a0)
/* 022E20 80023270 8C820054 */  lw          $v0, 0x54($a0)
/* 022E24 80023274 00001825 */  move        $v1, $zero
/* 022E28 80023278 000E7840 */  sll         $t7, $t6, 1
/* 022E2C 8002327C 19E0000B */  blez        $t7, .L800232AC
/* 022E30 80023280 3C06DF00 */   lui        $a2, 0xdf00
/* 022E34 80023284 00402825 */  move        $a1, $v0
.L80023288:
/* 022E38 80023288 ACA60000 */  sw          $a2, 0x0($a1)
/* 022E3C 8002328C ACA00004 */  sw          $zero, 0x4($a1)
/* 022E40 80023290 8C980044 */  lw          $t8, 0x44($a0)
/* 022E44 80023294 24630001 */  addiu       $v1, $v1, 0x1
/* 022E48 80023298 24420008 */  addiu       $v0, $v0, 0x8
/* 022E4C 8002329C 0018C840 */  sll         $t9, $t8, 1
/* 022E50 800232A0 0079082A */  slt         $at, $v1, $t9
/* 022E54 800232A4 5420FFF8 */  bnel        $at, $zero, .L80023288
/* 022E58 800232A8 00402825 */   move       $a1, $v0
.L800232AC:
/* 022E5C 800232AC 03E00008 */  jr          $ra
/* 022E60 800232B0 00000000 */   nop

glabel func_800232B4 # 73
/* 022E64 800232B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 022E68 800232B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 022E6C 800232BC 8C8E0048 */  lw          $t6, 0x48($a0)
/* 022E70 800232C0 3C07800B */  lui         $a3, %hi(D_800B1A70)
/* 022E74 800232C4 00802825 */  move        $a1, $a0
/* 022E78 800232C8 11C00005 */  beqz        $t6, .L800232E0
/* 022E7C 800232CC 24E71A70 */   addiu      $a3, $a3, %lo(D_800B1A70)
/* 022E80 800232D0 8C8F004C */  lw          $t7, 0x4c($a0)
/* 022E84 800232D4 AC800048 */  sw          $zero, 0x48($a0)
/* 022E88 800232D8 39F80001 */  xori        $t8, $t7, 0x1
/* 022E8C 800232DC AC98004C */  sw          $t8, 0x4c($a0)
.L800232E0:
/* 022E90 800232E0 8CE30000 */  lw          $v1, 0x0($a3)
/* 022E94 800232E4 3C09DB06 */  lui         $t1, (0xDB060018 >> 16)
/* 022E98 800232E8 35290018 */  ori         $t1, $t1, (0xDB060018 & 0xFFFF)
/* 022E9C 800232EC 24790008 */  addiu       $t9, $v1, 0x8
/* 022EA0 800232F0 ACF90000 */  sw          $t9, 0x0($a3)
/* 022EA4 800232F4 AC690000 */  sw          $t1, 0x0($v1)
/* 022EA8 800232F8 8CAA004C */  lw          $t2, 0x4c($a1)
/* 022EAC 800232FC 000A5880 */  sll         $t3, $t2, 2
/* 022EB0 80023300 00AB6021 */  addu        $t4, $a1, $t3
/* 022EB4 80023304 8D840054 */  lw          $a0, 0x54($t4)
/* 022EB8 80023308 AFA50020 */  sw          $a1, 0x20($sp)
/* 022EBC 8002330C 0C0140F4 */  jal         osVirtualToPhysical
/* 022EC0 80023310 AFA3001C */   sw         $v1, 0x1c($sp)
/* 022EC4 80023314 8FA8001C */  lw          $t0, 0x1c($sp)
/* 022EC8 80023318 8FA50020 */  lw          $a1, 0x20($sp)
/* 022ECC 8002331C 3C07800B */  lui         $a3, %hi(D_800B1A70)
/* 022ED0 80023320 24E71A70 */  addiu       $a3, $a3, %lo(D_800B1A70)
/* 022ED4 80023324 AD020004 */  sw          $v0, 0x4($t0)
/* 022ED8 80023328 8CE30000 */  lw          $v1, 0x0($a3)
/* 022EDC 8002332C 3C0EE700 */  lui         $t6, 0xe700
/* 022EE0 80023330 3C18FA00 */  lui         $t8, 0xfa00
/* 022EE4 80023334 246D0008 */  addiu       $t5, $v1, 0x8
/* 022EE8 80023338 ACED0000 */  sw          $t5, 0x0($a3)
/* 022EEC 8002333C AC600004 */  sw          $zero, 0x4($v1)
/* 022EF0 80023340 AC6E0000 */  sw          $t6, 0x0($v1)
/* 022EF4 80023344 8CE30000 */  lw          $v1, 0x0($a3)
/* 022EF8 80023348 246F0008 */  addiu       $t7, $v1, 0x8
/* 022EFC 8002334C ACEF0000 */  sw          $t7, 0x0($a3)
/* 022F00 80023350 AC780000 */  sw          $t8, 0x0($v1)
/* 022F04 80023354 90AB006C */  lbu         $t3, 0x6c($a1)
/* 022F08 80023358 90A9006F */  lbu         $t1, 0x6f($a1)
/* 022F0C 8002335C 90AF006D */  lbu         $t7, 0x6d($a1)
/* 022F10 80023360 000B6600 */  sll         $t4, $t3, 24
/* 022F14 80023364 90AB006E */  lbu         $t3, 0x6e($a1)
/* 022F18 80023368 012C6825 */  or          $t5, $t1, $t4
/* 022F1C 8002336C 000FC400 */  sll         $t8, $t7, 16
/* 022F20 80023370 01B8C825 */  or          $t9, $t5, $t8
/* 022F24 80023374 000B4A00 */  sll         $t1, $t3, 8
/* 022F28 80023378 03296025 */  or          $t4, $t9, $t1
/* 022F2C 8002337C AC6C0004 */  sw          $t4, 0x4($v1)
/* 022F30 80023380 8FBF0014 */  lw          $ra, 0x14($sp)
/* 022F34 80023384 8CA20050 */  lw          $v0, 0x50($a1)
/* 022F38 80023388 27BD0020 */  addiu       $sp, $sp, 0x20
/* 022F3C 8002338C 03E00008 */  jr          $ra
/* 022F40 80023390 00000000 */   nop

glabel func_80023394 # 74
/* 022F44 80023394 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 022F48 80023398 AFB40028 */  sw          $s4, 0x28($sp)
/* 022F4C 8002339C 0080A025 */  move        $s4, $a0
/* 022F50 800233A0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 022F54 800233A4 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 022F58 800233A8 AFBE0038 */  sw          $fp, 0x38($sp)
/* 022F5C 800233AC AFB70034 */  sw          $s7, 0x34($sp)
/* 022F60 800233B0 AFB60030 */  sw          $s6, 0x30($sp)
/* 022F64 800233B4 AFB5002C */  sw          $s5, 0x2c($sp)
/* 022F68 800233B8 AFB30024 */  sw          $s3, 0x24($sp)
/* 022F6C 800233BC AFB20020 */  sw          $s2, 0x20($sp)
/* 022F70 800233C0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 022F74 800233C4 AFB00018 */  sw          $s0, 0x18($sp)
/* 022F78 800233C8 0C00F131 */  jal         func_8003C4C4
/* 022F7C 800233CC 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 022F80 800233D0 8E82004C */  lw          $v0, 0x4c($s4)
/* 022F84 800233D4 3C1EFC40 */  lui         $fp, (0xFC40C3FF >> 16)
/* 022F88 800233D8 37DEC3FF */  ori         $fp, $fp, (0xFC40C3FF & 0xFFFF)
/* 022F8C 800233DC 384E0001 */  xori        $t6, $v0, 0x1
/* 022F90 800233E0 000E7880 */  sll         $t7, $t6, 2
/* 022F94 800233E4 028F1821 */  addu        $v1, $s4, $t7
/* 022F98 800233E8 8C78005C */  lw          $t8, 0x5c($v1)
/* 022F9C 800233EC 8C710054 */  lw          $s1, 0x54($v1)
/* 022FA0 800233F0 000EC940 */  sll         $t9, $t6, 5
/* 022FA4 800233F4 AFB80074 */  sw          $t8, 0x74($sp)
/* 022FA8 800233F8 8E890044 */  lw          $t1, 0x44($s4)
/* 022FAC 800233FC 02994021 */  addu        $t0, $s4, $t9
/* 022FB0 80023400 8D100014 */  lw          $s0, 0x14($t0)
/* 022FB4 80023404 00009025 */  move        $s2, $zero
/* 022FB8 80023408 19200045 */  blez        $t1, .L80023520
/* 022FBC 8002340C 26100004 */   addiu      $s0, $s0, 0x4
/* 022FC0 80023410 24170002 */  addiu       $s7, $zero, 0x2
/* 022FC4 80023414 27B60074 */  addiu       $s6, $sp, 0x74
/* 022FC8 80023418 3C15DE01 */  lui         $s5, 0xde01
/* 022FCC 8002341C 02201025 */  move        $v0, $s1
.L80023420:
/* 022FD0 80023420 AC550000 */  sw          $s5, 0x0($v0)
/* 022FD4 80023424 8FAA0074 */  lw          $t2, 0x74($sp)
/* 022FD8 80023428 26310008 */  addiu       $s1, $s1, 0x8
/* 022FDC 8002342C 3C0CD700 */  lui         $t4, 0xd700
/* 022FE0 80023430 AC4A0004 */  sw          $t2, 0x4($v0)
/* 022FE4 80023434 8E050000 */  lw          $a1, 0x0($s0)
/* 022FE8 80023438 8FAA0074 */  lw          $t2, 0x74($sp)
/* 022FEC 8002343C 3C0D7FFF */  lui         $t5, 0x7fff
/* 022FF0 80023440 10A00017 */  beqz        $a1, .L800234A0
/* 022FF4 80023444 254B0008 */   addiu      $t3, $t2, 0x8
/* 022FF8 80023448 0C00F48E */  jal         func_8003D238
/* 022FFC 8002344C 02C02025 */   move       $a0, $s6
/* 023000 80023450 8E0B0000 */  lw          $t3, 0x0($s0)
/* 023004 80023454 8FB80074 */  lw          $t8, 0x74($sp)
/* 023008 80023458 3C08FC44 */  lui         $t0, (0xFC4417FF >> 16)
/* 02300C 8002345C 8D6C000C */  lw          $t4, 0xc($t3)
/* 023010 80023460 350817FF */  ori         $t0, $t0, (0xFC4417FF & 0xFFFF)
/* 023014 80023464 3C093FFD */  lui         $t1, (0x3FFDFE38 >> 16)
/* 023018 80023468 16EC0008 */  bne         $s7, $t4, .L8002348C
/* 02301C 8002346C 27190008 */   addiu      $t9, $t8, 0x8
/* 023020 80023470 8FAD0074 */  lw          $t5, 0x74($sp)
/* 023024 80023474 240FFE38 */  addiu       $t7, $zero, -0x1c8
/* 023028 80023478 25AE0008 */  addiu       $t6, $t5, 0x8
/* 02302C 8002347C AFAE0074 */  sw          $t6, 0x74($sp)
/* 023030 80023480 ADAF0004 */  sw          $t7, 0x4($t5)
/* 023034 80023484 1000001A */  b           .L800234F0
/* 023038 80023488 ADBE0000 */   sw         $fp, 0x0($t5)
.L8002348C:
/* 02303C 8002348C AFB90074 */  sw          $t9, 0x74($sp)
/* 023040 80023490 3529FE38 */  ori         $t1, $t1, (0x3FFDFE38 & 0xFFFF)
/* 023044 80023494 AF090004 */  sw          $t1, 0x4($t8)
/* 023048 80023498 10000015 */  b           .L800234F0
/* 02304C 8002349C AF080000 */   sw         $t0, 0x0($t8)
.L800234A0:
/* 023050 800234A0 AFAB0074 */  sw          $t3, 0x74($sp)
/* 023054 800234A4 AD4D0004 */  sw          $t5, 0x4($t2)
/* 023058 800234A8 AD4C0000 */  sw          $t4, 0x0($t2)
/* 02305C 800234AC 8FAE0074 */  lw          $t6, 0x74($sp)
/* 023060 800234B0 3C18DB08 */  lui         $t8, (0xDB080010 >> 16)
/* 023064 800234B4 37180010 */  ori         $t8, $t8, (0xDB080010 & 0xFFFF)
/* 023068 800234B8 25CF0008 */  addiu       $t7, $t6, 0x8
/* 02306C 800234BC AFAF0074 */  sw          $t7, 0x74($sp)
/* 023070 800234C0 24197FFF */  addiu       $t9, $zero, 0x7fff
/* 023074 800234C4 ADD90004 */  sw          $t9, 0x4($t6)
/* 023078 800234C8 ADD80000 */  sw          $t8, 0x0($t6)
/* 02307C 800234CC 8FA80074 */  lw          $t0, 0x74($sp)
/* 023080 800234D0 3C0AFCFF */  lui         $t2, (0xFCFFFFFF >> 16)
/* 023084 800234D4 3C0BFFFD */  lui         $t3, (0xFFFDF638 >> 16)
/* 023088 800234D8 25090008 */  addiu       $t1, $t0, 0x8
/* 02308C 800234DC AFA90074 */  sw          $t1, 0x74($sp)
/* 023090 800234E0 356BF638 */  ori         $t3, $t3, (0xFFFDF638 & 0xFFFF)
/* 023094 800234E4 354AFFFF */  ori         $t2, $t2, (0xFCFFFFFF & 0xFFFF)
/* 023098 800234E8 AD0A0000 */  sw          $t2, 0x0($t0)
/* 02309C 800234EC AD0B0004 */  sw          $t3, 0x4($t0)
.L800234F0:
/* 0230A0 800234F0 8FAC0074 */  lw          $t4, 0x74($sp)
/* 0230A4 800234F4 3C0EDF00 */  lui         $t6, 0xdf00
/* 0230A8 800234F8 26520001 */  addiu       $s2, $s2, 0x1
/* 0230AC 800234FC 258D0008 */  addiu       $t5, $t4, 0x8
/* 0230B0 80023500 AFAD0074 */  sw          $t5, 0x74($sp)
/* 0230B4 80023504 AD800004 */  sw          $zero, 0x4($t4)
/* 0230B8 80023508 AD8E0000 */  sw          $t6, 0x0($t4)
/* 0230BC 8002350C 8E8F0044 */  lw          $t7, 0x44($s4)
/* 0230C0 80023510 26100004 */  addiu       $s0, $s0, 0x4
/* 0230C4 80023514 024F082A */  slt         $at, $s2, $t7
/* 0230C8 80023518 5420FFC1 */  bnel        $at, $zero, .L80023420
/* 0230CC 8002351C 02201025 */   move       $v0, $s1
.L80023520:
/* 0230D0 80023520 24180001 */  addiu       $t8, $zero, 0x1
/* 0230D4 80023524 AE980048 */  sw          $t8, 0x48($s4)
/* 0230D8 80023528 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0230DC 8002352C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0230E0 80023530 8FB70034 */  lw          $s7, 0x34($sp)
/* 0230E4 80023534 8FB60030 */  lw          $s6, 0x30($sp)
/* 0230E8 80023538 8FB5002C */  lw          $s5, 0x2c($sp)
/* 0230EC 8002353C 8FB40028 */  lw          $s4, 0x28($sp)
/* 0230F0 80023540 8FB30024 */  lw          $s3, 0x24($sp)
/* 0230F4 80023544 8FB20020 */  lw          $s2, 0x20($sp)
/* 0230F8 80023548 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0230FC 8002354C 8FB00018 */  lw          $s0, 0x18($sp)
/* 023100 80023550 03E00008 */  jr          $ra
/* 023104 80023554 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_80023558 # 75
/* 023108 80023558 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02310C 8002355C AFBF0034 */  sw          $ra, 0x34($sp)
/* 023110 80023560 AFB40030 */  sw          $s4, 0x30($sp)
/* 023114 80023564 AFB3002C */  sw          $s3, 0x2c($sp)
/* 023118 80023568 AFB20028 */  sw          $s2, 0x28($sp)
/* 02311C 8002356C AFB10024 */  sw          $s1, 0x24($sp)
/* 023120 80023570 AFB00020 */  sw          $s0, 0x20($sp)
/* 023124 80023574 8C82004C */  lw          $v0, 0x4c($a0)
/* 023128 80023578 00808825 */  move        $s1, $a0
/* 02312C 8002357C 00C09025 */  move        $s2, $a2
/* 023130 80023580 384E0001 */  xori        $t6, $v0, 0x1
/* 023134 80023584 000E7940 */  sll         $t7, $t6, 5
/* 023138 80023588 008FA021 */  addu        $s4, $a0, $t7
/* 02313C 8002358C 00A09825 */  move        $s3, $a1
/* 023140 80023590 0C0045A9 */  jal         func_800116A4
/* 023144 80023594 02802025 */   move       $a0, $s4
/* 023148 80023598 12400029 */  beqz        $s2, .L80023640
.L8002359C:
/* 02314C 8002359C 02802025 */   move       $a0, $s4
/* 023150 800235A0 0C004538 */  jal         func_800114E0
/* 023154 800235A4 8E650000 */   lw         $a1, 0x0($s3)
/* 023158 800235A8 82230071 */  lb          $v1, 0x71($s1)
/* 02315C 800235AC 00408025 */  move        $s0, $v0
/* 023160 800235B0 0460000F */  bltz        $v1, .L800235F0
/* 023164 800235B4 28610010 */   slti       $at, $v1, 0x10
/* 023168 800235B8 1020000D */  beqz        $at, .L800235F0
/* 02316C 800235BC 00402025 */   move       $a0, $v0
/* 023170 800235C0 24050001 */  addiu       $a1, $zero, 0x1
/* 023174 800235C4 00003025 */  move        $a2, $zero
/* 023178 800235C8 00003825 */  move        $a3, $zero
/* 02317C 800235CC 0C0045D3 */  jal         func_8001174C
/* 023180 800235D0 AFA30010 */   sw         $v1, 0x10($sp)
/* 023184 800235D4 82380071 */  lb          $t8, 0x71($s1)
/* 023188 800235D8 02002025 */  move        $a0, $s0
/* 02318C 800235DC 00002825 */  move        $a1, $zero
/* 023190 800235E0 24060001 */  addiu       $a2, $zero, 0x1
/* 023194 800235E4 00003825 */  move        $a3, $zero
/* 023198 800235E8 0C0045D3 */  jal         func_8001174C
/* 02319C 800235EC AFB80010 */   sw         $t8, 0x10($sp)
.L800235F0:
/* 0231A0 800235F0 82220070 */  lb          $v0, 0x70($s1)
/* 0231A4 800235F4 0440000F */  bltz        $v0, .L80023634
/* 0231A8 800235F8 28410010 */   slti       $at, $v0, 0x10
/* 0231AC 800235FC 1020000D */  beqz        $at, .L80023634
/* 0231B0 80023600 02002025 */   move       $a0, $s0
/* 0231B4 80023604 2405FFFF */  addiu       $a1, $zero, -0x1
/* 0231B8 80023608 00003025 */  move        $a2, $zero
/* 0231BC 8002360C 00003825 */  move        $a3, $zero
/* 0231C0 80023610 0C0045D3 */  jal         func_8001174C
/* 0231C4 80023614 AFA20010 */   sw         $v0, 0x10($sp)
/* 0231C8 80023618 82390070 */  lb          $t9, 0x70($s1)
/* 0231CC 8002361C 02002025 */  move        $a0, $s0
/* 0231D0 80023620 00002825 */  move        $a1, $zero
/* 0231D4 80023624 2406FFFF */  addiu       $a2, $zero, -0x1
/* 0231D8 80023628 00003825 */  move        $a3, $zero
/* 0231DC 8002362C 0C0045D3 */  jal         func_8001174C
/* 0231E0 80023630 AFB90010 */   sw         $t9, 0x10($sp)
.L80023634:
/* 0231E4 80023634 2652FFFF */  addiu       $s2, $s2, -0x1
/* 0231E8 80023638 1640FFD8 */  bnez        $s2, .L8002359C
/* 0231EC 8002363C 26730004 */   addiu      $s3, $s3, 0x4
.L80023640:
/* 0231F0 80023640 0C008CE5 */  jal         func_80023394
/* 0231F4 80023644 02202025 */   move       $a0, $s1
/* 0231F8 80023648 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0231FC 8002364C 8FB00020 */  lw          $s0, 0x20($sp)
/* 023200 80023650 8FB10024 */  lw          $s1, 0x24($sp)
/* 023204 80023654 8FB20028 */  lw          $s2, 0x28($sp)
/* 023208 80023658 8FB3002C */  lw          $s3, 0x2c($sp)
/* 02320C 8002365C 8FB40030 */  lw          $s4, 0x30($sp)
/* 023210 80023660 03E00008 */  jr          $ra
/* 023214 80023664 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80023668 # 76
/* 023218 80023668 AFA50004 */  sw          $a1, 0x4($sp)
/* 02321C 8002366C AFA60008 */  sw          $a2, 0x8($sp)
/* 023220 80023670 AFA7000C */  sw          $a3, 0xc($sp)
/* 023224 80023674 A085006C */  sb          $a1, 0x6c($a0)
/* 023228 80023678 A086006D */  sb          $a2, 0x6d($a0)
/* 02322C 8002367C A087006E */  sb          $a3, 0x6e($a0)
/* 023230 80023680 93B90013 */  lbu         $t9, 0x13($sp)
/* 023234 80023684 03E00008 */  jr          $ra
/* 023238 80023688 A099006F */   sb         $t9, 0x6f($a0)

glabel func_8002368C # 77
/* 02323C 8002368C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 023240 80023690 AFA40020 */  sw          $a0, 0x20($sp)
/* 023244 80023694 AFBF0014 */  sw          $ra, 0x14($sp)
/* 023248 80023698 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 02324C 8002369C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 023250 800236A0 24050088 */  addiu       $a1, $zero, 0x88
/* 023254 800236A4 0C00DA76 */  jal         func_800369D8
/* 023258 800236A8 240601BC */   addiu      $a2, $zero, 0x1bc
/* 02325C 800236AC AFA2001C */  sw          $v0, 0x1c($sp)
/* 023260 800236B0 00402025 */  move        $a0, $v0
/* 023264 800236B4 0C013C58 */  jal         func_8004F160
/* 023268 800236B8 24050088 */   addiu      $a1, $zero, 0x88
/* 02326C 800236BC 8FAE001C */  lw          $t6, 0x1c($sp)
/* 023270 800236C0 8FAF0020 */  lw          $t7, 0x20($sp)
/* 023274 800236C4 ADEE0054 */  sw          $t6, 0x54($t7)
/* 023278 800236C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02327C 800236CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 023280 800236D0 03E00008 */  jr          $ra
/* 023284 800236D4 00000000 */   nop

glabel func_800236D8 # 78
/* 023288 800236D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02328C 800236DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 023290 800236E0 8C850054 */  lw          $a1, 0x54($a0)
/* 023294 800236E4 24A40014 */  addiu       $a0, $a1, 0x14
/* 023298 800236E8 0C008BA4 */  jal         func_80022E90
/* 02329C 800236EC AFA5001C */   sw         $a1, 0x1c($sp)
/* 0232A0 800236F0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 0232A4 800236F4 8FA5001C */  lw          $a1, 0x1c($sp)
/* 0232A8 800236F8 0C00DB8B */  jal         func_80036E2C
/* 0232AC 800236FC 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 0232B0 80023700 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0232B4 80023704 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0232B8 80023708 03E00008 */  jr          $ra
/* 0232BC 8002370C 00000000 */   nop

glabel func_80023710 # 79
/* 0232C0 80023710 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0232C4 80023714 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0232C8 80023718 8C820054 */  lw          $v0, 0x54($a0)
/* 0232CC 8002371C 00803825 */  move        $a3, $a0
/* 0232D0 80023720 8C4E0000 */  lw          $t6, 0x0($v0)
/* 0232D4 80023724 51C0004F */  beql        $t6, $zero, .L80023864
/* 0232D8 80023728 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0232DC 8002372C 44806000 */  mtc1        $zero, $f12
/* 0232E0 80023730 C4400010 */  lwc1        $f0, 0x10($v0)
/* 0232E4 80023734 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 0232E8 80023738 46006032 */  c.eq.s      $f12, $f0
/* 0232EC 8002373C 00000000 */  nop
/* 0232F0 80023740 45030046 */  bc1tl       .L8002385C
/* 0232F4 80023744 C446000C */   lwc1       $f6, 0xc($v0)
/* 0232F8 80023748 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 0232FC 8002374C C444000C */  lwc1        $f4, 0xc($v0)
/* 023300 80023750 4600603C */  c.lt.s      $f12, $f0
/* 023304 80023754 46060202 */  mul.s       $f8, $f0, $f6
/* 023308 80023758 8C430004 */  lw          $v1, 0x4($v0)
/* 02330C 8002375C 3C014180 */  lui         $at, 0x4180
/* 023310 80023760 46082280 */  add.s       $f10, $f4, $f8
/* 023314 80023764 45000019 */  bc1f        .L800237CC
/* 023318 80023768 E44A000C */   swc1       $f10, 0xc($v0)
/* 02331C 8002376C 44811000 */  mtc1        $at, $f2
/* 023320 80023770 C440000C */  lwc1        $f0, 0xc($v0)
/* 023324 80023774 4600103E */  c.le.s      $f2, $f0
/* 023328 80023778 00000000 */  nop
/* 02332C 8002377C 4502000A */  bc1fl       .L800237A8
/* 023330 80023780 8C4F0008 */   lw         $t7, 0x8($v0)
/* 023334 80023784 46020401 */  sub.s       $f16, $f0, $f2
.L80023788:
/* 023338 80023788 24630001 */  addiu       $v1, $v1, 0x1
/* 02333C 8002378C E450000C */  swc1        $f16, 0xc($v0)
/* 023340 80023790 C440000C */  lwc1        $f0, 0xc($v0)
/* 023344 80023794 4600103E */  c.le.s      $f2, $f0
/* 023348 80023798 00000000 */  nop
/* 02334C 8002379C 4503FFFA */  bc1tl       .L80023788
/* 023350 800237A0 46020401 */   sub.s      $f16, $f0, $f2
/* 023354 800237A4 8C4F0008 */  lw          $t7, 0x8($v0)
.L800237A8:
/* 023358 800237A8 8C580058 */  lw          $t8, 0x58($v0)
/* 02335C 800237AC 01F82023 */  subu        $a0, $t7, $t8
/* 023360 800237B0 0064082A */  slt         $at, $v1, $a0
/* 023364 800237B4 5420001B */  bnel        $at, $zero, .L80023824
/* 023368 800237B8 8C590004 */   lw         $t9, 0x4($v0)
/* 02336C 800237BC 00801825 */  move        $v1, $a0
/* 023370 800237C0 E44C0010 */  swc1        $f12, 0x10($v0)
/* 023374 800237C4 10000016 */  b           .L80023820
/* 023378 800237C8 E44C000C */   swc1       $f12, 0xc($v0)
.L800237CC:
/* 02337C 800237CC C440000C */  lwc1        $f0, 0xc($v0)
/* 023380 800237D0 3C014180 */  lui         $at, 0x4180
/* 023384 800237D4 460C003C */  c.lt.s      $f0, $f12
/* 023388 800237D8 00000000 */  nop
/* 02338C 800237DC 4500000B */  bc1f        .L8002380C
/* 023390 800237E0 00000000 */   nop
/* 023394 800237E4 44811000 */  mtc1        $at, $f2
/* 023398 800237E8 00000000 */  nop
/* 02339C 800237EC 46020480 */  add.s       $f18, $f0, $f2
.L800237F0:
/* 0233A0 800237F0 2463FFFF */  addiu       $v1, $v1, -0x1
/* 0233A4 800237F4 E452000C */  swc1        $f18, 0xc($v0)
/* 0233A8 800237F8 C440000C */  lwc1        $f0, 0xc($v0)
/* 0233AC 800237FC 460C003C */  c.lt.s      $f0, $f12
/* 0233B0 80023800 00000000 */  nop
/* 0233B4 80023804 4503FFFA */  bc1tl       .L800237F0
/* 0233B8 80023808 46020480 */   add.s      $f18, $f0, $f2
.L8002380C:
/* 0233BC 8002380C 04630005 */  bgezl       $v1, .L80023824
/* 0233C0 80023810 8C590004 */   lw         $t9, 0x4($v0)
/* 0233C4 80023814 00001825 */  move        $v1, $zero
/* 0233C8 80023818 E44C0010 */  swc1        $f12, 0x10($v0)
/* 0233CC 8002381C E44C000C */  swc1        $f12, 0xc($v0)
.L80023820:
/* 0233D0 80023820 8C590004 */  lw          $t9, 0x4($v0)
.L80023824:
/* 0233D4 80023824 24440014 */  addiu       $a0, $v0, 0x14
/* 0233D8 80023828 00034880 */  sll         $t1, $v1, 2
/* 0233DC 8002382C 5079000B */  beql        $v1, $t9, .L8002385C
/* 0233E0 80023830 C446000C */   lwc1       $f6, 0xc($v0)
/* 0233E4 80023834 8C480000 */  lw          $t0, 0x0($v0)
/* 0233E8 80023838 AC430004 */  sw          $v1, 0x4($v0)
/* 0233EC 8002383C 8C460058 */  lw          $a2, 0x58($v0)
/* 0233F0 80023840 AFA70020 */  sw          $a3, 0x20($sp)
/* 0233F4 80023844 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0233F8 80023848 0C008D56 */  jal         func_80023558
/* 0233FC 8002384C 01092821 */   addu       $a1, $t0, $t1
/* 023400 80023850 8FA2001C */  lw          $v0, 0x1c($sp)
/* 023404 80023854 8FA70020 */  lw          $a3, 0x20($sp)
/* 023408 80023858 C446000C */  lwc1        $f6, 0xc($v0)
.L8002385C:
/* 02340C 8002385C E4E6001C */  swc1        $f6, 0x1c($a3)
/* 023410 80023860 8FBF0014 */  lw          $ra, 0x14($sp)
.L80023864:
/* 023414 80023864 27BD0020 */  addiu       $sp, $sp, 0x20
/* 023418 80023868 03E00008 */  jr          $ra
/* 02341C 8002386C 00000000 */   nop

glabel func_80023870 # 80
/* 023420 80023870 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 023424 80023874 AFBF0014 */  sw          $ra, 0x14($sp)
/* 023428 80023878 8C820054 */  lw          $v0, 0x54($a0)
/* 02342C 8002387C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 023430 80023880 51C00006 */  beql        $t6, $zero, .L8002389C
/* 023434 80023884 00001025 */   move       $v0, $zero
/* 023438 80023888 0C008CAD */  jal         func_800232B4
/* 02343C 8002388C 24440014 */   addiu      $a0, $v0, 0x14
/* 023440 80023890 10000003 */  b           .L800238A0
/* 023444 80023894 8FBF0014 */   lw         $ra, 0x14($sp)
/* 023448 80023898 00001025 */  move        $v0, $zero
.L8002389C:
/* 02344C 8002389C 8FBF0014 */  lw          $ra, 0x14($sp)
.L800238A0:
/* 023450 800238A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 023454 800238A4 03E00008 */  jr          $ra
/* 023458 800238A8 00000000 */   nop

glabel func_800238AC # 81
/* 02345C 800238AC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 023460 800238B0 AFA40038 */  sw          $a0, 0x38($sp)
/* 023464 800238B4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 023468 800238B8 3C04800A */  lui         $a0, %hi(D_8009EBB0)
/* 02346C 800238BC AFA5003C */  sw          $a1, 0x3c($sp)
/* 023470 800238C0 AFA60040 */  sw          $a2, 0x40($sp)
/* 023474 800238C4 AFA70044 */  sw          $a3, 0x44($sp)
/* 023478 800238C8 0C001AD8 */  jal         func_80006B60
/* 02347C 800238CC 2484EBB0 */   addiu      $a0, $a0, %lo(D_8009EBB0)
/* 023480 800238D0 AFA20030 */  sw          $v0, 0x30($sp)
/* 023484 800238D4 8C430054 */  lw          $v1, 0x54($v0)
/* 023488 800238D8 93AE0047 */  lbu         $t6, 0x47($sp)
/* 02348C 800238DC 93AF004B */  lbu         $t7, 0x4b($sp)
/* 023490 800238E0 93B8004F */  lbu         $t8, 0x4f($sp)
/* 023494 800238E4 8FB90050 */  lw          $t9, 0x50($sp)
/* 023498 800238E8 8FA80054 */  lw          $t0, 0x54($sp)
/* 02349C 800238EC 8FA50038 */  lw          $a1, 0x38($sp)
/* 0234A0 800238F0 8FA6003C */  lw          $a2, 0x3c($sp)
/* 0234A4 800238F4 93A70043 */  lbu         $a3, 0x43($sp)
/* 0234A8 800238F8 24640014 */  addiu       $a0, $v1, 0x14
/* 0234AC 800238FC AFAE0010 */  sw          $t6, 0x10($sp)
/* 0234B0 80023900 AFAF0014 */  sw          $t7, 0x14($sp)
/* 0234B4 80023904 AFB80018 */  sw          $t8, 0x18($sp)
/* 0234B8 80023908 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0234BC 8002390C 0C008B54 */  jal         func_80022D50
/* 0234C0 80023910 AFA80020 */   sw         $t0, 0x20($sp)
/* 0234C4 80023914 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0234C8 80023918 8FA20030 */  lw          $v0, 0x30($sp)
/* 0234CC 8002391C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0234D0 80023920 03E00008 */  jr          $ra
/* 0234D4 80023924 00000000 */   nop

glabel func_80023928 # 82
/* 0234D8 80023928 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0234DC 8002392C AFBF001C */  sw          $ra, 0x1c($sp)
/* 0234E0 80023930 AFB00018 */  sw          $s0, 0x18($sp)
/* 0234E4 80023934 AFA40030 */  sw          $a0, 0x30($sp)
/* 0234E8 80023938 AFA60038 */  sw          $a2, 0x38($sp)
/* 0234EC 8002393C 00A08025 */  move        $s0, $a1
/* 0234F0 80023940 14A00004 */  bnez        $a1, .L80023954
/* 0234F4 80023944 8C870054 */   lw         $a3, 0x54($a0)
/* 0234F8 80023948 ACE50000 */  sw          $a1, 0x0($a3)
/* 0234FC 8002394C 1000001F */  b           .L800239CC
/* 023500 80023950 ACE00008 */   sw         $zero, 0x8($a3)
.L80023954:
/* 023504 80023954 8E0F0000 */  lw          $t7, 0x0($s0)
/* 023508 80023958 44800000 */  mtc1        $zero, $f0
/* 02350C 8002395C 00001825 */  move        $v1, $zero
/* 023510 80023960 11E00006 */  beqz        $t7, .L8002397C
/* 023514 80023964 02001025 */   move       $v0, $s0
/* 023518 80023968 8C580004 */  lw          $t8, 0x4($v0)
.L8002396C:
/* 02351C 8002396C 24630001 */  addiu       $v1, $v1, 0x1
/* 023520 80023970 24420004 */  addiu       $v0, $v0, 0x4
/* 023524 80023974 5700FFFD */  bnel        $t8, $zero, .L8002396C
/* 023528 80023978 8C580004 */   lw         $t8, 0x4($v0)
.L8002397C:
/* 02352C 8002397C ACE30008 */  sw          $v1, 0x8($a3)
/* 023530 80023980 ACF00000 */  sw          $s0, 0x0($a3)
/* 023534 80023984 ACE00004 */  sw          $zero, 0x4($a3)
/* 023538 80023988 E4E0000C */  swc1        $f0, 0xc($a3)
/* 02353C 8002398C 8FB90030 */  lw          $t9, 0x30($sp)
/* 023540 80023990 24E40014 */  addiu       $a0, $a3, 0x14
/* 023544 80023994 E720001C */  swc1        $f0, 0x1c($t9)
/* 023548 80023998 AFA7002C */  sw          $a3, 0x2c($sp)
/* 02354C 8002399C AFA40020 */  sw          $a0, 0x20($sp)
/* 023550 800239A0 0C00452C */  jal         func_800114B0
/* 023554 800239A4 8FA50038 */   lw         $a1, 0x38($sp)
/* 023558 800239A8 8FA7002C */  lw          $a3, 0x2c($sp)
/* 02355C 800239AC 8FA50038 */  lw          $a1, 0x38($sp)
/* 023560 800239B0 0C00452C */  jal         func_800114B0
/* 023564 800239B4 24E40034 */   addiu      $a0, $a3, 0x34
/* 023568 800239B8 8FA7002C */  lw          $a3, 0x2c($sp)
/* 02356C 800239BC 8FA40020 */  lw          $a0, 0x20($sp)
/* 023570 800239C0 02002825 */  move        $a1, $s0
/* 023574 800239C4 0C008D56 */  jal         func_80023558
/* 023578 800239C8 8CE60058 */   lw         $a2, 0x58($a3)
.L800239CC:
/* 02357C 800239CC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 023580 800239D0 8FB00018 */  lw          $s0, 0x18($sp)
/* 023584 800239D4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 023588 800239D8 03E00008 */  jr          $ra
/* 02358C 800239DC 00000000 */   nop

glabel func_800239E0 # 83
/* 023590 800239E0 44856000 */  mtc1        $a1, $f12
/* 023594 800239E4 8C820054 */  lw          $v0, 0x54($a0)
/* 023598 800239E8 03E00008 */  jr          $ra
/* 02359C 800239EC E44C0010 */   swc1       $f12, 0x10($v0)

glabel func_800239F0 # 84
/* 0235A0 800239F0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0235A4 800239F4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0235A8 800239F8 AFB00028 */  sw          $s0, 0x28($sp)
/* 0235AC 800239FC AFA40030 */  sw          $a0, 0x30($sp)
/* 0235B0 80023A00 AFA50034 */  sw          $a1, 0x34($sp)
/* 0235B4 80023A04 AFA60038 */  sw          $a2, 0x38($sp)
/* 0235B8 80023A08 0C001B0D */  jal         func_80006C34
/* 0235BC 80023A0C AFA7003C */   sw         $a3, 0x3c($sp)
/* 0235C0 80023A10 93AE0043 */  lbu         $t6, 0x43($sp)
/* 0235C4 80023A14 93AF0047 */  lbu         $t7, 0x47($sp)
/* 0235C8 80023A18 8FB80048 */  lw          $t8, 0x48($sp)
/* 0235CC 80023A1C 8FB9004C */  lw          $t9, 0x4c($sp)
/* 0235D0 80023A20 00408025 */  move        $s0, $v0
/* 0235D4 80023A24 8FA40030 */  lw          $a0, 0x30($sp)
/* 0235D8 80023A28 8FA50034 */  lw          $a1, 0x34($sp)
/* 0235DC 80023A2C 93A6003B */  lbu         $a2, 0x3b($sp)
/* 0235E0 80023A30 93A7003F */  lbu         $a3, 0x3f($sp)
/* 0235E4 80023A34 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0235E8 80023A38 AFAF0014 */  sw          $t7, 0x14($sp)
/* 0235EC 80023A3C AFB80018 */  sw          $t8, 0x18($sp)
/* 0235F0 80023A40 0C008E2B */  jal         func_800238AC
/* 0235F4 80023A44 AFB9001C */   sw         $t9, 0x1c($sp)
/* 0235F8 80023A48 AE02002C */  sw          $v0, 0x2c($s0)
/* 0235FC 80023A4C 0C001BB8 */  jal         func_80006EE0
/* 023600 80023A50 02002025 */   move       $a0, $s0
/* 023604 80023A54 0C001B4C */  jal         func_80006D30
/* 023608 80023A58 02002025 */   move       $a0, $s0
/* 02360C 80023A5C 0C001C1B */  jal         func_8000706C
/* 023610 80023A60 02002025 */   move       $a0, $s0
/* 023614 80023A64 8FBF002C */  lw          $ra, 0x2c($sp)
/* 023618 80023A68 02001025 */  move        $v0, $s0
/* 02361C 80023A6C 8FB00028 */  lw          $s0, 0x28($sp)
/* 023620 80023A70 03E00008 */  jr          $ra
/* 023624 80023A74 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80023A78 # 85
/* 023628 80023A78 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02362C 80023A7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 023630 80023A80 0C008E4A */  jal         func_80023928
/* 023634 80023A84 8C84002C */   lw         $a0, 0x2c($a0)
/* 023638 80023A88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02363C 80023A8C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 023640 80023A90 03E00008 */  jr          $ra
/* 023644 80023A94 00000000 */   nop

glabel func_80023A98 # 86
/* 023648 80023A98 44856000 */  mtc1        $a1, $f12
/* 02364C 80023A9C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 023650 80023AA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 023654 80023AA4 44056000 */  mfc1        $a1, $f12
/* 023658 80023AA8 0C008E78 */  jal         func_800239E0
/* 02365C 80023AAC 8C84002C */   lw         $a0, 0x2c($a0)
/* 023660 80023AB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 023664 80023AB4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 023668 80023AB8 03E00008 */  jr          $ra
/* 02366C 80023ABC 00000000 */   nop

glabel func_80023AC0 # 87
/* 023670 80023AC0 44801000 */  mtc1        $zero, $f2
/* 023674 80023AC4 C4C00000 */  lwc1        $f0, 0x0($a2)
/* 023678 80023AC8 44876000 */  mtc1        $a3, $f12
/* 02367C 80023ACC 3C0143B4 */  lui         $at, 0x43b4
/* 023680 80023AD0 4602003C */  c.lt.s      $f0, $f2
/* 023684 80023AD4 00000000 */  nop
/* 023688 80023AD8 4502000B */  bc1fl       .L80023B08
/* 02368C 80023ADC 3C0143B4 */   lui        $at, 0x43b4
/* 023690 80023AE0 44817000 */  mtc1        $at, $f14
/* 023694 80023AE4 00000000 */  nop
/* 023698 80023AE8 460E0100 */  add.s       $f4, $f0, $f14
.L80023AEC:
/* 02369C 80023AEC E4C40000 */  swc1        $f4, 0x0($a2)
/* 0236A0 80023AF0 C4C00000 */  lwc1        $f0, 0x0($a2)
/* 0236A4 80023AF4 4602003C */  c.lt.s      $f0, $f2
/* 0236A8 80023AF8 00000000 */  nop
/* 0236AC 80023AFC 4503FFFB */  bc1tl       .L80023AEC
/* 0236B0 80023B00 460E0100 */   add.s      $f4, $f0, $f14
/* 0236B4 80023B04 3C0143B4 */  lui         $at, 0x43b4
.L80023B08:
/* 0236B8 80023B08 44817000 */  mtc1        $at, $f14
/* 0236BC 80023B0C 00000000 */  nop
/* 0236C0 80023B10 4600703E */  c.le.s      $f14, $f0
/* 0236C4 80023B14 00000000 */  nop
/* 0236C8 80023B18 45020009 */  bc1fl       .L80023B40
/* 0236CC 80023B1C C4C00004 */   lwc1       $f0, 0x4($a2)
/* 0236D0 80023B20 460E0181 */  sub.s       $f6, $f0, $f14
.L80023B24:
/* 0236D4 80023B24 E4C60000 */  swc1        $f6, 0x0($a2)
/* 0236D8 80023B28 C4C00000 */  lwc1        $f0, 0x0($a2)
/* 0236DC 80023B2C 4600703E */  c.le.s      $f14, $f0
/* 0236E0 80023B30 00000000 */  nop
/* 0236E4 80023B34 4503FFFB */  bc1tl       .L80023B24
/* 0236E8 80023B38 460E0181 */   sub.s      $f6, $f0, $f14
/* 0236EC 80023B3C C4C00004 */  lwc1        $f0, 0x4($a2)
.L80023B40:
/* 0236F0 80023B40 4602003C */  c.lt.s      $f0, $f2
/* 0236F4 80023B44 00000000 */  nop
/* 0236F8 80023B48 45020009 */  bc1fl       .L80023B70
/* 0236FC 80023B4C 4600703E */   c.le.s     $f14, $f0
/* 023700 80023B50 460E0200 */  add.s       $f8, $f0, $f14
.L80023B54:
/* 023704 80023B54 E4C80004 */  swc1        $f8, 0x4($a2)
/* 023708 80023B58 C4C00004 */  lwc1        $f0, 0x4($a2)
/* 02370C 80023B5C 4602003C */  c.lt.s      $f0, $f2
/* 023710 80023B60 00000000 */  nop
/* 023714 80023B64 4503FFFB */  bc1tl       .L80023B54
/* 023718 80023B68 460E0200 */   add.s      $f8, $f0, $f14
/* 02371C 80023B6C 4600703E */  c.le.s      $f14, $f0
.L80023B70:
/* 023720 80023B70 00000000 */  nop
/* 023724 80023B74 45020009 */  bc1fl       .L80023B9C
/* 023728 80023B78 C4C00008 */   lwc1       $f0, 0x8($a2)
/* 02372C 80023B7C 460E0281 */  sub.s       $f10, $f0, $f14
.L80023B80:
/* 023730 80023B80 E4CA0004 */  swc1        $f10, 0x4($a2)
/* 023734 80023B84 C4C00004 */  lwc1        $f0, 0x4($a2)
/* 023738 80023B88 4600703E */  c.le.s      $f14, $f0
/* 02373C 80023B8C 00000000 */  nop
/* 023740 80023B90 4503FFFB */  bc1tl       .L80023B80
/* 023744 80023B94 460E0281 */   sub.s      $f10, $f0, $f14
/* 023748 80023B98 C4C00008 */  lwc1        $f0, 0x8($a2)
.L80023B9C:
/* 02374C 80023B9C 4602003C */  c.lt.s      $f0, $f2
/* 023750 80023BA0 00000000 */  nop
/* 023754 80023BA4 45020009 */  bc1fl       .L80023BCC
/* 023758 80023BA8 4600703E */   c.le.s     $f14, $f0
/* 02375C 80023BAC 460E0400 */  add.s       $f16, $f0, $f14
.L80023BB0:
/* 023760 80023BB0 E4D00008 */  swc1        $f16, 0x8($a2)
/* 023764 80023BB4 C4C00008 */  lwc1        $f0, 0x8($a2)
/* 023768 80023BB8 4602003C */  c.lt.s      $f0, $f2
/* 02376C 80023BBC 00000000 */  nop
/* 023770 80023BC0 4503FFFB */  bc1tl       .L80023BB0
/* 023774 80023BC4 460E0400 */   add.s      $f16, $f0, $f14
/* 023778 80023BC8 4600703E */  c.le.s      $f14, $f0
.L80023BCC:
/* 02377C 80023BCC 00000000 */  nop
/* 023780 80023BD0 45020009 */  bc1fl       .L80023BF8
/* 023784 80023BD4 C4A40000 */   lwc1       $f4, 0x0($a1)
/* 023788 80023BD8 460E0481 */  sub.s       $f18, $f0, $f14
.L80023BDC:
/* 02378C 80023BDC E4D20008 */  swc1        $f18, 0x8($a2)
/* 023790 80023BE0 C4C00008 */  lwc1        $f0, 0x8($a2)
/* 023794 80023BE4 4600703E */  c.le.s      $f14, $f0
/* 023798 80023BE8 00000000 */  nop
/* 02379C 80023BEC 4503FFFB */  bc1tl       .L80023BDC
/* 0237A0 80023BF0 460E0481 */   sub.s      $f18, $f0, $f14
/* 0237A4 80023BF4 C4A40000 */  lwc1        $f4, 0x0($a1)
.L80023BF8:
/* 0237A8 80023BF8 E4840018 */  swc1        $f4, 0x18($a0)
/* 0237AC 80023BFC C4A60004 */  lwc1        $f6, 0x4($a1)
/* 0237B0 80023C00 E486001C */  swc1        $f6, 0x1c($a0)
/* 0237B4 80023C04 C4A80008 */  lwc1        $f8, 0x8($a1)
/* 0237B8 80023C08 E4880020 */  swc1        $f8, 0x20($a0)
/* 0237BC 80023C0C C4AA0000 */  lwc1        $f10, 0x0($a1)
/* 0237C0 80023C10 E48A0044 */  swc1        $f10, 0x44($a0)
/* 0237C4 80023C14 C4B00004 */  lwc1        $f16, 0x4($a1)
/* 0237C8 80023C18 E4900048 */  swc1        $f16, 0x48($a0)
/* 0237CC 80023C1C C4B20008 */  lwc1        $f18, 0x8($a1)
/* 0237D0 80023C20 E492004C */  swc1        $f18, 0x4c($a0)
/* 0237D4 80023C24 C4C40000 */  lwc1        $f4, 0x0($a2)
/* 0237D8 80023C28 E484000C */  swc1        $f4, 0xc($a0)
/* 0237DC 80023C2C C4C60004 */  lwc1        $f6, 0x4($a2)
/* 0237E0 80023C30 E4860010 */  swc1        $f6, 0x10($a0)
/* 0237E4 80023C34 C4C80008 */  lwc1        $f8, 0x8($a2)
/* 0237E8 80023C38 E48C0008 */  swc1        $f12, 0x8($a0)
/* 0237EC 80023C3C E48C0004 */  swc1        $f12, 0x4($a0)
/* 0237F0 80023C40 E48C0000 */  swc1        $f12, 0x0($a0)
/* 0237F4 80023C44 03E00008 */  jr          $ra
/* 0237F8 80023C48 E4880014 */   swc1       $f8, 0x14($a0)
/* 0237FC 80023C4C 00000000 */  nop
