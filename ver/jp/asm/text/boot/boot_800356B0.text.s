.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800356B0 # 0
/* 035260 800356B0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 035264 800356B4 AFB00020 */  sw          $s0, 0x20($sp)
/* 035268 800356B8 93AE004B */  lbu         $t6, 0x4b($sp)
/* 03526C 800356BC AFBF0024 */  sw          $ra, 0x24($sp)
/* 035270 800356C0 AFA5003C */  sw          $a1, 0x3c($sp)
/* 035274 800356C4 AFA60040 */  sw          $a2, 0x40($sp)
/* 035278 800356C8 AFA70044 */  sw          $a3, 0x44($sp)
/* 03527C 800356CC 00808025 */  move        $s0, $a0
/* 035280 800356D0 240F0001 */  addiu       $t7, $zero, 0x1
/* 035284 800356D4 24180001 */  addiu       $t8, $zero, 0x1
/* 035288 800356D8 24190003 */  addiu       $t9, $zero, 0x3
/* 03528C 800356DC AC80066C */  sw          $zero, 0x66c($a0)
/* 035290 800356E0 AC800670 */  sw          $zero, 0x670($a0)
/* 035294 800356E4 AC800674 */  sw          $zero, 0x674($a0)
/* 035298 800356E8 AC800668 */  sw          $zero, 0x668($a0)
/* 03529C 800356EC AC8F0678 */  sw          $t7, 0x678($a0)
/* 0352A0 800356F0 AC80067C */  sw          $zero, 0x67c($a0)
/* 0352A4 800356F4 A4980000 */  sh          $t8, 0x0($a0)
/* 0352A8 800356F8 A4990002 */  sh          $t9, 0x2($a0)
/* 0352AC 800356FC 24840074 */  addiu       $a0, $a0, 0x74
/* 0352B0 80035700 AC8E060C */  sw          $t6, 0x60c($a0)
/* 0352B4 80035704 AFA40034 */  sw          $a0, 0x34($sp)
/* 0352B8 80035708 2605008C */  addiu       $a1, $s0, 0x8c
/* 0352BC 8003570C 0C013AEC */  jal         func_8004EBB0
/* 0352C0 80035710 24060008 */   addiu      $a2, $zero, 0x8
/* 0352C4 80035714 260400AC */  addiu       $a0, $s0, 0xac
/* 0352C8 80035718 AFA40030 */  sw          $a0, 0x30($sp)
/* 0352CC 8003571C 260500C4 */  addiu       $a1, $s0, 0xc4
/* 0352D0 80035720 0C013AEC */  jal         func_8004EBB0
/* 0352D4 80035724 24060008 */   addiu      $a2, $zero, 0x8
/* 0352D8 80035728 260400E4 */  addiu       $a0, $s0, 0xe4
/* 0352DC 8003572C AFA4002C */  sw          $a0, 0x2c($sp)
/* 0352E0 80035730 260500FC */  addiu       $a1, $s0, 0xfc
/* 0352E4 80035734 0C013AEC */  jal         func_8004EBB0
/* 0352E8 80035738 24060008 */   addiu      $a2, $zero, 0x8
/* 0352EC 8003573C 2604003C */  addiu       $a0, $s0, 0x3c
/* 0352F0 80035740 26050054 */  addiu       $a1, $s0, 0x54
/* 0352F4 80035744 0C013AEC */  jal         func_8004EBB0
/* 0352F8 80035748 24060008 */   addiu      $a2, $zero, 0x8
/* 0352FC 8003574C 26040004 */  addiu       $a0, $s0, 0x4
/* 035300 80035750 2605001C */  addiu       $a1, $s0, 0x1c
/* 035304 80035754 0C013AEC */  jal         func_8004EBB0
/* 035308 80035758 24060008 */   addiu      $a2, $zero, 0x8
/* 03530C 8003575C 2604011C */  addiu       $a0, $s0, 0x11c
/* 035310 80035760 26050134 */  addiu       $a1, $s0, 0x134
/* 035314 80035764 0C013AEC */  jal         func_8004EBB0
/* 035318 80035768 24060008 */   addiu      $a2, $zero, 0x8
/* 03531C 8003576C 0C01476C */  jal         func_80051DB0
/* 035320 80035770 240400FE */   addiu      $a0, $zero, 0xfe
/* 035324 80035774 93A80047 */  lbu         $t0, 0x47($sp)
/* 035328 80035778 3C0A800A */  lui         $t2, %hi(D_800A31F0)
/* 03532C 8003577C 254A31F0 */  addiu       $t2, $t2, %lo(D_800A31F0)
/* 035330 80035780 00084880 */  sll         $t1, $t0, 2
/* 035334 80035784 01284821 */  addu        $t1, $t1, $t0
/* 035338 80035788 00094900 */  sll         $t1, $t1, 4
/* 03533C 8003578C 0C014830 */  jal         func_800520C0
/* 035340 80035790 012A2021 */   addu       $a0, $t1, $t2
/* 035344 80035794 0C01452C */  jal         func_800514B0
/* 035348 80035798 24040001 */   addiu      $a0, $zero, 0x1
/* 03534C 8003579C 8FA40034 */  lw          $a0, 0x34($sp)
/* 035350 800357A0 2405029A */  addiu       $a1, $zero, 0x29a
/* 035354 800357A4 0C01484C */  jal         func_80052130
/* 035358 800357A8 93A6004B */   lbu        $a2, 0x4b($sp)
/* 03535C 800357AC 24040004 */  addiu       $a0, $zero, 0x4
/* 035360 800357B0 8FA50030 */  lw          $a1, 0x30($sp)
/* 035364 800357B4 0C013AF8 */  jal         func_8004EBE0
/* 035368 800357B8 2406029B */   addiu      $a2, $zero, 0x29b
/* 03536C 800357BC 24040009 */  addiu       $a0, $zero, 0x9
/* 035370 800357C0 8FA5002C */  lw          $a1, 0x2c($sp)
/* 035374 800357C4 0C013AF8 */  jal         func_8004EBE0
/* 035378 800357C8 2406029C */   addiu      $a2, $zero, 0x29c
/* 03537C 800357CC 2404000E */  addiu       $a0, $zero, 0xe
/* 035380 800357D0 8FA50034 */  lw          $a1, 0x34($sp)
/* 035384 800357D4 0C013AF8 */  jal         func_8004EBE0
/* 035388 800357D8 2406029D */   addiu      $a2, $zero, 0x29d
/* 03538C 800357DC 8FAC0040 */  lw          $t4, 0x40($sp)
/* 035390 800357E0 8FA5003C */  lw          $a1, 0x3c($sp)
/* 035394 800357E4 3C0B8010 */  lui         $t3, %hi(D_800F9080)
/* 035398 800357E8 256B9080 */  addiu       $t3, $t3, %lo(D_800F9080)
/* 03539C 800357EC 26040158 */  addiu       $a0, $s0, 0x158
/* 0353A0 800357F0 3C068003 */  lui         $a2, %hi(func_800358B8)
/* 0353A4 800357F4 258D000A */  addiu       $t5, $t4, 0xa
/* 0353A8 800357F8 AFAD0014 */  sw          $t5, 0x14($sp)
/* 0353AC 800357FC 24C658B8 */  addiu       $a2, $a2, %lo(func_800358B8)
/* 0353B0 80035800 AFA40034 */  sw          $a0, 0x34($sp)
/* 0353B4 80035804 AFAB0010 */  sw          $t3, 0x10($sp)
/* 0353B8 80035808 02003825 */  move        $a3, $s0
/* 0353BC 8003580C 0C013968 */  jal         func_8004E5A0
/* 0353C0 80035810 24A50002 */   addiu      $a1, $a1, 0x2
/* 0353C4 80035814 0C0139BC */  jal         func_8004E6F0
/* 0353C8 80035818 8FA40034 */   lw         $a0, 0x34($sp)
/* 0353CC 8003581C 8FAF0040 */  lw          $t7, 0x40($sp)
/* 0353D0 80035820 8FA5003C */  lw          $a1, 0x3c($sp)
/* 0353D4 80035824 3C0E8010 */  lui         $t6, %hi(D_800FB080)
/* 0353D8 80035828 25CEB080 */  addiu       $t6, $t6, %lo(D_800FB080)
/* 0353DC 8003582C 26040308 */  addiu       $a0, $s0, 0x308
/* 0353E0 80035830 3C068003 */  lui         $a2, %hi(func_80035A9C)
/* 0353E4 80035834 25F80005 */  addiu       $t8, $t7, 0x5
/* 0353E8 80035838 AFB80014 */  sw          $t8, 0x14($sp)
/* 0353EC 8003583C 24C65A9C */  addiu       $a2, $a2, %lo(func_80035A9C)
/* 0353F0 80035840 AFA40034 */  sw          $a0, 0x34($sp)
/* 0353F4 80035844 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0353F8 80035848 02003825 */  move        $a3, $s0
/* 0353FC 8003584C 0C013968 */  jal         func_8004E5A0
/* 035400 80035850 24A50001 */   addiu      $a1, $a1, 0x1
/* 035404 80035854 0C0139BC */  jal         func_8004E6F0
/* 035408 80035858 8FA40034 */   lw         $a0, 0x34($sp)
/* 03540C 8003585C 8FA80040 */  lw          $t0, 0x40($sp)
/* 035410 80035860 3C198010 */  lui         $t9, %hi(D_800FD080)
/* 035414 80035864 2739D080 */  addiu       $t9, $t9, %lo(D_800FD080)
/* 035418 80035868 260404B8 */  addiu       $a0, $s0, 0x4b8
/* 03541C 8003586C 3C068003 */  lui         $a2, %hi(func_80035C20)
/* 035420 80035870 24C65C20 */  addiu       $a2, $a2, %lo(func_80035C20)
/* 035424 80035874 AFA40034 */  sw          $a0, 0x34($sp)
/* 035428 80035878 AFB90010 */  sw          $t9, 0x10($sp)
/* 03542C 8003587C 8FA5003C */  lw          $a1, 0x3c($sp)
/* 035430 80035880 02003825 */  move        $a3, $s0
/* 035434 80035884 0C013968 */  jal         func_8004E5A0
/* 035438 80035888 AFA80014 */   sw         $t0, 0x14($sp)
/* 03543C 8003588C 0C0139BC */  jal         func_8004E6F0
/* 035440 80035890 8FA40034 */   lw         $a0, 0x34($sp)
/* 035444 80035894 8FBF0024 */  lw          $ra, 0x24($sp)
/* 035448 80035898 8FB00020 */  lw          $s0, 0x20($sp)
/* 03544C 8003589C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 035450 800358A0 03E00008 */  jr          $ra
/* 035454 800358A4 00000000 */   nop

