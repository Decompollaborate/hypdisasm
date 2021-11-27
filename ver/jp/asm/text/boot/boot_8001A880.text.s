.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001A880 # 0
/* 01A430 8001A880 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A434 8001A884 AFA40018 */  sw          $a0, 0x18($sp)
/* 01A438 8001A888 24A7000F */  addiu       $a3, $a1, 0xf
/* 01A43C 8001A88C 2401FFF0 */  addiu       $at, $zero, -0x10
/* 01A440 8001A890 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A444 8001A894 00E12824 */  and         $a1, $a3, $at
/* 01A448 8001A898 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01A44C 8001A89C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01A450 8001A8A0 AFA5001C */  sw          $a1, 0x1c($sp)
/* 01A454 8001A8A4 0C00DA76 */  jal         func_800369D8
/* 01A458 8001A8A8 24060033 */   addiu      $a2, $zero, 0x33
/* 01A45C 8001A8AC 3C03800C */  lui         $v1, %hi(D_800BB2D0)
/* 01A460 8001A8B0 2463B2D0 */  addiu       $v1, $v1, %lo(D_800BB2D0)
/* 01A464 8001A8B4 3C04800C */  lui         $a0, %hi(D_800BB2D8)
/* 01A468 8001A8B8 AC620000 */  sw          $v0, 0x0($v1)
/* 01A46C 8001A8BC 8FA6001C */  lw          $a2, 0x1c($sp)
/* 01A470 8001A8C0 2484B2D8 */  addiu       $a0, $a0, %lo(D_800BB2D8)
/* 01A474 8001A8C4 0C00DA00 */  jal         func_80036800
/* 01A478 8001A8C8 00402825 */   move       $a1, $v0
/* 01A47C 8001A8CC 3C04800C */  lui         $a0, %hi(D_800BB2E8)
/* 01A480 8001A8D0 2484B2E8 */  addiu       $a0, $a0, %lo(D_800BB2E8)
/* 01A484 8001A8D4 0C00F7FC */  jal         func_8003DFF0
/* 01A488 8001A8D8 8FA50018 */   lw         $a1, 0x18($sp)
/* 01A48C 8001A8DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A490 8001A8E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A494 8001A8E4 03E00008 */  jr          $ra
/* 01A498 8001A8E8 00000000 */   nop

glabel func_8001A8EC # 1
/* 01A49C 8001A8EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A4A0 8001A8F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A4A4 8001A8F4 3C04800C */  lui         $a0, %hi(D_800BB2E8)
/* 01A4A8 8001A8F8 0C00F85B */  jal         func_8003E16C
/* 01A4AC 8001A8FC 2484B2E8 */   addiu      $a0, $a0, %lo(D_800BB2E8)
/* 01A4B0 8001A900 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01A4B4 8001A904 3C05800C */  lui         $a1, %hi(D_800BB2D0)
/* 01A4B8 8001A908 8CA5B2D0 */  lw          $a1, %lo(D_800BB2D0)($a1)
/* 01A4BC 8001A90C 0C00DB8B */  jal         func_80036E2C
/* 01A4C0 8001A910 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01A4C4 8001A914 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A4C8 8001A918 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A4CC 8001A91C 03E00008 */  jr          $ra
/* 01A4D0 8001A920 00000000 */   nop

