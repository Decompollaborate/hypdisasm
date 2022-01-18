.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_2BFDC0 # 0
/* 000000 80138370 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80138374 00051080 */  sll         $v0, $a1, 2
/* 000008 80138378 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00000C 8013837C 3C058014 */  lui         $a1, %hi(D_80145658)
/* 000010 80138380 3C068014 */  lui         $a2, %hi(D_80145664)
/* 000014 80138384 00C23021 */  addu        $a2, $a2, $v0
/* 000018 80138388 00A22821 */  addu        $a1, $a1, $v0
/* 00001C 8013838C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000020 80138390 8CA55658 */  lw          $a1, %lo(D_80145658)($a1)
/* 000024 80138394 8CC65664 */  lw          $a2, %lo(D_80145664)($a2)
/* 000028 80138398 0C044538 */  jal         func_801114E0
/* 00002C 8013839C 00003825 */   move       $a3, $zero
/* 000030 801383A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000034 801383A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000038 801383A8 03E00008 */  jr          $ra
/* 00003C 801383AC 00000000 */   nop

glabel func_801383B0_2BFDC0 # 1
/* 000040 801383B0 03E00008 */  jr          $ra
/* 000044 801383B4 00000000 */   nop

glabel func_801383B8_2BFDC0 # 2
/* 000048 801383B8 03E00008 */  jr          $ra
/* 00004C 801383BC 00000000 */   nop

