.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80028AD0 # 0
/* 028680 80028AD0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 028684 80028AD4 AFA40018 */  sw          $a0, 0x18($sp)
/* 028688 80028AD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02868C 80028ADC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 028690 80028AE0 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 028694 80028AE4 24050004 */  addiu       $a1, $zero, 0x4
/* 028698 80028AE8 0C00DA76 */  jal         func_800369D8
/* 02869C 80028AEC 24060038 */   addiu      $a2, $zero, 0x38
/* 0286A0 80028AF0 8FAE0018 */  lw          $t6, 0x18($sp)
/* 0286A4 80028AF4 ADC20054 */  sw          $v0, 0x54($t6)
/* 0286A8 80028AF8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0286AC 80028AFC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0286B0 80028B00 03E00008 */  jr          $ra
/* 0286B4 80028B04 00000000 */   nop

glabel func_80028B08 # 1
/* 0286B8 80028B08 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 0286BC 80028B0C 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 0286C0 80028B10 C444000C */  lwc1        $f4, 0xc($v0)
/* 0286C4 80028B14 C4460018 */  lwc1        $f6, 0x18($v0)
/* 0286C8 80028B18 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0286CC 80028B1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0286D0 80028B20 46062300 */  add.s       $f12, $f4, $f6
/* 0286D4 80028B24 AFA40020 */  sw          $a0, 0x20($sp)
/* 0286D8 80028B28 0C00EB2F */  jal         func_8003ACBC
/* 0286DC 80028B2C E7AC0018 */   swc1       $f12, 0x18($sp)
/* 0286E0 80028B30 3C014170 */  lui         $at, 0x4170
/* 0286E4 80028B34 44814000 */  mtc1        $at, $f8
/* 0286E8 80028B38 3C01800F */  lui         $at, %hi(D_800F3E20)
/* 0286EC 80028B3C C4303E20 */  lwc1        $f16, %lo(D_800F3E20)($at)
/* 0286F0 80028B40 46080282 */  mul.s       $f10, $f0, $f8
/* 0286F4 80028B44 8FA20020 */  lw          $v0, 0x20($sp)
/* 0286F8 80028B48 C7AC0018 */  lwc1        $f12, 0x18($sp)
/* 0286FC 80028B4C 3C01800F */  lui         $at, %hi(D_800F3E24)
/* 028700 80028B50 46105480 */  add.s       $f18, $f10, $f16
/* 028704 80028B54 E4520018 */  swc1        $f18, 0x18($v0)
/* 028708 80028B58 C4243E24 */  lwc1        $f4, %lo(D_800F3E24)($at)
/* 02870C 80028B5C 3C01800B */  lui         $at, %hi(D_800AA8BC)
/* 028710 80028B60 C426A8BC */  lwc1        $f6, %lo(D_800AA8BC)($at)
/* 028714 80028B64 46062200 */  add.s       $f8, $f4, $f6
/* 028718 80028B68 0C00EB6C */  jal         func_8003ADB0
/* 02871C 80028B6C E448001C */   swc1       $f8, 0x1c($v0)
/* 028720 80028B70 3C014170 */  lui         $at, 0x4170
/* 028724 80028B74 44815000 */  mtc1        $at, $f10
/* 028728 80028B78 3C01800F */  lui         $at, %hi(D_800F3E28)
/* 02872C 80028B7C C4323E28 */  lwc1        $f18, %lo(D_800F3E28)($at)
/* 028730 80028B80 460A0402 */  mul.s       $f16, $f0, $f10
/* 028734 80028B84 8FAE0020 */  lw          $t6, 0x20($sp)
/* 028738 80028B88 46128100 */  add.s       $f4, $f16, $f18
/* 02873C 80028B8C E5C40020 */  swc1        $f4, 0x20($t6)
/* 028740 80028B90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 028744 80028B94 27BD0020 */  addiu       $sp, $sp, 0x20
/* 028748 80028B98 03E00008 */  jr          $ra
/* 02874C 80028B9C 00000000 */   nop

glabel func_80028BA0 # 2
/* 028750 80028BA0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 028754 80028BA4 AFA40018 */  sw          $a0, 0x18($sp)
/* 028758 80028BA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02875C 80028BAC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 028760 80028BB0 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 028764 80028BB4 24050018 */  addiu       $a1, $zero, 0x18
/* 028768 80028BB8 0C00DA76 */  jal         func_800369D8
/* 02876C 80028BBC 24060059 */   addiu      $a2, $zero, 0x59
/* 028770 80028BC0 8FAE0018 */  lw          $t6, 0x18($sp)
/* 028774 80028BC4 ADC20054 */  sw          $v0, 0x54($t6)
/* 028778 80028BC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02877C 80028BCC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 028780 80028BD0 03E00008 */  jr          $ra
/* 028784 80028BD4 00000000 */   nop