glabel func_8001A924 # 2
/* 01A4D4 8001A924 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01A4D8 8001A928 AFA40028 */  sw          $a0, 0x28($sp)
/* 01A4DC 8001A92C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A4E0 8001A930 00A03025 */  move        $a2, $a1
/* 01A4E4 8001A934 24A40008 */  addiu       $a0, $a1, 0x8
/* 01A4E8 8001A938 27A5001C */  addiu       $a1, $sp, 0x1c
/* 01A4EC 8001A93C 0C00E38F */  jal         func_80038E3C
/* 01A4F0 8001A940 AFA6002C */   sw         $a2, 0x2c($sp)
/* 01A4F4 8001A944 8FA6002C */  lw          $a2, 0x2c($sp)
/* 01A4F8 8001A948 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 01A4FC 8001A94C C7B00020 */  lwc1        $f16, 0x20($sp)
/* 01A500 8001A950 80CE000B */  lb          $t6, 0xb($a2)
/* 01A504 8001A954 8FB90028 */  lw          $t9, 0x28($sp)
/* 01A508 8001A958 27A5001C */  addiu       $a1, $sp, 0x1c
/* 01A50C 8001A95C 448E3000 */  mtc1        $t6, $f6
/* 01A510 8001A960 00000000 */  nop
/* 01A514 8001A964 46803220 */  cvt.s.w     $f8, $f6
/* 01A518 8001A968 46082282 */  mul.s       $f10, $f4, $f8
/* 01A51C 8001A96C C7A80024 */  lwc1        $f8, 0x24($sp)
/* 01A520 8001A970 E7AA001C */  swc1        $f10, 0x1c($sp)
/* 01A524 8001A974 80CF000B */  lb          $t7, 0xb($a2)
/* 01A528 8001A978 448F9000 */  mtc1        $t7, $f18
/* 01A52C 8001A97C 00000000 */  nop
/* 01A530 8001A980 468091A0 */  cvt.s.w     $f6, $f18
/* 01A534 8001A984 46068102 */  mul.s       $f4, $f16, $f6
/* 01A538 8001A988 E7A40020 */  swc1        $f4, 0x20($sp)
/* 01A53C 8001A98C 80D8000B */  lb          $t8, 0xb($a2)
/* 01A540 8001A990 44985000 */  mtc1        $t8, $f10
/* 01A544 8001A994 00000000 */  nop
/* 01A548 8001A998 468054A0 */  cvt.s.w     $f18, $f10
/* 01A54C 8001A99C 46124402 */  mul.s       $f16, $f8, $f18
/* 01A550 8001A9A0 E7B00024 */  swc1        $f16, 0x24($sp)
/* 01A554 8001A9A4 0C045E7A */  jal         func_801179E8
/* 01A558 8001A9A8 8F240038 */   lw         $a0, 0x38($t9)
/* 01A55C 8001A9AC 8FA40028 */  lw          $a0, 0x28($sp)
/* 01A560 8001A9B0 3C053F00 */  lui         $a1, 0x3f00
/* 01A564 8001A9B4 3C06447A */  lui         $a2, 0x447a
/* 01A568 8001A9B8 0C0460D7 */  jal         func_8011835C
/* 01A56C 8001A9BC 24070000 */   addiu      $a3, $zero, 0x0
/* 01A570 8001A9C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A574 8001A9C4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01A578 8001A9C8 03E00008 */  jr          $ra
/* 01A57C 8001A9CC 00000000 */   nop

glabel func_8001A9D0 # 3
/* 01A580 8001A9D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A584 8001A9D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A588 8001A9D8 90AE0006 */  lbu         $t6, 0x6($a1)
/* 01A58C 8001A9DC 3C198007 */  lui         $t9, %hi(D_80074250)
/* 01A590 8001A9E0 000E7880 */  sll         $t7, $t6, 2
/* 01A594 8001A9E4 032FC821 */  addu        $t9, $t9, $t7
/* 01A598 8001A9E8 8F394250 */  lw          $t9, %lo(D_80074250)($t9)
/* 01A59C 8001A9EC 0320F809 */  jalr        $t9
/* 01A5A0 8001A9F0 00000000 */   nop
/* 01A5A4 8001A9F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A5A8 8001A9F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A5AC 8001A9FC 03E00008 */  jr          $ra
/* 01A5B0 8001AA00 00000000 */   nop