glabel func_800358A8 # 1
/* 035458 800358A8 03E00008 */  jr          $ra
/* 03545C 800358AC 24820004 */   addiu      $v0, $a0, 0x4

glabel func_800358B0 # 2
/* 035460 800358B0 03E00008 */  jr          $ra
/* 035464 800358B4 2482003C */   addiu      $v0, $a0, 0x3c

glabel func_800358B8 # 3
/* 035468 800358B8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03546C 800358BC AFB10018 */  sw          $s1, 0x18($sp)
/* 035470 800358C0 AFB50028 */  sw          $s5, 0x28($sp)
/* 035474 800358C4 AFB40024 */  sw          $s4, 0x24($sp)
/* 035478 800358C8 AFB30020 */  sw          $s3, 0x20($sp)
/* 03547C 800358CC AFB2001C */  sw          $s2, 0x1c($sp)
/* 035480 800358D0 AFB00014 */  sw          $s0, 0x14($sp)
/* 035484 800358D4 3C11800A */  lui         $s1, %hi(D_800A1880)
/* 035488 800358D8 00808025 */  move        $s0, $a0
/* 03548C 800358DC AFBF002C */  sw          $ra, 0x2c($sp)
/* 035490 800358E0 AFA0003C */  sw          $zero, 0x3c($sp)
/* 035494 800358E4 26311880 */  addiu       $s1, $s1, %lo(D_800A1880)
/* 035498 800358E8 27B2003C */  addiu       $s2, $sp, 0x3c
/* 03549C 800358EC 2413029A */  addiu       $s3, $zero, 0x29a
/* 0354A0 800358F0 2414029D */  addiu       $s4, $zero, 0x29d
/* 0354A4 800358F4 24950074 */  addiu       $s5, $a0, 0x74
/* 0354A8 800358F8 02A02025 */  move        $a0, $s5
.L800358FC:
/* 0354AC 800358FC 02402825 */  move        $a1, $s2
/* 0354B0 80035900 0C013A48 */  jal         func_8004E920
/* 0354B4 80035904 24060001 */   addiu      $a2, $zero, 0x1
/* 0354B8 80035908 8E2E0000 */  lw          $t6, 0x0($s1)
/* 0354BC 8003590C 8FB8003C */  lw          $t8, 0x3c($sp)
/* 0354C0 80035910 02002025 */  move        $a0, $s0
/* 0354C4 80035914 25CF0001 */  addiu       $t7, $t6, 0x1
/* 0354C8 80035918 13130005 */  beq         $t8, $s3, .L80035930
/* 0354CC 8003591C AE2F0000 */   sw         $t7, 0x0($s1)
/* 0354D0 80035920 13140007 */  beq         $t8, $s4, .L80035940
/* 0354D4 80035924 02002025 */   move       $a0, $s0
/* 0354D8 80035928 1000FFF4 */  b           .L800358FC
/* 0354DC 8003592C 02A02025 */   move       $a0, $s5
.L80035930:
/* 0354E0 80035930 0C00D693 */  jal         func_80035A4C
/* 0354E4 80035934 02002825 */   move       $a1, $s0
/* 0354E8 80035938 1000FFF0 */  b           .L800358FC
/* 0354EC 8003593C 02A02025 */   move       $a0, $s5
.L80035940:
/* 0354F0 80035940 0C00D693 */  jal         func_80035A4C
/* 0354F4 80035944 26050002 */   addiu      $a1, $s0, 0x2
/* 0354F8 80035948 1000FFEC */  b           .L800358FC
/* 0354FC 8003594C 02A02025 */   move       $a0, $s5
/* 035500 80035950 8FBF002C */  lw          $ra, 0x2c($sp)
/* 035504 80035954 8FB00014 */  lw          $s0, 0x14($sp)
/* 035508 80035958 8FB10018 */  lw          $s1, 0x18($sp)
/* 03550C 8003595C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 035510 80035960 8FB30020 */  lw          $s3, 0x20($sp)
/* 035514 80035964 8FB40024 */  lw          $s4, 0x24($sp)
/* 035518 80035968 8FB50028 */  lw          $s5, 0x28($sp)
/* 03551C 8003596C 03E00008 */  jr          $ra
/* 035520 80035970 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_80035974 # 4
/* 035524 80035974 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 035528 80035978 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03552C 8003597C AFA40018 */  sw          $a0, 0x18($sp)
/* 035530 80035980 AFA60020 */  sw          $a2, 0x20($sp)
/* 035534 80035984 24040001 */  addiu       $a0, $zero, 0x1
/* 035538 80035988 0C0145C8 */  jal         osSetIntMask
/* 03553C 8003598C AFA5001C */   sw         $a1, 0x1c($sp)
/* 035540 80035990 8FA5001C */  lw          $a1, 0x1c($sp)
/* 035544 80035994 8FAE0020 */  lw          $t6, 0x20($sp)
/* 035548 80035998 8FA30018 */  lw          $v1, 0x18($sp)
/* 03554C 8003599C 00402025 */  move        $a0, $v0
/* 035550 800359A0 ACAE0004 */  sw          $t6, 0x4($a1)
/* 035554 800359A4 8C6F0668 */  lw          $t7, 0x668($v1)
/* 035558 800359A8 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03555C 800359AC 0C0145C8 */  jal         osSetIntMask
/* 035560 800359B0 AC650668 */   sw         $a1, 0x668($v1)
/* 035564 800359B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 035568 800359B8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03556C 800359BC 03E00008 */  jr          $ra
/* 035570 800359C0 00000000 */   nop