glabel func_80028BD8 # 3
/* 028788 80028BD8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02878C 80028BDC AFBF0014 */  sw          $ra, 0x14($sp)
/* 028790 80028BE0 8C820050 */  lw          $v0, 0x50($a0)
/* 028794 80028BE4 8C850054 */  lw          $a1, 0x54($a0)
/* 028798 80028BE8 AFA00028 */  sw          $zero, 0x28($sp)
/* 02879C 80028BEC 8C86004C */  lw          $a2, 0x4c($a0)
/* 0287A0 80028BF0 C48C0044 */  lwc1        $f12, 0x44($a0)
/* 0287A4 80028BF4 C44E001C */  lwc1        $f14, 0x1c($v0)
/* 0287A8 80028BF8 AFA40038 */  sw          $a0, 0x38($sp)
/* 0287AC 80028BFC 27A70028 */  addiu       $a3, $sp, 0x28
/* 0287B0 80028C00 AFA20034 */  sw          $v0, 0x34($sp)
/* 0287B4 80028C04 0C043D2C */  jal         func_8010F4B0
/* 0287B8 80028C08 AFA50030 */   sw         $a1, 0x30($sp)
/* 0287BC 80028C0C 8FA20034 */  lw          $v0, 0x34($sp)
/* 0287C0 80028C10 8FA40038 */  lw          $a0, 0x38($sp)
/* 0287C4 80028C14 27A70028 */  addiu       $a3, $sp, 0x28
/* 0287C8 80028C18 C444001C */  lwc1        $f4, 0x1c($v0)
/* 0287CC 80028C1C C48C0044 */  lwc1        $f12, 0x44($a0)
/* 0287D0 80028C20 8C86004C */  lw          $a2, 0x4c($a0)
/* 0287D4 80028C24 46040181 */  sub.s       $f6, $f0, $f4
/* 0287D8 80028C28 E486001C */  swc1        $f6, 0x1c($a0)
/* 0287DC 80028C2C 0C043D75 */  jal         func_8010F5D4
/* 0287E0 80028C30 C44E001C */   lwc1       $f14, 0x1c($v0)
/* 0287E4 80028C34 3C03800A */  lui         $v1, %hi(D_8009F010)
/* 0287E8 80028C38 8C63F010 */  lw          $v1, %lo(D_8009F010)($v1)
/* 0287EC 80028C3C 24010001 */  addiu       $at, $zero, 0x1
/* 0287F0 80028C40 8FA50030 */  lw          $a1, 0x30($sp)
/* 0287F4 80028C44 10610009 */  beq         $v1, $at, .L80028C6C
/* 0287F8 80028C48 304E0002 */   andi       $t6, $v0, 0x2
/* 0287FC 80028C4C 24010002 */  addiu       $at, $zero, 0x2
/* 028800 80028C50 10610015 */  beq         $v1, $at, .L80028CA8
/* 028804 80028C54 30598000 */   andi       $t9, $v0, 0x8000
/* 028808 80028C58 24010003 */  addiu       $at, $zero, 0x3
/* 02880C 80028C5C 10610020 */  beq         $v1, $at, .L80028CE0
/* 028810 80028C60 304A0020 */   andi       $t2, $v0, 0x20
/* 028814 80028C64 1000002C */  b           .L80028D18
/* 028818 80028C68 8FBF0014 */   lw         $ra, 0x14($sp)
.L80028C6C:
/* 02881C 80028C6C A0A00016 */  sb          $zero, 0x16($a1)
/* 028820 80028C70 A0A00015 */  sb          $zero, 0x15($a1)
/* 028824 80028C74 11C00003 */  beqz        $t6, .L80028C84
/* 028828 80028C78 A0A00014 */   sb         $zero, 0x14($a1)
/* 02882C 80028C7C 240400FF */  addiu       $a0, $zero, 0xff
/* 028830 80028C80 A0A40014 */  sb          $a0, 0x14($a1)
.L80028C84:
/* 028834 80028C84 304F0004 */  andi        $t7, $v0, 0x4
/* 028838 80028C88 11E00002 */  beqz        $t7, .L80028C94
/* 02883C 80028C8C 240400FF */   addiu      $a0, $zero, 0xff
/* 028840 80028C90 A0A40015 */  sb          $a0, 0x15($a1)
.L80028C94:
/* 028844 80028C94 30580001 */  andi        $t8, $v0, 0x1
/* 028848 80028C98 5300001F */  beql        $t8, $zero, .L80028D18
/* 02884C 80028C9C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 028850 80028CA0 1000001C */  b           .L80028D14
/* 028854 80028CA4 A0A40016 */   sb         $a0, 0x16($a1)
.L80028CA8:
/* 028858 80028CA8 240300FF */  addiu       $v1, $zero, 0xff
/* 02885C 80028CAC A0A30016 */  sb          $v1, 0x16($a1)
/* 028860 80028CB0 A0A30015 */  sb          $v1, 0x15($a1)
/* 028864 80028CB4 13200002 */  beqz        $t9, .L80028CC0
/* 028868 80028CB8 A0A30014 */   sb         $v1, 0x14($a1)
/* 02886C 80028CBC A0A00014 */  sb          $zero, 0x14($a1)
.L80028CC0:
/* 028870 80028CC0 30480100 */  andi        $t0, $v0, 0x100
/* 028874 80028CC4 11000002 */  beqz        $t0, .L80028CD0
/* 028878 80028CC8 30494000 */   andi       $t1, $v0, 0x4000
/* 02887C 80028CCC A0A00015 */  sb          $zero, 0x15($a1)
.L80028CD0:
/* 028880 80028CD0 51200011 */  beql        $t1, $zero, .L80028D18
/* 028884 80028CD4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 028888 80028CD8 1000000E */  b           .L80028D14
/* 02888C 80028CDC A0A00016 */   sb         $zero, 0x16($a1)
.L80028CE0:
/* 028890 80028CE0 240300FF */  addiu       $v1, $zero, 0xff
/* 028894 80028CE4 A0A30016 */  sb          $v1, 0x16($a1)
/* 028898 80028CE8 A0A30015 */  sb          $v1, 0x15($a1)
/* 02889C 80028CEC 11400002 */  beqz        $t2, .L80028CF8
/* 0288A0 80028CF0 A0A30014 */   sb         $v1, 0x14($a1)
/* 0288A4 80028CF4 A0A00014 */  sb          $zero, 0x14($a1)
.L80028CF8:
/* 0288A8 80028CF8 304B0010 */  andi        $t3, $v0, 0x10
/* 0288AC 80028CFC 11600002 */  beqz        $t3, .L80028D08
/* 0288B0 80028D00 304C0040 */   andi       $t4, $v0, 0x40
/* 0288B4 80028D04 A0A00015 */  sb          $zero, 0x15($a1)
.L80028D08:
/* 0288B8 80028D08 51800003 */  beql        $t4, $zero, .L80028D18
/* 0288BC 80028D0C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0288C0 80028D10 A0A00016 */  sb          $zero, 0x16($a1)
.L80028D14:
/* 0288C4 80028D14 8FBF0014 */  lw          $ra, 0x14($sp)
.L80028D18:
/* 0288C8 80028D18 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0288CC 80028D1C 03E00008 */  jr          $ra
/* 0288D0 80028D20 00000000 */   nop