glabel func_8001AA04 # 4
/* 01A5B4 8001AA04 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01A5B8 8001AA08 AFB50028 */  sw          $s5, 0x28($sp)
/* 01A5BC 8001AA0C AFBF002C */  sw          $ra, 0x2c($sp)
/* 01A5C0 8001AA10 AFB40024 */  sw          $s4, 0x24($sp)
/* 01A5C4 8001AA14 AFB30020 */  sw          $s3, 0x20($sp)
/* 01A5C8 8001AA18 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01A5CC 8001AA1C AFB10018 */  sw          $s1, 0x18($sp)
/* 01A5D0 8001AA20 AFB00014 */  sw          $s0, 0x14($sp)
/* 01A5D4 8001AA24 8C930038 */  lw          $s3, 0x38($a0)
/* 01A5D8 8001AA28 3C15800C */  lui         $s5, %hi(D_800BB2E8)
/* 01A5DC 8001AA2C 26B5B2E8 */  addiu       $s5, $s5, %lo(D_800BB2E8)
/* 01A5E0 8001AA30 00A09025 */  move        $s2, $a1
/* 01A5E4 8001AA34 0080A025 */  move        $s4, $a0
/* 01A5E8 8001AA38 02A02025 */  move        $a0, $s5
/* 01A5EC 8001AA3C 0C00FA7E */  jal         func_8003E9F8
/* 01A5F0 8001AA40 02602825 */   move       $a1, $s3
/* 01A5F4 8001AA44 10400016 */  beqz        $v0, .L8001AAA0
/* 01A5F8 8001AA48 00408025 */   move       $s0, $v0
/* 01A5FC 8001AA4C 3C11800C */  lui         $s1, %hi(D_800BB2D8)
/* 01A600 8001AA50 2631B2D8 */  addiu       $s1, $s1, %lo(D_800BB2D8)
.L8001AA54:
/* 01A604 8001AA54 12400003 */  beqz        $s2, .L8001AA64
/* 01A608 8001AA58 02802025 */   move       $a0, $s4
/* 01A60C 8001AA5C 0240F809 */  jalr        $s2
/* 01A610 8001AA60 02002825 */   move       $a1, $s0
.L8001AA64:
/* 01A614 8001AA64 960E0004 */  lhu         $t6, 0x4($s0)
/* 01A618 8001AA68 02202025 */  move        $a0, $s1
/* 01A61C 8001AA6C 31CF0001 */  andi        $t7, $t6, 0x1
/* 01A620 8001AA70 51E00004 */  beql        $t7, $zero, .L8001AA84
/* 01A624 8001AA74 02202025 */   move       $a0, $s1
/* 01A628 8001AA78 0C00DB8B */  jal         func_80036E2C
/* 01A62C 8001AA7C 8E050008 */   lw         $a1, 0x8($s0)
/* 01A630 8001AA80 02202025 */  move        $a0, $s1
.L8001AA84:
/* 01A634 8001AA84 0C00DB8B */  jal         func_80036E2C
/* 01A638 8001AA88 02002825 */   move       $a1, $s0
/* 01A63C 8001AA8C 02A02025 */  move        $a0, $s5
/* 01A640 8001AA90 0C00FA8D */  jal         func_8003EA34
/* 01A644 8001AA94 02602825 */   move       $a1, $s3
/* 01A648 8001AA98 1440FFEE */  bnez        $v0, .L8001AA54
/* 01A64C 8001AA9C 00408025 */   move       $s0, $v0
.L8001AAA0:
/* 01A650 8001AAA0 02A02025 */  move        $a0, $s5
/* 01A654 8001AAA4 0C00F9F5 */  jal         func_8003E7D4
/* 01A658 8001AAA8 02602825 */   move       $a1, $s3
/* 01A65C 8001AAAC 96980036 */  lhu         $t8, 0x36($s4)
/* 01A660 8001AAB0 3319F7FF */  andi        $t9, $t8, 0xf7ff
/* 01A664 8001AAB4 A6990036 */  sh          $t9, 0x36($s4)
/* 01A668 8001AAB8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01A66C 8001AABC 8FB50028 */  lw          $s5, 0x28($sp)
/* 01A670 8001AAC0 8FB40024 */  lw          $s4, 0x24($sp)
/* 01A674 8001AAC4 8FB30020 */  lw          $s3, 0x20($sp)
/* 01A678 8001AAC8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01A67C 8001AACC 8FB10018 */  lw          $s1, 0x18($sp)
/* 01A680 8001AAD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01A684 8001AAD4 03E00008 */  jr          $ra
/* 01A688 8001AAD8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001AADC # 5
/* 01A68C 8001AADC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A690 8001AAE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A694 8001AAE4 948E0034 */  lhu         $t6, 0x34($a0)
/* 01A698 8001AAE8 3C058007 */  lui         $a1, %hi(D_80074274)
/* 01A69C 8001AAEC 000E7880 */  sll         $t7, $t6, 2
/* 01A6A0 8001AAF0 01EE7823 */  subu        $t7, $t7, $t6
/* 01A6A4 8001AAF4 000F78C0 */  sll         $t7, $t7, 3
/* 01A6A8 8001AAF8 00AF2821 */  addu        $a1, $a1, $t7
/* 01A6AC 8001AAFC 0C006A81 */  jal         func_8001AA04
/* 01A6B0 8001AB00 8CA54274 */   lw         $a1, %lo(D_80074274)($a1)
/* 01A6B4 8001AB04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A6B8 8001AB08 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A6BC 8001AB0C 03E00008 */  jr          $ra
/* 01A6C0 8001AB10 00000000 */   nop