glabel func_800359C4 # 5
/* 035574 800359C4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 035578 800359C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03557C 800359CC AFA40020 */  sw          $a0, 0x20($sp)
/* 035580 800359D0 8C830668 */  lw          $v1, 0x668($a0)
/* 035584 800359D4 AFA00018 */  sw          $zero, 0x18($sp)
/* 035588 800359D8 AFA50024 */  sw          $a1, 0x24($sp)
/* 03558C 800359DC 24040001 */  addiu       $a0, $zero, 0x1
/* 035590 800359E0 0C0145C8 */  jal         osSetIntMask
/* 035594 800359E4 AFA3001C */   sw         $v1, 0x1c($sp)
/* 035598 800359E8 8FA3001C */  lw          $v1, 0x1c($sp)
/* 03559C 800359EC 8FA50024 */  lw          $a1, 0x24($sp)
/* 0355A0 800359F0 8FA60018 */  lw          $a2, 0x18($sp)
/* 0355A4 800359F4 1060000F */  beqz        $v1, .L80035A34
/* 0355A8 800359F8 00402025 */   move       $a0, $v0
.L800359FC:
/* 0355AC 800359FC 5465000A */  bnel        $v1, $a1, .L80035A28
/* 0355B0 80035A00 00603025 */   move       $a2, $v1
/* 0355B4 80035A04 10C00004 */  beqz        $a2, .L80035A18
/* 0355B8 80035A08 8FB90020 */   lw         $t9, 0x20($sp)
/* 0355BC 80035A0C 8CAF0000 */  lw          $t7, 0x0($a1)
/* 0355C0 80035A10 10000008 */  b           .L80035A34
/* 0355C4 80035A14 ACCF0000 */   sw         $t7, 0x0($a2)
.L80035A18:
/* 0355C8 80035A18 8CB80000 */  lw          $t8, 0x0($a1)
/* 0355CC 80035A1C 10000005 */  b           .L80035A34
/* 0355D0 80035A20 AF380668 */   sw         $t8, 0x668($t9)
/* 0355D4 80035A24 00603025 */  move        $a2, $v1
.L80035A28:
/* 0355D8 80035A28 8C630000 */  lw          $v1, 0x0($v1)
/* 0355DC 80035A2C 1460FFF3 */  bnez        $v1, .L800359FC
/* 0355E0 80035A30 00000000 */   nop
.L80035A34:
/* 0355E4 80035A34 0C0145C8 */  jal         osSetIntMask
/* 0355E8 80035A38 00000000 */   nop
/* 0355EC 80035A3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0355F0 80035A40 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0355F4 80035A44 03E00008 */  jr          $ra
/* 0355F8 80035A48 00000000 */   nop