glabel func_801383C0_2BFDC0 # 3
/* 000050 801383C0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 000054 801383C4 AFB5002C */  sw          $s5, 0x2c($sp)
/* 000058 801383C8 AFB40028 */  sw          $s4, 0x28($sp)
/* 00005C 801383CC AFB60030 */  sw          $s6, 0x30($sp)
/* 000060 801383D0 AFB30024 */  sw          $s3, 0x24($sp)
/* 000064 801383D4 3C148014 */  lui         $s4, %hi(D_80145650)
/* 000068 801383D8 3C158014 */  lui         $s5, %hi(D_80138A4C)
/* 00006C 801383DC AFBF0034 */  sw          $ra, 0x34($sp)
/* 000070 801383E0 AFB20020 */  sw          $s2, 0x20($sp)
/* 000074 801383E4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000078 801383E8 AFB00018 */  sw          $s0, 0x18($sp)
/* 00007C 801383EC 26B58A4C */  addiu       $s5, $s5, %lo(D_80138A4C)
/* 000080 801383F0 26945650 */  addiu       $s4, $s4, %lo(D_80145650)
/* 000084 801383F4 24130001 */  addiu       $s3, $zero, 0x1
/* 000088 801383F8 24160003 */  addiu       $s6, $zero, 0x3
.L801383FC:
/* 00008C 801383FC 8E8E0000 */  lw          $t6, 0x0($s4)
/* 000090 80138400 00008025 */  move        $s0, $zero
/* 000094 80138404 000E78C0 */  sll         $t7, $t6, 3
/* 000098 80138408 02AFC021 */  addu        $t8, $s5, $t7
/* 00009C 8013840C 8F120000 */  lw          $s2, 0x0($t8)
/* 0000A0 80138410 00008825 */  move        $s1, $zero
/* 0000A4 80138414 1A40000B */  blez        $s2, .L80138444
/* 0000A8 80138418 00000000 */   nop
.L8013841C:
/* 0000AC 8013841C 8E990000 */  lw          $t9, 0x0($s4)
/* 0000B0 80138420 02602825 */  move        $a1, $s3
/* 0000B4 80138424 001940C0 */  sll         $t0, $t9, 3
/* 0000B8 80138428 02A84821 */  addu        $t1, $s5, $t0
/* 0000BC 8013842C 8D2A0004 */  lw          $t2, 0x4($t1)
/* 0000C0 80138430 0C04E0DC */  jal         func_80138370_2BFDC0
/* 0000C4 80138434 01512021 */   addu       $a0, $t2, $s1
/* 0000C8 80138438 26100001 */  addiu       $s0, $s0, 0x1
/* 0000CC 8013843C 1612FFF7 */  bne         $s0, $s2, .L8013841C
/* 0000D0 80138440 2631000C */   addiu      $s1, $s1, 0xc
.L80138444:
/* 0000D4 80138444 26730001 */  addiu       $s3, $s3, 0x1
/* 0000D8 80138448 1676FFEC */  bne         $s3, $s6, .L801383FC
/* 0000DC 8013844C 26940004 */   addiu      $s4, $s4, 0x4
/* 0000E0 80138450 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0000E4 80138454 8FB00018 */  lw          $s0, 0x18($sp)
/* 0000E8 80138458 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0000EC 8013845C 8FB20020 */  lw          $s2, 0x20($sp)
/* 0000F0 80138460 8FB30024 */  lw          $s3, 0x24($sp)
/* 0000F4 80138464 8FB40028 */  lw          $s4, 0x28($sp)
/* 0000F8 80138468 8FB5002C */  lw          $s5, 0x2c($sp)
/* 0000FC 8013846C 8FB60030 */  lw          $s6, 0x30($sp)
/* 000100 80138470 03E00008 */  jr          $ra
/* 000104 80138474 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80138478_2BFDC0 # 4
/* 000108 80138478 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00010C 8013847C AFA40030 */  sw          $a0, 0x30($sp)
/* 000110 80138480 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000114 80138484 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000118 80138488 44856000 */  mtc1        $a1, $f12
/* 00011C 8013848C 44802000 */  mtc1        $zero, $f4
/* 000120 80138490 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 000124 80138494 8DC50000 */  lw          $a1, 0x0($t6)
/* 000128 80138498 8DC70008 */  lw          $a3, 0x8($t6)
/* 00012C 8013849C 8DC60004 */  lw          $a2, 0x4($t6)
/* 000130 801384A0 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 000134 801384A4 E7AC0014 */  swc1        $f12, 0x14($sp)
/* 000138 801384A8 E7A40010 */  swc1        $f4, 0x10($sp)
/* 00013C 801384AC C5E6000C */  lwc1        $f6, 0xc($t7)
/* 000140 801384B0 3C198014 */  lui         $t9, %hi(D_80145670)
/* 000144 801384B4 8F395670 */  lw          $t9, %lo(D_80145670)($t9)
/* 000148 801384B8 3C188014 */  lui         $t8, %hi(D_801444B4)
/* 00014C 801384BC 271844B4 */  addiu       $t8, $t8, %lo(D_801444B4)
/* 000150 801384C0 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000154 801384C4 2404000C */  addiu       $a0, $zero, 0xc
/* 000158 801384C8 E7A60018 */  swc1        $f6, 0x18($sp)
/* 00015C 801384CC 0C007179 */  jal         func_8001C5E4
/* 000160 801384D0 AFB90020 */   sw         $t9, 0x20($sp)
/* 000164 801384D4 3C058014 */  lui         $a1, %hi(D_80145670)
/* 000168 801384D8 8CA35670 */  lw          $v1, %lo(D_80145670)($a1)
/* 00016C 801384DC 00402025 */  move        $a0, $v0
/* 000170 801384E0 04610004 */  bgez        $v1, .L801384F4
/* 000174 801384E4 3C098014 */   lui        $t1, %hi(D_80145674)
.L801384E8:
/* 000178 801384E8 24630005 */  addiu       $v1, $v1, 0x5
/* 00017C 801384EC 0460FFFE */  bltz        $v1, .L801384E8
/* 000180 801384F0 00000000 */   nop
.L801384F4:
/* 000184 801384F4 28610005 */  slti        $at, $v1, 0x5
/* 000188 801384F8 14200005 */  bnez        $at, .L80138510
/* 00018C 801384FC 25295674 */   addiu      $t1, $t1, %lo(D_80145674)
.L80138500:
/* 000190 80138500 2463FFFB */  addiu       $v1, $v1, -0x5
/* 000194 80138504 28610005 */  slti        $at, $v1, 0x5
/* 000198 80138508 1020FFFD */  beqz        $at, .L80138500
/* 00019C 8013850C 00000000 */   nop
.L80138510:
/* 0001A0 80138510 00034080 */  sll         $t0, $v1, 2
/* 0001A4 80138514 01091021 */  addu        $v0, $t0, $t1
/* 0001A8 80138518 3C013F00 */  lui         $at, 0x3f00
/* 0001AC 8013851C 44814000 */  mtc1        $at, $f8
/* 0001B0 80138520 904A0003 */  lbu         $t2, 0x3($v0)
/* 0001B4 80138524 90450000 */  lbu         $a1, 0x0($v0)
/* 0001B8 80138528 90460001 */  lbu         $a2, 0x1($v0)
/* 0001BC 8013852C 90470002 */  lbu         $a3, 0x2($v0)
/* 0001C0 80138530 E7A80014 */  swc1        $f8, 0x14($sp)
/* 0001C4 80138534 0C004F38 */  jal         func_80013CE0
/* 0001C8 80138538 AFAA0010 */   sw         $t2, 0x10($sp)
/* 0001CC 8013853C 3C058014 */  lui         $a1, %hi(D_80145670)
/* 0001D0 80138540 8CA55670 */  lw          $a1, %lo(D_80145670)($a1)
/* 0001D4 80138544 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001D8 80138548 3C018014 */  lui         $at, %hi(D_80145670)
/* 0001DC 8013854C 24A50001 */  addiu       $a1, $a1, 0x1
/* 0001E0 80138550 AC255670 */  sw          $a1, %lo(D_80145670)($at)
/* 0001E4 80138554 03E00008 */  jr          $ra
/* 0001E8 80138558 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8013855C_2BFDC0 # 5
/* 0001EC 8013855C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0001F0 80138560 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001F4 80138564 0C00E512 */  jal         func_80039448
/* 0001F8 80138568 AFA40018 */   sw         $a0, 0x18($sp)
/* 0001FC 8013856C 44822000 */  mtc1        $v0, $f4
/* 000200 80138570 8FA40018 */  lw          $a0, 0x18($sp)
/* 000204 80138574 04410006 */  bgez        $v0, .L80138590
/* 000208 80138578 468021A1 */   cvt.d.w    $f6, $f4
/* 00020C 8013857C 3C0141F0 */  lui         $at, 0x41f0
/* 000210 80138580 44814800 */  mtc1        $at, $f9
/* 000214 80138584 44804000 */  mtc1        $zero, $f8
/* 000218 80138588 00000000 */  nop
/* 00021C 8013858C 46283180 */  add.d       $f6, $f6, $f8
.L80138590:
/* 000220 80138590 3C013DF0 */  lui         $at, 0x3df0
/* 000224 80138594 44815800 */  mtc1        $at, $f11
/* 000228 80138598 44805000 */  mtc1        $zero, $f10
/* 00022C 8013859C 3C018014 */  lui         $at, %hi(D_801464E8)
/* 000230 801385A0 462A3402 */  mul.d       $f16, $f6, $f10
/* 000234 801385A4 C43364E8 */  lwc1        $f19, %lo(D_801464E8)($at)
/* 000238 801385A8 C43264EC */  lwc1        $f18, %lo(D_801464EC)($at)
/* 00023C 801385AC 00000000 */  nop
/* 000240 801385B0 46328102 */  mul.d       $f4, $f16, $f18
/* 000244 801385B4 46202220 */  cvt.s.d     $f8, $f4
/* 000248 801385B8 44054000 */  mfc1        $a1, $f8
/* 00024C 801385BC 0C04E11E */  jal         func_80138478_2BFDC0
/* 000250 801385C0 00000000 */   nop
/* 000254 801385C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000258 801385C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00025C 801385CC 03E00008 */  jr          $ra
/* 000260 801385D0 00000000 */   nop