glabel func_8001AB14 # 6
/* 01A6C4 8001AB14 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A6C8 8001AB18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A6CC 8001AB1C 0C006A81 */  jal         func_8001AA04
/* 01A6D0 8001AB20 00002825 */   move       $a1, $zero
/* 01A6D4 8001AB24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A6D8 8001AB28 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A6DC 8001AB2C 03E00008 */  jr          $ra
/* 01A6E0 8001AB30 00000000 */   nop

glabel func_8001AB34 # 7
/* 01A6E4 8001AB34 3C03800C */  lui         $v1, %hi(D_800BB2E8)
/* 01A6E8 8001AB38 2463B2E8 */  addiu       $v1, $v1, %lo(D_800BB2E8)
/* 01A6EC 8001AB3C 8C6E0014 */  lw          $t6, 0x14($v1)
/* 01A6F0 8001AB40 8C6F001C */  lw          $t7, 0x1c($v1)
/* 01A6F4 8001AB44 03E00008 */  jr          $ra
/* 01A6F8 8001AB48 01CF1023 */   subu       $v0, $t6, $t7

glabel func_8001AB4C # 8
/* 01A6FC 8001AB4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A700 8001AB50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A704 8001AB54 948E0036 */  lhu         $t6, 0x36($a0)
/* 01A708 8001AB58 00803825 */  move        $a3, $a0
/* 01A70C 8001AB5C 35CF0800 */  ori         $t7, $t6, 0x800
/* 01A710 8001AB60 A48F0036 */  sh          $t7, 0x36($a0)
/* 01A714 8001AB64 3C04800C */  lui         $a0, %hi(D_800BB2E8)
/* 01A718 8001AB68 2484B2E8 */  addiu       $a0, $a0, %lo(D_800BB2E8)
/* 01A71C 8001AB6C 0C00F8F5 */  jal         func_8003E3D4
/* 01A720 8001AB70 8CE60038 */   lw         $a2, 0x38($a3)
/* 01A724 8001AB74 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A728 8001AB78 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A72C 8001AB7C 03E00008 */  jr          $ra
/* 01A730 8001AB80 00000000 */   nop

