.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osEepromWrite # 0
/* 052790 80052BE0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 052794 80052BE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 052798 80052BE8 AFB10018 */  sw          $s1, 0x18($sp)
/* 05279C 80052BEC 00808825 */  move        $s1, $a0
/* 0527A0 80052BF0 AFB00014 */  sw          $s0, 0x14($sp)
/* 0527A4 80052BF4 AFA5004C */  sw          $a1, 0x4c($sp)
/* 0527A8 80052BF8 0C0160FC */  jal         __osSiGetAccess
/* 0527AC 80052BFC AFA60050 */   sw         $a2, 0x50($sp)
/* 0527B0 80052C00 27B0002C */  addiu       $s0, $sp, 0x2c
/* 0527B4 80052C04 02002825 */  move        $a1, $s0
/* 0527B8 80052C08 0C014B81 */  jal         func_80052E04
/* 0527BC 80052C0C 02202025 */   move       $a0, $s1
/* 0527C0 80052C10 14400015 */  bnez        $v0, .L80052C68
/* 0527C4 80052C14 00401825 */   move       $v1, $v0
/* 0527C8 80052C18 97AE002C */  lhu         $t6, 0x2c($sp)
/* 0527CC 80052C1C 34018000 */  ori         $at, $zero, 0x8000
/* 0527D0 80052C20 93B8004F */  lbu         $t8, 0x4f($sp)
/* 0527D4 80052C24 31CFC000 */  andi        $t7, $t6, 0xc000
/* 0527D8 80052C28 11E10005 */  beq         $t7, $at, .L80052C40
/* 0527DC 80052C2C 3401C000 */   ori        $at, $zero, 0xc000
/* 0527E0 80052C30 11E10008 */  beq         $t7, $at, .L80052C54
/* 0527E4 80052C34 93B9004F */   lbu        $t9, 0x4f($sp)
/* 0527E8 80052C38 1000000B */  b           .L80052C68
/* 0527EC 80052C3C 24030008 */   addiu      $v1, $zero, 0x8
.L80052C40:
/* 0527F0 80052C40 2B010040 */  slti        $at, $t8, 0x40
/* 0527F4 80052C44 14200008 */  bnez        $at, .L80052C68
/* 0527F8 80052C48 00000000 */   nop
/* 0527FC 80052C4C 10000006 */  b           .L80052C68
/* 052800 80052C50 2403FFFF */   addiu      $v1, $zero, -0x1
.L80052C54:
/* 052804 80052C54 2B210100 */  slti        $at, $t9, 0x100
/* 052808 80052C58 14200003 */  bnez        $at, .L80052C68
/* 05280C 80052C5C 00000000 */   nop
/* 052810 80052C60 10000001 */  b           .L80052C68
/* 052814 80052C64 2403FFFF */   addiu      $v1, $zero, -0x1
.L80052C68:
/* 052818 80052C68 10600005 */  beqz        $v1, .L80052C80
/* 05281C 80052C6C 93A8002E */   lbu        $t0, 0x2e($sp)
/* 052820 80052C70 0C01610D */  jal         __osSiRelAccess
/* 052824 80052C74 AFA30044 */   sw         $v1, 0x44($sp)
/* 052828 80052C78 10000032 */  b           .L80052D44
/* 05282C 80052C7C 8FA20044 */   lw         $v0, 0x44($sp)
.L80052C80:
/* 052830 80052C80 31090080 */  andi        $t1, $t0, 0x80
/* 052834 80052C84 11200007 */  beqz        $t1, .L80052CA4
/* 052838 80052C88 02202025 */   move       $a0, $s1
.L80052C8C:
/* 05283C 80052C8C 0C014B81 */  jal         func_80052E04
/* 052840 80052C90 02002825 */   move       $a1, $s0
/* 052844 80052C94 93AA002E */  lbu         $t2, 0x2e($sp)
/* 052848 80052C98 314B0080 */  andi        $t3, $t2, 0x80
/* 05284C 80052C9C 5560FFFB */  bnel        $t3, $zero, .L80052C8C
/* 052850 80052CA0 02202025 */   move       $a0, $s1
.L80052CA4:
/* 052854 80052CA4 93A4004F */  lbu         $a0, 0x4f($sp)
/* 052858 80052CA8 0C014B56 */  jal         func_80052D58
/* 05285C 80052CAC 8FA50050 */   lw         $a1, 0x50($sp)
/* 052860 80052CB0 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 052864 80052CB4 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 052868 80052CB8 0C016118 */  jal         __osSiRawStartDma
/* 05286C 80052CBC 24040001 */   addiu      $a0, $zero, 0x1
/* 052870 80052CC0 02202025 */  move        $a0, $s1
/* 052874 80052CC4 00002825 */  move        $a1, $zero
/* 052878 80052CC8 0C014554 */  jal         osRecvMesg
/* 05287C 80052CCC 24060001 */   addiu      $a2, $zero, 0x1
/* 052880 80052CD0 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 052884 80052CD4 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 052888 80052CD8 0C016118 */  jal         __osSiRawStartDma
/* 05288C 80052CDC 00002025 */   move       $a0, $zero
/* 052890 80052CE0 240C0005 */  addiu       $t4, $zero, 0x5
/* 052894 80052CE4 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 052898 80052CE8 A02CDC50 */  sb          $t4, %lo(__osContLastPoll)($at)
/* 05289C 80052CEC 02202025 */  move        $a0, $s1
/* 0528A0 80052CF0 00002825 */  move        $a1, $zero
/* 0528A4 80052CF4 0C014554 */  jal         osRecvMesg
/* 0528A8 80052CF8 24060001 */   addiu      $a2, $zero, 0x1
/* 0528AC 80052CFC 3C078010 */  lui         $a3, %hi(__osEepPifRam + 0x4)
/* 0528B0 80052D00 24E7DDA4 */  addiu       $a3, $a3, %lo(__osEepPifRam + 0x4)
/* 0528B4 80052D04 88E10000 */  lwl         $at, 0x0($a3)
/* 0528B8 80052D08 98E10003 */  lwr         $at, 0x3($a3)
/* 0528BC 80052D0C 27AD0030 */  addiu       $t5, $sp, 0x30
/* 0528C0 80052D10 ADA10000 */  sw          $at, 0x0($t5)
/* 0528C4 80052D14 88F80004 */  lwl         $t8, 0x4($a3)
/* 0528C8 80052D18 98F80007 */  lwr         $t8, 0x7($a3)
/* 0528CC 80052D1C ADB80004 */  sw          $t8, 0x4($t5)
/* 0528D0 80052D20 88E10008 */  lwl         $at, 0x8($a3)
/* 0528D4 80052D24 98E1000B */  lwr         $at, 0xb($a3)
/* 0528D8 80052D28 ADA10008 */  sw          $at, 0x8($t5)
/* 0528DC 80052D2C 93A30031 */  lbu         $v1, 0x31($sp)
/* 0528E0 80052D30 307900C0 */  andi        $t9, $v1, 0xc0
/* 0528E4 80052D34 00194103 */  sra         $t0, $t9, 4
/* 0528E8 80052D38 0C01610D */  jal         __osSiRelAccess
/* 0528EC 80052D3C AFA80044 */   sw         $t0, 0x44($sp)
/* 0528F0 80052D40 8FA20044 */  lw          $v0, 0x44($sp)
.L80052D44:
/* 0528F4 80052D44 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0528F8 80052D48 8FB00014 */  lw          $s0, 0x14($sp)
/* 0528FC 80052D4C 8FB10018 */  lw          $s1, 0x18($sp)
/* 052900 80052D50 03E00008 */  jr          $ra
/* 052904 80052D54 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80052D58 # 1
/* 052908 80052D58 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05290C 80052D5C 3C078010 */  lui         $a3, %hi(__osEepPifRam)
/* 052910 80052D60 24E7DDA0 */  addiu       $a3, $a3, %lo(__osEepPifRam)
/* 052914 80052D64 240F0001 */  addiu       $t7, $zero, 0x1
/* 052918 80052D68 2418000A */  addiu       $t8, $zero, 0xa
/* 05291C 80052D6C 24190001 */  addiu       $t9, $zero, 0x1
/* 052920 80052D70 24080005 */  addiu       $t0, $zero, 0x5
/* 052924 80052D74 AFA40018 */  sw          $a0, 0x18($sp)
/* 052928 80052D78 ACEF003C */  sw          $t7, 0x3c($a3)
/* 05292C 80052D7C A3B80008 */  sb          $t8, 0x8($sp)
/* 052930 80052D80 A3B90009 */  sb          $t9, 0x9($sp)
/* 052934 80052D84 A3A8000A */  sb          $t0, 0xa($sp)
/* 052938 80052D88 A3A4000B */  sb          $a0, 0xb($sp)
/* 05293C 80052D8C 27A60008 */  addiu       $a2, $sp, 0x8
/* 052940 80052D90 27A20010 */  addiu       $v0, $sp, 0x10
.L80052D94:
/* 052944 80052D94 90A90000 */  lbu         $t1, 0x0($a1)
/* 052948 80052D98 24C60001 */  addiu       $a2, $a2, 0x1
/* 05294C 80052D9C 00C2082B */  sltu        $at, $a2, $v0
/* 052950 80052DA0 24A50001 */  addiu       $a1, $a1, 0x1
/* 052954 80052DA4 1420FFFB */  bnez        $at, .L80052D94
/* 052958 80052DA8 A0C90003 */   sb         $t1, 0x3($a2)
/* 05295C 80052DAC 3C018010 */  lui         $at, %hi(__osEepPifRam)
/* 052960 80052DB0 3C028010 */  lui         $v0, %hi(__osEepPifRam + 0x1)
/* 052964 80052DB4 2442DDA1 */  addiu       $v0, $v0, %lo(__osEepPifRam + 0x1)
/* 052968 80052DB8 A020DDA0 */  sb          $zero, %lo(__osEepPifRam)($at)
/* 05296C 80052DBC A0400002 */  sb          $zero, 0x2($v0)
/* 052970 80052DC0 A0400001 */  sb          $zero, 0x1($v0)
/* 052974 80052DC4 A0400000 */  sb          $zero, 0x0($v0)
/* 052978 80052DC8 27AA0008 */  addiu       $t2, $sp, 0x8
/* 05297C 80052DCC 8D410000 */  lw          $at, 0x0($t2)
/* 052980 80052DD0 240D00FE */  addiu       $t5, $zero, 0xfe
/* 052984 80052DD4 2442000F */  addiu       $v0, $v0, 0xf
/* 052988 80052DD8 A841FFF4 */  swl         $at, -0xc($v0)
/* 05298C 80052DDC B841FFF7 */  swr         $at, -0x9($v0)
/* 052990 80052DE0 8D4C0004 */  lw          $t4, 0x4($t2)
/* 052994 80052DE4 A84CFFF8 */  swl         $t4, -0x8($v0)
/* 052998 80052DE8 B84CFFFB */  swr         $t4, -0x5($v0)
/* 05299C 80052DEC 8D410008 */  lw          $at, 0x8($t2)
/* 0529A0 80052DF0 A04D0000 */  sb          $t5, 0x0($v0)
/* 0529A4 80052DF4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0529A8 80052DF8 A841FFFC */  swl         $at, -0x4($v0)
/* 0529AC 80052DFC 03E00008 */  jr          $ra
/* 0529B0 80052E00 B841FFFF */   swr        $at, -0x1($v0)

