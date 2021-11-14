.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80052FB0 # 0
/* 052B60 80052FB0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 052B64 80052FB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 052B68 80052FB8 0C0160FC */  jal         func_800583F0
/* 052B6C 80052FBC AFA40020 */   sw         $a0, 0x20($sp)
/* 052B70 80052FC0 3C0E8010 */  lui         $t6, %hi(D_800FDC50)
/* 052B74 80052FC4 91CEDC50 */  lbu         $t6, %lo(D_800FDC50)($t6)
/* 052B78 80052FC8 24010001 */  addiu       $at, $zero, 0x1
/* 052B7C 80052FCC 11C1000B */  beq         $t6, $at, .L80052FFC
/* 052B80 80052FD0 00000000 */   nop
/* 052B84 80052FD4 0C014C30 */  jal         func_800530C0
/* 052B88 80052FD8 00000000 */   nop
/* 052B8C 80052FDC 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 052B90 80052FE0 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 052B94 80052FE4 0C016118 */  jal         func_80058460
/* 052B98 80052FE8 24040001 */   addiu      $a0, $zero, 0x1
/* 052B9C 80052FEC 8FA40020 */  lw          $a0, 0x20($sp)
/* 052BA0 80052FF0 00002825 */  move        $a1, $zero
/* 052BA4 80052FF4 0C014554 */  jal         osRecvMesg
/* 052BA8 80052FF8 24060001 */   addiu      $a2, $zero, 0x1
.L80052FFC:
/* 052BAC 80052FFC 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 052BB0 80053000 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 052BB4 80053004 0C016118 */  jal         func_80058460
/* 052BB8 80053008 00002025 */   move       $a0, $zero
/* 052BBC 8005300C 240F0001 */  addiu       $t7, $zero, 0x1
/* 052BC0 80053010 3C018010 */  lui         $at, %hi(D_800FDC50)
/* 052BC4 80053014 AFA2001C */  sw          $v0, 0x1c($sp)
/* 052BC8 80053018 0C01610D */  jal         func_80058434
/* 052BCC 8005301C A02FDC50 */   sb         $t7, %lo(D_800FDC50)($at)
/* 052BD0 80053020 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052BD4 80053024 8FA2001C */  lw          $v0, 0x1c($sp)
/* 052BD8 80053028 27BD0020 */  addiu       $sp, $sp, 0x20
/* 052BDC 8005302C 03E00008 */  jr          $ra
/* 052BE0 80053030 00000000 */   nop