glabel func_801385D4_2BFDC0 # 6
/* 000264 801385D4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000268 801385D8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00026C 801385DC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000270 801385E0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000274 801385E4 44856000 */  mtc1        $a1, $f12
/* 000278 801385E8 44802000 */  mtc1        $zero, $f4
/* 00027C 801385EC 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 000280 801385F0 8DC50000 */  lw          $a1, 0x0($t6)
/* 000284 801385F4 8DC70008 */  lw          $a3, 0x8($t6)
/* 000288 801385F8 8DC60004 */  lw          $a2, 0x4($t6)
/* 00028C 801385FC 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 000290 80138600 E7AC0014 */  swc1        $f12, 0x14($sp)
/* 000294 80138604 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000298 80138608 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 00029C 8013860C 3C188014 */  lui         $t8, %hi(D_80144880)
/* 0002A0 80138610 27184880 */  addiu       $t8, $t8, %lo(D_80144880)
/* 0002A4 80138614 AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002A8 80138618 AFA00020 */  sw          $zero, 0x20($sp)
/* 0002AC 8013861C 24040003 */  addiu       $a0, $zero, 0x3
/* 0002B0 80138620 0C007179 */  jal         func_8001C5E4
/* 0002B4 80138624 E7A60018 */   swc1       $f6, 0x18($sp)
/* 0002B8 80138628 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002BC 8013862C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002C0 80138630 03E00008 */  jr          $ra
/* 0002C4 80138634 00000000 */   nop

