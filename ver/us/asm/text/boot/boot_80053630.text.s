.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053630 # 0
/* 0531E0 80053630 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0531E4 80053634 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0531E8 80053638 0C015FFC */  jal         __osDisableInt
/* 0531EC 8005363C AFA40018 */   sw         $a0, 0x18($sp)
/* 0531F0 80053640 8FA40018 */  lw          $a0, 0x18($sp)
/* 0531F4 80053644 00402825 */  move        $a1, $v0
/* 0531F8 80053648 3C03800A */  lui         $v1, %hi(__osViNext)
/* 0531FC 8005364C 308E0001 */  andi        $t6, $a0, 0x1
/* 053200 80053650 11C00006 */  beqz        $t6, .L8005366C
/* 053204 80053654 30990002 */   andi       $t9, $a0, 0x2
/* 053208 80053658 2463F954 */  addiu       $v1, $v1, %lo(__osViNext)
/* 05320C 8005365C 8C620000 */  lw          $v0, 0x0($v1)
/* 053210 80053660 8C4F000C */  lw          $t7, 0xc($v0)
/* 053214 80053664 35F80008 */  ori         $t8, $t7, 0x8
/* 053218 80053668 AC58000C */  sw          $t8, 0xc($v0)
.L8005366C:
/* 05321C 8005366C 3C03800A */  lui         $v1, %hi(__osViNext)
/* 053220 80053670 13200006 */  beqz        $t9, .L8005368C
/* 053224 80053674 2463F954 */   addiu      $v1, $v1, %lo(__osViNext)
/* 053228 80053678 8C620000 */  lw          $v0, 0x0($v1)
/* 05322C 8005367C 2401FFF7 */  addiu       $at, $zero, -0x9
/* 053230 80053680 8C48000C */  lw          $t0, 0xc($v0)
/* 053234 80053684 01014824 */  and         $t1, $t0, $at
/* 053238 80053688 AC49000C */  sw          $t1, 0xc($v0)
.L8005368C:
/* 05323C 8005368C 308A0004 */  andi        $t2, $a0, 0x4
/* 053240 80053690 11400005 */  beqz        $t2, .L800536A8
/* 053244 80053694 308D0008 */   andi       $t5, $a0, 0x8
/* 053248 80053698 8C620000 */  lw          $v0, 0x0($v1)
/* 05324C 8005369C 8C4B000C */  lw          $t3, 0xc($v0)
/* 053250 800536A0 356C0004 */  ori         $t4, $t3, 0x4
/* 053254 800536A4 AC4C000C */  sw          $t4, 0xc($v0)
.L800536A8:
/* 053258 800536A8 11A00006 */  beqz        $t5, .L800536C4
/* 05325C 800536AC 30980010 */   andi       $t8, $a0, 0x10
/* 053260 800536B0 8C620000 */  lw          $v0, 0x0($v1)
/* 053264 800536B4 2401FFFB */  addiu       $at, $zero, -0x5
/* 053268 800536B8 8C4E000C */  lw          $t6, 0xc($v0)
/* 05326C 800536BC 01C17824 */  and         $t7, $t6, $at
/* 053270 800536C0 AC4F000C */  sw          $t7, 0xc($v0)
.L800536C4:
/* 053274 800536C4 13000005 */  beqz        $t8, .L800536DC
/* 053278 800536C8 30890020 */   andi       $t1, $a0, 0x20
/* 05327C 800536CC 8C620000 */  lw          $v0, 0x0($v1)
/* 053280 800536D0 8C59000C */  lw          $t9, 0xc($v0)
/* 053284 800536D4 37280010 */  ori         $t0, $t9, 0x10
/* 053288 800536D8 AC48000C */  sw          $t0, 0xc($v0)
.L800536DC:
/* 05328C 800536DC 11200006 */  beqz        $t1, .L800536F8
/* 053290 800536E0 308C0040 */   andi       $t4, $a0, 0x40
/* 053294 800536E4 8C620000 */  lw          $v0, 0x0($v1)
/* 053298 800536E8 2401FFEF */  addiu       $at, $zero, -0x11
/* 05329C 800536EC 8C4A000C */  lw          $t2, 0xc($v0)
/* 0532A0 800536F0 01415824 */  and         $t3, $t2, $at
/* 0532A4 800536F4 AC4B000C */  sw          $t3, 0xc($v0)
.L800536F8:
/* 0532A8 800536F8 1180000B */  beqz        $t4, .L80053728
/* 0532AC 800536FC 30990080 */   andi       $t9, $a0, 0x80
/* 0532B0 80053700 8C620000 */  lw          $v0, 0x0($v1)
/* 0532B4 80053704 3C010001 */  lui         $at, 0x1
/* 0532B8 80053708 8C4D000C */  lw          $t5, 0xc($v0)
/* 0532BC 8005370C 01A17025 */  or          $t6, $t5, $at
/* 0532C0 80053710 AC4E000C */  sw          $t6, 0xc($v0)
/* 0532C4 80053714 8C620000 */  lw          $v0, 0x0($v1)
/* 0532C8 80053718 2401FCFF */  addiu       $at, $zero, -0x301
/* 0532CC 8005371C 8C4F000C */  lw          $t7, 0xc($v0)
/* 0532D0 80053720 01E1C024 */  and         $t8, $t7, $at
/* 0532D4 80053724 AC58000C */  sw          $t8, 0xc($v0)
.L80053728:
/* 0532D8 80053728 5320000F */  beql        $t9, $zero, .L80053768
/* 0532DC 8005372C 8C620000 */   lw         $v0, 0x0($v1)
/* 0532E0 80053730 8C620000 */  lw          $v0, 0x0($v1)
/* 0532E4 80053734 3C01FFFE */  lui         $at, (0xFFFEFFFF >> 16)
/* 0532E8 80053738 3421FFFF */  ori         $at, $at, (0xFFFEFFFF & 0xFFFF)
/* 0532EC 8005373C 8C48000C */  lw          $t0, 0xc($v0)
/* 0532F0 80053740 01014824 */  and         $t1, $t0, $at
/* 0532F4 80053744 AC49000C */  sw          $t1, 0xc($v0)
/* 0532F8 80053748 8C620000 */  lw          $v0, 0x0($v1)
/* 0532FC 8005374C 8C4B0008 */  lw          $t3, 0x8($v0)
/* 053300 80053750 8C4A000C */  lw          $t2, 0xc($v0)
/* 053304 80053754 8D6C0004 */  lw          $t4, 0x4($t3)
/* 053308 80053758 318D0300 */  andi        $t5, $t4, 0x300
/* 05330C 8005375C 014D7025 */  or          $t6, $t2, $t5
/* 053310 80053760 AC4E000C */  sw          $t6, 0xc($v0)
/* 053314 80053764 8C620000 */  lw          $v0, 0x0($v1)
.L80053768:
/* 053318 80053768 00A02025 */  move        $a0, $a1
/* 05331C 8005376C 944F0000 */  lhu         $t7, 0x0($v0)
/* 053320 80053770 35F80008 */  ori         $t8, $t7, 0x8
/* 053324 80053774 0C016018 */  jal         __osRestoreInt
/* 053328 80053778 A4580000 */   sh         $t8, 0x0($v0)
/* 05332C 8005377C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053330 80053780 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053334 80053784 03E00008 */  jr          $ra
/* 053338 80053788 00000000 */   nop
/* 05333C 8005378C 00000000 */  nop
