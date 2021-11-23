.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osViInit # 0
/* 058D30 80059180 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 058D34 80059184 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058D38 80059188 3C04800A */  lui         $a0, %hi(D_8009F8F0)
/* 058D3C 8005918C 2484F8F0 */  addiu       $a0, $a0, %lo(D_8009F8F0)
/* 058D40 80059190 0C014388 */  jal         bzero
/* 058D44 80059194 24050060 */   addiu      $a1, $zero, 0x60
/* 058D48 80059198 3C02800A */  lui         $v0, %hi(__osViCurr)
/* 058D4C 8005919C 3C04800A */  lui         $a0, %hi(__osViNext)
/* 058D50 800591A0 3C0E800A */  lui         $t6, %hi(D_8009F8F0)
/* 058D54 800591A4 3C0F800A */  lui         $t7, %hi(D_8009F8F0 + 0x30)
/* 058D58 800591A8 2484F954 */  addiu       $a0, $a0, %lo(__osViNext)
/* 058D5C 800591AC 2442F950 */  addiu       $v0, $v0, %lo(__osViCurr)
/* 058D60 800591B0 25CEF8F0 */  addiu       $t6, $t6, %lo(D_8009F8F0)
/* 058D64 800591B4 25EFF920 */  addiu       $t7, $t7, %lo(D_8009F8F0 + 0x30)
/* 058D68 800591B8 24050001 */  addiu       $a1, $zero, 0x1
/* 058D6C 800591BC AC4E0000 */  sw          $t6, 0x0($v0)
/* 058D70 800591C0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 058D74 800591C4 A5E50002 */  sh          $a1, 0x2($t7)
/* 058D78 800591C8 8C590000 */  lw          $t9, 0x0($v0)
/* 058D7C 800591CC 3C068000 */  lui         $a2, 0x8000
/* 058D80 800591D0 3C038000 */  lui         $v1, %hi(D_80000300)
/* 058D84 800591D4 A7250002 */  sh          $a1, 0x2($t9)
/* 058D88 800591D8 8C880000 */  lw          $t0, 0x0($a0)
/* 058D8C 800591DC 3C0A800A */  lui         $t2, %hi(osViModePalLan1)
/* 058D90 800591E0 24010002 */  addiu       $at, $zero, 0x2
/* 058D94 800591E4 AD060004 */  sw          $a2, 0x4($t0)
/* 058D98 800591E8 8C490000 */  lw          $t1, 0x0($v0)
/* 058D9C 800591EC AD260004 */  sw          $a2, 0x4($t1)
/* 058DA0 800591F0 8C630300 */  lw          $v1, %lo(D_80000300)($v1)
/* 058DA4 800591F4 14600005 */  bnez        $v1, .L8005920C
/* 058DA8 800591F8 00000000 */   nop
/* 058DAC 800591FC 8C8B0000 */  lw          $t3, 0x0($a0)
/* 058DB0 80059200 254AFAF0 */  addiu       $t2, $t2, %lo(osViModePalLan1)
/* 058DB4 80059204 1000000B */  b           .L80059234
/* 058DB8 80059208 AD6A0008 */   sw         $t2, 0x8($t3)
.L8005920C:
/* 058DBC 8005920C 14610005 */  bne         $v1, $at, .L80059224
/* 058DC0 80059210 3C0C800A */   lui        $t4, %hi(osViModeMpalLan1)
/* 058DC4 80059214 8C8D0000 */  lw          $t5, 0x0($a0)
/* 058DC8 80059218 258CFB40 */  addiu       $t4, $t4, %lo(osViModeMpalLan1)
/* 058DCC 8005921C 10000005 */  b           .L80059234
/* 058DD0 80059220 ADAC0008 */   sw         $t4, 0x8($t5)
.L80059224:
/* 058DD4 80059224 8C8F0000 */  lw          $t7, 0x0($a0)
/* 058DD8 80059228 3C0E800A */  lui         $t6, %hi(osViModeNtscLan1)
/* 058DDC 8005922C 25CEFB90 */  addiu       $t6, $t6, %lo(osViModeNtscLan1)
/* 058DE0 80059230 ADEE0008 */  sw          $t6, 0x8($t7)
.L80059234:
/* 058DE4 80059234 8C990000 */  lw          $t9, 0x0($a0)
/* 058DE8 80059238 24180020 */  addiu       $t8, $zero, 0x20
/* 058DEC 8005923C 3C02A440 */  lui         $v0, 0xa440
/* 058DF0 80059240 A7380000 */  sh          $t8, 0x0($t9)
/* 058DF4 80059244 8C830000 */  lw          $v1, 0x0($a0)
/* 058DF8 80059248 34420010 */  ori         $v0, $v0, 0x10
/* 058DFC 8005924C 3C0CA440 */  lui         $t4, %hi(D_A4400000)
/* 058E00 80059250 8C680008 */  lw          $t0, 0x8($v1)
/* 058E04 80059254 8D090004 */  lw          $t1, 0x4($t0)
/* 058E08 80059258 AC69000C */  sw          $t1, 0xc($v1)
/* 058E0C 8005925C 8C4A0000 */  lw          $t2, 0x0($v0)
/* 058E10 80059260 2D41000B */  sltiu       $at, $t2, 0xb
/* 058E14 80059264 14200005 */  bnez        $at, .L8005927C
/* 058E18 80059268 00000000 */   nop
/* 058E1C 8005926C 8C4B0000 */  lw          $t3, 0x0($v0)
.L80059270:
/* 058E20 80059270 2D61000B */  sltiu       $at, $t3, 0xb
/* 058E24 80059274 5020FFFE */  beql        $at, $zero, .L80059270
/* 058E28 80059278 8C4B0000 */   lw         $t3, 0x0($v0)
.L8005927C:
/* 058E2C 8005927C 0C0169C0 */  jal         __osViSwapContext
/* 058E30 80059280 AD800000 */   sw         $zero, %lo(D_A4400000)($t4)
/* 058E34 80059284 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058E38 80059288 27BD0018 */  addiu       $sp, $sp, 0x18
/* 058E3C 8005928C 03E00008 */  jr          $ra
/* 058E40 80059290 00000000 */   nop
/* 058E44 80059294 00000000 */  nop
/* 058E48 80059298 00000000 */  nop
/* 058E4C 8005929C 00000000 */  nop