glabel func_80138638_2BFDC0 # 7
/* 0002C8 80138638 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0002CC 8013863C AFA40030 */  sw          $a0, 0x30($sp)
/* 0002D0 80138640 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0002D4 80138644 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0002D8 80138648 44800000 */  mtc1        $zero, $f0
/* 0002DC 8013864C 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 0002E0 80138650 8DC70008 */  lw          $a3, 0x8($t6)
/* 0002E4 80138654 8DC60004 */  lw          $a2, 0x4($t6)
/* 0002E8 80138658 8DC50000 */  lw          $a1, 0x0($t6)
/* 0002EC 8013865C 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 0002F0 80138660 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0002F4 80138664 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0002F8 80138668 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 0002FC 8013866C 3C188014 */  lui         $t8, %hi(D_801452E0)
/* 000300 80138670 271852E0 */  addiu       $t8, $t8, %lo(D_801452E0)
/* 000304 80138674 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000308 80138678 AFA00020 */  sw          $zero, 0x20($sp)
/* 00030C 8013867C 24040011 */  addiu       $a0, $zero, 0x11
/* 000310 80138680 0C007179 */  jal         func_8001C5E4
/* 000314 80138684 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000318 80138688 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00031C 8013868C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000320 80138690 03E00008 */  jr          $ra
/* 000324 80138694 00000000 */   nop