glabel func_8001AB84 # 9
/* 01A734 8001AB84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A738 8001AB88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A73C 8001AB8C AFA40018 */  sw          $a0, 0x18($sp)
/* 01A740 8001AB90 AFA60020 */  sw          $a2, 0x20($sp)
/* 01A744 8001AB94 8CAE0050 */  lw          $t6, 0x50($a1)
/* 01A748 8001AB98 95CF0036 */  lhu         $t7, 0x36($t6)
/* 01A74C 8001AB9C 31F80030 */  andi        $t8, $t7, 0x30
/* 01A750 8001ABA0 13000003 */  beqz        $t8, .L8001ABB0
/* 01A754 8001ABA4 00000000 */   nop
/* 01A758 8001ABA8 1000001A */  b           .L8001AC14
/* 01A75C 8001ABAC 00001025 */   move       $v0, $zero
.L8001ABB0:
/* 01A760 8001ABB0 0C006ACD */  jal         func_8001AB34
/* 01A764 8001ABB4 00000000 */   nop
/* 01A768 8001ABB8 1C400003 */  bgtz        $v0, .L8001ABC8
/* 01A76C 8001ABBC 3C04800C */   lui        $a0, %hi(D_800BB2D8)
/* 01A770 8001ABC0 10000014 */  b           .L8001AC14
/* 01A774 8001ABC4 00001025 */   move       $v0, $zero
.L8001ABC8:
/* 01A778 8001ABC8 2484B2D8 */  addiu       $a0, $a0, %lo(D_800BB2D8)
/* 01A77C 8001ABCC 2405000C */  addiu       $a1, $zero, 0xc
/* 01A780 8001ABD0 0C00DA76 */  jal         func_800369D8
/* 01A784 8001ABD4 240600C6 */   addiu      $a2, $zero, 0xc6
/* 01A788 8001ABD8 14400003 */  bnez        $v0, .L8001ABE8
/* 01A78C 8001ABDC 00401825 */   move       $v1, $v0
/* 01A790 8001ABE0 1000000C */  b           .L8001AC14
/* 01A794 8001ABE4 00001025 */   move       $v0, $zero
.L8001ABE8:
/* 01A798 8001ABE8 8FA40018 */  lw          $a0, 0x18($sp)
/* 01A79C 8001ABEC 50800005 */  beql        $a0, $zero, .L8001AC04
/* 01A7A0 8001ABF0 AC400000 */   sw         $zero, 0x0($v0)
/* 01A7A4 8001ABF4 8C990038 */  lw          $t9, 0x38($a0)
/* 01A7A8 8001ABF8 10000002 */  b           .L8001AC04
/* 01A7AC 8001ABFC AC590000 */   sw         $t9, 0x0($v0)
/* 01A7B0 8001AC00 AC400000 */  sw          $zero, 0x0($v0)
.L8001AC04:
/* 01A7B4 8001AC04 93A80023 */  lbu         $t0, 0x23($sp)
/* 01A7B8 8001AC08 A4600004 */  sh          $zero, 0x4($v1)
/* 01A7BC 8001AC0C 00601025 */  move        $v0, $v1
/* 01A7C0 8001AC10 A0680006 */  sb          $t0, 0x6($v1)
.L8001AC14:
/* 01A7C4 8001AC14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A7C8 8001AC18 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A7CC 8001AC1C 03E00008 */  jr          $ra
/* 01A7D0 8001AC20 00000000 */   nop

glabel func_8001AC24 # 10
/* 01A7D4 8001AC24 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A7D8 8001AC28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A7DC 8001AC2C AFA60020 */  sw          $a2, 0x20($sp)
/* 01A7E0 8001AC30 AFA5001C */  sw          $a1, 0x1c($sp)
/* 01A7E4 8001AC34 0C006AE1 */  jal         func_8001AB84
/* 01A7E8 8001AC38 00003025 */   move       $a2, $zero
/* 01A7EC 8001AC3C 10400007 */  beqz        $v0, .L8001AC5C
/* 01A7F0 8001AC40 00402825 */   move       $a1, $v0
/* 01A7F4 8001AC44 27AE0020 */  addiu       $t6, $sp, 0x20
/* 01A7F8 8001AC48 8DC10000 */  lw          $at, 0x0($t6)
/* 01A7FC 8001AC4C A8410008 */  swl         $at, 0x8($v0)
/* 01A800 8001AC50 B841000B */  swr         $at, 0xb($v0)
/* 01A804 8001AC54 0C006AD3 */  jal         func_8001AB4C
/* 01A808 8001AC58 8FA4001C */   lw         $a0, 0x1c($sp)
.L8001AC5C:
/* 01A80C 8001AC5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A810 8001AC60 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A814 8001AC64 03E00008 */  jr          $ra
/* 01A818 8001AC68 00000000 */   nop

glabel func_8001AC6C # 11
/* 01A81C 8001AC6C 03E00008 */  jr          $ra
/* 01A820 8001AC70 00000000 */   nop
/* 01A824 8001AC74 00000000 */  nop
/* 01A828 8001AC78 00000000 */  nop
/* 01A82C 8001AC7C 00000000 */  nop
