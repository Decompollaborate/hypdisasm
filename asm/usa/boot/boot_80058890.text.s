.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058890 # 0
/* 000000 80058890 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 000004 80058894 AFBF003C */  sw          $ra, 0x3c($sp)
/* 000008 80058898 AFB60030 */  sw          $s6, 0x30($sp)
/* 00000C 8005889C AFB5002C */  sw          $s5, 0x2c($sp)
/* 000010 800588A0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000014 800588A4 00A08825 */  move        $s1, $a1
/* 000018 800588A8 0080B025 */  move        $s6, $a0
/* 00001C 800588AC AFBE0038 */  sw          $fp, 0x38($sp)
/* 000020 800588B0 AFB70034 */  sw          $s7, 0x34($sp)
/* 000024 800588B4 AFB40028 */  sw          $s4, 0x28($sp)
/* 000028 800588B8 AFB30024 */  sw          $s3, 0x24($sp)
/* 00002C 800588BC AFB20020 */  sw          $s2, 0x20($sp)
/* 000030 800588C0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000034 800588C4 AFA60068 */  sw          $a2, 0x68($sp)
/* 000038 800588C8 AFA7006C */  sw          $a3, 0x6c($sp)
/* 00003C 800588CC 0C0160FC */  jal         func_800583F0
/* 000040 800588D0 24150002 */   addiu      $s5, $zero, 0x2
/* 000044 800588D4 97A5006A */  lhu         $a1, 0x6a($sp)
/* 000048 800588D8 3C1E800A */  lui         $fp, %hi(D_8009F8C0)
/* 00004C 800588DC 3C178010 */  lui         $s7, %hi(D_800FDC50)
/* 000050 800588E0 3C148010 */  lui         $s4, %hi(D_80100390)
/* 000054 800588E4 000570C3 */  sra         $t6, $a1, 3
/* 000058 800588E8 00057940 */  sll         $t7, $a1, 5
/* 00005C 800588EC AFAF0040 */  sw          $t7, 0x40($sp)
/* 000060 800588F0 AFAE0044 */  sw          $t6, 0x44($sp)
/* 000064 800588F4 26940390 */  addiu       $s4, $s4, %lo(D_80100390)
/* 000068 800588F8 26F7DC50 */  addiu       $s7, $s7, %lo(D_800FDC50)
/* 00006C 800588FC 27DEF8C0 */  addiu       $fp, $fp, %lo(D_8009F8C0)
.L80058900:
/* 000070 80058900 92F80000 */  lbu         $t8, 0x0($s7)
/* 000074 80058904 24010002 */  addiu       $at, $zero, 0x2
/* 000078 80058908 97A5006A */  lhu         $a1, 0x6a($sp)
/* 00007C 8005890C 17010003 */  bne         $t8, $at, .L8005891C
/* 000080 80058910 02808025 */   move       $s0, $s4
/* 000084 80058914 8FD90000 */  lw          $t9, 0x0($fp)
/* 000088 80058918 12390023 */  beq         $s1, $t9, .L800589A8
.L8005891C:
/* 00008C 8005891C 24080002 */   addiu      $t0, $zero, 0x2
/* 000090 80058920 A2E80000 */  sb          $t0, 0x0($s7)
/* 000094 80058924 AFD10000 */  sw          $s1, 0x0($fp)
/* 000098 80058928 1A200010 */  blez        $s1, .L8005896C
/* 00009C 8005892C 00001025 */   move       $v0, $zero
/* 0000A0 80058930 32240003 */  andi        $a0, $s1, 0x3
/* 0000A4 80058934 10800006 */  beq         $a0, $zero, .L80058950
/* 0000A8 80058938 00801825 */   move       $v1, $a0
.L8005893C:
/* 0000AC 8005893C 24420001 */  addiu       $v0, $v0, 0x1
/* 0000B0 80058940 A2000000 */  sb          $zero, 0x0($s0)
/* 0000B4 80058944 1462FFFD */  bne         $v1, $v0, .L8005893C
/* 0000B8 80058948 26100001 */   addiu      $s0, $s0, 0x1
/* 0000BC 8005894C 10510007 */  beq         $v0, $s1, .L8005896C
.L80058950:
/* 0000C0 80058950 24420004 */   addiu      $v0, $v0, 0x4
/* 0000C4 80058954 A2000000 */  sb          $zero, 0x0($s0)
/* 0000C8 80058958 A2000001 */  sb          $zero, 0x1($s0)
/* 0000CC 8005895C A2000002 */  sb          $zero, 0x2($s0)
/* 0000D0 80058960 A2000003 */  sb          $zero, 0x3($s0)
/* 0000D4 80058964 1451FFFA */  bne         $v0, $s1, .L80058950
/* 0000D8 80058968 26100004 */   addiu      $s0, $s0, 0x4
.L8005896C:
/* 0000DC 8005896C 24090001 */  addiu       $t1, $zero, 0x1
/* 0000E0 80058970 AE89003C */  sw          $t1, 0x3c($s4)
/* 0000E4 80058974 240A00FF */  addiu       $t2, $zero, 0xff
/* 0000E8 80058978 240B0003 */  addiu       $t3, $zero, 0x3
/* 0000EC 8005897C 240C0021 */  addiu       $t4, $zero, 0x21
/* 0000F0 80058980 240D0002 */  addiu       $t5, $zero, 0x2
/* 0000F4 80058984 240E00FF */  addiu       $t6, $zero, 0xff
/* 0000F8 80058988 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0000FC 8005898C A20A0000 */  sb          $t2, 0x0($s0)
/* 000100 80058990 A20B0001 */  sb          $t3, 0x1($s0)
/* 000104 80058994 A20C0002 */  sb          $t4, 0x2($s0)
/* 000108 80058998 A20D0003 */  sb          $t5, 0x3($s0)
/* 00010C 8005899C A20E0026 */  sb          $t6, 0x26($s0)
/* 000110 800589A0 10000002 */  b           .L800589AC
/* 000114 800589A4 A20F0027 */   sb         $t7, 0x27($s0)
.L800589A8:
/* 000118 800589A8 02918021 */  addu        $s0, $s4, $s1
.L800589AC:
/* 00011C 800589AC 8FB80044 */  lw          $t8, 0x44($sp)
/* 000120 800589B0 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 000124 800589B4 0C0161A8 */  jal         __osContAddressCrc
/* 000128 800589B8 A2180004 */   sb         $t8, 0x4($s0)
/* 00012C 800589BC 8FB90040 */  lw          $t9, 0x40($sp)
/* 000130 800589C0 24040001 */  addiu       $a0, $zero, 0x1
/* 000134 800589C4 02802825 */  move        $a1, $s4
/* 000138 800589C8 00594025 */  or          $t0, $v0, $t9
/* 00013C 800589CC 0C016118 */  jal         func_80058460
/* 000140 800589D0 A2080005 */   sb         $t0, 0x5($s0)
/* 000144 800589D4 02C02025 */  move        $a0, $s6
/* 000148 800589D8 00002825 */  move        $a1, $zero
/* 00014C 800589DC 0C014554 */  jal         func_80051550
/* 000150 800589E0 24060001 */   addiu      $a2, $zero, 0x1
/* 000154 800589E4 00002025 */  move        $a0, $zero
/* 000158 800589E8 0C016118 */  jal         func_80058460
/* 00015C 800589EC 02802825 */   move       $a1, $s4
/* 000160 800589F0 02C02025 */  move        $a0, $s6
/* 000164 800589F4 00002825 */  move        $a1, $zero
/* 000168 800589F8 0C014554 */  jal         func_80051550
/* 00016C 800589FC 24060001 */   addiu      $a2, $zero, 0x1
/* 000170 80058A00 92130002 */  lbu         $s3, 0x2($s0)
/* 000174 80058A04 26120006 */  addiu       $s2, $s0, 0x6
/* 000178 80058A08 326900C0 */  andi        $t1, $s3, 0xc0
/* 00017C 80058A0C 00099903 */  sra         $s3, $t1, 4
/* 000180 80058A10 56600014 */  bnel        $s3, $zero, .L80058A64
/* 000184 80058A14 24130001 */   addiu      $s3, $zero, 0x1
/* 000188 80058A18 0C0161DC */  jal         __osContDataCrc
/* 00018C 80058A1C 02402025 */   move       $a0, $s2
/* 000190 80058A20 920B0026 */  lbu         $t3, 0x26($s0)
/* 000194 80058A24 02402025 */  move        $a0, $s2
/* 000198 80058A28 8FA5006C */  lw          $a1, 0x6c($sp)
/* 00019C 80058A2C 11620008 */  beq         $t3, $v0, .L80058A50
/* 0001A0 80058A30 00000000 */   nop
/* 0001A4 80058A34 02C02025 */  move        $a0, $s6
/* 0001A8 80058A38 0C017634 */  jal         func_8005D8D0
/* 0001AC 80058A3C 02202825 */   move       $a1, $s1
/* 0001B0 80058A40 1440000D */  bne         $v0, $zero, .L80058A78
/* 0001B4 80058A44 00409825 */   move       $s3, $v0
/* 0001B8 80058A48 10000006 */  b           .L80058A64
/* 0001BC 80058A4C 24130004 */   addiu      $s3, $zero, 0x4
.L80058A50:
/* 0001C0 80058A50 0C014984 */  jal         func_80052610
/* 0001C4 80058A54 24060020 */   addiu      $a2, $zero, 0x20
/* 0001C8 80058A58 10000003 */  b           .L80058A68
/* 0001CC 80058A5C 24010004 */   addiu      $at, $zero, 0x4
/* 0001D0 80058A60 24130001 */  addiu       $s3, $zero, 0x1
.L80058A64:
/* 0001D4 80058A64 24010004 */  addiu       $at, $zero, 0x4
.L80058A68:
/* 0001D8 80058A68 16610003 */  bne         $s3, $at, .L80058A78
/* 0001DC 80058A6C 2AA20000 */   slti       $v0, $s5, 0x0
/* 0001E0 80058A70 1040FFA3 */  beq         $v0, $zero, .L80058900
/* 0001E4 80058A74 26B5FFFF */   addiu      $s5, $s5, -0x1
.L80058A78:
/* 0001E8 80058A78 0C01610D */  jal         func_80058434
/* 0001EC 80058A7C 00000000 */   nop
/* 0001F0 80058A80 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0001F4 80058A84 02601025 */  move        $v0, $s3
/* 0001F8 80058A88 8FB30024 */  lw          $s3, 0x24($sp)
/* 0001FC 80058A8C 8FB00018 */  lw          $s0, 0x18($sp)
/* 000200 80058A90 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000204 80058A94 8FB20020 */  lw          $s2, 0x20($sp)
/* 000208 80058A98 8FB40028 */  lw          $s4, 0x28($sp)
/* 00020C 80058A9C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 000210 80058AA0 8FB60030 */  lw          $s6, 0x30($sp)
/* 000214 80058AA4 8FB70034 */  lw          $s7, 0x34($sp)
/* 000218 80058AA8 8FBE0038 */  lw          $fp, 0x38($sp)
/* 00021C 80058AAC 03E00008 */  jr          $ra
/* 000220 80058AB0 27BD0060 */   addiu      $sp, $sp, 0x60
/* 000224 80058AB4 00000000 */  nop
/* 000228 80058AB8 00000000 */  nop
/* 00022C 80058ABC 00000000 */  nop