glabel func_80052E04 # 2
/* 0529B4 80052E04 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0529B8 80052E08 3C028010 */  lui         $v0, %hi(__osEepPifRam)
/* 0529BC 80052E0C 3C038010 */  lui         $v1, %hi(D_800FDDE0)
/* 0529C0 80052E10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0529C4 80052E14 AFA40030 */  sw          $a0, 0x30($sp)
/* 0529C8 80052E18 AFA50034 */  sw          $a1, 0x34($sp)
/* 0529CC 80052E1C 2463DDE0 */  addiu       $v1, $v1, %lo(D_800FDDE0)
/* 0529D0 80052E20 2442DDA0 */  addiu       $v0, $v0, %lo(__osEepPifRam)
.L80052E24:
/* 0529D4 80052E24 24420004 */  addiu       $v0, $v0, 0x4
/* 0529D8 80052E28 0043082B */  sltu        $at, $v0, $v1
/* 0529DC 80052E2C 1420FFFD */  bnez        $at, .L80052E24
/* 0529E0 80052E30 AC40FFFC */   sw         $zero, -0x4($v0)
/* 0529E4 80052E34 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 0529E8 80052E38 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 0529EC 80052E3C 240E0001 */  addiu       $t6, $zero, 0x1
/* 0529F0 80052E40 ACAE003C */  sw          $t6, 0x3c($a1)
/* 0529F4 80052E44 00A01025 */  move        $v0, $a1
/* 0529F8 80052E48 00001825 */  move        $v1, $zero
.L80052E4C:
/* 0529FC 80052E4C 24630001 */  addiu       $v1, $v1, 0x1
/* 052A00 80052E50 28610004 */  slti        $at, $v1, 0x4
/* 052A04 80052E54 A0400000 */  sb          $zero, 0x0($v0)
/* 052A08 80052E58 1420FFFC */  bnez        $at, .L80052E4C
/* 052A0C 80052E5C 24420001 */   addiu      $v0, $v0, 0x1
/* 052A10 80052E60 240F00FF */  addiu       $t7, $zero, 0xff
/* 052A14 80052E64 24180001 */  addiu       $t8, $zero, 0x1
/* 052A18 80052E68 24190003 */  addiu       $t9, $zero, 0x3
/* 052A1C 80052E6C 240800FF */  addiu       $t0, $zero, 0xff
/* 052A20 80052E70 240900FF */  addiu       $t1, $zero, 0xff
/* 052A24 80052E74 240A00FF */  addiu       $t2, $zero, 0xff
/* 052A28 80052E78 240B00FF */  addiu       $t3, $zero, 0xff
/* 052A2C 80052E7C A3AF001C */  sb          $t7, 0x1c($sp)
/* 052A30 80052E80 A3B8001D */  sb          $t8, 0x1d($sp)
/* 052A34 80052E84 A3B9001E */  sb          $t9, 0x1e($sp)
/* 052A38 80052E88 A3A0001F */  sb          $zero, 0x1f($sp)
/* 052A3C 80052E8C A3A80020 */  sb          $t0, 0x20($sp)
/* 052A40 80052E90 A3A90021 */  sb          $t1, 0x21($sp)
/* 052A44 80052E94 A3AA0022 */  sb          $t2, 0x22($sp)
/* 052A48 80052E98 A3AB0023 */  sb          $t3, 0x23($sp)
/* 052A4C 80052E9C 27AC001C */  addiu       $t4, $sp, 0x1c
/* 052A50 80052EA0 8D810000 */  lw          $at, 0x0($t4)
/* 052A54 80052EA4 241800FE */  addiu       $t8, $zero, 0xfe
/* 052A58 80052EA8 24420008 */  addiu       $v0, $v0, 0x8
/* 052A5C 80052EAC A841FFF8 */  swl         $at, -0x8($v0)
/* 052A60 80052EB0 B841FFFB */  swr         $at, -0x5($v0)
/* 052A64 80052EB4 8D8F0004 */  lw          $t7, 0x4($t4)
/* 052A68 80052EB8 A0580000 */  sb          $t8, 0x0($v0)
/* 052A6C 80052EBC 24040001 */  addiu       $a0, $zero, 0x1
/* 052A70 80052EC0 A84FFFFC */  swl         $t7, -0x4($v0)
/* 052A74 80052EC4 0C016118 */  jal         __osSiRawStartDma
/* 052A78 80052EC8 B84FFFFF */   swr        $t7, -0x1($v0)
/* 052A7C 80052ECC 8FA40030 */  lw          $a0, 0x30($sp)
/* 052A80 80052ED0 00002825 */  move        $a1, $zero
/* 052A84 80052ED4 0C014554 */  jal         osRecvMesg
/* 052A88 80052ED8 24060001 */   addiu      $a2, $zero, 0x1
/* 052A8C 80052EDC 241900FE */  addiu       $t9, $zero, 0xfe
/* 052A90 80052EE0 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 052A94 80052EE4 3C058010 */  lui         $a1, %hi(__osEepPifRam)
/* 052A98 80052EE8 A039DC50 */  sb          $t9, %lo(__osContLastPoll)($at)
/* 052A9C 80052EEC 24A5DDA0 */  addiu       $a1, $a1, %lo(__osEepPifRam)
/* 052AA0 80052EF0 0C016118 */  jal         __osSiRawStartDma
/* 052AA4 80052EF4 00002025 */   move       $a0, $zero
/* 052AA8 80052EF8 8FA40030 */  lw          $a0, 0x30($sp)
/* 052AAC 80052EFC 00002825 */  move        $a1, $zero
/* 052AB0 80052F00 24060001 */  addiu       $a2, $zero, 0x1
/* 052AB4 80052F04 0C014554 */  jal         osRecvMesg
/* 052AB8 80052F08 AFA2002C */   sw         $v0, 0x2c($sp)
/* 052ABC 80052F0C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 052AC0 80052F10 3C028010 */  lui         $v0, %hi(__osEepPifRam + 0x1)
/* 052AC4 80052F14 2442DDA1 */  addiu       $v0, $v0, %lo(__osEepPifRam + 0x1)
/* 052AC8 80052F18 10600003 */  beqz        $v1, .L80052F28
/* 052ACC 80052F1C 3C018010 */   lui        $at, %hi(__osEepPifRam)
/* 052AD0 80052F20 1000001E */  b           .L80052F9C
/* 052AD4 80052F24 00601025 */   move       $v0, $v1
.L80052F28:
/* 052AD8 80052F28 A020DDA0 */  sb          $zero, %lo(__osEepPifRam)($at)
/* 052ADC 80052F2C 88410003 */  lwl         $at, 0x3($v0)
/* 052AE0 80052F30 98410006 */  lwr         $at, 0x6($v0)
/* 052AE4 80052F34 A0400002 */  sb          $zero, 0x2($v0)
/* 052AE8 80052F38 A0400001 */  sb          $zero, 0x1($v0)
/* 052AEC 80052F3C A0400000 */  sb          $zero, 0x0($v0)
/* 052AF0 80052F40 8FA40034 */  lw          $a0, 0x34($sp)
/* 052AF4 80052F44 27A8001C */  addiu       $t0, $sp, 0x1c
/* 052AF8 80052F48 AD010000 */  sw          $at, 0x0($t0)
/* 052AFC 80052F4C 884A0007 */  lwl         $t2, 0x7($v0)
/* 052B00 80052F50 984A000A */  lwr         $t2, 0xa($v0)
/* 052B04 80052F54 24420003 */  addiu       $v0, $v0, 0x3
/* 052B08 80052F58 00001025 */  move        $v0, $zero
/* 052B0C 80052F5C AD0A0004 */  sw          $t2, 0x4($t0)
/* 052B10 80052F60 93AB001E */  lbu         $t3, 0x1e($sp)
/* 052B14 80052F64 316E00C0 */  andi        $t6, $t3, 0xc0
/* 052B18 80052F68 000E6903 */  sra         $t5, $t6, 4
/* 052B1C 80052F6C A08D0003 */  sb          $t5, 0x3($a0)
/* 052B20 80052F70 93AC0021 */  lbu         $t4, 0x21($sp)
/* 052B24 80052F74 93B80020 */  lbu         $t8, 0x20($sp)
/* 052B28 80052F78 31A300FF */  andi        $v1, $t5, 0xff
/* 052B2C 80052F7C 000C7A00 */  sll         $t7, $t4, 8
/* 052B30 80052F80 01F8C825 */  or          $t9, $t7, $t8
/* 052B34 80052F84 A4990000 */  sh          $t9, 0x0($a0)
/* 052B38 80052F88 93A90022 */  lbu         $t1, 0x22($sp)
/* 052B3C 80052F8C 10600003 */  beqz        $v1, .L80052F9C
/* 052B40 80052F90 A0890002 */   sb         $t1, 0x2($a0)
/* 052B44 80052F94 10000001 */  b           .L80052F9C
/* 052B48 80052F98 00601025 */   move       $v0, $v1
.L80052F9C:
/* 052B4C 80052F9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052B50 80052FA0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 052B54 80052FA4 03E00008 */  jr          $ra
/* 052B58 80052FA8 00000000 */   nop
/* 052B5C 80052FAC 00000000 */  nop