glabel func_80053034 # 1
/* 052BE4 80053034 3C058010 */  lui         $a1, %hi(D_800FDC51)
/* 052BE8 80053038 24A5DC51 */  addiu       $a1, $a1, %lo(D_800FDC51)
/* 052BEC 8005303C 90AE0000 */  lbu         $t6, 0x0($a1)
/* 052BF0 80053040 3C028010 */  lui         $v0, %hi(D_800FDC10)
/* 052BF4 80053044 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 052BF8 80053048 2442DC10 */  addiu       $v0, $v0, %lo(D_800FDC10)
/* 052BFC 8005304C 19C0001A */  blez        $t6, .L800530B8
/* 052C00 80053050 00001825 */   move       $v1, $zero
/* 052C04 80053054 27A60004 */  addiu       $a2, $sp, 0x4
.L80053058:
/* 052C08 80053058 88410000 */  lwl         $at, 0x0($v0)
/* 052C0C 8005305C 98410003 */  lwr         $at, 0x3($v0)
/* 052C10 80053060 ACC10000 */  sw          $at, 0x0($a2)
/* 052C14 80053064 88580004 */  lwl         $t8, 0x4($v0)
/* 052C18 80053068 98580007 */  lwr         $t8, 0x7($v0)
/* 052C1C 8005306C ACD80004 */  sw          $t8, 0x4($a2)
/* 052C20 80053070 93B90006 */  lbu         $t9, 0x6($sp)
/* 052C24 80053074 332800C0 */  andi        $t0, $t9, 0xc0
/* 052C28 80053078 00084903 */  sra         $t1, $t0, 4
/* 052C2C 8005307C 312A00FF */  andi        $t2, $t1, 0xff
/* 052C30 80053080 15400007 */  bne         $t2, $zero, .L800530A0
/* 052C34 80053084 A0890004 */   sb         $t1, 0x4($a0)
/* 052C38 80053088 97AB0008 */  lhu         $t3, 0x8($sp)
/* 052C3C 8005308C A48B0000 */  sh          $t3, 0x0($a0)
/* 052C40 80053090 83AC000A */  lb          $t4, 0xa($sp)
/* 052C44 80053094 A08C0002 */  sb          $t4, 0x2($a0)
/* 052C48 80053098 83AD000B */  lb          $t5, 0xb($sp)
/* 052C4C 8005309C A08D0003 */  sb          $t5, 0x3($a0)
.L800530A0:
/* 052C50 800530A0 90AE0000 */  lbu         $t6, 0x0($a1)
/* 052C54 800530A4 24630001 */  addiu       $v1, $v1, 0x1
/* 052C58 800530A8 24420008 */  addiu       $v0, $v0, 0x8
/* 052C5C 800530AC 006E082A */  slt         $at, $v1, $t6
/* 052C60 800530B0 1420FFE9 */  bne         $at, $zero, .L80053058
/* 052C64 800530B4 24840006 */   addiu      $a0, $a0, 0x6
.L800530B8:
/* 052C68 800530B8 03E00008 */  jr          $ra
/* 052C6C 800530BC 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_800530C0 # 2
/* 052C70 800530C0 3C058010 */  lui         $a1, %hi(D_800FDC10)
/* 052C74 800530C4 24A5DC10 */  addiu       $a1, $a1, %lo(D_800FDC10)
/* 052C78 800530C8 3C048010 */  lui         $a0, %hi(D_800FDC10)
/* 052C7C 800530CC 3C038010 */  lui         $v1, %hi(D_800FDC4C)
/* 052C80 800530D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 052C84 800530D4 00A01025 */  move        $v0, $a1
/* 052C88 800530D8 2463DC4C */  addiu       $v1, $v1, %lo(D_800FDC4C)
/* 052C8C 800530DC 2484DC10 */  addiu       $a0, $a0, %lo(D_800FDC10)
.L800530E0:
/* 052C90 800530E0 24840004 */  addiu       $a0, $a0, 0x4
/* 052C94 800530E4 0083082B */  sltu        $at, $a0, $v1
/* 052C98 800530E8 1420FFFD */  bne         $at, $zero, .L800530E0
/* 052C9C 800530EC AC80FFFC */   sw         $zero, -0x4($a0)
/* 052CA0 800530F0 3C048010 */  lui         $a0, %hi(D_800FDC51)
/* 052CA4 800530F4 2484DC51 */  addiu       $a0, $a0, %lo(D_800FDC51)
/* 052CA8 800530F8 908C0000 */  lbu         $t4, 0x0($a0)
/* 052CAC 800530FC 240E0001 */  addiu       $t6, $zero, 0x1
/* 052CB0 80053100 240F00FF */  addiu       $t7, $zero, 0xff
/* 052CB4 80053104 24180001 */  addiu       $t8, $zero, 0x1
/* 052CB8 80053108 24190004 */  addiu       $t9, $zero, 0x4
/* 052CBC 8005310C 24080001 */  addiu       $t0, $zero, 0x1
/* 052CC0 80053110 3409FFFF */  ori         $t1, $zero, 0xffff
/* 052CC4 80053114 240AFFFF */  addiu       $t2, $zero, -0x1
/* 052CC8 80053118 240BFFFF */  addiu       $t3, $zero, -0x1
/* 052CCC 8005311C ACAE003C */  sw          $t6, 0x3c($a1)
/* 052CD0 80053120 A3AF000C */  sb          $t7, 0xc($sp)
/* 052CD4 80053124 A3B8000D */  sb          $t8, 0xd($sp)
/* 052CD8 80053128 A3B9000E */  sb          $t9, 0xe($sp)
/* 052CDC 8005312C A3A8000F */  sb          $t0, 0xf($sp)
/* 052CE0 80053130 A7A90010 */  sh          $t1, 0x10($sp)
/* 052CE4 80053134 A3AA0012 */  sb          $t2, 0x12($sp)
/* 052CE8 80053138 A3AB0013 */  sb          $t3, 0x13($sp)
/* 052CEC 8005313C 1980000E */  blez        $t4, .L80053178
/* 052CF0 80053140 00001825 */   move       $v1, $zero
/* 052CF4 80053144 27A5000C */  addiu       $a1, $sp, 0xc
/* 052CF8 80053148 8CA10000 */  lw          $at, 0x0($a1)
.L8005314C:
/* 052CFC 8005314C 24630001 */  addiu       $v1, $v1, 0x1
/* 052D00 80053150 24420008 */  addiu       $v0, $v0, 0x8
/* 052D04 80053154 A841FFF8 */  swl         $at, -0x8($v0)
/* 052D08 80053158 B841FFFB */  swr         $at, -0x5($v0)
/* 052D0C 8005315C 8CAE0004 */  lw          $t6, 0x4($a1)
/* 052D10 80053160 A84EFFFC */  swl         $t6, -0x4($v0)
/* 052D14 80053164 B84EFFFF */  swr         $t6, -0x1($v0)
/* 052D18 80053168 908F0000 */  lbu         $t7, 0x0($a0)
/* 052D1C 8005316C 006F082A */  slt         $at, $v1, $t7
/* 052D20 80053170 5420FFF6 */  bnel        $at, $zero, .L8005314C
/* 052D24 80053174 8CA10000 */   lw         $at, 0x0($a1)
.L80053178:
/* 052D28 80053178 241800FE */  addiu       $t8, $zero, 0xfe
/* 052D2C 8005317C A0580000 */  sb          $t8, 0x0($v0)
/* 052D30 80053180 03E00008 */  jr          $ra
/* 052D34 80053184 27BD0018 */   addiu      $sp, $sp, 0x18
/* 052D38 80053188 00000000 */  nop
/* 052D3C 8005318C 00000000 */  nop