glabel func_80138698_2BFDC0 # 8
/* 000328 80138698 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 00032C 8013869C AFBF002C */  sw          $ra, 0x2c($sp)
/* 000330 801386A0 AFB40028 */  sw          $s4, 0x28($sp)
/* 000334 801386A4 AFB30024 */  sw          $s3, 0x24($sp)
/* 000338 801386A8 AFB20020 */  sw          $s2, 0x20($sp)
/* 00033C 801386AC AFB1001C */  sw          $s1, 0x1c($sp)
/* 000340 801386B0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000344 801386B4 27A20038 */  addiu       $v0, $sp, 0x38
/* 000348 801386B8 27A30078 */  addiu       $v1, $sp, 0x78
.L801386BC:
/* 00034C 801386BC 24420004 */  addiu       $v0, $v0, 0x4
/* 000350 801386C0 0043082B */  sltu        $at, $v0, $v1
/* 000354 801386C4 1420FFFD */  bnez        $at, .L801386BC
/* 000358 801386C8 AC40FFFC */   sw         $zero, -0x4($v0)
/* 00035C 801386CC 3C128014 */  lui         $s2, %hi(D_8013898C)
/* 000360 801386D0 2652898C */  addiu       $s2, $s2, %lo(D_8013898C)
/* 000364 801386D4 00008025 */  move        $s0, $zero
/* 000368 801386D8 24140004 */  addiu       $s4, $zero, 0x4
/* 00036C 801386DC 2413000C */  addiu       $s3, $zero, 0xc
/* 000370 801386E0 27B10038 */  addiu       $s1, $sp, 0x38
.L801386E4:
/* 000374 801386E4 0C00E500 */  jal         func_80039400
/* 000378 801386E8 24040010 */   addiu      $a0, $zero, 0x10
/* 00037C 801386EC 00027080 */  sll         $t6, $v0, 2
/* 000380 801386F0 022E7821 */  addu        $t7, $s1, $t6
/* 000384 801386F4 8DF80000 */  lw          $t8, 0x0($t7)
/* 000388 801386F8 00401825 */  move        $v1, $v0
/* 00038C 801386FC 13000013 */  beqz        $t8, .L8013874C
/* 000390 80138700 0002C880 */   sll        $t9, $v0, 2
/* 000394 80138704 02391021 */  addu        $v0, $s1, $t9
.L80138708:
/* 000398 80138708 24630001 */  addiu       $v1, $v1, 0x1
/* 00039C 8013870C 04610004 */  bgez        $v1, .L80138720
/* 0003A0 80138710 24420004 */   addiu      $v0, $v0, 0x4
.L80138714:
/* 0003A4 80138714 24630010 */  addiu       $v1, $v1, 0x10
/* 0003A8 80138718 0460FFFE */  bltz        $v1, .L80138714
/* 0003AC 8013871C 24420040 */   addiu      $v0, $v0, 0x40
.L80138720:
/* 0003B0 80138720 28610010 */  slti        $at, $v1, 0x10
/* 0003B4 80138724 14200005 */  bnez        $at, .L8013873C
/* 0003B8 80138728 00000000 */   nop
.L8013872C:
/* 0003BC 8013872C 2463FFF0 */  addiu       $v1, $v1, -0x10
/* 0003C0 80138730 28610010 */  slti        $at, $v1, 0x10
/* 0003C4 80138734 1020FFFD */  beqz        $at, .L8013872C
/* 0003C8 80138738 2442FFC0 */   addiu      $v0, $v0, -0x40
.L8013873C:
/* 0003CC 8013873C 8C480000 */  lw          $t0, 0x0($v0)
/* 0003D0 80138740 00000000 */  nop
/* 0003D4 80138744 1500FFF0 */  bnez        $t0, .L80138708
/* 0003D8 80138748 00000000 */   nop
.L8013874C:
/* 0003DC 8013874C 00730019 */  multu       $v1, $s3
/* 0003E0 80138750 00004812 */  mflo        $t1
/* 0003E4 80138754 02492021 */  addu        $a0, $s2, $t1
/* 0003E8 80138758 0C04E157 */  jal         func_8013855C_2BFDC0
/* 0003EC 8013875C 00000000 */   nop
/* 0003F0 80138760 26100001 */  addiu       $s0, $s0, 0x1
/* 0003F4 80138764 1614FFDF */  bne         $s0, $s4, .L801386E4
/* 0003F8 80138768 00000000 */   nop
/* 0003FC 8013876C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000400 80138770 8FB00018 */  lw          $s0, 0x18($sp)
/* 000404 80138774 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000408 80138778 8FB20020 */  lw          $s2, 0x20($sp)
/* 00040C 8013877C 8FB30024 */  lw          $s3, 0x24($sp)
/* 000410 80138780 8FB40028 */  lw          $s4, 0x28($sp)
/* 000414 80138784 03E00008 */  jr          $ra
/* 000418 80138788 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8013878C_2BFDC0 # 9
/* 00041C 8013878C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000420 80138790 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000424 80138794 0C00694C */  jal         func_8001A530
/* 000428 80138798 00000000 */   nop
/* 00042C 8013879C 0C04E0F0 */  jal         func_801383C0_2BFDC0
/* 000430 801387A0 00000000 */   nop
/* 000434 801387A4 3C048014 */  lui         $a0, %hi(D_80145688)
/* 000438 801387A8 24845688 */  addiu       $a0, $a0, %lo(D_80145688)
/* 00043C 801387AC 0C04E175 */  jal         func_801385D4_2BFDC0
/* 000440 801387B0 3C05439B */   lui        $a1, 0x439b
/* 000444 801387B4 0C04E1A6 */  jal         func_80138698_2BFDC0
/* 000448 801387B8 00000000 */   nop
/* 00044C 801387BC 3C048014 */  lui         $a0, %hi(D_801456A0)
/* 000450 801387C0 0C04E18E */  jal         func_80138638_2BFDC0
/* 000454 801387C4 248456A0 */   addiu      $a0, $a0, %lo(D_801456A0)
/* 000458 801387C8 3C048014 */  lui         $a0, %hi(D_80145694)
/* 00045C 801387CC 24845694 */  addiu       $a0, $a0, %lo(D_80145694)
/* 000460 801387D0 0C04E11E */  jal         func_80138478_2BFDC0
/* 000464 801387D4 3C054120 */   lui        $a1, 0x4120
/* 000468 801387D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00046C 801387DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000470 801387E0 03E00008 */  jr          $ra
/* 000474 801387E4 00000000 */   nop