glabel func_80028D24 # 4
/* 0288D4 80028D24 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 0288D8 80028D28 AFB2000C */  sw          $s2, 0xc($sp)
/* 0288DC 80028D2C AFB10008 */  sw          $s1, 0x8($sp)
/* 0288E0 80028D30 AFB00004 */  sw          $s0, 0x4($sp)
/* 0288E4 80028D34 8C850054 */  lw          $a1, 0x54($a0)
/* 0288E8 80028D38 8C820050 */  lw          $v0, 0x50($a0)
/* 0288EC 80028D3C 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 0288F0 80028D40 8CAE0000 */  lw          $t6, 0x0($a1)
/* 0288F4 80028D44 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 0288F8 80028D48 3C18DE00 */  lui         $t8, 0xde00
/* 0288FC 80028D4C 15C00003 */  bnez        $t6, .L80028D5C
/* 028900 80028D50 3C190101 */   lui        $t9, 0x101
/* 028904 80028D54 10000065 */  b           .L80028EEC
/* 028908 80028D58 00001025 */   move       $v0, $zero
.L80028D5C:
/* 02890C 80028D5C 8C830000 */  lw          $v1, 0x0($a0)
/* 028910 80028D60 2739CA10 */  addiu       $t9, $t9, -0x35f0
/* 028914 80028D64 3C0B0101 */  lui         $t3, 0x101
/* 028918 80028D68 246F0008 */  addiu       $t7, $v1, 0x8
/* 02891C 80028D6C AC8F0000 */  sw          $t7, 0x0($a0)
/* 028920 80028D70 3C0D0101 */  lui         $t5, 0x101
/* 028924 80028D74 3C110100 */  lui         $s1, 0x100
/* 028928 80028D78 3C10DA38 */  lui         $s0, 0xda38
/* 02892C 80028D7C 36100003 */  ori         $s0, $s0, 0x3
/* 028930 80028D80 36311000 */  ori         $s1, $s1, 0x1000
/* 028934 80028D84 25ADC940 */  addiu       $t5, $t5, -0x36c0
/* 028938 80028D88 256BC930 */  addiu       $t3, $t3, -0x36d0
/* 02893C 80028D8C 00003825 */  move        $a3, $zero
/* 028940 80028D90 00A04825 */  move        $t1, $a1
/* 028944 80028D94 24120004 */  addiu       $s2, $zero, 0x4
/* 028948 80028D98 AC790004 */  sw          $t9, 0x4($v1)
/* 02894C 80028D9C AC780000 */  sw          $t8, 0x0($v1)
.L80028DA0:
/* 028950 80028DA0 8C860000 */  lw          $a2, 0x0($a0)
/* 028954 80028DA4 24EC0002 */  addiu       $t4, $a3, 0x2
/* 028958 80028DA8 00004025 */  move        $t0, $zero
/* 02895C 80028DAC 24CE0008 */  addiu       $t6, $a2, 0x8
/* 028960 80028DB0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 028964 80028DB4 ACD00000 */  sw          $s0, 0x0($a2)
/* 028968 80028DB8 944F0036 */  lhu         $t7, 0x36($v0)
/* 02896C 80028DBC 31F88000 */  andi        $t8, $t7, 0x8000
/* 028970 80028DC0 13000003 */  beqz        $t8, .L80028DD0
/* 028974 80028DC4 00000000 */   nop
/* 028978 80028DC8 10000001 */  b           .L80028DD0
/* 02897C 80028DCC 24080001 */   addiu      $t0, $zero, 0x1
.L80028DD0:
/* 028980 80028DD0 8D390004 */  lw          $t9, 0x4($t1)
/* 028984 80028DD4 00087880 */  sll         $t7, $t0, 2
/* 028988 80028DD8 004FC021 */  addu        $t8, $v0, $t7
/* 02898C 80028DDC 00197180 */  sll         $t6, $t9, 6
/* 028990 80028DE0 8F19003C */  lw          $t9, 0x3c($t8)
/* 028994 80028DE4 00004025 */  move        $t0, $zero
/* 028998 80028DE8 01D97821 */  addu        $t7, $t6, $t9
/* 02899C 80028DEC ACCF0004 */  sw          $t7, 0x4($a2)
/* 0289A0 80028DF0 8C830000 */  lw          $v1, 0x0($a0)
/* 0289A4 80028DF4 24EE0001 */  addiu       $t6, $a3, 0x1
/* 0289A8 80028DF8 31D9007F */  andi        $t9, $t6, 0x7f
/* 0289AC 80028DFC 24780008 */  addiu       $t8, $v1, 0x8
/* 0289B0 80028E00 AC980000 */  sw          $t8, 0x0($a0)
/* 0289B4 80028E04 00197840 */  sll         $t7, $t9, 1
/* 0289B8 80028E08 01F1C025 */  or          $t8, $t7, $s1
/* 0289BC 80028E0C AC780000 */  sw          $t8, 0x0($v1)
/* 0289C0 80028E10 AC6B0004 */  sw          $t3, 0x4($v1)
/* 0289C4 80028E14 8C860000 */  lw          $a2, 0x0($a0)
/* 0289C8 80028E18 01803825 */  move        $a3, $t4
/* 0289CC 80028E1C 24CE0008 */  addiu       $t6, $a2, 0x8
/* 0289D0 80028E20 AC8E0000 */  sw          $t6, 0x0($a0)
/* 0289D4 80028E24 ACD00000 */  sw          $s0, 0x0($a2)
/* 0289D8 80028E28 94590036 */  lhu         $t9, 0x36($v0)
/* 0289DC 80028E2C 332F8000 */  andi        $t7, $t9, 0x8000
/* 0289E0 80028E30 11E00003 */  beqz        $t7, .L80028E40
/* 0289E4 80028E34 00000000 */   nop
/* 0289E8 80028E38 10000001 */  b           .L80028E40
/* 0289EC 80028E3C 24080001 */   addiu      $t0, $zero, 0x1
.L80028E40:
/* 0289F0 80028E40 8D380008 */  lw          $t8, 0x8($t1)
/* 0289F4 80028E44 0008C880 */  sll         $t9, $t0, 2
/* 0289F8 80028E48 00597821 */  addu        $t7, $v0, $t9
/* 0289FC 80028E4C 00187180 */  sll         $t6, $t8, 6
/* 028A00 80028E50 8DF8003C */  lw          $t8, 0x3c($t7)
/* 028A04 80028E54 25290008 */  addiu       $t1, $t1, 0x8
/* 028A08 80028E58 256B0020 */  addiu       $t3, $t3, 0x20
/* 028A0C 80028E5C 01D8C821 */  addu        $t9, $t6, $t8
/* 028A10 80028E60 ACD90004 */  sw          $t9, 0x4($a2)
/* 028A14 80028E64 8C830000 */  lw          $v1, 0x0($a0)
/* 028A18 80028E68 318E007F */  andi        $t6, $t4, 0x7f
/* 028A1C 80028E6C 000EC040 */  sll         $t8, $t6, 1
/* 028A20 80028E70 246F0008 */  addiu       $t7, $v1, 0x8
/* 028A24 80028E74 AC8F0000 */  sw          $t7, 0x0($a0)
/* 028A28 80028E78 0311C825 */  or          $t9, $t8, $s1
/* 028A2C 80028E7C AC6D0004 */  sw          $t5, 0x4($v1)
/* 028A30 80028E80 25AD0020 */  addiu       $t5, $t5, 0x20
/* 028A34 80028E84 1592FFC6 */  bne         $t4, $s2, .L80028DA0
/* 028A38 80028E88 AC790000 */   sw         $t9, 0x0($v1)
/* 028A3C 80028E8C 8C830000 */  lw          $v1, 0x0($a0)
/* 028A40 80028E90 3C0EFA00 */  lui         $t6, 0xfa00
/* 028A44 80028E94 00001025 */  move        $v0, $zero
/* 028A48 80028E98 246F0008 */  addiu       $t7, $v1, 0x8
/* 028A4C 80028E9C AC8F0000 */  sw          $t7, 0x0($a0)
/* 028A50 80028EA0 AC6E0000 */  sw          $t6, 0x0($v1)
/* 028A54 80028EA4 90B90014 */  lbu         $t9, 0x14($a1)
/* 028A58 80028EA8 90B80015 */  lbu         $t8, 0x15($a1)
/* 028A5C 80028EAC 00197E00 */  sll         $t7, $t9, 24
/* 028A60 80028EB0 0018CC00 */  sll         $t9, $t8, 16
/* 028A64 80028EB4 01F97025 */  or          $t6, $t7, $t9
/* 028A68 80028EB8 90AF0016 */  lbu         $t7, 0x16($a1)
/* 028A6C 80028EBC 000FCA00 */  sll         $t9, $t7, 8
/* 028A70 80028EC0 01D9C025 */  or          $t8, $t6, $t9
/* 028A74 80028EC4 370F00FF */  ori         $t7, $t8, 0xff
/* 028A78 80028EC8 AC6F0004 */  sw          $t7, 0x4($v1)
/* 028A7C 80028ECC 8C830000 */  lw          $v1, 0x0($a0)
/* 028A80 80028ED0 3C190600 */  lui         $t9, 0x600
/* 028A84 80028ED4 37390204 */  ori         $t9, $t9, 0x204
/* 028A88 80028ED8 246E0008 */  addiu       $t6, $v1, 0x8
/* 028A8C 80028EDC AC8E0000 */  sw          $t6, 0x0($a0)
/* 028A90 80028EE0 24180406 */  addiu       $t8, $zero, 0x406
/* 028A94 80028EE4 AC780004 */  sw          $t8, 0x4($v1)
/* 028A98 80028EE8 AC790000 */  sw          $t9, 0x0($v1)
.L80028EEC:
/* 028A9C 80028EEC 8FB00004 */  lw          $s0, 0x4($sp)
/* 028AA0 80028EF0 8FB10008 */  lw          $s1, 0x8($sp)
/* 028AA4 80028EF4 8FB2000C */  lw          $s2, 0xc($sp)
/* 028AA8 80028EF8 03E00008 */  jr          $ra
/* 028AAC 80028EFC 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_80028F00 # 5
/* 028AB0 80028F00 27BDFEC8 */  addiu       $sp, $sp, -0x138
/* 028AB4 80028F04 AFA40138 */  sw          $a0, 0x138($sp)
/* 028AB8 80028F08 3C0E800A */  lui         $t6, %hi(D_8009F014)
/* 028ABC 80028F0C 27A400DC */  addiu       $a0, $sp, 0xdc
/* 028AC0 80028F10 AFB7003C */  sw          $s7, 0x3c($sp)
/* 028AC4 80028F14 25CEF014 */  addiu       $t6, $t6, %lo(D_8009F014)
/* 028AC8 80028F18 27B70080 */  addiu       $s7, $sp, 0x80
/* 028ACC 80028F1C AFBF0044 */  sw          $ra, 0x44($sp)
/* 028AD0 80028F20 AFBE0040 */  sw          $fp, 0x40($sp)
/* 028AD4 80028F24 AFB60038 */  sw          $s6, 0x38($sp)
/* 028AD8 80028F28 AFB50034 */  sw          $s5, 0x34($sp)
/* 028ADC 80028F2C AFB40030 */  sw          $s4, 0x30($sp)
/* 028AE0 80028F30 AFB3002C */  sw          $s3, 0x2c($sp)
/* 028AE4 80028F34 AFB20028 */  sw          $s2, 0x28($sp)
/* 028AE8 80028F38 AFB10024 */  sw          $s1, 0x24($sp)
/* 028AEC 80028F3C AFB00020 */  sw          $s0, 0x20($sp)
/* 028AF0 80028F40 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 028AF4 80028F44 25D90054 */  addiu       $t9, $t6, 0x54
/* 028AF8 80028F48 00804025 */  move        $t0, $a0
.L80028F4C:
/* 028AFC 80028F4C 8DC10000 */  lw          $at, 0x0($t6)
/* 028B00 80028F50 25CE000C */  addiu       $t6, $t6, 0xc
/* 028B04 80028F54 2508000C */  addiu       $t0, $t0, 0xc
/* 028B08 80028F58 AD01FFF4 */  sw          $at, -0xc($t0)
/* 028B0C 80028F5C 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 028B10 80028F60 AD01FFF8 */  sw          $at, -0x8($t0)
/* 028B14 80028F64 8DC1FFFC */  lw          $at, -0x4($t6)
/* 028B18 80028F68 15D9FFF8 */  bne         $t6, $t9, .L80028F4C
/* 028B1C 80028F6C AD01FFFC */   sw         $at, -0x4($t0)
/* 028B20 80028F70 8DC10000 */  lw          $at, 0x0($t6)
/* 028B24 80028F74 3C09800A */  lui         $t1, %hi(D_8009F070)
/* 028B28 80028F78 2529F070 */  addiu       $t1, $t1, %lo(D_8009F070)
/* 028B2C 80028F7C AD010000 */  sw          $at, 0x0($t0)
/* 028B30 80028F80 8DD90004 */  lw          $t9, 0x4($t6)
/* 028B34 80028F84 252C0054 */  addiu       $t4, $t1, 0x54
/* 028B38 80028F88 02E06825 */  move        $t5, $s7
/* 028B3C 80028F8C AD190004 */  sw          $t9, 0x4($t0)
.L80028F90:
/* 028B40 80028F90 8D210000 */  lw          $at, 0x0($t1)
/* 028B44 80028F94 2529000C */  addiu       $t1, $t1, 0xc
/* 028B48 80028F98 25AD000C */  addiu       $t5, $t5, 0xc
/* 028B4C 80028F9C ADA1FFF4 */  sw          $at, -0xc($t5)
/* 028B50 80028FA0 8D21FFF8 */  lw          $at, -0x8($t1)
/* 028B54 80028FA4 ADA1FFF8 */  sw          $at, -0x8($t5)
/* 028B58 80028FA8 8D21FFFC */  lw          $at, -0x4($t1)
/* 028B5C 80028FAC 152CFFF8 */  bne         $t1, $t4, .L80028F90
/* 028B60 80028FB0 ADA1FFFC */   sw         $at, -0x4($t5)
/* 028B64 80028FB4 8D210000 */  lw          $at, 0x0($t1)
/* 028B68 80028FB8 ADA10000 */  sw          $at, 0x0($t5)
/* 028B6C 80028FBC 8D2C0004 */  lw          $t4, 0x4($t1)
/* 028B70 80028FC0 0C001AD8 */  jal         func_80006B60
/* 028B74 80028FC4 ADAC0004 */   sw         $t4, 0x4($t5)
/* 028B78 80028FC8 8FA30138 */  lw          $v1, 0x138($sp)
/* 028B7C 80028FCC AFA2007C */  sw          $v0, 0x7c($sp)
/* 028B80 80028FD0 8C440054 */  lw          $a0, 0x54($v0)
/* 028B84 80028FD4 24760001 */  addiu       $s6, $v1, 0x1
/* 028B88 80028FD8 0040A025 */  move        $s4, $v0
/* 028B8C 80028FDC 24130001 */  addiu       $s3, $zero, 0x1
/* 028B90 80028FE0 0000F025 */  move        $fp, $zero
/* 028B94 80028FE4 1AC00025 */  blez        $s6, .L8002907C
/* 028B98 80028FE8 AC830000 */   sw         $v1, 0x0($a0)
.L80028FEC:
/* 028B9C 80028FEC 1AC00020 */  blez        $s6, .L80029070
/* 028BA0 80028FF0 00008025 */   move       $s0, $zero
/* 028BA4 80028FF4 04610003 */  bgez        $v1, .L80029004
/* 028BA8 80028FF8 0003A843 */   sra        $s5, $v1, 1
/* 028BAC 80028FFC 24610001 */  addiu       $at, $v1, 0x1
/* 028BB0 80029000 0001A843 */  sra         $s5, $at, 1
.L80029004:
/* 028BB4 80029004 03D5C023 */  subu        $t8, $fp, $s5
/* 028BB8 80029008 44982000 */  mtc1        $t8, $f4
/* 028BBC 8002900C 02631021 */  addu        $v0, $s3, $v1
/* 028BC0 80029010 24510001 */  addiu       $s1, $v0, 0x1
/* 028BC4 80029014 24520002 */  addiu       $s2, $v0, 0x2
/* 028BC8 80029018 46802520 */  cvt.s.w     $f20, $f4
.L8002901C:
/* 028BCC 8002901C 0C001AD8 */  jal         func_80006B60
/* 028BD0 80029020 02E02025 */   move       $a0, $s7
/* 028BD4 80029024 02157823 */  subu        $t7, $s0, $s5
/* 028BD8 80029028 448F3000 */  mtc1        $t7, $f6
/* 028BDC 8002902C 8C430054 */  lw          $v1, 0x54($v0)
/* 028BE0 80029030 E4540020 */  swc1        $f20, 0x20($v0)
/* 028BE4 80029034 46803220 */  cvt.s.w     $f8, $f6
/* 028BE8 80029038 26640001 */  addiu       $a0, $s3, 0x1
/* 028BEC 8002903C 26100001 */  addiu       $s0, $s0, 0x1
/* 028BF0 80029040 E4480018 */  swc1        $f8, 0x18($v0)
/* 028BF4 80029044 AC730004 */  sw          $s3, 0x4($v1)
/* 028BF8 80029048 AC710008 */  sw          $s1, 0x8($v1)
/* 028BFC 8002904C AC72000C */  sw          $s2, 0xc($v1)
/* 028C00 80029050 AC640010 */  sw          $a0, 0x10($v1)
/* 028C04 80029054 AE820028 */  sw          $v0, 0x28($s4)
/* 028C08 80029058 26520001 */  addiu       $s2, $s2, 0x1
/* 028C0C 8002905C 26310001 */  addiu       $s1, $s1, 0x1
/* 028C10 80029060 00809825 */  move        $s3, $a0
/* 028C14 80029064 1616FFED */  bne         $s0, $s6, .L8002901C
/* 028C18 80029068 0040A025 */   move       $s4, $v0
/* 028C1C 8002906C 8FA30138 */  lw          $v1, 0x138($sp)
.L80029070:
/* 028C20 80029070 27DE0001 */  addiu       $fp, $fp, 0x1
/* 028C24 80029074 17D6FFDD */  bne         $fp, $s6, .L80028FEC
/* 028C28 80029078 00000000 */   nop
.L8002907C:
/* 028C2C 8002907C 8FA4007C */  lw          $a0, 0x7c($sp)
/* 028C30 80029080 8C8E0028 */  lw          $t6, 0x28($a0)
/* 028C34 80029084 AC800028 */  sw          $zero, 0x28($a0)
/* 028C38 80029088 0C001BB8 */  jal         func_80006EE0
/* 028C3C 8002908C AC8E002C */   sw         $t6, 0x2c($a0)
/* 028C40 80029090 0C001B4C */  jal         func_80006D30
/* 028C44 80029094 8FA4007C */   lw         $a0, 0x7c($sp)
/* 028C48 80029098 0C001C1B */  jal         func_8000706C
/* 028C4C 8002909C 8FA4007C */   lw         $a0, 0x7c($sp)
/* 028C50 800290A0 0C00A2C2 */  jal         func_80028B08
/* 028C54 800290A4 8FA4007C */   lw         $a0, 0x7c($sp)
/* 028C58 800290A8 0C001E69 */  jal         func_800079A4
/* 028C5C 800290AC 8FA4007C */   lw         $a0, 0x7c($sp)
/* 028C60 800290B0 8FA4007C */  lw          $a0, 0x7c($sp)
/* 028C64 800290B4 0C00A43D */  jal         func_800290F4
/* 028C68 800290B8 24050001 */   addiu      $a1, $zero, 0x1
/* 028C6C 800290BC 8FBF0044 */  lw          $ra, 0x44($sp)
/* 028C70 800290C0 8FA2007C */  lw          $v0, 0x7c($sp)
/* 028C74 800290C4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 028C78 800290C8 8FB00020 */  lw          $s0, 0x20($sp)
/* 028C7C 800290CC 8FB10024 */  lw          $s1, 0x24($sp)
/* 028C80 800290D0 8FB20028 */  lw          $s2, 0x28($sp)
/* 028C84 800290D4 8FB3002C */  lw          $s3, 0x2c($sp)
/* 028C88 800290D8 8FB40030 */  lw          $s4, 0x30($sp)
/* 028C8C 800290DC 8FB50034 */  lw          $s5, 0x34($sp)
/* 028C90 800290E0 8FB60038 */  lw          $s6, 0x38($sp)
/* 028C94 800290E4 8FB7003C */  lw          $s7, 0x3c($sp)
/* 028C98 800290E8 8FBE0040 */  lw          $fp, 0x40($sp)
/* 028C9C 800290EC 03E00008 */  jr          $ra
/* 028CA0 800290F0 27BD0138 */   addiu      $sp, $sp, 0x138

