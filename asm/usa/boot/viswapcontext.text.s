.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osViSwapContext # 0
/* 05A2B0 8005A700 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 05A2B4 8005A704 AFB00018 */  sw          $s0, 0x18($sp)
/* 05A2B8 8005A708 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05A2BC 8005A70C 3C10800A */  lui         $s0, %hi(__osViNext)
/* 05A2C0 8005A710 3C0EA440 */  lui         $t6, %hi(D_A4400010)
/* 05A2C4 8005A714 8E10F954 */  lw          $s0, %lo(__osViNext)($s0)
/* 05A2C8 8005A718 8DCF0010 */  lw          $t7, %lo(D_A4400010)($t6)
/* 05A2CC 8005A71C 8E050008 */  lw          $a1, 0x8($s0)
/* 05A2D0 8005A720 31F80001 */  andi        $t8, $t7, 0x1
/* 05A2D4 8005A724 AFB8002C */  sw          $t8, 0x2c($sp)
/* 05A2D8 8005A728 8E040004 */  lw          $a0, 0x4($s0)
/* 05A2DC 8005A72C 0C0143B0 */  jal         osVirtualToPhysical
/* 05A2E0 8005A730 AFA50044 */   sw         $a1, 0x44($sp)
/* 05A2E4 8005A734 8FB9002C */  lw          $t9, 0x2c($sp)
/* 05A2E8 8005A738 8FA50044 */  lw          $a1, 0x44($sp)
/* 05A2EC 8005A73C 960A0000 */  lhu         $t2, 0x0($s0)
/* 05A2F0 8005A740 00194080 */  sll         $t0, $t9, 2
/* 05A2F4 8005A744 01194021 */  addu        $t0, $t0, $t9
/* 05A2F8 8005A748 00084080 */  sll         $t0, $t0, 2
/* 05A2FC 8005A74C 00A83021 */  addu        $a2, $a1, $t0
/* 05A300 8005A750 8CC90028 */  lw          $t1, 0x28($a2)
/* 05A304 8005A754 314B0002 */  andi        $t3, $t2, 0x2
/* 05A308 8005A758 11600008 */  beq         $t3, $zero, .L8005A77C
/* 05A30C 8005A75C 01222021 */   addu       $a0, $t1, $v0
/* 05A310 8005A760 8CAD0020 */  lw          $t5, 0x20($a1)
/* 05A314 8005A764 8E0C0020 */  lw          $t4, 0x20($s0)
/* 05A318 8005A768 2401F000 */  addiu       $at, $zero, -0x1000
/* 05A31C 8005A76C 01A17024 */  and         $t6, $t5, $at
/* 05A320 8005A770 018E7825 */  or          $t7, $t4, $t6
/* 05A324 8005A774 10000003 */  b           .L8005A784
/* 05A328 8005A778 AE0F0020 */   sw         $t7, 0x20($s0)
.L8005A77C:
/* 05A32C 8005A77C 8CB80020 */  lw          $t8, 0x20($a1)
/* 05A330 8005A780 AE180020 */  sw          $t8, 0x20($s0)
.L8005A784:
/* 05A334 8005A784 96190000 */  lhu         $t9, 0x0($s0)
/* 05A338 8005A788 33280004 */  andi        $t0, $t9, 0x4
/* 05A33C 8005A78C 51000035 */  beql        $t0, $zero, .L8005A864
/* 05A340 8005A790 8CCE002C */   lw         $t6, 0x2c($a2)
/* 05A344 8005A794 8CC3002C */  lw          $v1, 0x2c($a2)
/* 05A348 8005A798 C6040024 */  lwc1        $f4, 0x24($s0)
/* 05A34C 8005A79C 3C014F80 */  lui         $at, 0x4f80
/* 05A350 8005A7A0 30690FFF */  andi        $t1, $v1, 0xfff
/* 05A354 8005A7A4 44893000 */  mtc1        $t1, $f6
/* 05A358 8005A7A8 05210004 */  bgez        $t1, .L8005A7BC
/* 05A35C 8005A7AC 46803220 */   cvt.s.w    $f8, $f6
/* 05A360 8005A7B0 44815000 */  mtc1        $at, $f10
/* 05A364 8005A7B4 00000000 */  nop
/* 05A368 8005A7B8 460A4200 */  add.s       $f8, $f8, $f10
.L8005A7BC:
/* 05A36C 8005A7BC 46082402 */  mul.s       $f16, $f4, $f8
/* 05A370 8005A7C0 24020001 */  addiu       $v0, $zero, 0x1
/* 05A374 8005A7C4 3C014F00 */  lui         $at, 0x4f00
/* 05A378 8005A7C8 444AF800 */  cfc1        $t2, $31
/* 05A37C 8005A7CC 44C2F800 */  ctc1        $v0, $31
/* 05A380 8005A7D0 00000000 */  nop
/* 05A384 8005A7D4 460084A4 */  cvt.w.s     $f18, $f16
/* 05A388 8005A7D8 4442F800 */  cfc1        $v0, $31
/* 05A38C 8005A7DC 00000000 */  nop
/* 05A390 8005A7E0 30420078 */  andi        $v0, $v0, 0x78
/* 05A394 8005A7E4 50400013 */  beql        $v0, $zero, .L8005A834
/* 05A398 8005A7E8 44029000 */   mfc1       $v0, $f18
/* 05A39C 8005A7EC 44819000 */  mtc1        $at, $f18
/* 05A3A0 8005A7F0 24020001 */  addiu       $v0, $zero, 0x1
/* 05A3A4 8005A7F4 46128481 */  sub.s       $f18, $f16, $f18
/* 05A3A8 8005A7F8 44C2F800 */  ctc1        $v0, $31
/* 05A3AC 8005A7FC 00000000 */  nop
/* 05A3B0 8005A800 460094A4 */  cvt.w.s     $f18, $f18
/* 05A3B4 8005A804 4442F800 */  cfc1        $v0, $31
/* 05A3B8 8005A808 00000000 */  nop
/* 05A3BC 8005A80C 30420078 */  andi        $v0, $v0, 0x78
/* 05A3C0 8005A810 14400005 */  bne         $v0, $zero, .L8005A828
/* 05A3C4 8005A814 00000000 */   nop
/* 05A3C8 8005A818 44029000 */  mfc1        $v0, $f18
/* 05A3CC 8005A81C 3C018000 */  lui         $at, 0x8000
/* 05A3D0 8005A820 10000007 */  b           .L8005A840
/* 05A3D4 8005A824 00411025 */   or         $v0, $v0, $at
.L8005A828:
/* 05A3D8 8005A828 10000005 */  b           .L8005A840
/* 05A3DC 8005A82C 2402FFFF */   addiu      $v0, $zero, -0x1
/* 05A3E0 8005A830 44029000 */  mfc1        $v0, $f18
.L8005A834:
/* 05A3E4 8005A834 00000000 */  nop
/* 05A3E8 8005A838 0440FFFB */  bltz        $v0, .L8005A828
/* 05A3EC 8005A83C 00000000 */   nop
.L8005A840:
/* 05A3F0 8005A840 AE02002C */  sw          $v0, 0x2c($s0)
/* 05A3F4 8005A844 8CCB002C */  lw          $t3, 0x2c($a2)
/* 05A3F8 8005A848 2401F000 */  addiu       $at, $zero, -0x1000
/* 05A3FC 8005A84C 44CAF800 */  ctc1        $t2, $31
/* 05A400 8005A850 01616824 */  and         $t5, $t3, $at
/* 05A404 8005A854 004D6025 */  or          $t4, $v0, $t5
/* 05A408 8005A858 10000003 */  b           .L8005A868
/* 05A40C 8005A85C AE0C002C */   sw         $t4, 0x2c($s0)
/* 05A410 8005A860 8CCE002C */  lw          $t6, 0x2c($a2)
.L8005A864:
/* 05A414 8005A864 AE0E002C */  sw          $t6, 0x2c($s0)
.L8005A868:
/* 05A418 8005A868 3C02800A */  lui         $v0, %hi(__additional_scanline)
/* 05A41C 8005A86C 8C42F68C */  lw          $v0, %lo(__additional_scanline)($v0)
/* 05A420 8005A870 8CCF0030 */  lw          $t7, 0x30($a2)
/* 05A424 8005A874 0002C400 */  sll         $t8, $v0, 16
/* 05A428 8005A878 01F8C823 */  subu        $t9, $t7, $t8
/* 05A42C 8005A87C 03224021 */  addu        $t0, $t9, $v0
/* 05A430 8005A880 AFA80034 */  sw          $t0, 0x34($sp)
/* 05A434 8005A884 96030000 */  lhu         $v1, 0x0($s0)
/* 05A438 8005A888 8CA7001C */  lw          $a3, 0x1c($a1)
/* 05A43C 8005A88C 30690020 */  andi        $t1, $v1, 0x20
/* 05A440 8005A890 11200002 */  beq         $t1, $zero, .L8005A89C
/* 05A444 8005A894 306A0040 */   andi       $t2, $v1, 0x40
/* 05A448 8005A898 00003825 */  move        $a3, $zero
.L8005A89C:
/* 05A44C 8005A89C 5140000D */  beql        $t2, $zero, .L8005A8D4
/* 05A450 8005A8A0 306B0080 */   andi       $t3, $v1, 0x80
/* 05A454 8005A8A4 AE00002C */  sw          $zero, 0x2c($s0)
/* 05A458 8005A8A8 8E040004 */  lw          $a0, 0x4($s0)
/* 05A45C 8005A8AC AFA70038 */  sw          $a3, 0x38($sp)
/* 05A460 8005A8B0 AFA60024 */  sw          $a2, 0x24($sp)
/* 05A464 8005A8B4 0C0143B0 */  jal         osVirtualToPhysical
/* 05A468 8005A8B8 AFA50044 */   sw         $a1, 0x44($sp)
/* 05A46C 8005A8BC 8FA50044 */  lw          $a1, 0x44($sp)
/* 05A470 8005A8C0 8FA60024 */  lw          $a2, 0x24($sp)
/* 05A474 8005A8C4 8FA70038 */  lw          $a3, 0x38($sp)
/* 05A478 8005A8C8 00402025 */  move        $a0, $v0
/* 05A47C 8005A8CC 96030000 */  lhu         $v1, 0x0($s0)
/* 05A480 8005A8D0 306B0080 */  andi        $t3, $v1, 0x80
.L8005A8D4:
/* 05A484 8005A8D4 51600010 */  beql        $t3, $zero, .L8005A918
/* 05A488 8005A8D8 3C0FA440 */   lui        $t7, 0xa440
/* 05A48C 8005A8DC 960D0028 */  lhu         $t5, 0x28($s0)
/* 05A490 8005A8E0 3C0103FF */  lui         $at, 0x3ff
/* 05A494 8005A8E4 8E040004 */  lw          $a0, 0x4($s0)
/* 05A498 8005A8E8 000D6400 */  sll         $t4, $t5, 16
/* 05A49C 8005A8EC 01817024 */  and         $t6, $t4, $at
/* 05A4A0 8005A8F0 AE0E002C */  sw          $t6, 0x2c($s0)
/* 05A4A4 8005A8F4 AFA70038 */  sw          $a3, 0x38($sp)
/* 05A4A8 8005A8F8 AFA60024 */  sw          $a2, 0x24($sp)
/* 05A4AC 8005A8FC 0C0143B0 */  jal         osVirtualToPhysical
/* 05A4B0 8005A900 AFA50044 */   sw         $a1, 0x44($sp)
/* 05A4B4 8005A904 8FA50044 */  lw          $a1, 0x44($sp)
/* 05A4B8 8005A908 8FA60024 */  lw          $a2, 0x24($sp)
/* 05A4BC 8005A90C 8FA70038 */  lw          $a3, 0x38($sp)
/* 05A4C0 8005A910 00402025 */  move        $a0, $v0
/* 05A4C4 8005A914 3C0FA440 */  lui         $t7, %hi(D_A4400020)
.L8005A918:
/* 05A4C8 8005A918 ADE40004 */  sw          $a0, %lo(D_A4400004)($t7)
/* 05A4CC 8005A91C 8CB80008 */  lw          $t8, 0x8($a1)
/* 05A4D0 8005A920 3C19A440 */  lui         $t9, %hi(D_A4400008)
/* 05A4D4 8005A924 3C09A440 */  lui         $t1, %hi(D_A4400014)
/* 05A4D8 8005A928 AF380008 */  sw          $t8, %lo(D_A4400008)($t9)
/* 05A4DC 8005A92C 8CA8000C */  lw          $t0, 0xc($a1)
/* 05A4E0 8005A930 3C0BA440 */  lui         $t3, %hi(D_A4400018)
/* 05A4E4 8005A934 3C0CA440 */  lui         $t4, %hi(D_A440001C)
/* 05A4E8 8005A938 AD280014 */  sw          $t0, %lo(D_A4400014)($t1)
/* 05A4EC 8005A93C 8CAA0010 */  lw          $t2, 0x10($a1)
/* 05A4F0 8005A940 3C18A440 */  lui         $t8, %hi(D_A4400034)
/* 05A4F4 8005A944 3C08A440 */  lui         $t0, %hi(D_A4400000)
/* 05A4F8 8005A948 AD6A0018 */  sw          $t2, %lo(D_A4400018)($t3)
/* 05A4FC 8005A94C 8CAD0014 */  lw          $t5, 0x14($a1)
/* 05A500 8005A950 3C0AA440 */  lui         $t2, %hi(D_A440002C)
/* 05A504 8005A954 3C02800A */  lui         $v0, %hi(__osViCurr)
/* 05A508 8005A958 AD8D001C */  sw          $t5, %lo(D_A440001C)($t4)
/* 05A50C 8005A95C 8CAE0018 */  lw          $t6, 0x18($a1)
/* 05A510 8005A960 3C0DA440 */  lui         $t5, %hi(D_A440000C)
/* 05A514 8005A964 2442F950 */  addiu       $v0, $v0, %lo(__osViCurr)
/* 05A518 8005A968 ADEE0020 */  sw          $t6, %lo(D_A4400020)($t7)
/* 05A51C 8005A96C AF070024 */  sw          $a3, %lo(D_A4400024)($t8)
/* 05A520 8005A970 8FB90034 */  lw          $t9, 0x34($sp)
/* 05A524 8005A974 3C0EA440 */  lui         $t6, %hi(D_A4400030)
/* 05A528 8005A978 3C03800A */  lui         $v1, %hi(__osViNext)
/* 05A52C 8005A97C AD190028 */  sw          $t9, %lo(D_A4400028)($t0)
/* 05A530 8005A980 8CC90034 */  lw          $t1, 0x34($a2)
/* 05A534 8005A984 2463F954 */  addiu       $v1, $v1, %lo(__osViNext)
/* 05A538 8005A988 AD49002C */  sw          $t1, %lo(D_A440002C)($t2)
/* 05A53C 8005A98C 8CCB0038 */  lw          $t3, 0x38($a2)
/* 05A540 8005A990 ADAB000C */  sw          $t3, %lo(D_A440000C)($t5)
/* 05A544 8005A994 8E0C0020 */  lw          $t4, 0x20($s0)
/* 05A548 8005A998 02005825 */  move        $t3, $s0
/* 05A54C 8005A99C ADCC0030 */  sw          $t4, %lo(D_A4400030)($t6)
/* 05A550 8005A9A0 8E0F002C */  lw          $t7, 0x2c($s0)
/* 05A554 8005A9A4 260C0030 */  addiu       $t4, $s0, 0x30
/* 05A558 8005A9A8 AF0F0034 */  sw          $t7, %lo(D_A4400034)($t8)
/* 05A55C 8005A9AC 8E19000C */  lw          $t9, 0xc($s0)
/* 05A560 8005A9B0 AD190000 */  sw          $t9, %lo(D_A4400000)($t0)
/* 05A564 8005A9B4 8C4A0000 */  lw          $t2, 0x0($v0)
/* 05A568 8005A9B8 AC500000 */  sw          $s0, 0x0($v0)
/* 05A56C 8005A9BC AC6A0000 */  sw          $t2, 0x0($v1)
.L8005A9C0:
/* 05A570 8005A9C0 8D610000 */  lw          $at, 0x0($t3)
/* 05A574 8005A9C4 256B000C */  addiu       $t3, $t3, 0xc
/* 05A578 8005A9C8 254A000C */  addiu       $t2, $t2, 0xc
/* 05A57C 8005A9CC AD41FFF4 */  sw          $at, -0xc($t2)
/* 05A580 8005A9D0 8D61FFF8 */  lw          $at, -0x8($t3)
/* 05A584 8005A9D4 AD41FFF8 */  sw          $at, -0x8($t2)
/* 05A588 8005A9D8 8D61FFFC */  lw          $at, -0x4($t3)
/* 05A58C 8005A9DC 156CFFF8 */  bne         $t3, $t4, .L8005A9C0
/* 05A590 8005A9E0 AD41FFFC */   sw         $at, -0x4($t2)
/* 05A594 8005A9E4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05A598 8005A9E8 8FB00018 */  lw          $s0, 0x18($sp)
/* 05A59C 8005A9EC 27BD0048 */  addiu       $sp, $sp, 0x48
/* 05A5A0 8005A9F0 03E00008 */  jr          $ra
/* 05A5A4 8005A9F4 00000000 */   nop
/* 05A5A8 8005A9F8 00000000 */  nop
/* 05A5AC 8005A9FC 00000000 */  nop