glabel func_80035A4C # 6
/* 0355FC 80035A4C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 035600 80035A50 AFBF001C */  sw          $ra, 0x1c($sp)
/* 035604 80035A54 AFB10018 */  sw          $s1, 0x18($sp)
/* 035608 80035A58 AFB00014 */  sw          $s0, 0x14($sp)
/* 03560C 80035A5C 8C900668 */  lw          $s0, 0x668($a0)
/* 035610 80035A60 00A08825 */  move        $s1, $a1
/* 035614 80035A64 52000009 */  beql        $s0, $zero, .L80035A8C
/* 035618 80035A68 8FBF001C */   lw         $ra, 0x1c($sp)
/* 03561C 80035A6C 8E040004 */  lw          $a0, 0x4($s0)
.L80035A70:
/* 035620 80035A70 02202825 */  move        $a1, $s1
/* 035624 80035A74 0C013A98 */  jal         func_8004EA60
/* 035628 80035A78 00003025 */   move       $a2, $zero
/* 03562C 80035A7C 8E100000 */  lw          $s0, 0x0($s0)
/* 035630 80035A80 5600FFFB */  bnel        $s0, $zero, .L80035A70
/* 035634 80035A84 8E040004 */   lw         $a0, 0x4($s0)
/* 035638 80035A88 8FBF001C */  lw          $ra, 0x1c($sp)
.L80035A8C:
/* 03563C 80035A8C 8FB00014 */  lw          $s0, 0x14($sp)
/* 035640 80035A90 8FB10018 */  lw          $s1, 0x18($sp)
/* 035644 80035A94 03E00008 */  jr          $ra
/* 035648 80035A98 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80035A9C # 7
/* 03564C 80035A9C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 035650 80035AA0 AFBE0038 */  sw          $fp, 0x38($sp)
/* 035654 80035AA4 AFB70034 */  sw          $s7, 0x34($sp)
/* 035658 80035AA8 AFB60030 */  sw          $s6, 0x30($sp)
/* 03565C 80035AAC AFB5002C */  sw          $s5, 0x2c($sp)
/* 035660 80035AB0 AFB40028 */  sw          $s4, 0x28($sp)
/* 035664 80035AB4 AFB20020 */  sw          $s2, 0x20($sp)
/* 035668 80035AB8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03566C 80035ABC 00809025 */  move        $s2, $a0
/* 035670 80035AC0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 035674 80035AC4 AFB30024 */  sw          $s3, 0x24($sp)
/* 035678 80035AC8 AFB00018 */  sw          $s0, 0x18($sp)
/* 03567C 80035ACC AFA0005C */  sw          $zero, 0x5c($sp)
/* 035680 80035AD0 AFA00058 */  sw          $zero, 0x58($sp)
/* 035684 80035AD4 00008825 */  move        $s1, $zero
/* 035688 80035AD8 27B4005C */  addiu       $s4, $sp, 0x5c
/* 03568C 80035ADC 24950004 */  addiu       $s5, $a0, 0x4
/* 035690 80035AE0 27B60058 */  addiu       $s6, $sp, 0x58
/* 035694 80035AE4 24170001 */  addiu       $s7, $zero, 0x1
/* 035698 80035AE8 241E0002 */  addiu       $fp, $zero, 0x2
/* 03569C 80035AEC 02A02025 */  move        $a0, $s5
.L80035AF0:
/* 0356A0 80035AF0 02C02825 */  move        $a1, $s6
/* 0356A4 80035AF4 0C013A48 */  jal         func_8004E920
/* 0356A8 80035AF8 24060001 */   addiu      $a2, $zero, 0x1
/* 0356AC 80035AFC 8FAE0058 */  lw          $t6, 0x58($sp)
/* 0356B0 80035B00 8DC40040 */  lw          $a0, 0x40($t6)
/* 0356B4 80035B04 0C014868 */  jal         func_800521A0
/* 0356B8 80035B08 8DC50044 */   lw         $a1, 0x44($t6)
/* 0356BC 80035B0C 8E53066C */  lw          $s3, 0x66c($s2)
/* 0356C0 80035B10 5260000E */  beql        $s3, $zero, .L80035B4C
/* 0356C4 80035B14 8FAF0058 */   lw         $t7, 0x58($sp)
/* 0356C8 80035B18 0C014888 */  jal         osSpTaskYield
/* 0356CC 80035B1C 265000AC */   addiu      $s0, $s2, 0xac
/* 0356D0 80035B20 02002025 */  move        $a0, $s0
/* 0356D4 80035B24 02802825 */  move        $a1, $s4
/* 0356D8 80035B28 0C013A48 */  jal         func_8004E920
/* 0356DC 80035B2C 24060001 */   addiu      $a2, $zero, 0x1
/* 0356E0 80035B30 0C014890 */  jal         osSpTaskYielded
/* 0356E4 80035B34 26640010 */   addiu      $a0, $s3, 0x10
/* 0356E8 80035B38 10400003 */  beqz        $v0, .L80035B48
/* 0356EC 80035B3C 03C08825 */   move       $s1, $fp
/* 0356F0 80035B40 10000001 */  b           .L80035B48
/* 0356F4 80035B44 02E08825 */   move       $s1, $s7
.L80035B48:
/* 0356F8 80035B48 8FAF0058 */  lw          $t7, 0x58($sp)
.L80035B4C:
/* 0356FC 80035B4C 265000AC */  addiu       $s0, $s2, 0xac
/* 035700 80035B50 AE4F0670 */  sw          $t7, 0x670($s2)
/* 035704 80035B54 8FA40058 */  lw          $a0, 0x58($sp)
/* 035708 80035B58 0C0148F7 */  jal         osSpTaskLoad
/* 03570C 80035B5C 24840010 */   addiu      $a0, $a0, 0x10
/* 035710 80035B60 8FA40058 */  lw          $a0, 0x58($sp)
/* 035714 80035B64 0C01495B */  jal         func_8005256C
/* 035718 80035B68 24840010 */   addiu      $a0, $a0, 0x10
/* 03571C 80035B6C 02002025 */  move        $a0, $s0
/* 035720 80035B70 02802825 */  move        $a1, $s4
/* 035724 80035B74 0C013A48 */  jal         func_8004E920
/* 035728 80035B78 24060001 */   addiu      $a2, $zero, 0x1
/* 03572C 80035B7C 8E580674 */  lw          $t8, 0x674($s2)
/* 035730 80035B80 AE400670 */  sw          $zero, 0x670($s2)
/* 035734 80035B84 2644011C */  addiu       $a0, $s2, 0x11c
/* 035738 80035B88 13000003 */  beqz        $t8, .L80035B98
/* 03573C 80035B8C 02802825 */   move       $a1, $s4
/* 035740 80035B90 0C013A98 */  jal         func_8004EA60
/* 035744 80035B94 24060001 */   addiu      $a2, $zero, 0x1
.L80035B98:
/* 035748 80035B98 16370008 */  bne         $s1, $s7, .L80035BBC
/* 03574C 80035B9C 00000000 */   nop
/* 035750 80035BA0 26700010 */  addiu       $s0, $s3, 0x10
/* 035754 80035BA4 0C0148F7 */  jal         osSpTaskLoad
/* 035758 80035BA8 02002025 */   move       $a0, $s0
/* 03575C 80035BAC 0C01495B */  jal         func_8005256C
/* 035760 80035BB0 02002025 */   move       $a0, $s0
/* 035764 80035BB4 10000007 */  b           .L80035BD4
/* 035768 80035BB8 8FB90058 */   lw         $t9, 0x58($sp)
.L80035BBC:
/* 03576C 80035BBC 163E0004 */  bne         $s1, $fp, .L80035BD0
/* 035770 80035BC0 02002025 */   move       $a0, $s0
/* 035774 80035BC4 02802825 */  move        $a1, $s4
/* 035778 80035BC8 0C013A98 */  jal         func_8004EA60
/* 03577C 80035BCC 24060001 */   addiu      $a2, $zero, 0x1
.L80035BD0:
/* 035780 80035BD0 8FB90058 */  lw          $t9, 0x58($sp)
.L80035BD4:
/* 035784 80035BD4 24060001 */  addiu       $a2, $zero, 0x1
/* 035788 80035BD8 00008825 */  move        $s1, $zero
/* 03578C 80035BDC 8F240050 */  lw          $a0, 0x50($t9)
/* 035790 80035BE0 0C013A98 */  jal         func_8004EA60
/* 035794 80035BE4 8F250054 */   lw         $a1, 0x54($t9)
/* 035798 80035BE8 1000FFC1 */  b           .L80035AF0
/* 03579C 80035BEC 02A02025 */   move       $a0, $s5
/* 0357A0 80035BF0 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0357A4 80035BF4 8FB00018 */  lw          $s0, 0x18($sp)
/* 0357A8 80035BF8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0357AC 80035BFC 8FB20020 */  lw          $s2, 0x20($sp)
/* 0357B0 80035C00 8FB30024 */  lw          $s3, 0x24($sp)
/* 0357B4 80035C04 8FB40028 */  lw          $s4, 0x28($sp)
/* 0357B8 80035C08 8FB5002C */  lw          $s5, 0x2c($sp)
/* 0357BC 80035C0C 8FB60030 */  lw          $s6, 0x30($sp)
/* 0357C0 80035C10 8FB70034 */  lw          $s7, 0x34($sp)
/* 0357C4 80035C14 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0357C8 80035C18 03E00008 */  jr          $ra
/* 0357CC 80035C1C 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_80035C20 # 8
/* 0357D0 80035C20 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0357D4 80035C24 AFB50028 */  sw          $s5, 0x28($sp)
/* 0357D8 80035C28 AFB40024 */  sw          $s4, 0x24($sp)
/* 0357DC 80035C2C AFB30020 */  sw          $s3, 0x20($sp)
/* 0357E0 80035C30 AFB00014 */  sw          $s0, 0x14($sp)
/* 0357E4 80035C34 00808025 */  move        $s0, $a0
/* 0357E8 80035C38 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0357EC 80035C3C AFB2001C */  sw          $s2, 0x1c($sp)
/* 0357F0 80035C40 AFB10018 */  sw          $s1, 0x18($sp)
/* 0357F4 80035C44 AFA00044 */  sw          $zero, 0x44($sp)
/* 0357F8 80035C48 AFA00040 */  sw          $zero, 0x40($sp)
/* 0357FC 80035C4C 27B30044 */  addiu       $s3, $sp, 0x44
/* 035800 80035C50 27B40040 */  addiu       $s4, $sp, 0x40
/* 035804 80035C54 2495003C */  addiu       $s5, $a0, 0x3c
/* 035808 80035C58 02A02025 */  move        $a0, $s5
.L80035C5C:
/* 03580C 80035C5C 02802825 */  move        $a1, $s4
/* 035810 80035C60 0C013A48 */  jal         func_8004E920
/* 035814 80035C64 24060001 */   addiu      $a2, $zero, 0x1
/* 035818 80035C68 02002025 */  move        $a0, $s0
/* 03581C 80035C6C 0C00D765 */  jal         func_80035D94
/* 035820 80035C70 8FA50040 */   lw         $a1, 0x40($sp)
/* 035824 80035C74 8E0E0670 */  lw          $t6, 0x670($s0)
/* 035828 80035C78 8FAF0040 */  lw          $t7, 0x40($sp)
/* 03582C 80035C7C 2604011C */  addiu       $a0, $s0, 0x11c
/* 035830 80035C80 11C00005 */  beqz        $t6, .L80035C98
/* 035834 80035C84 02602825 */   move       $a1, $s3
/* 035838 80035C88 AE0F0674 */  sw          $t7, 0x674($s0)
/* 03583C 80035C8C 0C013A48 */  jal         func_8004E920
/* 035840 80035C90 24060001 */   addiu      $a2, $zero, 0x1
/* 035844 80035C94 AE000674 */  sw          $zero, 0x674($s0)
.L80035C98:
/* 035848 80035C98 8FB80040 */  lw          $t8, 0x40($sp)
/* 03584C 80035C9C 261100AC */  addiu       $s1, $s0, 0xac
/* 035850 80035CA0 261200E4 */  addiu       $s2, $s0, 0xe4
/* 035854 80035CA4 AE18066C */  sw          $t8, 0x66c($s0)
/* 035858 80035CA8 8FA40040 */  lw          $a0, 0x40($sp)
/* 03585C 80035CAC 0C0148F7 */  jal         osSpTaskLoad
/* 035860 80035CB0 24840010 */   addiu      $a0, $a0, 0x10
/* 035864 80035CB4 8FA40040 */  lw          $a0, 0x40($sp)
/* 035868 80035CB8 0C01495B */  jal         func_8005256C
/* 03586C 80035CBC 24840010 */   addiu      $a0, $a0, 0x10
/* 035870 80035CC0 02202025 */  move        $a0, $s1
/* 035874 80035CC4 02602825 */  move        $a1, $s3
/* 035878 80035CC8 0C013A48 */  jal         func_8004E920
/* 03587C 80035CCC 24060001 */   addiu      $a2, $zero, 0x1
/* 035880 80035CD0 AE00066C */  sw          $zero, 0x66c($s0)
/* 035884 80035CD4 02402025 */  move        $a0, $s2
/* 035888 80035CD8 02602825 */  move        $a1, $s3
/* 03588C 80035CDC 0C013A48 */  jal         func_8004E920
/* 035890 80035CE0 24060001 */   addiu      $a2, $zero, 0x1
/* 035894 80035CE4 8FB90040 */  lw          $t9, 0x40($sp)
/* 035898 80035CE8 8F280008 */  lw          $t0, 0x8($t9)
/* 03589C 80035CEC 31090040 */  andi        $t1, $t0, 0x40
/* 0358A0 80035CF0 51200012 */  beql        $t1, $zero, .L80035D3C
/* 0358A4 80035CF4 8FAF0040 */   lw         $t7, 0x40($sp)
/* 0358A8 80035CF8 8E0A067C */  lw          $t2, 0x67c($s0)
/* 0358AC 80035CFC 254B0001 */  addiu       $t3, $t2, 0x1
/* 0358B0 80035D00 AE0B067C */  sw          $t3, 0x67c($s0)
/* 0358B4 80035D04 8FAC0040 */  lw          $t4, 0x40($sp)
/* 0358B8 80035D08 0C014548 */  jal         func_80051520
/* 0358BC 80035D0C 8D84000C */   lw         $a0, 0xc($t4)
/* 0358C0 80035D10 8E0D0678 */  lw          $t5, 0x678($s0)
/* 0358C4 80035D14 51A00009 */  beql        $t5, $zero, .L80035D3C
/* 0358C8 80035D18 8FAF0040 */   lw         $t7, 0x40($sp)
/* 0358CC 80035D1C 8E0E067C */  lw          $t6, 0x67c($s0)
/* 0358D0 80035D20 2DC10015 */  sltiu       $at, $t6, 0x15
/* 0358D4 80035D24 54200005 */  bnel        $at, $zero, .L80035D3C
/* 0358D8 80035D28 8FAF0040 */   lw         $t7, 0x40($sp)
/* 0358DC 80035D2C 0C01452C */  jal         func_800514B0
/* 0358E0 80035D30 00002025 */   move       $a0, $zero
/* 0358E4 80035D34 AE000678 */  sw          $zero, 0x678($s0)
/* 0358E8 80035D38 8FAF0040 */  lw          $t7, 0x40($sp)
.L80035D3C:
/* 0358EC 80035D3C 24060001 */  addiu       $a2, $zero, 0x1
/* 0358F0 80035D40 8DE40050 */  lw          $a0, 0x50($t7)
/* 0358F4 80035D44 0C013A98 */  jal         func_8004EA60
/* 0358F8 80035D48 8DE50054 */   lw         $a1, 0x54($t7)
/* 0358FC 80035D4C 1000FFC3 */  b           .L80035C5C
/* 035900 80035D50 02A02025 */   move       $a0, $s5
/* 035904 80035D54 00000000 */  nop
/* 035908 80035D58 00000000 */  nop
/* 03590C 80035D5C 00000000 */  nop
/* 035910 80035D60 00000000 */  nop
/* 035914 80035D64 00000000 */  nop
/* 035918 80035D68 00000000 */  nop
/* 03591C 80035D6C 00000000 */  nop
/* 035920 80035D70 8FBF002C */  lw          $ra, 0x2c($sp)
/* 035924 80035D74 8FB00014 */  lw          $s0, 0x14($sp)
/* 035928 80035D78 8FB10018 */  lw          $s1, 0x18($sp)
/* 03592C 80035D7C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 035930 80035D80 8FB30020 */  lw          $s3, 0x20($sp)
/* 035934 80035D84 8FB40024 */  lw          $s4, 0x24($sp)
/* 035938 80035D88 8FB50028 */  lw          $s5, 0x28($sp)
/* 03593C 80035D8C 03E00008 */  jr          $ra
/* 035940 80035D90 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80035D94 # 9
/* 035944 80035D94 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 035948 80035D98 AFBF002C */  sw          $ra, 0x2c($sp)
/* 03594C 80035D9C AFB40028 */  sw          $s4, 0x28($sp)
/* 035950 80035DA0 AFB30024 */  sw          $s3, 0x24($sp)
/* 035954 80035DA4 AFB20020 */  sw          $s2, 0x20($sp)
/* 035958 80035DA8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03595C 80035DAC AFB00018 */  sw          $s0, 0x18($sp)
/* 035960 80035DB0 AFA00044 */  sw          $zero, 0x44($sp)
/* 035964 80035DB4 00808825 */  move        $s1, $a0
/* 035968 80035DB8 0C01496C */  jal         func_800525B0
/* 03596C 80035DBC 8CB3000C */   lw         $s3, 0xc($a1)
/* 035970 80035DC0 50530005 */  beql        $v0, $s3, .L80035DD8
/* 035974 80035DC4 27B2003C */   addiu      $s2, $sp, 0x3c
/* 035978 80035DC8 0C01497C */  jal         func_800525F0
/* 03597C 80035DCC 00000000 */   nop
/* 035980 80035DD0 14530016 */  bne         $v0, $s3, .L80035E2C
/* 035984 80035DD4 27B2003C */   addiu      $s2, $sp, 0x3c
.L80035DD8:
/* 035988 80035DD8 2630011C */  addiu       $s0, $s1, 0x11c
/* 03598C 80035DDC 27B40044 */  addiu       $s4, $sp, 0x44
/* 035990 80035DE0 02003025 */  move        $a2, $s0
/* 035994 80035DE4 02402825 */  move        $a1, $s2
/* 035998 80035DE8 0C00D65D */  jal         func_80035974
/* 03599C 80035DEC 02202025 */   move       $a0, $s1
/* 0359A0 80035DF0 02002025 */  move        $a0, $s0
/* 0359A4 80035DF4 02802825 */  move        $a1, $s4
/* 0359A8 80035DF8 0C013A48 */  jal         func_8004E920
/* 0359AC 80035DFC 24060001 */   addiu      $a2, $zero, 0x1
/* 0359B0 80035E00 02202025 */  move        $a0, $s1
/* 0359B4 80035E04 0C00D671 */  jal         func_800359C4
/* 0359B8 80035E08 02402825 */   move       $a1, $s2
/* 0359BC 80035E0C 0C01496C */  jal         func_800525B0
/* 0359C0 80035E10 00000000 */   nop
/* 0359C4 80035E14 5053FFF0 */  beql        $v0, $s3, .L80035DD8
/* 0359C8 80035E18 27B2003C */   addiu      $s2, $sp, 0x3c
/* 0359CC 80035E1C 0C01497C */  jal         func_800525F0
/* 0359D0 80035E20 00000000 */   nop
/* 0359D4 80035E24 5053FFEC */  beql        $v0, $s3, .L80035DD8
/* 0359D8 80035E28 27B2003C */   addiu      $s2, $sp, 0x3c
.L80035E2C:
/* 0359DC 80035E2C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0359E0 80035E30 8FB00018 */  lw          $s0, 0x18($sp)
/* 0359E4 80035E34 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0359E8 80035E38 8FB20020 */  lw          $s2, 0x20($sp)
/* 0359EC 80035E3C 8FB30024 */  lw          $s3, 0x24($sp)
/* 0359F0 80035E40 8FB40028 */  lw          $s4, 0x28($sp)
/* 0359F4 80035E44 03E00008 */  jr          $ra
/* 0359F8 80035E48 27BD0048 */   addiu      $sp, $sp, 0x48
/* 0359FC 80035E4C 00000000 */  nop