glabel func_800290F4 # 6
/* 028CA4 800290F4 8C820054 */  lw          $v0, 0x54($a0)
/* 028CA8 800290F8 8C86002C */  lw          $a2, 0x2c($a0)
/* 028CAC 800290FC 00003825 */  move        $a3, $zero
/* 028CB0 80029100 8C430000 */  lw          $v1, 0x0($v0)
/* 028CB4 80029104 24680001 */  addiu       $t0, $v1, 0x1
/* 028CB8 80029108 19000044 */  blez        $t0, .L8002921C
/* 028CBC 8002910C 00000000 */   nop
.L80029110:
/* 028CC0 80029110 1900003F */  blez        $t0, .L80029210
/* 028CC4 80029114 00001025 */   move       $v0, $zero
/* 028CC8 80029118 24640001 */  addiu       $a0, $v1, 0x1
/* 028CCC 8002911C 308E0003 */  andi        $t6, $a0, 0x3
/* 028CD0 80029120 11C0000E */  beqz        $t6, .L8002915C
/* 028CD4 80029124 01C04825 */   move       $t1, $t6
.L80029128:
/* 028CD8 80029128 0043082A */  slt         $at, $v0, $v1
/* 028CDC 8002912C 10200006 */  beqz        $at, .L80029148
/* 028CE0 80029130 8CC40054 */   lw         $a0, 0x54($a2)
/* 028CE4 80029134 00E3082A */  slt         $at, $a3, $v1
/* 028CE8 80029138 50200004 */  beql        $at, $zero, .L8002914C
/* 028CEC 8002913C AC800000 */   sw         $zero, 0x0($a0)
/* 028CF0 80029140 10000002 */  b           .L8002914C
/* 028CF4 80029144 AC850000 */   sw         $a1, 0x0($a0)
.L80029148:
/* 028CF8 80029148 AC800000 */  sw          $zero, 0x0($a0)
.L8002914C:
/* 028CFC 8002914C 24420001 */  addiu       $v0, $v0, 0x1
/* 028D00 80029150 1522FFF5 */  bne         $t1, $v0, .L80029128
/* 028D04 80029154 8CC60028 */   lw         $a2, 0x28($a2)
/* 028D08 80029158 1048002D */  beq         $v0, $t0, .L80029210
.L8002915C:
/* 028D0C 8002915C 2469FFFF */   addiu      $t1, $v1, -0x1
/* 028D10 80029160 246AFFFE */  addiu       $t2, $v1, -0x2
/* 028D14 80029164 246BFFFD */  addiu       $t3, $v1, -0x3
.L80029168:
/* 028D18 80029168 0043082A */  slt         $at, $v0, $v1
/* 028D1C 8002916C 10200006 */  beqz        $at, .L80029188
/* 028D20 80029170 8CC40054 */   lw         $a0, 0x54($a2)
/* 028D24 80029174 00E3082A */  slt         $at, $a3, $v1
/* 028D28 80029178 50200004 */  beql        $at, $zero, .L8002918C
/* 028D2C 8002917C AC800000 */   sw         $zero, 0x0($a0)
/* 028D30 80029180 10000002 */  b           .L8002918C
/* 028D34 80029184 AC850000 */   sw         $a1, 0x0($a0)
.L80029188:
/* 028D38 80029188 AC800000 */  sw          $zero, 0x0($a0)
.L8002918C:
/* 028D3C 8002918C 8CC60028 */  lw          $a2, 0x28($a2)
/* 028D40 80029190 0049082A */  slt         $at, $v0, $t1
/* 028D44 80029194 10200006 */  beqz        $at, .L800291B0
/* 028D48 80029198 8CC40054 */   lw         $a0, 0x54($a2)
/* 028D4C 8002919C 00E3082A */  slt         $at, $a3, $v1
/* 028D50 800291A0 50200004 */  beql        $at, $zero, .L800291B4
/* 028D54 800291A4 AC800000 */   sw         $zero, 0x0($a0)
/* 028D58 800291A8 10000002 */  b           .L800291B4
/* 028D5C 800291AC AC850000 */   sw         $a1, 0x0($a0)
.L800291B0:
/* 028D60 800291B0 AC800000 */  sw          $zero, 0x0($a0)
.L800291B4:
/* 028D64 800291B4 8CC60028 */  lw          $a2, 0x28($a2)
/* 028D68 800291B8 004A082A */  slt         $at, $v0, $t2
/* 028D6C 800291BC 10200006 */  beqz        $at, .L800291D8
/* 028D70 800291C0 8CC40054 */   lw         $a0, 0x54($a2)
/* 028D74 800291C4 00E3082A */  slt         $at, $a3, $v1
/* 028D78 800291C8 50200004 */  beql        $at, $zero, .L800291DC
/* 028D7C 800291CC AC800000 */   sw         $zero, 0x0($a0)
/* 028D80 800291D0 10000002 */  b           .L800291DC
/* 028D84 800291D4 AC850000 */   sw         $a1, 0x0($a0)
.L800291D8:
/* 028D88 800291D8 AC800000 */  sw          $zero, 0x0($a0)
.L800291DC:
/* 028D8C 800291DC 8CC60028 */  lw          $a2, 0x28($a2)
/* 028D90 800291E0 004B082A */  slt         $at, $v0, $t3
/* 028D94 800291E4 10200006 */  beqz        $at, .L80029200
/* 028D98 800291E8 8CC40054 */   lw         $a0, 0x54($a2)
/* 028D9C 800291EC 00E3082A */  slt         $at, $a3, $v1
/* 028DA0 800291F0 50200004 */  beql        $at, $zero, .L80029204
/* 028DA4 800291F4 AC800000 */   sw         $zero, 0x0($a0)
/* 028DA8 800291F8 10000002 */  b           .L80029204
/* 028DAC 800291FC AC850000 */   sw         $a1, 0x0($a0)
.L80029200:
/* 028DB0 80029200 AC800000 */  sw          $zero, 0x0($a0)
.L80029204:
/* 028DB4 80029204 24420004 */  addiu       $v0, $v0, 0x4
/* 028DB8 80029208 1448FFD7 */  bne         $v0, $t0, .L80029168
/* 028DBC 8002920C 8CC60028 */   lw         $a2, 0x28($a2)
.L80029210:
/* 028DC0 80029210 24E70001 */  addiu       $a3, $a3, 0x1
/* 028DC4 80029214 14E8FFBE */  bne         $a3, $t0, .L80029110
/* 028DC8 80029218 00000000 */   nop
.L8002921C:
/* 028DCC 8002921C 03E00008 */  jr          $ra
/* 028DD0 80029220 00000000 */   nop
/* 028DD4 80029224 00000000 */  nop
/* 028DD8 80029228 00000000 */  nop
/* 028DDC 8002922C 00000000 */  nop