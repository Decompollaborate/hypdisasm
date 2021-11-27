.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800557B0 # 0
/* 055360 800557B0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 055364 800557B4 AFA40030 */  sw          $a0, 0x30($sp)
/* 055368 800557B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05536C 800557BC AFA50034 */  sw          $a1, 0x34($sp)
/* 055370 800557C0 240E00FA */  addiu       $t6, $zero, 0xfa
/* 055374 800557C4 3C01800A */  lui         $at, %hi(D_800A4D84)
/* 055378 800557C8 00A02025 */  move        $a0, $a1
/* 05537C 800557CC A02E4D84 */  sb          $t6, %lo(D_800A4D84)($at)
/* 055380 800557D0 0C015620 */  jal         func_80055880
/* 055384 800557D4 00002825 */   move       $a1, $zero
/* 055388 800557D8 3C058010 */  lui         $a1, %hi(D_80104A60)
/* 05538C 800557DC 24A54A60 */  addiu       $a1, $a1, %lo(D_80104A60)
/* 055390 800557E0 0C015108 */  jal         func_80054420
/* 055394 800557E4 24040001 */   addiu      $a0, $zero, 0x1
/* 055398 800557E8 8FA40030 */  lw          $a0, 0x30($sp)
/* 05539C 800557EC 27A50028 */  addiu       $a1, $sp, 0x28
/* 0553A0 800557F0 0C013A48 */  jal         func_8004E920
/* 0553A4 800557F4 24060001 */   addiu      $a2, $zero, 0x1
/* 0553A8 800557F8 3C058010 */  lui         $a1, %hi(D_80104A60)
/* 0553AC 800557FC 24A54A60 */  addiu       $a1, $a1, %lo(D_80104A60)
/* 0553B0 80055800 0C015108 */  jal         func_80054420
/* 0553B4 80055804 00002025 */   move       $a0, $zero
/* 0553B8 80055808 AFA2002C */  sw          $v0, 0x2c($sp)
/* 0553BC 8005580C 8FA40030 */  lw          $a0, 0x30($sp)
/* 0553C0 80055810 27A50028 */  addiu       $a1, $sp, 0x28
/* 0553C4 80055814 0C013A48 */  jal         func_8004E920
/* 0553C8 80055818 24060001 */   addiu      $a2, $zero, 0x1
/* 0553CC 8005581C 8FA40034 */  lw          $a0, 0x34($sp)
/* 0553D0 80055820 0C015651 */  jal         func_80055944
/* 0553D4 80055824 27A50024 */   addiu      $a1, $sp, 0x24
/* 0553D8 80055828 93A20026 */  lbu         $v0, 0x26($sp)
/* 0553DC 8005582C 93B80027 */  lbu         $t8, 0x27($sp)
/* 0553E0 80055830 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0553E4 80055834 30430001 */  andi        $v1, $v0, 0x1
/* 0553E8 80055838 10600005 */  beqz        $v1, .L80055850
/* 0553EC 8005583C 304F0002 */   andi       $t7, $v0, 0x2
/* 0553F0 80055840 11E00003 */  beqz        $t7, .L80055850
/* 0553F4 80055844 00000000 */   nop
/* 0553F8 80055848 1000000B */  b           .L80055878
/* 0553FC 8005584C 24020002 */   addiu      $v0, $zero, 0x2
.L80055850:
/* 055400 80055850 17000003 */  bnez        $t8, .L80055860
/* 055404 80055854 00000000 */   nop
/* 055408 80055858 14600003 */  bnez        $v1, .L80055868
/* 05540C 8005585C 30590004 */   andi       $t9, $v0, 0x4
.L80055860:
/* 055410 80055860 10000005 */  b           .L80055878
/* 055414 80055864 24020001 */   addiu      $v0, $zero, 0x1
.L80055868:
/* 055418 80055868 13200003 */  beqz        $t9, .L80055878
/* 05541C 8005586C 8FA2002C */   lw         $v0, 0x2c($sp)
/* 055420 80055870 10000001 */  b           .L80055878
/* 055424 80055874 24020004 */   addiu      $v0, $zero, 0x4
.L80055878:
/* 055428 80055878 03E00008 */  jr          $ra
/* 05542C 8005587C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80055880 # 1
/* 055430 80055880 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 055434 80055884 3C068010 */  lui         $a2, %hi(D_80104A60)
/* 055438 80055888 240700FE */  addiu       $a3, $zero, 0xfe
/* 05543C 8005588C 3C018010 */  lui         $at, %hi(D_80102380)
/* 055440 80055890 24C24A60 */  addiu       $v0, $a2, %lo(D_80104A60)
/* 055444 80055894 AFA5001C */  sw          $a1, 0x1c($sp)
/* 055448 80055898 A0272380 */  sb          $a3, %lo(D_80102380)($at)
/* 05544C 8005589C 240F0001 */  addiu       $t7, $zero, 0x1
/* 055450 800558A0 AC4F003C */  sw          $t7, 0x3c($v0)
/* 055454 800558A4 24180001 */  addiu       $t8, $zero, 0x1
/* 055458 800558A8 24190003 */  addiu       $t9, $zero, 0x3
/* 05545C 800558AC 240800FF */  addiu       $t0, $zero, 0xff
/* 055460 800558B0 240900FF */  addiu       $t1, $zero, 0xff
/* 055464 800558B4 240A00FF */  addiu       $t2, $zero, 0xff
/* 055468 800558B8 A3B8000C */  sb          $t8, 0xc($sp)
/* 05546C 800558BC A3B9000D */  sb          $t9, 0xd($sp)
/* 055470 800558C0 A3A5000E */  sb          $a1, 0xe($sp)
/* 055474 800558C4 A3A8000F */  sb          $t0, 0xf($sp)
/* 055478 800558C8 A3A90010 */  sb          $t1, 0x10($sp)
/* 05547C 800558CC A3AA0011 */  sb          $t2, 0x11($sp)
/* 055480 800558D0 18800010 */  blez        $a0, .L80055914
/* 055484 800558D4 00001825 */   move       $v1, $zero
/* 055488 800558D8 30860003 */  andi        $a2, $a0, 0x3
/* 05548C 800558DC 10C00006 */  beqz        $a2, .L800558F8
/* 055490 800558E0 00C02825 */   move       $a1, $a2
.L800558E4:
/* 055494 800558E4 24630001 */  addiu       $v1, $v1, 0x1
/* 055498 800558E8 A0400000 */  sb          $zero, 0x0($v0)
/* 05549C 800558EC 14A3FFFD */  bne         $a1, $v1, .L800558E4
/* 0554A0 800558F0 24420001 */   addiu      $v0, $v0, 0x1
/* 0554A4 800558F4 10640007 */  beq         $v1, $a0, .L80055914
.L800558F8:
/* 0554A8 800558F8 24630004 */   addiu      $v1, $v1, 0x4
/* 0554AC 800558FC A0400001 */  sb          $zero, 0x1($v0)
/* 0554B0 80055900 A0400002 */  sb          $zero, 0x2($v0)
/* 0554B4 80055904 A0400003 */  sb          $zero, 0x3($v0)
/* 0554B8 80055908 24420004 */  addiu       $v0, $v0, 0x4
/* 0554BC 8005590C 1464FFFA */  bne         $v1, $a0, .L800558F8
/* 0554C0 80055910 A040FFFC */   sb         $zero, -0x4($v0)
.L80055914:
/* 0554C4 80055914 27AB000C */  addiu       $t3, $sp, 0xc
/* 0554C8 80055918 8D610000 */  lw          $at, 0x0($t3)
/* 0554CC 8005591C 24420006 */  addiu       $v0, $v0, 0x6
/* 0554D0 80055920 A841FFFA */  swl         $at, -0x6($v0)
/* 0554D4 80055924 B841FFFD */  swr         $at, -0x3($v0)
/* 0554D8 80055928 91610004 */  lbu         $at, 0x4($t3)
/* 0554DC 8005592C A041FFFE */  sb          $at, -0x2($v0)
/* 0554E0 80055930 916D0005 */  lbu         $t5, 0x5($t3)
/* 0554E4 80055934 A0470000 */  sb          $a3, 0x0($v0)
/* 0554E8 80055938 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0554EC 8005593C 03E00008 */  jr          $ra
/* 0554F0 80055940 A04DFFFF */   sb         $t5, -0x1($v0)