glabel func_801387E8_2BFDC0 # 10
/* 000478 801387E8 3C014014 */  lui         $at, 0x4014
/* 00047C 801387EC 44813800 */  mtc1        $at, $f7
/* 000480 801387F0 44803000 */  mtc1        $zero, $f6
/* 000484 801387F4 46007121 */  cvt.d.s     $f4, $f14
/* 000488 801387F8 00000000 */  nop
/* 00048C 801387FC 46262203 */  div.d       $f8, $f4, $f6
/* 000490 80138800 AFA60008 */  sw          $a2, 0x8($sp)
/* 000494 80138804 444EF800 */  cfc1        $t6, FpcCsr
/* 000498 80138808 00000000 */  nop
/* 00049C 8013880C 35C10003 */  ori         $at, $t6, 0x3
/* 0004A0 80138810 38210002 */  xori        $at, $at, 0x2
/* 0004A4 80138814 44C1F800 */  ctc1        $at, FpcCsr
/* 0004A8 80138818 00000000 */  nop
/* 0004AC 8013881C 462042A4 */  cvt.w.d     $f10, $f8
/* 0004B0 80138820 44025000 */  mfc1        $v0, $f10
/* 0004B4 80138824 44CEF800 */  ctc1        $t6, FpcCsr
/* 0004B8 80138828 04400027 */  bltz        $v0, .L801388C8
/* 0004BC 8013882C 28410020 */   slti       $at, $v0, 0x20
/* 0004C0 80138830 10200025 */  beqz        $at, .L801388C8
/* 0004C4 80138834 3C014024 */   lui        $at, 0x4024
/* 0004C8 80138838 44810800 */  mtc1        $at, $f1
/* 0004CC 8013883C 44800000 */  mtc1        $zero, $f0
/* 0004D0 80138840 46006421 */  cvt.d.s     $f16, $f12
/* 0004D4 80138844 00000000 */  nop
/* 0004D8 80138848 46208483 */  div.d       $f18, $f16, $f0
/* 0004DC 8013884C 444FF800 */  cfc1        $t7, FpcCsr
/* 0004E0 80138850 00000000 */  nop
/* 0004E4 80138854 35E10003 */  ori         $at, $t7, 0x3
/* 0004E8 80138858 38210002 */  xori        $at, $at, 0x2
/* 0004EC 8013885C 44C1F800 */  ctc1        $at, FpcCsr
/* 0004F0 80138860 00000000 */  nop
/* 0004F4 80138864 46209124 */  cvt.w.d     $f4, $f18
/* 0004F8 80138868 44032000 */  mfc1        $v1, $f4
/* 0004FC 8013886C 44CFF800 */  ctc1        $t7, FpcCsr
/* 000500 80138870 04600015 */  bltz        $v1, .L801388C8
/* 000504 80138874 28610020 */   slti       $at, $v1, 0x20
/* 000508 80138878 10200013 */  beqz        $at, .L801388C8
/* 00050C 8013887C 00000000 */   nop
/* 000510 80138880 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000514 80138884 00000000 */  nop
/* 000518 80138888 46003221 */  cvt.d.s     $f8, $f6
/* 00051C 8013888C 00000000 */  nop
/* 000520 80138890 46204283 */  div.d       $f10, $f8, $f0
/* 000524 80138894 4458F800 */  cfc1        $t8, FpcCsr
/* 000528 80138898 00000000 */  nop
/* 00052C 8013889C 37010003 */  ori         $at, $t8, 0x3
/* 000530 801388A0 38210002 */  xori        $at, $at, 0x2
/* 000534 801388A4 44C1F800 */  ctc1        $at, FpcCsr
/* 000538 801388A8 00000000 */  nop
/* 00053C 801388AC 46205424 */  cvt.w.d     $f16, $f10
/* 000540 801388B0 44048000 */  mfc1        $a0, $f16
/* 000544 801388B4 44D8F800 */  ctc1        $t8, FpcCsr
/* 000548 801388B8 04800003 */  bltz        $a0, .L801388C8
/* 00054C 801388BC 28810020 */   slti       $at, $a0, 0x20
/* 000550 801388C0 14200003 */  bnez        $at, .L801388D0
/* 000554 801388C4 0002C880 */   sll        $t9, $v0, 2
.L801388C8:
/* 000558 801388C8 03E00008 */  jr          $ra
/* 00055C 801388CC 00001025 */   move       $v0, $zero
.L801388D0:
/* 000560 801388D0 3C058016 */  lui         $a1, %hi(D_8015BDD4)
/* 000564 801388D4 00B92821 */  addu        $a1, $a1, $t9
/* 000568 801388D8 8CA5BDD4 */  lw          $a1, %lo(D_8015BDD4)($a1)
/* 00056C 801388DC 000449C0 */  sll         $t1, $a0, 7
/* 000570 801388E0 14A00003 */  bnez        $a1, .L801388F0
/* 000574 801388E4 00A95021 */   addu       $t2, $a1, $t1
/* 000578 801388E8 03E00008 */  jr          $ra
/* 00057C 801388EC 00001025 */   move       $v0, $zero
.L801388F0:
/* 000580 801388F0 00035880 */  sll         $t3, $v1, 2
/* 000584 801388F4 014B6021 */  addu        $t4, $t2, $t3
/* 000588 801388F8 8D820000 */  lw          $v0, 0x0($t4)
/* 00058C 801388FC 00000000 */  nop
/* 000590 80138900 03E00008 */  jr          $ra
/* 000594 80138904 00000000 */   nop
/* 000598 80138908 00000000 */  nop
/* 00059C 8013890C 00000000 */  nop
