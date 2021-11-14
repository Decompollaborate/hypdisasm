.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8011BD50 # 0
/* 011260 8011BD50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011264 8011BD54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011268 8011BD58 AFA40020 */  sw          $a0, 0x20($sp)
/* 01126C 8011BD5C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011270 8011BD60 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 011274 8011BD64 0C04559B */  jal         func_8011566C
/* 011278 8011BD68 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01127C 8011BD6C 8FA5001C */  lw          $a1, 0x1c($sp)
/* 011280 8011BD70 0002C880 */  sll         $t9, $v0, 2
/* 011284 8011BD74 8FA40020 */  lw          $a0, 0x20($sp)
/* 011288 8011BD78 8CB802AC */  lw          $t8, 0x2ac($a1)
/* 01128C 8011BD7C 03194021 */  addu        $t0, $t8, $t9
/* 011290 8011BD80 8D030000 */  lw          $v1, 0x0($t0)
/* 011294 8011BD84 0060F809 */  jalr        $v1
/* 011298 8011BD88 00000000 */   nop
/* 01129C 8011BD8C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0112A0 8011BD90 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0112A4 8011BD94 03E00008 */  jr          $ra
/* 0112A8 8011BD98 00000000 */   nop

glabel func_8011BD9C # 1
/* 0112AC 8011BD9C 90CE0000 */  lbu         $t6, 0x0($a2)
/* 0112B0 8011BDA0 00803825 */  move        $a3, $a0
/* 0112B4 8011BDA4 00001025 */  move        $v0, $zero
/* 0112B8 8011BDA8 11C0000A */  beq         $t6, $zero, .L8011BDD4
/* 0112BC 8011BDAC 24A3FFFF */   addiu      $v1, $a1, -0x1
/* 0112C0 8011BDB0 18600008 */  blez        $v1, .L8011BDD4
/* 0112C4 8011BDB4 00C02021 */   addu       $a0, $a2, $zero
/* 0112C8 8011BDB8 908F0001 */  lbu         $t7, 0x1($a0)
.L8011BDBC:
/* 0112CC 8011BDBC 24420001 */  addiu       $v0, $v0, 0x1
/* 0112D0 8011BDC0 0043082A */  slt         $at, $v0, $v1
/* 0112D4 8011BDC4 11E00003 */  beq         $t7, $zero, .L8011BDD4
/* 0112D8 8011BDC8 24840001 */   addiu      $a0, $a0, 0x1
/* 0112DC 8011BDCC 5420FFFB */  bnel        $at, $zero, .L8011BDBC
/* 0112E0 8011BDD0 908F0001 */   lbu        $t7, 0x1($a0)
.L8011BDD4:
/* 0112E4 8011BDD4 90F80000 */  lbu         $t8, 0x0($a3)
/* 0112E8 8011BDD8 00A22023 */  subu        $a0, $a1, $v0
/* 0112EC 8011BDDC 2484FFFF */  addiu       $a0, $a0, -0x1
/* 0112F0 8011BDE0 1300000A */  beq         $t8, $zero, .L8011BE0C
/* 0112F4 8011BDE4 00001825 */   move       $v1, $zero
/* 0112F8 8011BDE8 18800008 */  blez        $a0, .L8011BE0C
/* 0112FC 8011BDEC 00E04021 */   addu       $t0, $a3, $zero
/* 011300 8011BDF0 91190001 */  lbu         $t9, 0x1($t0)
.L8011BDF4:
/* 011304 8011BDF4 24630001 */  addiu       $v1, $v1, 0x1
/* 011308 8011BDF8 0064082A */  slt         $at, $v1, $a0
/* 01130C 8011BDFC 13200003 */  beq         $t9, $zero, .L8011BE0C
/* 011310 8011BE00 25080001 */   addiu      $t0, $t0, 0x1
/* 011314 8011BE04 5420FFFB */  bnel        $at, $zero, .L8011BDF4
/* 011318 8011BE08 91190001 */   lbu        $t9, 0x1($t0)
.L8011BE0C:
/* 01131C 8011BE0C 04600009 */  bltz        $v1, .L8011BE34
/* 011320 8011BE10 00E34021 */   addu       $t0, $a3, $v1
/* 011324 8011BE14 00E35821 */  addu        $t3, $a3, $v1
/* 011328 8011BE18 01622021 */  addu        $a0, $t3, $v0
.L8011BE1C:
/* 01132C 8011BE1C 910C0000 */  lbu         $t4, 0x0($t0)
/* 011330 8011BE20 2463FFFF */  addiu       $v1, $v1, -0x1
/* 011334 8011BE24 2508FFFF */  addiu       $t0, $t0, -0x1
/* 011338 8011BE28 2484FFFF */  addiu       $a0, $a0, -0x1
/* 01133C 8011BE2C 0461FFFB */  bgez        $v1, .L8011BE1C
/* 011340 8011BE30 A08C0001 */   sb         $t4, 0x1($a0)
.L8011BE34:
/* 011344 8011BE34 1840001B */  blez        $v0, .L8011BEA4
/* 011348 8011BE38 00001825 */   move       $v1, $zero
/* 01134C 8011BE3C 304A0003 */  andi        $t2, $v0, 0x3
/* 011350 8011BE40 1140000A */  beq         $t2, $zero, .L8011BE6C
/* 011354 8011BE44 01404825 */   move       $t1, $t2
/* 011358 8011BE48 00E02021 */  addu        $a0, $a3, $zero
/* 01135C 8011BE4C 00C04021 */  addu        $t0, $a2, $zero
.L8011BE50:
/* 011360 8011BE50 910D0000 */  lbu         $t5, 0x0($t0)
/* 011364 8011BE54 24630001 */  addiu       $v1, $v1, 0x1
/* 011368 8011BE58 24840001 */  addiu       $a0, $a0, 0x1
/* 01136C 8011BE5C 25080001 */  addiu       $t0, $t0, 0x1
/* 011370 8011BE60 1523FFFB */  bne         $t1, $v1, .L8011BE50
/* 011374 8011BE64 A08DFFFF */   sb         $t5, -0x1($a0)
/* 011378 8011BE68 1062000E */  beq         $v1, $v0, .L8011BEA4
.L8011BE6C:
/* 01137C 8011BE6C 00E32021 */   addu       $a0, $a3, $v1
/* 011380 8011BE70 00C34021 */  addu        $t0, $a2, $v1
.L8011BE74:
/* 011384 8011BE74 910E0000 */  lbu         $t6, 0x0($t0)
/* 011388 8011BE78 24630004 */  addiu       $v1, $v1, 0x4
/* 01138C 8011BE7C 24840004 */  addiu       $a0, $a0, 0x4
/* 011390 8011BE80 A08EFFFC */  sb          $t6, -0x4($a0)
/* 011394 8011BE84 910F0001 */  lbu         $t7, 0x1($t0)
/* 011398 8011BE88 25080004 */  addiu       $t0, $t0, 0x4
/* 01139C 8011BE8C A08FFFFD */  sb          $t7, -0x3($a0)
/* 0113A0 8011BE90 9118FFFE */  lbu         $t8, -0x2($t0)
/* 0113A4 8011BE94 A098FFFE */  sb          $t8, -0x2($a0)
/* 0113A8 8011BE98 9119FFFF */  lbu         $t9, -0x1($t0)
/* 0113AC 8011BE9C 1462FFF5 */  bne         $v1, $v0, .L8011BE74
/* 0113B0 8011BEA0 A099FFFF */   sb         $t9, -0x1($a0)
.L8011BEA4:
/* 0113B4 8011BEA4 00E55821 */  addu        $t3, $a3, $a1
/* 0113B8 8011BEA8 03E00008 */  jr          $ra
/* 0113BC 8011BEAC A160FFFF */   sb         $zero, -0x1($t3)

glabel func_8011BEB0 # 2
/* 0113C0 8011BEB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0113C4 8011BEB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0113C8 8011BEB8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0113CC 8011BEBC 00002825 */  move        $a1, $zero
/* 0113D0 8011BEC0 0C045807 */  jal         func_8011601C
/* 0113D4 8011BEC4 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0113D8 8011BEC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0113DC 8011BECC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0113E0 8011BED0 24020001 */  addiu       $v0, $zero, 0x1
/* 0113E4 8011BED4 03E00008 */  jr          $ra
/* 0113E8 8011BED8 00000000 */   nop

glabel func_8011BEDC # 3
/* 0113EC 8011BEDC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0113F0 8011BEE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0113F4 8011BEE4 0C0459E8 */  jal         func_801167A0
/* 0113F8 8011BEE8 24050002 */   addiu      $a1, $zero, 0x2
/* 0113FC 8011BEEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011400 8011BEF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011404 8011BEF4 24020002 */  addiu       $v0, $zero, 0x2
/* 011408 8011BEF8 03E00008 */  jr          $ra
/* 01140C 8011BEFC 00000000 */   nop

glabel func_8011BF00 # 4
/* 011410 8011BF00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011414 8011BF04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011418 8011BF08 0C0459E8 */  jal         func_801167A0
/* 01141C 8011BF0C 24050003 */   addiu      $a1, $zero, 0x3
/* 011420 8011BF10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011424 8011BF14 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011428 8011BF18 24020002 */  addiu       $v0, $zero, 0x2
/* 01142C 8011BF1C 03E00008 */  jr          $ra
/* 011430 8011BF20 00000000 */   nop

glabel func_8011BF24 # 5
/* 011434 8011BF24 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011438 8011BF28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01143C 8011BF2C 0C0459E8 */  jal         func_801167A0
/* 011440 8011BF30 24050003 */   addiu      $a1, $zero, 0x3
/* 011444 8011BF34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011448 8011BF38 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01144C 8011BF3C 24020002 */  addiu       $v0, $zero, 0x2
/* 011450 8011BF40 03E00008 */  jr          $ra
/* 011454 8011BF44 00000000 */   nop

glabel func_8011BF48 # 6
/* 011458 8011BF48 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01145C 8011BF4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011460 8011BF50 0C0459E8 */  jal         func_801167A0
/* 011464 8011BF54 24050005 */   addiu      $a1, $zero, 0x5
/* 011468 8011BF58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01146C 8011BF5C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011470 8011BF60 24020002 */  addiu       $v0, $zero, 0x2
/* 011474 8011BF64 03E00008 */  jr          $ra
/* 011478 8011BF68 00000000 */   nop

glabel func_8011BF6C # 7
/* 01147C 8011BF6C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011480 8011BF70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011484 8011BF74 0C0459E8 */  jal         func_801167A0
/* 011488 8011BF78 24050006 */   addiu      $a1, $zero, 0x6
/* 01148C 8011BF7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011490 8011BF80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011494 8011BF84 24020002 */  addiu       $v0, $zero, 0x2
/* 011498 8011BF88 03E00008 */  jr          $ra
/* 01149C 8011BF8C 00000000 */   nop

glabel func_8011BF90 # 8
/* 0114A0 8011BF90 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0114A4 8011BF94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0114A8 8011BF98 0C0459E8 */  jal         func_801167A0
/* 0114AC 8011BF9C 24050007 */   addiu      $a1, $zero, 0x7
/* 0114B0 8011BFA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0114B4 8011BFA4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0114B8 8011BFA8 24020002 */  addiu       $v0, $zero, 0x2
/* 0114BC 8011BFAC 03E00008 */  jr          $ra
/* 0114C0 8011BFB0 00000000 */   nop

glabel func_8011BFB4 # 9
/* 0114C4 8011BFB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0114C8 8011BFB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0114CC 8011BFBC 8C830054 */  lw          $v1, 0x54($a0)
/* 0114D0 8011BFC0 8C6401B8 */  lw          $a0, 0x1b8($v1)
/* 0114D4 8011BFC4 AFA3001C */  sw          $v1, 0x1c($sp)
/* 0114D8 8011BFC8 0C04582D */  jal         func_801160B4
/* 0114DC 8011BFCC AFA40018 */   sw         $a0, 0x18($sp)
/* 0114E0 8011BFD0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 0114E4 8011BFD4 8FA40018 */  lw          $a0, 0x18($sp)
/* 0114E8 8011BFD8 00002825 */  move        $a1, $zero
/* 0114EC 8011BFDC 0C045807 */  jal         func_8011601C
/* 0114F0 8011BFE0 AC620194 */   sw         $v0, 0x194($v1)
/* 0114F4 8011BFE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0114F8 8011BFE8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0114FC 8011BFEC 00001025 */  move        $v0, $zero
/* 011500 8011BFF0 03E00008 */  jr          $ra
/* 011504 8011BFF4 00000000 */   nop

glabel func_8011BFF8 # 10
/* 011508 8011BFF8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01150C 8011BFFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011510 8011C000 0C0459E8 */  jal         func_801167A0
/* 011514 8011C004 24050008 */   addiu      $a1, $zero, 0x8
/* 011518 8011C008 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01151C 8011C00C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011520 8011C010 24020002 */  addiu       $v0, $zero, 0x2
/* 011524 8011C014 03E00008 */  jr          $ra
/* 011528 8011C018 00000000 */   nop

glabel func_8011C01C # 11
/* 01152C 8011C01C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011530 8011C020 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011534 8011C024 0C0459E8 */  jal         func_801167A0
/* 011538 8011C028 24050009 */   addiu      $a1, $zero, 0x9
/* 01153C 8011C02C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011540 8011C030 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011544 8011C034 24020002 */  addiu       $v0, $zero, 0x2
/* 011548 8011C038 03E00008 */  jr          $ra
/* 01154C 8011C03C 00000000 */   nop

glabel func_8011C040 # 12
/* 011550 8011C040 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011554 8011C044 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011558 8011C048 AFB20020 */  sw          $s2, 0x20($sp)
/* 01155C 8011C04C AFB1001C */  sw          $s1, 0x1c($sp)
/* 011560 8011C050 AFB00018 */  sw          $s0, 0x18($sp)
/* 011564 8011C054 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011568 8011C058 3C128013 */  lui         $s2, %hi(D_80134220)
/* 01156C 8011C05C 26524220 */  addiu       $s2, $s2, %lo(D_80134220)
/* 011570 8011C060 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 011574 8011C064 A2400000 */  sb          $zero, 0x0($s2)
/* 011578 8011C068 0C04559B */  jal         func_8011566C
/* 01157C 8011C06C 02202025 */   move       $a0, $s1
/* 011580 8011C070 2450FFFF */  addiu       $s0, $v0, -0x1
/* 011584 8011C074 0602000B */  bltzl       $s0, .L8011C0A4
/* 011588 8011C078 02202025 */   move       $a0, $s1
.L8011C07C:
/* 01158C 8011C07C 0C045841 */  jal         func_80116104
/* 011590 8011C080 02202025 */   move       $a0, $s1
/* 011594 8011C084 02402025 */  move        $a0, $s2
/* 011598 8011C088 24050050 */  addiu       $a1, $zero, 0x50
/* 01159C 8011C08C 0C046F67 */  jal         func_8011BD9C
/* 0115A0 8011C090 00403025 */   move       $a2, $v0
/* 0115A4 8011C094 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0115A8 8011C098 0601FFF8 */  bgez        $s0, .L8011C07C
/* 0115AC 8011C09C 00000000 */   nop
/* 0115B0 8011C0A0 02202025 */  move        $a0, $s1
.L8011C0A4:
/* 0115B4 8011C0A4 0C045807 */  jal         func_8011601C
/* 0115B8 8011C0A8 00002825 */   move       $a1, $zero
/* 0115BC 8011C0AC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0115C0 8011C0B0 8FB00018 */  lw          $s0, 0x18($sp)
/* 0115C4 8011C0B4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0115C8 8011C0B8 8FB20020 */  lw          $s2, 0x20($sp)
/* 0115CC 8011C0BC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0115D0 8011C0C0 03E00008 */  jr          $ra
/* 0115D4 8011C0C4 00001025 */   move       $v0, $zero

glabel func_8011C0C8 # 13
/* 0115D8 8011C0C8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0115DC 8011C0CC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0115E0 8011C0D0 AFB20020 */  sw          $s2, 0x20($sp)
/* 0115E4 8011C0D4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0115E8 8011C0D8 AFB00018 */  sw          $s0, 0x18($sp)
/* 0115EC 8011C0DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0115F0 8011C0E0 3C128013 */  lui         $s2, %hi(D_80134220)
/* 0115F4 8011C0E4 26524220 */  addiu       $s2, $s2, %lo(D_80134220)
/* 0115F8 8011C0E8 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 0115FC 8011C0EC A2400000 */  sb          $zero, 0x0($s2)
/* 011600 8011C0F0 0C04559B */  jal         func_8011566C
/* 011604 8011C0F4 02202025 */   move       $a0, $s1
/* 011608 8011C0F8 2450FFFF */  addiu       $s0, $v0, -0x1
/* 01160C 8011C0FC 0602000B */  bltzl       $s0, .L8011C12C
/* 011610 8011C100 02202025 */   move       $a0, $s1
.L8011C104:
/* 011614 8011C104 0C045841 */  jal         func_80116104
/* 011618 8011C108 02202025 */   move       $a0, $s1
/* 01161C 8011C10C 02402025 */  move        $a0, $s2
/* 011620 8011C110 24050050 */  addiu       $a1, $zero, 0x50
/* 011624 8011C114 0C046F67 */  jal         func_8011BD9C
/* 011628 8011C118 00403025 */   move       $a2, $v0
/* 01162C 8011C11C 2610FFFF */  addiu       $s0, $s0, -0x1
/* 011630 8011C120 0601FFF8 */  bgez        $s0, .L8011C104
/* 011634 8011C124 00000000 */   nop
/* 011638 8011C128 02202025 */  move        $a0, $s1
.L8011C12C:
/* 01163C 8011C12C 0C045807 */  jal         func_8011601C
/* 011640 8011C130 00002825 */   move       $a1, $zero
/* 011644 8011C134 8FBF0024 */  lw          $ra, 0x24($sp)
/* 011648 8011C138 8FB00018 */  lw          $s0, 0x18($sp)
/* 01164C 8011C13C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 011650 8011C140 8FB20020 */  lw          $s2, 0x20($sp)
/* 011654 8011C144 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011658 8011C148 03E00008 */  jr          $ra
/* 01165C 8011C14C 00001025 */   move       $v0, $zero

glabel func_8011C150 # 14
/* 011660 8011C150 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011664 8011C154 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011668 8011C158 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01166C 8011C15C 00002825 */  move        $a1, $zero
/* 011670 8011C160 0C045807 */  jal         func_8011601C
/* 011674 8011C164 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 011678 8011C168 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01167C 8011C16C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011680 8011C170 00001025 */  move        $v0, $zero
/* 011684 8011C174 03E00008 */  jr          $ra
/* 011688 8011C178 00000000 */   nop

glabel func_8011C17C # 15
/* 01168C 8011C17C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011690 8011C180 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011694 8011C184 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011698 8011C188 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01169C 8011C18C 0C00EADA */  jal         func_8003AB68
/* 0116A0 8011C190 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0116A4 8011C194 44822000 */  mtc1        $v0, $f4
/* 0116A8 8011C198 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0116AC 8011C19C 04410006 */  bgez        $v0, .L8011C1B8
/* 0116B0 8011C1A0 468021A1 */   cvt.d.w    $f6, $f4
/* 0116B4 8011C1A4 3C0141F0 */  lui         $at, 0x41f0
/* 0116B8 8011C1A8 44814800 */  mtc1        $at, $f9
/* 0116BC 8011C1AC 44804000 */  mtc1        $zero, $f8
/* 0116C0 8011C1B0 00000000 */  nop
/* 0116C4 8011C1B4 46283180 */  add.d       $f6, $f6, $f8
.L8011C1B8:
/* 0116C8 8011C1B8 3C013DF0 */  lui         $at, 0x3df0
/* 0116CC 8011C1BC 44815800 */  mtc1        $at, $f11
/* 0116D0 8011C1C0 44805000 */  mtc1        $zero, $f10
/* 0116D4 8011C1C4 00000000 */  nop
/* 0116D8 8011C1C8 462A3402 */  mul.d       $f16, $f6, $f10
/* 0116DC 8011C1CC 462084A0 */  cvt.s.d     $f18, $f16
/* 0116E0 8011C1D0 44059000 */  mfc1        $a1, $f18
/* 0116E4 8011C1D4 0C045813 */  jal         func_8011604C
/* 0116E8 8011C1D8 00000000 */   nop
/* 0116EC 8011C1DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0116F0 8011C1E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0116F4 8011C1E4 00001025 */  move        $v0, $zero
/* 0116F8 8011C1E8 03E00008 */  jr          $ra
/* 0116FC 8011C1EC 00000000 */   nop

glabel func_8011C1F0 # 16
/* 011700 8011C1F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011704 8011C1F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011708 8011C1F8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01170C 8011C1FC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011710 8011C200 0C04582D */  jal         func_801160B4
/* 011714 8011C204 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011718 8011C208 0C00EAC8 */  jal         func_8003AB20
/* 01171C 8011C20C 00402025 */   move       $a0, $v0
/* 011720 8011C210 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011724 8011C214 0C045807 */  jal         func_8011601C
/* 011728 8011C218 00402825 */   move       $a1, $v0
/* 01172C 8011C21C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011730 8011C220 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011734 8011C224 00001025 */  move        $v0, $zero
/* 011738 8011C228 03E00008 */  jr          $ra
/* 01173C 8011C22C 00000000 */   nop

glabel func_8011C230 # 17
/* 011740 8011C230 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011744 8011C234 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011748 8011C238 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01174C 8011C23C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011750 8011C240 0C04582D */  jal         func_801160B4
/* 011754 8011C244 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011758 8011C248 0C003796 */  jal         func_8000DE58
/* 01175C 8011C24C 00402025 */   move       $a0, $v0
/* 011760 8011C250 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011764 8011C254 0C045807 */  jal         func_8011601C
/* 011768 8011C258 00402825 */   move       $a1, $v0
/* 01176C 8011C25C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011770 8011C260 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011774 8011C264 00001025 */  move        $v0, $zero
/* 011778 8011C268 03E00008 */  jr          $ra
/* 01177C 8011C26C 00000000 */   nop

glabel func_8011C270 # 18
/* 011780 8011C270 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011784 8011C274 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011788 8011C278 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01178C 8011C27C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011790 8011C280 0C04582D */  jal         func_801160B4
/* 011794 8011C284 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011798 8011C288 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01179C 8011C28C 0C045807 */  jal         func_8011601C
/* 0117A0 8011C290 00402825 */   move       $a1, $v0
/* 0117A4 8011C294 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0117A8 8011C298 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0117AC 8011C29C 00001025 */  move        $v0, $zero
/* 0117B0 8011C2A0 03E00008 */  jr          $ra
/* 0117B4 8011C2A4 00000000 */   nop

glabel func_8011C2A8 # 19
/* 0117B8 8011C2A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0117BC 8011C2AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0117C0 8011C2B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0117C4 8011C2B4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0117C8 8011C2B8 0C045837 */  jal         func_801160DC
/* 0117CC 8011C2BC AFA4001C */   sw         $a0, 0x1c($sp)
/* 0117D0 8011C2C0 44050000 */  mfc1        $a1, $f0
/* 0117D4 8011C2C4 0C045813 */  jal         func_8011604C
/* 0117D8 8011C2C8 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0117DC 8011C2CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0117E0 8011C2D0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0117E4 8011C2D4 00001025 */  move        $v0, $zero
/* 0117E8 8011C2D8 03E00008 */  jr          $ra
/* 0117EC 8011C2DC 00000000 */   nop

glabel func_8011C2E0 # 20
/* 0117F0 8011C2E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0117F4 8011C2E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0117F8 8011C2E8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0117FC 8011C2EC 44802000 */  mtc1        $zero, $f4
/* 011800 8011C2F0 00002825 */  move        $a1, $zero
/* 011804 8011C2F4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011808 8011C2F8 0C045807 */  jal         func_8011601C
/* 01180C 8011C2FC E484000C */   swc1       $f4, 0xc($a0)
/* 011810 8011C300 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011814 8011C304 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011818 8011C308 00001025 */  move        $v0, $zero
/* 01181C 8011C30C 03E00008 */  jr          $ra
/* 011820 8011C310 00000000 */   nop

glabel func_8011C314 # 21
/* 011824 8011C314 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011828 8011C318 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01182C 8011C31C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011830 8011C320 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011834 8011C324 0C045813 */  jal         func_8011604C
/* 011838 8011C328 8C85000C */   lw         $a1, 0xc($a0)
/* 01183C 8011C32C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011840 8011C330 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011844 8011C334 00001025 */  move        $v0, $zero
/* 011848 8011C338 03E00008 */  jr          $ra
/* 01184C 8011C33C 00000000 */   nop

glabel func_8011C340 # 22
/* 011850 8011C340 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011854 8011C344 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011858 8011C348 AFB20020 */  sw          $s2, 0x20($sp)
/* 01185C 8011C34C AFB1001C */  sw          $s1, 0x1c($sp)
/* 011860 8011C350 AFB00018 */  sw          $s0, 0x18($sp)
/* 011864 8011C354 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011868 8011C358 3C128013 */  lui         $s2, %hi(D_80134220)
/* 01186C 8011C35C 26524220 */  addiu       $s2, $s2, %lo(D_80134220)
/* 011870 8011C360 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 011874 8011C364 A2400000 */  sb          $zero, 0x0($s2)
/* 011878 8011C368 0C04559B */  jal         func_8011566C
/* 01187C 8011C36C 02202025 */   move       $a0, $s1
/* 011880 8011C370 2450FFFF */  addiu       $s0, $v0, -0x1
/* 011884 8011C374 0602000B */  bltzl       $s0, .L8011C3A4
/* 011888 8011C378 8E2402B4 */   lw         $a0, 0x2b4($s1)
.L8011C37C:
/* 01188C 8011C37C 0C045841 */  jal         func_80116104
/* 011890 8011C380 02202025 */   move       $a0, $s1
/* 011894 8011C384 02402025 */  move        $a0, $s2
/* 011898 8011C388 24050050 */  addiu       $a1, $zero, 0x50
/* 01189C 8011C38C 0C046F67 */  jal         func_8011BD9C
/* 0118A0 8011C390 00403025 */   move       $a2, $v0
/* 0118A4 8011C394 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0118A8 8011C398 0601FFF8 */  bgez        $s0, .L8011C37C
/* 0118AC 8011C39C 00000000 */   nop
/* 0118B0 8011C3A0 8E2402B4 */  lw          $a0, 0x2b4($s1)
.L8011C3A4:
/* 0118B4 8011C3A4 8E2502B8 */  lw          $a1, 0x2b8($s1)
/* 0118B8 8011C3A8 0C009E62 */  jal         func_80027988
/* 0118BC 8011C3AC 02403025 */   move       $a2, $s2
/* 0118C0 8011C3B0 02202025 */  move        $a0, $s1
/* 0118C4 8011C3B4 0C045807 */  jal         func_8011601C
/* 0118C8 8011C3B8 00002825 */   move       $a1, $zero
/* 0118CC 8011C3BC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0118D0 8011C3C0 8FB00018 */  lw          $s0, 0x18($sp)
/* 0118D4 8011C3C4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0118D8 8011C3C8 8FB20020 */  lw          $s2, 0x20($sp)
/* 0118DC 8011C3CC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0118E0 8011C3D0 03E00008 */  jr          $ra
/* 0118E4 8011C3D4 00001025 */   move       $v0, $zero

glabel func_8011C3D8 # 23
/* 0118E8 8011C3D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0118EC 8011C3DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0118F0 8011C3E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0118F4 8011C3E4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0118F8 8011C3E8 0C009EA2 */  jal         func_80027A88
/* 0118FC 8011C3EC AFAF001C */   sw         $t7, 0x1c($sp)
/* 011900 8011C3F0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011904 8011C3F4 0C045807 */  jal         func_8011601C
/* 011908 8011C3F8 00002825 */   move       $a1, $zero
/* 01190C 8011C3FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011910 8011C400 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011914 8011C404 00001025 */  move        $v0, $zero
/* 011918 8011C408 03E00008 */  jr          $ra
/* 01191C 8011C40C 00000000 */   nop

glabel func_8011C410 # 24
/* 011920 8011C410 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011924 8011C414 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011928 8011C418 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01192C 8011C41C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011930 8011C420 0C04582D */  jal         func_801160B4
/* 011934 8011C424 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011938 8011C428 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01193C 8011C42C 00002825 */  move        $a1, $zero
/* 011940 8011C430 0C045807 */  jal         func_8011601C
/* 011944 8011C434 AC8202B4 */   sw         $v0, 0x2b4($a0)
/* 011948 8011C438 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01194C 8011C43C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011950 8011C440 00001025 */  move        $v0, $zero
/* 011954 8011C444 03E00008 */  jr          $ra
/* 011958 8011C448 00000000 */   nop

glabel func_8011C44C # 25
/* 01195C 8011C44C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011960 8011C450 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011964 8011C454 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011968 8011C458 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01196C 8011C45C 0C045837 */  jal         func_801160DC
/* 011970 8011C460 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011974 8011C464 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011978 8011C468 00002825 */  move        $a1, $zero
/* 01197C 8011C46C 0C045807 */  jal         func_8011601C
/* 011980 8011C470 E48002B8 */   swc1       $f0, 0x2b8($a0)
/* 011984 8011C474 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011988 8011C478 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01198C 8011C47C 00001025 */  move        $v0, $zero
/* 011990 8011C480 03E00008 */  jr          $ra
/* 011994 8011C484 00000000 */   nop

glabel func_8011C488 # 26
/* 011998 8011C488 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01199C 8011C48C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0119A0 8011C490 AFB20020 */  sw          $s2, 0x20($sp)
/* 0119A4 8011C494 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0119A8 8011C498 AFB00018 */  sw          $s0, 0x18($sp)
/* 0119AC 8011C49C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0119B0 8011C4A0 3C128013 */  lui         $s2, %hi(D_80134220)
/* 0119B4 8011C4A4 26524220 */  addiu       $s2, $s2, %lo(D_80134220)
/* 0119B8 8011C4A8 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 0119BC 8011C4AC A2400000 */  sb          $zero, 0x0($s2)
/* 0119C0 8011C4B0 0C04559B */  jal         func_8011566C
/* 0119C4 8011C4B4 02202025 */   move       $a0, $s1
/* 0119C8 8011C4B8 2450FFFF */  addiu       $s0, $v0, -0x1
/* 0119CC 8011C4BC 0600000A */  bltz        $s0, .L8011C4E8
/* 0119D0 8011C4C0 00000000 */   nop
.L8011C4C4:
/* 0119D4 8011C4C4 0C045841 */  jal         func_80116104
/* 0119D8 8011C4C8 02202025 */   move       $a0, $s1
/* 0119DC 8011C4CC 02402025 */  move        $a0, $s2
/* 0119E0 8011C4D0 24050050 */  addiu       $a1, $zero, 0x50
/* 0119E4 8011C4D4 0C046F67 */  jal         func_8011BD9C
/* 0119E8 8011C4D8 00403025 */   move       $a2, $v0
/* 0119EC 8011C4DC 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0119F0 8011C4E0 0601FFF8 */  bgez        $s0, .L8011C4C4
/* 0119F4 8011C4E4 00000000 */   nop
.L8011C4E8:
/* 0119F8 8011C4E8 0C00B0B9 */  jal         func_8002C2E4
/* 0119FC 8011C4EC 02402025 */   move       $a0, $s2
/* 011A00 8011C4F0 02202025 */  move        $a0, $s1
/* 011A04 8011C4F4 0C045807 */  jal         func_8011601C
/* 011A08 8011C4F8 00002825 */   move       $a1, $zero
/* 011A0C 8011C4FC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 011A10 8011C500 8FB00018 */  lw          $s0, 0x18($sp)
/* 011A14 8011C504 8FB1001C */  lw          $s1, 0x1c($sp)
/* 011A18 8011C508 8FB20020 */  lw          $s2, 0x20($sp)
/* 011A1C 8011C50C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011A20 8011C510 03E00008 */  jr          $ra
/* 011A24 8011C514 00001025 */   move       $v0, $zero

glabel func_8011C518 # 27
/* 011A28 8011C518 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011A2C 8011C51C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011A30 8011C520 0C0459E8 */  jal         func_801167A0
/* 011A34 8011C524 2405000D */   addiu      $a1, $zero, 0xd
/* 011A38 8011C528 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011A3C 8011C52C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011A40 8011C530 24020002 */  addiu       $v0, $zero, 0x2
/* 011A44 8011C534 03E00008 */  jr          $ra
/* 011A48 8011C538 00000000 */   nop

glabel func_8011C53C # 28
/* 011A4C 8011C53C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011A50 8011C540 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011A54 8011C544 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011A58 8011C548 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011A5C 8011C54C 0C00B21D */  jal         func_8002C874
/* 011A60 8011C550 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011A64 8011C554 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011A68 8011C558 0C045807 */  jal         func_8011601C
/* 011A6C 8011C55C 00002825 */   move       $a1, $zero
/* 011A70 8011C560 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011A74 8011C564 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011A78 8011C568 00001025 */  move        $v0, $zero
/* 011A7C 8011C56C 03E00008 */  jr          $ra
/* 011A80 8011C570 00000000 */   nop

glabel func_8011C574 # 29
/* 011A84 8011C574 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011A88 8011C578 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011A8C 8011C57C AFA40020 */  sw          $a0, 0x20($sp)
/* 011A90 8011C580 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011A94 8011C584 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 011A98 8011C588 0C04582D */  jal         func_801160B4
/* 011A9C 8011C58C AFA4001C */   sw         $a0, 0x1c($sp)
/* 011AA0 8011C590 8FA40020 */  lw          $a0, 0x20($sp)
/* 011AA4 8011C594 0C00480D */  jal         func_80012034
/* 011AA8 8011C598 00402825 */   move       $a1, $v0
/* 011AAC 8011C59C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011AB0 8011C5A0 0C045807 */  jal         func_8011601C
/* 011AB4 8011C5A4 00002825 */   move       $a1, $zero
/* 011AB8 8011C5A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011ABC 8011C5AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011AC0 8011C5B0 24020001 */  addiu       $v0, $zero, 0x1
/* 011AC4 8011C5B4 03E00008 */  jr          $ra
/* 011AC8 8011C5B8 00000000 */   nop

glabel func_8011C5BC # 30
/* 011ACC 8011C5BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011AD0 8011C5C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011AD4 8011C5C4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011AD8 8011C5C8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011ADC 8011C5CC 0C00482B */  jal         func_800120AC
/* 011AE0 8011C5D0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011AE4 8011C5D4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011AE8 8011C5D8 0C045807 */  jal         func_8011601C
/* 011AEC 8011C5DC 00002825 */   move       $a1, $zero
/* 011AF0 8011C5E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011AF4 8011C5E4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011AF8 8011C5E8 00001025 */  move        $v0, $zero
/* 011AFC 8011C5EC 03E00008 */  jr          $ra
/* 011B00 8011C5F0 00000000 */   nop

glabel func_8011C5F4 # 31
/* 011B04 8011C5F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 011B08 8011C5F8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 011B0C 8011C5FC AFB00018 */  sw          $s0, 0x18($sp)
/* 011B10 8011C600 AFA40030 */  sw          $a0, 0x30($sp)
/* 011B14 8011C604 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011B18 8011C608 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 011B1C 8011C60C 0C045837 */  jal         func_801160DC
/* 011B20 8011C610 02002025 */   move       $a0, $s0
/* 011B24 8011C614 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 011B28 8011C618 0C045837 */  jal         func_801160DC
/* 011B2C 8011C61C 02002025 */   move       $a0, $s0
/* 011B30 8011C620 E7A00028 */  swc1        $f0, 0x28($sp)
/* 011B34 8011C624 0C045837 */  jal         func_801160DC
/* 011B38 8011C628 02002025 */   move       $a0, $s0
/* 011B3C 8011C62C E7A00024 */  swc1        $f0, 0x24($sp)
/* 011B40 8011C630 8FA40030 */  lw          $a0, 0x30($sp)
/* 011B44 8011C634 0C046191 */  jal         func_80118644
/* 011B48 8011C638 27A50024 */   addiu      $a1, $sp, 0x24
/* 011B4C 8011C63C 8FB80030 */  lw          $t8, 0x30($sp)
/* 011B50 8011C640 44802000 */  mtc1        $zero, $f4
/* 011B54 8011C644 02002025 */  move        $a0, $s0
/* 011B58 8011C648 8F190054 */  lw          $t9, 0x54($t8)
/* 011B5C 8011C64C 00002825 */  move        $a1, $zero
/* 011B60 8011C650 AF20019C */  sw          $zero, 0x19c($t9)
/* 011B64 8011C654 8F080054 */  lw          $t0, 0x54($t8)
/* 011B68 8011C658 0C045807 */  jal         func_8011601C
/* 011B6C 8011C65C E50401A4 */   swc1       $f4, 0x1a4($t0)
/* 011B70 8011C660 8FBF001C */  lw          $ra, 0x1c($sp)
/* 011B74 8011C664 8FB00018 */  lw          $s0, 0x18($sp)
/* 011B78 8011C668 27BD0030 */  addiu       $sp, $sp, 0x30
/* 011B7C 8011C66C 03E00008 */  jr          $ra
/* 011B80 8011C670 00001025 */   move       $v0, $zero

glabel func_8011C674 # 32
/* 011B84 8011C674 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011B88 8011C678 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011B8C 8011C67C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011B90 8011C680 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011B94 8011C684 AFA40020 */  sw          $a0, 0x20($sp)
/* 011B98 8011C688 0C0461F9 */  jal         func_801187E4
/* 011B9C 8011C68C AFAF001C */   sw         $t7, 0x1c($sp)
/* 011BA0 8011C690 8FA40020 */  lw          $a0, 0x20($sp)
/* 011BA4 8011C694 44806000 */  mtc1        $zero, $f12
/* 011BA8 8011C698 8C980054 */  lw          $t8, 0x54($a0)
/* 011BAC 8011C69C C70401A4 */  lwc1        $f4, 0x1a4($t8)
/* 011BB0 8011C6A0 46040081 */  sub.s       $f2, $f0, $f4
/* 011BB4 8011C6A4 460C103C */  c.lt.s      $f2, $f12
/* 011BB8 8011C6A8 00000000 */  nop
/* 011BBC 8011C6AC 45020003 */  bc1fl       .L8011C6BC
/* 011BC0 8011C6B0 44051000 */   mfc1       $a1, $f2
/* 011BC4 8011C6B4 46006086 */  mov.s       $f2, $f12
/* 011BC8 8011C6B8 44051000 */  mfc1        $a1, $f2
.L8011C6BC:
/* 011BCC 8011C6BC 0C045813 */  jal         func_8011604C
/* 011BD0 8011C6C0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011BD4 8011C6C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011BD8 8011C6C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011BDC 8011C6CC 00001025 */  move        $v0, $zero
/* 011BE0 8011C6D0 03E00008 */  jr          $ra
/* 011BE4 8011C6D4 00000000 */   nop

glabel func_8011C6D8 # 33
/* 011BE8 8011C6D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011BEC 8011C6DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011BF0 8011C6E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011BF4 8011C6E4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011BF8 8011C6E8 AFA40020 */  sw          $a0, 0x20($sp)
/* 011BFC 8011C6EC 0C046224 */  jal         func_80118890
/* 011C00 8011C6F0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011C04 8011C6F4 8FA60020 */  lw          $a2, 0x20($sp)
/* 011C08 8011C6F8 44802000 */  mtc1        $zero, $f4
/* 011C0C 8011C6FC 00002825 */  move        $a1, $zero
/* 011C10 8011C700 8CD80054 */  lw          $t8, 0x54($a2)
/* 011C14 8011C704 AF00019C */  sw          $zero, 0x19c($t8)
/* 011C18 8011C708 8CD90054 */  lw          $t9, 0x54($a2)
/* 011C1C 8011C70C E72401A4 */  swc1        $f4, 0x1a4($t9)
/* 011C20 8011C710 0C045807 */  jal         func_8011601C
/* 011C24 8011C714 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011C28 8011C718 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011C2C 8011C71C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011C30 8011C720 00001025 */  move        $v0, $zero
/* 011C34 8011C724 03E00008 */  jr          $ra
/* 011C38 8011C728 00000000 */   nop

glabel func_8011C72C # 34
/* 011C3C 8011C72C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011C40 8011C730 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011C44 8011C734 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011C48 8011C738 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011C4C 8011C73C 0C00483C */  jal         func_800120F0
/* 011C50 8011C740 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011C54 8011C744 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011C58 8011C748 0C045807 */  jal         func_8011601C
/* 011C5C 8011C74C 00402825 */   move       $a1, $v0
/* 011C60 8011C750 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011C64 8011C754 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011C68 8011C758 00001025 */  move        $v0, $zero
/* 011C6C 8011C75C 03E00008 */  jr          $ra
/* 011C70 8011C760 00000000 */   nop

glabel func_8011C764 # 35
/* 011C74 8011C764 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011C78 8011C768 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011C7C 8011C76C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011C80 8011C770 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011C84 8011C774 0C004845 */  jal         func_80012114
/* 011C88 8011C778 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011C8C 8011C77C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011C90 8011C780 0C045807 */  jal         func_8011601C
/* 011C94 8011C784 00402825 */   move       $a1, $v0
/* 011C98 8011C788 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011C9C 8011C78C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011CA0 8011C790 00001025 */  move        $v0, $zero
/* 011CA4 8011C794 03E00008 */  jr          $ra
/* 011CA8 8011C798 00000000 */   nop

glabel func_8011C79C # 36
/* 011CAC 8011C79C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011CB0 8011C7A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011CB4 8011C7A4 AFA40028 */  sw          $a0, 0x28($sp)
/* 011CB8 8011C7A8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011CBC 8011C7AC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 011CC0 8011C7B0 0C045837 */  jal         func_801160DC
/* 011CC4 8011C7B4 AFA40024 */   sw         $a0, 0x24($sp)
/* 011CC8 8011C7B8 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 011CCC 8011C7BC 0C04582D */  jal         func_801160B4
/* 011CD0 8011C7C0 8FA40024 */   lw         $a0, 0x24($sp)
/* 011CD4 8011C7C4 AFA20020 */  sw          $v0, 0x20($sp)
/* 011CD8 8011C7C8 0C00482B */  jal         func_800120AC
/* 011CDC 8011C7CC 8FA40028 */   lw         $a0, 0x28($sp)
/* 011CE0 8011C7D0 8FA40028 */  lw          $a0, 0x28($sp)
/* 011CE4 8011C7D4 8FA50020 */  lw          $a1, 0x20($sp)
/* 011CE8 8011C7D8 0C003D4D */  jal         func_8000F534
/* 011CEC 8011C7DC 8FA6001C */   lw         $a2, 0x1c($sp)
/* 011CF0 8011C7E0 8FA40024 */  lw          $a0, 0x24($sp)
/* 011CF4 8011C7E4 0C045807 */  jal         func_8011601C
/* 011CF8 8011C7E8 00002825 */   move       $a1, $zero
/* 011CFC 8011C7EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011D00 8011C7F0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011D04 8011C7F4 24020001 */  addiu       $v0, $zero, 0x1
/* 011D08 8011C7F8 03E00008 */  jr          $ra
/* 011D0C 8011C7FC 00000000 */   nop

glabel func_8011C800 # 37
/* 011D10 8011C800 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011D14 8011C804 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011D18 8011C808 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011D1C 8011C80C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011D20 8011C810 AFA40020 */  sw          $a0, 0x20($sp)
/* 011D24 8011C814 0C046280 */  jal         func_80118A00
/* 011D28 8011C818 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011D2C 8011C81C 8FA60020 */  lw          $a2, 0x20($sp)
/* 011D30 8011C820 44802000 */  mtc1        $zero, $f4
/* 011D34 8011C824 00002825 */  move        $a1, $zero
/* 011D38 8011C828 8CD80054 */  lw          $t8, 0x54($a2)
/* 011D3C 8011C82C E70401A4 */  swc1        $f4, 0x1a4($t8)
/* 011D40 8011C830 0C045807 */  jal         func_8011601C
/* 011D44 8011C834 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011D48 8011C838 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011D4C 8011C83C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011D50 8011C840 00001025 */  move        $v0, $zero
/* 011D54 8011C844 03E00008 */  jr          $ra
/* 011D58 8011C848 00000000 */   nop

glabel func_8011C84C # 38
/* 011D5C 8011C84C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011D60 8011C850 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011D64 8011C854 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011D68 8011C858 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011D6C 8011C85C 0C046480 */  jal         func_80119200
/* 011D70 8011C860 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011D74 8011C864 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011D78 8011C868 0C045807 */  jal         func_8011601C
/* 011D7C 8011C86C 00402825 */   move       $a1, $v0
/* 011D80 8011C870 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011D84 8011C874 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011D88 8011C878 00001025 */  move        $v0, $zero
/* 011D8C 8011C87C 03E00008 */  jr          $ra
/* 011D90 8011C880 00000000 */   nop

glabel func_8011C884 # 39
/* 011D94 8011C884 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011D98 8011C888 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011D9C 8011C88C 8C820054 */  lw          $v0, 0x54($a0)
/* 011DA0 8011C890 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011DA4 8011C894 0C045807 */  jal         func_8011601C
/* 011DA8 8011C898 8C450218 */   lw         $a1, 0x218($v0)
/* 011DAC 8011C89C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011DB0 8011C8A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011DB4 8011C8A4 00001025 */  move        $v0, $zero
/* 011DB8 8011C8A8 03E00008 */  jr          $ra
/* 011DBC 8011C8AC 00000000 */   nop

glabel func_8011C8B0 # 40
/* 011DC0 8011C8B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011DC4 8011C8B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011DC8 8011C8B8 8C820054 */  lw          $v0, 0x54($a0)
/* 011DCC 8011C8BC 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011DD0 8011C8C0 0C045807 */  jal         func_8011601C
/* 011DD4 8011C8C4 8C45021C */   lw         $a1, 0x21c($v0)
/* 011DD8 8011C8C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011DDC 8011C8CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011DE0 8011C8D0 00001025 */  move        $v0, $zero
/* 011DE4 8011C8D4 03E00008 */  jr          $ra
/* 011DE8 8011C8D8 00000000 */   nop

glabel func_8011C8DC # 41
/* 011DEC 8011C8DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011DF0 8011C8E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011DF4 8011C8E4 8C820054 */  lw          $v0, 0x54($a0)
/* 011DF8 8011C8E8 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011DFC 8011C8EC 0C045807 */  jal         func_8011601C
/* 011E00 8011C8F0 8C450220 */   lw         $a1, 0x220($v0)
/* 011E04 8011C8F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E08 8011C8F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011E0C 8011C8FC 00001025 */  move        $v0, $zero
/* 011E10 8011C900 03E00008 */  jr          $ra
/* 011E14 8011C904 00000000 */   nop

glabel func_8011C908 # 42
/* 011E18 8011C908 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011E1C 8011C90C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E20 8011C910 8C820054 */  lw          $v0, 0x54($a0)
/* 011E24 8011C914 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011E28 8011C918 0C045807 */  jal         func_8011601C
/* 011E2C 8011C91C 8C450228 */   lw         $a1, 0x228($v0)
/* 011E30 8011C920 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E34 8011C924 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011E38 8011C928 00001025 */  move        $v0, $zero
/* 011E3C 8011C92C 03E00008 */  jr          $ra
/* 011E40 8011C930 00000000 */   nop

glabel func_8011C934 # 43
/* 011E44 8011C934 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011E48 8011C938 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E4C 8011C93C 8C820054 */  lw          $v0, 0x54($a0)
/* 011E50 8011C940 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011E54 8011C944 0C045807 */  jal         func_8011601C
/* 011E58 8011C948 8C45022C */   lw         $a1, 0x22c($v0)
/* 011E5C 8011C94C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E60 8011C950 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011E64 8011C954 00001025 */  move        $v0, $zero
/* 011E68 8011C958 03E00008 */  jr          $ra
/* 011E6C 8011C95C 00000000 */   nop

glabel func_8011C960 # 44
/* 011E70 8011C960 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011E74 8011C964 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E78 8011C968 8C820054 */  lw          $v0, 0x54($a0)
/* 011E7C 8011C96C 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011E80 8011C970 0C045807 */  jal         func_8011601C
/* 011E84 8011C974 8C450230 */   lw         $a1, 0x230($v0)
/* 011E88 8011C978 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E8C 8011C97C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011E90 8011C980 00001025 */  move        $v0, $zero
/* 011E94 8011C984 03E00008 */  jr          $ra
/* 011E98 8011C988 00000000 */   nop

glabel func_8011C98C # 45
/* 011E9C 8011C98C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011EA0 8011C990 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011EA4 8011C994 AFA40028 */  sw          $a0, 0x28($sp)
/* 011EA8 8011C998 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011EAC 8011C99C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 011EB0 8011C9A0 0C04582D */  jal         func_801160B4
/* 011EB4 8011C9A4 AFA40024 */   sw         $a0, 0x24($sp)
/* 011EB8 8011C9A8 8FA40024 */  lw          $a0, 0x24($sp)
/* 011EBC 8011C9AC 0C04582D */  jal         func_801160B4
/* 011EC0 8011C9B0 AFA2001C */   sw         $v0, 0x1c($sp)
/* 011EC4 8011C9B4 8FA6001C */  lw          $a2, 0x1c($sp)
/* 011EC8 8011C9B8 8FA40028 */  lw          $a0, 0x28($sp)
/* 011ECC 8011C9BC 0C004C4C */  jal         func_80013130
/* 011ED0 8011C9C0 00402825 */   move       $a1, $v0
/* 011ED4 8011C9C4 3C198007 */  lui         $t9, %hi(D_800760A8)
/* 011ED8 8011C9C8 8F3960A8 */  lw          $t9, %lo(D_800760A8)($t9)
/* 011EDC 8011C9CC 8FB80028 */  lw          $t8, 0x28($sp)
/* 011EE0 8011C9D0 8FA6001C */  lw          $a2, 0x1c($sp)
/* 011EE4 8011C9D4 240100A6 */  addiu       $at, $zero, 0xa6
/* 011EE8 8011C9D8 57190022 */  bnel        $t8, $t9, .L8011CA64
/* 011EEC 8011C9DC 8FA40024 */   lw         $a0, 0x24($sp)
/* 011EF0 8011C9E0 10C10007 */  beq         $a2, $at, .L8011CA00
/* 011EF4 8011C9E4 240100A7 */   addiu      $at, $zero, 0xa7
/* 011EF8 8011C9E8 10C10005 */  beq         $a2, $at, .L8011CA00
/* 011EFC 8011C9EC 240100AF */   addiu      $at, $zero, 0xaf
/* 011F00 8011C9F0 10C10003 */  beq         $a2, $at, .L8011CA00
/* 011F04 8011C9F4 240100B3 */   addiu      $at, $zero, 0xb3
/* 011F08 8011C9F8 54C1001A */  bnel        $a2, $at, .L8011CA64
/* 011F0C 8011C9FC 8FA40024 */   lw         $a0, 0x24($sp)
.L8011CA00:
/* 011F10 8011CA00 0C00EADA */  jal         func_8003AB68
/* 011F14 8011CA04 00000000 */   nop
/* 011F18 8011CA08 44823000 */  mtc1        $v0, $f6
/* 011F1C 8011CA0C 3C013FE0 */  lui         $at, 0x3fe0
/* 011F20 8011CA10 44812800 */  mtc1        $at, $f5
/* 011F24 8011CA14 44802000 */  mtc1        $zero, $f4
/* 011F28 8011CA18 04410006 */  bgez        $v0, .L8011CA34
/* 011F2C 8011CA1C 46803221 */   cvt.d.w    $f8, $f6
/* 011F30 8011CA20 3C0141F0 */  lui         $at, 0x41f0
/* 011F34 8011CA24 44815800 */  mtc1        $at, $f11
/* 011F38 8011CA28 44805000 */  mtc1        $zero, $f10
/* 011F3C 8011CA2C 00000000 */  nop
/* 011F40 8011CA30 462A4200 */  add.d       $f8, $f8, $f10
.L8011CA34:
/* 011F44 8011CA34 3C013DF0 */  lui         $at, 0x3df0
/* 011F48 8011CA38 44818800 */  mtc1        $at, $f17
/* 011F4C 8011CA3C 44808000 */  mtc1        $zero, $f16
/* 011F50 8011CA40 2404001A */  addiu       $a0, $zero, 0x1a
/* 011F54 8011CA44 46304482 */  mul.d       $f18, $f8, $f16
/* 011F58 8011CA48 4632203C */  c.lt.d      $f4, $f18
/* 011F5C 8011CA4C 00000000 */  nop
/* 011F60 8011CA50 45020004 */  bc1fl       .L8011CA64
/* 011F64 8011CA54 8FA40024 */   lw         $a0, 0x24($sp)
/* 011F68 8011CA58 0C00CB1C */  jal         func_80032C70
/* 011F6C 8011CA5C 24050001 */   addiu      $a1, $zero, 0x1
/* 011F70 8011CA60 8FA40024 */  lw          $a0, 0x24($sp)
.L8011CA64:
/* 011F74 8011CA64 0C045807 */  jal         func_8011601C
/* 011F78 8011CA68 00002825 */   move       $a1, $zero
/* 011F7C 8011CA6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011F80 8011CA70 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011F84 8011CA74 00001025 */  move        $v0, $zero
/* 011F88 8011CA78 03E00008 */  jr          $ra
/* 011F8C 8011CA7C 00000000 */   nop

glabel func_8011CA80 # 46
/* 011F90 8011CA80 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 011F94 8011CA84 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011F98 8011CA88 AFB00020 */  sw          $s0, 0x20($sp)
/* 011F9C 8011CA8C AFA40040 */  sw          $a0, 0x40($sp)
/* 011FA0 8011CA90 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011FA4 8011CA94 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 011FA8 8011CA98 0C045837 */  jal         func_801160DC
/* 011FAC 8011CA9C 02002025 */   move       $a0, $s0
/* 011FB0 8011CAA0 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 011FB4 8011CAA4 0C045837 */  jal         func_801160DC
/* 011FB8 8011CAA8 02002025 */   move       $a0, $s0
/* 011FBC 8011CAAC E7A00030 */  swc1        $f0, 0x30($sp)
/* 011FC0 8011CAB0 0C04582D */  jal         func_801160B4
/* 011FC4 8011CAB4 02002025 */   move       $a0, $s0
/* 011FC8 8011CAB8 AFA20034 */  sw          $v0, 0x34($sp)
/* 011FCC 8011CABC 0C04582D */  jal         func_801160B4
/* 011FD0 8011CAC0 02002025 */   move       $a0, $s0
/* 011FD4 8011CAC4 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 011FD8 8011CAC8 8FA40040 */  lw          $a0, 0x40($sp)
/* 011FDC 8011CACC 00402825 */  move        $a1, $v0
/* 011FE0 8011CAD0 8FA60034 */  lw          $a2, 0x34($sp)
/* 011FE4 8011CAD4 8FA70030 */  lw          $a3, 0x30($sp)
/* 011FE8 8011CAD8 0C046261 */  jal         func_80118984
/* 011FEC 8011CADC E7A40010 */   swc1       $f4, 0x10($sp)
/* 011FF0 8011CAE0 02002025 */  move        $a0, $s0
/* 011FF4 8011CAE4 0C045807 */  jal         func_8011601C
/* 011FF8 8011CAE8 00402825 */   move       $a1, $v0
/* 011FFC 8011CAEC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 012000 8011CAF0 8FB00020 */  lw          $s0, 0x20($sp)
/* 012004 8011CAF4 27BD0040 */  addiu       $sp, $sp, 0x40
/* 012008 8011CAF8 03E00008 */  jr          $ra
/* 01200C 8011CAFC 00001025 */   move       $v0, $zero

glabel func_8011CB00 # 47
/* 012010 8011CB00 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012014 8011CB04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012018 8011CB08 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01201C 8011CB0C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012020 8011CB10 0C04624E */  jal         func_80118938
/* 012024 8011CB14 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012028 8011CB18 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01202C 8011CB1C 0C045807 */  jal         func_8011601C
/* 012030 8011CB20 00402825 */   move       $a1, $v0
/* 012034 8011CB24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012038 8011CB28 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01203C 8011CB2C 00001025 */  move        $v0, $zero
/* 012040 8011CB30 03E00008 */  jr          $ra
/* 012044 8011CB34 00000000 */   nop

glabel func_8011CB38 # 48
/* 012048 8011CB38 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01204C 8011CB3C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012050 8011CB40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012054 8011CB44 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012058 8011CB48 0C04620E */  jal         func_80118838
/* 01205C 8011CB4C AFAF001C */   sw         $t7, 0x1c($sp)
/* 012060 8011CB50 44050000 */  mfc1        $a1, $f0
/* 012064 8011CB54 0C045813 */  jal         func_8011604C
/* 012068 8011CB58 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01206C 8011CB5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012070 8011CB60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012074 8011CB64 00001025 */  move        $v0, $zero
/* 012078 8011CB68 03E00008 */  jr          $ra
/* 01207C 8011CB6C 00000000 */   nop

glabel func_8011CB70 # 49
/* 012080 8011CB70 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 012084 8011CB74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 012088 8011CB78 AFB00018 */  sw          $s0, 0x18($sp)
/* 01208C 8011CB7C AFA40038 */  sw          $a0, 0x38($sp)
/* 012090 8011CB80 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012094 8011CB84 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 012098 8011CB88 0C045837 */  jal         func_801160DC
/* 01209C 8011CB8C 02002025 */   move       $a0, $s0
/* 0120A0 8011CB90 8FB80038 */  lw          $t8, 0x38($sp)
/* 0120A4 8011CB94 02002025 */  move        $a0, $s0
/* 0120A8 8011CB98 C704004C */  lwc1        $f4, 0x4c($t8)
/* 0120AC 8011CB9C 46040181 */  sub.s       $f6, $f0, $f4
/* 0120B0 8011CBA0 0C045837 */  jal         func_801160DC
/* 0120B4 8011CBA4 E7A60030 */   swc1       $f6, 0x30($sp)
/* 0120B8 8011CBA8 8FB90038 */  lw          $t9, 0x38($sp)
/* 0120BC 8011CBAC 02002025 */  move        $a0, $s0
/* 0120C0 8011CBB0 C7280048 */  lwc1        $f8, 0x48($t9)
/* 0120C4 8011CBB4 46080281 */  sub.s       $f10, $f0, $f8
/* 0120C8 8011CBB8 0C045837 */  jal         func_801160DC
/* 0120CC 8011CBBC E7AA002C */   swc1       $f10, 0x2c($sp)
/* 0120D0 8011CBC0 8FA80038 */  lw          $t0, 0x38($sp)
/* 0120D4 8011CBC4 27A40028 */  addiu       $a0, $sp, 0x28
/* 0120D8 8011CBC8 C5100044 */  lwc1        $f16, 0x44($t0)
/* 0120DC 8011CBCC 46100481 */  sub.s       $f18, $f0, $f16
/* 0120E0 8011CBD0 0C00E97F */  jal         func_8003A5FC
/* 0120E4 8011CBD4 E7B20028 */   swc1       $f18, 0x28($sp)
/* 0120E8 8011CBD8 44050000 */  mfc1        $a1, $f0
/* 0120EC 8011CBDC 0C045813 */  jal         func_8011604C
/* 0120F0 8011CBE0 02002025 */   move       $a0, $s0
/* 0120F4 8011CBE4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0120F8 8011CBE8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0120FC 8011CBEC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 012100 8011CBF0 03E00008 */  jr          $ra
/* 012104 8011CBF4 00001025 */   move       $v0, $zero

glabel func_8011CBF8 # 50
/* 012108 8011CBF8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01210C 8011CBFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 012110 8011CC00 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012114 8011CC04 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012118 8011CC08 0C04582D */  jal         func_801160B4
/* 01211C 8011CC0C AFA40034 */   sw         $a0, 0x34($sp)
/* 012120 8011CC10 0C0462B3 */  jal         func_80118ACC
/* 012124 8011CC14 00402025 */   move       $a0, $v0
/* 012128 8011CC18 14400006 */  bne         $v0, $zero, .L8011CC34
/* 01212C 8011CC1C 00401825 */   move       $v1, $v0
/* 012130 8011CC20 8FA40034 */  lw          $a0, 0x34($sp)
/* 012134 8011CC24 0C045813 */  jal         func_8011604C
/* 012138 8011CC28 3C05BF80 */   lui        $a1, 0xbf80
/* 01213C 8011CC2C 10000015 */  b           .L8011CC84
/* 012140 8011CC30 00001025 */   move       $v0, $zero
.L8011CC34:
/* 012144 8011CC34 3C02800F */  lui         $v0, %hi(D_800EF6A0)
/* 012148 8011CC38 2442F6A0 */  addiu       $v0, $v0, %lo(D_800EF6A0)
/* 01214C 8011CC3C C4440000 */  lwc1        $f4, 0x0($v0)
/* 012150 8011CC40 C4660044 */  lwc1        $f6, 0x44($v1)
/* 012154 8011CC44 C44A0004 */  lwc1        $f10, 0x4($v0)
/* 012158 8011CC48 27A40028 */  addiu       $a0, $sp, 0x28
/* 01215C 8011CC4C 46062201 */  sub.s       $f8, $f4, $f6
/* 012160 8011CC50 C4440008 */  lwc1        $f4, 0x8($v0)
/* 012164 8011CC54 E7A80030 */  swc1        $f8, 0x30($sp)
/* 012168 8011CC58 C4700048 */  lwc1        $f16, 0x48($v1)
/* 01216C 8011CC5C 46105481 */  sub.s       $f18, $f10, $f16
/* 012170 8011CC60 E7B2002C */  swc1        $f18, 0x2c($sp)
/* 012174 8011CC64 C466004C */  lwc1        $f6, 0x4c($v1)
/* 012178 8011CC68 46062201 */  sub.s       $f8, $f4, $f6
/* 01217C 8011CC6C 0C00E97F */  jal         func_8003A5FC
/* 012180 8011CC70 E7A80028 */   swc1       $f8, 0x28($sp)
/* 012184 8011CC74 44050000 */  mfc1        $a1, $f0
/* 012188 8011CC78 0C045813 */  jal         func_8011604C
/* 01218C 8011CC7C 8FA40034 */   lw         $a0, 0x34($sp)
/* 012190 8011CC80 00001025 */  move        $v0, $zero
.L8011CC84:
/* 012194 8011CC84 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012198 8011CC88 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01219C 8011CC8C 03E00008 */  jr          $ra
/* 0121A0 8011CC90 00000000 */   nop

glabel func_8011CC94 # 51
/* 0121A4 8011CC94 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0121A8 8011CC98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0121AC 8011CC9C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0121B0 8011CCA0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0121B4 8011CCA4 0C046279 */  jal         func_801189E4
/* 0121B8 8011CCA8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0121BC 8011CCAC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0121C0 8011CCB0 0C045807 */  jal         func_8011601C
/* 0121C4 8011CCB4 00002825 */   move       $a1, $zero
/* 0121C8 8011CCB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0121CC 8011CCBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0121D0 8011CCC0 00001025 */  move        $v0, $zero
/* 0121D4 8011CCC4 03E00008 */  jr          $ra
/* 0121D8 8011CCC8 00000000 */   nop

glabel func_8011CCCC # 52
/* 0121DC 8011CCCC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0121E0 8011CCD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0121E4 8011CCD4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0121E8 8011CCD8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0121EC 8011CCDC 0C045DF2 */  jal         func_801177C8
/* 0121F0 8011CCE0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0121F4 8011CCE4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0121F8 8011CCE8 0C045807 */  jal         func_8011601C
/* 0121FC 8011CCEC 00002825 */   move       $a1, $zero
/* 012200 8011CCF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012204 8011CCF4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012208 8011CCF8 00001025 */  move        $v0, $zero
/* 01220C 8011CCFC 03E00008 */  jr          $ra
/* 012210 8011CD00 00000000 */   nop

glabel func_8011CD04 # 53
/* 012214 8011CD04 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012218 8011CD08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01221C 8011CD0C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012220 8011CD10 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012224 8011CD14 0C0462A5 */  jal         func_80118A94
/* 012228 8011CD18 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01222C 8011CD1C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012230 8011CD20 0C045807 */  jal         func_8011601C
/* 012234 8011CD24 00002825 */   move       $a1, $zero
/* 012238 8011CD28 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01223C 8011CD2C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012240 8011CD30 00001025 */  move        $v0, $zero
/* 012244 8011CD34 03E00008 */  jr          $ra
/* 012248 8011CD38 00000000 */   nop

glabel func_8011CD3C # 54
/* 01224C 8011CD3C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012250 8011CD40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012254 8011CD44 AFA40028 */  sw          $a0, 0x28($sp)
/* 012258 8011CD48 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01225C 8011CD4C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012260 8011CD50 0C04582D */  jal         func_801160B4
/* 012264 8011CD54 AFA40024 */   sw         $a0, 0x24($sp)
/* 012268 8011CD58 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01226C 8011CD5C 0C045837 */  jal         func_801160DC
/* 012270 8011CD60 8FA40024 */   lw         $a0, 0x24($sp)
/* 012274 8011CD64 44050000 */  mfc1        $a1, $f0
/* 012278 8011CD68 8FA40028 */  lw          $a0, 0x28($sp)
/* 01227C 8011CD6C 0C0057C7 */  jal         func_80015F1C
/* 012280 8011CD70 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012284 8011CD74 8FA40024 */  lw          $a0, 0x24($sp)
/* 012288 8011CD78 0C045807 */  jal         func_8011601C
/* 01228C 8011CD7C 00002825 */   move       $a1, $zero
/* 012290 8011CD80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012294 8011CD84 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012298 8011CD88 00001025 */  move        $v0, $zero
/* 01229C 8011CD8C 03E00008 */  jr          $ra
/* 0122A0 8011CD90 00000000 */   nop

glabel func_8011CD94 # 55
/* 0122A4 8011CD94 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0122A8 8011CD98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0122AC 8011CD9C 0C0459E8 */  jal         func_801167A0
/* 0122B0 8011CDA0 2405000A */   addiu      $a1, $zero, 0xa
/* 0122B4 8011CDA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0122B8 8011CDA8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0122BC 8011CDAC 24020002 */  addiu       $v0, $zero, 0x2
/* 0122C0 8011CDB0 03E00008 */  jr          $ra
/* 0122C4 8011CDB4 00000000 */   nop

glabel func_8011CDB8 # 56
/* 0122C8 8011CDB8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0122CC 8011CDBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0122D0 8011CDC0 0C0459E8 */  jal         func_801167A0
/* 0122D4 8011CDC4 2405000B */   addiu      $a1, $zero, 0xb
/* 0122D8 8011CDC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0122DC 8011CDCC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0122E0 8011CDD0 24020002 */  addiu       $v0, $zero, 0x2
/* 0122E4 8011CDD4 03E00008 */  jr          $ra
/* 0122E8 8011CDD8 00000000 */   nop

glabel func_8011CDDC # 57
/* 0122EC 8011CDDC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0122F0 8011CDE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0122F4 8011CDE4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0122F8 8011CDE8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0122FC 8011CDEC 0C046287 */  jal         func_80118A1C
/* 012300 8011CDF0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012304 8011CDF4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012308 8011CDF8 0C045807 */  jal         func_8011601C
/* 01230C 8011CDFC 00002825 */   move       $a1, $zero
/* 012310 8011CE00 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012314 8011CE04 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012318 8011CE08 00001025 */  move        $v0, $zero
/* 01231C 8011CE0C 03E00008 */  jr          $ra
/* 012320 8011CE10 00000000 */   nop

glabel func_8011CE14 # 58
/* 012324 8011CE14 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012328 8011CE18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01232C 8011CE1C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012330 8011CE20 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012334 8011CE24 0C0446B1 */  jal         func_80111AC4
/* 012338 8011CE28 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01233C 8011CE2C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012340 8011CE30 0C045807 */  jal         func_8011601C
/* 012344 8011CE34 00002825 */   move       $a1, $zero
/* 012348 8011CE38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01234C 8011CE3C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012350 8011CE40 00001025 */  move        $v0, $zero
/* 012354 8011CE44 03E00008 */  jr          $ra
/* 012358 8011CE48 00000000 */   nop

glabel func_8011CE4C # 59
/* 01235C 8011CE4C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012360 8011CE50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012364 8011CE54 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012368 8011CE58 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01236C 8011CE5C 0C0446C2 */  jal         func_80111B08
/* 012370 8011CE60 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012374 8011CE64 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012378 8011CE68 0C045807 */  jal         func_8011601C
/* 01237C 8011CE6C 00002825 */   move       $a1, $zero
/* 012380 8011CE70 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012384 8011CE74 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012388 8011CE78 00001025 */  move        $v0, $zero
/* 01238C 8011CE7C 03E00008 */  jr          $ra
/* 012390 8011CE80 00000000 */   nop

glabel func_8011CE84 # 60
/* 012394 8011CE84 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 012398 8011CE88 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01239C 8011CE8C AFB00018 */  sw          $s0, 0x18($sp)
/* 0123A0 8011CE90 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0123A4 8011CE94 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0123A8 8011CE98 0C045837 */  jal         func_801160DC
/* 0123AC 8011CE9C 02002025 */   move       $a0, $s0
/* 0123B0 8011CEA0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 0123B4 8011CEA4 0C045837 */  jal         func_801160DC
/* 0123B8 8011CEA8 02002025 */   move       $a0, $s0
/* 0123BC 8011CEAC E7A00024 */  swc1        $f0, 0x24($sp)
/* 0123C0 8011CEB0 0C045837 */  jal         func_801160DC
/* 0123C4 8011CEB4 02002025 */   move       $a0, $s0
/* 0123C8 8011CEB8 E7A00020 */  swc1        $f0, 0x20($sp)
/* 0123CC 8011CEBC 0C044920 */  jal         func_80112480
/* 0123D0 8011CEC0 27A40020 */   addiu      $a0, $sp, 0x20
/* 0123D4 8011CEC4 02002025 */  move        $a0, $s0
/* 0123D8 8011CEC8 0C045807 */  jal         func_8011601C
/* 0123DC 8011CECC 00002825 */   move       $a1, $zero
/* 0123E0 8011CED0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0123E4 8011CED4 8FB00018 */  lw          $s0, 0x18($sp)
/* 0123E8 8011CED8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0123EC 8011CEDC 03E00008 */  jr          $ra
/* 0123F0 8011CEE0 00001025 */   move       $v0, $zero

glabel func_8011CEE4 # 61
/* 0123F4 8011CEE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0123F8 8011CEE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0123FC 8011CEEC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012400 8011CEF0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012404 8011CEF4 0C045837 */  jal         func_801160DC
/* 012408 8011CEF8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01240C 8011CEFC 0C044932 */  jal         func_801124C8
/* 012410 8011CF00 46000306 */   mov.s      $f12, $f0
/* 012414 8011CF04 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012418 8011CF08 0C045807 */  jal         func_8011601C
/* 01241C 8011CF0C 00002825 */   move       $a1, $zero
/* 012420 8011CF10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012424 8011CF14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012428 8011CF18 00001025 */  move        $v0, $zero
/* 01242C 8011CF1C 03E00008 */  jr          $ra
/* 012430 8011CF20 00000000 */   nop

glabel func_8011CF24 # 62
/* 012434 8011CF24 3C02800F */  lui         $v0, %hi(D_800EF6A0)
/* 012438 8011CF28 2442F6A0 */  addiu       $v0, $v0, %lo(D_800EF6A0)
/* 01243C 8011CF2C C4440018 */  lwc1        $f4, 0x18($v0)
/* 012440 8011CF30 C446000C */  lwc1        $f6, 0xc($v0)
/* 012444 8011CF34 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 012448 8011CF38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01244C 8011CF3C 46062200 */  add.s       $f8, $f4, $f6
/* 012450 8011CF40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012454 8011CF44 44054000 */  mfc1        $a1, $f8
/* 012458 8011CF48 0C045813 */  jal         func_8011604C
/* 01245C 8011CF4C 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 012460 8011CF50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012464 8011CF54 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012468 8011CF58 00001025 */  move        $v0, $zero
/* 01246C 8011CF5C 03E00008 */  jr          $ra
/* 012470 8011CF60 00000000 */   nop

glabel func_8011CF64 # 63
/* 012474 8011CF64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012478 8011CF68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01247C 8011CF6C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012480 8011CF70 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012484 8011CF74 0C045837 */  jal         func_801160DC
/* 012488 8011CF78 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01248C 8011CF7C 0C04493D */  jal         func_801124F4
/* 012490 8011CF80 46000306 */   mov.s      $f12, $f0
/* 012494 8011CF84 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012498 8011CF88 0C045807 */  jal         func_8011601C
/* 01249C 8011CF8C 00002825 */   move       $a1, $zero
/* 0124A0 8011CF90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0124A4 8011CF94 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0124A8 8011CF98 00001025 */  move        $v0, $zero
/* 0124AC 8011CF9C 03E00008 */  jr          $ra
/* 0124B0 8011CFA0 00000000 */   nop

glabel func_8011CFA4 # 64
/* 0124B4 8011CFA4 3C02800F */  lui         $v0, %hi(D_800EF6A0)
/* 0124B8 8011CFA8 2442F6A0 */  addiu       $v0, $v0, %lo(D_800EF6A0)
/* 0124BC 8011CFAC C4440014 */  lwc1        $f4, 0x14($v0)
/* 0124C0 8011CFB0 C4460010 */  lwc1        $f6, 0x10($v0)
/* 0124C4 8011CFB4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0124C8 8011CFB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0124CC 8011CFBC 46062200 */  add.s       $f8, $f4, $f6
/* 0124D0 8011CFC0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0124D4 8011CFC4 44054000 */  mfc1        $a1, $f8
/* 0124D8 8011CFC8 0C045813 */  jal         func_8011604C
/* 0124DC 8011CFCC 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0124E0 8011CFD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0124E4 8011CFD4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0124E8 8011CFD8 00001025 */  move        $v0, $zero
/* 0124EC 8011CFDC 03E00008 */  jr          $ra
/* 0124F0 8011CFE0 00000000 */   nop

glabel func_8011CFE4 # 65
/* 0124F4 8011CFE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0124F8 8011CFE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0124FC 8011CFEC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012500 8011CFF0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012504 8011CFF4 0C046235 */  jal         func_801188D4
/* 012508 8011CFF8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01250C 8011CFFC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012510 8011D000 0C045807 */  jal         func_8011601C
/* 012514 8011D004 00402825 */   move       $a1, $v0
/* 012518 8011D008 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01251C 8011D00C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012520 8011D010 00001025 */  move        $v0, $zero
/* 012524 8011D014 03E00008 */  jr          $ra
/* 012528 8011D018 00000000 */   nop

glabel func_8011D01C # 66
/* 01252C 8011D01C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012530 8011D020 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012534 8011D024 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012538 8011D028 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01253C 8011D02C AFA0001C */  sw          $zero, 0x1c($sp)
/* 012540 8011D030 0C04582D */  jal         func_801160B4
/* 012544 8011D034 AFA40024 */   sw         $a0, 0x24($sp)
/* 012548 8011D038 000278C0 */  sll         $t7, $v0, 3
/* 01254C 8011D03C 01E27823 */  subu        $t7, $t7, $v0
/* 012550 8011D040 000F7880 */  sll         $t7, $t7, 2
/* 012554 8011D044 01E27821 */  addu        $t7, $t7, $v0
/* 012558 8011D048 000F7880 */  sll         $t7, $t7, 2
/* 01255C 8011D04C 3C038012 */  lui         $v1, %hi(D_80125A5A)
/* 012560 8011D050 006F1821 */  addu        $v1, $v1, $t7
/* 012564 8011D054 90635A5A */  lbu         $v1, %lo(D_80125A5A)($v1)
/* 012568 8011D058 24010002 */  addiu       $at, $zero, 0x2
/* 01256C 8011D05C 8FA40024 */  lw          $a0, 0x24($sp)
/* 012570 8011D060 10610008 */  beq         $v1, $at, .L8011D084
/* 012574 8011D064 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012578 8011D068 24010004 */  addiu       $at, $zero, 0x4
/* 01257C 8011D06C 10610005 */  beq         $v1, $at, .L8011D084
/* 012580 8011D070 24010005 */   addiu      $at, $zero, 0x5
/* 012584 8011D074 10610003 */  beq         $v1, $at, .L8011D084
/* 012588 8011D078 24010006 */   addiu      $at, $zero, 0x6
/* 01258C 8011D07C 14610002 */  bne         $v1, $at, .L8011D088
/* 012590 8011D080 00000000 */   nop
.L8011D084:
/* 012594 8011D084 24060001 */  addiu       $a2, $zero, 0x1
.L8011D088:
/* 012598 8011D088 0C045807 */  jal         func_8011601C
/* 01259C 8011D08C 00C02825 */   move       $a1, $a2
/* 0125A0 8011D090 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0125A4 8011D094 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0125A8 8011D098 00001025 */  move        $v0, $zero
/* 0125AC 8011D09C 03E00008 */  jr          $ra
/* 0125B0 8011D0A0 00000000 */   nop

glabel func_8011D0A4 # 67
/* 0125B4 8011D0A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0125B8 8011D0A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0125BC 8011D0AC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0125C0 8011D0B0 3C058007 */  lui         $a1, %hi(D_800722DC)
/* 0125C4 8011D0B4 8CA522DC */  lw          $a1, %lo(D_800722DC)($a1)
/* 0125C8 8011D0B8 0C045807 */  jal         func_8011601C
/* 0125CC 8011D0BC 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0125D0 8011D0C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0125D4 8011D0C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0125D8 8011D0C8 00001025 */  move        $v0, $zero
/* 0125DC 8011D0CC 03E00008 */  jr          $ra
/* 0125E0 8011D0D0 00000000 */   nop

glabel func_8011D0D4 # 68
/* 0125E4 8011D0D4 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0125E8 8011D0D8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0125EC 8011D0DC AFB00028 */  sw          $s0, 0x28($sp)
/* 0125F0 8011D0E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0125F4 8011D0E4 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0125F8 8011D0E8 AFA00040 */  sw          $zero, 0x40($sp)
/* 0125FC 8011D0EC 0C04582D */  jal         func_801160B4
/* 012600 8011D0F0 02002025 */   move       $a0, $s0
/* 012604 8011D0F4 AFA2004C */  sw          $v0, 0x4c($sp)
/* 012608 8011D0F8 0C04582D */  jal         func_801160B4
/* 01260C 8011D0FC 02002025 */   move       $a0, $s0
/* 012610 8011D100 AFA20048 */  sw          $v0, 0x48($sp)
/* 012614 8011D104 0C04582D */  jal         func_801160B4
/* 012618 8011D108 02002025 */   move       $a0, $s0
/* 01261C 8011D10C AFA20044 */  sw          $v0, 0x44($sp)
/* 012620 8011D110 0C04582D */  jal         func_801160B4
/* 012624 8011D114 02002025 */   move       $a0, $s0
/* 012628 8011D118 AFA2003C */  sw          $v0, 0x3c($sp)
/* 01262C 8011D11C 0C04582D */  jal         func_801160B4
/* 012630 8011D120 02002025 */   move       $a0, $s0
/* 012634 8011D124 AFA20038 */  sw          $v0, 0x38($sp)
/* 012638 8011D128 0C04582D */  jal         func_801160B4
/* 01263C 8011D12C 02002025 */   move       $a0, $s0
/* 012640 8011D130 0C001FA3 */  jal         func_80007E8C
/* 012644 8011D134 00402025 */   move       $a0, $v0
/* 012648 8011D138 10400015 */  beq         $v0, $zero, .L8011D190
/* 01264C 8011D13C 00402025 */   move       $a0, $v0
/* 012650 8011D140 27AF0038 */  addiu       $t7, $sp, 0x38
/* 012654 8011D144 8DE10000 */  lw          $at, 0x0($t7)
/* 012658 8011D148 AFA10004 */  sw          $at, 0x4($sp)
/* 01265C 8011D14C 8DF90004 */  lw          $t9, 0x4($t7)
/* 012660 8011D150 8FA50004 */  lw          $a1, 0x4($sp)
/* 012664 8011D154 AFB90008 */  sw          $t9, 0x8($sp)
/* 012668 8011D158 8DE10008 */  lw          $at, 0x8($t7)
/* 01266C 8011D15C 8FA60008 */  lw          $a2, 0x8($sp)
/* 012670 8011D160 AFA1000C */  sw          $at, 0xc($sp)
/* 012674 8011D164 8DF9000C */  lw          $t9, 0xc($t7)
/* 012678 8011D168 8FA7000C */  lw          $a3, 0xc($sp)
/* 01267C 8011D16C AFB90010 */  sw          $t9, 0x10($sp)
/* 012680 8011D170 8DE10010 */  lw          $at, 0x10($t7)
/* 012684 8011D174 AFA10014 */  sw          $at, 0x14($sp)
/* 012688 8011D178 8DF90014 */  lw          $t9, 0x14($t7)
/* 01268C 8011D17C AFA0001C */  sw          $zero, 0x1c($sp)
/* 012690 8011D180 0C04639D */  jal         func_80118E74
/* 012694 8011D184 AFB90018 */   sw         $t9, 0x18($sp)
/* 012698 8011D188 10000002 */  b           .L8011D194
/* 01269C 8011D18C 00402825 */   move       $a1, $v0
.L8011D190:
/* 0126A0 8011D190 00002825 */  move        $a1, $zero
.L8011D194:
/* 0126A4 8011D194 0C045807 */  jal         func_8011601C
/* 0126A8 8011D198 02002025 */   move       $a0, $s0
/* 0126AC 8011D19C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0126B0 8011D1A0 8FB00028 */  lw          $s0, 0x28($sp)
/* 0126B4 8011D1A4 27BD0058 */  addiu       $sp, $sp, 0x58
/* 0126B8 8011D1A8 03E00008 */  jr          $ra
/* 0126BC 8011D1AC 00001025 */   move       $v0, $zero

glabel func_8011D1B0 # 69
/* 0126C0 8011D1B0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0126C4 8011D1B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0126C8 8011D1B8 AFA40028 */  sw          $a0, 0x28($sp)
/* 0126CC 8011D1BC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0126D0 8011D1C0 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0126D4 8011D1C4 0C045837 */  jal         func_801160DC
/* 0126D8 8011D1C8 AFA40024 */   sw         $a0, 0x24($sp)
/* 0126DC 8011D1CC E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0126E0 8011D1D0 0C04582D */  jal         func_801160B4
/* 0126E4 8011D1D4 8FA40024 */   lw         $a0, 0x24($sp)
/* 0126E8 8011D1D8 8FA40028 */  lw          $a0, 0x28($sp)
/* 0126EC 8011D1DC 00402825 */  move        $a1, $v0
/* 0126F0 8011D1E0 0C045C84 */  jal         func_80117210
/* 0126F4 8011D1E4 8FA6001C */   lw         $a2, 0x1c($sp)
/* 0126F8 8011D1E8 8FA40024 */  lw          $a0, 0x24($sp)
/* 0126FC 8011D1EC 0C045807 */  jal         func_8011601C
/* 012700 8011D1F0 00402825 */   move       $a1, $v0
/* 012704 8011D1F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012708 8011D1F8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01270C 8011D1FC 00001025 */  move        $v0, $zero
/* 012710 8011D200 03E00008 */  jr          $ra
/* 012714 8011D204 00000000 */   nop

glabel func_8011D208 # 70
/* 012718 8011D208 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01271C 8011D20C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012720 8011D210 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012724 8011D214 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012728 8011D218 0C045CB5 */  jal         func_801172D4
/* 01272C 8011D21C AFAF001C */   sw         $t7, 0x1c($sp)
/* 012730 8011D220 44050000 */  mfc1        $a1, $f0
/* 012734 8011D224 0C045813 */  jal         func_8011604C
/* 012738 8011D228 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01273C 8011D22C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012740 8011D230 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012744 8011D234 00001025 */  move        $v0, $zero
/* 012748 8011D238 03E00008 */  jr          $ra
/* 01274C 8011D23C 00000000 */   nop

glabel func_8011D240 # 71
/* 012750 8011D240 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012754 8011D244 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012758 8011D248 AFA40020 */  sw          $a0, 0x20($sp)
/* 01275C 8011D24C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012760 8011D250 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012764 8011D254 0C04582D */  jal         func_801160B4
/* 012768 8011D258 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01276C 8011D25C 8FA40020 */  lw          $a0, 0x20($sp)
/* 012770 8011D260 0C045CC3 */  jal         func_8011730C
/* 012774 8011D264 00402825 */   move       $a1, $v0
/* 012778 8011D268 44050000 */  mfc1        $a1, $f0
/* 01277C 8011D26C 0C045813 */  jal         func_8011604C
/* 012780 8011D270 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012784 8011D274 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012788 8011D278 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01278C 8011D27C 00001025 */  move        $v0, $zero
/* 012790 8011D280 03E00008 */  jr          $ra
/* 012794 8011D284 00000000 */   nop

glabel func_8011D288 # 72
/* 012798 8011D288 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01279C 8011D28C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0127A0 8011D290 AFA40020 */  sw          $a0, 0x20($sp)
/* 0127A4 8011D294 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0127A8 8011D298 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0127AC 8011D29C 0C04582D */  jal         func_801160B4
/* 0127B0 8011D2A0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0127B4 8011D2A4 8FA40020 */  lw          $a0, 0x20($sp)
/* 0127B8 8011D2A8 0C045CE2 */  jal         func_80117388
/* 0127BC 8011D2AC 00402825 */   move       $a1, $v0
/* 0127C0 8011D2B0 44050000 */  mfc1        $a1, $f0
/* 0127C4 8011D2B4 0C045813 */  jal         func_8011604C
/* 0127C8 8011D2B8 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0127CC 8011D2BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0127D0 8011D2C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0127D4 8011D2C4 00001025 */  move        $v0, $zero
/* 0127D8 8011D2C8 03E00008 */  jr          $ra
/* 0127DC 8011D2CC 00000000 */   nop

glabel func_8011D2D0 # 73
/* 0127E0 8011D2D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0127E4 8011D2D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0127E8 8011D2D8 8C820054 */  lw          $v0, 0x54($a0)
/* 0127EC 8011D2DC 00803025 */  move        $a2, $a0
/* 0127F0 8011D2E0 C4C60048 */  lwc1        $f6, 0x48($a2)
/* 0127F4 8011D2E4 C44401F0 */  lwc1        $f4, 0x1f0($v0)
/* 0127F8 8011D2E8 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0127FC 8011D2EC 46062201 */  sub.s       $f8, $f4, $f6
/* 012800 8011D2F0 44054000 */  mfc1        $a1, $f8
/* 012804 8011D2F4 0C045813 */  jal         func_8011604C
/* 012808 8011D2F8 00000000 */   nop
/* 01280C 8011D2FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012810 8011D300 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012814 8011D304 00001025 */  move        $v0, $zero
/* 012818 8011D308 03E00008 */  jr          $ra
/* 01281C 8011D30C 00000000 */   nop

glabel func_8011D310 # 74
/* 012820 8011D310 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012824 8011D314 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012828 8011D318 AFA40020 */  sw          $a0, 0x20($sp)
/* 01282C 8011D31C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012830 8011D320 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012834 8011D324 0C04582D */  jal         func_801160B4
/* 012838 8011D328 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01283C 8011D32C 8FA40020 */  lw          $a0, 0x20($sp)
/* 012840 8011D330 0C045CF2 */  jal         func_801173C8
/* 012844 8011D334 00402825 */   move       $a1, $v0
/* 012848 8011D338 44050000 */  mfc1        $a1, $f0
/* 01284C 8011D33C 0C045813 */  jal         func_8011604C
/* 012850 8011D340 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012854 8011D344 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012858 8011D348 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01285C 8011D34C 00001025 */  move        $v0, $zero
/* 012860 8011D350 03E00008 */  jr          $ra
/* 012864 8011D354 00000000 */   nop

glabel func_8011D358 # 75
/* 012868 8011D358 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01286C 8011D35C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012870 8011D360 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012874 8011D364 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012878 8011D368 0C045D0D */  jal         func_80117434
/* 01287C 8011D36C AFAF001C */   sw         $t7, 0x1c($sp)
/* 012880 8011D370 44050000 */  mfc1        $a1, $f0
/* 012884 8011D374 0C045813 */  jal         func_8011604C
/* 012888 8011D378 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01288C 8011D37C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012890 8011D380 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012894 8011D384 00001025 */  move        $v0, $zero
/* 012898 8011D388 03E00008 */  jr          $ra
/* 01289C 8011D38C 00000000 */   nop

glabel func_8011D390 # 76
/* 0128A0 8011D390 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0128A4 8011D394 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0128A8 8011D398 AFA40020 */  sw          $a0, 0x20($sp)
/* 0128AC 8011D39C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0128B0 8011D3A0 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0128B4 8011D3A4 0C04582D */  jal         func_801160B4
/* 0128B8 8011D3A8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0128BC 8011D3AC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0128C0 8011D3B0 0C045D20 */  jal         func_80117480
/* 0128C4 8011D3B4 00402825 */   move       $a1, $v0
/* 0128C8 8011D3B8 44050000 */  mfc1        $a1, $f0
/* 0128CC 8011D3BC 0C045813 */  jal         func_8011604C
/* 0128D0 8011D3C0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0128D4 8011D3C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0128D8 8011D3C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0128DC 8011D3CC 00001025 */  move        $v0, $zero
/* 0128E0 8011D3D0 03E00008 */  jr          $ra
/* 0128E4 8011D3D4 00000000 */   nop

glabel func_8011D3D8 # 77
/* 0128E8 8011D3D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0128EC 8011D3DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0128F0 8011D3E0 AFA40020 */  sw          $a0, 0x20($sp)
/* 0128F4 8011D3E4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0128F8 8011D3E8 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0128FC 8011D3EC 0C04582D */  jal         func_801160B4
/* 012900 8011D3F0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012904 8011D3F4 8FA40020 */  lw          $a0, 0x20($sp)
/* 012908 8011D3F8 0C045D2C */  jal         func_801174B0
/* 01290C 8011D3FC 00402825 */   move       $a1, $v0
/* 012910 8011D400 44050000 */  mfc1        $a1, $f0
/* 012914 8011D404 0C045813 */  jal         func_8011604C
/* 012918 8011D408 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01291C 8011D40C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012920 8011D410 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012924 8011D414 00001025 */  move        $v0, $zero
/* 012928 8011D418 03E00008 */  jr          $ra
/* 01292C 8011D41C 00000000 */   nop

glabel func_8011D420 # 78
/* 012930 8011D420 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012934 8011D424 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012938 8011D428 AFA40020 */  sw          $a0, 0x20($sp)
/* 01293C 8011D42C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012940 8011D430 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012944 8011D434 0C04582D */  jal         func_801160B4
/* 012948 8011D438 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01294C 8011D43C 8FB80020 */  lw          $t8, 0x20($sp)
/* 012950 8011D440 0002C880 */  sll         $t9, $v0, 2
/* 012954 8011D444 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012958 8011D448 03194021 */  addu        $t0, $t8, $t9
/* 01295C 8011D44C 0C045813 */  jal         func_8011604C
/* 012960 8011D450 8D05000C */   lw         $a1, 0xc($t0)
/* 012964 8011D454 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012968 8011D458 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01296C 8011D45C 00001025 */  move        $v0, $zero
/* 012970 8011D460 03E00008 */  jr          $ra
/* 012974 8011D464 00000000 */   nop

glabel func_8011D468 # 79
/* 012978 8011D468 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01297C 8011D46C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012980 8011D470 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012984 8011D474 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012988 8011D478 0C045D37 */  jal         func_801174DC
/* 01298C 8011D47C AFAF001C */   sw         $t7, 0x1c($sp)
/* 012990 8011D480 44050000 */  mfc1        $a1, $f0
/* 012994 8011D484 0C045813 */  jal         func_8011604C
/* 012998 8011D488 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01299C 8011D48C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0129A0 8011D490 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0129A4 8011D494 00001025 */  move        $v0, $zero
/* 0129A8 8011D498 03E00008 */  jr          $ra
/* 0129AC 8011D49C 00000000 */   nop

glabel func_8011D4A0 # 80
/* 0129B0 8011D4A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0129B4 8011D4A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0129B8 8011D4A8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0129BC 8011D4AC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0129C0 8011D4B0 0C045D3A */  jal         func_801174E8
/* 0129C4 8011D4B4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0129C8 8011D4B8 44050000 */  mfc1        $a1, $f0
/* 0129CC 8011D4BC 0C045813 */  jal         func_8011604C
/* 0129D0 8011D4C0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0129D4 8011D4C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0129D8 8011D4C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0129DC 8011D4CC 00001025 */  move        $v0, $zero
/* 0129E0 8011D4D0 03E00008 */  jr          $ra
/* 0129E4 8011D4D4 00000000 */   nop

glabel func_8011D4D8 # 81
/* 0129E8 8011D4D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0129EC 8011D4DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0129F0 8011D4E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0129F4 8011D4E4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0129F8 8011D4E8 0C045D3D */  jal         func_801174F4
/* 0129FC 8011D4EC AFAF001C */   sw         $t7, 0x1c($sp)
/* 012A00 8011D4F0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012A04 8011D4F4 0C045807 */  jal         func_8011601C
/* 012A08 8011D4F8 00402825 */   move       $a1, $v0
/* 012A0C 8011D4FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012A10 8011D500 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012A14 8011D504 00001025 */  move        $v0, $zero
/* 012A18 8011D508 03E00008 */  jr          $ra
/* 012A1C 8011D50C 00000000 */   nop

glabel func_8011D510 # 82
/* 012A20 8011D510 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012A24 8011D514 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012A28 8011D518 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012A2C 8011D51C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012A30 8011D520 0C045D40 */  jal         func_80117500
/* 012A34 8011D524 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012A38 8011D528 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012A3C 8011D52C 0C045807 */  jal         func_8011601C
/* 012A40 8011D530 00402825 */   move       $a1, $v0
/* 012A44 8011D534 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012A48 8011D538 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012A4C 8011D53C 00001025 */  move        $v0, $zero
/* 012A50 8011D540 03E00008 */  jr          $ra
/* 012A54 8011D544 00000000 */   nop

glabel func_8011D548 # 83
/* 012A58 8011D548 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012A5C 8011D54C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012A60 8011D550 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012A64 8011D554 3C05800F */  lui         $a1, %hi(D_800EF72C)
/* 012A68 8011D558 8CA5F72C */  lw          $a1, %lo(D_800EF72C)($a1)
/* 012A6C 8011D55C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012A70 8011D560 24060000 */  addiu       $a2, $zero, 0x0
/* 012A74 8011D564 0C045D61 */  jal         func_80117584
/* 012A78 8011D568 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012A7C 8011D56C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012A80 8011D570 0C045807 */  jal         func_8011601C
/* 012A84 8011D574 00002825 */   move       $a1, $zero
/* 012A88 8011D578 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012A8C 8011D57C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012A90 8011D580 00001025 */  move        $v0, $zero
/* 012A94 8011D584 03E00008 */  jr          $ra
/* 012A98 8011D588 00000000 */   nop

glabel func_8011D58C # 84
/* 012A9C 8011D58C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012AA0 8011D590 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012AA4 8011D594 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012AA8 8011D598 3C05800F */  lui         $a1, %hi(D_800EF730)
/* 012AAC 8011D59C 8CA5F730 */  lw          $a1, %lo(D_800EF730)($a1)
/* 012AB0 8011D5A0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012AB4 8011D5A4 24060000 */  addiu       $a2, $zero, 0x0
/* 012AB8 8011D5A8 0C045D61 */  jal         func_80117584
/* 012ABC 8011D5AC AFAF001C */   sw         $t7, 0x1c($sp)
/* 012AC0 8011D5B0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012AC4 8011D5B4 0C045807 */  jal         func_8011601C
/* 012AC8 8011D5B8 00002825 */   move       $a1, $zero
/* 012ACC 8011D5BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012AD0 8011D5C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012AD4 8011D5C4 00001025 */  move        $v0, $zero
/* 012AD8 8011D5C8 03E00008 */  jr          $ra
/* 012ADC 8011D5CC 00000000 */   nop

glabel func_8011D5D0 # 85
/* 012AE0 8011D5D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012AE4 8011D5D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012AE8 8011D5D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012AEC 8011D5DC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012AF0 8011D5E0 0C04582D */  jal         func_801160B4
/* 012AF4 8011D5E4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012AF8 8011D5E8 0C0011E3 */  jal         func_8000478C
/* 012AFC 8011D5EC 00402025 */   move       $a0, $v0
/* 012B00 8011D5F0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012B04 8011D5F4 0C045807 */  jal         func_8011601C
/* 012B08 8011D5F8 00002825 */   move       $a1, $zero
/* 012B0C 8011D5FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012B10 8011D600 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012B14 8011D604 24020001 */  addiu       $v0, $zero, 0x1
/* 012B18 8011D608 03E00008 */  jr          $ra
/* 012B1C 8011D60C 00000000 */   nop

glabel func_8011D610 # 86
/* 012B20 8011D610 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012B24 8011D614 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012B28 8011D618 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012B2C 8011D61C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012B30 8011D620 0C001241 */  jal         func_80004904
/* 012B34 8011D624 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012B38 8011D628 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012B3C 8011D62C 0C045807 */  jal         func_8011601C
/* 012B40 8011D630 00402825 */   move       $a1, $v0
/* 012B44 8011D634 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012B48 8011D638 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012B4C 8011D63C 00001025 */  move        $v0, $zero
/* 012B50 8011D640 03E00008 */  jr          $ra
/* 012B54 8011D644 00000000 */   nop

glabel func_8011D648 # 87
/* 012B58 8011D648 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 012B5C 8011D64C AFBF0024 */  sw          $ra, 0x24($sp)
/* 012B60 8011D650 AFB00020 */  sw          $s0, 0x20($sp)
/* 012B64 8011D654 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012B68 8011D658 27A40034 */  addiu       $a0, $sp, 0x34
/* 012B6C 8011D65C 27A50028 */  addiu       $a1, $sp, 0x28
/* 012B70 8011D660 0C008C4C */  jal         func_80023130
/* 012B74 8011D664 8DD001B8 */   lw         $s0, 0x1b8($t6)
/* 012B78 8011D668 0C045837 */  jal         func_801160DC
/* 012B7C 8011D66C 02002025 */   move       $a0, $s0
/* 012B80 8011D670 460000A1 */  cvt.d.s     $f2, $f0
/* 012B84 8011D674 02002025 */  move        $a0, $s0
/* 012B88 8011D678 0C045837 */  jal         func_801160DC
/* 012B8C 8011D67C F7A20040 */   sdc1       $f2, 0x40($sp)
/* 012B90 8011D680 46000321 */  cvt.d.s     $f12, $f0
/* 012B94 8011D684 02002025 */  move        $a0, $s0
/* 012B98 8011D688 0C04582D */  jal         func_801160B4
/* 012B9C 8011D68C F7AC0038 */   sdc1       $f12, 0x38($sp)
/* 012BA0 8011D690 8FAF0034 */  lw          $t7, 0x34($sp)
/* 012BA4 8011D694 D7A20040 */  ldc1        $f2, 0x40($sp)
/* 012BA8 8011D698 D7AC0038 */  ldc1        $f12, 0x38($sp)
/* 012BAC 8011D69C 104F000C */  beq         $v0, $t7, .L8011D6D0
/* 012BB0 8011D6A0 00402025 */   move       $a0, $v0
/* 012BB4 8011D6A4 44061800 */  mfc1        $a2, $f3
/* 012BB8 8011D6A8 44071000 */  mfc1        $a3, $f2
/* 012BBC 8011D6AC 0C008C54 */  jal         func_80023150
/* 012BC0 8011D6B0 F7AC0010 */   sdc1       $f12, 0x10($sp)
/* 012BC4 8011D6B4 0C008C7D */  jal         func_800231F4
/* 012BC8 8011D6B8 D7AC0028 */   ldc1       $f12, 0x28($sp)
/* 012BCC 8011D6BC 02002025 */  move        $a0, $s0
/* 012BD0 8011D6C0 0C045807 */  jal         func_8011601C
/* 012BD4 8011D6C4 24050001 */   addiu      $a1, $zero, 0x1
/* 012BD8 8011D6C8 10000005 */  b           .L8011D6E0
/* 012BDC 8011D6CC 8FBF0024 */   lw         $ra, 0x24($sp)
.L8011D6D0:
/* 012BE0 8011D6D0 02002025 */  move        $a0, $s0
/* 012BE4 8011D6D4 0C045807 */  jal         func_8011601C
/* 012BE8 8011D6D8 00002825 */   move       $a1, $zero
/* 012BEC 8011D6DC 8FBF0024 */  lw          $ra, 0x24($sp)
.L8011D6E0:
/* 012BF0 8011D6E0 8FB00020 */  lw          $s0, 0x20($sp)
/* 012BF4 8011D6E4 27BD0050 */  addiu       $sp, $sp, 0x50
/* 012BF8 8011D6E8 03E00008 */  jr          $ra
/* 012BFC 8011D6EC 00001025 */   move       $v0, $zero

glabel func_8011D6F0 # 88
/* 012C00 8011D6F0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 012C04 8011D6F4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 012C08 8011D6F8 AFB00020 */  sw          $s0, 0x20($sp)
/* 012C0C 8011D6FC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012C10 8011D700 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 012C14 8011D704 0C045837 */  jal         func_801160DC
/* 012C18 8011D708 02002025 */   move       $a0, $s0
/* 012C1C 8011D70C 460000A1 */  cvt.d.s     $f2, $f0
/* 012C20 8011D710 02002025 */  move        $a0, $s0
/* 012C24 8011D714 0C045837 */  jal         func_801160DC
/* 012C28 8011D718 F7A20030 */   sdc1       $f2, 0x30($sp)
/* 012C2C 8011D71C 46000321 */  cvt.d.s     $f12, $f0
/* 012C30 8011D720 02002025 */  move        $a0, $s0
/* 012C34 8011D724 0C04582D */  jal         func_801160B4
/* 012C38 8011D728 F7AC0028 */   sdc1       $f12, 0x28($sp)
/* 012C3C 8011D72C D7A20030 */  ldc1        $f2, 0x30($sp)
/* 012C40 8011D730 D7AC0028 */  ldc1        $f12, 0x28($sp)
/* 012C44 8011D734 00402025 */  move        $a0, $v0
/* 012C48 8011D738 44071000 */  mfc1        $a3, $f2
/* 012C4C 8011D73C 44061800 */  mfc1        $a2, $f3
/* 012C50 8011D740 0C008C54 */  jal         func_80023150
/* 012C54 8011D744 F7AC0010 */   sdc1       $f12, 0x10($sp)
/* 012C58 8011D748 02002025 */  move        $a0, $s0
/* 012C5C 8011D74C 0C045807 */  jal         func_8011601C
/* 012C60 8011D750 00402825 */   move       $a1, $v0
/* 012C64 8011D754 8FBF0024 */  lw          $ra, 0x24($sp)
/* 012C68 8011D758 8FB00020 */  lw          $s0, 0x20($sp)
/* 012C6C 8011D75C 27BD0040 */  addiu       $sp, $sp, 0x40
/* 012C70 8011D760 03E00008 */  jr          $ra
/* 012C74 8011D764 00001025 */   move       $v0, $zero

glabel func_8011D768 # 89
/* 012C78 8011D768 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012C7C 8011D76C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012C80 8011D770 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012C84 8011D774 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012C88 8011D778 0C045837 */  jal         func_801160DC
/* 012C8C 8011D77C AFA4001C */   sw         $a0, 0x1c($sp)
/* 012C90 8011D780 0C008C7D */  jal         func_800231F4
/* 012C94 8011D784 46000321 */   cvt.d.s    $f12, $f0
/* 012C98 8011D788 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012C9C 8011D78C 0C045807 */  jal         func_8011601C
/* 012CA0 8011D790 00402825 */   move       $a1, $v0
/* 012CA4 8011D794 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012CA8 8011D798 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012CAC 8011D79C 00001025 */  move        $v0, $zero
/* 012CB0 8011D7A0 03E00008 */  jr          $ra
/* 012CB4 8011D7A4 00000000 */   nop

glabel func_8011D7A8 # 90
/* 012CB8 8011D7A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012CBC 8011D7AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 012CC0 8011D7B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012CC4 8011D7B4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012CC8 8011D7B8 0C04582D */  jal         func_801160B4
/* 012CCC 8011D7BC AFA4001C */   sw         $a0, 0x1c($sp)
/* 012CD0 8011D7C0 0C008C91 */  jal         func_80023244
/* 012CD4 8011D7C4 00402025 */   move       $a0, $v0
/* 012CD8 8011D7C8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012CDC 8011D7CC 0C045807 */  jal         func_8011601C
/* 012CE0 8011D7D0 00402825 */   move       $a1, $v0
/* 012CE4 8011D7D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012CE8 8011D7D8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012CEC 8011D7DC 00001025 */  move        $v0, $zero
/* 012CF0 8011D7E0 03E00008 */  jr          $ra
/* 012CF4 8011D7E4 00000000 */   nop

glabel func_8011D7E8 # 91
/* 012CF8 8011D7E8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012CFC 8011D7EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D00 8011D7F0 AFA40020 */  sw          $a0, 0x20($sp)
/* 012D04 8011D7F4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012D08 8011D7F8 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012D0C 8011D7FC 0C04582D */  jal         func_801160B4
/* 012D10 8011D800 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012D14 8011D804 8FA40020 */  lw          $a0, 0x20($sp)
/* 012D18 8011D808 0C0052D8 */  jal         func_80014B60
/* 012D1C 8011D80C 00402825 */   move       $a1, $v0
/* 012D20 8011D810 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012D24 8011D814 0C045807 */  jal         func_8011601C
/* 012D28 8011D818 00402825 */   move       $a1, $v0
/* 012D2C 8011D81C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012D30 8011D820 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012D34 8011D824 00001025 */  move        $v0, $zero
/* 012D38 8011D828 03E00008 */  jr          $ra
/* 012D3C 8011D82C 00000000 */   nop

glabel func_8011D830 # 92
/* 012D40 8011D830 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012D44 8011D834 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D48 8011D838 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012D4C 8011D83C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012D50 8011D840 0C04582D */  jal         func_801160B4
/* 012D54 8011D844 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012D58 8011D848 0C007F92 */  jal         func_8001FE48
/* 012D5C 8011D84C 00402025 */   move       $a0, $v0
/* 012D60 8011D850 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012D64 8011D854 0C045807 */  jal         func_8011601C
/* 012D68 8011D858 00402825 */   move       $a1, $v0
/* 012D6C 8011D85C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012D70 8011D860 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012D74 8011D864 00001025 */  move        $v0, $zero
/* 012D78 8011D868 03E00008 */  jr          $ra
/* 012D7C 8011D86C 00000000 */   nop

glabel func_8011D870 # 93
/* 012D80 8011D870 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012D84 8011D874 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D88 8011D878 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012D8C 8011D87C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012D90 8011D880 0C04582D */  jal         func_801160B4
/* 012D94 8011D884 AFA40024 */   sw         $a0, 0x24($sp)
/* 012D98 8011D888 AFA2001C */  sw          $v0, 0x1c($sp)
/* 012D9C 8011D88C 0C04582D */  jal         func_801160B4
/* 012DA0 8011D890 8FA40024 */   lw         $a0, 0x24($sp)
/* 012DA4 8011D894 00402025 */  move        $a0, $v0
/* 012DA8 8011D898 0C007FAB */  jal         func_8001FEAC
/* 012DAC 8011D89C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 012DB0 8011D8A0 8FA40024 */  lw          $a0, 0x24($sp)
/* 012DB4 8011D8A4 0C045807 */  jal         func_8011601C
/* 012DB8 8011D8A8 00402825 */   move       $a1, $v0
/* 012DBC 8011D8AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012DC0 8011D8B0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012DC4 8011D8B4 00001025 */  move        $v0, $zero
/* 012DC8 8011D8B8 03E00008 */  jr          $ra
/* 012DCC 8011D8BC 00000000 */   nop

glabel func_8011D8C0 # 94
/* 012DD0 8011D8C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012DD4 8011D8C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012DD8 8011D8C8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012DDC 8011D8CC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012DE0 8011D8D0 0C04582D */  jal         func_801160B4
/* 012DE4 8011D8D4 AFA40024 */   sw         $a0, 0x24($sp)
/* 012DE8 8011D8D8 AFA2001C */  sw          $v0, 0x1c($sp)
/* 012DEC 8011D8DC 0C04582D */  jal         func_801160B4
/* 012DF0 8011D8E0 8FA40024 */   lw         $a0, 0x24($sp)
/* 012DF4 8011D8E4 00402025 */  move        $a0, $v0
/* 012DF8 8011D8E8 0C007F9E */  jal         func_8001FE78
/* 012DFC 8011D8EC 8FA5001C */   lw         $a1, 0x1c($sp)
/* 012E00 8011D8F0 8FA40024 */  lw          $a0, 0x24($sp)
/* 012E04 8011D8F4 0C045807 */  jal         func_8011601C
/* 012E08 8011D8F8 00402825 */   move       $a1, $v0
/* 012E0C 8011D8FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012E10 8011D900 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012E14 8011D904 00001025 */  move        $v0, $zero
/* 012E18 8011D908 03E00008 */  jr          $ra
/* 012E1C 8011D90C 00000000 */   nop

glabel func_8011D910 # 95
/* 012E20 8011D910 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012E24 8011D914 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012E28 8011D918 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012E2C 8011D91C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012E30 8011D920 0C045837 */  jal         func_801160DC
/* 012E34 8011D924 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012E38 8011D928 46000021 */  cvt.d.s     $f0, $f0
/* 012E3C 8011D92C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012E40 8011D930 46200004 */  sqrt.d      $f0, $f0
/* 012E44 8011D934 46200120 */  cvt.s.d     $f4, $f0
/* 012E48 8011D938 44052000 */  mfc1        $a1, $f4
/* 012E4C 8011D93C 0C045813 */  jal         func_8011604C
/* 012E50 8011D940 00000000 */   nop
/* 012E54 8011D944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012E58 8011D948 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012E5C 8011D94C 00001025 */  move        $v0, $zero
/* 012E60 8011D950 03E00008 */  jr          $ra
/* 012E64 8011D954 00000000 */   nop

glabel func_8011D958 # 96
/* 012E68 8011D958 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 012E6C 8011D95C AFBF002C */  sw          $ra, 0x2c($sp)
/* 012E70 8011D960 AFB00028 */  sw          $s0, 0x28($sp)
/* 012E74 8011D964 AFA40050 */  sw          $a0, 0x50($sp)
/* 012E78 8011D968 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012E7C 8011D96C 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 012E80 8011D970 0C04582D */  jal         func_801160B4
/* 012E84 8011D974 02002025 */   move       $a0, $s0
/* 012E88 8011D978 AFA20034 */  sw          $v0, 0x34($sp)
/* 012E8C 8011D97C 0C04582D */  jal         func_801160B4
/* 012E90 8011D980 02002025 */   move       $a0, $s0
/* 012E94 8011D984 AFA20038 */  sw          $v0, 0x38($sp)
/* 012E98 8011D988 0C045837 */  jal         func_801160DC
/* 012E9C 8011D98C 02002025 */   move       $a0, $s0
/* 012EA0 8011D990 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 012EA4 8011D994 0C045837 */  jal         func_801160DC
/* 012EA8 8011D998 02002025 */   move       $a0, $s0
/* 012EAC 8011D99C E7A00040 */  swc1        $f0, 0x40($sp)
/* 012EB0 8011D9A0 0C04582D */  jal         func_801160B4
/* 012EB4 8011D9A4 02002025 */   move       $a0, $s0
/* 012EB8 8011D9A8 AFA20044 */  sw          $v0, 0x44($sp)
/* 012EBC 8011D9AC 0C04582D */  jal         func_801160B4
/* 012EC0 8011D9B0 02002025 */   move       $a0, $s0
/* 012EC4 8011D9B4 8FB80044 */  lw          $t8, 0x44($sp)
/* 012EC8 8011D9B8 8FB90038 */  lw          $t9, 0x38($sp)
/* 012ECC 8011D9BC 8FA80034 */  lw          $t0, 0x34($sp)
/* 012ED0 8011D9C0 8FA40050 */  lw          $a0, 0x50($sp)
/* 012ED4 8011D9C4 8FA50040 */  lw          $a1, 0x40($sp)
/* 012ED8 8011D9C8 8FA6003C */  lw          $a2, 0x3c($sp)
/* 012EDC 8011D9CC 00403825 */  move        $a3, $v0
/* 012EE0 8011D9D0 AFB80010 */  sw          $t8, 0x10($sp)
/* 012EE4 8011D9D4 AFB90014 */  sw          $t9, 0x14($sp)
/* 012EE8 8011D9D8 0C045D43 */  jal         func_8011750C
/* 012EEC 8011D9DC AFA80018 */   sw         $t0, 0x18($sp)
/* 012EF0 8011D9E0 02002025 */  move        $a0, $s0
/* 012EF4 8011D9E4 0C045807 */  jal         func_8011601C
/* 012EF8 8011D9E8 00402825 */   move       $a1, $v0
/* 012EFC 8011D9EC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 012F00 8011D9F0 8FB00028 */  lw          $s0, 0x28($sp)
/* 012F04 8011D9F4 27BD0050 */  addiu       $sp, $sp, 0x50
/* 012F08 8011D9F8 03E00008 */  jr          $ra
/* 012F0C 8011D9FC 00001025 */   move       $v0, $zero

glabel func_8011DA00 # 97
/* 012F10 8011DA00 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 012F14 8011DA04 AFBF001C */  sw          $ra, 0x1c($sp)
/* 012F18 8011DA08 AFB00018 */  sw          $s0, 0x18($sp)
/* 012F1C 8011DA0C AFA40038 */  sw          $a0, 0x38($sp)
/* 012F20 8011DA10 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012F24 8011DA14 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 012F28 8011DA18 0C045837 */  jal         func_801160DC
/* 012F2C 8011DA1C 02002025 */   move       $a0, $s0
/* 012F30 8011DA20 E7A00028 */  swc1        $f0, 0x28($sp)
/* 012F34 8011DA24 0C045837 */  jal         func_801160DC
/* 012F38 8011DA28 02002025 */   move       $a0, $s0
/* 012F3C 8011DA2C E7A00034 */  swc1        $f0, 0x34($sp)
/* 012F40 8011DA30 0C045837 */  jal         func_801160DC
/* 012F44 8011DA34 02002025 */   move       $a0, $s0
/* 012F48 8011DA38 E7A00030 */  swc1        $f0, 0x30($sp)
/* 012F4C 8011DA3C 0C045837 */  jal         func_801160DC
/* 012F50 8011DA40 02002025 */   move       $a0, $s0
/* 012F54 8011DA44 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 012F58 8011DA48 8FA40038 */  lw          $a0, 0x38($sp)
/* 012F5C 8011DA4C 0C046191 */  jal         func_80118644
/* 012F60 8011DA50 27A5002C */   addiu      $a1, $sp, 0x2c
/* 012F64 8011DA54 8FB80038 */  lw          $t8, 0x38($sp)
/* 012F68 8011DA58 02002025 */  move        $a0, $s0
/* 012F6C 8011DA5C 00002825 */  move        $a1, $zero
/* 012F70 8011DA60 8F190054 */  lw          $t9, 0x54($t8)
/* 012F74 8011DA64 AF20019C */  sw          $zero, 0x19c($t9)
/* 012F78 8011DA68 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 012F7C 8011DA6C 8F080054 */  lw          $t0, 0x54($t8)
/* 012F80 8011DA70 0C045807 */  jal         func_8011601C
/* 012F84 8011DA74 E50401A4 */   swc1       $f4, 0x1a4($t0)
/* 012F88 8011DA78 8FBF001C */  lw          $ra, 0x1c($sp)
/* 012F8C 8011DA7C 8FB00018 */  lw          $s0, 0x18($sp)
/* 012F90 8011DA80 27BD0038 */  addiu       $sp, $sp, 0x38
/* 012F94 8011DA84 03E00008 */  jr          $ra
/* 012F98 8011DA88 00001025 */   move       $v0, $zero

glabel func_8011DA8C # 98
/* 012F9C 8011DA8C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012FA0 8011DA90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012FA4 8011DA94 AFA40028 */  sw          $a0, 0x28($sp)
/* 012FA8 8011DA98 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012FAC 8011DA9C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012FB0 8011DAA0 0C045837 */  jal         func_801160DC
/* 012FB4 8011DAA4 AFA40024 */   sw         $a0, 0x24($sp)
/* 012FB8 8011DAA8 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 012FBC 8011DAAC 0C04582D */  jal         func_801160B4
/* 012FC0 8011DAB0 8FA40024 */   lw         $a0, 0x24($sp)
/* 012FC4 8011DAB4 8FA40028 */  lw          $a0, 0x28($sp)
/* 012FC8 8011DAB8 00402825 */  move        $a1, $v0
/* 012FCC 8011DABC 0C045D61 */  jal         func_80117584
/* 012FD0 8011DAC0 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012FD4 8011DAC4 8FA40024 */  lw          $a0, 0x24($sp)
/* 012FD8 8011DAC8 0C045807 */  jal         func_8011601C
/* 012FDC 8011DACC 00402825 */   move       $a1, $v0
/* 012FE0 8011DAD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012FE4 8011DAD4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012FE8 8011DAD8 00001025 */  move        $v0, $zero
/* 012FEC 8011DADC 03E00008 */  jr          $ra
/* 012FF0 8011DAE0 00000000 */   nop

glabel func_8011DAE4 # 99
/* 012FF4 8011DAE4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012FF8 8011DAE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012FFC 8011DAEC AFA40028 */  sw          $a0, 0x28($sp)
/* 013000 8011DAF0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013004 8011DAF4 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013008 8011DAF8 0C045837 */  jal         func_801160DC
/* 01300C 8011DAFC AFA40024 */   sw         $a0, 0x24($sp)
/* 013010 8011DB00 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 013014 8011DB04 0C04582D */  jal         func_801160B4
/* 013018 8011DB08 8FA40024 */   lw         $a0, 0x24($sp)
/* 01301C 8011DB0C 8FA40028 */  lw          $a0, 0x28($sp)
/* 013020 8011DB10 00402825 */  move        $a1, $v0
/* 013024 8011DB14 0C045D89 */  jal         func_80117624
/* 013028 8011DB18 8FA6001C */   lw         $a2, 0x1c($sp)
/* 01302C 8011DB1C 8FA40024 */  lw          $a0, 0x24($sp)
/* 013030 8011DB20 0C045807 */  jal         func_8011601C
/* 013034 8011DB24 00402825 */   move       $a1, $v0
/* 013038 8011DB28 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01303C 8011DB2C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013040 8011DB30 00001025 */  move        $v0, $zero
/* 013044 8011DB34 03E00008 */  jr          $ra
/* 013048 8011DB38 00000000 */   nop

glabel func_8011DB3C # 100
/* 01304C 8011DB3C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013050 8011DB40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013054 8011DB44 AFA40020 */  sw          $a0, 0x20($sp)
/* 013058 8011DB48 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01305C 8011DB4C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013060 8011DB50 0C04582D */  jal         func_801160B4
/* 013064 8011DB54 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013068 8011DB58 8FA40020 */  lw          $a0, 0x20($sp)
/* 01306C 8011DB5C 0C045DAA */  jal         func_801176A8
/* 013070 8011DB60 00402825 */   move       $a1, $v0
/* 013074 8011DB64 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013078 8011DB68 0C045807 */  jal         func_8011601C
/* 01307C 8011DB6C 00402825 */   move       $a1, $v0
/* 013080 8011DB70 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013084 8011DB74 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013088 8011DB78 00001025 */  move        $v0, $zero
/* 01308C 8011DB7C 03E00008 */  jr          $ra
/* 013090 8011DB80 00000000 */   nop

glabel func_8011DB84 # 101
/* 013094 8011DB84 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013098 8011DB88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01309C 8011DB8C AFA40020 */  sw          $a0, 0x20($sp)
/* 0130A0 8011DB90 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0130A4 8011DB94 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0130A8 8011DB98 0C04582D */  jal         func_801160B4
/* 0130AC 8011DB9C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0130B0 8011DBA0 8FA40020 */  lw          $a0, 0x20($sp)
/* 0130B4 8011DBA4 0C045DD1 */  jal         func_80117744
/* 0130B8 8011DBA8 00402825 */   move       $a1, $v0
/* 0130BC 8011DBAC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0130C0 8011DBB0 0C045807 */  jal         func_8011601C
/* 0130C4 8011DBB4 00402825 */   move       $a1, $v0
/* 0130C8 8011DBB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0130CC 8011DBBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0130D0 8011DBC0 00001025 */  move        $v0, $zero
/* 0130D4 8011DBC4 03E00008 */  jr          $ra
/* 0130D8 8011DBC8 00000000 */   nop

glabel func_8011DBCC # 102
/* 0130DC 8011DBCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0130E0 8011DBD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0130E4 8011DBD4 8C820054 */  lw          $v0, 0x54($a0)
/* 0130E8 8011DBD8 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0130EC 8011DBDC 0C045813 */  jal         func_8011604C
/* 0130F0 8011DBE0 8C4501A4 */   lw         $a1, 0x1a4($v0)
/* 0130F4 8011DBE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0130F8 8011DBE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0130FC 8011DBEC 00001025 */  move        $v0, $zero
/* 013100 8011DBF0 03E00008 */  jr          $ra
/* 013104 8011DBF4 00000000 */   nop

glabel func_8011DBF8 # 103
/* 013108 8011DBF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01310C 8011DBFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013110 8011DC00 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013114 8011DC04 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013118 8011DC08 0C045DFF */  jal         func_801177FC
/* 01311C 8011DC0C AFAF001C */   sw         $t7, 0x1c($sp)
/* 013120 8011DC10 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013124 8011DC14 0C045807 */  jal         func_8011601C
/* 013128 8011DC18 00402825 */   move       $a1, $v0
/* 01312C 8011DC1C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013130 8011DC20 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013134 8011DC24 00001025 */  move        $v0, $zero
/* 013138 8011DC28 03E00008 */  jr          $ra
/* 01313C 8011DC2C 00000000 */   nop

glabel func_8011DC30 # 104
/* 013140 8011DC30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013144 8011DC34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013148 8011DC38 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01314C 8011DC3C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013150 8011DC40 0C045E0A */  jal         func_80117828
/* 013154 8011DC44 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013158 8011DC48 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01315C 8011DC4C 0C045807 */  jal         func_8011601C
/* 013160 8011DC50 00402825 */   move       $a1, $v0
/* 013164 8011DC54 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013168 8011DC58 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01316C 8011DC5C 00001025 */  move        $v0, $zero
/* 013170 8011DC60 03E00008 */  jr          $ra
/* 013174 8011DC64 00000000 */   nop

glabel func_8011DC68 # 105
/* 013178 8011DC68 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01317C 8011DC6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013180 8011DC70 AFA40020 */  sw          $a0, 0x20($sp)
/* 013184 8011DC74 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013188 8011DC78 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01318C 8011DC7C 0C04582D */  jal         func_801160B4
/* 013190 8011DC80 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013194 8011DC84 8FA40020 */  lw          $a0, 0x20($sp)
/* 013198 8011DC88 0C045E0D */  jal         func_80117834
/* 01319C 8011DC8C 00402825 */   move       $a1, $v0
/* 0131A0 8011DC90 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0131A4 8011DC94 0C045807 */  jal         func_8011601C
/* 0131A8 8011DC98 00002825 */   move       $a1, $zero
/* 0131AC 8011DC9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0131B0 8011DCA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0131B4 8011DCA4 00001025 */  move        $v0, $zero
/* 0131B8 8011DCA8 03E00008 */  jr          $ra
/* 0131BC 8011DCAC 00000000 */   nop

glabel func_8011DCB0 # 106
/* 0131C0 8011DCB0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0131C4 8011DCB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0131C8 8011DCB8 AFA40020 */  sw          $a0, 0x20($sp)
/* 0131CC 8011DCBC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0131D0 8011DCC0 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0131D4 8011DCC4 0C04582D */  jal         func_801160B4
/* 0131D8 8011DCC8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0131DC 8011DCCC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0131E0 8011DCD0 0C045E10 */  jal         func_80117840
/* 0131E4 8011DCD4 00402825 */   move       $a1, $v0
/* 0131E8 8011DCD8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0131EC 8011DCDC 0C045807 */  jal         func_8011601C
/* 0131F0 8011DCE0 00402825 */   move       $a1, $v0
/* 0131F4 8011DCE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0131F8 8011DCE8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0131FC 8011DCEC 00001025 */  move        $v0, $zero
/* 013200 8011DCF0 03E00008 */  jr          $ra
/* 013204 8011DCF4 00000000 */   nop

glabel func_8011DCF8 # 107
/* 013208 8011DCF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01320C 8011DCFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013210 8011DD00 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013214 8011DD04 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013218 8011DD08 0C04582D */  jal         func_801160B4
/* 01321C 8011DD0C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013220 8011DD10 0C045E3B */  jal         func_801178EC
/* 013224 8011DD14 00402025 */   move       $a0, $v0
/* 013228 8011DD18 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01322C 8011DD1C 0C045807 */  jal         func_8011601C
/* 013230 8011DD20 00402825 */   move       $a1, $v0
/* 013234 8011DD24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013238 8011DD28 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01323C 8011DD2C 00001025 */  move        $v0, $zero
/* 013240 8011DD30 03E00008 */  jr          $ra
/* 013244 8011DD34 00000000 */   nop

glabel func_8011DD38 # 108
/* 013248 8011DD38 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01324C 8011DD3C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013250 8011DD40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013254 8011DD44 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013258 8011DD48 0C04582D */  jal         func_801160B4
/* 01325C 8011DD4C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013260 8011DD50 0C045E66 */  jal         func_80117998
/* 013264 8011DD54 00402025 */   move       $a0, $v0
/* 013268 8011DD58 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01326C 8011DD5C 0C045807 */  jal         func_8011601C
/* 013270 8011DD60 00402825 */   move       $a1, $v0
/* 013274 8011DD64 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013278 8011DD68 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01327C 8011DD6C 00001025 */  move        $v0, $zero
/* 013280 8011DD70 03E00008 */  jr          $ra
/* 013284 8011DD74 00000000 */   nop

glabel func_8011DD78 # 109
/* 013288 8011DD78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01328C 8011DD7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013290 8011DD80 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013294 8011DD84 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013298 8011DD88 0C04582D */  jal         func_801160B4
/* 01329C 8011DD8C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0132A0 8011DD90 0C045E7A */  jal         func_801179E8
/* 0132A4 8011DD94 00402025 */   move       $a0, $v0
/* 0132A8 8011DD98 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0132AC 8011DD9C 0C045807 */  jal         func_8011601C
/* 0132B0 8011DDA0 00402825 */   move       $a1, $v0
/* 0132B4 8011DDA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0132B8 8011DDA8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0132BC 8011DDAC 00001025 */  move        $v0, $zero
/* 0132C0 8011DDB0 03E00008 */  jr          $ra
/* 0132C4 8011DDB4 00000000 */   nop

glabel func_8011DDB8 # 110
/* 0132C8 8011DDB8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0132CC 8011DDBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0132D0 8011DDC0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0132D4 8011DDC4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0132D8 8011DDC8 0C04582D */  jal         func_801160B4
/* 0132DC 8011DDCC AFA4001C */   sw         $a0, 0x1c($sp)
/* 0132E0 8011DDD0 0C045E8C */  jal         func_80117A30
/* 0132E4 8011DDD4 00402025 */   move       $a0, $v0
/* 0132E8 8011DDD8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0132EC 8011DDDC 0C045807 */  jal         func_8011601C
/* 0132F0 8011DDE0 00402825 */   move       $a1, $v0
/* 0132F4 8011DDE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0132F8 8011DDE8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0132FC 8011DDEC 00001025 */  move        $v0, $zero
/* 013300 8011DDF0 03E00008 */  jr          $ra
/* 013304 8011DDF4 00000000 */   nop

glabel func_8011DDF8 # 111
/* 013308 8011DDF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01330C 8011DDFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013310 8011DE00 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013314 8011DE04 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013318 8011DE08 0C04582D */  jal         func_801160B4
/* 01331C 8011DE0C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013320 8011DE10 0C045E99 */  jal         func_80117A64
/* 013324 8011DE14 00402025 */   move       $a0, $v0
/* 013328 8011DE18 44050000 */  mfc1        $a1, $f0
/* 01332C 8011DE1C 0C045813 */  jal         func_8011604C
/* 013330 8011DE20 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013334 8011DE24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013338 8011DE28 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01333C 8011DE2C 00001025 */  move        $v0, $zero
/* 013340 8011DE30 03E00008 */  jr          $ra
/* 013344 8011DE34 00000000 */   nop

glabel func_8011DE38 # 112
/* 013348 8011DE38 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01334C 8011DE3C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013350 8011DE40 AFA40020 */  sw          $a0, 0x20($sp)
/* 013354 8011DE44 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013358 8011DE48 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01335C 8011DE4C 0C04582D */  jal         func_801160B4
/* 013360 8011DE50 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013364 8011DE54 8FA40020 */  lw          $a0, 0x20($sp)
/* 013368 8011DE58 0C045EA5 */  jal         func_80117A94
/* 01336C 8011DE5C 00402825 */   move       $a1, $v0
/* 013370 8011DE60 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013374 8011DE64 0C045807 */  jal         func_8011601C
/* 013378 8011DE68 00002825 */   move       $a1, $zero
/* 01337C 8011DE6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013380 8011DE70 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013384 8011DE74 00001025 */  move        $v0, $zero
/* 013388 8011DE78 03E00008 */  jr          $ra
/* 01338C 8011DE7C 00000000 */   nop

glabel func_8011DE80 # 113
/* 013390 8011DE80 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013394 8011DE84 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013398 8011DE88 8C820054 */  lw          $v0, 0x54($a0)
/* 01339C 8011DE8C 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0133A0 8011DE90 0C045807 */  jal         func_8011601C
/* 0133A4 8011DE94 8445013C */   lh         $a1, 0x13c($v0)
/* 0133A8 8011DE98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0133AC 8011DE9C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0133B0 8011DEA0 00001025 */  move        $v0, $zero
/* 0133B4 8011DEA4 03E00008 */  jr          $ra
/* 0133B8 8011DEA8 00000000 */   nop

glabel func_8011DEAC # 114
/* 0133BC 8011DEAC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0133C0 8011DEB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0133C4 8011DEB4 AFA40028 */  sw          $a0, 0x28($sp)
/* 0133C8 8011DEB8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0133CC 8011DEBC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0133D0 8011DEC0 0C04582D */  jal         func_801160B4
/* 0133D4 8011DEC4 AFA40024 */   sw         $a0, 0x24($sp)
/* 0133D8 8011DEC8 44822000 */  mtc1        $v0, $f4
/* 0133DC 8011DECC 8FA40024 */  lw          $a0, 0x24($sp)
/* 0133E0 8011DED0 468021A0 */  cvt.s.w     $f6, $f4
/* 0133E4 8011DED4 0C04582D */  jal         func_801160B4
/* 0133E8 8011DED8 E7A6001C */   swc1       $f6, 0x1c($sp)
/* 0133EC 8011DEDC C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 0133F0 8011DEE0 8FA40028 */  lw          $a0, 0x28($sp)
/* 0133F4 8011DEE4 00402825 */  move        $a1, $v0
/* 0133F8 8011DEE8 4600428D */  trunc.w.s   $f10, $f8
/* 0133FC 8011DEEC 44065000 */  mfc1        $a2, $f10
/* 013400 8011DEF0 0C00481E */  jal         func_80012078
/* 013404 8011DEF4 00000000 */   nop
/* 013408 8011DEF8 8FA40024 */  lw          $a0, 0x24($sp)
/* 01340C 8011DEFC 0C045807 */  jal         func_8011601C
/* 013410 8011DF00 00002825 */   move       $a1, $zero
/* 013414 8011DF04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013418 8011DF08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01341C 8011DF0C 24020001 */  addiu       $v0, $zero, 0x1
/* 013420 8011DF10 03E00008 */  jr          $ra
/* 013424 8011DF14 00000000 */   nop

glabel func_8011DF18 # 115
/* 013428 8011DF18 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01342C 8011DF1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013430 8011DF20 AFA40028 */  sw          $a0, 0x28($sp)
/* 013434 8011DF24 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013438 8011DF28 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01343C 8011DF2C 0C045837 */  jal         func_801160DC
/* 013440 8011DF30 AFA40024 */   sw         $a0, 0x24($sp)
/* 013444 8011DF34 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 013448 8011DF38 0C04582D */  jal         func_801160B4
/* 01344C 8011DF3C 8FA40024 */   lw         $a0, 0x24($sp)
/* 013450 8011DF40 8FA40028 */  lw          $a0, 0x28($sp)
/* 013454 8011DF44 00402825 */  move        $a1, $v0
/* 013458 8011DF48 0C045EA8 */  jal         func_80117AA0
/* 01345C 8011DF4C 8FA6001C */   lw         $a2, 0x1c($sp)
/* 013460 8011DF50 8FA40024 */  lw          $a0, 0x24($sp)
/* 013464 8011DF54 0C045807 */  jal         func_8011601C
/* 013468 8011DF58 00002825 */   move       $a1, $zero
/* 01346C 8011DF5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013470 8011DF60 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013474 8011DF64 24020001 */  addiu       $v0, $zero, 0x1
/* 013478 8011DF68 03E00008 */  jr          $ra
/* 01347C 8011DF6C 00000000 */   nop

glabel func_8011DF70 # 116
/* 013480 8011DF70 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013484 8011DF74 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013488 8011DF78 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01348C 8011DF7C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013490 8011DF80 0C045EB4 */  jal         func_80117AD0
/* 013494 8011DF84 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013498 8011DF88 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01349C 8011DF8C 0C045807 */  jal         func_8011601C
/* 0134A0 8011DF90 00402825 */   move       $a1, $v0
/* 0134A4 8011DF94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0134A8 8011DF98 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0134AC 8011DF9C 00001025 */  move        $v0, $zero
/* 0134B0 8011DFA0 03E00008 */  jr          $ra
/* 0134B4 8011DFA4 00000000 */   nop

glabel func_8011DFA8 # 117
/* 0134B8 8011DFA8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0134BC 8011DFAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0134C0 8011DFB0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0134C4 8011DFB4 3C05800F */  lui         $a1, %hi(D_800EF796)
/* 0134C8 8011DFB8 90A5F796 */  lbu         $a1, %lo(D_800EF796)($a1)
/* 0134CC 8011DFBC 0C045807 */  jal         func_8011601C
/* 0134D0 8011DFC0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0134D4 8011DFC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0134D8 8011DFC8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0134DC 8011DFCC 00001025 */  move        $v0, $zero
/* 0134E0 8011DFD0 03E00008 */  jr          $ra
/* 0134E4 8011DFD4 00000000 */   nop

glabel func_8011DFD8 # 118
/* 0134E8 8011DFD8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0134EC 8011DFDC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0134F0 8011DFE0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0134F4 8011DFE4 3C05800F */  lui         $a1, %hi(D_800EF79C)
/* 0134F8 8011DFE8 8CA5F79C */  lw          $a1, %lo(D_800EF79C)($a1)
/* 0134FC 8011DFEC 0C045807 */  jal         func_8011601C
/* 013500 8011DFF0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013504 8011DFF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013508 8011DFF8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01350C 8011DFFC 00001025 */  move        $v0, $zero
/* 013510 8011E000 03E00008 */  jr          $ra
/* 013514 8011E004 00000000 */   nop

glabel func_8011E008 # 119
/* 013518 8011E008 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01351C 8011E00C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013520 8011E010 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013524 8011E014 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013528 8011E018 0C04582D */  jal         func_801160B4
/* 01352C 8011E01C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013530 8011E020 00027880 */  sll         $t7, $v0, 2
/* 013534 8011E024 3C05800F */  lui         $a1, %hi(D_800EF6A0)
/* 013538 8011E028 00AF2821 */  addu        $a1, $a1, $t7
/* 01353C 8011E02C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013540 8011E030 0C045813 */  jal         func_8011604C
/* 013544 8011E034 8CA5F6A0 */   lw         $a1, %lo(D_800EF6A0)($a1)
/* 013548 8011E038 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01354C 8011E03C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013550 8011E040 00001025 */  move        $v0, $zero
/* 013554 8011E044 03E00008 */  jr          $ra
/* 013558 8011E048 00000000 */   nop

glabel func_8011E04C # 120
/* 01355C 8011E04C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013560 8011E050 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013564 8011E054 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013568 8011E058 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01356C 8011E05C 0C0464EB */  jal         func_801193AC
/* 013570 8011E060 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013574 8011E064 44050000 */  mfc1        $a1, $f0
/* 013578 8011E068 0C045813 */  jal         func_8011604C
/* 01357C 8011E06C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013580 8011E070 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013584 8011E074 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013588 8011E078 00001025 */  move        $v0, $zero
/* 01358C 8011E07C 03E00008 */  jr          $ra
/* 013590 8011E080 00000000 */   nop

glabel func_8011E084 # 121
/* 013594 8011E084 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013598 8011E088 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01359C 8011E08C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0135A0 8011E090 3C05800F */  lui         $a1, %hi(D_800EF790)
/* 0135A4 8011E094 8CA5F790 */  lw          $a1, %lo(D_800EF790)($a1)
/* 0135A8 8011E098 0C045807 */  jal         func_8011601C
/* 0135AC 8011E09C 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0135B0 8011E0A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0135B4 8011E0A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0135B8 8011E0A8 00001025 */  move        $v0, $zero
/* 0135BC 8011E0AC 03E00008 */  jr          $ra
/* 0135C0 8011E0B0 00000000 */   nop

glabel func_8011E0B4 # 122
/* 0135C4 8011E0B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0135C8 8011E0B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0135CC 8011E0BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0135D0 8011E0C0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0135D4 8011E0C4 0C04582D */  jal         func_801160B4
/* 0135D8 8011E0C8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0135DC 8011E0CC 3C03800F */  lui         $v1, %hi(D_800EF6A0)
/* 0135E0 8011E0D0 2463F6A0 */  addiu       $v1, $v1, %lo(D_800EF6A0)
/* 0135E4 8011E0D4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0135E8 8011E0D8 AC6200F0 */  sw          $v0, 0xf0($v1)
/* 0135EC 8011E0DC 0C045807 */  jal         func_8011601C
/* 0135F0 8011E0E0 00402825 */   move       $a1, $v0
/* 0135F4 8011E0E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0135F8 8011E0E8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0135FC 8011E0EC 00001025 */  move        $v0, $zero
/* 013600 8011E0F0 03E00008 */  jr          $ra
/* 013604 8011E0F4 00000000 */   nop

glabel func_8011E0F8 # 123
/* 013608 8011E0F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01360C 8011E0FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013610 8011E100 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013614 8011E104 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013618 8011E108 0C04582D */  jal         func_801160B4
/* 01361C 8011E10C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013620 8011E110 0C044B16 */  jal         func_80112C58
/* 013624 8011E114 00402025 */   move       $a0, $v0
/* 013628 8011E118 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01362C 8011E11C 0C045807 */  jal         func_8011601C
/* 013630 8011E120 00402825 */   move       $a1, $v0
/* 013634 8011E124 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013638 8011E128 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01363C 8011E12C 00001025 */  move        $v0, $zero
/* 013640 8011E130 03E00008 */  jr          $ra
/* 013644 8011E134 00000000 */   nop

glabel func_8011E138 # 124
/* 013648 8011E138 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01364C 8011E13C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013650 8011E140 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013654 8011E144 3C05800F */  lui         $a1, %hi(D_800EF718)
/* 013658 8011E148 8CA5F718 */  lw          $a1, %lo(D_800EF718)($a1)
/* 01365C 8011E14C 0C045807 */  jal         func_8011601C
/* 013660 8011E150 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013664 8011E154 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013668 8011E158 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01366C 8011E15C 00001025 */  move        $v0, $zero
/* 013670 8011E160 03E00008 */  jr          $ra
/* 013674 8011E164 00000000 */   nop

glabel func_8011E168 # 125
/* 013678 8011E168 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01367C 8011E16C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013680 8011E170 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013684 8011E174 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013688 8011E178 0C044A09 */  jal         func_80112824
/* 01368C 8011E17C AFAF001C */   sw         $t7, 0x1c($sp)
/* 013690 8011E180 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013694 8011E184 0C045807 */  jal         func_8011601C
/* 013698 8011E188 00402825 */   move       $a1, $v0
/* 01369C 8011E18C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0136A0 8011E190 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0136A4 8011E194 00001025 */  move        $v0, $zero
/* 0136A8 8011E198 03E00008 */  jr          $ra
/* 0136AC 8011E19C 00000000 */   nop

glabel func_8011E1A0 # 126
/* 0136B0 8011E1A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0136B4 8011E1A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0136B8 8011E1A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 0136BC 8011E1AC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0136C0 8011E1B0 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0136C4 8011E1B4 0C04582D */  jal         func_801160B4
/* 0136C8 8011E1B8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0136CC 8011E1BC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0136D0 8011E1C0 0C0462E3 */  jal         func_80118B8C
/* 0136D4 8011E1C4 00402825 */   move       $a1, $v0
/* 0136D8 8011E1C8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0136DC 8011E1CC 0C045807 */  jal         func_8011601C
/* 0136E0 8011E1D0 00002825 */   move       $a1, $zero
/* 0136E4 8011E1D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0136E8 8011E1D8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0136EC 8011E1DC 00001025 */  move        $v0, $zero
/* 0136F0 8011E1E0 03E00008 */  jr          $ra
/* 0136F4 8011E1E4 00000000 */   nop

glabel func_8011E1E8 # 127
/* 0136F8 8011E1E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0136FC 8011E1EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013700 8011E1F0 8C820054 */  lw          $v0, 0x54($a0)
/* 013704 8011E1F4 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 013708 8011E1F8 0C045807 */  jal         func_8011601C
/* 01370C 8011E1FC 8C450214 */   lw         $a1, 0x214($v0)
/* 013710 8011E200 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013714 8011E204 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013718 8011E208 00001025 */  move        $v0, $zero
/* 01371C 8011E20C 03E00008 */  jr          $ra
/* 013720 8011E210 00000000 */   nop

glabel func_8011E214 # 128
/* 013724 8011E214 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013728 8011E218 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01372C 8011E21C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013730 8011E220 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013734 8011E224 0C045EB7 */  jal         func_80117ADC
/* 013738 8011E228 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01373C 8011E22C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013740 8011E230 0C045807 */  jal         func_8011601C
/* 013744 8011E234 00402825 */   move       $a1, $v0
/* 013748 8011E238 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01374C 8011E23C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013750 8011E240 00001025 */  move        $v0, $zero
/* 013754 8011E244 03E00008 */  jr          $ra
/* 013758 8011E248 00000000 */   nop

glabel func_8011E24C # 129
/* 01375C 8011E24C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013760 8011E250 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013764 8011E254 948F0036 */  lhu         $t7, 0x36($a0)
/* 013768 8011E258 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01376C 8011E25C 24050001 */  addiu       $a1, $zero, 0x1
/* 013770 8011E260 31F80002 */  andi        $t8, $t7, 0x2
/* 013774 8011E264 13000003 */  beq         $t8, $zero, .L8011E274
/* 013778 8011E268 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 01377C 8011E26C 10000001 */  b           .L8011E274
/* 013780 8011E270 00002825 */   move       $a1, $zero
.L8011E274:
/* 013784 8011E274 0C045807 */  jal         func_8011601C
/* 013788 8011E278 00C02025 */   move       $a0, $a2
/* 01378C 8011E27C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013790 8011E280 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013794 8011E284 00001025 */  move        $v0, $zero
/* 013798 8011E288 03E00008 */  jr          $ra
/* 01379C 8011E28C 00000000 */   nop

glabel func_8011E290 # 130
/* 0137A0 8011E290 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0137A4 8011E294 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0137A8 8011E298 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0137AC 8011E29C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0137B0 8011E2A0 0C04582D */  jal         func_801160B4
/* 0137B4 8011E2A4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0137B8 8011E2A8 0C045EC5 */  jal         func_80117B14
/* 0137BC 8011E2AC 00402025 */   move       $a0, $v0
/* 0137C0 8011E2B0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0137C4 8011E2B4 0C045807 */  jal         func_8011601C
/* 0137C8 8011E2B8 00002825 */   move       $a1, $zero
/* 0137CC 8011E2BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0137D0 8011E2C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0137D4 8011E2C4 24020001 */  addiu       $v0, $zero, 0x1
/* 0137D8 8011E2C8 03E00008 */  jr          $ra
/* 0137DC 8011E2CC 00000000 */   nop

glabel func_8011E2D0 # 131
/* 0137E0 8011E2D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0137E4 8011E2D4 3C0F800B */  lui         $t7, %hi(D_800AE504)
/* 0137E8 8011E2D8 8DEFE504 */  lw          $t7, %lo(D_800AE504)($t7)
/* 0137EC 8011E2DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0137F0 8011E2E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0137F4 8011E2E4 24010003 */  addiu       $at, $zero, 0x3
/* 0137F8 8011E2E8 15E10006 */  bne         $t7, $at, .L8011E304
/* 0137FC 8011E2EC 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 013800 8011E2F0 00C02025 */  move        $a0, $a2
/* 013804 8011E2F4 0C045807 */  jal         func_8011601C
/* 013808 8011E2F8 00002825 */   move       $a1, $zero
/* 01380C 8011E2FC 10000007 */  b           .L8011E31C
/* 013810 8011E300 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011E304:
/* 013814 8011E304 0C045EC8 */  jal         func_80117B20
/* 013818 8011E308 AFA6001C */   sw         $a2, 0x1c($sp)
/* 01381C 8011E30C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013820 8011E310 0C045807 */  jal         func_8011601C
/* 013824 8011E314 00402825 */   move       $a1, $v0
/* 013828 8011E318 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011E31C:
/* 01382C 8011E31C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013830 8011E320 00001025 */  move        $v0, $zero
/* 013834 8011E324 03E00008 */  jr          $ra
/* 013838 8011E328 00000000 */   nop

glabel func_8011E32C # 132
/* 01383C 8011E32C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013840 8011E330 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013844 8011E334 AFA40020 */  sw          $a0, 0x20($sp)
/* 013848 8011E338 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01384C 8011E33C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013850 8011E340 0C04582D */  jal         func_801160B4
/* 013854 8011E344 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013858 8011E348 8FA40020 */  lw          $a0, 0x20($sp)
/* 01385C 8011E34C 0C045ECC */  jal         func_80117B30
/* 013860 8011E350 00402825 */   move       $a1, $v0
/* 013864 8011E354 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013868 8011E358 0C045807 */  jal         func_8011601C
/* 01386C 8011E35C 00002825 */   move       $a1, $zero
/* 013870 8011E360 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013874 8011E364 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013878 8011E368 00001025 */  move        $v0, $zero
/* 01387C 8011E36C 03E00008 */  jr          $ra
/* 013880 8011E370 00000000 */   nop

glabel func_8011E374 # 133
/* 013884 8011E374 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013888 8011E378 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01388C 8011E37C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013890 8011E380 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013894 8011E384 0C045ED9 */  jal         func_80117B64
/* 013898 8011E388 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01389C 8011E38C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0138A0 8011E390 0C045807 */  jal         func_8011601C
/* 0138A4 8011E394 00402825 */   move       $a1, $v0
/* 0138A8 8011E398 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0138AC 8011E39C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0138B0 8011E3A0 00001025 */  move        $v0, $zero
/* 0138B4 8011E3A4 03E00008 */  jr          $ra
/* 0138B8 8011E3A8 00000000 */   nop

glabel func_8011E3AC # 134
/* 0138BC 8011E3AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0138C0 8011E3B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0138C4 8011E3B4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0138C8 8011E3B8 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 0138CC 8011E3BC 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 0138D0 8011E3C0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0138D4 8011E3C4 0C0448C8 */  jal         func_80112320
/* 0138D8 8011E3C8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0138DC 8011E3CC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0138E0 8011E3D0 0C045807 */  jal         func_8011601C
/* 0138E4 8011E3D4 00402825 */   move       $a1, $v0
/* 0138E8 8011E3D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0138EC 8011E3DC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0138F0 8011E3E0 00001025 */  move        $v0, $zero
/* 0138F4 8011E3E4 03E00008 */  jr          $ra
/* 0138F8 8011E3E8 00000000 */   nop

glabel func_8011E3EC # 135
/* 0138FC 8011E3EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013900 8011E3F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013904 8011E3F4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013908 8011E3F8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01390C 8011E3FC 0C04582D */  jal         func_801160B4
/* 013910 8011E400 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013914 8011E404 0C008BDD */  jal         func_80022F74
/* 013918 8011E408 00402025 */   move       $a0, $v0
/* 01391C 8011E40C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013920 8011E410 0C045807 */  jal         func_8011601C
/* 013924 8011E414 00002825 */   move       $a1, $zero
/* 013928 8011E418 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01392C 8011E41C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013930 8011E420 00001025 */  move        $v0, $zero
/* 013934 8011E424 03E00008 */  jr          $ra
/* 013938 8011E428 00000000 */   nop

glabel func_8011E42C # 136
/* 01393C 8011E42C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013940 8011E430 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013944 8011E434 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013948 8011E438 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01394C 8011E43C 0C04582D */  jal         func_801160B4
/* 013950 8011E440 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013954 8011E444 0C008BEE */  jal         func_80022FB8
/* 013958 8011E448 00402025 */   move       $a0, $v0
/* 01395C 8011E44C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013960 8011E450 0C045807 */  jal         func_8011601C
/* 013964 8011E454 00002825 */   move       $a1, $zero
/* 013968 8011E458 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01396C 8011E45C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013970 8011E460 00001025 */  move        $v0, $zero
/* 013974 8011E464 03E00008 */  jr          $ra
/* 013978 8011E468 00000000 */   nop

glabel func_8011E46C # 137
/* 01397C 8011E46C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013980 8011E470 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013984 8011E474 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013988 8011E478 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01398C 8011E47C 0C04582D */  jal         func_801160B4
/* 013990 8011E480 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013994 8011E484 0C008BF1 */  jal         func_80022FC4
/* 013998 8011E488 00402025 */   move       $a0, $v0
/* 01399C 8011E48C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0139A0 8011E490 0C045807 */  jal         func_8011601C
/* 0139A4 8011E494 00002825 */   move       $a1, $zero
/* 0139A8 8011E498 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0139AC 8011E49C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0139B0 8011E4A0 00001025 */  move        $v0, $zero
/* 0139B4 8011E4A4 03E00008 */  jr          $ra
/* 0139B8 8011E4A8 00000000 */   nop

glabel func_8011E4AC # 138
/* 0139BC 8011E4AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0139C0 8011E4B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0139C4 8011E4B4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0139C8 8011E4B8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0139CC 8011E4BC 0C04582D */  jal         func_801160B4
/* 0139D0 8011E4C0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0139D4 8011E4C4 0C008737 */  jal         func_80021CDC
/* 0139D8 8011E4C8 00402025 */   move       $a0, $v0
/* 0139DC 8011E4CC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0139E0 8011E4D0 0C045807 */  jal         func_8011601C
/* 0139E4 8011E4D4 00002825 */   move       $a1, $zero
/* 0139E8 8011E4D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0139EC 8011E4DC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0139F0 8011E4E0 00001025 */  move        $v0, $zero
/* 0139F4 8011E4E4 03E00008 */  jr          $ra
/* 0139F8 8011E4E8 00000000 */   nop

glabel func_8011E4EC # 139
/* 0139FC 8011E4EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013A00 8011E4F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013A04 8011E4F4 AFA40020 */  sw          $a0, 0x20($sp)
/* 013A08 8011E4F8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013A0C 8011E4FC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013A10 8011E500 0C04582D */  jal         func_801160B4
/* 013A14 8011E504 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013A18 8011E508 8FB80020 */  lw          $t8, 0x20($sp)
/* 013A1C 8011E50C AFA20018 */  sw          $v0, 0x18($sp)
/* 013A20 8011E510 8F190054 */  lw          $t9, 0x54($t8)
/* 013A24 8011E514 0C001FA3 */  jal         func_80007E8C
/* 013A28 8011E518 8F240190 */   lw         $a0, 0x190($t9)
/* 013A2C 8011E51C 10400014 */  beq         $v0, $zero, .L8011E570
/* 013A30 8011E520 8FA80018 */   lw         $t0, 0x18($sp)
/* 013A34 8011E524 11000009 */  beq         $t0, $zero, .L8011E54C
/* 013A38 8011E528 8C430054 */   lw         $v1, 0x54($v0)
/* 013A3C 8011E52C 8C690000 */  lw          $t1, 0x0($v1)
/* 013A40 8011E530 3C014000 */  lui         $at, 0x4000
/* 013A44 8011E534 24040004 */  addiu       $a0, $zero, 0x4
/* 013A48 8011E538 01215025 */  or          $t2, $t1, $at
/* 013A4C 8011E53C 0C008737 */  jal         func_80021CDC
/* 013A50 8011E540 AC6A0000 */   sw         $t2, 0x0($v1)
/* 013A54 8011E544 1000000D */  b           .L8011E57C
/* 013A58 8011E548 8FA4001C */   lw         $a0, 0x1c($sp)
.L8011E54C:
/* 013A5C 8011E54C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 013A60 8011E550 3C01BFFF */  lui         $at, 0xbfff
/* 013A64 8011E554 3421FFFF */  ori         $at, $at, 0xffff
/* 013A68 8011E558 01616024 */  and         $t4, $t3, $at
/* 013A6C 8011E55C AC6C0000 */  sw          $t4, 0x0($v1)
/* 013A70 8011E560 0C008737 */  jal         func_80021CDC
/* 013A74 8011E564 00002025 */   move       $a0, $zero
/* 013A78 8011E568 10000004 */  b           .L8011E57C
/* 013A7C 8011E56C 8FA4001C */   lw         $a0, 0x1c($sp)
.L8011E570:
/* 013A80 8011E570 0C008737 */  jal         func_80021CDC
/* 013A84 8011E574 00002025 */   move       $a0, $zero
/* 013A88 8011E578 8FA4001C */  lw          $a0, 0x1c($sp)
.L8011E57C:
/* 013A8C 8011E57C 0C045807 */  jal         func_8011601C
/* 013A90 8011E580 00002825 */   move       $a1, $zero
/* 013A94 8011E584 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013A98 8011E588 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013A9C 8011E58C 00001025 */  move        $v0, $zero
/* 013AA0 8011E590 03E00008 */  jr          $ra
/* 013AA4 8011E594 00000000 */   nop

glabel func_8011E598 # 140
/* 013AA8 8011E598 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013AAC 8011E59C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013AB0 8011E5A0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013AB4 8011E5A4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013AB8 8011E5A8 0C04582D */  jal         func_801160B4
/* 013ABC 8011E5AC AFA40024 */   sw         $a0, 0x24($sp)
/* 013AC0 8011E5B0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 013AC4 8011E5B4 0C04582D */  jal         func_801160B4
/* 013AC8 8011E5B8 8FA40024 */   lw         $a0, 0x24($sp)
/* 013ACC 8011E5BC 00402025 */  move        $a0, $v0
/* 013AD0 8011E5C0 0C04644D */  jal         func_80119134
/* 013AD4 8011E5C4 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013AD8 8011E5C8 10400003 */  beq         $v0, $zero, .L8011E5D8
/* 013ADC 8011E5CC 00402825 */   move       $a1, $v0
/* 013AE0 8011E5D0 10000002 */  b           .L8011E5DC
/* 013AE4 8011E5D4 24040002 */   addiu      $a0, $zero, 0x2
.L8011E5D8:
/* 013AE8 8011E5D8 00002025 */  move        $a0, $zero
.L8011E5DC:
/* 013AEC 8011E5DC 0C008737 */  jal         func_80021CDC
/* 013AF0 8011E5E0 AFA50018 */   sw         $a1, 0x18($sp)
/* 013AF4 8011E5E4 8FA50018 */  lw          $a1, 0x18($sp)
/* 013AF8 8011E5E8 0C045807 */  jal         func_8011601C
/* 013AFC 8011E5EC 8FA40024 */   lw         $a0, 0x24($sp)
/* 013B00 8011E5F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B04 8011E5F4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013B08 8011E5F8 00001025 */  move        $v0, $zero
/* 013B0C 8011E5FC 03E00008 */  jr          $ra
/* 013B10 8011E600 00000000 */   nop

glabel func_8011E604 # 141
/* 013B14 8011E604 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013B18 8011E608 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013B1C 8011E60C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013B20 8011E610 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013B24 8011E614 0C007C18 */  jal         func_8001F060
/* 013B28 8011E618 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013B2C 8011E61C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013B30 8011E620 0C045807 */  jal         func_8011601C
/* 013B34 8011E624 00402825 */   move       $a1, $v0
/* 013B38 8011E628 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B3C 8011E62C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013B40 8011E630 00001025 */  move        $v0, $zero
/* 013B44 8011E634 03E00008 */  jr          $ra
/* 013B48 8011E638 00000000 */   nop

glabel func_8011E63C # 142
/* 013B4C 8011E63C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013B50 8011E640 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013B54 8011E644 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013B58 8011E648 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013B5C 8011E64C 0C007C1B */  jal         func_8001F06C
/* 013B60 8011E650 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013B64 8011E654 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013B68 8011E658 0C045807 */  jal         func_8011601C
/* 013B6C 8011E65C 00402825 */   move       $a1, $v0
/* 013B70 8011E660 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B74 8011E664 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013B78 8011E668 00001025 */  move        $v0, $zero
/* 013B7C 8011E66C 03E00008 */  jr          $ra
/* 013B80 8011E670 00000000 */   nop

glabel func_8011E674 # 143
/* 013B84 8011E674 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013B88 8011E678 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013B8C 8011E67C 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 013B90 8011E680 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013B94 8011E684 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 013B98 8011E688 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013B9C 8011E68C 0C045807 */  jal         func_8011601C
/* 013BA0 8011E690 8DE50038 */   lw         $a1, 0x38($t7)
/* 013BA4 8011E694 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013BA8 8011E698 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013BAC 8011E69C 00001025 */  move        $v0, $zero
/* 013BB0 8011E6A0 03E00008 */  jr          $ra
/* 013BB4 8011E6A4 00000000 */   nop

glabel func_8011E6A8 # 144
/* 013BB8 8011E6A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013BBC 8011E6AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013BC0 8011E6B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013BC4 8011E6B4 00803025 */  move        $a2, $a0
/* 013BC8 8011E6B8 8CC50038 */  lw          $a1, 0x38($a2)
/* 013BCC 8011E6BC 0C045807 */  jal         func_8011601C
/* 013BD0 8011E6C0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013BD4 8011E6C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013BD8 8011E6C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013BDC 8011E6CC 00001025 */  move        $v0, $zero
/* 013BE0 8011E6D0 03E00008 */  jr          $ra
/* 013BE4 8011E6D4 00000000 */   nop

glabel func_8011E6D8 # 145
/* 013BE8 8011E6D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013BEC 8011E6DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013BF0 8011E6E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013BF4 8011E6E4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013BF8 8011E6E8 0C04582D */  jal         func_801160B4
/* 013BFC 8011E6EC AFA4001C */   sw         $a0, 0x1c($sp)
/* 013C00 8011E6F0 0C045EE2 */  jal         func_80117B88
/* 013C04 8011E6F4 00402025 */   move       $a0, $v0
/* 013C08 8011E6F8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013C0C 8011E6FC 0C045807 */  jal         func_8011601C
/* 013C10 8011E700 00402825 */   move       $a1, $v0
/* 013C14 8011E704 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013C18 8011E708 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013C1C 8011E70C 00001025 */  move        $v0, $zero
/* 013C20 8011E710 03E00008 */  jr          $ra
/* 013C24 8011E714 00000000 */   nop

glabel func_8011E718 # 146
/* 013C28 8011E718 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 013C2C 8011E71C AFBF001C */  sw          $ra, 0x1c($sp)
/* 013C30 8011E720 AFB00018 */  sw          $s0, 0x18($sp)
/* 013C34 8011E724 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013C38 8011E728 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 013C3C 8011E72C 0C04582D */  jal         func_801160B4
/* 013C40 8011E730 02002025 */   move       $a0, $s0
/* 013C44 8011E734 AFA20020 */  sw          $v0, 0x20($sp)
/* 013C48 8011E738 0C04582D */  jal         func_801160B4
/* 013C4C 8011E73C 02002025 */   move       $a0, $s0
/* 013C50 8011E740 AFA20024 */  sw          $v0, 0x24($sp)
/* 013C54 8011E744 0C04582D */  jal         func_801160B4
/* 013C58 8011E748 02002025 */   move       $a0, $s0
/* 013C5C 8011E74C 00402025 */  move        $a0, $v0
/* 013C60 8011E750 8FA50024 */  lw          $a1, 0x24($sp)
/* 013C64 8011E754 0C045EE9 */  jal         func_80117BA4
/* 013C68 8011E758 8FA60020 */   lw         $a2, 0x20($sp)
/* 013C6C 8011E75C 44050000 */  mfc1        $a1, $f0
/* 013C70 8011E760 0C045813 */  jal         func_8011604C
/* 013C74 8011E764 02002025 */   move       $a0, $s0
/* 013C78 8011E768 8FBF001C */  lw          $ra, 0x1c($sp)
/* 013C7C 8011E76C 8FB00018 */  lw          $s0, 0x18($sp)
/* 013C80 8011E770 27BD0030 */  addiu       $sp, $sp, 0x30
/* 013C84 8011E774 03E00008 */  jr          $ra
/* 013C88 8011E778 00001025 */   move       $v0, $zero

glabel func_8011E77C # 147
/* 013C8C 8011E77C 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 013C90 8011E780 AFBF0024 */  sw          $ra, 0x24($sp)
/* 013C94 8011E784 AFB00020 */  sw          $s0, 0x20($sp)
/* 013C98 8011E788 AFA40058 */  sw          $a0, 0x58($sp)
/* 013C9C 8011E78C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013CA0 8011E790 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 013CA4 8011E794 0C045837 */  jal         func_801160DC
/* 013CA8 8011E798 02002025 */   move       $a0, $s0
/* 013CAC 8011E79C E7A0003C */  swc1        $f0, 0x3c($sp)
/* 013CB0 8011E7A0 0C04582D */  jal         func_801160B4
/* 013CB4 8011E7A4 02002025 */   move       $a0, $s0
/* 013CB8 8011E7A8 AFA20040 */  sw          $v0, 0x40($sp)
/* 013CBC 8011E7AC 0C04582D */  jal         func_801160B4
/* 013CC0 8011E7B0 02002025 */   move       $a0, $s0
/* 013CC4 8011E7B4 AFA20044 */  sw          $v0, 0x44($sp)
/* 013CC8 8011E7B8 0C045837 */  jal         func_801160DC
/* 013CCC 8011E7BC 02002025 */   move       $a0, $s0
/* 013CD0 8011E7C0 E7A00048 */  swc1        $f0, 0x48($sp)
/* 013CD4 8011E7C4 0C045837 */  jal         func_801160DC
/* 013CD8 8011E7C8 02002025 */   move       $a0, $s0
/* 013CDC 8011E7CC E7A0004C */  swc1        $f0, 0x4c($sp)
/* 013CE0 8011E7D0 0C045837 */  jal         func_801160DC
/* 013CE4 8011E7D4 02002025 */   move       $a0, $s0
/* 013CE8 8011E7D8 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 013CEC 8011E7DC C7A60048 */  lwc1        $f6, 0x48($sp)
/* 013CF0 8011E7E0 C7A8003C */  lwc1        $f8, 0x3c($sp)
/* 013CF4 8011E7E4 E7A00030 */  swc1        $f0, 0x30($sp)
/* 013CF8 8011E7E8 8FA40058 */  lw          $a0, 0x58($sp)
/* 013CFC 8011E7EC 27A50030 */  addiu       $a1, $sp, 0x30
/* 013D00 8011E7F0 8FA60044 */  lw          $a2, 0x44($sp)
/* 013D04 8011E7F4 8FA70040 */  lw          $a3, 0x40($sp)
/* 013D08 8011E7F8 E7A40034 */  swc1        $f4, 0x34($sp)
/* 013D0C 8011E7FC E7A60038 */  swc1        $f6, 0x38($sp)
/* 013D10 8011E800 0C045F06 */  jal         func_80117C18
/* 013D14 8011E804 E7A80010 */   swc1       $f8, 0x10($sp)
/* 013D18 8011E808 02002025 */  move        $a0, $s0
/* 013D1C 8011E80C 0C045807 */  jal         func_8011601C
/* 013D20 8011E810 00402825 */   move       $a1, $v0
/* 013D24 8011E814 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013D28 8011E818 8FB00020 */  lw          $s0, 0x20($sp)
/* 013D2C 8011E81C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 013D30 8011E820 03E00008 */  jr          $ra
/* 013D34 8011E824 00001025 */   move       $v0, $zero

glabel func_8011E828 # 148
/* 013D38 8011E828 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 013D3C 8011E82C AFBF0024 */  sw          $ra, 0x24($sp)
/* 013D40 8011E830 AFB00020 */  sw          $s0, 0x20($sp)
/* 013D44 8011E834 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013D48 8011E838 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 013D4C 8011E83C 0C04582D */  jal         func_801160B4
/* 013D50 8011E840 02002025 */   move       $a0, $s0
/* 013D54 8011E844 AFA2002C */  sw          $v0, 0x2c($sp)
/* 013D58 8011E848 0C04582D */  jal         func_801160B4
/* 013D5C 8011E84C 02002025 */   move       $a0, $s0
/* 013D60 8011E850 AFA20030 */  sw          $v0, 0x30($sp)
/* 013D64 8011E854 0C045837 */  jal         func_801160DC
/* 013D68 8011E858 02002025 */   move       $a0, $s0
/* 013D6C 8011E85C E7A00034 */  swc1        $f0, 0x34($sp)
/* 013D70 8011E860 0C04582D */  jal         func_801160B4
/* 013D74 8011E864 02002025 */   move       $a0, $s0
/* 013D78 8011E868 AFA20038 */  sw          $v0, 0x38($sp)
/* 013D7C 8011E86C 0C04582D */  jal         func_801160B4
/* 013D80 8011E870 02002025 */   move       $a0, $s0
/* 013D84 8011E874 AFA2003C */  sw          $v0, 0x3c($sp)
/* 013D88 8011E878 0C045837 */  jal         func_801160DC
/* 013D8C 8011E87C 02002025 */   move       $a0, $s0
/* 013D90 8011E880 E7A00048 */  swc1        $f0, 0x48($sp)
/* 013D94 8011E884 0C045837 */  jal         func_801160DC
/* 013D98 8011E888 02002025 */   move       $a0, $s0
/* 013D9C 8011E88C E7A00044 */  swc1        $f0, 0x44($sp)
/* 013DA0 8011E890 0C045837 */  jal         func_801160DC
/* 013DA4 8011E894 02002025 */   move       $a0, $s0
/* 013DA8 8011E898 8FAF0030 */  lw          $t7, 0x30($sp)
/* 013DAC 8011E89C 8FB8002C */  lw          $t8, 0x2c($sp)
/* 013DB0 8011E8A0 E7A00040 */  swc1        $f0, 0x40($sp)
/* 013DB4 8011E8A4 27A40040 */  addiu       $a0, $sp, 0x40
/* 013DB8 8011E8A8 8FA50034 */  lw          $a1, 0x34($sp)
/* 013DBC 8011E8AC 8FA6003C */  lw          $a2, 0x3c($sp)
/* 013DC0 8011E8B0 8FA70038 */  lw          $a3, 0x38($sp)
/* 013DC4 8011E8B4 AFAF0010 */  sw          $t7, 0x10($sp)
/* 013DC8 8011E8B8 0C045F1D */  jal         func_80117C74
/* 013DCC 8011E8BC AFB80014 */   sw         $t8, 0x14($sp)
/* 013DD0 8011E8C0 02002025 */  move        $a0, $s0
/* 013DD4 8011E8C4 0C045807 */  jal         func_8011601C
/* 013DD8 8011E8C8 00402825 */   move       $a1, $v0
/* 013DDC 8011E8CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013DE0 8011E8D0 8FB00020 */  lw          $s0, 0x20($sp)
/* 013DE4 8011E8D4 27BD0050 */  addiu       $sp, $sp, 0x50
/* 013DE8 8011E8D8 03E00008 */  jr          $ra
/* 013DEC 8011E8DC 00001025 */   move       $v0, $zero

glabel func_8011E8E0 # 149
/* 013DF0 8011E8E0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 013DF4 8011E8E4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 013DF8 8011E8E8 AFB00020 */  sw          $s0, 0x20($sp)
/* 013DFC 8011E8EC AFA40040 */  sw          $a0, 0x40($sp)
/* 013E00 8011E8F0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013E04 8011E8F4 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 013E08 8011E8F8 0C045837 */  jal         func_801160DC
/* 013E0C 8011E8FC 02002025 */   move       $a0, $s0
/* 013E10 8011E900 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 013E14 8011E904 0C045837 */  jal         func_801160DC
/* 013E18 8011E908 02002025 */   move       $a0, $s0
/* 013E1C 8011E90C E7A00030 */  swc1        $f0, 0x30($sp)
/* 013E20 8011E910 0C04582D */  jal         func_801160B4
/* 013E24 8011E914 02002025 */   move       $a0, $s0
/* 013E28 8011E918 AFA20034 */  sw          $v0, 0x34($sp)
/* 013E2C 8011E91C 0C04582D */  jal         func_801160B4
/* 013E30 8011E920 02002025 */   move       $a0, $s0
/* 013E34 8011E924 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 013E38 8011E928 8FA40040 */  lw          $a0, 0x40($sp)
/* 013E3C 8011E92C 00402825 */  move        $a1, $v0
/* 013E40 8011E930 8FA60034 */  lw          $a2, 0x34($sp)
/* 013E44 8011E934 8FA70030 */  lw          $a3, 0x30($sp)
/* 013E48 8011E938 0C045F3B */  jal         func_80117CEC
/* 013E4C 8011E93C E7A40010 */   swc1       $f4, 0x10($sp)
/* 013E50 8011E940 02002025 */  move        $a0, $s0
/* 013E54 8011E944 0C045807 */  jal         func_8011601C
/* 013E58 8011E948 00402825 */   move       $a1, $v0
/* 013E5C 8011E94C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013E60 8011E950 8FB00020 */  lw          $s0, 0x20($sp)
/* 013E64 8011E954 27BD0040 */  addiu       $sp, $sp, 0x40
/* 013E68 8011E958 03E00008 */  jr          $ra
/* 013E6C 8011E95C 00001025 */   move       $v0, $zero

glabel func_8011E960 # 150
/* 013E70 8011E960 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 013E74 8011E964 AFBF0024 */  sw          $ra, 0x24($sp)
/* 013E78 8011E968 AFB00020 */  sw          $s0, 0x20($sp)
/* 013E7C 8011E96C AFA40058 */  sw          $a0, 0x58($sp)
/* 013E80 8011E970 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013E84 8011E974 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 013E88 8011E978 0C045837 */  jal         func_801160DC
/* 013E8C 8011E97C 02002025 */   move       $a0, $s0
/* 013E90 8011E980 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 013E94 8011E984 0C04582D */  jal         func_801160B4
/* 013E98 8011E988 02002025 */   move       $a0, $s0
/* 013E9C 8011E98C AFA20040 */  sw          $v0, 0x40($sp)
/* 013EA0 8011E990 0C04582D */  jal         func_801160B4
/* 013EA4 8011E994 02002025 */   move       $a0, $s0
/* 013EA8 8011E998 AFA20044 */  sw          $v0, 0x44($sp)
/* 013EAC 8011E99C 0C045837 */  jal         func_801160DC
/* 013EB0 8011E9A0 02002025 */   move       $a0, $s0
/* 013EB4 8011E9A4 E7A00048 */  swc1        $f0, 0x48($sp)
/* 013EB8 8011E9A8 0C045837 */  jal         func_801160DC
/* 013EBC 8011E9AC 02002025 */   move       $a0, $s0
/* 013EC0 8011E9B0 E7A0004C */  swc1        $f0, 0x4c($sp)
/* 013EC4 8011E9B4 0C045837 */  jal         func_801160DC
/* 013EC8 8011E9B8 02002025 */   move       $a0, $s0
/* 013ECC 8011E9BC C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 013ED0 8011E9C0 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 013ED4 8011E9C4 C7A8003C */  lwc1        $f8, 0x3c($sp)
/* 013ED8 8011E9C8 E7A00030 */  swc1        $f0, 0x30($sp)
/* 013EDC 8011E9CC 8FA40058 */  lw          $a0, 0x58($sp)
/* 013EE0 8011E9D0 27A50030 */  addiu       $a1, $sp, 0x30
/* 013EE4 8011E9D4 8FA60044 */  lw          $a2, 0x44($sp)
/* 013EE8 8011E9D8 8FA70040 */  lw          $a3, 0x40($sp)
/* 013EEC 8011E9DC E7A40034 */  swc1        $f4, 0x34($sp)
/* 013EF0 8011E9E0 E7A60038 */  swc1        $f6, 0x38($sp)
/* 013EF4 8011E9E4 0C045F53 */  jal         func_80117D4C
/* 013EF8 8011E9E8 E7A80010 */   swc1       $f8, 0x10($sp)
/* 013EFC 8011E9EC 02002025 */  move        $a0, $s0
/* 013F00 8011E9F0 0C045807 */  jal         func_8011601C
/* 013F04 8011E9F4 00402825 */   move       $a1, $v0
/* 013F08 8011E9F8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013F0C 8011E9FC 8FB00020 */  lw          $s0, 0x20($sp)
/* 013F10 8011EA00 27BD0058 */  addiu       $sp, $sp, 0x58
/* 013F14 8011EA04 03E00008 */  jr          $ra
/* 013F18 8011EA08 00001025 */   move       $v0, $zero

glabel func_8011EA0C # 151
/* 013F1C 8011EA0C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013F20 8011EA10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013F24 8011EA14 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013F28 8011EA18 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013F2C 8011EA1C 0C045837 */  jal         func_801160DC
/* 013F30 8011EA20 AFA40024 */   sw         $a0, 0x24($sp)
/* 013F34 8011EA24 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 013F38 8011EA28 0C04582D */  jal         func_801160B4
/* 013F3C 8011EA2C 8FA40024 */   lw         $a0, 0x24($sp)
/* 013F40 8011EA30 00402025 */  move        $a0, $v0
/* 013F44 8011EA34 0C045F6A */  jal         func_80117DA8
/* 013F48 8011EA38 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013F4C 8011EA3C 8FA40024 */  lw          $a0, 0x24($sp)
/* 013F50 8011EA40 0C045807 */  jal         func_8011601C
/* 013F54 8011EA44 00002825 */   move       $a1, $zero
/* 013F58 8011EA48 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013F5C 8011EA4C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013F60 8011EA50 00001025 */  move        $v0, $zero
/* 013F64 8011EA54 03E00008 */  jr          $ra
/* 013F68 8011EA58 00000000 */   nop

glabel func_8011EA5C # 152
/* 013F6C 8011EA5C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013F70 8011EA60 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013F74 8011EA64 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013F78 8011EA68 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013F7C 8011EA6C 0C04582D */  jal         func_801160B4
/* 013F80 8011EA70 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013F84 8011EA74 0C045F89 */  jal         func_80117E24
/* 013F88 8011EA78 00402025 */   move       $a0, $v0
/* 013F8C 8011EA7C 44050000 */  mfc1        $a1, $f0
/* 013F90 8011EA80 0C045813 */  jal         func_8011604C
/* 013F94 8011EA84 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013F98 8011EA88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013F9C 8011EA8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013FA0 8011EA90 00001025 */  move        $v0, $zero
/* 013FA4 8011EA94 03E00008 */  jr          $ra
/* 013FA8 8011EA98 00000000 */   nop

glabel func_8011EA9C # 153
/* 013FAC 8011EA9C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013FB0 8011EAA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013FB4 8011EAA4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013FB8 8011EAA8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013FBC 8011EAAC 0C04582D */  jal         func_801160B4
/* 013FC0 8011EAB0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013FC4 8011EAB4 0C045FA0 */  jal         func_80117E80
/* 013FC8 8011EAB8 00402025 */   move       $a0, $v0
/* 013FCC 8011EABC 44050000 */  mfc1        $a1, $f0
/* 013FD0 8011EAC0 0C045813 */  jal         func_8011604C
/* 013FD4 8011EAC4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013FD8 8011EAC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013FDC 8011EACC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013FE0 8011EAD0 00001025 */  move        $v0, $zero
/* 013FE4 8011EAD4 03E00008 */  jr          $ra
/* 013FE8 8011EAD8 00000000 */   nop

glabel func_8011EADC # 154
/* 013FEC 8011EADC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013FF0 8011EAE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013FF4 8011EAE4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013FF8 8011EAE8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013FFC 8011EAEC 0C04582D */  jal         func_801160B4
/* 014000 8011EAF0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014004 8011EAF4 0C045FBA */  jal         func_80117EE8
/* 014008 8011EAF8 00402025 */   move       $a0, $v0
/* 01400C 8011EAFC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014010 8011EB00 0C045807 */  jal         func_8011601C
/* 014014 8011EB04 00402825 */   move       $a1, $v0
/* 014018 8011EB08 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01401C 8011EB0C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014020 8011EB10 00001025 */  move        $v0, $zero
/* 014024 8011EB14 03E00008 */  jr          $ra
/* 014028 8011EB18 00000000 */   nop

glabel func_8011EB1C # 155
/* 01402C 8011EB1C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014030 8011EB20 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014034 8011EB24 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014038 8011EB28 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01403C 8011EB2C 0C04582D */  jal         func_801160B4
/* 014040 8011EB30 AFA40024 */   sw         $a0, 0x24($sp)
/* 014044 8011EB34 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014048 8011EB38 0C04582D */  jal         func_801160B4
/* 01404C 8011EB3C 8FA40024 */   lw         $a0, 0x24($sp)
/* 014050 8011EB40 00402025 */  move        $a0, $v0
/* 014054 8011EB44 0C045FF5 */  jal         func_80117FD4
/* 014058 8011EB48 8FA5001C */   lw         $a1, 0x1c($sp)
/* 01405C 8011EB4C 44050000 */  mfc1        $a1, $f0
/* 014060 8011EB50 0C045813 */  jal         func_8011604C
/* 014064 8011EB54 8FA40024 */   lw         $a0, 0x24($sp)
/* 014068 8011EB58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01406C 8011EB5C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014070 8011EB60 00001025 */  move        $v0, $zero
/* 014074 8011EB64 03E00008 */  jr          $ra
/* 014078 8011EB68 00000000 */   nop

glabel func_8011EB6C # 156
/* 01407C 8011EB6C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014080 8011EB70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014084 8011EB74 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014088 8011EB78 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01408C 8011EB7C 0C04582D */  jal         func_801160B4
/* 014090 8011EB80 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014094 8011EB84 0C04605B */  jal         func_8011816C
/* 014098 8011EB88 00402025 */   move       $a0, $v0
/* 01409C 8011EB8C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0140A0 8011EB90 0C045807 */  jal         func_8011601C
/* 0140A4 8011EB94 00402825 */   move       $a1, $v0
/* 0140A8 8011EB98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0140AC 8011EB9C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0140B0 8011EBA0 00001025 */  move        $v0, $zero
/* 0140B4 8011EBA4 03E00008 */  jr          $ra
/* 0140B8 8011EBA8 00000000 */   nop

glabel func_8011EBAC # 157
/* 0140BC 8011EBAC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0140C0 8011EBB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0140C4 8011EBB4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0140C8 8011EBB8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0140CC 8011EBBC 0C04582D */  jal         func_801160B4
/* 0140D0 8011EBC0 AFA40024 */   sw         $a0, 0x24($sp)
/* 0140D4 8011EBC4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0140D8 8011EBC8 0C04582D */  jal         func_801160B4
/* 0140DC 8011EBCC 8FA40024 */   lw         $a0, 0x24($sp)
/* 0140E0 8011EBD0 00402025 */  move        $a0, $v0
/* 0140E4 8011EBD4 0C046069 */  jal         func_801181A4
/* 0140E8 8011EBD8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0140EC 8011EBDC 44050000 */  mfc1        $a1, $f0
/* 0140F0 8011EBE0 0C045813 */  jal         func_8011604C
/* 0140F4 8011EBE4 8FA40024 */   lw         $a0, 0x24($sp)
/* 0140F8 8011EBE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0140FC 8011EBEC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014100 8011EBF0 00001025 */  move        $v0, $zero
/* 014104 8011EBF4 03E00008 */  jr          $ra
/* 014108 8011EBF8 00000000 */   nop

glabel func_8011EBFC # 158
/* 01410C 8011EBFC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014110 8011EC00 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014114 8011EC04 AFA40028 */  sw          $a0, 0x28($sp)
/* 014118 8011EC08 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01411C 8011EC0C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 014120 8011EC10 0C04582D */  jal         func_801160B4
/* 014124 8011EC14 AFA40024 */   sw         $a0, 0x24($sp)
/* 014128 8011EC18 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01412C 8011EC1C 0C04582D */  jal         func_801160B4
/* 014130 8011EC20 8FA40024 */   lw         $a0, 0x24($sp)
/* 014134 8011EC24 8FA40028 */  lw          $a0, 0x28($sp)
/* 014138 8011EC28 00402825 */  move        $a1, $v0
/* 01413C 8011EC2C 0C046084 */  jal         func_80118210
/* 014140 8011EC30 8FA6001C */   lw         $a2, 0x1c($sp)
/* 014144 8011EC34 44050000 */  mfc1        $a1, $f0
/* 014148 8011EC38 0C045813 */  jal         func_8011604C
/* 01414C 8011EC3C 8FA40024 */   lw         $a0, 0x24($sp)
/* 014150 8011EC40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014154 8011EC44 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014158 8011EC48 00001025 */  move        $v0, $zero
/* 01415C 8011EC4C 03E00008 */  jr          $ra
/* 014160 8011EC50 00000000 */   nop

glabel func_8011EC54 # 159
/* 014164 8011EC54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014168 8011EC58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01416C 8011EC5C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014170 8011EC60 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014174 8011EC64 0C04582D */  jal         func_801160B4
/* 014178 8011EC68 AFA40024 */   sw         $a0, 0x24($sp)
/* 01417C 8011EC6C AFA2001C */  sw          $v0, 0x1c($sp)
/* 014180 8011EC70 0C04582D */  jal         func_801160B4
/* 014184 8011EC74 8FA40024 */   lw         $a0, 0x24($sp)
/* 014188 8011EC78 00402025 */  move        $a0, $v0
/* 01418C 8011EC7C 0C0460F3 */  jal         func_801183CC
/* 014190 8011EC80 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014194 8011EC84 44050000 */  mfc1        $a1, $f0
/* 014198 8011EC88 0C045813 */  jal         func_8011604C
/* 01419C 8011EC8C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0141A0 8011EC90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0141A4 8011EC94 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0141A8 8011EC98 00001025 */  move        $v0, $zero
/* 0141AC 8011EC9C 03E00008 */  jr          $ra
/* 0141B0 8011ECA0 00000000 */   nop

glabel func_8011ECA4 # 160
/* 0141B4 8011ECA4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0141B8 8011ECA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0141BC 8011ECAC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0141C0 8011ECB0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0141C4 8011ECB4 0C04582D */  jal         func_801160B4
/* 0141C8 8011ECB8 AFA40024 */   sw         $a0, 0x24($sp)
/* 0141CC 8011ECBC AFA2001C */  sw          $v0, 0x1c($sp)
/* 0141D0 8011ECC0 0C04582D */  jal         func_801160B4
/* 0141D4 8011ECC4 8FA40024 */   lw         $a0, 0x24($sp)
/* 0141D8 8011ECC8 00402025 */  move        $a0, $v0
/* 0141DC 8011ECCC 0C04610A */  jal         func_80118428
/* 0141E0 8011ECD0 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0141E4 8011ECD4 44050000 */  mfc1        $a1, $f0
/* 0141E8 8011ECD8 0C045813 */  jal         func_8011604C
/* 0141EC 8011ECDC 8FA40024 */   lw         $a0, 0x24($sp)
/* 0141F0 8011ECE0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0141F4 8011ECE4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0141F8 8011ECE8 00001025 */  move        $v0, $zero
/* 0141FC 8011ECEC 03E00008 */  jr          $ra
/* 014200 8011ECF0 00000000 */   nop

glabel func_8011ECF4 # 161
/* 014204 8011ECF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014208 8011ECF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01420C 8011ECFC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014210 8011ED00 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014214 8011ED04 0C04582D */  jal         func_801160B4
/* 014218 8011ED08 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01421C 8011ED0C 0C046121 */  jal         func_80118484
/* 014220 8011ED10 00402025 */   move       $a0, $v0
/* 014224 8011ED14 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014228 8011ED18 0C045807 */  jal         func_8011601C
/* 01422C 8011ED1C 00402825 */   move       $a1, $v0
/* 014230 8011ED20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014234 8011ED24 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014238 8011ED28 00001025 */  move        $v0, $zero
/* 01423C 8011ED2C 03E00008 */  jr          $ra
/* 014240 8011ED30 00000000 */   nop

glabel func_8011ED34 # 162
/* 014244 8011ED34 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 014248 8011ED38 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01424C 8011ED3C AFB00018 */  sw          $s0, 0x18($sp)
/* 014250 8011ED40 AFA40030 */  sw          $a0, 0x30($sp)
/* 014254 8011ED44 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014258 8011ED48 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01425C 8011ED4C 0C04582D */  jal         func_801160B4
/* 014260 8011ED50 02002025 */   move       $a0, $s0
/* 014264 8011ED54 AFA20020 */  sw          $v0, 0x20($sp)
/* 014268 8011ED58 0C045837 */  jal         func_801160DC
/* 01426C 8011ED5C 02002025 */   move       $a0, $s0
/* 014270 8011ED60 E7A00024 */  swc1        $f0, 0x24($sp)
/* 014274 8011ED64 0C045837 */  jal         func_801160DC
/* 014278 8011ED68 02002025 */   move       $a0, $s0
/* 01427C 8011ED6C 44050000 */  mfc1        $a1, $f0
/* 014280 8011ED70 8FA40030 */  lw          $a0, 0x30($sp)
/* 014284 8011ED74 8FA60024 */  lw          $a2, 0x24($sp)
/* 014288 8011ED78 0C04600B */  jal         func_8011802C
/* 01428C 8011ED7C 8FA70020 */   lw         $a3, 0x20($sp)
/* 014290 8011ED80 44050000 */  mfc1        $a1, $f0
/* 014294 8011ED84 0C045813 */  jal         func_8011604C
/* 014298 8011ED88 02002025 */   move       $a0, $s0
/* 01429C 8011ED8C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0142A0 8011ED90 8FB00018 */  lw          $s0, 0x18($sp)
/* 0142A4 8011ED94 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0142A8 8011ED98 03E00008 */  jr          $ra
/* 0142AC 8011ED9C 00001025 */   move       $v0, $zero

glabel func_8011EDA0 # 163
/* 0142B0 8011EDA0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0142B4 8011EDA4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0142B8 8011EDA8 AFB00018 */  sw          $s0, 0x18($sp)
/* 0142BC 8011EDAC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0142C0 8011EDB0 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0142C4 8011EDB4 0C045837 */  jal         func_801160DC
/* 0142C8 8011EDB8 02002025 */   move       $a0, $s0
/* 0142CC 8011EDBC E7A00020 */  swc1        $f0, 0x20($sp)
/* 0142D0 8011EDC0 0C045837 */  jal         func_801160DC
/* 0142D4 8011EDC4 02002025 */   move       $a0, $s0
/* 0142D8 8011EDC8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 0142DC 8011EDCC 0C045837 */  jal         func_801160DC
/* 0142E0 8011EDD0 02002025 */   move       $a0, $s0
/* 0142E4 8011EDD4 46000306 */  mov.s       $f12, $f0
/* 0142E8 8011EDD8 C7AE0024 */  lwc1        $f14, 0x24($sp)
/* 0142EC 8011EDDC 8FA60020 */  lw          $a2, 0x20($sp)
/* 0142F0 8011EDE0 0C042F59 */  jal         func_8010BD64
/* 0142F4 8011EDE4 00003825 */   move       $a3, $zero
/* 0142F8 8011EDE8 02002025 */  move        $a0, $s0
/* 0142FC 8011EDEC 0C045807 */  jal         func_8011601C
/* 014300 8011EDF0 00402825 */   move       $a1, $v0
/* 014304 8011EDF4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 014308 8011EDF8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01430C 8011EDFC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 014310 8011EE00 03E00008 */  jr          $ra
/* 014314 8011EE04 00001025 */   move       $v0, $zero

glabel func_8011EE08 # 164
/* 014318 8011EE08 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01431C 8011EE0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014320 8011EE10 AFA40020 */  sw          $a0, 0x20($sp)
/* 014324 8011EE14 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014328 8011EE18 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01432C 8011EE1C 0C045837 */  jal         func_801160DC
/* 014330 8011EE20 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014334 8011EE24 44050000 */  mfc1        $a1, $f0
/* 014338 8011EE28 8FA40020 */  lw          $a0, 0x20($sp)
/* 01433C 8011EE2C 0C04603A */  jal         func_801180E8
/* 014340 8011EE30 24060000 */   addiu      $a2, $zero, 0x0
/* 014344 8011EE34 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014348 8011EE38 0C045807 */  jal         func_8011601C
/* 01434C 8011EE3C 00402825 */   move       $a1, $v0
/* 014350 8011EE40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014354 8011EE44 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014358 8011EE48 00001025 */  move        $v0, $zero
/* 01435C 8011EE4C 03E00008 */  jr          $ra
/* 014360 8011EE50 00000000 */   nop

glabel func_8011EE54 # 165
/* 014364 8011EE54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014368 8011EE58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01436C 8011EE5C AFA40028 */  sw          $a0, 0x28($sp)
/* 014370 8011EE60 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014374 8011EE64 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 014378 8011EE68 0C045837 */  jal         func_801160DC
/* 01437C 8011EE6C AFA4001C */   sw         $a0, 0x1c($sp)
/* 014380 8011EE70 E7A00020 */  swc1        $f0, 0x20($sp)
/* 014384 8011EE74 0C045837 */  jal         func_801160DC
/* 014388 8011EE78 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01438C 8011EE7C 44050000 */  mfc1        $a1, $f0
/* 014390 8011EE80 8FA40028 */  lw          $a0, 0x28($sp)
/* 014394 8011EE84 0C04603A */  jal         func_801180E8
/* 014398 8011EE88 8FA60020 */   lw         $a2, 0x20($sp)
/* 01439C 8011EE8C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0143A0 8011EE90 0C045807 */  jal         func_8011601C
/* 0143A4 8011EE94 00402825 */   move       $a1, $v0
/* 0143A8 8011EE98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0143AC 8011EE9C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0143B0 8011EEA0 00001025 */  move        $v0, $zero
/* 0143B4 8011EEA4 03E00008 */  jr          $ra
/* 0143B8 8011EEA8 00000000 */   nop

glabel func_8011EEAC # 166
/* 0143BC 8011EEAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0143C0 8011EEB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0143C4 8011EEB4 AFA40020 */  sw          $a0, 0x20($sp)
/* 0143C8 8011EEB8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0143CC 8011EEBC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0143D0 8011EEC0 0C045837 */  jal         func_801160DC
/* 0143D4 8011EEC4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0143D8 8011EEC8 44050000 */  mfc1        $a1, $f0
/* 0143DC 8011EECC 8FA40020 */  lw          $a0, 0x20($sp)
/* 0143E0 8011EED0 0C0464A2 */  jal         func_80119288
/* 0143E4 8011EED4 24060000 */   addiu      $a2, $zero, 0x0
/* 0143E8 8011EED8 44050000 */  mfc1        $a1, $f0
/* 0143EC 8011EEDC 0C045813 */  jal         func_8011604C
/* 0143F0 8011EEE0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0143F4 8011EEE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0143F8 8011EEE8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0143FC 8011EEEC 00001025 */  move        $v0, $zero
/* 014400 8011EEF0 03E00008 */  jr          $ra
/* 014404 8011EEF4 00000000 */   nop

glabel func_8011EEF8 # 167
/* 014408 8011EEF8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01440C 8011EEFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 014410 8011EF00 AFA40028 */  sw          $a0, 0x28($sp)
/* 014414 8011EF04 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014418 8011EF08 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01441C 8011EF0C 0C045837 */  jal         func_801160DC
/* 014420 8011EF10 AFA40024 */   sw         $a0, 0x24($sp)
/* 014424 8011EF14 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 014428 8011EF18 0C045837 */  jal         func_801160DC
/* 01442C 8011EF1C 8FA40024 */   lw         $a0, 0x24($sp)
/* 014430 8011EF20 44050000 */  mfc1        $a1, $f0
/* 014434 8011EF24 8FA40028 */  lw          $a0, 0x28($sp)
/* 014438 8011EF28 0C0464A2 */  jal         func_80119288
/* 01443C 8011EF2C 8FA6001C */   lw         $a2, 0x1c($sp)
/* 014440 8011EF30 44050000 */  mfc1        $a1, $f0
/* 014444 8011EF34 0C045813 */  jal         func_8011604C
/* 014448 8011EF38 8FA40024 */   lw         $a0, 0x24($sp)
/* 01444C 8011EF3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014450 8011EF40 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014454 8011EF44 00001025 */  move        $v0, $zero
/* 014458 8011EF48 03E00008 */  jr          $ra
/* 01445C 8011EF4C 00000000 */   nop

glabel func_8011EF50 # 168
/* 014460 8011EF50 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014464 8011EF54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014468 8011EF58 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01446C 8011EF5C 3C05800B */  lui         $a1, %hi(D_800AE504)
/* 014470 8011EF60 8CA5E504 */  lw          $a1, %lo(D_800AE504)($a1)
/* 014474 8011EF64 0C045807 */  jal         func_8011601C
/* 014478 8011EF68 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 01447C 8011EF6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014480 8011EF70 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014484 8011EF74 00001025 */  move        $v0, $zero
/* 014488 8011EF78 03E00008 */  jr          $ra
/* 01448C 8011EF7C 00000000 */   nop

glabel func_8011EF80 # 169
/* 014490 8011EF80 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014494 8011EF84 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014498 8011EF88 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01449C 8011EF8C 3C05800B */  lui         $a1, %hi(D_800AD540)
/* 0144A0 8011EF90 8CA5D540 */  lw          $a1, %lo(D_800AD540)($a1)
/* 0144A4 8011EF94 0C045807 */  jal         func_8011601C
/* 0144A8 8011EF98 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0144AC 8011EF9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0144B0 8011EFA0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0144B4 8011EFA4 24020001 */  addiu       $v0, $zero, 0x1
/* 0144B8 8011EFA8 03E00008 */  jr          $ra
/* 0144BC 8011EFAC 00000000 */   nop

glabel func_8011EFB0 # 170
/* 0144C0 8011EFB0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0144C4 8011EFB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0144C8 8011EFB8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0144CC 8011EFBC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0144D0 8011EFC0 0C04582D */  jal         func_801160B4
/* 0144D4 8011EFC4 AFA40024 */   sw         $a0, 0x24($sp)
/* 0144D8 8011EFC8 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0144DC 8011EFCC 0C04582D */  jal         func_801160B4
/* 0144E0 8011EFD0 8FA40024 */   lw         $a0, 0x24($sp)
/* 0144E4 8011EFD4 00402025 */  move        $a0, $v0
/* 0144E8 8011EFD8 0C043979 */  jal         func_8010E5E4
/* 0144EC 8011EFDC 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0144F0 8011EFE0 8FA40024 */  lw          $a0, 0x24($sp)
/* 0144F4 8011EFE4 0C045807 */  jal         func_8011601C
/* 0144F8 8011EFE8 00002825 */   move       $a1, $zero
/* 0144FC 8011EFEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014500 8011EFF0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014504 8011EFF4 24020001 */  addiu       $v0, $zero, 0x1
/* 014508 8011EFF8 03E00008 */  jr          $ra
/* 01450C 8011EFFC 00000000 */   nop

glabel func_8011F000 # 171
/* 014510 8011F000 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014514 8011F004 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014518 8011F008 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01451C 8011F00C 3C05800B */  lui         $a1, %hi(D_800AE4F8)
/* 014520 8011F010 8CA5E4F8 */  lw          $a1, %lo(D_800AE4F8)($a1)
/* 014524 8011F014 0C045807 */  jal         func_8011601C
/* 014528 8011F018 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 01452C 8011F01C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014530 8011F020 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014534 8011F024 00001025 */  move        $v0, $zero
/* 014538 8011F028 03E00008 */  jr          $ra
/* 01453C 8011F02C 00000000 */   nop

glabel func_8011F030 # 172
/* 014540 8011F030 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014544 8011F034 AFBF001C */  sw          $ra, 0x1c($sp)
/* 014548 8011F038 AFB00018 */  sw          $s0, 0x18($sp)
/* 01454C 8011F03C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014550 8011F040 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014554 8011F044 0C04582D */  jal         func_801160B4
/* 014558 8011F048 02002025 */   move       $a0, $s0
/* 01455C 8011F04C AFA20024 */  sw          $v0, 0x24($sp)
/* 014560 8011F050 0C04582D */  jal         func_801160B4
/* 014564 8011F054 02002025 */   move       $a0, $s0
/* 014568 8011F058 AFA20028 */  sw          $v0, 0x28($sp)
/* 01456C 8011F05C 0C04582D */  jal         func_801160B4
/* 014570 8011F060 02002025 */   move       $a0, $s0
/* 014574 8011F064 AFA2002C */  sw          $v0, 0x2c($sp)
/* 014578 8011F068 0C04582D */  jal         func_801160B4
/* 01457C 8011F06C 02002025 */   move       $a0, $s0
/* 014580 8011F070 0C0011F9 */  jal         func_800047E4
/* 014584 8011F074 00402025 */   move       $a0, $v0
/* 014588 8011F078 0C001204 */  jal         func_80004810
/* 01458C 8011F07C 8FA4002C */   lw         $a0, 0x2c($sp)
/* 014590 8011F080 8FAF0028 */  lw          $t7, 0x28($sp)
/* 014594 8011F084 24180001 */  addiu       $t8, $zero, 0x1
/* 014598 8011F088 3C018007 */  lui         $at, 0x8007
/* 01459C 8011F08C 11E00004 */  beq         $t7, $zero, .L8011F0A0
/* 0145A0 8011F090 02002025 */   move       $a0, $s0
/* 0145A4 8011F094 3C018007 */  lui         $at, %hi(D_800722D0)
/* 0145A8 8011F098 10000002 */  b           .L8011F0A4
/* 0145AC 8011F09C AC3822D0 */   sw         $t8, %lo(D_800722D0)($at)
.L8011F0A0:
/* 0145B0 8011F0A0 AC2022D0 */  sw          $zero, %lo(D_800722D0)($at)
.L8011F0A4:
/* 0145B4 8011F0A4 8FB90024 */  lw          $t9, 0x24($sp)
/* 0145B8 8011F0A8 24080001 */  addiu       $t0, $zero, 0x1
/* 0145BC 8011F0AC 3C018007 */  lui         $at, 0x8007
/* 0145C0 8011F0B0 13200004 */  beq         $t9, $zero, .L8011F0C4
/* 0145C4 8011F0B4 00000000 */   nop
/* 0145C8 8011F0B8 3C018007 */  lui         $at, %hi(D_800722D4)
/* 0145CC 8011F0BC 10000002 */  b           .L8011F0C8
/* 0145D0 8011F0C0 AC2822D4 */   sw         $t0, %lo(D_800722D4)($at)
.L8011F0C4:
/* 0145D4 8011F0C4 AC2022D4 */  sw          $zero, %lo(D_800722D4)($at)
.L8011F0C8:
/* 0145D8 8011F0C8 0C045807 */  jal         func_8011601C
/* 0145DC 8011F0CC 00002825 */   move       $a1, $zero
/* 0145E0 8011F0D0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0145E4 8011F0D4 8FB00018 */  lw          $s0, 0x18($sp)
/* 0145E8 8011F0D8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0145EC 8011F0DC 03E00008 */  jr          $ra
/* 0145F0 8011F0E0 24020001 */   addiu      $v0, $zero, 0x1

glabel func_8011F0E4 # 173
/* 0145F4 8011F0E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0145F8 8011F0E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0145FC 8011F0EC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014600 8011F0F0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014604 8011F0F4 0C045837 */  jal         func_801160DC
/* 014608 8011F0F8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01460C 8011F0FC 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 014610 8011F100 44050000 */  mfc1        $a1, $f0
/* 014614 8011F104 0C005274 */  jal         func_800149D0
/* 014618 8011F108 8C8460A8 */   lw         $a0, %lo(D_800760A8)($a0)
/* 01461C 8011F10C 44050000 */  mfc1        $a1, $f0
/* 014620 8011F110 0C045813 */  jal         func_8011604C
/* 014624 8011F114 8FA4001C */   lw         $a0, 0x1c($sp)
/* 014628 8011F118 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01462C 8011F11C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014630 8011F120 00001025 */  move        $v0, $zero
/* 014634 8011F124 03E00008 */  jr          $ra
/* 014638 8011F128 00000000 */   nop

glabel func_8011F12C # 174
/* 01463C 8011F12C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014640 8011F130 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014644 8011F134 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014648 8011F138 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01464C 8011F13C 0C045837 */  jal         func_801160DC
/* 014650 8011F140 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014654 8011F144 44806000 */  mtc1        $zero, $f12
/* 014658 8011F148 3C028007 */  lui         $v0, %hi(D_800760A8)
/* 01465C 8011F14C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014660 8011F150 460C003C */  c.lt.s      $f0, $f12
/* 014664 8011F154 46000086 */  mov.s       $f2, $f0
/* 014668 8011F158 244260A8 */  addiu       $v0, $v0, %lo(D_800760A8)
/* 01466C 8011F15C 3C0142C8 */  lui         $at, 0x42c8
/* 014670 8011F160 45020004 */  bc1fl       .L8011F174
/* 014674 8011F164 44816000 */   mtc1       $at, $f12
/* 014678 8011F168 10000008 */  b           .L8011F18C
/* 01467C 8011F16C 46006086 */   mov.s      $f2, $f12
/* 014680 8011F170 44816000 */  mtc1        $at, $f12
.L8011F174:
/* 014684 8011F174 00000000 */  nop
/* 014688 8011F178 4600603C */  c.lt.s      $f12, $f0
/* 01468C 8011F17C 00000000 */  nop
/* 014690 8011F180 45020003 */  bc1fl       .L8011F190
/* 014694 8011F184 8C4F0000 */   lw         $t7, 0x0($v0)
/* 014698 8011F188 46006086 */  mov.s       $f2, $f12
.L8011F18C:
/* 01469C 8011F18C 8C4F0000 */  lw          $t7, 0x0($v0)
.L8011F190:
/* 0146A0 8011F190 8DF80054 */  lw          $t8, 0x54($t7)
/* 0146A4 8011F194 E70203F8 */  swc1        $f2, 0x3f8($t8)
/* 0146A8 8011F198 8C590000 */  lw          $t9, 0x0($v0)
/* 0146AC 8011F19C 8F280054 */  lw          $t0, 0x54($t9)
/* 0146B0 8011F1A0 0C045813 */  jal         func_8011604C
/* 0146B4 8011F1A4 8D0503F8 */   lw         $a1, 0x3f8($t0)
/* 0146B8 8011F1A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0146BC 8011F1AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0146C0 8011F1B0 00001025 */  move        $v0, $zero
/* 0146C4 8011F1B4 03E00008 */  jr          $ra
/* 0146C8 8011F1B8 00000000 */   nop

glabel func_8011F1BC # 175
/* 0146CC 8011F1BC 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 0146D0 8011F1C0 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 0146D4 8011F1C4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0146D8 8011F1C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0146DC 8011F1CC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0146E0 8011F1D0 8DF80054 */  lw          $t8, 0x54($t7)
/* 0146E4 8011F1D4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0146E8 8011F1D8 0C045813 */  jal         func_8011604C
/* 0146EC 8011F1DC 8F0503F8 */   lw         $a1, 0x3f8($t8)
/* 0146F0 8011F1E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0146F4 8011F1E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0146F8 8011F1E8 00001025 */  move        $v0, $zero
/* 0146FC 8011F1EC 03E00008 */  jr          $ra
/* 014700 8011F1F0 00000000 */   nop

glabel func_8011F1F4 # 176
/* 014704 8011F1F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014708 8011F1F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01470C 8011F1FC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014710 8011F200 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014714 8011F204 0C045837 */  jal         func_801160DC
/* 014718 8011F208 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01471C 8011F20C 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 014720 8011F210 44050000 */  mfc1        $a1, $f0
/* 014724 8011F214 0C00528F */  jal         func_80014A3C
/* 014728 8011F218 8C8460A8 */   lw         $a0, %lo(D_800760A8)($a0)
/* 01472C 8011F21C 44050000 */  mfc1        $a1, $f0
/* 014730 8011F220 0C045813 */  jal         func_8011604C
/* 014734 8011F224 8FA4001C */   lw         $a0, 0x1c($sp)
/* 014738 8011F228 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01473C 8011F22C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014740 8011F230 00001025 */  move        $v0, $zero
/* 014744 8011F234 03E00008 */  jr          $ra
/* 014748 8011F238 00000000 */   nop

glabel func_8011F23C # 177
/* 01474C 8011F23C 3C0F8007 */  lui         $t7, %hi(D_800760A8)
/* 014750 8011F240 8DEF60A8 */  lw          $t7, %lo(D_800760A8)($t7)
/* 014754 8011F244 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014758 8011F248 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01475C 8011F24C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014760 8011F250 8DF80054 */  lw          $t8, 0x54($t7)
/* 014764 8011F254 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014768 8011F258 0C045813 */  jal         func_8011604C
/* 01476C 8011F25C 8F0503F4 */   lw         $a1, 0x3f4($t8)
/* 014770 8011F260 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014774 8011F264 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014778 8011F268 00001025 */  move        $v0, $zero
/* 01477C 8011F26C 03E00008 */  jr          $ra
/* 014780 8011F270 00000000 */   nop

glabel func_8011F274 # 178
/* 014784 8011F274 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 014788 8011F278 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01478C 8011F27C AFB00020 */  sw          $s0, 0x20($sp)
/* 014790 8011F280 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014794 8011F284 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014798 8011F288 0C04582D */  jal         func_801160B4
/* 01479C 8011F28C 02002025 */   move       $a0, $s0
/* 0147A0 8011F290 AFA2002C */  sw          $v0, 0x2c($sp)
/* 0147A4 8011F294 0C045837 */  jal         func_801160DC
/* 0147A8 8011F298 02002025 */   move       $a0, $s0
/* 0147AC 8011F29C E7A00030 */  swc1        $f0, 0x30($sp)
/* 0147B0 8011F2A0 0C045837 */  jal         func_801160DC
/* 0147B4 8011F2A4 02002025 */   move       $a0, $s0
/* 0147B8 8011F2A8 E7A00034 */  swc1        $f0, 0x34($sp)
/* 0147BC 8011F2AC 0C045837 */  jal         func_801160DC
/* 0147C0 8011F2B0 02002025 */   move       $a0, $s0
/* 0147C4 8011F2B4 E7A00038 */  swc1        $f0, 0x38($sp)
/* 0147C8 8011F2B8 0C045837 */  jal         func_801160DC
/* 0147CC 8011F2BC 02002025 */   move       $a0, $s0
/* 0147D0 8011F2C0 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 0147D4 8011F2C4 0C045837 */  jal         func_801160DC
/* 0147D8 8011F2C8 02002025 */   move       $a0, $s0
/* 0147DC 8011F2CC C7A40030 */  lwc1        $f4, 0x30($sp)
/* 0147E0 8011F2D0 8FAF002C */  lw          $t7, 0x2c($sp)
/* 0147E4 8011F2D4 46000306 */  mov.s       $f12, $f0
/* 0147E8 8011F2D8 C7AE003C */  lwc1        $f14, 0x3c($sp)
/* 0147EC 8011F2DC 8FA60038 */  lw          $a2, 0x38($sp)
/* 0147F0 8011F2E0 8FA70034 */  lw          $a3, 0x34($sp)
/* 0147F4 8011F2E4 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0147F8 8011F2E8 0C044E51 */  jal         func_80113944
/* 0147FC 8011F2EC AFAF0014 */   sw         $t7, 0x14($sp)
/* 014800 8011F2F0 02002025 */  move        $a0, $s0
/* 014804 8011F2F4 0C045807 */  jal         func_8011601C
/* 014808 8011F2F8 8C450038 */   lw         $a1, 0x38($v0)
/* 01480C 8011F2FC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014810 8011F300 8FB00020 */  lw          $s0, 0x20($sp)
/* 014814 8011F304 27BD0048 */  addiu       $sp, $sp, 0x48
/* 014818 8011F308 03E00008 */  jr          $ra
/* 01481C 8011F30C 00001025 */   move       $v0, $zero

glabel func_8011F310 # 179
/* 014820 8011F310 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 014824 8011F314 AFBF0024 */  sw          $ra, 0x24($sp)
/* 014828 8011F318 AFB00020 */  sw          $s0, 0x20($sp)
/* 01482C 8011F31C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014830 8011F320 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014834 8011F324 0C04582D */  jal         func_801160B4
/* 014838 8011F328 02002025 */   move       $a0, $s0
/* 01483C 8011F32C AFA2002C */  sw          $v0, 0x2c($sp)
/* 014840 8011F330 0C045837 */  jal         func_801160DC
/* 014844 8011F334 02002025 */   move       $a0, $s0
/* 014848 8011F338 E7A00030 */  swc1        $f0, 0x30($sp)
/* 01484C 8011F33C 0C045837 */  jal         func_801160DC
/* 014850 8011F340 02002025 */   move       $a0, $s0
/* 014854 8011F344 E7A00034 */  swc1        $f0, 0x34($sp)
/* 014858 8011F348 0C045837 */  jal         func_801160DC
/* 01485C 8011F34C 02002025 */   move       $a0, $s0
/* 014860 8011F350 E7A00038 */  swc1        $f0, 0x38($sp)
/* 014864 8011F354 0C045837 */  jal         func_801160DC
/* 014868 8011F358 02002025 */   move       $a0, $s0
/* 01486C 8011F35C E7A0003C */  swc1        $f0, 0x3c($sp)
/* 014870 8011F360 0C045837 */  jal         func_801160DC
/* 014874 8011F364 02002025 */   move       $a0, $s0
/* 014878 8011F368 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 01487C 8011F36C 8FAF002C */  lw          $t7, 0x2c($sp)
/* 014880 8011F370 46000306 */  mov.s       $f12, $f0
/* 014884 8011F374 C7AE003C */  lwc1        $f14, 0x3c($sp)
/* 014888 8011F378 8FA60038 */  lw          $a2, 0x38($sp)
/* 01488C 8011F37C 8FA70034 */  lw          $a3, 0x34($sp)
/* 014890 8011F380 E7A40010 */  swc1        $f4, 0x10($sp)
/* 014894 8011F384 0C044E51 */  jal         func_80113944
/* 014898 8011F388 AFAF0014 */   sw         $t7, 0x14($sp)
/* 01489C 8011F38C AFA20028 */  sw          $v0, 0x28($sp)
/* 0148A0 8011F390 00402025 */  move        $a0, $v0
/* 0148A4 8011F394 0C04510F */  jal         func_8011443C
/* 0148A8 8011F398 24050002 */   addiu      $a1, $zero, 0x2
/* 0148AC 8011F39C 8FB80028 */  lw          $t8, 0x28($sp)
/* 0148B0 8011F3A0 02002025 */  move        $a0, $s0
/* 0148B4 8011F3A4 0C045807 */  jal         func_8011601C
/* 0148B8 8011F3A8 8F050038 */   lw         $a1, 0x38($t8)
/* 0148BC 8011F3AC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0148C0 8011F3B0 8FB00020 */  lw          $s0, 0x20($sp)
/* 0148C4 8011F3B4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 0148C8 8011F3B8 03E00008 */  jr          $ra
/* 0148CC 8011F3BC 00001025 */   move       $v0, $zero

glabel func_8011F3C0 # 180
/* 0148D0 8011F3C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0148D4 8011F3C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0148D8 8011F3C8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0148DC 8011F3CC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0148E0 8011F3D0 0C04582D */  jal         func_801160B4
/* 0148E4 8011F3D4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0148E8 8011F3D8 0C0462B3 */  jal         func_80118ACC
/* 0148EC 8011F3DC 00402025 */   move       $a0, $v0
/* 0148F0 8011F3E0 10400003 */  beq         $v0, $zero, .L8011F3F0
/* 0148F4 8011F3E4 00402025 */   move       $a0, $v0
/* 0148F8 8011F3E8 0C044EDE */  jal         func_80113B78
/* 0148FC 8011F3EC 00000000 */   nop
.L8011F3F0:
/* 014900 8011F3F0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014904 8011F3F4 0C045807 */  jal         func_8011601C
/* 014908 8011F3F8 00002825 */   move       $a1, $zero
/* 01490C 8011F3FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014910 8011F400 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014914 8011F404 00001025 */  move        $v0, $zero
/* 014918 8011F408 03E00008 */  jr          $ra
/* 01491C 8011F40C 00000000 */   nop

glabel func_8011F410 # 181
/* 014920 8011F410 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014924 8011F414 AFBF001C */  sw          $ra, 0x1c($sp)
/* 014928 8011F418 AFB00018 */  sw          $s0, 0x18($sp)
/* 01492C 8011F41C AFA40038 */  sw          $a0, 0x38($sp)
/* 014930 8011F420 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014934 8011F424 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 014938 8011F428 0C04582D */  jal         func_801160B4
/* 01493C 8011F42C 02002025 */   move       $a0, $s0
/* 014940 8011F430 AFA20024 */  sw          $v0, 0x24($sp)
/* 014944 8011F434 0C045837 */  jal         func_801160DC
/* 014948 8011F438 02002025 */   move       $a0, $s0
/* 01494C 8011F43C E7A00028 */  swc1        $f0, 0x28($sp)
/* 014950 8011F440 0C045837 */  jal         func_801160DC
/* 014954 8011F444 02002025 */   move       $a0, $s0
/* 014958 8011F448 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 01495C 8011F44C 0C045837 */  jal         func_801160DC
/* 014960 8011F450 02002025 */   move       $a0, $s0
/* 014964 8011F454 E7A00030 */  swc1        $f0, 0x30($sp)
/* 014968 8011F458 0C0462B3 */  jal         func_80118ACC
/* 01496C 8011F45C 8FA40024 */   lw         $a0, 0x24($sp)
/* 014970 8011F460 1040000D */  beq         $v0, $zero, .L8011F498
/* 014974 8011F464 8FA40038 */   lw         $a0, 0x38($sp)
/* 014978 8011F468 0C04624E */  jal         func_80118938
/* 01497C 8011F46C AFA20020 */   sw         $v0, 0x20($sp)
/* 014980 8011F470 8FA30020 */  lw          $v1, 0x20($sp)
/* 014984 8011F474 C7A0002C */  lwc1        $f0, 0x2c($sp)
/* 014988 8011F478 C7A20030 */  lwc1        $f2, 0x30($sp)
/* 01498C 8011F47C C7AC0028 */  lwc1        $f12, 0x28($sp)
/* 014990 8011F480 E460001C */  swc1        $f0, 0x1c($v1)
/* 014994 8011F484 E4600048 */  swc1        $f0, 0x48($v1)
/* 014998 8011F488 E4620018 */  swc1        $f2, 0x18($v1)
/* 01499C 8011F48C E4620044 */  swc1        $f2, 0x44($v1)
/* 0149A0 8011F490 E46C0020 */  swc1        $f12, 0x20($v1)
/* 0149A4 8011F494 E46C004C */  swc1        $f12, 0x4c($v1)
.L8011F498:
/* 0149A8 8011F498 02002025 */  move        $a0, $s0
/* 0149AC 8011F49C 0C045807 */  jal         func_8011601C
/* 0149B0 8011F4A0 00002825 */   move       $a1, $zero
/* 0149B4 8011F4A4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0149B8 8011F4A8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0149BC 8011F4AC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0149C0 8011F4B0 03E00008 */  jr          $ra
/* 0149C4 8011F4B4 00001025 */   move       $v0, $zero

glabel func_8011F4B8 # 182
/* 0149C8 8011F4B8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0149CC 8011F4BC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0149D0 8011F4C0 AFB00020 */  sw          $s0, 0x20($sp)
/* 0149D4 8011F4C4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0149D8 8011F4C8 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0149DC 8011F4CC 0C04582D */  jal         func_801160B4
/* 0149E0 8011F4D0 02002025 */   move       $a0, $s0
/* 0149E4 8011F4D4 AFA2003C */  sw          $v0, 0x3c($sp)
/* 0149E8 8011F4D8 0C04582D */  jal         func_801160B4
/* 0149EC 8011F4DC 02002025 */   move       $a0, $s0
/* 0149F0 8011F4E0 0C0462B3 */  jal         func_80118ACC
/* 0149F4 8011F4E4 00402025 */   move       $a0, $v0
/* 0149F8 8011F4E8 14400006 */  bne         $v0, $zero, .L8011F504
/* 0149FC 8011F4EC 00402025 */   move       $a0, $v0
/* 014A00 8011F4F0 02002025 */  move        $a0, $s0
/* 014A04 8011F4F4 0C045807 */  jal         func_8011601C
/* 014A08 8011F4F8 00002825 */   move       $a1, $zero
/* 014A0C 8011F4FC 10000019 */  b           .L8011F564
/* 014A10 8011F500 8FBF0024 */   lw         $ra, 0x24($sp)
.L8011F504:
/* 014A14 8011F504 C4840044 */  lwc1        $f4, 0x44($a0)
/* 014A18 8011F508 E7A40038 */  swc1        $f4, 0x38($sp)
/* 014A1C 8011F50C C4860048 */  lwc1        $f6, 0x48($a0)
/* 014A20 8011F510 E7A60034 */  swc1        $f6, 0x34($sp)
/* 014A24 8011F514 C488004C */  lwc1        $f8, 0x4c($a0)
/* 014A28 8011F518 E7A80030 */  swc1        $f8, 0x30($sp)
/* 014A2C 8011F51C C48A000C */  lwc1        $f10, 0xc($a0)
/* 014A30 8011F520 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 014A34 8011F524 C4900010 */  lwc1        $f16, 0x10($a0)
/* 014A38 8011F528 0C044EDE */  jal         func_80113B78
/* 014A3C 8011F52C E7B00028 */   swc1       $f16, 0x28($sp)
/* 014A40 8011F530 C7B20028 */  lwc1        $f18, 0x28($sp)
/* 014A44 8011F534 8FAF003C */  lw          $t7, 0x3c($sp)
/* 014A48 8011F538 C7AC0038 */  lwc1        $f12, 0x38($sp)
/* 014A4C 8011F53C C7AE0034 */  lwc1        $f14, 0x34($sp)
/* 014A50 8011F540 8FA60030 */  lw          $a2, 0x30($sp)
/* 014A54 8011F544 8FA7002C */  lw          $a3, 0x2c($sp)
/* 014A58 8011F548 E7B20010 */  swc1        $f18, 0x10($sp)
/* 014A5C 8011F54C 0C044E51 */  jal         func_80113944
/* 014A60 8011F550 AFAF0014 */   sw         $t7, 0x14($sp)
/* 014A64 8011F554 02002025 */  move        $a0, $s0
/* 014A68 8011F558 0C045807 */  jal         func_8011601C
/* 014A6C 8011F55C 8C450038 */   lw         $a1, 0x38($v0)
/* 014A70 8011F560 8FBF0024 */  lw          $ra, 0x24($sp)
.L8011F564:
/* 014A74 8011F564 8FB00020 */  lw          $s0, 0x20($sp)
/* 014A78 8011F568 27BD0048 */  addiu       $sp, $sp, 0x48
/* 014A7C 8011F56C 03E00008 */  jr          $ra
/* 014A80 8011F570 00001025 */   move       $v0, $zero

glabel func_8011F574 # 183
/* 014A84 8011F574 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014A88 8011F578 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014A8C 8011F57C 8C820054 */  lw          $v0, 0x54($a0)
/* 014A90 8011F580 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 014A94 8011F584 0C045807 */  jal         func_8011601C
/* 014A98 8011F588 8C450190 */   lw         $a1, 0x190($v0)
/* 014A9C 8011F58C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014AA0 8011F590 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014AA4 8011F594 00001025 */  move        $v0, $zero
/* 014AA8 8011F598 03E00008 */  jr          $ra
/* 014AAC 8011F59C 00000000 */   nop

glabel func_8011F5A0 # 184
/* 014AB0 8011F5A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014AB4 8011F5A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014AB8 8011F5A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 014ABC 8011F5AC 8C820054 */  lw          $v0, 0x54($a0)
/* 014AC0 8011F5B0 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 014AC4 8011F5B4 0C04582D */  jal         func_801160B4
/* 014AC8 8011F5B8 AFA40018 */   sw         $a0, 0x18($sp)
/* 014ACC 8011F5BC 8FA40020 */  lw          $a0, 0x20($sp)
/* 014AD0 8011F5C0 00402825 */  move        $a1, $v0
/* 014AD4 8011F5C4 0C0463EB */  jal         func_80118FAC
/* 014AD8 8011F5C8 24060001 */   addiu      $a2, $zero, 0x1
/* 014ADC 8011F5CC 0C046235 */  jal         func_801188D4
/* 014AE0 8011F5D0 8FA40020 */   lw         $a0, 0x20($sp)
/* 014AE4 8011F5D4 8FA40018 */  lw          $a0, 0x18($sp)
/* 014AE8 8011F5D8 0C045807 */  jal         func_8011601C
/* 014AEC 8011F5DC 00402825 */   move       $a1, $v0
/* 014AF0 8011F5E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014AF4 8011F5E4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014AF8 8011F5E8 00001025 */  move        $v0, $zero
/* 014AFC 8011F5EC 03E00008 */  jr          $ra
/* 014B00 8011F5F0 00000000 */   nop

glabel func_8011F5F4 # 185
/* 014B04 8011F5F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014B08 8011F5F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014B0C 8011F5FC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014B10 8011F600 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014B14 8011F604 0C04582D */  jal         func_801160B4
/* 014B18 8011F608 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014B1C 8011F60C 0C001FA3 */  jal         func_80007E8C
/* 014B20 8011F610 00402025 */   move       $a0, $v0
/* 014B24 8011F614 10400010 */  beq         $v0, $zero, .L8011F658
/* 014B28 8011F618 8FA6001C */   lw         $a2, 0x1c($sp)
/* 014B2C 8011F61C 944F0034 */  lhu         $t7, 0x34($v0)
/* 014B30 8011F620 24010086 */  addiu       $at, $zero, 0x86
/* 014B34 8011F624 00C02025 */  move        $a0, $a2
/* 014B38 8011F628 15E10007 */  bne         $t7, $at, .L8011F648
/* 014B3C 8011F62C 00000000 */   nop
/* 014B40 8011F630 8C580054 */  lw          $t8, 0x54($v0)
/* 014B44 8011F634 00C02025 */  move        $a0, $a2
/* 014B48 8011F638 0C045807 */  jal         func_8011601C
/* 014B4C 8011F63C 83050006 */   lb         $a1, 0x6($t8)
/* 014B50 8011F640 10000009 */  b           .L8011F668
/* 014B54 8011F644 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011F648:
/* 014B58 8011F648 0C045807 */  jal         func_8011601C
/* 014B5C 8011F64C 2405FFFF */   addiu      $a1, $zero, -0x1
/* 014B60 8011F650 10000005 */  b           .L8011F668
/* 014B64 8011F654 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011F658:
/* 014B68 8011F658 00C02025 */  move        $a0, $a2
/* 014B6C 8011F65C 0C045807 */  jal         func_8011601C
/* 014B70 8011F660 2405FFFF */   addiu      $a1, $zero, -0x1
/* 014B74 8011F664 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011F668:
/* 014B78 8011F668 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014B7C 8011F66C 00001025 */  move        $v0, $zero
/* 014B80 8011F670 03E00008 */  jr          $ra
/* 014B84 8011F674 00000000 */   nop

glabel func_8011F678 # 186
/* 014B88 8011F678 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014B8C 8011F67C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014B90 8011F680 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014B94 8011F684 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014B98 8011F688 0C04582D */  jal         func_801160B4
/* 014B9C 8011F68C AFA40024 */   sw         $a0, 0x24($sp)
/* 014BA0 8011F690 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014BA4 8011F694 0C04582D */  jal         func_801160B4
/* 014BA8 8011F698 8FA40024 */   lw         $a0, 0x24($sp)
/* 014BAC 8011F69C 0C0462B3 */  jal         func_80118ACC
/* 014BB0 8011F6A0 00402025 */   move       $a0, $v0
/* 014BB4 8011F6A4 10400003 */  beq         $v0, $zero, .L8011F6B4
/* 014BB8 8011F6A8 00402025 */   move       $a0, $v0
/* 014BBC 8011F6AC 0C045174 */  jal         func_801145D0
/* 014BC0 8011F6B0 8FA5001C */   lw         $a1, 0x1c($sp)
.L8011F6B4:
/* 014BC4 8011F6B4 8FA40024 */  lw          $a0, 0x24($sp)
/* 014BC8 8011F6B8 0C045807 */  jal         func_8011601C
/* 014BCC 8011F6BC 00002825 */   move       $a1, $zero
/* 014BD0 8011F6C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014BD4 8011F6C4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014BD8 8011F6C8 00001025 */  move        $v0, $zero
/* 014BDC 8011F6CC 03E00008 */  jr          $ra
/* 014BE0 8011F6D0 00000000 */   nop

glabel func_8011F6D4 # 187
/* 014BE4 8011F6D4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014BE8 8011F6D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014BEC 8011F6DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014BF0 8011F6E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014BF4 8011F6E4 0C04582D */  jal         func_801160B4
/* 014BF8 8011F6E8 AFA40024 */   sw         $a0, 0x24($sp)
/* 014BFC 8011F6EC AFA2001C */  sw          $v0, 0x1c($sp)
/* 014C00 8011F6F0 0C04582D */  jal         func_801160B4
/* 014C04 8011F6F4 8FA40024 */   lw         $a0, 0x24($sp)
/* 014C08 8011F6F8 0C0462B3 */  jal         func_80118ACC
/* 014C0C 8011F6FC 00402025 */   move       $a0, $v0
/* 014C10 8011F700 10400003 */  beq         $v0, $zero, .L8011F710
/* 014C14 8011F704 00402025 */   move       $a0, $v0
/* 014C18 8011F708 0C045185 */  jal         func_80114614
/* 014C1C 8011F70C 8FA5001C */   lw         $a1, 0x1c($sp)
.L8011F710:
/* 014C20 8011F710 8FA40024 */  lw          $a0, 0x24($sp)
/* 014C24 8011F714 0C045807 */  jal         func_8011601C
/* 014C28 8011F718 00002825 */   move       $a1, $zero
/* 014C2C 8011F71C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014C30 8011F720 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014C34 8011F724 00001025 */  move        $v0, $zero
/* 014C38 8011F728 03E00008 */  jr          $ra
/* 014C3C 8011F72C 00000000 */   nop

glabel func_8011F730 # 188
/* 014C40 8011F730 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014C44 8011F734 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014C48 8011F738 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014C4C 8011F73C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014C50 8011F740 0C04582D */  jal         func_801160B4
/* 014C54 8011F744 AFA40024 */   sw         $a0, 0x24($sp)
/* 014C58 8011F748 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014C5C 8011F74C 0C04582D */  jal         func_801160B4
/* 014C60 8011F750 8FA40024 */   lw         $a0, 0x24($sp)
/* 014C64 8011F754 00402025 */  move        $a0, $v0
/* 014C68 8011F758 0C045189 */  jal         func_80114624
/* 014C6C 8011F75C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014C70 8011F760 8FA40024 */  lw          $a0, 0x24($sp)
/* 014C74 8011F764 0C045807 */  jal         func_8011601C
/* 014C78 8011F768 00002825 */   move       $a1, $zero
/* 014C7C 8011F76C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014C80 8011F770 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014C84 8011F774 00001025 */  move        $v0, $zero
/* 014C88 8011F778 03E00008 */  jr          $ra
/* 014C8C 8011F77C 00000000 */   nop

glabel func_8011F780 # 189
/* 014C90 8011F780 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014C94 8011F784 AFBF0024 */  sw          $ra, 0x24($sp)
/* 014C98 8011F788 AFB00020 */  sw          $s0, 0x20($sp)
/* 014C9C 8011F78C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014CA0 8011F790 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014CA4 8011F794 0C04582D */  jal         func_801160B4
/* 014CA8 8011F798 02002025 */   move       $a0, $s0
/* 014CAC 8011F79C A3A2002C */  sb          $v0, 0x2c($sp)
/* 014CB0 8011F7A0 0C04582D */  jal         func_801160B4
/* 014CB4 8011F7A4 02002025 */   move       $a0, $s0
/* 014CB8 8011F7A8 A3A2002D */  sb          $v0, 0x2d($sp)
/* 014CBC 8011F7AC 0C04582D */  jal         func_801160B4
/* 014CC0 8011F7B0 02002025 */   move       $a0, $s0
/* 014CC4 8011F7B4 A3A2002E */  sb          $v0, 0x2e($sp)
/* 014CC8 8011F7B8 0C04582D */  jal         func_801160B4
/* 014CCC 8011F7BC 02002025 */   move       $a0, $s0
/* 014CD0 8011F7C0 A3A2002F */  sb          $v0, 0x2f($sp)
/* 014CD4 8011F7C4 0C04582D */  jal         func_801160B4
/* 014CD8 8011F7C8 02002025 */   move       $a0, $s0
/* 014CDC 8011F7CC 93AF002C */  lbu         $t7, 0x2c($sp)
/* 014CE0 8011F7D0 00402025 */  move        $a0, $v0
/* 014CE4 8011F7D4 93A5002F */  lbu         $a1, 0x2f($sp)
/* 014CE8 8011F7D8 93A6002E */  lbu         $a2, 0x2e($sp)
/* 014CEC 8011F7DC 93A7002D */  lbu         $a3, 0x2d($sp)
/* 014CF0 8011F7E0 0C045195 */  jal         func_80114654
/* 014CF4 8011F7E4 AFAF0010 */   sw         $t7, 0x10($sp)
/* 014CF8 8011F7E8 02002025 */  move        $a0, $s0
/* 014CFC 8011F7EC 0C045807 */  jal         func_8011601C
/* 014D00 8011F7F0 00002825 */   move       $a1, $zero
/* 014D04 8011F7F4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014D08 8011F7F8 8FB00020 */  lw          $s0, 0x20($sp)
/* 014D0C 8011F7FC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 014D10 8011F800 03E00008 */  jr          $ra
/* 014D14 8011F804 00001025 */   move       $v0, $zero

glabel func_8011F808 # 190
/* 014D18 8011F808 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014D1C 8011F80C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014D20 8011F810 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014D24 8011F814 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014D28 8011F818 0C04582D */  jal         func_801160B4
/* 014D2C 8011F81C AFA4001C */   sw         $a0, 0x1c($sp)
/* 014D30 8011F820 0C0462B3 */  jal         func_80118ACC
/* 014D34 8011F824 00402025 */   move       $a0, $v0
/* 014D38 8011F828 0C00BCBC */  jal         func_8002F2F0
/* 014D3C 8011F82C 00402025 */   move       $a0, $v0
/* 014D40 8011F830 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014D44 8011F834 0C045807 */  jal         func_8011601C
/* 014D48 8011F838 00002825 */   move       $a1, $zero
/* 014D4C 8011F83C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014D50 8011F840 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014D54 8011F844 00001025 */  move        $v0, $zero
/* 014D58 8011F848 03E00008 */  jr          $ra
/* 014D5C 8011F84C 00000000 */   nop

glabel func_8011F850 # 191
/* 014D60 8011F850 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014D64 8011F854 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014D68 8011F858 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014D6C 8011F85C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014D70 8011F860 0C04582D */  jal         func_801160B4
/* 014D74 8011F864 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014D78 8011F868 0C0462B3 */  jal         func_80118ACC
/* 014D7C 8011F86C 00402025 */   move       $a0, $v0
/* 014D80 8011F870 10400003 */  beq         $v0, $zero, .L8011F880
/* 014D84 8011F874 00402025 */   move       $a0, $v0
/* 014D88 8011F878 0C00BCCE */  jal         func_8002F338
/* 014D8C 8011F87C 00000000 */   nop
.L8011F880:
/* 014D90 8011F880 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014D94 8011F884 0C045807 */  jal         func_8011601C
/* 014D98 8011F888 00002825 */   move       $a1, $zero
/* 014D9C 8011F88C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014DA0 8011F890 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014DA4 8011F894 00001025 */  move        $v0, $zero
/* 014DA8 8011F898 03E00008 */  jr          $ra
/* 014DAC 8011F89C 00000000 */   nop

glabel func_8011F8A0 # 192
/* 014DB0 8011F8A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014DB4 8011F8A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014DB8 8011F8A8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014DBC 8011F8AC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014DC0 8011F8B0 0C04582D */  jal         func_801160B4
/* 014DC4 8011F8B4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014DC8 8011F8B8 0C00BCE0 */  jal         func_8002F380
/* 014DCC 8011F8BC 00402025 */   move       $a0, $v0
/* 014DD0 8011F8C0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014DD4 8011F8C4 0C045807 */  jal         func_8011601C
/* 014DD8 8011F8C8 00402825 */   move       $a1, $v0
/* 014DDC 8011F8CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014DE0 8011F8D0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014DE4 8011F8D4 00001025 */  move        $v0, $zero
/* 014DE8 8011F8D8 03E00008 */  jr          $ra
/* 014DEC 8011F8DC 00000000 */   nop

glabel func_8011F8E0 # 193
/* 014DF0 8011F8E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014DF4 8011F8E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014DF8 8011F8E8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014DFC 8011F8EC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014E00 8011F8F0 0C04582D */  jal         func_801160B4
/* 014E04 8011F8F4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014E08 8011F8F8 0C046423 */  jal         func_8011908C
/* 014E0C 8011F8FC 00402025 */   move       $a0, $v0
/* 014E10 8011F900 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014E14 8011F904 0C045807 */  jal         func_8011601C
/* 014E18 8011F908 00402825 */   move       $a1, $v0
/* 014E1C 8011F90C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014E20 8011F910 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014E24 8011F914 00001025 */  move        $v0, $zero
/* 014E28 8011F918 03E00008 */  jr          $ra
/* 014E2C 8011F91C 00000000 */   nop

glabel func_8011F920 # 194
/* 014E30 8011F920 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014E34 8011F924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014E38 8011F928 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014E3C 8011F92C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014E40 8011F930 0C04582D */  jal         func_801160B4
/* 014E44 8011F934 AFA40024 */   sw         $a0, 0x24($sp)
/* 014E48 8011F938 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014E4C 8011F93C 0C04582D */  jal         func_801160B4
/* 014E50 8011F940 8FA40024 */   lw         $a0, 0x24($sp)
/* 014E54 8011F944 00402025 */  move        $a0, $v0
/* 014E58 8011F948 0C046437 */  jal         func_801190DC
/* 014E5C 8011F94C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014E60 8011F950 8FA40024 */  lw          $a0, 0x24($sp)
/* 014E64 8011F954 0C045807 */  jal         func_8011601C
/* 014E68 8011F958 00402825 */   move       $a1, $v0
/* 014E6C 8011F95C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014E70 8011F960 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014E74 8011F964 00001025 */  move        $v0, $zero
/* 014E78 8011F968 03E00008 */  jr          $ra
/* 014E7C 8011F96C 00000000 */   nop

glabel func_8011F970 # 195
/* 014E80 8011F970 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014E84 8011F974 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014E88 8011F978 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014E8C 8011F97C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014E90 8011F980 0C045813 */  jal         func_8011604C
/* 014E94 8011F984 8C850010 */   lw         $a1, 0x10($a0)
/* 014E98 8011F988 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014E9C 8011F98C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014EA0 8011F990 00001025 */  move        $v0, $zero
/* 014EA4 8011F994 03E00008 */  jr          $ra
/* 014EA8 8011F998 00000000 */   nop

glabel func_8011F99C # 196
/* 014EAC 8011F99C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 014EB0 8011F9A0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 014EB4 8011F9A4 AFB00018 */  sw          $s0, 0x18($sp)
/* 014EB8 8011F9A8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014EBC 8011F9AC 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014EC0 8011F9B0 0C045837 */  jal         func_801160DC
/* 014EC4 8011F9B4 02002025 */   move       $a0, $s0
/* 014EC8 8011F9B8 E7A00020 */  swc1        $f0, 0x20($sp)
/* 014ECC 8011F9BC 0C045837 */  jal         func_801160DC
/* 014ED0 8011F9C0 02002025 */   move       $a0, $s0
/* 014ED4 8011F9C4 E7A00024 */  swc1        $f0, 0x24($sp)
/* 014ED8 8011F9C8 0C045837 */  jal         func_801160DC
/* 014EDC 8011F9CC 02002025 */   move       $a0, $s0
/* 014EE0 8011F9D0 46000306 */  mov.s       $f12, $f0
/* 014EE4 8011F9D4 C7AE0024 */  lwc1        $f14, 0x24($sp)
/* 014EE8 8011F9D8 8FA60020 */  lw          $a2, 0x20($sp)
/* 014EEC 8011F9DC 0C042F10 */  jal         func_8010BC40
/* 014EF0 8011F9E0 00003825 */   move       $a3, $zero
/* 014EF4 8011F9E4 44050000 */  mfc1        $a1, $f0
/* 014EF8 8011F9E8 0C045813 */  jal         func_8011604C
/* 014EFC 8011F9EC 02002025 */   move       $a0, $s0
/* 014F00 8011F9F0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 014F04 8011F9F4 8FB00018 */  lw          $s0, 0x18($sp)
/* 014F08 8011F9F8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 014F0C 8011F9FC 03E00008 */  jr          $ra
/* 014F10 8011FA00 00001025 */   move       $v0, $zero

glabel func_8011FA04 # 197
/* 014F14 8011FA04 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014F18 8011FA08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014F1C 8011FA0C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014F20 8011FA10 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014F24 8011FA14 0C04582D */  jal         func_801160B4
/* 014F28 8011FA18 AFA40024 */   sw         $a0, 0x24($sp)
/* 014F2C 8011FA1C AFA2001C */  sw          $v0, 0x1c($sp)
/* 014F30 8011FA20 0C04582D */  jal         func_801160B4
/* 014F34 8011FA24 8FA40024 */   lw         $a0, 0x24($sp)
/* 014F38 8011FA28 00402025 */  move        $a0, $v0
/* 014F3C 8011FA2C 0C0451E2 */  jal         func_80114788
/* 014F40 8011FA30 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014F44 8011FA34 8FA40024 */  lw          $a0, 0x24($sp)
/* 014F48 8011FA38 0C045807 */  jal         func_8011601C
/* 014F4C 8011FA3C 00402825 */   move       $a1, $v0
/* 014F50 8011FA40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014F54 8011FA44 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014F58 8011FA48 00001025 */  move        $v0, $zero
/* 014F5C 8011FA4C 03E00008 */  jr          $ra
/* 014F60 8011FA50 00000000 */   nop

glabel func_8011FA54 # 198
/* 014F64 8011FA54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014F68 8011FA58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014F6C 8011FA5C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014F70 8011FA60 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014F74 8011FA64 0C04582D */  jal         func_801160B4
/* 014F78 8011FA68 AFA40024 */   sw         $a0, 0x24($sp)
/* 014F7C 8011FA6C AFA2001C */  sw          $v0, 0x1c($sp)
/* 014F80 8011FA70 0C04582D */  jal         func_801160B4
/* 014F84 8011FA74 8FA40024 */   lw         $a0, 0x24($sp)
/* 014F88 8011FA78 00402025 */  move        $a0, $v0
/* 014F8C 8011FA7C 0C0451A9 */  jal         func_801146A4
/* 014F90 8011FA80 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014F94 8011FA84 8FA40024 */  lw          $a0, 0x24($sp)
/* 014F98 8011FA88 0C045807 */  jal         func_8011601C
/* 014F9C 8011FA8C 00402825 */   move       $a1, $v0
/* 014FA0 8011FA90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014FA4 8011FA94 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014FA8 8011FA98 00001025 */  move        $v0, $zero
/* 014FAC 8011FA9C 03E00008 */  jr          $ra
/* 014FB0 8011FAA0 00000000 */   nop

glabel func_8011FAA4 # 199
/* 014FB4 8011FAA4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014FB8 8011FAA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014FBC 8011FAAC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014FC0 8011FAB0 00802825 */  move        $a1, $a0
/* 014FC4 8011FAB4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014FC8 8011FAB8 AFA50020 */  sw          $a1, 0x20($sp)
/* 014FCC 8011FABC 0C04582D */  jal         func_801160B4
/* 014FD0 8011FAC0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014FD4 8011FAC4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014FD8 8011FAC8 10400006 */  beq         $v0, $zero, .L8011FAE4
/* 014FDC 8011FACC 8FA50020 */   lw         $a1, 0x20($sp)
/* 014FE0 8011FAD0 8CA20054 */  lw          $v0, 0x54($a1)
/* 014FE4 8011FAD4 944F01E8 */  lhu         $t7, 0x1e8($v0)
/* 014FE8 8011FAD8 35F80001 */  ori         $t8, $t7, 0x1
/* 014FEC 8011FADC 10000005 */  b           .L8011FAF4
/* 014FF0 8011FAE0 A45801E8 */   sh         $t8, 0x1e8($v0)
.L8011FAE4:
/* 014FF4 8011FAE4 8CA20054 */  lw          $v0, 0x54($a1)
/* 014FF8 8011FAE8 945901E8 */  lhu         $t9, 0x1e8($v0)
/* 014FFC 8011FAEC 3328FFFE */  andi        $t0, $t9, 0xfffe
/* 015000 8011FAF0 A44801E8 */  sh          $t0, 0x1e8($v0)
.L8011FAF4:
/* 015004 8011FAF4 0C045807 */  jal         func_8011601C
/* 015008 8011FAF8 00002825 */   move       $a1, $zero
/* 01500C 8011FAFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015010 8011FB00 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015014 8011FB04 00001025 */  move        $v0, $zero
/* 015018 8011FB08 03E00008 */  jr          $ra
/* 01501C 8011FB0C 00000000 */   nop

glabel func_8011FB10 # 200
/* 015020 8011FB10 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015024 8011FB14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015028 8011FB18 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01502C 8011FB1C 00802825 */  move        $a1, $a0
/* 015030 8011FB20 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015034 8011FB24 AFA50020 */  sw          $a1, 0x20($sp)
/* 015038 8011FB28 0C04582D */  jal         func_801160B4
/* 01503C 8011FB2C AFA4001C */   sw         $a0, 0x1c($sp)
/* 015040 8011FB30 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015044 8011FB34 10400006 */  beq         $v0, $zero, .L8011FB50
/* 015048 8011FB38 8FA50020 */   lw         $a1, 0x20($sp)
/* 01504C 8011FB3C 8CA20054 */  lw          $v0, 0x54($a1)
/* 015050 8011FB40 944F01E8 */  lhu         $t7, 0x1e8($v0)
/* 015054 8011FB44 35F80004 */  ori         $t8, $t7, 0x4
/* 015058 8011FB48 10000005 */  b           .L8011FB60
/* 01505C 8011FB4C A45801E8 */   sh         $t8, 0x1e8($v0)
.L8011FB50:
/* 015060 8011FB50 8CA20054 */  lw          $v0, 0x54($a1)
/* 015064 8011FB54 945901E8 */  lhu         $t9, 0x1e8($v0)
/* 015068 8011FB58 3328FFFB */  andi        $t0, $t9, 0xfffb
/* 01506C 8011FB5C A44801E8 */  sh          $t0, 0x1e8($v0)
.L8011FB60:
/* 015070 8011FB60 0C045807 */  jal         func_8011601C
/* 015074 8011FB64 00002825 */   move       $a1, $zero
/* 015078 8011FB68 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01507C 8011FB6C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015080 8011FB70 00001025 */  move        $v0, $zero
/* 015084 8011FB74 03E00008 */  jr          $ra
/* 015088 8011FB78 00000000 */   nop

glabel func_8011FB7C # 201
/* 01508C 8011FB7C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 015090 8011FB80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015094 8011FB84 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015098 8011FB88 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01509C 8011FB8C 0C04582D */  jal         func_801160B4
/* 0150A0 8011FB90 AFA40024 */   sw         $a0, 0x24($sp)
/* 0150A4 8011FB94 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0150A8 8011FB98 0C04582D */  jal         func_801160B4
/* 0150AC 8011FB9C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0150B0 8011FBA0 00402025 */  move        $a0, $v0
/* 0150B4 8011FBA4 0C0451F9 */  jal         func_801147E4
/* 0150B8 8011FBA8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0150BC 8011FBAC 8FA40024 */  lw          $a0, 0x24($sp)
/* 0150C0 8011FBB0 0C045807 */  jal         func_8011601C
/* 0150C4 8011FBB4 00402825 */   move       $a1, $v0
/* 0150C8 8011FBB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0150CC 8011FBBC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0150D0 8011FBC0 00001025 */  move        $v0, $zero
/* 0150D4 8011FBC4 03E00008 */  jr          $ra
/* 0150D8 8011FBC8 00000000 */   nop

glabel func_8011FBCC # 202
/* 0150DC 8011FBCC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0150E0 8011FBD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0150E4 8011FBD4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0150E8 8011FBD8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0150EC 8011FBDC 0C045837 */  jal         func_801160DC
/* 0150F0 8011FBE0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0150F4 8011FBE4 0C00050C */  jal         func_80001430
/* 0150F8 8011FBE8 46000306 */   mov.s      $f12, $f0
/* 0150FC 8011FBEC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015100 8011FBF0 0C045807 */  jal         func_8011601C
/* 015104 8011FBF4 00002825 */   move       $a1, $zero
/* 015108 8011FBF8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01510C 8011FBFC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015110 8011FC00 00001025 */  move        $v0, $zero
/* 015114 8011FC04 03E00008 */  jr          $ra
/* 015118 8011FC08 00000000 */   nop

glabel func_8011FC0C # 203
/* 01511C 8011FC0C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015120 8011FC10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015124 8011FC14 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015128 8011FC18 2404000C */  addiu       $a0, $zero, 0xc
/* 01512C 8011FC1C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 015130 8011FC20 0C002CB2 */  jal         func_8000B2C8
/* 015134 8011FC24 AFAF001C */   sw         $t7, 0x1c($sp)
/* 015138 8011FC28 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01513C 8011FC2C 0C045807 */  jal         func_8011601C
/* 015140 8011FC30 00002825 */   move       $a1, $zero
/* 015144 8011FC34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015148 8011FC38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01514C 8011FC3C 24020001 */  addiu       $v0, $zero, 0x1
/* 015150 8011FC40 03E00008 */  jr          $ra
/* 015154 8011FC44 00000000 */   nop

glabel func_8011FC48 # 204
/* 015158 8011FC48 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01515C 8011FC4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015160 8011FC50 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015164 8011FC54 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015168 8011FC58 0C04582D */  jal         func_801160B4
/* 01516C 8011FC5C AFA4001C */   sw         $a0, 0x1c($sp)
/* 015170 8011FC60 3C01800B */  lui         $at, %hi(D_800AE50C)
/* 015174 8011FC64 AC22E50C */  sw          $v0, %lo(D_800AE50C)($at)
/* 015178 8011FC68 0C002CB2 */  jal         func_8000B2C8
/* 01517C 8011FC6C 24040007 */   addiu      $a0, $zero, 0x7
/* 015180 8011FC70 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015184 8011FC74 0C045807 */  jal         func_8011601C
/* 015188 8011FC78 00002825 */   move       $a1, $zero
/* 01518C 8011FC7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015190 8011FC80 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015194 8011FC84 24020001 */  addiu       $v0, $zero, 0x1
/* 015198 8011FC88 03E00008 */  jr          $ra
/* 01519C 8011FC8C 00000000 */   nop

glabel func_8011FC90 # 205
/* 0151A0 8011FC90 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0151A4 8011FC94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0151A8 8011FC98 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0151AC 8011FC9C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0151B0 8011FCA0 0C04582D */  jal         func_801160B4
/* 0151B4 8011FCA4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0151B8 8011FCA8 0C045300 */  jal         func_80114C00
/* 0151BC 8011FCAC 00402025 */   move       $a0, $v0
/* 0151C0 8011FCB0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0151C4 8011FCB4 0C045807 */  jal         func_8011601C
/* 0151C8 8011FCB8 00002825 */   move       $a1, $zero
/* 0151CC 8011FCBC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0151D0 8011FCC0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0151D4 8011FCC4 00001025 */  move        $v0, $zero
/* 0151D8 8011FCC8 03E00008 */  jr          $ra
/* 0151DC 8011FCCC 00000000 */   nop

glabel func_8011FCD0 # 206
/* 0151E0 8011FCD0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0151E4 8011FCD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0151E8 8011FCD8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0151EC 8011FCDC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0151F0 8011FCE0 0C04582D */  jal         func_801160B4
/* 0151F4 8011FCE4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0151F8 8011FCE8 0C045320 */  jal         func_80114C80
/* 0151FC 8011FCEC 00402025 */   move       $a0, $v0
/* 015200 8011FCF0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015204 8011FCF4 0C045807 */  jal         func_8011601C
/* 015208 8011FCF8 00002825 */   move       $a1, $zero
/* 01520C 8011FCFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015210 8011FD00 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015214 8011FD04 00001025 */  move        $v0, $zero
/* 015218 8011FD08 03E00008 */  jr          $ra
/* 01521C 8011FD0C 00000000 */   nop

glabel func_8011FD10 # 207
/* 015220 8011FD10 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015224 8011FD14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015228 8011FD18 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01522C 8011FD1C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015230 8011FD20 0C04582D */  jal         func_801160B4
/* 015234 8011FD24 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015238 8011FD28 0C045332 */  jal         func_80114CC8
/* 01523C 8011FD2C 00402025 */   move       $a0, $v0
/* 015240 8011FD30 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015244 8011FD34 0C045807 */  jal         func_8011601C
/* 015248 8011FD38 00402825 */   move       $a1, $v0
/* 01524C 8011FD3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015250 8011FD40 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015254 8011FD44 00001025 */  move        $v0, $zero
/* 015258 8011FD48 03E00008 */  jr          $ra
/* 01525C 8011FD4C 00000000 */   nop

glabel func_8011FD50 # 208
/* 015260 8011FD50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015264 8011FD54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015268 8011FD58 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01526C 8011FD5C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015270 8011FD60 0C04582D */  jal         func_801160B4
/* 015274 8011FD64 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015278 8011FD68 AFA20018 */  sw          $v0, 0x18($sp)
/* 01527C 8011FD6C 0C04582D */  jal         func_801160B4
/* 015280 8011FD70 8FA4001C */   lw         $a0, 0x1c($sp)
/* 015284 8011FD74 00402025 */  move        $a0, $v0
/* 015288 8011FD78 0C045341 */  jal         func_80114D04
/* 01528C 8011FD7C 8FA50018 */   lw         $a1, 0x18($sp)
/* 015290 8011FD80 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015294 8011FD84 0C045807 */  jal         func_8011601C
/* 015298 8011FD88 00402825 */   move       $a1, $v0
/* 01529C 8011FD8C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0152A0 8011FD90 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0152A4 8011FD94 00001025 */  move        $v0, $zero
/* 0152A8 8011FD98 03E00008 */  jr          $ra
/* 0152AC 8011FD9C 00000000 */   nop

glabel func_8011FDA0 # 209
/* 0152B0 8011FDA0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0152B4 8011FDA4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0152B8 8011FDA8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0152BC 8011FDAC 3C05800F */  lui         $a1, %hi(D_800EF780)
/* 0152C0 8011FDB0 24A5F780 */  addiu       $a1, $a1, %lo(D_800EF780)
/* 0152C4 8011FDB4 0C045821 */  jal         func_80116084
/* 0152C8 8011FDB8 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0152CC 8011FDBC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0152D0 8011FDC0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0152D4 8011FDC4 00001025 */  move        $v0, $zero
/* 0152D8 8011FDC8 03E00008 */  jr          $ra
/* 0152DC 8011FDCC 00000000 */   nop

glabel func_8011FDD0 # 210
/* 0152E0 8011FDD0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0152E4 8011FDD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0152E8 8011FDD8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0152EC 8011FDDC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0152F0 8011FDE0 0C04582D */  jal         func_801160B4
/* 0152F4 8011FDE4 AFA40024 */   sw         $a0, 0x24($sp)
/* 0152F8 8011FDE8 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0152FC 8011FDEC 0C04582D */  jal         func_801160B4
/* 015300 8011FDF0 8FA40024 */   lw         $a0, 0x24($sp)
/* 015304 8011FDF4 00402025 */  move        $a0, $v0
/* 015308 8011FDF8 0C04539D */  jal         func_80114E74
/* 01530C 8011FDFC 8FA5001C */   lw         $a1, 0x1c($sp)
/* 015310 8011FE00 8FA40024 */  lw          $a0, 0x24($sp)
/* 015314 8011FE04 0C045821 */  jal         func_80116084
/* 015318 8011FE08 00402825 */   move       $a1, $v0
/* 01531C 8011FE0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015320 8011FE10 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015324 8011FE14 00001025 */  move        $v0, $zero
/* 015328 8011FE18 03E00008 */  jr          $ra
/* 01532C 8011FE1C 00000000 */   nop

glabel func_8011FE20 # 211
/* 015330 8011FE20 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 015334 8011FE24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015338 8011FE28 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01533C 8011FE2C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015340 8011FE30 0C04582D */  jal         func_801160B4
/* 015344 8011FE34 AFA40024 */   sw         $a0, 0x24($sp)
/* 015348 8011FE38 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01534C 8011FE3C 0C04582D */  jal         func_801160B4
/* 015350 8011FE40 8FA40024 */   lw         $a0, 0x24($sp)
/* 015354 8011FE44 00402025 */  move        $a0, $v0
/* 015358 8011FE48 0C0079A0 */  jal         func_8001E680
/* 01535C 8011FE4C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 015360 8011FE50 8FA40024 */  lw          $a0, 0x24($sp)
/* 015364 8011FE54 0C045821 */  jal         func_80116084
/* 015368 8011FE58 00402825 */   move       $a1, $v0
/* 01536C 8011FE5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015370 8011FE60 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015374 8011FE64 00001025 */  move        $v0, $zero
/* 015378 8011FE68 03E00008 */  jr          $ra
/* 01537C 8011FE6C 00000000 */   nop

glabel func_8011FE70 # 212
/* 015380 8011FE70 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015384 8011FE74 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015388 8011FE78 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01538C 8011FE7C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015390 8011FE80 0C04582D */  jal         func_801160B4
/* 015394 8011FE84 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015398 8011FE88 0C010323 */  jal         func_80040C8C
/* 01539C 8011FE8C 3044FFFF */   andi       $a0, $v0, 0xffff
/* 0153A0 8011FE90 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0153A4 8011FE94 0C045821 */  jal         func_80116084
/* 0153A8 8011FE98 00402825 */   move       $a1, $v0
/* 0153AC 8011FE9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0153B0 8011FEA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0153B4 8011FEA4 00001025 */  move        $v0, $zero
/* 0153B8 8011FEA8 03E00008 */  jr          $ra
/* 0153BC 8011FEAC 00000000 */   nop

glabel func_8011FEB0 # 213
/* 0153C0 8011FEB0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0153C4 8011FEB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0153C8 8011FEB8 AFA40020 */  sw          $a0, 0x20($sp)
/* 0153CC 8011FEBC 8C830054 */  lw          $v1, 0x54($a0)
/* 0153D0 8011FEC0 8C6401B8 */  lw          $a0, 0x1b8($v1)
/* 0153D4 8011FEC4 AFA3001C */  sw          $v1, 0x1c($sp)
/* 0153D8 8011FEC8 0C04582D */  jal         func_801160B4
/* 0153DC 8011FECC AFA40018 */   sw         $a0, 0x18($sp)
/* 0153E0 8011FED0 1040000A */  beq         $v0, $zero, .L8011FEFC
/* 0153E4 8011FED4 8FA3001C */   lw         $v1, 0x1c($sp)
/* 0153E8 8011FED8 8FA40020 */  lw          $a0, 0x20($sp)
/* 0153EC 8011FEDC 24050002 */  addiu       $a1, $zero, 0x2
/* 0153F0 8011FEE0 0C00237A */  jal         func_80008DE8
/* 0153F4 8011FEE4 AFA3001C */   sw         $v1, 0x1c($sp)
/* 0153F8 8011FEE8 8FA3001C */  lw          $v1, 0x1c($sp)
/* 0153FC 8011FEEC 946F01E8 */  lhu         $t7, 0x1e8($v1)
/* 015400 8011FEF0 35F80020 */  ori         $t8, $t7, 0x20
/* 015404 8011FEF4 10000004 */  b           .L8011FF08
/* 015408 8011FEF8 A47801E8 */   sh         $t8, 0x1e8($v1)
.L8011FEFC:
/* 01540C 8011FEFC 947901E8 */  lhu         $t9, 0x1e8($v1)
/* 015410 8011FF00 3328FFDF */  andi        $t0, $t9, 0xffdf
/* 015414 8011FF04 A46801E8 */  sh          $t0, 0x1e8($v1)
.L8011FF08:
/* 015418 8011FF08 8FA40018 */  lw          $a0, 0x18($sp)
/* 01541C 8011FF0C 0C045807 */  jal         func_8011601C
/* 015420 8011FF10 00002825 */   move       $a1, $zero
/* 015424 8011FF14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015428 8011FF18 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01542C 8011FF1C 00001025 */  move        $v0, $zero
/* 015430 8011FF20 03E00008 */  jr          $ra
/* 015434 8011FF24 00000000 */   nop

glabel func_8011FF28 # 214
/* 015438 8011FF28 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01543C 8011FF2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015440 8011FF30 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015444 8011FF34 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015448 8011FF38 0C04582D */  jal         func_801160B4
/* 01544C 8011FF3C AFA4001C */   sw         $a0, 0x1c($sp)
/* 015450 8011FF40 0C043A56 */  jal         func_8010E958
/* 015454 8011FF44 00402025 */   move       $a0, $v0
/* 015458 8011FF48 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01545C 8011FF4C 0C045821 */  jal         func_80116084
/* 015460 8011FF50 00402825 */   move       $a1, $v0
/* 015464 8011FF54 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015468 8011FF58 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01546C 8011FF5C 00001025 */  move        $v0, $zero
/* 015470 8011FF60 03E00008 */  jr          $ra
/* 015474 8011FF64 00000000 */   nop

glabel func_8011FF68 # 215
/* 015478 8011FF68 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01547C 8011FF6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015480 8011FF70 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015484 8011FF74 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015488 8011FF78 0C04582D */  jal         func_801160B4
/* 01548C 8011FF7C AFA4001C */   sw         $a0, 0x1c($sp)
/* 015490 8011FF80 0C043A5B */  jal         func_8010E96C
/* 015494 8011FF84 00402025 */   move       $a0, $v0
/* 015498 8011FF88 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01549C 8011FF8C 0C045821 */  jal         func_80116084
/* 0154A0 8011FF90 00402825 */   move       $a1, $v0
/* 0154A4 8011FF94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0154A8 8011FF98 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0154AC 8011FF9C 00001025 */  move        $v0, $zero
/* 0154B0 8011FFA0 03E00008 */  jr          $ra
/* 0154B4 8011FFA4 00000000 */   nop

glabel func_8011FFA8 # 216
/* 0154B8 8011FFA8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0154BC 8011FFAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0154C0 8011FFB0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0154C4 8011FFB4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0154C8 8011FFB8 0C04582D */  jal         func_801160B4
/* 0154CC 8011FFBC AFA4001C */   sw         $a0, 0x1c($sp)
/* 0154D0 8011FFC0 000278C0 */  sll         $t7, $v0, 3
/* 0154D4 8011FFC4 01E27823 */  subu        $t7, $t7, $v0
/* 0154D8 8011FFC8 000F7880 */  sll         $t7, $t7, 2
/* 0154DC 8011FFCC 01E27821 */  addu        $t7, $t7, $v0
/* 0154E0 8011FFD0 000F7880 */  sll         $t7, $t7, 2
/* 0154E4 8011FFD4 3C058012 */  lui         $a1, %hi(D_80125A7E)
/* 0154E8 8011FFD8 00AF2821 */  addu        $a1, $a1, $t7
/* 0154EC 8011FFDC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0154F0 8011FFE0 0C045807 */  jal         func_8011601C
/* 0154F4 8011FFE4 84A55A7E */   lh         $a1, %lo(D_80125A7E)($a1)
/* 0154F8 8011FFE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0154FC 8011FFEC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015500 8011FFF0 00001025 */  move        $v0, $zero
/* 015504 8011FFF4 03E00008 */  jr          $ra
/* 015508 8011FFF8 00000000 */   nop

glabel func_8011FFFC # 217
/* 01550C 8011FFFC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015510 80120000 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015514 80120004 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015518 80120008 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01551C 8012000C 0C04582D */  jal         func_801160B4
/* 015520 80120010 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015524 80120014 000278C0 */  sll         $t7, $v0, 3
/* 015528 80120018 01E27823 */  subu        $t7, $t7, $v0
/* 01552C 8012001C 000F7880 */  sll         $t7, $t7, 2
/* 015530 80120020 01E27821 */  addu        $t7, $t7, $v0
/* 015534 80120024 000F7880 */  sll         $t7, $t7, 2
/* 015538 80120028 3C058012 */  lui         $a1, %hi(D_80125AAC)
/* 01553C 8012002C 00AF2821 */  addu        $a1, $a1, $t7
/* 015540 80120030 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015544 80120034 0C045807 */  jal         func_8011601C
/* 015548 80120038 8CA55AAC */   lw         $a1, %lo(D_80125AAC)($a1)
/* 01554C 8012003C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015550 80120040 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015554 80120044 00001025 */  move        $v0, $zero
/* 015558 80120048 03E00008 */  jr          $ra
/* 01555C 8012004C 00000000 */   nop

glabel func_80120050 # 218
/* 015560 80120050 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 015564 80120054 AFBF001C */  sw          $ra, 0x1c($sp)
/* 015568 80120058 AFB00018 */  sw          $s0, 0x18($sp)
/* 01556C 8012005C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015570 80120060 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015574 80120064 0C04582D */  jal         func_801160B4
/* 015578 80120068 02002025 */   move       $a0, $s0
/* 01557C 8012006C AFA20020 */  sw          $v0, 0x20($sp)
/* 015580 80120070 0C04582D */  jal         func_801160B4
/* 015584 80120074 02002025 */   move       $a0, $s0
/* 015588 80120078 AFA20024 */  sw          $v0, 0x24($sp)
/* 01558C 8012007C 0C04582D */  jal         func_801160B4
/* 015590 80120080 02002025 */   move       $a0, $s0
/* 015594 80120084 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 015598 80120088 8C8460A8 */  lw          $a0, %lo(D_800760A8)($a0)
/* 01559C 8012008C 00402825 */  move        $a1, $v0
/* 0155A0 80120090 8FA60024 */  lw          $a2, 0x24($sp)
/* 0155A4 80120094 0C046484 */  jal         func_80119210
/* 0155A8 80120098 8FA70020 */   lw         $a3, 0x20($sp)
/* 0155AC 8012009C 02002025 */  move        $a0, $s0
/* 0155B0 801200A0 0C045807 */  jal         func_8011601C
/* 0155B4 801200A4 00002825 */   move       $a1, $zero
/* 0155B8 801200A8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0155BC 801200AC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0155C0 801200B0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0155C4 801200B4 03E00008 */  jr          $ra
/* 0155C8 801200B8 00001025 */   move       $v0, $zero

glabel func_801200BC # 219
/* 0155CC 801200BC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0155D0 801200C0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0155D4 801200C4 AFB00020 */  sw          $s0, 0x20($sp)
/* 0155D8 801200C8 AFA40038 */  sw          $a0, 0x38($sp)
/* 0155DC 801200CC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0155E0 801200D0 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 0155E4 801200D4 0C045837 */  jal         func_801160DC
/* 0155E8 801200D8 02002025 */   move       $a0, $s0
/* 0155EC 801200DC E7A00030 */  swc1        $f0, 0x30($sp)
/* 0155F0 801200E0 0C04582D */  jal         func_801160B4
/* 0155F4 801200E4 02002025 */   move       $a0, $s0
/* 0155F8 801200E8 A3A2002C */  sb          $v0, 0x2c($sp)
/* 0155FC 801200EC 0C04582D */  jal         func_801160B4
/* 015600 801200F0 02002025 */   move       $a0, $s0
/* 015604 801200F4 A3A2002D */  sb          $v0, 0x2d($sp)
/* 015608 801200F8 0C04582D */  jal         func_801160B4
/* 01560C 801200FC 02002025 */   move       $a0, $s0
/* 015610 80120100 A3A2002E */  sb          $v0, 0x2e($sp)
/* 015614 80120104 0C04582D */  jal         func_801160B4
/* 015618 80120108 02002025 */   move       $a0, $s0
/* 01561C 8012010C 93B8002C */  lbu         $t8, 0x2c($sp)
/* 015620 80120110 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 015624 80120114 8FA40038 */  lw          $a0, 0x38($sp)
/* 015628 80120118 304500FF */  andi        $a1, $v0, 0xff
/* 01562C 8012011C 93A6002E */  lbu         $a2, 0x2e($sp)
/* 015630 80120120 93A7002D */  lbu         $a3, 0x2d($sp)
/* 015634 80120124 AFB80010 */  sw          $t8, 0x10($sp)
/* 015638 80120128 0C005562 */  jal         func_80015588
/* 01563C 8012012C E7A40014 */   swc1       $f4, 0x14($sp)
/* 015640 80120130 02002025 */  move        $a0, $s0
/* 015644 80120134 0C045807 */  jal         func_8011601C
/* 015648 80120138 00002825 */   move       $a1, $zero
/* 01564C 8012013C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015650 80120140 8FB00020 */  lw          $s0, 0x20($sp)
/* 015654 80120144 27BD0038 */  addiu       $sp, $sp, 0x38
/* 015658 80120148 03E00008 */  jr          $ra
/* 01565C 8012014C 00001025 */   move       $v0, $zero

glabel func_80120150 # 220
/* 015660 80120150 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 015664 80120154 AFBF0024 */  sw          $ra, 0x24($sp)
/* 015668 80120158 AFB00020 */  sw          $s0, 0x20($sp)
/* 01566C 8012015C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015670 80120160 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015674 80120164 0C045837 */  jal         func_801160DC
/* 015678 80120168 02002025 */   move       $a0, $s0
/* 01567C 8012016C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 015680 80120170 0C04582D */  jal         func_801160B4
/* 015684 80120174 02002025 */   move       $a0, $s0
/* 015688 80120178 AFA20034 */  sw          $v0, 0x34($sp)
/* 01568C 8012017C 0C045837 */  jal         func_801160DC
/* 015690 80120180 02002025 */   move       $a0, $s0
/* 015694 80120184 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015698 80120188 0C04582D */  jal         func_801160B4
/* 01569C 8012018C 02002025 */   move       $a0, $s0
/* 0156A0 80120190 AFA20038 */  sw          $v0, 0x38($sp)
/* 0156A4 80120194 0C045837 */  jal         func_801160DC
/* 0156A8 80120198 02002025 */   move       $a0, $s0
/* 0156AC 8012019C E7A00044 */  swc1        $f0, 0x44($sp)
/* 0156B0 801201A0 0C045837 */  jal         func_801160DC
/* 0156B4 801201A4 02002025 */   move       $a0, $s0
/* 0156B8 801201A8 E7A00040 */  swc1        $f0, 0x40($sp)
/* 0156BC 801201AC 0C045837 */  jal         func_801160DC
/* 0156C0 801201B0 02002025 */   move       $a0, $s0
/* 0156C4 801201B4 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 0156C8 801201B8 0C04582D */  jal         func_801160B4
/* 0156CC 801201BC 02002025 */   move       $a0, $s0
/* 0156D0 801201C0 8FAF0034 */  lw          $t7, 0x34($sp)
/* 0156D4 801201C4 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 0156D8 801201C8 00402025 */  move        $a0, $v0
/* 0156DC 801201CC 27A5003C */  addiu       $a1, $sp, 0x3c
/* 0156E0 801201D0 8FA60030 */  lw          $a2, 0x30($sp)
/* 0156E4 801201D4 8FA70038 */  lw          $a3, 0x38($sp)
/* 0156E8 801201D8 AFAF0010 */  sw          $t7, 0x10($sp)
/* 0156EC 801201DC 0C006503 */  jal         func_8001940C
/* 0156F0 801201E0 E7A40014 */   swc1       $f4, 0x14($sp)
/* 0156F4 801201E4 02002025 */  move        $a0, $s0
/* 0156F8 801201E8 0C045807 */  jal         func_8011601C
/* 0156FC 801201EC 00002825 */   move       $a1, $zero
/* 015700 801201F0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015704 801201F4 8FB00020 */  lw          $s0, 0x20($sp)
/* 015708 801201F8 27BD0050 */  addiu       $sp, $sp, 0x50
/* 01570C 801201FC 03E00008 */  jr          $ra
/* 015710 80120200 00001025 */   move       $v0, $zero

glabel func_80120204 # 221
/* 015714 80120204 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 015718 80120208 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01571C 8012020C AFB00018 */  sw          $s0, 0x18($sp)
/* 015720 80120210 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015724 80120214 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015728 80120218 0C045837 */  jal         func_801160DC
/* 01572C 8012021C 02002025 */   move       $a0, $s0
/* 015730 80120220 E7A00024 */  swc1        $f0, 0x24($sp)
/* 015734 80120224 0C045837 */  jal         func_801160DC
/* 015738 80120228 02002025 */   move       $a0, $s0
/* 01573C 8012022C E7A00028 */  swc1        $f0, 0x28($sp)
/* 015740 80120230 0C045837 */  jal         func_801160DC
/* 015744 80120234 02002025 */   move       $a0, $s0
/* 015748 80120238 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 01574C 8012023C 0C04582D */  jal         func_801160B4
/* 015750 80120240 02002025 */   move       $a0, $s0
/* 015754 80120244 00402025 */  move        $a0, $v0
/* 015758 80120248 8FA5002C */  lw          $a1, 0x2c($sp)
/* 01575C 8012024C 8FA60028 */  lw          $a2, 0x28($sp)
/* 015760 80120250 0C005E46 */  jal         func_80017918
/* 015764 80120254 8FA70024 */   lw         $a3, 0x24($sp)
/* 015768 80120258 02002025 */  move        $a0, $s0
/* 01576C 8012025C 0C045807 */  jal         func_8011601C
/* 015770 80120260 00002825 */   move       $a1, $zero
/* 015774 80120264 8FBF001C */  lw          $ra, 0x1c($sp)
/* 015778 80120268 8FB00018 */  lw          $s0, 0x18($sp)
/* 01577C 8012026C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 015780 80120270 03E00008 */  jr          $ra
/* 015784 80120274 00001025 */   move       $v0, $zero

glabel func_80120278 # 222
/* 015788 80120278 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01578C 8012027C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015790 80120280 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015794 80120284 3C05800A */  lui         $a1, %hi(D_80099960)
/* 015798 80120288 8CA59960 */  lw          $a1, %lo(D_80099960)($a1)
/* 01579C 8012028C 0C045807 */  jal         func_8011601C
/* 0157A0 80120290 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0157A4 80120294 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0157A8 80120298 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0157AC 8012029C 00001025 */  move        $v0, $zero
/* 0157B0 801202A0 03E00008 */  jr          $ra
/* 0157B4 801202A4 00000000 */   nop

glabel func_801202A8 # 223
/* 0157B8 801202A8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0157BC 801202AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0157C0 801202B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0157C4 801202B4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0157C8 801202B8 0C04582D */  jal         func_801160B4
/* 0157CC 801202BC AFA40024 */   sw         $a0, 0x24($sp)
/* 0157D0 801202C0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0157D4 801202C4 0C04582D */  jal         func_801160B4
/* 0157D8 801202C8 8FA40024 */   lw         $a0, 0x24($sp)
/* 0157DC 801202CC 00402025 */  move        $a0, $v0
/* 0157E0 801202D0 0C00CB1C */  jal         func_80032C70
/* 0157E4 801202D4 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0157E8 801202D8 8FA40024 */  lw          $a0, 0x24($sp)
/* 0157EC 801202DC 0C045807 */  jal         func_8011601C
/* 0157F0 801202E0 00402825 */   move       $a1, $v0
/* 0157F4 801202E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0157F8 801202E8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0157FC 801202EC 00001025 */  move        $v0, $zero
/* 015800 801202F0 03E00008 */  jr          $ra
/* 015804 801202F4 00000000 */   nop

glabel func_801202F8 # 224
/* 015808 801202F8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01580C 801202FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 015810 80120300 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015814 80120304 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015818 80120308 0C04582D */  jal         func_801160B4
/* 01581C 8012030C AFA40024 */   sw         $a0, 0x24($sp)
/* 015820 80120310 AFA2001C */  sw          $v0, 0x1c($sp)
/* 015824 80120314 0C04582D */  jal         func_801160B4
/* 015828 80120318 8FA40024 */   lw         $a0, 0x24($sp)
/* 01582C 8012031C 00402025 */  move        $a0, $v0
/* 015830 80120320 0C00CB11 */  jal         func_80032C44
/* 015834 80120324 8FA5001C */   lw         $a1, 0x1c($sp)
/* 015838 80120328 8FA40024 */  lw          $a0, 0x24($sp)
/* 01583C 8012032C 0C045807 */  jal         func_8011601C
/* 015840 80120330 00402825 */   move       $a1, $v0
/* 015844 80120334 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015848 80120338 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01584C 8012033C 00001025 */  move        $v0, $zero
/* 015850 80120340 03E00008 */  jr          $ra
/* 015854 80120344 00000000 */   nop

glabel func_80120348 # 225
/* 015858 80120348 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01585C 8012034C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015860 80120350 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015864 80120354 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015868 80120358 0C04582D */  jal         func_801160B4
/* 01586C 8012035C AFA4001C */   sw         $a0, 0x1c($sp)
/* 015870 80120360 0C00CB07 */  jal         func_80032C1C
/* 015874 80120364 00402025 */   move       $a0, $v0
/* 015878 80120368 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01587C 8012036C 0C045807 */  jal         func_8011601C
/* 015880 80120370 00402825 */   move       $a1, $v0
/* 015884 80120374 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015888 80120378 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01588C 8012037C 00001025 */  move        $v0, $zero
/* 015890 80120380 03E00008 */  jr          $ra
/* 015894 80120384 00000000 */   nop

glabel func_80120388 # 226
/* 015898 80120388 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01589C 8012038C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0158A0 80120390 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0158A4 80120394 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0158A8 80120398 0C04582D */  jal         func_801160B4
/* 0158AC 8012039C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0158B0 801203A0 0C00CAFD */  jal         func_80032BF4
/* 0158B4 801203A4 00402025 */   move       $a0, $v0
/* 0158B8 801203A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0158BC 801203AC 0C045807 */  jal         func_8011601C
/* 0158C0 801203B0 00402825 */   move       $a1, $v0
/* 0158C4 801203B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0158C8 801203B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0158CC 801203BC 00001025 */  move        $v0, $zero
/* 0158D0 801203C0 03E00008 */  jr          $ra
/* 0158D4 801203C4 00000000 */   nop

glabel func_801203C8 # 227
/* 0158D8 801203C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0158DC 801203CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0158E0 801203D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0158E4 801203D4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0158E8 801203D8 0C04582D */  jal         func_801160B4
/* 0158EC 801203DC AFA4001C */   sw         $a0, 0x1c($sp)
/* 0158F0 801203E0 0C00CAF3 */  jal         func_80032BCC
/* 0158F4 801203E4 00402025 */   move       $a0, $v0
/* 0158F8 801203E8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0158FC 801203EC 0C045807 */  jal         func_8011601C
/* 015900 801203F0 00402825 */   move       $a1, $v0
/* 015904 801203F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015908 801203F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01590C 801203FC 00001025 */  move        $v0, $zero
/* 015910 80120400 03E00008 */  jr          $ra
/* 015914 80120404 00000000 */   nop

glabel func_80120408 # 228
/* 015918 80120408 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01591C 8012040C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015920 80120410 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015924 80120414 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015928 80120418 0C04582D */  jal         func_801160B4
/* 01592C 8012041C AFA40024 */   sw         $a0, 0x24($sp)
/* 015930 80120420 AFA2001C */  sw          $v0, 0x1c($sp)
/* 015934 80120424 0C04582D */  jal         func_801160B4
/* 015938 80120428 8FA40024 */   lw         $a0, 0x24($sp)
/* 01593C 8012042C 00402025 */  move        $a0, $v0
/* 015940 80120430 0C007092 */  jal         func_8001C248
/* 015944 80120434 8FA5001C */   lw         $a1, 0x1c($sp)
/* 015948 80120438 8FA40024 */  lw          $a0, 0x24($sp)
/* 01594C 8012043C 0C045807 */  jal         func_8011601C
/* 015950 80120440 00002825 */   move       $a1, $zero
/* 015954 80120444 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015958 80120448 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01595C 8012044C 00001025 */  move        $v0, $zero
/* 015960 80120450 03E00008 */  jr          $ra
/* 015964 80120454 00000000 */   nop

glabel func_80120458 # 229
/* 015968 80120458 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01596C 8012045C AFBF0024 */  sw          $ra, 0x24($sp)
/* 015970 80120460 AFB00020 */  sw          $s0, 0x20($sp)
/* 015974 80120464 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015978 80120468 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 01597C 8012046C 0C045837 */  jal         func_801160DC
/* 015980 80120470 02002025 */   move       $a0, $s0
/* 015984 80120474 E7A00038 */  swc1        $f0, 0x38($sp)
/* 015988 80120478 0C04582D */  jal         func_801160B4
/* 01598C 8012047C 02002025 */   move       $a0, $s0
/* 015990 80120480 AFA20028 */  sw          $v0, 0x28($sp)
/* 015994 80120484 0C04582D */  jal         func_801160B4
/* 015998 80120488 02002025 */   move       $a0, $s0
/* 01599C 8012048C AFA2002C */  sw          $v0, 0x2c($sp)
/* 0159A0 80120490 0C04582D */  jal         func_801160B4
/* 0159A4 80120494 02002025 */   move       $a0, $s0
/* 0159A8 80120498 AFA20030 */  sw          $v0, 0x30($sp)
/* 0159AC 8012049C 0C04582D */  jal         func_801160B4
/* 0159B0 801204A0 02002025 */   move       $a0, $s0
/* 0159B4 801204A4 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 0159B8 801204A8 00402025 */  move        $a0, $v0
/* 0159BC 801204AC 8FA50030 */  lw          $a1, 0x30($sp)
/* 0159C0 801204B0 8FA6002C */  lw          $a2, 0x2c($sp)
/* 0159C4 801204B4 8FA70028 */  lw          $a3, 0x28($sp)
/* 0159C8 801204B8 0C000567 */  jal         func_8000159C
/* 0159CC 801204BC E7A40010 */   swc1       $f4, 0x10($sp)
/* 0159D0 801204C0 02002025 */  move        $a0, $s0
/* 0159D4 801204C4 0C045807 */  jal         func_8011601C
/* 0159D8 801204C8 00002825 */   move       $a1, $zero
/* 0159DC 801204CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0159E0 801204D0 8FB00020 */  lw          $s0, 0x20($sp)
/* 0159E4 801204D4 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0159E8 801204D8 03E00008 */  jr          $ra
/* 0159EC 801204DC 00001025 */   move       $v0, $zero

glabel func_801204E0 # 230
/* 0159F0 801204E0 3C01800B */  lui         $at, %hi(D_800ABDC0)
/* 0159F4 801204E4 C426BDC0 */  lwc1        $f6, %lo(D_800ABDC0)($at)
/* 0159F8 801204E8 44802800 */  mtc1        $zero, $f5
/* 0159FC 801204EC 44802000 */  mtc1        $zero, $f4
/* 015A00 801204F0 46003221 */  cvt.d.s     $f8, $f6
/* 015A04 801204F4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015A08 801204F8 46282032 */  c.eq.d      $f4, $f8
/* 015A0C 801204FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 015A10 80120500 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015A14 80120504 00002825 */  move        $a1, $zero
/* 015A18 80120508 45000006 */  bc1f        .L80120524
/* 015A1C 8012050C 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 015A20 80120510 00C02025 */  move        $a0, $a2
/* 015A24 80120514 0C045807 */  jal         func_8011601C
/* 015A28 80120518 24050001 */   addiu      $a1, $zero, 0x1
/* 015A2C 8012051C 10000004 */  b           .L80120530
/* 015A30 80120520 8FBF0014 */   lw         $ra, 0x14($sp)
.L80120524:
/* 015A34 80120524 0C045807 */  jal         func_8011601C
/* 015A38 80120528 00C02025 */   move       $a0, $a2
/* 015A3C 8012052C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80120530:
/* 015A40 80120530 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015A44 80120534 00001025 */  move        $v0, $zero
/* 015A48 80120538 03E00008 */  jr          $ra
/* 015A4C 8012053C 00000000 */   nop

glabel func_80120540 # 231
/* 015A50 80120540 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015A54 80120544 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015A58 80120548 8C820054 */  lw          $v0, 0x54($a0)
/* 015A5C 8012054C 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 015A60 80120550 0C045807 */  jal         func_8011601C
/* 015A64 80120554 8C450238 */   lw         $a1, 0x238($v0)
/* 015A68 80120558 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015A6C 8012055C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015A70 80120560 00001025 */  move        $v0, $zero
/* 015A74 80120564 03E00008 */  jr          $ra
/* 015A78 80120568 00000000 */   nop

glabel func_8012056C # 232
/* 015A7C 8012056C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015A80 80120570 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015A84 80120574 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015A88 80120578 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015A8C 8012057C 0C04582D */  jal         func_801160B4
/* 015A90 80120580 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015A94 80120584 0C001FA3 */  jal         func_80007E8C
/* 015A98 80120588 00402025 */   move       $a0, $v0
/* 015A9C 8012058C 10400007 */  beq         $v0, $zero, .L801205AC
/* 015AA0 80120590 8FA6001C */   lw         $a2, 0x1c($sp)
/* 015AA4 80120594 8C4F0054 */  lw          $t7, 0x54($v0)
/* 015AA8 80120598 00C02025 */  move        $a0, $a2
/* 015AAC 8012059C 0C045807 */  jal         func_8011601C
/* 015AB0 801205A0 8DE50238 */   lw         $a1, 0x238($t7)
/* 015AB4 801205A4 10000005 */  b           .L801205BC
/* 015AB8 801205A8 8FBF0014 */   lw         $ra, 0x14($sp)
.L801205AC:
/* 015ABC 801205AC 00C02025 */  move        $a0, $a2
/* 015AC0 801205B0 0C045807 */  jal         func_8011601C
/* 015AC4 801205B4 2405FFFF */   addiu      $a1, $zero, -0x1
/* 015AC8 801205B8 8FBF0014 */  lw          $ra, 0x14($sp)
.L801205BC:
/* 015ACC 801205BC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015AD0 801205C0 00001025 */  move        $v0, $zero
/* 015AD4 801205C4 03E00008 */  jr          $ra
/* 015AD8 801205C8 00000000 */   nop

glabel func_801205CC # 233
/* 015ADC 801205CC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 015AE0 801205D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 015AE4 801205D4 AFB00018 */  sw          $s0, 0x18($sp)
/* 015AE8 801205D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015AEC 801205DC 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015AF0 801205E0 0C045837 */  jal         func_801160DC
/* 015AF4 801205E4 02002025 */   move       $a0, $s0
/* 015AF8 801205E8 E7A00020 */  swc1        $f0, 0x20($sp)
/* 015AFC 801205EC 0C045837 */  jal         func_801160DC
/* 015B00 801205F0 02002025 */   move       $a0, $s0
/* 015B04 801205F4 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 015B08 801205F8 0C045837 */  jal         func_801160DC
/* 015B0C 801205FC 02002025 */   move       $a0, $s0
/* 015B10 80120600 E7A00028 */  swc1        $f0, 0x28($sp)
/* 015B14 80120604 0C045837 */  jal         func_801160DC
/* 015B18 80120608 02002025 */   move       $a0, $s0
/* 015B1C 8012060C E7A00024 */  swc1        $f0, 0x24($sp)
/* 015B20 80120610 0C045837 */  jal         func_801160DC
/* 015B24 80120614 02002025 */   move       $a0, $s0
/* 015B28 80120618 E7A00038 */  swc1        $f0, 0x38($sp)
/* 015B2C 8012061C 0C045837 */  jal         func_801160DC
/* 015B30 80120620 02002025 */   move       $a0, $s0
/* 015B34 80120624 E7A00034 */  swc1        $f0, 0x34($sp)
/* 015B38 80120628 0C045837 */  jal         func_801160DC
/* 015B3C 8012062C 02002025 */   move       $a0, $s0
/* 015B40 80120630 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015B44 80120634 27A40030 */  addiu       $a0, $sp, 0x30
/* 015B48 80120638 27A50024 */  addiu       $a1, $sp, 0x24
/* 015B4C 8012063C 0C0449A6 */  jal         func_80112698
/* 015B50 80120640 8FA60020 */   lw         $a2, 0x20($sp)
/* 015B54 80120644 02002025 */  move        $a0, $s0
/* 015B58 80120648 0C045807 */  jal         func_8011601C
/* 015B5C 8012064C 00002825 */   move       $a1, $zero
/* 015B60 80120650 8FBF001C */  lw          $ra, 0x1c($sp)
/* 015B64 80120654 8FB00018 */  lw          $s0, 0x18($sp)
/* 015B68 80120658 27BD0040 */  addiu       $sp, $sp, 0x40
/* 015B6C 8012065C 03E00008 */  jr          $ra
/* 015B70 80120660 00001025 */   move       $v0, $zero

glabel func_80120664 # 234
/* 015B74 80120664 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015B78 80120668 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015B7C 8012066C 0C0459E8 */  jal         func_801167A0
/* 015B80 80120670 2405000E */   addiu      $a1, $zero, 0xe
/* 015B84 80120674 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015B88 80120678 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015B8C 8012067C 24020002 */  addiu       $v0, $zero, 0x2
/* 015B90 80120680 03E00008 */  jr          $ra
/* 015B94 80120684 00000000 */   nop

glabel func_80120688 # 235
/* 015B98 80120688 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 015B9C 8012068C AFBF001C */  sw          $ra, 0x1c($sp)
/* 015BA0 80120690 AFB00018 */  sw          $s0, 0x18($sp)
/* 015BA4 80120694 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015BA8 80120698 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015BAC 8012069C 0C04582D */  jal         func_801160B4
/* 015BB0 801206A0 02002025 */   move       $a0, $s0
/* 015BB4 801206A4 AFA20024 */  sw          $v0, 0x24($sp)
/* 015BB8 801206A8 0C04582D */  jal         func_801160B4
/* 015BBC 801206AC 02002025 */   move       $a0, $s0
/* 015BC0 801206B0 0C0462B3 */  jal         func_80118ACC
/* 015BC4 801206B4 00402025 */   move       $a0, $v0
/* 015BC8 801206B8 8FA40024 */  lw          $a0, 0x24($sp)
/* 015BCC 801206BC 0C0462B3 */  jal         func_80118ACC
/* 015BD0 801206C0 AFA20030 */   sw         $v0, 0x30($sp)
/* 015BD4 801206C4 8FA60030 */  lw          $a2, 0x30($sp)
/* 015BD8 801206C8 00402825 */  move        $a1, $v0
/* 015BDC 801206CC 02002025 */  move        $a0, $s0
/* 015BE0 801206D0 10C00003 */  beq         $a2, $zero, .L801206E0
/* 015BE4 801206D4 00000000 */   nop
/* 015BE8 801206D8 14400005 */  bne         $v0, $zero, .L801206F0
/* 015BEC 801206DC 00000000 */   nop
.L801206E0:
/* 015BF0 801206E0 0C045813 */  jal         func_8011604C
/* 015BF4 801206E4 3C05BF80 */   lui        $a1, 0xbf80
/* 015BF8 801206E8 10000007 */  b           .L80120708
/* 015BFC 801206EC 8FBF001C */   lw         $ra, 0x1c($sp)
.L801206F0:
/* 015C00 801206F0 0C00273D */  jal         func_80009CF4
/* 015C04 801206F4 00C02025 */   move       $a0, $a2
/* 015C08 801206F8 44050000 */  mfc1        $a1, $f0
/* 015C0C 801206FC 0C045813 */  jal         func_8011604C
/* 015C10 80120700 02002025 */   move       $a0, $s0
/* 015C14 80120704 8FBF001C */  lw          $ra, 0x1c($sp)
.L80120708:
/* 015C18 80120708 8FB00018 */  lw          $s0, 0x18($sp)
/* 015C1C 8012070C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 015C20 80120710 03E00008 */  jr          $ra
/* 015C24 80120714 00001025 */   move       $v0, $zero

glabel func_80120718 # 236
/* 015C28 80120718 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015C2C 8012071C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015C30 80120720 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015C34 80120724 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 015C38 80120728 0C00CEDB */  jal         func_80033B6C
/* 015C3C 8012072C AFAF001C */   sw         $t7, 0x1c($sp)
/* 015C40 80120730 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015C44 80120734 0C045807 */  jal         func_8011601C
/* 015C48 80120738 00402825 */   move       $a1, $v0
/* 015C4C 8012073C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015C50 80120740 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015C54 80120744 00001025 */  move        $v0, $zero
/* 015C58 80120748 03E00008 */  jr          $ra
/* 015C5C 8012074C 00000000 */   nop

glabel func_80120750 # 237
/* 015C60 80120750 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015C64 80120754 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015C68 80120758 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015C6C 8012075C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015C70 80120760 0C04582D */  jal         func_801160B4
/* 015C74 80120764 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015C78 80120768 00002025 */  move        $a0, $zero
/* 015C7C 8012076C 00402825 */  move        $a1, $v0
/* 015C80 80120770 0C00CE9C */  jal         func_80033A70
/* 015C84 80120774 00003025 */   move       $a2, $zero
/* 015C88 80120778 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015C8C 8012077C 0C045807 */  jal         func_8011601C
/* 015C90 80120780 00002825 */   move       $a1, $zero
/* 015C94 80120784 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015C98 80120788 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015C9C 8012078C 00001025 */  move        $v0, $zero
/* 015CA0 80120790 03E00008 */  jr          $ra
/* 015CA4 80120794 00000000 */   nop

glabel func_80120798 # 238
/* 015CA8 80120798 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015CAC 8012079C AFBF0014 */  sw          $ra, 0x14($sp)
/* 015CB0 801207A0 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015CB4 801207A4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015CB8 801207A8 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015CBC 801207AC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015CC0 801207B0 0C045813 */  jal         func_8011604C
/* 015CC4 801207B4 8DE50028 */   lw         $a1, 0x28($t7)
/* 015CC8 801207B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015CCC 801207BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015CD0 801207C0 00001025 */  move        $v0, $zero
/* 015CD4 801207C4 03E00008 */  jr          $ra
/* 015CD8 801207C8 00000000 */   nop

glabel func_801207CC # 239
/* 015CDC 801207CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015CE0 801207D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015CE4 801207D4 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015CE8 801207D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015CEC 801207DC 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015CF0 801207E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015CF4 801207E4 0C045813 */  jal         func_8011604C
/* 015CF8 801207E8 8DE50024 */   lw         $a1, 0x24($t7)
/* 015CFC 801207EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015D00 801207F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015D04 801207F4 00001025 */  move        $v0, $zero
/* 015D08 801207F8 03E00008 */  jr          $ra
/* 015D0C 801207FC 00000000 */   nop

glabel func_80120800 # 240
/* 015D10 80120800 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015D14 80120804 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015D18 80120808 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015D1C 8012080C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015D20 80120810 0C045837 */  jal         func_801160DC
/* 015D24 80120814 AFA40018 */   sw         $a0, 0x18($sp)
/* 015D28 80120818 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015D2C 8012081C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015D30 80120820 8FA40018 */  lw          $a0, 0x18($sp)
/* 015D34 80120824 00002825 */  move        $a1, $zero
/* 015D38 80120828 0C045807 */  jal         func_8011601C
/* 015D3C 8012082C E5E00028 */   swc1       $f0, 0x28($t7)
/* 015D40 80120830 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015D44 80120834 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015D48 80120838 00001025 */  move        $v0, $zero
/* 015D4C 8012083C 03E00008 */  jr          $ra
/* 015D50 80120840 00000000 */   nop

glabel func_80120844 # 241
/* 015D54 80120844 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015D58 80120848 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015D5C 8012084C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015D60 80120850 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015D64 80120854 0C045837 */  jal         func_801160DC
/* 015D68 80120858 AFA40018 */   sw         $a0, 0x18($sp)
/* 015D6C 8012085C 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015D70 80120860 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015D74 80120864 8FA40018 */  lw          $a0, 0x18($sp)
/* 015D78 80120868 00002825 */  move        $a1, $zero
/* 015D7C 8012086C 0C045807 */  jal         func_8011601C
/* 015D80 80120870 E5E00024 */   swc1       $f0, 0x24($t7)
/* 015D84 80120874 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015D88 80120878 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015D8C 8012087C 00001025 */  move        $v0, $zero
/* 015D90 80120880 03E00008 */  jr          $ra
/* 015D94 80120884 00000000 */   nop

glabel func_80120888 # 242
/* 015D98 80120888 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015D9C 8012088C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015DA0 80120890 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015DA4 80120894 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015DA8 80120898 8DF80030 */  lw          $t8, 0x30($t7)
/* 015DAC 8012089C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015DB0 801208A0 44982000 */  mtc1        $t8, $f4
/* 015DB4 801208A4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015DB8 801208A8 46802120 */  cvt.s.w     $f4, $f4
/* 015DBC 801208AC 44052000 */  mfc1        $a1, $f4
/* 015DC0 801208B0 0C045813 */  jal         func_8011604C
/* 015DC4 801208B4 00000000 */   nop
/* 015DC8 801208B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015DCC 801208BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015DD0 801208C0 00001025 */  move        $v0, $zero
/* 015DD4 801208C4 03E00008 */  jr          $ra
/* 015DD8 801208C8 00000000 */   nop

glabel func_801208CC # 243
/* 015DDC 801208CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015DE0 801208D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015DE4 801208D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015DE8 801208D8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015DEC 801208DC 0C045837 */  jal         func_801160DC
/* 015DF0 801208E0 AFA40018 */   sw         $a0, 0x18($sp)
/* 015DF4 801208E4 4600010D */  trunc.w.s   $f4, $f0
/* 015DF8 801208E8 3C198013 */  lui         $t9, %hi(D_80133DE4)
/* 015DFC 801208EC 8F393DE4 */  lw          $t9, %lo(D_80133DE4)($t9)
/* 015E00 801208F0 8FA40018 */  lw          $a0, 0x18($sp)
/* 015E04 801208F4 44182000 */  mfc1        $t8, $f4
/* 015E08 801208F8 00002825 */  move        $a1, $zero
/* 015E0C 801208FC 0C045807 */  jal         func_8011601C
/* 015E10 80120900 AF380030 */   sw         $t8, 0x30($t9)
/* 015E14 80120904 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015E18 80120908 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015E1C 8012090C 00001025 */  move        $v0, $zero
/* 015E20 80120910 03E00008 */  jr          $ra
/* 015E24 80120914 00000000 */   nop

glabel func_80120918 # 244
/* 015E28 80120918 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 015E2C 8012091C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 015E30 80120920 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015E34 80120924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015E38 80120928 8DF80034 */  lw          $t8, 0x34($t7)
/* 015E3C 8012092C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015E40 80120930 44982000 */  mtc1        $t8, $f4
/* 015E44 80120934 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015E48 80120938 46802120 */  cvt.s.w     $f4, $f4
/* 015E4C 8012093C 44052000 */  mfc1        $a1, $f4
/* 015E50 80120940 0C045813 */  jal         func_8011604C
/* 015E54 80120944 00000000 */   nop
/* 015E58 80120948 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015E5C 8012094C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015E60 80120950 00001025 */  move        $v0, $zero
/* 015E64 80120954 03E00008 */  jr          $ra
/* 015E68 80120958 00000000 */   nop

glabel func_8012095C # 245
/* 015E6C 8012095C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015E70 80120960 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015E74 80120964 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015E78 80120968 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015E7C 8012096C 0C045837 */  jal         func_801160DC
/* 015E80 80120970 AFA40018 */   sw         $a0, 0x18($sp)
/* 015E84 80120974 4600010D */  trunc.w.s   $f4, $f0
/* 015E88 80120978 3C198013 */  lui         $t9, %hi(D_80133DE4)
/* 015E8C 8012097C 8F393DE4 */  lw          $t9, %lo(D_80133DE4)($t9)
/* 015E90 80120980 8FA40018 */  lw          $a0, 0x18($sp)
/* 015E94 80120984 44182000 */  mfc1        $t8, $f4
/* 015E98 80120988 00002825 */  move        $a1, $zero
/* 015E9C 8012098C 0C045807 */  jal         func_8011601C
/* 015EA0 80120990 AF380034 */   sw         $t8, 0x34($t9)
/* 015EA4 80120994 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015EA8 80120998 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015EAC 8012099C 00001025 */  move        $v0, $zero
/* 015EB0 801209A0 03E00008 */  jr          $ra
/* 015EB4 801209A4 00000000 */   nop

glabel func_801209A8 # 246
/* 015EB8 801209A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015EBC 801209AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 015EC0 801209B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015EC4 801209B4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015EC8 801209B8 0C04582D */  jal         func_801160B4
/* 015ECC 801209BC AFA4001C */   sw         $a0, 0x1c($sp)
/* 015ED0 801209C0 0C0449C7 */  jal         func_8011271C
/* 015ED4 801209C4 00402025 */   move       $a0, $v0
/* 015ED8 801209C8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015EDC 801209CC 0C045807 */  jal         func_8011601C
/* 015EE0 801209D0 00402825 */   move       $a1, $v0
/* 015EE4 801209D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015EE8 801209D8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015EEC 801209DC 00001025 */  move        $v0, $zero
/* 015EF0 801209E0 03E00008 */  jr          $ra
/* 015EF4 801209E4 00000000 */   nop

glabel func_801209E8 # 247
/* 015EF8 801209E8 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 015EFC 801209EC AFBF002C */  sw          $ra, 0x2c($sp)
/* 015F00 801209F0 AFB00028 */  sw          $s0, 0x28($sp)
/* 015F04 801209F4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015F08 801209F8 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015F0C 801209FC 0C045837 */  jal         func_801160DC
/* 015F10 80120A00 02002025 */   move       $a0, $s0
/* 015F14 80120A04 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015F18 80120A08 0C045837 */  jal         func_801160DC
/* 015F1C 80120A0C 02002025 */   move       $a0, $s0
/* 015F20 80120A10 E7A00034 */  swc1        $f0, 0x34($sp)
/* 015F24 80120A14 0C04582D */  jal         func_801160B4
/* 015F28 80120A18 02002025 */   move       $a0, $s0
/* 015F2C 80120A1C AFA20038 */  sw          $v0, 0x38($sp)
/* 015F30 80120A20 0C04582D */  jal         func_801160B4
/* 015F34 80120A24 02002025 */   move       $a0, $s0
/* 015F38 80120A28 AFA2003C */  sw          $v0, 0x3c($sp)
/* 015F3C 80120A2C 0C04582D */  jal         func_801160B4
/* 015F40 80120A30 02002025 */   move       $a0, $s0
/* 015F44 80120A34 AFA20040 */  sw          $v0, 0x40($sp)
/* 015F48 80120A38 0C04582D */  jal         func_801160B4
/* 015F4C 80120A3C 02002025 */   move       $a0, $s0
/* 015F50 80120A40 AFA20044 */  sw          $v0, 0x44($sp)
/* 015F54 80120A44 0C04582D */  jal         func_801160B4
/* 015F58 80120A48 02002025 */   move       $a0, $s0
/* 015F5C 80120A4C AFA20048 */  sw          $v0, 0x48($sp)
/* 015F60 80120A50 0C04582D */  jal         func_801160B4
/* 015F64 80120A54 02002025 */   move       $a0, $s0
/* 015F68 80120A58 AFA2004C */  sw          $v0, 0x4c($sp)
/* 015F6C 80120A5C 0C045837 */  jal         func_801160DC
/* 015F70 80120A60 02002025 */   move       $a0, $s0
/* 015F74 80120A64 E7A00058 */  swc1        $f0, 0x58($sp)
/* 015F78 80120A68 0C045837 */  jal         func_801160DC
/* 015F7C 80120A6C 02002025 */   move       $a0, $s0
/* 015F80 80120A70 E7A00054 */  swc1        $f0, 0x54($sp)
/* 015F84 80120A74 0C045837 */  jal         func_801160DC
/* 015F88 80120A78 02002025 */   move       $a0, $s0
/* 015F8C 80120A7C E7A00050 */  swc1        $f0, 0x50($sp)
/* 015F90 80120A80 0C045837 */  jal         func_801160DC
/* 015F94 80120A84 02002025 */   move       $a0, $s0
/* 015F98 80120A88 E7A00064 */  swc1        $f0, 0x64($sp)
/* 015F9C 80120A8C 0C045837 */  jal         func_801160DC
/* 015FA0 80120A90 02002025 */   move       $a0, $s0
/* 015FA4 80120A94 E7A00060 */  swc1        $f0, 0x60($sp)
/* 015FA8 80120A98 0C045837 */  jal         func_801160DC
/* 015FAC 80120A9C 02002025 */   move       $a0, $s0
/* 015FB0 80120AA0 E7A0005C */  swc1        $f0, 0x5c($sp)
/* 015FB4 80120AA4 0C04582D */  jal         func_801160B4
/* 015FB8 80120AA8 02002025 */   move       $a0, $s0
/* 015FBC 80120AAC AFA20068 */  sw          $v0, 0x68($sp)
/* 015FC0 80120AB0 0C04582D */  jal         func_801160B4
/* 015FC4 80120AB4 02002025 */   move       $a0, $s0
/* 015FC8 80120AB8 AFA2006C */  sw          $v0, 0x6c($sp)
/* 015FCC 80120ABC 0C04582D */  jal         func_801160B4
/* 015FD0 80120AC0 02002025 */   move       $a0, $s0
/* 015FD4 80120AC4 AFA20070 */  sw          $v0, 0x70($sp)
/* 015FD8 80120AC8 0C04582D */  jal         func_801160B4
/* 015FDC 80120ACC 02002025 */   move       $a0, $s0
/* 015FE0 80120AD0 8FAF0044 */  lw          $t7, 0x44($sp)
/* 015FE4 80120AD4 8FB80040 */  lw          $t8, 0x40($sp)
/* 015FE8 80120AD8 8FB9003C */  lw          $t9, 0x3c($sp)
/* 015FEC 80120ADC 8FA80038 */  lw          $t0, 0x38($sp)
/* 015FF0 80120AE0 AFA20074 */  sw          $v0, 0x74($sp)
/* 015FF4 80120AE4 8FA4006C */  lw          $a0, 0x6c($sp)
/* 015FF8 80120AE8 8FA50068 */  lw          $a1, 0x68($sp)
/* 015FFC 80120AEC 93A6004F */  lbu         $a2, 0x4f($sp)
/* 016000 80120AF0 93A7004B */  lbu         $a3, 0x4b($sp)
/* 016004 80120AF4 AFAF0010 */  sw          $t7, 0x10($sp)
/* 016008 80120AF8 AFB80014 */  sw          $t8, 0x14($sp)
/* 01600C 80120AFC AFB90018 */  sw          $t9, 0x18($sp)
/* 016010 80120B00 0C009749 */  jal         func_80025D24
/* 016014 80120B04 AFA8001C */   sw         $t0, 0x1c($sp)
/* 016018 80120B08 AFA20078 */  sw          $v0, 0x78($sp)
/* 01601C 80120B0C 8C440038 */  lw          $a0, 0x38($v0)
/* 016020 80120B10 8FA50074 */  lw          $a1, 0x74($sp)
/* 016024 80120B14 0C046542 */  jal         func_80119508
/* 016028 80120B18 8FA60070 */   lw         $a2, 0x70($sp)
/* 01602C 80120B1C 8FA40078 */  lw          $a0, 0x78($sp)
/* 016030 80120B20 0C009773 */  jal         func_80025DCC
/* 016034 80120B24 8FA50030 */   lw         $a1, 0x30($sp)
/* 016038 80120B28 3C098013 */  lui         $t1, %hi(D_80133DE4)
/* 01603C 80120B2C 8D293DE4 */  lw          $t1, %lo(D_80133DE4)($t1)
/* 016040 80120B30 C7A60034 */  lwc1        $f6, 0x34($sp)
/* 016044 80120B34 8FA40078 */  lw          $a0, 0x78($sp)
/* 016048 80120B38 C524000C */  lwc1        $f4, 0xc($t1)
/* 01604C 80120B3C 27A5005C */  addiu       $a1, $sp, 0x5c
/* 016050 80120B40 27A60050 */  addiu       $a2, $sp, 0x50
/* 016054 80120B44 46062202 */  mul.s       $f8, $f4, $f6
/* 016058 80120B48 44074000 */  mfc1        $a3, $f8
/* 01605C 80120B4C 0C00977D */  jal         func_80025DF4
/* 016060 80120B50 00000000 */   nop
/* 016064 80120B54 8FAA0078 */  lw          $t2, 0x78($sp)
/* 016068 80120B58 02002025 */  move        $a0, $s0
/* 01606C 80120B5C 0C045807 */  jal         func_8011601C
/* 016070 80120B60 8D450038 */   lw         $a1, 0x38($t2)
/* 016074 80120B64 8FBF002C */  lw          $ra, 0x2c($sp)
/* 016078 80120B68 8FB00028 */  lw          $s0, 0x28($sp)
/* 01607C 80120B6C 27BD0080 */  addiu       $sp, $sp, 0x80
/* 016080 80120B70 03E00008 */  jr          $ra
/* 016084 80120B74 00001025 */   move       $v0, $zero

glabel func_80120B78 # 248
/* 016088 80120B78 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01608C 80120B7C AFBF001C */  sw          $ra, 0x1c($sp)
/* 016090 80120B80 AFB00018 */  sw          $s0, 0x18($sp)
/* 016094 80120B84 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016098 80120B88 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 01609C 80120B8C 0C04582D */  jal         func_801160B4
/* 0160A0 80120B90 02002025 */   move       $a0, $s0
/* 0160A4 80120B94 AFA20020 */  sw          $v0, 0x20($sp)
/* 0160A8 80120B98 0C04582D */  jal         func_801160B4
/* 0160AC 80120B9C 02002025 */   move       $a0, $s0
/* 0160B0 80120BA0 AFA20024 */  sw          $v0, 0x24($sp)
/* 0160B4 80120BA4 0C04582D */  jal         func_801160B4
/* 0160B8 80120BA8 02002025 */   move       $a0, $s0
/* 0160BC 80120BAC 00402025 */  move        $a0, $v0
/* 0160C0 80120BB0 8FA50024 */  lw          $a1, 0x24($sp)
/* 0160C4 80120BB4 0C046542 */  jal         func_80119508
/* 0160C8 80120BB8 8FA60020 */   lw         $a2, 0x20($sp)
/* 0160CC 80120BBC 02002025 */  move        $a0, $s0
/* 0160D0 80120BC0 0C045807 */  jal         func_8011601C
/* 0160D4 80120BC4 00002825 */   move       $a1, $zero
/* 0160D8 80120BC8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0160DC 80120BCC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0160E0 80120BD0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0160E4 80120BD4 03E00008 */  jr          $ra
/* 0160E8 80120BD8 00001025 */   move       $v0, $zero

glabel func_80120BDC # 249
/* 0160EC 80120BDC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0160F0 80120BE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0160F4 80120BE4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0160F8 80120BE8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0160FC 80120BEC 0C045837 */  jal         func_801160DC
/* 016100 80120BF0 AFA40024 */   sw         $a0, 0x24($sp)
/* 016104 80120BF4 E7A00018 */  swc1        $f0, 0x18($sp)
/* 016108 80120BF8 0C04582D */  jal         func_801160B4
/* 01610C 80120BFC 8FA40024 */   lw         $a0, 0x24($sp)
/* 016110 80120C00 0C001FA3 */  jal         func_80007E8C
/* 016114 80120C04 00402025 */   move       $a0, $v0
/* 016118 80120C08 00402025 */  move        $a0, $v0
/* 01611C 80120C0C 0C009773 */  jal         func_80025DCC
/* 016120 80120C10 8FA50018 */   lw         $a1, 0x18($sp)
/* 016124 80120C14 8FA40024 */  lw          $a0, 0x24($sp)
/* 016128 80120C18 0C045807 */  jal         func_8011601C
/* 01612C 80120C1C 00002825 */   move       $a1, $zero
/* 016130 80120C20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016134 80120C24 27BD0028 */  addiu       $sp, $sp, 0x28
/* 016138 80120C28 00001025 */  move        $v0, $zero
/* 01613C 80120C2C 03E00008 */  jr          $ra
/* 016140 80120C30 00000000 */   nop

glabel func_80120C34 # 250
/* 016144 80120C34 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 016148 80120C38 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01614C 80120C3C AFB00018 */  sw          $s0, 0x18($sp)
/* 016150 80120C40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016154 80120C44 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 016158 80120C48 0C045837 */  jal         func_801160DC
/* 01615C 80120C4C 02002025 */   move       $a0, $s0
/* 016160 80120C50 E7A00020 */  swc1        $f0, 0x20($sp)
/* 016164 80120C54 0C045837 */  jal         func_801160DC
/* 016168 80120C58 02002025 */   move       $a0, $s0
/* 01616C 80120C5C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 016170 80120C60 0C045837 */  jal         func_801160DC
/* 016174 80120C64 02002025 */   move       $a0, $s0
/* 016178 80120C68 E7A00028 */  swc1        $f0, 0x28($sp)
/* 01617C 80120C6C 0C045837 */  jal         func_801160DC
/* 016180 80120C70 02002025 */   move       $a0, $s0
/* 016184 80120C74 E7A00024 */  swc1        $f0, 0x24($sp)
/* 016188 80120C78 0C045837 */  jal         func_801160DC
/* 01618C 80120C7C 02002025 */   move       $a0, $s0
/* 016190 80120C80 E7A00038 */  swc1        $f0, 0x38($sp)
/* 016194 80120C84 0C045837 */  jal         func_801160DC
/* 016198 80120C88 02002025 */   move       $a0, $s0
/* 01619C 80120C8C E7A00034 */  swc1        $f0, 0x34($sp)
/* 0161A0 80120C90 0C045837 */  jal         func_801160DC
/* 0161A4 80120C94 02002025 */   move       $a0, $s0
/* 0161A8 80120C98 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0161AC 80120C9C 0C04582D */  jal         func_801160B4
/* 0161B0 80120CA0 02002025 */   move       $a0, $s0
/* 0161B4 80120CA4 0C001FA3 */  jal         func_80007E8C
/* 0161B8 80120CA8 00402025 */   move       $a0, $v0
/* 0161BC 80120CAC 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 0161C0 80120CB0 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 0161C4 80120CB4 C7A60020 */  lwc1        $f6, 0x20($sp)
/* 0161C8 80120CB8 00402025 */  move        $a0, $v0
/* 0161CC 80120CBC C5E4000C */  lwc1        $f4, 0xc($t7)
/* 0161D0 80120CC0 27A50030 */  addiu       $a1, $sp, 0x30
/* 0161D4 80120CC4 27A60024 */  addiu       $a2, $sp, 0x24
/* 0161D8 80120CC8 46062202 */  mul.s       $f8, $f4, $f6
/* 0161DC 80120CCC 44074000 */  mfc1        $a3, $f8
/* 0161E0 80120CD0 0C00977D */  jal         func_80025DF4
/* 0161E4 80120CD4 00000000 */   nop
/* 0161E8 80120CD8 02002025 */  move        $a0, $s0
/* 0161EC 80120CDC 0C045807 */  jal         func_8011601C
/* 0161F0 80120CE0 00002825 */   move       $a1, $zero
/* 0161F4 80120CE4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0161F8 80120CE8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0161FC 80120CEC 27BD0048 */  addiu       $sp, $sp, 0x48
/* 016200 80120CF0 03E00008 */  jr          $ra
/* 016204 80120CF4 00001025 */   move       $v0, $zero

glabel func_80120CF8 # 251
/* 016208 80120CF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01620C 80120CFC AFBF0014 */  sw          $ra, 0x14($sp)
/* 016210 80120D00 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016214 80120D04 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016218 80120D08 0C045837 */  jal         func_801160DC
/* 01621C 80120D0C AFA4001C */   sw         $a0, 0x1c($sp)
/* 016220 80120D10 0C00F0F7 */  jal         func_8003C3DC
/* 016224 80120D14 46000306 */   mov.s      $f12, $f0
/* 016228 80120D18 44050000 */  mfc1        $a1, $f0
/* 01622C 80120D1C 0C045813 */  jal         func_8011604C
/* 016230 80120D20 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016234 80120D24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016238 80120D28 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01623C 80120D2C 00001025 */  move        $v0, $zero
/* 016240 80120D30 03E00008 */  jr          $ra
/* 016244 80120D34 00000000 */   nop

glabel func_80120D38 # 252
/* 016248 80120D38 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01624C 80120D3C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016250 80120D40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016254 80120D44 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016258 80120D48 0C045837 */  jal         func_801160DC
/* 01625C 80120D4C AFA4001C */   sw         $a0, 0x1c($sp)
/* 016260 80120D50 0C00F134 */  jal         func_8003C4D0
/* 016264 80120D54 46000306 */   mov.s      $f12, $f0
/* 016268 80120D58 44050000 */  mfc1        $a1, $f0
/* 01626C 80120D5C 0C045813 */  jal         func_8011604C
/* 016270 80120D60 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016274 80120D64 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016278 80120D68 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01627C 80120D6C 00001025 */  move        $v0, $zero
/* 016280 80120D70 03E00008 */  jr          $ra
/* 016284 80120D74 00000000 */   nop

glabel func_80120D78 # 253
/* 016288 80120D78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01628C 80120D7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016290 80120D80 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016294 80120D84 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016298 80120D88 0C04582D */  jal         func_801160B4
/* 01629C 80120D8C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0162A0 80120D90 3C058015 */  lui         $a1, %hi(D_8015516C)
/* 0162A4 80120D94 00A22821 */  addu        $a1, $a1, $v0
/* 0162A8 80120D98 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0162AC 80120D9C 0C045807 */  jal         func_8011601C
/* 0162B0 80120DA0 90A5516C */   lbu        $a1, %lo(D_8015516C)($a1)
/* 0162B4 80120DA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0162B8 80120DA8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0162BC 80120DAC 00001025 */  move        $v0, $zero
/* 0162C0 80120DB0 03E00008 */  jr          $ra
/* 0162C4 80120DB4 00000000 */   nop

glabel func_80120DB8 # 254
/* 0162C8 80120DB8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0162CC 80120DBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0162D0 80120DC0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0162D4 80120DC4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0162D8 80120DC8 0C04582D */  jal         func_801160B4
/* 0162DC 80120DCC AFA4001C */   sw         $a0, 0x1c($sp)
/* 0162E0 80120DD0 00027880 */  sll         $t7, $v0, 2
/* 0162E4 80120DD4 3C058015 */  lui         $a1, %hi(D_80155208)
/* 0162E8 80120DD8 00AF2821 */  addu        $a1, $a1, $t7
/* 0162EC 80120DDC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0162F0 80120DE0 0C045821 */  jal         func_80116084
/* 0162F4 80120DE4 8CA55208 */   lw         $a1, %lo(D_80155208)($a1)
/* 0162F8 80120DE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0162FC 80120DEC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016300 80120DF0 00001025 */  move        $v0, $zero
/* 016304 80120DF4 03E00008 */  jr          $ra
/* 016308 80120DF8 00000000 */   nop

glabel func_80120DFC # 255
/* 01630C 80120DFC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 016310 80120E00 AFBF0034 */  sw          $ra, 0x34($sp)
/* 016314 80120E04 AFB70030 */  sw          $s7, 0x30($sp)
/* 016318 80120E08 AFB6002C */  sw          $s6, 0x2c($sp)
/* 01631C 80120E0C AFB50028 */  sw          $s5, 0x28($sp)
/* 016320 80120E10 AFB40024 */  sw          $s4, 0x24($sp)
/* 016324 80120E14 AFB30020 */  sw          $s3, 0x20($sp)
/* 016328 80120E18 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01632C 80120E1C AFB10018 */  sw          $s1, 0x18($sp)
/* 016330 80120E20 AFB00014 */  sw          $s0, 0x14($sp)
/* 016334 80120E24 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016338 80120E28 3C178015 */  lui         $s7, %hi(D_801554D0)
/* 01633C 80120E2C 3C158015 */  lui         $s5, %hi(D_801554D4)
/* 016340 80120E30 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016344 80120E34 3C148015 */  lui         $s4, %hi(D_801554D8)
/* 016348 80120E38 3C128015 */  lui         $s2, %hi(D_8015546C)
/* 01634C 80120E3C 8EF754D0 */  lw          $s7, %lo(D_801554D0)($s7)
/* 016350 80120E40 8EB554D4 */  lw          $s5, %lo(D_801554D4)($s5)
/* 016354 80120E44 8E9454D8 */  lw          $s4, %lo(D_801554D8)($s4)
/* 016358 80120E48 2652546C */  addiu       $s2, $s2, %lo(D_8015546C)
/* 01635C 80120E4C 24130064 */  addiu       $s3, $zero, 0x64
/* 016360 80120E50 2416FFFF */  addiu       $s6, $zero, -0x1
/* 016364 80120E54 AFAF003C */  sw          $t7, 0x3c($sp)
/* 016368 80120E58 24040099 */  addiu       $a0, $zero, 0x99
.L80120E5C:
/* 01636C 80120E5C 02A08025 */  move        $s0, $s5
/* 016370 80120E60 0C00EAC8 */  jal         func_8003AB20
/* 016374 80120E64 00008825 */   move       $s1, $zero
/* 016378 80120E68 1A80000E */  blez        $s4, .L80120EA4
/* 01637C 80120E6C 00402825 */   move       $a1, $v0
/* 016380 80120E70 0250C021 */  addu        $t8, $s2, $s0
.L80120E74:
/* 016384 80120E74 93190000 */  lbu         $t9, 0x0($t8)
/* 016388 80120E78 26310001 */  addiu       $s1, $s1, 0x1
/* 01638C 80120E7C 26100001 */  addiu       $s0, $s0, 0x1
/* 016390 80120E80 14590003 */  bne         $v0, $t9, .L80120E90
/* 016394 80120E84 00000000 */   nop
/* 016398 80120E88 10000006 */  b           .L80120EA4
/* 01639C 80120E8C 02C02825 */   move       $a1, $s6
.L80120E90:
/* 0163A0 80120E90 16130002 */  bne         $s0, $s3, .L80120E9C
/* 0163A4 80120E94 00000000 */   nop
/* 0163A8 80120E98 00008025 */  move        $s0, $zero
.L80120E9C:
/* 0163AC 80120E9C 5634FFF5 */  bnel        $s1, $s4, .L80120E74
/* 0163B0 80120EA0 0250C021 */   addu       $t8, $s2, $s0
.L80120EA4:
/* 0163B4 80120EA4 50B6FFED */  beql        $a1, $s6, .L80120E5C
/* 0163B8 80120EA8 24040099 */   addiu      $a0, $zero, 0x99
/* 0163BC 80120EAC 02574021 */  addu        $t0, $s2, $s7
/* 0163C0 80120EB0 26F70001 */  addiu       $s7, $s7, 0x1
/* 0163C4 80120EB4 16F30002 */  bne         $s7, $s3, .L80120EC0
/* 0163C8 80120EB8 A1050000 */   sb         $a1, 0x0($t0)
/* 0163CC 80120EBC 0000B825 */  move        $s7, $zero
.L80120EC0:
/* 0163D0 80120EC0 2A810064 */  slti        $at, $s4, 0x64
/* 0163D4 80120EC4 50200004 */  beql        $at, $zero, .L80120ED8
/* 0163D8 80120EC8 26B50001 */   addiu      $s5, $s5, 0x1
/* 0163DC 80120ECC 10000005 */  b           .L80120EE4
/* 0163E0 80120ED0 26940001 */   addiu      $s4, $s4, 0x1
/* 0163E4 80120ED4 26B50001 */  addiu       $s5, $s5, 0x1
.L80120ED8:
/* 0163E8 80120ED8 16B30002 */  bne         $s5, $s3, .L80120EE4
/* 0163EC 80120EDC 00000000 */   nop
/* 0163F0 80120EE0 0000A825 */  move        $s5, $zero
.L80120EE4:
/* 0163F4 80120EE4 3C018015 */  lui         $at, %hi(D_801554D0)
/* 0163F8 80120EE8 AC3754D0 */  sw          $s7, %lo(D_801554D0)($at)
/* 0163FC 80120EEC 3C018015 */  lui         $at, %hi(D_801554D4)
/* 016400 80120EF0 AC3554D4 */  sw          $s5, %lo(D_801554D4)($at)
/* 016404 80120EF4 3C018015 */  lui         $at, %hi(D_801554D8)
/* 016408 80120EF8 AC3454D8 */  sw          $s4, %lo(D_801554D8)($at)
/* 01640C 80120EFC 0C045807 */  jal         func_8011601C
/* 016410 80120F00 8FA4003C */   lw         $a0, 0x3c($sp)
/* 016414 80120F04 8FBF0034 */  lw          $ra, 0x34($sp)
/* 016418 80120F08 8FB00014 */  lw          $s0, 0x14($sp)
/* 01641C 80120F0C 8FB10018 */  lw          $s1, 0x18($sp)
/* 016420 80120F10 8FB2001C */  lw          $s2, 0x1c($sp)
/* 016424 80120F14 8FB30020 */  lw          $s3, 0x20($sp)
/* 016428 80120F18 8FB40024 */  lw          $s4, 0x24($sp)
/* 01642C 80120F1C 8FB50028 */  lw          $s5, 0x28($sp)
/* 016430 80120F20 8FB6002C */  lw          $s6, 0x2c($sp)
/* 016434 80120F24 8FB70030 */  lw          $s7, 0x30($sp)
/* 016438 80120F28 27BD0040 */  addiu       $sp, $sp, 0x40
/* 01643C 80120F2C 03E00008 */  jr          $ra
/* 016440 80120F30 00001025 */   move       $v0, $zero

glabel func_80120F34 # 256
/* 016444 80120F34 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 016448 80120F38 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01644C 80120F3C AFB00020 */  sw          $s0, 0x20($sp)
/* 016450 80120F40 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016454 80120F44 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 016458 80120F48 0C04582D */  jal         func_801160B4
/* 01645C 80120F4C 02002025 */   move       $a0, $s0
/* 016460 80120F50 AFA2002C */  sw          $v0, 0x2c($sp)
/* 016464 80120F54 0C04582D */  jal         func_801160B4
/* 016468 80120F58 02002025 */   move       $a0, $s0
/* 01646C 80120F5C AFA20030 */  sw          $v0, 0x30($sp)
/* 016470 80120F60 0C045837 */  jal         func_801160DC
/* 016474 80120F64 02002025 */   move       $a0, $s0
/* 016478 80120F68 E7A00034 */  swc1        $f0, 0x34($sp)
/* 01647C 80120F6C 0C045837 */  jal         func_801160DC
/* 016480 80120F70 02002025 */   move       $a0, $s0
/* 016484 80120F74 E7A00038 */  swc1        $f0, 0x38($sp)
/* 016488 80120F78 0C04582D */  jal         func_801160B4
/* 01648C 80120F7C 02002025 */   move       $a0, $s0
/* 016490 80120F80 AFA2003C */  sw          $v0, 0x3c($sp)
/* 016494 80120F84 0C04582D */  jal         func_801160B4
/* 016498 80120F88 02002025 */   move       $a0, $s0
/* 01649C 80120F8C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0164A0 80120F90 8FB8002C */  lw          $t8, 0x2c($sp)
/* 0164A4 80120F94 00402025 */  move        $a0, $v0
/* 0164A8 80120F98 8FA5003C */  lw          $a1, 0x3c($sp)
/* 0164AC 80120F9C 8FA60038 */  lw          $a2, 0x38($sp)
/* 0164B0 80120FA0 8FA70034 */  lw          $a3, 0x34($sp)
/* 0164B4 80120FA4 AFAF0010 */  sw          $t7, 0x10($sp)
/* 0164B8 80120FA8 0C046130 */  jal         func_801184C0
/* 0164BC 80120FAC AFB80014 */   sw         $t8, 0x14($sp)
/* 0164C0 80120FB0 02002025 */  move        $a0, $s0
/* 0164C4 80120FB4 0C045807 */  jal         func_8011601C
/* 0164C8 80120FB8 00402825 */   move       $a1, $v0
/* 0164CC 80120FBC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0164D0 80120FC0 8FB00020 */  lw          $s0, 0x20($sp)
/* 0164D4 80120FC4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 0164D8 80120FC8 03E00008 */  jr          $ra
/* 0164DC 80120FCC 00001025 */   move       $v0, $zero

glabel func_80120FD0 # 257
/* 0164E0 80120FD0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0164E4 80120FD4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0164E8 80120FD8 AFB00020 */  sw          $s0, 0x20($sp)
/* 0164EC 80120FDC AFA40040 */  sw          $a0, 0x40($sp)
/* 0164F0 80120FE0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0164F4 80120FE4 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 0164F8 80120FE8 0C045837 */  jal         func_801160DC
/* 0164FC 80120FEC 02002025 */   move       $a0, $s0
/* 016500 80120FF0 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 016504 80120FF4 0C045837 */  jal         func_801160DC
/* 016508 80120FF8 02002025 */   move       $a0, $s0
/* 01650C 80120FFC E7A00030 */  swc1        $f0, 0x30($sp)
/* 016510 80121000 0C04582D */  jal         func_801160B4
/* 016514 80121004 02002025 */   move       $a0, $s0
/* 016518 80121008 AFA20034 */  sw          $v0, 0x34($sp)
/* 01651C 8012100C 0C04582D */  jal         func_801160B4
/* 016520 80121010 02002025 */   move       $a0, $s0
/* 016524 80121014 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 016528 80121018 8FA40040 */  lw          $a0, 0x40($sp)
/* 01652C 8012101C 00402825 */  move        $a1, $v0
/* 016530 80121020 8FA60034 */  lw          $a2, 0x34($sp)
/* 016534 80121024 8FA70030 */  lw          $a3, 0x30($sp)
/* 016538 80121028 0C046151 */  jal         func_80118544
/* 01653C 8012102C E7A40010 */   swc1       $f4, 0x10($sp)
/* 016540 80121030 02002025 */  move        $a0, $s0
/* 016544 80121034 0C045807 */  jal         func_8011601C
/* 016548 80121038 00402825 */   move       $a1, $v0
/* 01654C 8012103C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016550 80121040 8FB00020 */  lw          $s0, 0x20($sp)
/* 016554 80121044 27BD0040 */  addiu       $sp, $sp, 0x40
/* 016558 80121048 03E00008 */  jr          $ra
/* 01655C 8012104C 00001025 */   move       $v0, $zero

glabel func_80121050 # 258
/* 016560 80121050 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 016564 80121054 AFBF0024 */  sw          $ra, 0x24($sp)
/* 016568 80121058 AFB00020 */  sw          $s0, 0x20($sp)
/* 01656C 8012105C AFA40040 */  sw          $a0, 0x40($sp)
/* 016570 80121060 8C8F0054 */  lw          $t7, 0x54($a0)
/* 016574 80121064 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 016578 80121068 0C045837 */  jal         func_801160DC
/* 01657C 8012106C 02002025 */   move       $a0, $s0
/* 016580 80121070 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 016584 80121074 0C045837 */  jal         func_801160DC
/* 016588 80121078 02002025 */   move       $a0, $s0
/* 01658C 8012107C E7A00030 */  swc1        $f0, 0x30($sp)
/* 016590 80121080 0C04582D */  jal         func_801160B4
/* 016594 80121084 02002025 */   move       $a0, $s0
/* 016598 80121088 AFA20034 */  sw          $v0, 0x34($sp)
/* 01659C 8012108C 0C04582D */  jal         func_801160B4
/* 0165A0 80121090 02002025 */   move       $a0, $s0
/* 0165A4 80121094 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 0165A8 80121098 8FA40040 */  lw          $a0, 0x40($sp)
/* 0165AC 8012109C 00402825 */  move        $a1, $v0
/* 0165B0 801210A0 8FA60034 */  lw          $a2, 0x34($sp)
/* 0165B4 801210A4 8FA70030 */  lw          $a3, 0x30($sp)
/* 0165B8 801210A8 0C046171 */  jal         func_801185C4
/* 0165BC 801210AC E7A40010 */   swc1       $f4, 0x10($sp)
/* 0165C0 801210B0 02002025 */  move        $a0, $s0
/* 0165C4 801210B4 0C045807 */  jal         func_8011601C
/* 0165C8 801210B8 00402825 */   move       $a1, $v0
/* 0165CC 801210BC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0165D0 801210C0 8FB00020 */  lw          $s0, 0x20($sp)
/* 0165D4 801210C4 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0165D8 801210C8 03E00008 */  jr          $ra
/* 0165DC 801210CC 00001025 */   move       $v0, $zero

glabel func_801210D0 # 259
/* 0165E0 801210D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0165E4 801210D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0165E8 801210D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0165EC 801210DC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0165F0 801210E0 0C0464CE */  jal         func_80119338
/* 0165F4 801210E4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0165F8 801210E8 44050000 */  mfc1        $a1, $f0
/* 0165FC 801210EC 0C045813 */  jal         func_8011604C
/* 016600 801210F0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016604 801210F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016608 801210F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01660C 801210FC 00001025 */  move        $v0, $zero
/* 016610 80121100 03E00008 */  jr          $ra
/* 016614 80121104 00000000 */   nop

glabel func_80121108 # 260
/* 016618 80121108 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01661C 8012110C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016620 80121110 AFA40020 */  sw          $a0, 0x20($sp)
/* 016624 80121114 8C8F0054 */  lw          $t7, 0x54($a0)
/* 016628 80121118 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 01662C 8012111C 0C04582D */  jal         func_801160B4
/* 016630 80121120 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016634 80121124 8FA40020 */  lw          $a0, 0x20($sp)
/* 016638 80121128 0C046507 */  jal         func_8011941C
/* 01663C 8012112C 00402825 */   move       $a1, $v0
/* 016640 80121130 44050000 */  mfc1        $a1, $f0
/* 016644 80121134 0C045813 */  jal         func_8011604C
/* 016648 80121138 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01664C 8012113C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016650 80121140 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016654 80121144 00001025 */  move        $v0, $zero
/* 016658 80121148 03E00008 */  jr          $ra
/* 01665C 8012114C 00000000 */   nop

glabel func_80121150 # 261
/* 016660 80121150 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016664 80121154 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016668 80121158 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01666C 8012115C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016670 80121160 0C045837 */  jal         func_801160DC
/* 016674 80121164 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016678 80121168 E7A00018 */  swc1        $f0, 0x18($sp)
/* 01667C 8012116C 0C04582D */  jal         func_801160B4
/* 016680 80121170 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016684 80121174 0C0462B3 */  jal         func_80118ACC
/* 016688 80121178 00402025 */   move       $a0, $v0
/* 01668C 8012117C 10400003 */  beq         $v0, $zero, .L8012118C
/* 016690 80121180 00402025 */   move       $a0, $v0
/* 016694 80121184 0C044CD2 */  jal         func_80113348
/* 016698 80121188 8FA50018 */   lw         $a1, 0x18($sp)
.L8012118C:
/* 01669C 8012118C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0166A0 80121190 0C045807 */  jal         func_8011601C
/* 0166A4 80121194 00002825 */   move       $a1, $zero
/* 0166A8 80121198 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0166AC 8012119C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0166B0 801211A0 00001025 */  move        $v0, $zero
/* 0166B4 801211A4 03E00008 */  jr          $ra
/* 0166B8 801211A8 00000000 */   nop

glabel func_801211AC # 262
/* 0166BC 801211AC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0166C0 801211B0 3C028007 */  lui         $v0, %hi(D_800722E0)
/* 0166C4 801211B4 8C4222E0 */  lw          $v0, %lo(D_800722E0)($v0)
/* 0166C8 801211B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0166CC 801211BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0166D0 801211C0 97A50018 */  lhu         $a1, 0x18($sp)
/* 0166D4 801211C4 04410003 */  bgez        $v0, .L801211D4
/* 0166D8 801211C8 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 0166DC 801211CC 10000001 */  b           .L801211D4
/* 0166E0 801211D0 00002825 */   move       $a1, $zero
.L801211D4:
/* 0166E4 801211D4 0C045807 */  jal         func_8011601C
/* 0166E8 801211D8 00C02025 */   move       $a0, $a2
/* 0166EC 801211DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0166F0 801211E0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0166F4 801211E4 00001025 */  move        $v0, $zero
/* 0166F8 801211E8 03E00008 */  jr          $ra
/* 0166FC 801211EC 00000000 */   nop

glabel func_801211F0 # 263
/* 016700 801211F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016704 801211F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016708 801211F8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01670C 801211FC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016710 80121200 0C00AB39 */  jal         func_8002ACE4
/* 016714 80121204 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016718 80121208 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01671C 8012120C 0C045807 */  jal         func_8011601C
/* 016720 80121210 00402825 */   move       $a1, $v0
/* 016724 80121214 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016728 80121218 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01672C 8012121C 00001025 */  move        $v0, $zero
/* 016730 80121220 03E00008 */  jr          $ra
/* 016734 80121224 00000000 */   nop

glabel func_80121228 # 264
/* 016738 80121228 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01673C 8012122C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016740 80121230 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016744 80121234 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016748 80121238 0C00AB67 */  jal         func_8002AD9C
/* 01674C 8012123C AFAF001C */   sw         $t7, 0x1c($sp)
/* 016750 80121240 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016754 80121244 0C045807 */  jal         func_8011601C
/* 016758 80121248 00402825 */   move       $a1, $v0
/* 01675C 8012124C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016760 80121250 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016764 80121254 00001025 */  move        $v0, $zero
/* 016768 80121258 03E00008 */  jr          $ra
/* 01676C 8012125C 00000000 */   nop

glabel func_80121260 # 265
/* 016770 80121260 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016774 80121264 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016778 80121268 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01677C 8012126C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016780 80121270 0C0453F0 */  jal         func_80114FC0
/* 016784 80121274 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016788 80121278 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01678C 8012127C 0C045807 */  jal         func_8011601C
/* 016790 80121280 00402825 */   move       $a1, $v0
/* 016794 80121284 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016798 80121288 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01679C 8012128C 00001025 */  move        $v0, $zero
/* 0167A0 80121290 03E00008 */  jr          $ra
/* 0167A4 80121294 00000000 */   nop

glabel func_80121298 # 266
/* 0167A8 80121298 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0167AC 8012129C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0167B0 801212A0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0167B4 801212A4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0167B8 801212A8 0C0459C2 */  jal         func_80116708
/* 0167BC 801212AC AFAF001C */   sw         $t7, 0x1c($sp)
/* 0167C0 801212B0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0167C4 801212B4 0C045807 */  jal         func_8011601C
/* 0167C8 801212B8 00002825 */   move       $a1, $zero
/* 0167CC 801212BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0167D0 801212C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0167D4 801212C4 00001025 */  move        $v0, $zero
/* 0167D8 801212C8 03E00008 */  jr          $ra
/* 0167DC 801212CC 00000000 */   nop

glabel func_801212D0 # 267
/* 0167E0 801212D0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0167E4 801212D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0167E8 801212D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0167EC 801212DC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0167F0 801212E0 0C00D470 */  jal         func_800351C0
/* 0167F4 801212E4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0167F8 801212E8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0167FC 801212EC 0C045807 */  jal         func_8011601C
/* 016800 801212F0 00402825 */   move       $a1, $v0
/* 016804 801212F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016808 801212F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01680C 801212FC 00001025 */  move        $v0, $zero
/* 016810 80121300 03E00008 */  jr          $ra
/* 016814 80121304 00000000 */   nop

glabel func_80121308 # 268
/* 016818 80121308 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01681C 8012130C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016820 80121310 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016824 80121314 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016828 80121318 0C00D47F */  jal         func_800351FC
/* 01682C 8012131C AFAF001C */   sw         $t7, 0x1c($sp)
/* 016830 80121320 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016834 80121324 0C045807 */  jal         func_8011601C
/* 016838 80121328 00002825 */   move       $a1, $zero
/* 01683C 8012132C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016840 80121330 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016844 80121334 00001025 */  move        $v0, $zero
/* 016848 80121338 03E00008 */  jr          $ra
/* 01684C 8012133C 00000000 */   nop

glabel func_80121340 # 269
/* 016850 80121340 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016854 80121344 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016858 80121348 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01685C 8012134C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016860 80121350 0C00D48D */  jal         func_80035234
/* 016864 80121354 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016868 80121358 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01686C 8012135C 0C045807 */  jal         func_8011601C
/* 016870 80121360 00002825 */   move       $a1, $zero
/* 016874 80121364 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016878 80121368 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01687C 8012136C 00001025 */  move        $v0, $zero
/* 016880 80121370 03E00008 */  jr          $ra
/* 016884 80121374 00000000 */   nop

glabel func_80121378 # 270
/* 016888 80121378 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01688C 8012137C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016890 80121380 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016894 80121384 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016898 80121388 0C00D4AB */  jal         func_800352AC
/* 01689C 8012138C AFAF001C */   sw         $t7, 0x1c($sp)
/* 0168A0 80121390 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0168A4 80121394 0C045807 */  jal         func_8011601C
/* 0168A8 80121398 00402825 */   move       $a1, $v0
/* 0168AC 8012139C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0168B0 801213A0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0168B4 801213A4 00001025 */  move        $v0, $zero
/* 0168B8 801213A8 03E00008 */  jr          $ra
/* 0168BC 801213AC 00000000 */   nop

glabel func_801213B0 # 271
/* 0168C0 801213B0 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0168C4 801213B4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0168C8 801213B8 AFB00020 */  sw          $s0, 0x20($sp)
/* 0168CC 801213BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0168D0 801213C0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0168D4 801213C4 0C04582D */  jal         func_801160B4
/* 0168D8 801213C8 AFA40054 */   sw         $a0, 0x54($sp)
/* 0168DC 801213CC 0C001FA3 */  jal         func_80007E8C
/* 0168E0 801213D0 00402025 */   move       $a0, $v0
/* 0168E4 801213D4 10400043 */  beq         $v0, $zero, .L801214E4
/* 0168E8 801213D8 00408025 */   move       $s0, $v0
/* 0168EC 801213DC 944F0034 */  lhu         $t7, 0x34($v0)
/* 0168F0 801213E0 24010088 */  addiu       $at, $zero, 0x88
/* 0168F4 801213E4 55E10040 */  bnel        $t7, $at, .L801214E8
/* 0168F8 801213E8 8FA40054 */   lw         $a0, 0x54($sp)
/* 0168FC 801213EC C4440044 */  lwc1        $f4, 0x44($v0)
/* 016900 801213F0 3C013F00 */  lui         $at, 0x3f00
/* 016904 801213F4 44810000 */  mtc1        $at, $f0
/* 016908 801213F8 E7A4003C */  swc1        $f4, 0x3c($sp)
/* 01690C 801213FC C4460048 */  lwc1        $f6, 0x48($v0)
/* 016910 80121400 3C013F80 */  lui         $at, 0x3f80
/* 016914 80121404 44811000 */  mtc1        $at, $f2
/* 016918 80121408 E7A60040 */  swc1        $f6, 0x40($sp)
/* 01691C 8012140C C448004C */  lwc1        $f8, 0x4c($v0)
/* 016920 80121410 3C028013 */  lui         $v0, %hi(D_80133DE4)
/* 016924 80121414 8C423DE4 */  lw          $v0, %lo(D_80133DE4)($v0)
/* 016928 80121418 E7A80044 */  swc1        $f8, 0x44($sp)
/* 01692C 8012141C C60A0024 */  lwc1        $f10, 0x24($s0)
/* 016930 80121420 C450000C */  lwc1        $f16, 0xc($v0)
/* 016934 80121424 C7A6003C */  lwc1        $f6, 0x3c($sp)
/* 016938 80121428 00002025 */  move        $a0, $zero
/* 01693C 8012142C 46105482 */  mul.s       $f18, $f10, $f16
/* 016940 80121430 27A50030 */  addiu       $a1, $sp, 0x30
/* 016944 80121434 3C064040 */  lui         $a2, 0x4040
/* 016948 80121438 00003825 */  move        $a3, $zero
/* 01694C 8012143C 46009102 */  mul.s       $f4, $f18, $f0
/* 016950 80121440 46043200 */  add.s       $f8, $f6, $f4
/* 016954 80121444 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 016958 80121448 E7A8003C */  swc1        $f8, 0x3c($sp)
/* 01695C 8012144C C60A0024 */  lwc1        $f10, 0x24($s0)
/* 016960 80121450 C450000C */  lwc1        $f16, 0xc($v0)
/* 016964 80121454 E7A80030 */  swc1        $f8, 0x30($sp)
/* 016968 80121458 AFA00010 */  sw          $zero, 0x10($sp)
/* 01696C 8012145C 46105482 */  mul.s       $f18, $f10, $f16
/* 016970 80121460 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 016974 80121464 E7B00034 */  swc1        $f16, 0x34($sp)
/* 016978 80121468 46009182 */  mul.s       $f6, $f18, $f0
/* 01697C 8012146C 46024480 */  add.s       $f18, $f8, $f2
/* 016980 80121470 E7B20030 */  swc1        $f18, 0x30($sp)
/* 016984 80121474 46062280 */  add.s       $f10, $f4, $f6
/* 016988 80121478 44803000 */  mtc1        $zero, $f6
/* 01698C 8012147C 46025100 */  add.s       $f4, $f10, $f2
/* 016990 80121480 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 016994 80121484 E7AA0044 */  swc1        $f10, 0x44($sp)
/* 016998 80121488 E7A60014 */  swc1        $f6, 0x14($sp)
/* 01699C 8012148C 0C006503 */  jal         func_8001940C
/* 0169A0 80121490 E7A40038 */   swc1       $f4, 0x38($sp)
/* 0169A4 80121494 0C043705 */  jal         func_8010DC14
/* 0169A8 80121498 02002025 */   move       $a0, $s0
/* 0169AC 8012149C 3C013F80 */  lui         $at, 0x3f80
/* 0169B0 801214A0 44816000 */  mtc1        $at, $f12
/* 0169B4 801214A4 C7A0003C */  lwc1        $f0, 0x3c($sp)
/* 0169B8 801214A8 C7A20044 */  lwc1        $f2, 0x44($sp)
/* 0169BC 801214AC C7B00040 */  lwc1        $f16, 0x40($sp)
/* 0169C0 801214B0 460C0001 */  sub.s       $f0, $f0, $f12
/* 0169C4 801214B4 44804000 */  mtc1        $zero, $f8
/* 0169C8 801214B8 00002025 */  move        $a0, $zero
/* 0169CC 801214BC 460C1081 */  sub.s       $f2, $f2, $f12
/* 0169D0 801214C0 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0169D4 801214C4 27A5003C */  addiu       $a1, $sp, 0x3c
/* 0169D8 801214C8 3C064040 */  lui         $a2, 0x4040
/* 0169DC 801214CC E7A20038 */  swc1        $f2, 0x38($sp)
/* 0169E0 801214D0 00003825 */  move        $a3, $zero
/* 0169E4 801214D4 AFA00010 */  sw          $zero, 0x10($sp)
/* 0169E8 801214D8 E7B00034 */  swc1        $f16, 0x34($sp)
/* 0169EC 801214DC 0C006503 */  jal         func_8001940C
/* 0169F0 801214E0 E7A80014 */   swc1       $f8, 0x14($sp)
.L801214E4:
/* 0169F4 801214E4 8FA40054 */  lw          $a0, 0x54($sp)
.L801214E8:
/* 0169F8 801214E8 0C045807 */  jal         func_8011601C
/* 0169FC 801214EC 00002825 */   move       $a1, $zero
/* 016A00 801214F0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016A04 801214F4 8FB00020 */  lw          $s0, 0x20($sp)
/* 016A08 801214F8 27BD0058 */  addiu       $sp, $sp, 0x58
/* 016A0C 801214FC 03E00008 */  jr          $ra
/* 016A10 80121500 00001025 */   move       $v0, $zero

glabel func_80121504 # 272
/* 016A14 80121504 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 016A18 80121508 AFBF0024 */  sw          $ra, 0x24($sp)
/* 016A1C 8012150C AFB00020 */  sw          $s0, 0x20($sp)
/* 016A20 80121510 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016A24 80121514 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 016A28 80121518 0C045837 */  jal         func_801160DC
/* 016A2C 8012151C 02002025 */   move       $a0, $s0
/* 016A30 80121520 E7A00030 */  swc1        $f0, 0x30($sp)
/* 016A34 80121524 0C045837 */  jal         func_801160DC
/* 016A38 80121528 02002025 */   move       $a0, $s0
/* 016A3C 8012152C E7A00034 */  swc1        $f0, 0x34($sp)
/* 016A40 80121530 0C045837 */  jal         func_801160DC
/* 016A44 80121534 02002025 */   move       $a0, $s0
/* 016A48 80121538 E7A00038 */  swc1        $f0, 0x38($sp)
/* 016A4C 8012153C 0C04582D */  jal         func_801160B4
/* 016A50 80121540 02002025 */   move       $a0, $s0
/* 016A54 80121544 AFA2003C */  sw          $v0, 0x3c($sp)
/* 016A58 80121548 0C04582D */  jal         func_801160B4
/* 016A5C 8012154C 02002025 */   move       $a0, $s0
/* 016A60 80121550 0C0462B3 */  jal         func_80118ACC
/* 016A64 80121554 00402025 */   move       $a0, $v0
/* 016A68 80121558 1040000D */  beq         $v0, $zero, .L80121590
/* 016A6C 8012155C 00402025 */   move       $a0, $v0
/* 016A70 80121560 8FA50038 */  lw          $a1, 0x38($sp)
/* 016A74 80121564 3C0642C8 */  lui         $a2, 0x42c8
/* 016A78 80121568 3C07447A */  lui         $a3, 0x447a
/* 016A7C 8012156C 0C045369 */  jal         func_80114DA4
/* 016A80 80121570 AFA2002C */   sw         $v0, 0x2c($sp)
/* 016A84 80121574 8FAF002C */  lw          $t7, 0x2c($sp)
/* 016A88 80121578 8FA4003C */  lw          $a0, 0x3c($sp)
/* 016A8C 8012157C 8FA50038 */  lw          $a1, 0x38($sp)
/* 016A90 80121580 8FA60034 */  lw          $a2, 0x34($sp)
/* 016A94 80121584 8FA70030 */  lw          $a3, 0x30($sp)
/* 016A98 80121588 0C0066C2 */  jal         func_80019B08
/* 016A9C 8012158C AFAF0010 */   sw         $t7, 0x10($sp)
.L80121590:
/* 016AA0 80121590 02002025 */  move        $a0, $s0
/* 016AA4 80121594 0C045807 */  jal         func_8011601C
/* 016AA8 80121598 00002825 */   move       $a1, $zero
/* 016AAC 8012159C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016AB0 801215A0 8FB00020 */  lw          $s0, 0x20($sp)
/* 016AB4 801215A4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 016AB8 801215A8 03E00008 */  jr          $ra
/* 016ABC 801215AC 00001025 */   move       $v0, $zero

glabel func_801215B0 # 273
/* 016AC0 801215B0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016AC4 801215B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016AC8 801215B8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016ACC 801215BC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016AD0 801215C0 0C04582D */  jal         func_801160B4
/* 016AD4 801215C4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016AD8 801215C8 000278C0 */  sll         $t7, $v0, 3
/* 016ADC 801215CC 01E27823 */  subu        $t7, $t7, $v0
/* 016AE0 801215D0 000F7880 */  sll         $t7, $t7, 2
/* 016AE4 801215D4 01E27821 */  addu        $t7, $t7, $v0
/* 016AE8 801215D8 000F7880 */  sll         $t7, $t7, 2
/* 016AEC 801215DC 3C058012 */  lui         $a1, %hi(D_80125A4C)
/* 016AF0 801215E0 00AF2821 */  addu        $a1, $a1, $t7
/* 016AF4 801215E4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016AF8 801215E8 0C045807 */  jal         func_8011601C
/* 016AFC 801215EC 8CA55A4C */   lw         $a1, %lo(D_80125A4C)($a1)
/* 016B00 801215F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016B04 801215F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016B08 801215F8 00001025 */  move        $v0, $zero
/* 016B0C 801215FC 03E00008 */  jr          $ra
/* 016B10 80121600 00000000 */   nop

glabel func_80121604 # 274
/* 016B14 80121604 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 016B18 80121608 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016B1C 8012160C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016B20 80121610 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016B24 80121614 0C04582D */  jal         func_801160B4
/* 016B28 80121618 AFA40024 */   sw         $a0, 0x24($sp)
/* 016B2C 8012161C AFA2001C */  sw          $v0, 0x1c($sp)
/* 016B30 80121620 0C04582D */  jal         func_801160B4
/* 016B34 80121624 8FA40024 */   lw         $a0, 0x24($sp)
/* 016B38 80121628 00402025 */  move        $a0, $v0
/* 016B3C 8012162C 0C0453F5 */  jal         func_80114FD4
/* 016B40 80121630 8FA5001C */   lw         $a1, 0x1c($sp)
/* 016B44 80121634 8FA40024 */  lw          $a0, 0x24($sp)
/* 016B48 80121638 0C045807 */  jal         func_8011601C
/* 016B4C 8012163C 00402825 */   move       $a1, $v0
/* 016B50 80121640 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016B54 80121644 27BD0028 */  addiu       $sp, $sp, 0x28
/* 016B58 80121648 00001025 */  move        $v0, $zero
/* 016B5C 8012164C 03E00008 */  jr          $ra
/* 016B60 80121650 00000000 */   nop

glabel func_80121654 # 275
/* 016B64 80121654 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016B68 80121658 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016B6C 8012165C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016B70 80121660 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016B74 80121664 0C04582D */  jal         func_801160B4
/* 016B78 80121668 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016B7C 8012166C 0C045408 */  jal         func_80115020
/* 016B80 80121670 00402025 */   move       $a0, $v0
/* 016B84 80121674 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016B88 80121678 0C045807 */  jal         func_8011601C
/* 016B8C 8012167C 00402825 */   move       $a1, $v0
/* 016B90 80121680 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016B94 80121684 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016B98 80121688 00001025 */  move        $v0, $zero
/* 016B9C 8012168C 03E00008 */  jr          $ra
/* 016BA0 80121690 00000000 */   nop

glabel func_80121694 # 276
/* 016BA4 80121694 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016BA8 80121698 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016BAC 8012169C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016BB0 801216A0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016BB4 801216A4 0C04582D */  jal         func_801160B4
/* 016BB8 801216A8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016BBC 801216AC 0C045411 */  jal         func_80115044
/* 016BC0 801216B0 00402025 */   move       $a0, $v0
/* 016BC4 801216B4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016BC8 801216B8 0C045807 */  jal         func_8011601C
/* 016BCC 801216BC 00402825 */   move       $a1, $v0
/* 016BD0 801216C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016BD4 801216C4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016BD8 801216C8 00001025 */  move        $v0, $zero
/* 016BDC 801216CC 03E00008 */  jr          $ra
/* 016BE0 801216D0 00000000 */   nop

glabel func_801216D4 # 277
/* 016BE4 801216D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016BE8 801216D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016BEC 801216DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016BF0 801216E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016BF4 801216E4 0C04582D */  jal         func_801160B4
/* 016BF8 801216E8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016BFC 801216EC 0C0462B3 */  jal         func_80118ACC
/* 016C00 801216F0 00402025 */   move       $a0, $v0
/* 016C04 801216F4 10400008 */  beq         $v0, $zero, .L80121718
/* 016C08 801216F8 00402025 */   move       $a0, $v0
/* 016C0C 801216FC 0C045011 */  jal         func_80114044
/* 016C10 80121700 24050001 */   addiu      $a1, $zero, 0x1
/* 016C14 80121704 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016C18 80121708 0C045807 */  jal         func_8011601C
/* 016C1C 8012170C 00402825 */   move       $a1, $v0
/* 016C20 80121710 10000005 */  b           .L80121728
/* 016C24 80121714 8FBF0014 */   lw         $ra, 0x14($sp)
.L80121718:
/* 016C28 80121718 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016C2C 8012171C 0C045807 */  jal         func_8011601C
/* 016C30 80121720 00002825 */   move       $a1, $zero
/* 016C34 80121724 8FBF0014 */  lw          $ra, 0x14($sp)
.L80121728:
/* 016C38 80121728 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016C3C 8012172C 00001025 */  move        $v0, $zero
/* 016C40 80121730 03E00008 */  jr          $ra
/* 016C44 80121734 00000000 */   nop

glabel func_80121738 # 278
/* 016C48 80121738 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016C4C 8012173C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016C50 80121740 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016C54 80121744 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016C58 80121748 0C003D35 */  jal         func_8000F4D4
/* 016C5C 8012174C AFAF001C */   sw         $t7, 0x1c($sp)
/* 016C60 80121750 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016C64 80121754 0C045807 */  jal         func_8011601C
/* 016C68 80121758 00002825 */   move       $a1, $zero
/* 016C6C 8012175C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016C70 80121760 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016C74 80121764 00001025 */  move        $v0, $zero
/* 016C78 80121768 03E00008 */  jr          $ra
/* 016C7C 8012176C 00000000 */   nop

glabel func_80121770 # 279
/* 016C80 80121770 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016C84 80121774 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016C88 80121778 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016C8C 8012177C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016C90 80121780 0C04582D */  jal         func_801160B4
/* 016C94 80121784 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016C98 80121788 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 016C9C 8012178C 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 016CA0 80121790 0C04496B */  jal         func_801125AC
/* 016CA4 80121794 00402825 */   move       $a1, $v0
/* 016CA8 80121798 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016CAC 8012179C 0C045807 */  jal         func_8011601C
/* 016CB0 801217A0 00402825 */   move       $a1, $v0
/* 016CB4 801217A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016CB8 801217A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016CBC 801217AC 00001025 */  move        $v0, $zero
/* 016CC0 801217B0 03E00008 */  jr          $ra
/* 016CC4 801217B4 00000000 */   nop
/* 016CC8 801217B8 00000000 */  nop
/* 016CCC 801217BC 00000000 */  nop