glabel func_80055944 # 2
/* 0554F4 80055944 3C028010 */  lui         $v0, %hi(D_80104A60)
/* 0554F8 80055948 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0554FC 8005594C 24424A60 */  addiu       $v0, $v0, %lo(D_80104A60)
/* 055500 80055950 1880000B */  blez        $a0, .L80055980
/* 055504 80055954 00001825 */   move       $v1, $zero
/* 055508 80055958 30870003 */  andi        $a3, $a0, 0x3
/* 05550C 8005595C 10E00005 */  beqz        $a3, .L80055974
/* 055510 80055960 00E03025 */   move       $a2, $a3
.L80055964:
/* 055514 80055964 24630001 */  addiu       $v1, $v1, 0x1
/* 055518 80055968 14C3FFFE */  bne         $a2, $v1, .L80055964
/* 05551C 8005596C 24420001 */   addiu      $v0, $v0, 0x1
/* 055520 80055970 10640003 */  beq         $v1, $a0, .L80055980
.L80055974:
/* 055524 80055974 24630004 */   addiu      $v1, $v1, 0x4
/* 055528 80055978 1464FFFE */  bne         $v1, $a0, .L80055974
/* 05552C 8005597C 24420004 */   addiu      $v0, $v0, 0x4
.L80055980:
/* 055530 80055980 88410000 */  lwl         $at, 0x0($v0)
/* 055534 80055984 98410003 */  lwr         $at, 0x3($v0)
/* 055538 80055988 27AE000C */  addiu       $t6, $sp, 0xc
/* 05553C 8005598C ADC10000 */  sw          $at, 0x0($t6)
/* 055540 80055990 90410004 */  lbu         $at, 0x4($v0)
/* 055544 80055994 A1C10004 */  sb          $at, 0x4($t6)
/* 055548 80055998 90580005 */  lbu         $t8, 0x5($v0)
/* 05554C 8005599C A1D80005 */  sb          $t8, 0x5($t6)
/* 055550 800559A0 93B9000D */  lbu         $t9, 0xd($sp)
/* 055554 800559A4 332800C0 */  andi        $t0, $t9, 0xc0
/* 055558 800559A8 00084903 */  sra         $t1, $t0, 4
/* 05555C 800559AC 312A00FF */  andi        $t2, $t1, 0xff
/* 055560 800559B0 15400008 */  bnez        $t2, .L800559D4
/* 055564 800559B4 A0A90003 */   sb         $t1, 0x3($a1)
/* 055568 800559B8 93AB0010 */  lbu         $t3, 0x10($sp)
/* 05556C 800559BC 93AD000F */  lbu         $t5, 0xf($sp)
/* 055570 800559C0 000B6200 */  sll         $t4, $t3, 8
/* 055574 800559C4 018D7825 */  or          $t7, $t4, $t5
/* 055578 800559C8 A4AF0000 */  sh          $t7, 0x0($a1)
/* 05557C 800559CC 93AE0011 */  lbu         $t6, 0x11($sp)
/* 055580 800559D0 A0AE0002 */  sb          $t6, 0x2($a1)
.L800559D4:
/* 055584 800559D4 03E00008 */  jr          $ra
/* 055588 800559D8 27BD0018 */   addiu      $sp, $sp, 0x18
/* 05558C 800559DC 00000000 */  nop
