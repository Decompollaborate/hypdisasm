.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8000A7A0 # 0
/* 00A350 8000A7A0 03E00008 */  jr          $ra
/* 00A354 8000A7A4 00000000 */   nop

glabel func_8000A7A8 # 1
/* 00A358 8000A7A8 3C01800B */  lui         $at, %hi(D_800AE4F0)
/* 00A35C 8000A7AC AC20E4F0 */  sw          $zero, %lo(D_800AE4F0)($at)
/* 00A360 8000A7B0 3C01800B */  lui         $at, %hi(D_800B66F0)
/* 00A364 8000A7B4 AC2066F0 */  sw          $zero, %lo(D_800B66F0)($at)
/* 00A368 8000A7B8 3C01800B */  lui         $at, %hi(D_800AE504)
/* 00A36C 8000A7BC 240E0012 */  addiu       $t6, $zero, 0x12
/* 00A370 8000A7C0 3C02800B */  lui         $v0, %hi(D_800AE500_RomRamTableIndex)
/* 00A374 8000A7C4 AC2EE504 */  sw          $t6, %lo(D_800AE504)($at)
/* 00A378 8000A7C8 2442E500 */  addiu       $v0, $v0, %lo(D_800AE500_RomRamTableIndex)
/* 00A37C 8000A7CC 240F0016 */  addiu       $t7, $zero, 0x16
/* 00A380 8000A7D0 AC4F0000 */  sw          $t7, 0x0($v0)
/* 00A384 8000A7D4 3C01800B */  lui         $at, %hi(D_800AE4F8)
/* 00A388 8000A7D8 3C03800B */  lui         $v1, %hi(D_800AE4FC)
/* 00A38C 8000A7DC AC2FE4F8 */  sw          $t7, %lo(D_800AE4F8)($at)
/* 00A390 8000A7E0 2463E4FC */  addiu       $v1, $v1, %lo(D_800AE4FC)
/* 00A394 8000A7E4 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 00A398 8000A7E8 AC600000 */  sw          $zero, 0x0($v1)
/* 00A39C 8000A7EC 3C01800B */  lui         $at, %hi(D_800AE4F4)
/* 00A3A0 8000A7F0 AC20E4F4 */  sw          $zero, %lo(D_800AE4F4)($at)
/* 00A3A4 8000A7F4 AFBF0064 */  sw          $ra, 0x64($sp)
/* 00A3A8 8000A7F8 AFA40078 */  sw          $a0, 0x78($sp)
/* 00A3AC 8000A7FC 3C01800F */  lui         $at, %hi(D_800F0B70)
/* 00A3B0 8000A800 24080001 */  addiu       $t0, $zero, 0x1
/* 00A3B4 8000A804 AC280B70 */  sw          $t0, %lo(D_800F0B70)($at)
/* 00A3B8 8000A808 2404006E */  addiu       $a0, $zero, 0x6e
/* 00A3BC 8000A80C 0C0109F2 */  jal         Fault_Start
/* 00A3C0 8000A810 2405006E */   addiu      $a1, $zero, 0x6e
/* 00A3C4 8000A814 3C028000 */  lui         $v0, %hi(osTvType)
/* 00A3C8 8000A818 8C420300 */  lw          $v0, %lo(osTvType)($v0)
/* 00A3CC 8000A81C 8FA40078 */  lw          $a0, 0x78($sp)
/* 00A3D0 8000A820 24050064 */  addiu       $a1, $zero, 0x64
/* 00A3D4 8000A824 10400008 */  beqz        $v0, .L8000A848
/* 00A3D8 8000A828 24060064 */   addiu      $a2, $zero, 0x64
/* 00A3DC 8000A82C 24010001 */  addiu       $at, $zero, 0x1
/* 00A3E0 8000A830 10410009 */  beq         $v0, $at, .L8000A858
/* 00A3E4 8000A834 24010002 */   addiu      $at, $zero, 0x2
/* 00A3E8 8000A838 10410005 */  beq         $v0, $at, .L8000A850
/* 00A3EC 8000A83C 00000000 */   nop
/* 00A3F0 8000A840 10000006 */  b           .L8000A85C
/* 00A3F4 8000A844 00001025 */   move       $v0, $zero
.L8000A848:
/* 00A3F8 8000A848 10000004 */  b           .L8000A85C
/* 00A3FC 8000A84C 2402000E */   addiu      $v0, $zero, 0xe
.L8000A850:
/* 00A400 8000A850 10000002 */  b           .L8000A85C
/* 00A404 8000A854 2402001C */   addiu      $v0, $zero, 0x1c
.L8000A858:
/* 00A408 8000A858 00001025 */  move        $v0, $zero
.L8000A85C:
/* 00A40C 8000A85C 24090001 */  addiu       $t1, $zero, 0x1
/* 00A410 8000A860 AFA90010 */  sw          $t1, 0x10($sp)
/* 00A414 8000A864 304700FF */  andi        $a3, $v0, 0xff
/* 00A418 8000A868 0C00FF0C */  jal         func_8003FC30
/* 00A41C 8000A86C AFA20074 */   sw         $v0, 0x74($sp)
/* 00A420 8000A870 8FA40078 */  lw          $a0, 0x78($sp)
/* 00A424 8000A874 24050032 */  addiu       $a1, $zero, 0x32
/* 00A428 8000A878 24060032 */  addiu       $a2, $zero, 0x32
/* 00A42C 8000A87C 0C007DA0 */  jal         func_8001F680
/* 00A430 8000A880 24077D00 */   addiu      $a3, $zero, 0x7d00
/* 00A434 8000A884 8FA20074 */  lw          $v0, 0x74($sp)
/* 00A438 8000A888 3C0B800A */  lui         $t3, %hi(osViModeTable)
/* 00A43C 8000A88C 256BDCB0 */  addiu       $t3, $t3, %lo(osViModeTable)
/* 00A440 8000A890 00025080 */  sll         $t2, $v0, 2
/* 00A444 8000A894 01425021 */  addu        $t2, $t2, $v0
/* 00A448 8000A898 000A5100 */  sll         $t2, $t2, 4
/* 00A44C 8000A89C 014B1821 */  addu        $v1, $t2, $t3
/* 00A450 8000A8A0 00607025 */  move        $t6, $v1
/* 00A454 8000A8A4 246D0048 */  addiu       $t5, $v1, 0x48
/* 00A458 8000A8A8 03A07825 */  move        $t7, $sp
.L8000A8AC:
/* 00A45C 8000A8AC 8DC10000 */  lw          $at, 0x0($t6)
/* 00A460 8000A8B0 25CE000C */  addiu       $t6, $t6, 0xc
/* 00A464 8000A8B4 25EF000C */  addiu       $t7, $t7, 0xc
/* 00A468 8000A8B8 ADE1FFF4 */  sw          $at, -0xc($t7)
/* 00A46C 8000A8BC 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 00A470 8000A8C0 ADE1FFF8 */  sw          $at, -0x8($t7)
/* 00A474 8000A8C4 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00A478 8000A8C8 15CDFFF8 */  bne         $t6, $t5, .L8000A8AC
/* 00A47C 8000A8CC ADE1FFFC */   sw         $at, -0x4($t7)
/* 00A480 8000A8D0 8DC10000 */  lw          $at, 0x0($t6)
/* 00A484 8000A8D4 24180140 */  addiu       $t8, $zero, 0x140
/* 00A488 8000A8D8 241900F0 */  addiu       $t9, $zero, 0xf0
/* 00A48C 8000A8DC ADE10000 */  sw          $at, 0x0($t7)
/* 00A490 8000A8E0 8DCD0004 */  lw          $t5, 0x4($t6)
/* 00A494 8000A8E4 24080010 */  addiu       $t0, $zero, 0x10
/* 00A498 8000A8E8 ADED0004 */  sw          $t5, 0x4($t7)
/* 00A49C 8000A8EC 8FA7000C */  lw          $a3, 0xc($sp)
/* 00A4A0 8000A8F0 8FA60008 */  lw          $a2, 0x8($sp)
/* 00A4A4 8000A8F4 8FA50004 */  lw          $a1, 0x4($sp)
/* 00A4A8 8000A8F8 8FA40000 */  lw          $a0, 0x0($sp)
/* 00A4AC 8000A8FC AFA3006C */  sw          $v1, 0x6c($sp)
/* 00A4B0 8000A900 AFA80058 */  sw          $t0, 0x58($sp)
/* 00A4B4 8000A904 AFB90054 */  sw          $t9, 0x54($sp)
/* 00A4B8 8000A908 0C00F227 */  jal         func_8003C89C
/* 00A4BC 8000A90C AFB80050 */   sw         $t8, 0x50($sp)
/* 00A4C0 8000A910 0C014D58 */  jal         osViSetMode
/* 00A4C4 8000A914 8FA4006C */   lw         $a0, 0x6c($sp)
/* 00A4C8 8000A918 0C014D70 */  jal         osViBlack
/* 00A4CC 8000A91C 24040001 */   addiu      $a0, $zero, 0x1
/* 00A4D0 8000A920 3C098000 */  lui         $t1, %hi(osTvType)
/* 00A4D4 8000A924 8D290300 */  lw          $t1, %lo(osTvType)($t1)
/* 00A4D8 8000A928 24010001 */  addiu       $at, $zero, 0x1
/* 00A4DC 8000A92C 11210003 */  beq         $t1, $at, .L8000A93C
/* 00A4E0 8000A930 00000000 */   nop
.L8000A934:
/* 00A4E4 8000A934 1000FFFF */  b           .L8000A934
/* 00A4E8 8000A938 00000000 */   nop
.L8000A93C:
/* 00A4EC 8000A93C 0C014D8C */  jal         func_80053630
/* 00A4F0 8000A940 24040040 */   addiu      $a0, $zero, 0x40
/* 00A4F4 8000A944 0C014D8C */  jal         func_80053630
/* 00A4F8 8000A948 24040008 */   addiu      $a0, $zero, 0x8
/* 00A4FC 8000A94C 0C014D8C */  jal         func_80053630
/* 00A500 8000A950 24040002 */   addiu      $a0, $zero, 0x2
/* 00A504 8000A954 8FA40078 */  lw          $a0, 0x78($sp)
/* 00A508 8000A958 24050004 */  addiu       $a1, $zero, 0x4
/* 00A50C 8000A95C 0C0009D9 */  jal         func_80002764
/* 00A510 8000A960 24060008 */   addiu      $a2, $zero, 0x8
/* 00A514 8000A964 0C0013C6 */  jal         func_80004F18
/* 00A518 8000A968 24040F0F */   addiu      $a0, $zero, 0xf0f
/* 00A51C 8000A96C 3C01800A */  lui         $at, %hi(D_800A0BF0)
/* 00A520 8000A970 C42C0BF0 */  lwc1        $f12, %lo(D_800A0BF0)($at)
/* 00A524 8000A974 3C01800A */  lui         $at, %hi(D_800A0BF4)
/* 00A528 8000A978 0C0013D9 */  jal         func_80004F64
/* 00A52C 8000A97C C42E0BF4 */   lwc1       $f14, %lo(D_800A0BF4)($at)
/* 00A530 8000A980 0C008538 */  jal         func_800214E0
/* 00A534 8000A984 00000000 */   nop
/* 00A538 8000A988 0C00BF58 */  jal         func_8002FD60
/* 00A53C 8000A98C 00000000 */   nop
/* 00A540 8000A990 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00A544 8000A994 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00A548 8000A998 0C014388 */  jal         bzero
/* 00A54C 8000A99C 24050020 */   addiu      $a1, $zero, 0x20
/* 00A550 8000A9A0 0C00DA98 */  jal         func_80036A60
/* 00A554 8000A9A4 00000000 */   nop
/* 00A558 8000A9A8 8FBF0064 */  lw          $ra, 0x64($sp)
/* 00A55C 8000A9AC 240A0001 */  addiu       $t2, $zero, 0x1
/* 00A560 8000A9B0 3C01800B */  lui         $at, %hi(D_800AE510)
/* 00A564 8000A9B4 AC2AE510 */  sw          $t2, %lo(D_800AE510)($at)
/* 00A568 8000A9B8 03E00008 */  jr          $ra
/* 00A56C 8000A9BC 27BD0078 */   addiu      $sp, $sp, 0x78

glabel func_8000A9C0 # 2
/* 00A570 8000A9C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A574 8000A9C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A578 8000A9C8 0C043983 */  jal         func_8010E60C
/* 00A57C 8000A9CC 00000000 */   nop
/* 00A580 8000A9D0 3C0E800B */  lui         $t6, %hi(D_800AE504)
/* 00A584 8000A9D4 8DCEE504 */  lw          $t6, %lo(D_800AE504)($t6)
/* 00A588 8000A9D8 24010012 */  addiu       $at, $zero, 0x12
/* 00A58C 8000A9DC 11C10003 */  beq         $t6, $at, .L8000A9EC
/* 00A590 8000A9E0 00000000 */   nop
/* 00A594 8000A9E4 0C002CB2 */  jal         func_8000B2C8
/* 00A598 8000A9E8 24040004 */   addiu      $a0, $zero, 0x4
.L8000A9EC:
/* 00A59C 8000A9EC 0C00AA82 */  jal         func_8002AA08
/* 00A5A0 8000A9F0 00000000 */   nop
/* 00A5A4 8000A9F4 0C00CB29 */  jal         func_80032CA4
/* 00A5A8 8000A9F8 3C044000 */   lui        $a0, 0x4000
/* 00A5AC 8000A9FC 10400003 */  beqz        $v0, .L8000AA0C
/* 00A5B0 8000AA00 3C044000 */   lui        $a0, 0x4000
/* 00A5B4 8000AA04 0C00CB1C */  jal         func_80032C70
/* 00A5B8 8000AA08 24050001 */   addiu      $a1, $zero, 0x1
.L8000AA0C:
/* 00A5BC 8000AA0C 00002025 */  move        $a0, $zero
/* 00A5C0 8000AA10 24050118 */  addiu       $a1, $zero, 0x118
/* 00A5C4 8000AA14 0C00CDE1 */  jal         func_80033784
/* 00A5C8 8000AA18 240600C8 */   addiu      $a2, $zero, 0xc8
/* 00A5CC 8000AA1C 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 00A5D0 8000AA20 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 00A5D4 8000AA24 00002025 */  move        $a0, $zero
/* 00A5D8 8000AA28 24060001 */  addiu       $a2, $zero, 0x1
/* 00A5DC 8000AA2C 0C00CE9C */  jal         func_80033A70
/* 00A5E0 8000AA30 8DE50064 */   lw         $a1, 0x64($t7)
/* 00A5E4 8000AA34 3C04800A */  lui         $a0, %hi(D_800A08F4)
/* 00A5E8 8000AA38 248408F4 */  addiu       $a0, $a0, %lo(D_800A08F4)
/* 00A5EC 8000AA3C 0C002ED2 */  jal         func_8000BB48
/* 00A5F0 8000AA40 24050001 */   addiu      $a1, $zero, 0x1
/* 00A5F4 8000AA44 0C0001B9 */  jal         func_800006E4
/* 00A5F8 8000AA48 00000000 */   nop
/* 00A5FC 8000AA4C 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A600 8000AA50 3C05800A */  lui         $a1, %hi(D_800A0908)
/* 00A604 8000AA54 24A50908 */  addiu       $a1, $a1, %lo(D_800A0908)
/* 00A608 8000AA58 0C00E1A4 */  jal         func_80038690
/* 00A60C 8000AA5C 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A610 8000AA60 3C04800A */  lui         $a0, %hi(D_800A091C)
/* 00A614 8000AA64 2484091C */  addiu       $a0, $a0, %lo(D_800A091C)
/* 00A618 8000AA68 0C002ED2 */  jal         func_8000BB48
/* 00A61C 8000AA6C 00002825 */   move       $a1, $zero
/* 00A620 8000AA70 0C044F1E */  jal         func_80113C78
/* 00A624 8000AA74 00000000 */   nop
/* 00A628 8000AA78 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A62C 8000AA7C 3C05800A */  lui         $a1, %hi(D_800A0930)
/* 00A630 8000AA80 24A50930 */  addiu       $a1, $a1, %lo(D_800A0930)
/* 00A634 8000AA84 0C00E1A4 */  jal         func_80038690
/* 00A638 8000AA88 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A63C 8000AA8C 0C002602 */  jal         func_80009808
/* 00A640 8000AA90 00000000 */   nop
/* 00A644 8000AA94 3C018007 */  lui         $at, %hi(D_800760A8)
/* 00A648 8000AA98 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A64C 8000AA9C 3C05800A */  lui         $a1, %hi(D_800A0948)
/* 00A650 8000AAA0 AC2060A8 */  sw          $zero, %lo(D_800760A8)($at)
/* 00A654 8000AAA4 24A50948 */  addiu       $a1, $a1, %lo(D_800A0948)
/* 00A658 8000AAA8 0C00E1A4 */  jal         func_80038690
/* 00A65C 8000AAAC 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A660 8000AAB0 3C04800A */  lui         $a0, %hi(D_800A095C)
/* 00A664 8000AAB4 2484095C */  addiu       $a0, $a0, %lo(D_800A095C)
/* 00A668 8000AAB8 0C002ED2 */  jal         func_8000BB48
/* 00A66C 8000AABC 24050001 */   addiu      $a1, $zero, 0x1
/* 00A670 8000AAC0 0C043930 */  jal         func_8010E4C0
/* 00A674 8000AAC4 00000000 */   nop
/* 00A678 8000AAC8 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A67C 8000AACC 3C05800A */  lui         $a1, %hi(D_800A096C)
/* 00A680 8000AAD0 24A5096C */  addiu       $a1, $a1, %lo(D_800A096C)
/* 00A684 8000AAD4 0C00E1A4 */  jal         func_80038690
/* 00A688 8000AAD8 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A68C 8000AADC 3C04800A */  lui         $a0, %hi(D_800A0980)
/* 00A690 8000AAE0 24840980 */  addiu       $a0, $a0, %lo(D_800A0980)
/* 00A694 8000AAE4 0C002ED2 */  jal         func_8000BB48
/* 00A698 8000AAE8 24050001 */   addiu      $a1, $zero, 0x1
/* 00A69C 8000AAEC 0C0447D0 */  jal         func_80111F40
/* 00A6A0 8000AAF0 00000000 */   nop
/* 00A6A4 8000AAF4 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A6A8 8000AAF8 3C05800A */  lui         $a1, %hi(D_800A0990)
/* 00A6AC 8000AAFC 24A50990 */  addiu       $a1, $a1, %lo(D_800A0990)
/* 00A6B0 8000AB00 0C00E1A4 */  jal         func_80038690
/* 00A6B4 8000AB04 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A6B8 8000AB08 0C044B28 */  jal         func_80112CA0
/* 00A6BC 8000AB0C 00000000 */   nop
/* 00A6C0 8000AB10 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A6C4 8000AB14 3C05800A */  lui         $a1, %hi(D_800A09B0)
/* 00A6C8 8000AB18 24A509B0 */  addiu       $a1, $a1, %lo(D_800A09B0)
/* 00A6CC 8000AB1C 0C00E1A4 */  jal         func_80038690
/* 00A6D0 8000AB20 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A6D4 8000AB24 0C046EB2 */  jal         func_8011BAC8
/* 00A6D8 8000AB28 00000000 */   nop
/* 00A6DC 8000AB2C 3C04800A */  lui         $a0, %hi(D_800A09C4)
/* 00A6E0 8000AB30 248409C4 */  addiu       $a0, $a0, %lo(D_800A09C4)
/* 00A6E4 8000AB34 0C002ED2 */  jal         func_8000BB48
/* 00A6E8 8000AB38 24050001 */   addiu      $a1, $zero, 0x1
/* 00A6EC 8000AB3C 0C00BED9 */  jal         func_8002FB64
/* 00A6F0 8000AB40 00000000 */   nop
/* 00A6F4 8000AB44 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A6F8 8000AB48 3C05800A */  lui         $a1, %hi(D_800A09D8)
/* 00A6FC 8000AB4C 24A509D8 */  addiu       $a1, $a1, %lo(D_800A09D8)
/* 00A700 8000AB50 0C00E1A4 */  jal         func_80038690
/* 00A704 8000AB54 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A708 8000AB58 3C04800A */  lui         $a0, %hi(D_800A09F0)
/* 00A70C 8000AB5C 248409F0 */  addiu       $a0, $a0, %lo(D_800A09F0)
/* 00A710 8000AB60 0C002ED2 */  jal         func_8000BB48
/* 00A714 8000AB64 24050001 */   addiu      $a1, $zero, 0x1
/* 00A718 8000AB68 0C0011EE */  jal         func_800047B8
/* 00A71C 8000AB6C 24040001 */   addiu      $a0, $zero, 0x1
/* 00A720 8000AB70 00002025 */  move        $a0, $zero
/* 00A724 8000AB74 0C0011D7 */  jal         func_8000475C
/* 00A728 8000AB78 00002825 */   move       $a1, $zero
/* 00A72C 8000AB7C 24040001 */  addiu       $a0, $zero, 0x1
/* 00A730 8000AB80 0C00120F */  jal         func_8000483C
/* 00A734 8000AB84 24052020 */   addiu      $a1, $zero, 0x2020
/* 00A738 8000AB88 0C0011F9 */  jal         func_800047E4
/* 00A73C 8000AB8C 00002025 */   move       $a0, $zero
/* 00A740 8000AB90 0C001204 */  jal         func_80004810
/* 00A744 8000AB94 00002025 */   move       $a0, $zero
/* 00A748 8000AB98 3C018007 */  lui         $at, %hi(D_800722D0)
/* 00A74C 8000AB9C AC2022D0 */  sw          $zero, %lo(D_800722D0)($at)
/* 00A750 8000ABA0 3C018007 */  lui         $at, %hi(D_800722D4)
/* 00A754 8000ABA4 AC2022D4 */  sw          $zero, %lo(D_800722D4)($at)
/* 00A758 8000ABA8 0C0011E3 */  jal         func_8000478C
/* 00A75C 8000ABAC 00002025 */   move       $a0, $zero
/* 00A760 8000ABB0 0C00ADAC */  jal         func_8002B6B0
/* 00A764 8000ABB4 00000000 */   nop
/* 00A768 8000ABB8 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A76C 8000ABBC 3C05800A */  lui         $a1, %hi(D_800A0A04)
/* 00A770 8000ABC0 24A50A04 */  addiu       $a1, $a1, %lo(D_800A0A04)
/* 00A774 8000ABC4 0C00E1A4 */  jal         func_80038690
/* 00A778 8000ABC8 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A77C 8000ABCC 3C04800A */  lui         $a0, %hi(D_800A0A1C)
/* 00A780 8000ABD0 24840A1C */  addiu       $a0, $a0, %lo(D_800A0A1C)
/* 00A784 8000ABD4 0C002ED2 */  jal         func_8000BB48
/* 00A788 8000ABD8 24050001 */   addiu      $a1, $zero, 0x1
/* 00A78C 8000ABDC 0C04394F */  jal         func_8010E53C
/* 00A790 8000ABE0 00000000 */   nop
/* 00A794 8000ABE4 3C04800A */  lui         $a0, %hi(D_800A0A2C)
/* 00A798 8000ABE8 24840A2C */  addiu       $a0, $a0, %lo(D_800A0A2C)
/* 00A79C 8000ABEC 0C002ED2 */  jal         func_8000BB48
/* 00A7A0 8000ABF0 24050001 */   addiu      $a1, $zero, 0x1
/* 00A7A4 8000ABF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00A7A8 8000ABF8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00A7AC 8000ABFC 03E00008 */  jr          $ra
/* 00A7B0 8000AC00 00000000 */   nop

glabel func_8000AC04 # 3
/* 00A7B4 8000AC04 3C01800B */  lui         $at, %hi(D_800B66F4)
/* 00A7B8 8000AC08 AC2066F4 */  sw          $zero, %lo(D_800B66F4)($at)
/* 00A7BC 8000AC0C 3C01800B */  lui         $at, %hi(D_800B676C)
/* 00A7C0 8000AC10 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A7C4 8000AC14 AC20676C */  sw          $zero, %lo(D_800B676C)($at)
/* 00A7C8 8000AC18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A7CC 8000AC1C 3C01800B */  lui         $at, %hi(D_800B66F8)
/* 00A7D0 8000AC20 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A7D4 8000AC24 3C05800A */  lui         $a1, %hi(D_800A0A3C)
/* 00A7D8 8000AC28 AC2066F8 */  sw          $zero, %lo(D_800B66F8)($at)
/* 00A7DC 8000AC2C 24A50A3C */  addiu       $a1, $a1, %lo(D_800A0A3C)
/* 00A7E0 8000AC30 0C00E1A4 */  jal         func_80038690
/* 00A7E4 8000AC34 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A7E8 8000AC38 0C002B2E */  jal         func_8000ACB8
/* 00A7EC 8000AC3C 00000000 */   nop
/* 00A7F0 8000AC40 0C001283 */  jal         func_80004A0C
/* 00A7F4 8000AC44 00002025 */   move       $a0, $zero
/* 00A7F8 8000AC48 3C0E800B */  lui         $t6, %hi(D_800AE4F0)
/* 00A7FC 8000AC4C 8DCEE4F0 */  lw          $t6, %lo(D_800AE4F0)($t6)
/* 00A800 8000AC50 3C028006 */  lui         $v0, %hi(D_80063828)
/* 00A804 8000AC54 000E7900 */  sll         $t7, $t6, 4
/* 00A808 8000AC58 004F1021 */  addu        $v0, $v0, $t7
/* 00A80C 8000AC5C 8C423828 */  lw          $v0, %lo(D_80063828)($v0)
/* 00A810 8000AC60 50400004 */  beql        $v0, $zero, .L8000AC74
/* 00A814 8000AC64 00002025 */   move       $a0, $zero
/* 00A818 8000AC68 0040F809 */  jalr        $v0
/* 00A81C 8000AC6C 00000000 */   nop
/* 00A820 8000AC70 00002025 */  move        $a0, $zero
.L8000AC74:
/* 00A824 8000AC74 0C0011D7 */  jal         func_8000475C
/* 00A828 8000AC78 00002825 */   move       $a1, $zero
/* 00A82C 8000AC7C 0C008C26 */  jal         func_80023098
/* 00A830 8000AC80 00000000 */   nop
/* 00A834 8000AC84 0C00EAA2 */  jal         func_8003AA88
/* 00A838 8000AC88 00000000 */   nop
/* 00A83C 8000AC8C 0C004869 */  jal         func_800121A4
/* 00A840 8000AC90 00000000 */   nop
/* 00A844 8000AC94 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 00A848 8000AC98 3C05800A */  lui         $a1, %hi(D_800A0A50)
/* 00A84C 8000AC9C 24A50A50 */  addiu       $a1, $a1, %lo(D_800A0A50)
/* 00A850 8000ACA0 0C00E1A4 */  jal         func_80038690
/* 00A854 8000ACA4 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 00A858 8000ACA8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00A85C 8000ACAC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00A860 8000ACB0 03E00008 */  jr          $ra
/* 00A864 8000ACB4 00000000 */   nop

glabel func_8000ACB8 # 4
/* 00A868 8000ACB8 3C01800B */  lui         $at, %hi(D_800B6750)
/* 00A86C 8000ACBC AC206750 */  sw          $zero, %lo(D_800B6750)($at)
/* 00A870 8000ACC0 3C01800B */  lui         $at, %hi(D_800B6754)
/* 00A874 8000ACC4 AC206754 */  sw          $zero, %lo(D_800B6754)($at)
/* 00A878 8000ACC8 3C01800B */  lui         $at, %hi(D_800B675C)
/* 00A87C 8000ACCC 240E0000 */  addiu       $t6, $zero, 0x0
/* 00A880 8000ACD0 240F0000 */  addiu       $t7, $zero, 0x0
/* 00A884 8000ACD4 AC2F675C */  sw          $t7, %lo(D_800B675C)($at)
/* 00A888 8000ACD8 AC2E6758 */  sw          $t6, %lo(D_800B6758)($at)
/* 00A88C 8000ACDC 3C01800A */  lui         $at, %hi(D_800A0BF8)
/* 00A890 8000ACE0 C4240BF8 */  lwc1        $f4, %lo(D_800A0BF8)($at)
/* 00A894 8000ACE4 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00A898 8000ACE8 24180000 */  addiu       $t8, $zero, 0x0
/* 00A89C 8000ACEC E424E4E4 */  swc1        $f4, %lo(D_800AE4E4)($at)
/* 00A8A0 8000ACF0 3C018006 */  lui         $at, %hi(D_80063834)
/* 00A8A4 8000ACF4 24190000 */  addiu       $t9, $zero, 0x0
/* 00A8A8 8000ACF8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A8AC 8000ACFC AC393834 */  sw          $t9, %lo(D_80063834)($at)
/* 00A8B0 8000AD00 AC383830 */  sw          $t8, %lo(D_80063830)($at)
/* 00A8B4 8000AD04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A8B8 8000AD08 3C018006 */  lui         $at, %hi(D_8006383C)
/* 00A8BC 8000AD0C 24080000 */  addiu       $t0, $zero, 0x0
/* 00A8C0 8000AD10 24090000 */  addiu       $t1, $zero, 0x0
/* 00A8C4 8000AD14 AC29383C */  sw          $t1, %lo(D_8006383C)($at)
/* 00A8C8 8000AD18 0C01482C */  jal         osGetTime
/* 00A8CC 8000AD1C AC283838 */   sw         $t0, %lo(D_80063838)($at)
/* 00A8D0 8000AD20 00402025 */  move        $a0, $v0
/* 00A8D4 8000AD24 00602825 */  move        $a1, $v1
/* 00A8D8 8000AD28 24060000 */  addiu       $a2, $zero, 0x0
/* 00A8DC 8000AD2C 0C01492E */  jal         __ll_mul
/* 00A8E0 8000AD30 24070040 */   addiu      $a3, $zero, 0x40
/* 00A8E4 8000AD34 00402025 */  move        $a0, $v0
/* 00A8E8 8000AD38 00602825 */  move        $a1, $v1
/* 00A8EC 8000AD3C 24060000 */  addiu       $a2, $zero, 0x0
/* 00A8F0 8000AD40 0C0148EE */  jal         __ull_div
/* 00A8F4 8000AD44 24070BB8 */   addiu      $a3, $zero, 0xbb8
/* 00A8F8 8000AD48 3C018006 */  lui         $at, %hi(D_80063840)
/* 00A8FC 8000AD4C 3C0A8006 */  lui         $t2, %hi(D_80063830)
/* 00A900 8000AD50 3C0B8006 */  lui         $t3, %hi(D_80063834)
/* 00A904 8000AD54 8D6B3834 */  lw          $t3, %lo(D_80063834)($t3)
/* 00A908 8000AD58 8D4A3830 */  lw          $t2, %lo(D_80063830)($t2)
/* 00A90C 8000AD5C AC223840 */  sw          $v0, %lo(D_80063840)($at)
/* 00A910 8000AD60 AC233844 */  sw          $v1, %lo(D_80063844)($at)
/* 00A914 8000AD64 3C018006 */  lui         $at, %hi(D_8006384C)
/* 00A918 8000AD68 3C0C8006 */  lui         $t4, %hi(D_80063838)
/* 00A91C 8000AD6C 3C0D8006 */  lui         $t5, %hi(D_8006383C)
/* 00A920 8000AD70 8DAD383C */  lw          $t5, %lo(D_8006383C)($t5)
/* 00A924 8000AD74 8D8C3838 */  lw          $t4, %lo(D_80063838)($t4)
/* 00A928 8000AD78 AC2B384C */  sw          $t3, %lo(D_8006384C)($at)
/* 00A92C 8000AD7C AC2A3848 */  sw          $t2, %lo(D_80063848)($at)
/* 00A930 8000AD80 3C01800B */  lui         $at, %hi(D_800B66EC)
/* 00A934 8000AD84 3C04800B */  lui         $a0, %hi(D_800B6700)
/* 00A938 8000AD88 24846700 */  addiu       $a0, $a0, %lo(D_800B6700)
/* 00A93C 8000AD8C 24050050 */  addiu       $a1, $zero, 0x50
/* 00A940 8000AD90 AC2D66EC */  sw          $t5, %lo(D_800B66EC)($at)
/* 00A944 8000AD94 0C014388 */  jal         bzero
/* 00A948 8000AD98 AC2C66E8 */   sw         $t4, %lo(D_800B66E8)($at)
/* 00A94C 8000AD9C 0C01482C */  jal         osGetTime
/* 00A950 8000ADA0 00000000 */   nop
/* 00A954 8000ADA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00A958 8000ADA8 3C01800B */  lui         $at, %hi(D_800B6760)
/* 00A95C 8000ADAC AC226760 */  sw          $v0, %lo(D_800B6760)($at)
/* 00A960 8000ADB0 AC236764 */  sw          $v1, %lo(D_800B6764)($at)
/* 00A964 8000ADB4 03E00008 */  jr          $ra
/* 00A968 8000ADB8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8000ADBC # 5
/* 00A96C 8000ADBC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A970 8000ADC0 AFA40018 */  sw          $a0, 0x18($sp)
/* 00A974 8000ADC4 3C04800B */  lui         $a0, %hi(D_800B6750)
/* 00A978 8000ADC8 24846750 */  addiu       $a0, $a0, %lo(D_800B6750)
/* 00A97C 8000ADCC 8C820000 */  lw          $v0, 0x0($a0)
/* 00A980 8000ADD0 3C0F800B */  lui         $t7, %hi(D_800B6700)
/* 00A984 8000ADD4 25EF6700 */  addiu       $t7, $t7, %lo(D_800B6700)
/* 00A988 8000ADD8 000270C0 */  sll         $t6, $v0, 3
/* 00A98C 8000ADDC 01CF1821 */  addu        $v1, $t6, $t7
/* 00A990 8000ADE0 8C6B0004 */  lw          $t3, 0x4($v1)
/* 00A994 8000ADE4 3C08800B */  lui         $t0, %hi(D_800B6758)
/* 00A998 8000ADE8 8C6A0000 */  lw          $t2, 0x0($v1)
/* 00A99C 8000ADEC 8FB80018 */  lw          $t8, 0x18($sp)
/* 00A9A0 8000ADF0 25086758 */  addiu       $t0, $t0, %lo(D_800B6758)
/* 00A9A4 8000ADF4 8D0F0004 */  lw          $t7, 0x4($t0)
/* 00A9A8 8000ADF8 00AB082B */  sltu        $at, $a1, $t3
/* 00A9AC 8000ADFC 00AB6823 */  subu        $t5, $a1, $t3
/* 00A9B0 8000AE00 030A6023 */  subu        $t4, $t8, $t2
/* 00A9B4 8000AE04 01816023 */  subu        $t4, $t4, $at
/* 00A9B8 8000AE08 01AFC821 */  addu        $t9, $t5, $t7
/* 00A9BC 8000AE0C 8D0E0000 */  lw          $t6, 0x0($t0)
/* 00A9C0 8000AE10 032F082B */  sltu        $at, $t9, $t7
/* 00A9C4 8000AE14 002CC021 */  addu        $t8, $at, $t4
/* 00A9C8 8000AE18 8FAA0018 */  lw          $t2, 0x18($sp)
/* 00A9CC 8000AE1C 24490001 */  addiu       $t1, $v0, 0x1
/* 00A9D0 8000AE20 2921000A */  slti        $at, $t1, 0xa
/* 00A9D4 8000AE24 030EC021 */  addu        $t8, $t8, $t6
/* 00A9D8 8000AE28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A9DC 8000AE2C AFA5001C */  sw          $a1, 0x1c($sp)
/* 00A9E0 8000AE30 AD180000 */  sw          $t8, 0x0($t0)
/* 00A9E4 8000AE34 AD190004 */  sw          $t9, 0x4($t0)
/* 00A9E8 8000AE38 AC650004 */  sw          $a1, 0x4($v1)
/* 00A9EC 8000AE3C AC890000 */  sw          $t1, 0x0($a0)
/* 00A9F0 8000AE40 14200002 */  bnez        $at, .L8000AE4C
/* 00A9F4 8000AE44 AC6A0000 */   sw         $t2, 0x0($v1)
/* 00A9F8 8000AE48 AC800000 */  sw          $zero, 0x0($a0)
.L8000AE4C:
/* 00A9FC 8000AE4C 3C03800B */  lui         $v1, %hi(D_800B6754)
/* 00AA00 8000AE50 24636754 */  addiu       $v1, $v1, %lo(D_800B6754)
/* 00AA04 8000AE54 8C620000 */  lw          $v0, 0x0($v1)
/* 00AA08 8000AE58 24060000 */  addiu       $a2, $zero, 0x0
/* 00AA0C 8000AE5C 24070040 */  addiu       $a3, $zero, 0x40
/* 00AA10 8000AE60 2841000A */  slti        $at, $v0, 0xa
/* 00AA14 8000AE64 10200002 */  beqz        $at, .L8000AE70
/* 00AA18 8000AE68 244D0001 */   addiu      $t5, $v0, 0x1
/* 00AA1C 8000AE6C AC6D0000 */  sw          $t5, 0x0($v1)
.L8000AE70:
/* 00AA20 8000AE70 8D040000 */  lw          $a0, 0x0($t0)
/* 00AA24 8000AE74 0C01492E */  jal         __ll_mul
/* 00AA28 8000AE78 8D050004 */   lw         $a1, 0x4($t0)
/* 00AA2C 8000AE7C 00402025 */  move        $a0, $v0
/* 00AA30 8000AE80 00602825 */  move        $a1, $v1
/* 00AA34 8000AE84 24060000 */  addiu       $a2, $zero, 0x0
/* 00AA38 8000AE88 0C0148EE */  jal         __ull_div
/* 00AA3C 8000AE8C 24070BB8 */   addiu      $a3, $zero, 0xbb8
/* 00AA40 8000AE90 00402025 */  move        $a0, $v0
/* 00AA44 8000AE94 0C0148C6 */  jal         __ull_to_f
/* 00AA48 8000AE98 00602825 */   move       $a1, $v1
/* 00AA4C 8000AE9C 3C01800A */  lui         $at, %hi(D_800A0BFC)
/* 00AA50 8000AEA0 C42C0BFC */  lwc1        $f12, %lo(D_800A0BFC)($at)
/* 00AA54 8000AEA4 3C01800A */  lui         $at, %hi(D_800A0C00)
/* 00AA58 8000AEA8 C4240C00 */  lwc1        $f4, %lo(D_800A0C00)($at)
/* 00AA5C 8000AEAC 3C0E800B */  lui         $t6, %hi(D_800B6754)
/* 00AA60 8000AEB0 8DCE6754 */  lw          $t6, %lo(D_800B6754)($t6)
/* 00AA64 8000AEB4 46040183 */  div.s       $f6, $f0, $f4
/* 00AA68 8000AEB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AA6C 8000AEBC 448E4000 */  mtc1        $t6, $f8
/* 00AA70 8000AEC0 3C01800A */  lui         $at, %hi(D_800A0C04)
/* 00AA74 8000AEC4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AA78 8000AEC8 468042A0 */  cvt.s.w     $f10, $f8
/* 00AA7C 8000AECC 460A3083 */  div.s       $f2, $f6, $f10
/* 00AA80 8000AED0 460C103C */  c.lt.s      $f2, $f12
/* 00AA84 8000AED4 00000000 */  nop
/* 00AA88 8000AED8 45000003 */  bc1f        .L8000AEE8
/* 00AA8C 8000AEDC 00000000 */   nop
/* 00AA90 8000AEE0 10000007 */  b           .L8000AF00
/* 00AA94 8000AEE4 46006086 */   mov.s      $f2, $f12
.L8000AEE8:
/* 00AA98 8000AEE8 C4200C04 */  lwc1        $f0, %lo(D_800A0C04)($at)
/* 00AA9C 8000AEEC 4602003C */  c.lt.s      $f0, $f2
/* 00AAA0 8000AEF0 00000000 */  nop
/* 00AAA4 8000AEF4 45000002 */  bc1f        .L8000AF00
/* 00AAA8 8000AEF8 00000000 */   nop
/* 00AAAC 8000AEFC 46000086 */  mov.s       $f2, $f0
.L8000AF00:
/* 00AAB0 8000AF00 03E00008 */  jr          $ra
/* 00AAB4 8000AF04 46001006 */   mov.s      $f0, $f2

glabel func_8000AF08 # 6
/* 00AAB8 8000AF08 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00AABC 8000AF0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AAC0 8000AF10 0C01482C */  jal         osGetTime
/* 00AAC4 8000AF14 00000000 */   nop
/* 00AAC8 8000AF18 3C07800B */  lui         $a3, %hi(D_800B6760)
/* 00AACC 8000AF1C 24E76760 */  addiu       $a3, $a3, %lo(D_800B6760)
/* 00AAD0 8000AF20 8CEE0000 */  lw          $t6, 0x0($a3)
/* 00AAD4 8000AF24 8CEF0004 */  lw          $t7, 0x4($a3)
/* 00AAD8 8000AF28 3C06800B */  lui         $a2, %hi(D_800AE4E8)
/* 00AADC 8000AF2C 004EC023 */  subu        $t8, $v0, $t6
/* 00AAE0 8000AF30 006F082B */  sltu        $at, $v1, $t7
/* 00AAE4 8000AF34 24C6E4E8 */  addiu       $a2, $a2, %lo(D_800AE4E8)
/* 00AAE8 8000AF38 03012023 */  subu        $a0, $t8, $at
/* 00AAEC 8000AF3C 006F2823 */  subu        $a1, $v1, $t7
/* 00AAF0 8000AF40 AFA20030 */  sw          $v0, 0x30($sp)
/* 00AAF4 8000AF44 AFA30034 */  sw          $v1, 0x34($sp)
/* 00AAF8 8000AF48 ACC50004 */  sw          $a1, 0x4($a2)
/* 00AAFC 8000AF4C ACC40000 */  sw          $a0, 0x0($a2)
/* 00AB00 8000AF50 ACE30004 */  sw          $v1, 0x4($a3)
/* 00AB04 8000AF54 0C002B6F */  jal         func_8000ADBC
/* 00AB08 8000AF58 ACE20000 */   sw         $v0, 0x0($a3)
/* 00AB0C 8000AF5C 3C02800B */  lui         $v0, %hi(D_800AE4E4)
/* 00AB10 8000AF60 2442E4E4 */  addiu       $v0, $v0, %lo(D_800AE4E4)
/* 00AB14 8000AF64 3C03800B */  lui         $v1, %hi(D_800B6768)
/* 00AB18 8000AF68 24636768 */  addiu       $v1, $v1, %lo(D_800B6768)
/* 00AB1C 8000AF6C E4400000 */  swc1        $f0, 0x0($v0)
/* 00AB20 8000AF70 C4460000 */  lwc1        $f6, 0x0($v0)
/* 00AB24 8000AF74 C4640000 */  lwc1        $f4, 0x0($v1)
/* 00AB28 8000AF78 8FA40030 */  lw          $a0, 0x30($sp)
/* 00AB2C 8000AF7C 8FA50034 */  lw          $a1, 0x34($sp)
/* 00AB30 8000AF80 46062200 */  add.s       $f8, $f4, $f6
/* 00AB34 8000AF84 24060000 */  addiu       $a2, $zero, 0x0
/* 00AB38 8000AF88 24070040 */  addiu       $a3, $zero, 0x40
/* 00AB3C 8000AF8C 0C01492E */  jal         __ll_mul
/* 00AB40 8000AF90 E4680000 */   swc1       $f8, 0x0($v1)
/* 00AB44 8000AF94 00402025 */  move        $a0, $v0
/* 00AB48 8000AF98 00602825 */  move        $a1, $v1
/* 00AB4C 8000AF9C 24060000 */  addiu       $a2, $zero, 0x0
/* 00AB50 8000AFA0 0C0148EE */  jal         __ull_div
/* 00AB54 8000AFA4 24070BB8 */   addiu      $a3, $zero, 0xbb8
/* 00AB58 8000AFA8 3C098006 */  lui         $t1, %hi(D_80063844)
/* 00AB5C 8000AFAC 8D293844 */  lw          $t1, %lo(D_80063844)($t1)
/* 00AB60 8000AFB0 3C088006 */  lui         $t0, %hi(D_80063840)
/* 00AB64 8000AFB4 8D083840 */  lw          $t0, %lo(D_80063840)($t0)
/* 00AB68 8000AFB8 0069082B */  sltu        $at, $v1, $t1
/* 00AB6C 8000AFBC AFA20038 */  sw          $v0, 0x38($sp)
/* 00AB70 8000AFC0 00485023 */  subu        $t2, $v0, $t0
/* 00AB74 8000AFC4 AFA3003C */  sw          $v1, 0x3c($sp)
/* 00AB78 8000AFC8 01415023 */  subu        $t2, $t2, $at
/* 00AB7C 8000AFCC AFA9001C */  sw          $t1, 0x1c($sp)
/* 00AB80 8000AFD0 00695823 */  subu        $t3, $v1, $t1
/* 00AB84 8000AFD4 AFA80018 */  sw          $t0, 0x18($sp)
/* 00AB88 8000AFD8 15400003 */  bnez        $t2, .L8000AFE8
/* 00AB8C 8000AFDC 2D6103E9 */   sltiu      $at, $t3, 0x3e9
/* 00AB90 8000AFE0 1420001A */  bnez        $at, .L8000B04C
/* 00AB94 8000AFE4 00000000 */   nop
.L8000AFE8:
/* 00AB98 8000AFE8 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00AB9C 8000AFEC 8FAD003C */  lw          $t5, 0x3c($sp)
/* 00ABA0 8000AFF0 24060000 */  addiu       $a2, $zero, 0x0
/* 00ABA4 8000AFF4 01882023 */  subu        $a0, $t4, $t0
/* 00ABA8 8000AFF8 01A9082B */  sltu        $at, $t5, $t1
/* 00ABAC 8000AFFC 00812023 */  subu        $a0, $a0, $at
/* 00ABB0 8000B000 240703E8 */  addiu       $a3, $zero, 0x3e8
/* 00ABB4 8000B004 0C0148EE */  jal         __ull_div
/* 00ABB8 8000B008 01A92823 */   subu       $a1, $t5, $t1
/* 00ABBC 8000B00C 3C0F8006 */  lui         $t7, %hi(D_80063834)
/* 00ABC0 8000B010 8DEF3834 */  lw          $t7, %lo(D_80063834)($t7)
/* 00ABC4 8000B014 3C0E8006 */  lui         $t6, %hi(D_80063830)
/* 00ABC8 8000B018 8DCE3830 */  lw          $t6, %lo(D_80063830)($t6)
/* 00ABCC 8000B01C 006FC821 */  addu        $t9, $v1, $t7
/* 00ABD0 8000B020 032F082B */  sltu        $at, $t9, $t7
/* 00ABD4 8000B024 0022C021 */  addu        $t8, $at, $v0
/* 00ABD8 8000B028 3C018006 */  lui         $at, %hi(D_80063830)
/* 00ABDC 8000B02C 030EC021 */  addu        $t8, $t8, $t6
/* 00ABE0 8000B030 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00ABE4 8000B034 8FAB003C */  lw          $t3, 0x3c($sp)
/* 00ABE8 8000B038 AC383830 */  sw          $t8, %lo(D_80063830)($at)
/* 00ABEC 8000B03C AC393834 */  sw          $t9, %lo(D_80063834)($at)
/* 00ABF0 8000B040 3C018006 */  lui         $at, %hi(D_80063840)
/* 00ABF4 8000B044 AC2A3840 */  sw          $t2, %lo(D_80063840)($at)
/* 00ABF8 8000B048 AC2B3844 */  sw          $t3, %lo(D_80063844)($at)
.L8000B04C:
/* 00ABFC 8000B04C 3C0D8006 */  lui         $t5, %hi(D_80063834)
/* 00AC00 8000B050 3C098006 */  lui         $t1, %hi(D_8006384C)
/* 00AC04 8000B054 8D29384C */  lw          $t1, %lo(D_8006384C)($t1)
/* 00AC08 8000B058 8DAD3834 */  lw          $t5, %lo(D_80063834)($t5)
/* 00AC0C 8000B05C 3C0C8006 */  lui         $t4, %hi(D_80063830)
/* 00AC10 8000B060 3C088006 */  lui         $t0, %hi(D_80063848)
/* 00AC14 8000B064 8D083848 */  lw          $t0, %lo(D_80063848)($t0)
/* 00AC18 8000B068 8D8C3830 */  lw          $t4, %lo(D_80063830)($t4)
/* 00AC1C 8000B06C 01A9082B */  sltu        $at, $t5, $t1
/* 00AC20 8000B070 01A97823 */  subu        $t7, $t5, $t1
/* 00AC24 8000B074 01887023 */  subu        $t6, $t4, $t0
/* 00AC28 8000B078 01C17023 */  subu        $t6, $t6, $at
/* 00AC2C 8000B07C AFAE0018 */  sw          $t6, 0x18($sp)
/* 00AC30 8000B080 AFAF001C */  sw          $t7, 0x1c($sp)
/* 00AC34 8000B084 01E02825 */  move        $a1, $t7
/* 00AC38 8000B088 15C00002 */  bnez        $t6, .L8000B094
/* 00AC3C 8000B08C 2DE103E9 */   sltiu      $at, $t7, 0x3e9
/* 00AC40 8000B090 14200016 */  bnez        $at, .L8000B0EC
.L8000B094:
/* 00AC44 8000B094 01C02025 */   move       $a0, $t6
/* 00AC48 8000B098 24060000 */  addiu       $a2, $zero, 0x0
/* 00AC4C 8000B09C 0C0148EE */  jal         __ull_div
/* 00AC50 8000B0A0 240703E8 */   addiu      $a3, $zero, 0x3e8
/* 00AC54 8000B0A4 3C198006 */  lui         $t9, %hi(D_8006383C)
/* 00AC58 8000B0A8 8F39383C */  lw          $t9, %lo(D_8006383C)($t9)
/* 00AC5C 8000B0AC 3C188006 */  lui         $t8, %hi(D_80063838)
/* 00AC60 8000B0B0 8F183838 */  lw          $t8, %lo(D_80063838)($t8)
/* 00AC64 8000B0B4 00795821 */  addu        $t3, $v1, $t9
/* 00AC68 8000B0B8 0179082B */  sltu        $at, $t3, $t9
/* 00AC6C 8000B0BC 00225021 */  addu        $t2, $at, $v0
/* 00AC70 8000B0C0 3C018006 */  lui         $at, %hi(D_80063838)
/* 00AC74 8000B0C4 3C0C8006 */  lui         $t4, %hi(D_80063830)
/* 00AC78 8000B0C8 3C0D8006 */  lui         $t5, %hi(D_80063834)
/* 00AC7C 8000B0CC 01585021 */  addu        $t2, $t2, $t8
/* 00AC80 8000B0D0 8DAD3834 */  lw          $t5, %lo(D_80063834)($t5)
/* 00AC84 8000B0D4 8D8C3830 */  lw          $t4, %lo(D_80063830)($t4)
/* 00AC88 8000B0D8 AC2A3838 */  sw          $t2, %lo(D_80063838)($at)
/* 00AC8C 8000B0DC AC2B383C */  sw          $t3, %lo(D_8006383C)($at)
/* 00AC90 8000B0E0 3C018006 */  lui         $at, %hi(D_8006384C)
/* 00AC94 8000B0E4 AC2D384C */  sw          $t5, %lo(D_8006384C)($at)
/* 00AC98 8000B0E8 AC2C3848 */  sw          $t4, %lo(D_80063848)($at)
.L8000B0EC:
/* 00AC9C 8000B0EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ACA0 8000B0F0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00ACA4 8000B0F4 03E00008 */  jr          $ra
/* 00ACA8 8000B0F8 00000000 */   nop

glabel func_8000B0FC # 7
/* 00ACAC 8000B0FC 3C028006 */  lui         $v0, %hi(D_80063830)
/* 00ACB0 8000B100 3C038006 */  lui         $v1, %hi(D_80063834)
/* 00ACB4 8000B104 8C633834 */  lw          $v1, %lo(D_80063834)($v1)
/* 00ACB8 8000B108 03E00008 */  jr          $ra
/* 00ACBC 8000B10C 8C423830 */   lw         $v0, %lo(D_80063830)($v0)

glabel func_8000B110 # 8
/* 00ACC0 8000B110 3C028006 */  lui         $v0, %hi(D_80063838)
/* 00ACC4 8000B114 3C038006 */  lui         $v1, %hi(D_8006383C)
/* 00ACC8 8000B118 8C63383C */  lw          $v1, %lo(D_8006383C)($v1)
/* 00ACCC 8000B11C 03E00008 */  jr          $ra
/* 00ACD0 8000B120 8C423838 */   lw         $v0, %lo(D_80063838)($v0)

glabel func_8000B124 # 9
/* 00ACD4 8000B124 44802000 */  mtc1        $zero, $f4
/* 00ACD8 8000B128 3C01800B */  lui         $at, %hi(D_800B6768)
/* 00ACDC 8000B12C 03E00008 */  jr          $ra
/* 00ACE0 8000B130 E4246768 */   swc1       $f4, %lo(D_800B6768)($at)

glabel func_8000B134 # 10
/* 00ACE4 8000B134 3C01800B */  lui         $at, %hi(D_800B6768)
/* 00ACE8 8000B138 C4246768 */  lwc1        $f4, %lo(D_800B6768)($at)
/* 00ACEC 8000B13C 3C01447A */  lui         $at, 0x447a
/* 00ACF0 8000B140 44813000 */  mtc1        $at, $f6
/* 00ACF4 8000B144 240105DC */  addiu       $at, $zero, 0x5dc
/* 00ACF8 8000B148 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00ACFC 8000B14C 46062202 */  mul.s       $f8, $f4, $f6
/* 00AD00 8000B150 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AD04 8000B154 4600428D */  trunc.w.s   $f10, $f8
/* 00AD08 8000B158 440F5000 */  mfc1        $t7, $f10
/* 00AD0C 8000B15C 00000000 */  nop
/* 00AD10 8000B160 01E1001A */  div         $zero, $t7, $at
/* 00AD14 8000B164 0000C010 */  mfhi        $t8
/* 00AD18 8000B168 44988000 */  mtc1        $t8, $f16
/* 00AD1C 8000B16C 3C01800A */  lui         $at, %hi(D_800A0C08)
/* 00AD20 8000B170 C4240C08 */  lwc1        $f4, %lo(D_800A0C08)($at)
/* 00AD24 8000B174 468084A0 */  cvt.s.w     $f18, $f16
/* 00AD28 8000B178 46049302 */  mul.s       $f12, $f18, $f4
/* 00AD2C 8000B17C 0C00F0F7 */  jal         func_8003C3DC
/* 00AD30 8000B180 00000000 */   nop
/* 00AD34 8000B184 3C0142FE */  lui         $at, 0x42fe
/* 00AD38 8000B188 44813000 */  mtc1        $at, $f6
/* 00AD3C 8000B18C 3C014300 */  lui         $at, 0x4300
/* 00AD40 8000B190 44815000 */  mtc1        $at, $f10
/* 00AD44 8000B194 46060202 */  mul.s       $f8, $f0, $f6
/* 00AD48 8000B198 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AD4C 8000B19C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AD50 8000B1A0 460A4400 */  add.s       $f16, $f8, $f10
/* 00AD54 8000B1A4 4600848D */  trunc.w.s   $f18, $f16
/* 00AD58 8000B1A8 44029000 */  mfc1        $v0, $f18
/* 00AD5C 8000B1AC 00000000 */  nop
/* 00AD60 8000B1B0 04410003 */  bgez        $v0, .L8000B1C0
/* 00AD64 8000B1B4 00401825 */   move       $v1, $v0
/* 00AD68 8000B1B8 10000005 */  b           .L8000B1D0
/* 00AD6C 8000B1BC 00001825 */   move       $v1, $zero
.L8000B1C0:
/* 00AD70 8000B1C0 28410100 */  slti        $at, $v0, 0x100
/* 00AD74 8000B1C4 14200002 */  bnez        $at, .L8000B1D0
/* 00AD78 8000B1C8 00000000 */   nop
/* 00AD7C 8000B1CC 240300FF */  addiu       $v1, $zero, 0xff
.L8000B1D0:
/* 00AD80 8000B1D0 03E00008 */  jr          $ra
/* 00AD84 8000B1D4 306200FF */   andi       $v0, $v1, 0xff

glabel func_8000B1D8 # 11
/* 00AD88 8000B1D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AD8C 8000B1DC 3C01800B */  lui         $at, %hi(D_800B66F0)
/* 00AD90 8000B1E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AD94 8000B1E4 AC2466F0 */  sw          $a0, %lo(D_800B66F0)($at)
/* 00AD98 8000B1E8 0C0011F9 */  jal         func_800047E4
/* 00AD9C 8000B1EC 00002025 */   move       $a0, $zero
/* 00ADA0 8000B1F0 0C001204 */  jal         func_80004810
/* 00ADA4 8000B1F4 00002025 */   move       $a0, $zero
/* 00ADA8 8000B1F8 3C018007 */  lui         $at, %hi(D_800722D0)
/* 00ADAC 8000B1FC AC2022D0 */  sw          $zero, %lo(D_800722D0)($at)
/* 00ADB0 8000B200 3C018007 */  lui         $at, %hi(D_800722D4)
/* 00ADB4 8000B204 AC2022D4 */  sw          $zero, %lo(D_800722D4)($at)
/* 00ADB8 8000B208 3C01800B */  lui         $at, %hi(D_800B676C)
/* 00ADBC 8000B20C 240E0001 */  addiu       $t6, $zero, 0x1
/* 00ADC0 8000B210 AC2E676C */  sw          $t6, %lo(D_800B676C)($at)
/* 00ADC4 8000B214 3C01800B */  lui         $at, %hi(D_800B66F8)
/* 00ADC8 8000B218 AC2066F8 */  sw          $zero, %lo(D_800B66F8)($at)
/* 00ADCC 8000B21C 0C001283 */  jal         func_80004A0C
/* 00ADD0 8000B220 00002025 */   move       $a0, $zero
/* 00ADD4 8000B224 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ADD8 8000B228 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00ADDC 8000B22C 03E00008 */  jr          $ra
/* 00ADE0 8000B230 00000000 */   nop

glabel func_8000B234 # 12
/* 00ADE4 8000B234 03E00008 */  jr          $ra
/* 00ADE8 8000B238 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8000B23C # 13
/* 00ADEC 8000B23C 3C0F8006 */  lui         $t7, %hi(D_8006383C)
/* 00ADF0 8000B240 3C19800B */  lui         $t9, %hi(D_800B66EC)
/* 00ADF4 8000B244 8F3966EC */  lw          $t9, %lo(D_800B66EC)($t9)
/* 00ADF8 8000B248 8DEF383C */  lw          $t7, %lo(D_8006383C)($t7)
/* 00ADFC 8000B24C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AE00 8000B250 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AE04 8000B254 24040004 */  addiu       $a0, $zero, 0x4
/* 00AE08 8000B258 0C00CB1C */  jal         func_80032C70
/* 00AE0C 8000B25C 01F92823 */   subu       $a1, $t7, $t9
/* 00AE10 8000B260 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AE14 8000B264 3C0A8006 */  lui         $t2, %hi(D_80063838)
/* 00AE18 8000B268 3C0B8006 */  lui         $t3, %hi(D_8006383C)
/* 00AE1C 8000B26C 8D6B383C */  lw          $t3, %lo(D_8006383C)($t3)
/* 00AE20 8000B270 8D4A3838 */  lw          $t2, %lo(D_80063838)($t2)
/* 00AE24 8000B274 3C01800B */  lui         $at, %hi(D_800B66EC)
/* 00AE28 8000B278 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AE2C 8000B27C AC2B66EC */  sw          $t3, %lo(D_800B66EC)($at)
/* 00AE30 8000B280 03E00008 */  jr          $ra
/* 00AE34 8000B284 AC2A66E8 */   sw         $t2, %lo(D_800B66E8)($at)

glabel func_8000B288 # 14
/* 00AE38 8000B288 3C0E8007 */  lui         $t6, %hi(D_800760A8)
/* 00AE3C 8000B28C 8DCE60A8 */  lw          $t6, %lo(D_800760A8)($t6)
/* 00AE40 8000B290 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AE44 8000B294 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AE48 8000B298 8DC20054 */  lw          $v0, 0x54($t6)
/* 00AE4C 8000B29C 24040005 */  addiu       $a0, $zero, 0x5
/* 00AE50 8000B2A0 8C4F01B8 */  lw          $t7, 0x1b8($v0)
/* 00AE54 8000B2A4 C5E40010 */  lwc1        $f4, 0x10($t7)
/* 00AE58 8000B2A8 4600218D */  trunc.w.s   $f6, $f4
/* 00AE5C 8000B2AC 44053000 */  mfc1        $a1, $f6
/* 00AE60 8000B2B0 0C00CB1C */  jal         func_80032C70
/* 00AE64 8000B2B4 00000000 */   nop
/* 00AE68 8000B2B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AE6C 8000B2BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AE70 8000B2C0 03E00008 */  jr          $ra
/* 00AE74 8000B2C4 00000000 */   nop

glabel func_8000B2C8 # 15
/* 00AE78 8000B2C8 3C01800B */  lui         $at, %hi(D_800AE504)
/* 00AE7C 8000B2CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00AE80 8000B2D0 AC24E504 */  sw          $a0, %lo(D_800AE504)($at)
/* 00AE84 8000B2D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AE88 8000B2D8 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00AE8C 8000B2DC 240E0001 */  addiu       $t6, $zero, 0x1
/* 00AE90 8000B2E0 0C002C3F */  jal         func_8000B0FC
/* 00AE94 8000B2E4 AC2E6770 */   sw         $t6, %lo(D_800B6770)($at)
/* 00AE98 8000B2E8 3C01800B */  lui         $at, %hi(D_800AE508)
/* 00AE9C 8000B2EC AC23E508 */  sw          $v1, %lo(D_800AE508)($at)
/* 00AEA0 8000B2F0 3C01800B */  lui         $at, %hi(D_800B66F8)
/* 00AEA4 8000B2F4 0C002C8F */  jal         func_8000B23C
/* 00AEA8 8000B2F8 AC2066F8 */   sw         $zero, %lo(D_800B66F8)($at)
/* 00AEAC 8000B2FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00AEB0 8000B300 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00AEB4 8000B304 03E00008 */  jr          $ra
/* 00AEB8 8000B308 00000000 */   nop

glabel func_8000B30C # 16
/* 00AEBC 8000B30C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00AEC0 8000B310 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00AEC4 8000B314 0C0024FF */  jal         func_800093FC
/* 00AEC8 8000B318 AFB00020 */   sw         $s0, 0x20($sp)
/* 00AECC 8000B31C 3C0E800B */  lui         $t6, %hi(D_800AE504)
/* 00AED0 8000B320 8DCEE504 */  lw          $t6, %lo(D_800AE504)($t6)
/* 00AED4 8000B324 2DC10013 */  sltiu       $at, $t6, 0x13
/* 00AED8 8000B328 102001A9 */  beqz        $at, L8000B9D0
/* 00AEDC 8000B32C 000E7080 */   sll        $t6, $t6, 2
/* 00AEE0 8000B330 3C01800A */  lui         $at, %hi(jtbl_800A0C0C)
/* 00AEE4 8000B334 002E0821 */  addu        $at, $at, $t6
/* 00AEE8 8000B338 8C2E0C0C */  lw          $t6, %lo(jtbl_800A0C0C)($at)
/* 00AEEC 8000B33C 01C00008 */  jr          $t6
/* 00AEF0 8000B340 00000000 */   nop
glabel L8000B344
/* 00AEF4 8000B344 3C0F800A */  lui         $t7, %hi(D_8009B580)
/* 00AEF8 8000B348 8DEFB580 */  lw          $t7, %lo(D_8009B580)($t7)
/* 00AEFC 8000B34C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00AF00 8000B350 00008025 */  move        $s0, $zero
/* 00AF04 8000B354 11E10007 */  beq         $t7, $at, .L8000B374
/* 00AF08 8000B358 00000000 */   nop
/* 00AF0C 8000B35C 0C00DABD */  jal         func_80036AF4
/* 00AF10 8000B360 00000000 */   nop
/* 00AF14 8000B364 0C002CB2 */  jal         func_8000B2C8
/* 00AF18 8000B368 2404000D */   addiu      $a0, $zero, 0xd
/* 00AF1C 8000B36C 10000198 */  b           L8000B9D0
/* 00AF20 8000B370 00000000 */   nop
.L8000B374:
/* 00AF24 8000B374 5E000004 */  bgtzl       $s0, .L8000B388
/* 00AF28 8000B378 26100001 */   addiu      $s0, $s0, 0x1
/* 00AF2C 8000B37C 0C0448D1 */  jal         func_80112344
/* 00AF30 8000B380 02002025 */   move       $a0, $s0
/* 00AF34 8000B384 26100001 */  addiu       $s0, $s0, 0x1
.L8000B388:
/* 00AF38 8000B388 24010003 */  addiu       $at, $zero, 0x3
/* 00AF3C 8000B38C 1601FFF9 */  bne         $s0, $at, .L8000B374
/* 00AF40 8000B390 00000000 */   nop
/* 00AF44 8000B394 3C02800B */  lui         $v0, %hi(D_800AE504)
/* 00AF48 8000B398 8C42E504 */  lw          $v0, %lo(D_800AE504)($v0)
/* 00AF4C 8000B39C 24010003 */  addiu       $at, $zero, 0x3
/* 00AF50 8000B3A0 10400003 */  beqz        $v0, .L8000B3B0
/* 00AF54 8000B3A4 00000000 */   nop
/* 00AF58 8000B3A8 14410189 */  bne         $v0, $at, L8000B9D0
/* 00AF5C 8000B3AC 00000000 */   nop
.L8000B3B0:
/* 00AF60 8000B3B0 0C044BC4 */  jal         func_80112F10
/* 00AF64 8000B3B4 00000000 */   nop
/* 00AF68 8000B3B8 0C0024D1 */  jal         func_80009344
/* 00AF6C 8000B3BC 00002025 */   move       $a0, $zero
/* 00AF70 8000B3C0 10000183 */  b           L8000B9D0
/* 00AF74 8000B3C4 00000000 */   nop
glabel L8000B3C8
/* 00AF78 8000B3C8 0C00D5F1 */  jal         func_800357C4
/* 00AF7C 8000B3CC 00000000 */   nop
/* 00AF80 8000B3D0 1000017F */  b           L8000B9D0
/* 00AF84 8000B3D4 00000000 */   nop
glabel L8000B3D8
/* 00AF88 8000B3D8 0C00A2E1 */  jal         func_80028B84
/* 00AF8C 8000B3DC 00000000 */   nop
/* 00AF90 8000B3E0 1000017B */  b           L8000B9D0
/* 00AF94 8000B3E4 00000000 */   nop
glabel L8000B3E8
/* 00AF98 8000B3E8 0C00A735 */  jal         func_80029CD4
/* 00AF9C 8000B3EC 00000000 */   nop
/* 00AFA0 8000B3F0 10000177 */  b           L8000B9D0
/* 00AFA4 8000B3F4 00000000 */   nop
glabel L8000B3F8
/* 00AFA8 8000B3F8 3C18800B */  lui         $t8, %hi(D_800B6770)
/* 00AFAC 8000B3FC 8F186770 */  lw          $t8, %lo(D_800B6770)($t8)
/* 00AFB0 8000B400 00002025 */  move        $a0, $zero
/* 00AFB4 8000B404 00002825 */  move        $a1, $zero
/* 00AFB8 8000B408 1300000C */  beqz        $t8, .L8000B43C
/* 00AFBC 8000B40C 3C01800B */   lui        $at, 0x800b
/* 00AFC0 8000B410 3C01800A */  lui         $at, %hi(D_800A0C58)
/* 00AFC4 8000B414 C4240C58 */  lwc1        $f4, %lo(D_800A0C58)($at)
/* 00AFC8 8000B418 00003025 */  move        $a2, $zero
/* 00AFCC 8000B41C 240700FF */  addiu       $a3, $zero, 0xff
/* 00AFD0 8000B420 0C00059E */  jal         func_80001678
/* 00AFD4 8000B424 E7A40010 */   swc1       $f4, 0x10($sp)
/* 00AFD8 8000B428 0C002CA2 */  jal         func_8000B288
/* 00AFDC 8000B42C 00000000 */   nop
/* 00AFE0 8000B430 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00AFE4 8000B434 10000009 */  b           .L8000B45C
/* 00AFE8 8000B438 AC206770 */   sw         $zero, %lo(D_800B6770)($at)
.L8000B43C:
/* 00AFEC 8000B43C 44803000 */  mtc1        $zero, $f6
/* 00AFF0 8000B440 C428BDCC */  lwc1        $f8, %lo(D_800ABDCC)($at)
/* 00AFF4 8000B444 46083032 */  c.eq.s      $f6, $f8
/* 00AFF8 8000B448 00000000 */  nop
/* 00AFFC 8000B44C 45000003 */  bc1f        .L8000B45C
/* 00B000 8000B450 00000000 */   nop
/* 00B004 8000B454 0C002C76 */  jal         func_8000B1D8
/* 00B008 8000B458 00002025 */   move       $a0, $zero
.L8000B45C:
/* 00B00C 8000B45C 0C0024D1 */  jal         func_80009344
/* 00B010 8000B460 00002025 */   move       $a0, $zero
/* 00B014 8000B464 1000015A */  b           L8000B9D0
/* 00B018 8000B468 00000000 */   nop
glabel L8000B46C
/* 00B01C 8000B46C 3C19800B */  lui         $t9, %hi(D_800B6770)
/* 00B020 8000B470 8F396770 */  lw          $t9, %lo(D_800B6770)($t9)
/* 00B024 8000B474 24080001 */  addiu       $t0, $zero, 0x1
/* 00B028 8000B478 00002025 */  move        $a0, $zero
/* 00B02C 8000B47C 1320000F */  beqz        $t9, .L8000B4BC
/* 00B030 8000B480 3C01800B */   lui        $at, 0x800b
/* 00B034 8000B484 3C01800F */  lui         $at, %hi(D_800F0B74)
/* 00B038 8000B488 AC280B74 */  sw          $t0, %lo(D_800F0B74)($at)
/* 00B03C 8000B48C 3C01800A */  lui         $at, %hi(D_800A0C5C)
/* 00B040 8000B490 C42A0C5C */  lwc1        $f10, %lo(D_800A0C5C)($at)
/* 00B044 8000B494 00002825 */  move        $a1, $zero
/* 00B048 8000B498 00003025 */  move        $a2, $zero
/* 00B04C 8000B49C 240700FF */  addiu       $a3, $zero, 0xff
/* 00B050 8000B4A0 0C00059E */  jal         func_80001678
/* 00B054 8000B4A4 E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00B058 8000B4A8 0C002CA2 */  jal         func_8000B288
/* 00B05C 8000B4AC 00000000 */   nop
/* 00B060 8000B4B0 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B064 8000B4B4 10000009 */  b           .L8000B4DC
/* 00B068 8000B4B8 AC206770 */   sw         $zero, %lo(D_800B6770)($at)
.L8000B4BC:
/* 00B06C 8000B4BC 44808000 */  mtc1        $zero, $f16
/* 00B070 8000B4C0 C432BDCC */  lwc1        $f18, %lo(D_800ABDCC)($at)
/* 00B074 8000B4C4 46128032 */  c.eq.s      $f16, $f18
/* 00B078 8000B4C8 00000000 */  nop
/* 00B07C 8000B4CC 45000003 */  bc1f        .L8000B4DC
/* 00B080 8000B4D0 00000000 */   nop
/* 00B084 8000B4D4 0C002CB2 */  jal         func_8000B2C8
/* 00B088 8000B4D8 24040005 */   addiu      $a0, $zero, 0x5
.L8000B4DC:
/* 00B08C 8000B4DC 0C0024D1 */  jal         func_80009344
/* 00B090 8000B4E0 00002025 */   move       $a0, $zero
/* 00B094 8000B4E4 1000013A */  b           L8000B9D0
/* 00B098 8000B4E8 00000000 */   nop
glabel L8000B4EC
/* 00B09C 8000B4EC 3C09800B */  lui         $t1, %hi(D_800B6770)
/* 00B0A0 8000B4F0 8D296770 */  lw          $t1, %lo(D_800B6770)($t1)
/* 00B0A4 8000B4F4 24040003 */  addiu       $a0, $zero, 0x3
/* 00B0A8 8000B4F8 3C01800B */  lui         $at, %hi(D_800ABDCC)
/* 00B0AC 8000B4FC 51200015 */  beql        $t1, $zero, .L8000B554
/* 00B0B0 8000B500 44803000 */   mtc1       $zero, $f6
/* 00B0B4 8000B504 3C01800A */  lui         $at, %hi(D_800A0C60)
/* 00B0B8 8000B508 8C260C60 */  lw          $a2, %lo(D_800A0C60)($at)
/* 00B0BC 8000B50C 0C007F04 */  jal         func_8001FC10
/* 00B0C0 8000B510 8C270C64 */   lw         $a3, %lo(D_800A0C64)($at)
/* 00B0C4 8000B514 3C01800A */  lui         $at, %hi(D_800A0C68)
/* 00B0C8 8000B518 C4240C68 */  lwc1        $f4, %lo(D_800A0C68)($at)
/* 00B0CC 8000B51C 00002025 */  move        $a0, $zero
/* 00B0D0 8000B520 00002825 */  move        $a1, $zero
/* 00B0D4 8000B524 00003025 */  move        $a2, $zero
/* 00B0D8 8000B528 240700FF */  addiu       $a3, $zero, 0xff
/* 00B0DC 8000B52C 0C00059E */  jal         func_80001678
/* 00B0E0 8000B530 E7A40010 */   swc1       $f4, 0x10($sp)
/* 00B0E4 8000B534 0C002CA2 */  jal         func_8000B288
/* 00B0E8 8000B538 00000000 */   nop
/* 00B0EC 8000B53C 0C001283 */  jal         func_80004A0C
/* 00B0F0 8000B540 00002025 */   move       $a0, $zero
/* 00B0F4 8000B544 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B0F8 8000B548 1000000D */  b           .L8000B580
/* 00B0FC 8000B54C AC206770 */   sw         $zero, %lo(D_800B6770)($at)
/* 00B100 8000B550 44803000 */  mtc1        $zero, $f6
.L8000B554:
/* 00B104 8000B554 C428BDCC */  lwc1        $f8, %lo(D_800ABDCC)($at)
/* 00B108 8000B558 24040003 */  addiu       $a0, $zero, 0x3
/* 00B10C 8000B55C 24060000 */  addiu       $a2, $zero, 0x0
/* 00B110 8000B560 46083032 */  c.eq.s      $f6, $f8
/* 00B114 8000B564 00000000 */  nop
/* 00B118 8000B568 45000005 */  bc1f        .L8000B580
/* 00B11C 8000B56C 00000000 */   nop
/* 00B120 8000B570 0C007F04 */  jal         func_8001FC10
/* 00B124 8000B574 24070000 */   addiu      $a3, $zero, 0x0
/* 00B128 8000B578 0C002CB2 */  jal         func_8000B2C8
/* 00B12C 8000B57C 24040008 */   addiu      $a0, $zero, 0x8
.L8000B580:
/* 00B130 8000B580 0C0024D1 */  jal         func_80009344
/* 00B134 8000B584 00002025 */   move       $a0, $zero
/* 00B138 8000B588 10000111 */  b           L8000B9D0
/* 00B13C 8000B58C 00000000 */   nop
glabel L8000B590
/* 00B140 8000B590 0C00DE3E */  jal         func_800378F8
/* 00B144 8000B594 00000000 */   nop
/* 00B148 8000B598 1040010D */  beqz        $v0, L8000B9D0
/* 00B14C 8000B59C 00000000 */   nop
/* 00B150 8000B5A0 0C002CB2 */  jal         func_8000B2C8
/* 00B154 8000B5A4 00002025 */   move       $a0, $zero
/* 00B158 8000B5A8 10000109 */  b           L8000B9D0
/* 00B15C 8000B5AC 00000000 */   nop
glabel L8000B5B0
/* 00B160 8000B5B0 3C0A800B */  lui         $t2, %hi(D_800B6770)
/* 00B164 8000B5B4 8D4A6770 */  lw          $t2, %lo(D_800B6770)($t2)
/* 00B168 8000B5B8 00002025 */  move        $a0, $zero
/* 00B16C 8000B5BC 00002825 */  move        $a1, $zero
/* 00B170 8000B5C0 1140000E */  beqz        $t2, .L8000B5FC
/* 00B174 8000B5C4 3C01800B */   lui        $at, 0x800b
/* 00B178 8000B5C8 3C01800A */  lui         $at, %hi(D_800A0C6C)
/* 00B17C 8000B5CC C42A0C6C */  lwc1        $f10, %lo(D_800A0C6C)($at)
/* 00B180 8000B5D0 00003025 */  move        $a2, $zero
/* 00B184 8000B5D4 2407001E */  addiu       $a3, $zero, 0x1e
/* 00B188 8000B5D8 0C00059E */  jal         func_80001678
/* 00B18C 8000B5DC E7AA0010 */   swc1       $f10, 0x10($sp)
/* 00B190 8000B5E0 0C002CA2 */  jal         func_8000B288
/* 00B194 8000B5E4 00000000 */   nop
/* 00B198 8000B5E8 0C001283 */  jal         func_80004A0C
/* 00B19C 8000B5EC 00002025 */   move       $a0, $zero
/* 00B1A0 8000B5F0 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B1A4 8000B5F4 10000009 */  b           .L8000B61C
/* 00B1A8 8000B5F8 AC206770 */   sw         $zero, %lo(D_800B6770)($at)
.L8000B5FC:
/* 00B1AC 8000B5FC 44808000 */  mtc1        $zero, $f16
/* 00B1B0 8000B600 C432BDCC */  lwc1        $f18, %lo(D_800ABDCC)($at)
/* 00B1B4 8000B604 46128032 */  c.eq.s      $f16, $f18
/* 00B1B8 8000B608 00000000 */  nop
/* 00B1BC 8000B60C 45000003 */  bc1f        .L8000B61C
/* 00B1C0 8000B610 00000000 */   nop
/* 00B1C4 8000B614 0C002CB2 */  jal         func_8000B2C8
/* 00B1C8 8000B618 2404000E */   addiu      $a0, $zero, 0xe
.L8000B61C:
/* 00B1CC 8000B61C 0C0024D1 */  jal         func_80009344
/* 00B1D0 8000B620 00002025 */   move       $a0, $zero
/* 00B1D4 8000B624 100000EA */  b           L8000B9D0
/* 00B1D8 8000B628 00000000 */   nop
glabel L8000B62C
/* 00B1DC 8000B62C 3C0B800B */  lui         $t3, %hi(D_800B6770)
/* 00B1E0 8000B630 8D6B6770 */  lw          $t3, %lo(D_800B6770)($t3)
/* 00B1E4 8000B634 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B1E8 8000B638 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B1EC 8000B63C 1160001C */  beqz        $t3, .L8000B6B0
/* 00B1F0 8000B640 3C0D800B */   lui        $t5, %hi(D_800AD544)
/* 00B1F4 8000B644 0C0049CC */  jal         func_80012730
/* 00B1F8 8000B648 24050005 */   addiu      $a1, $zero, 0x5
/* 00B1FC 8000B64C 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B200 8000B650 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B204 8000B654 0C004B3C */  jal         func_80012CF0
/* 00B208 8000B658 00002825 */   move       $a1, $zero
/* 00B20C 8000B65C 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B210 8000B660 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B214 8000B664 00002825 */  move        $a1, $zero
/* 00B218 8000B668 0C004B39 */  jal         func_80012CE4
/* 00B21C 8000B66C 24060064 */   addiu      $a2, $zero, 0x64
/* 00B220 8000B670 3C108006 */  lui         $s0, %hi(D_80063854)
/* 00B224 8000B674 26103854 */  addiu       $s0, $s0, %lo(D_80063854)
.L8000B678:
/* 00B228 8000B678 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B22C 8000B67C 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B230 8000B680 0C004B48 */  jal         func_80012D20
/* 00B234 8000B684 8E050000 */   lw         $a1, 0x0($s0)
/* 00B238 8000B688 3C0C8006 */  lui         $t4, %hi(D_80063868)
/* 00B23C 8000B68C 258C3868 */  addiu       $t4, $t4, %lo(D_80063868)
/* 00B240 8000B690 26100004 */  addiu       $s0, $s0, 0x4
/* 00B244 8000B694 160CFFF8 */  bne         $s0, $t4, .L8000B678
/* 00B248 8000B698 00000000 */   nop
/* 00B24C 8000B69C 0C002C49 */  jal         func_8000B124
/* 00B250 8000B6A0 00000000 */   nop
/* 00B254 8000B6A4 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B258 8000B6A8 1000000C */  b           .L8000B6DC
/* 00B25C 8000B6AC AC206770 */   sw         $zero, %lo(D_800B6770)($at)
.L8000B6B0:
/* 00B260 8000B6B0 8DADD544 */  lw          $t5, %lo(D_800AD544)($t5)
/* 00B264 8000B6B4 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B268 8000B6B8 31AE8000 */  andi        $t6, $t5, 0x8000
/* 00B26C 8000B6BC 11C00007 */  beqz        $t6, .L8000B6DC
/* 00B270 8000B6C0 00000000 */   nop
/* 00B274 8000B6C4 0C004A0B */  jal         func_8001282C
/* 00B278 8000B6C8 24846778 */   addiu      $a0, $a0, %lo(D_800B6778)
/* 00B27C 8000B6CC 3C01800B */  lui         $at, %hi(D_800B678C)
/* 00B280 8000B6D0 AC20678C */  sw          $zero, %lo(D_800B678C)($at)
/* 00B284 8000B6D4 0C002CB2 */  jal         func_8000B2C8
/* 00B288 8000B6D8 24040010 */   addiu      $a0, $zero, 0x10
.L8000B6DC:
/* 00B28C 8000B6DC 0C0024D1 */  jal         func_80009344
/* 00B290 8000B6E0 00002025 */   move       $a0, $zero
/* 00B294 8000B6E4 100000BA */  b           L8000B9D0
/* 00B298 8000B6E8 00000000 */   nop
glabel L8000B6EC
/* 00B29C 8000B6EC 3C0F800B */  lui         $t7, %hi(D_800B6770)
/* 00B2A0 8000B6F0 8DEF6770 */  lw          $t7, %lo(D_800B6770)($t7)
/* 00B2A4 8000B6F4 3C02800B */  lui         $v0, %hi(D_800AE510)
/* 00B2A8 8000B6F8 11E00019 */  beqz        $t7, .L8000B760
/* 00B2AC 8000B6FC 00000000 */   nop
/* 00B2B0 8000B700 8C42E510 */  lw          $v0, %lo(D_800AE510)($v0)
/* 00B2B4 8000B704 24010001 */  addiu       $at, $zero, 0x1
/* 00B2B8 8000B708 10410005 */  beq         $v0, $at, .L8000B720
/* 00B2BC 8000B70C 24010002 */   addiu      $at, $zero, 0x2
/* 00B2C0 8000B710 10410009 */  beq         $v0, $at, .L8000B738
/* 00B2C4 8000B714 00000000 */   nop
/* 00B2C8 8000B718 1000000C */  b           .L8000B74C
/* 00B2CC 8000B71C 00000000 */   nop
.L8000B720:
/* 00B2D0 8000B720 3C02800A */  lui         $v0, %hi(D_8009A6F0)
/* 00B2D4 8000B724 2442A6F0 */  addiu       $v0, $v0, %lo(D_8009A6F0)
/* 00B2D8 8000B728 90580000 */  lbu         $t8, 0x0($v0)
/* 00B2DC 8000B72C 37190001 */  ori         $t9, $t8, 0x1
/* 00B2E0 8000B730 10000006 */  b           .L8000B74C
/* 00B2E4 8000B734 A0590000 */   sb         $t9, 0x0($v0)
.L8000B738:
/* 00B2E8 8000B738 3C02800A */  lui         $v0, %hi(D_8009A6F0)
/* 00B2EC 8000B73C 2442A6F0 */  addiu       $v0, $v0, %lo(D_8009A6F0)
/* 00B2F0 8000B740 90480000 */  lbu         $t0, 0x0($v0)
/* 00B2F4 8000B744 35090002 */  ori         $t1, $t0, 0x2
/* 00B2F8 8000B748 A0490000 */  sb          $t1, 0x0($v0)
.L8000B74C:
/* 00B2FC 8000B74C 0C00CB35 */  jal         func_80032CD4
/* 00B300 8000B750 00000000 */   nop
/* 00B304 8000B754 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B308 8000B758 10000007 */  b           .L8000B778
/* 00B30C 8000B75C AC206770 */   sw         $zero, %lo(D_800B6770)($at)
.L8000B760:
/* 00B310 8000B760 0C001120 */  jal         func_80004480
/* 00B314 8000B764 00000000 */   nop
/* 00B318 8000B768 10400003 */  beqz        $v0, .L8000B778
/* 00B31C 8000B76C 00000000 */   nop
/* 00B320 8000B770 0C002CB2 */  jal         func_8000B2C8
/* 00B324 8000B774 2404000F */   addiu      $a0, $zero, 0xf
.L8000B778:
/* 00B328 8000B778 0C0024D1 */  jal         func_80009344
/* 00B32C 8000B77C 00002025 */   move       $a0, $zero
/* 00B330 8000B780 10000093 */  b           L8000B9D0
/* 00B334 8000B784 00000000 */   nop
glabel L8000B788
/* 00B338 8000B788 3C0A800B */  lui         $t2, %hi(D_800B6770)
/* 00B33C 8000B78C 8D4A6770 */  lw          $t2, %lo(D_800B6770)($t2)
/* 00B340 8000B790 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 00B344 8000B794 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 00B348 8000B798 11400017 */  beqz        $t2, .L8000B7F8
/* 00B34C 8000B79C 00000000 */   nop
/* 00B350 8000B7A0 0C0446F9 */  jal         func_80111BE4
/* 00B354 8000B7A4 24050086 */   addiu      $a1, $zero, 0x86
/* 00B358 8000B7A8 3C04800B */  lui         $a0, %hi(D_800AE510)
/* 00B35C 8000B7AC 0C00CB51 */  jal         func_80032D44
/* 00B360 8000B7B0 8C84E510 */   lw         $a0, %lo(D_800AE510)($a0)
/* 00B364 8000B7B4 3C01800B */  lui         $at, %hi(D_800B6770)
/* 00B368 8000B7B8 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B36C 8000B7BC AC206770 */  sw          $zero, %lo(D_800B6770)($at)
/* 00B370 8000B7C0 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B374 8000B7C4 0C0049CC */  jal         func_80012730
/* 00B378 8000B7C8 24050005 */   addiu      $a1, $zero, 0x5
/* 00B37C 8000B7CC 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B380 8000B7D0 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B384 8000B7D4 0C004B3C */  jal         func_80012CF0
/* 00B388 8000B7D8 00002825 */   move       $a1, $zero
/* 00B38C 8000B7DC 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B390 8000B7E0 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B394 8000B7E4 00002825 */  move        $a1, $zero
/* 00B398 8000B7E8 0C004B39 */  jal         func_80012CE4
/* 00B39C 8000B7EC 24060064 */   addiu      $a2, $zero, 0x64
/* 00B3A0 8000B7F0 10000030 */  b           .L8000B8B4
/* 00B3A4 8000B7F4 00000000 */   nop
.L8000B7F8:
/* 00B3A8 8000B7F8 0C00113F */  jal         func_800044FC
/* 00B3AC 8000B7FC 00000000 */   nop
/* 00B3B0 8000B800 10400008 */  beqz        $v0, .L8000B824
/* 00B3B4 8000B804 3C108006 */   lui        $s0, %hi(D_80063868)
/* 00B3B8 8000B808 24010002 */  addiu       $at, $zero, 0x2
/* 00B3BC 8000B80C 10410029 */  beq         $v0, $at, .L8000B8B4
/* 00B3C0 8000B810 24010005 */   addiu      $at, $zero, 0x5
/* 00B3C4 8000B814 10410016 */  beq         $v0, $at, .L8000B870
/* 00B3C8 8000B818 3C108006 */   lui        $s0, %hi(D_80063878)
/* 00B3CC 8000B81C 10000025 */  b           .L8000B8B4
/* 00B3D0 8000B820 00000000 */   nop
.L8000B824:
/* 00B3D4 8000B824 26103868 */  addiu       $s0, $s0, %lo(D_80063868)
.L8000B828:
/* 00B3D8 8000B828 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B3DC 8000B82C 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B3E0 8000B830 0C004B48 */  jal         func_80012D20
/* 00B3E4 8000B834 8E050000 */   lw         $a1, 0x0($s0)
/* 00B3E8 8000B838 3C0B8006 */  lui         $t3, %hi(D_80063878)
/* 00B3EC 8000B83C 256B3878 */  addiu       $t3, $t3, %lo(D_80063878)
/* 00B3F0 8000B840 26100004 */  addiu       $s0, $s0, 0x4
/* 00B3F4 8000B844 160BFFF8 */  bne         $s0, $t3, .L8000B828
/* 00B3F8 8000B848 00000000 */   nop
/* 00B3FC 8000B84C 0C002C49 */  jal         func_8000B124
/* 00B400 8000B850 00000000 */   nop
/* 00B404 8000B854 340C8000 */  ori         $t4, $zero, 0x8000
/* 00B408 8000B858 3C01800B */  lui         $at, %hi(D_800B6798)
/* 00B40C 8000B85C A42C6798 */  sh          $t4, %lo(D_800B6798)($at)
/* 00B410 8000B860 0C002CB2 */  jal         func_8000B2C8
/* 00B414 8000B864 24040011 */   addiu      $a0, $zero, 0x11
/* 00B418 8000B868 10000012 */  b           .L8000B8B4
/* 00B41C 8000B86C 00000000 */   nop
.L8000B870:
/* 00B420 8000B870 26103878 */  addiu       $s0, $s0, %lo(D_80063878)
.L8000B874:
/* 00B424 8000B874 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B428 8000B878 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00B42C 8000B87C 0C004B48 */  jal         func_80012D20
/* 00B430 8000B880 8E050000 */   lw         $a1, 0x0($s0)
/* 00B434 8000B884 3C0D8006 */  lui         $t5, %hi(D_8006388C)
/* 00B438 8000B888 25AD388C */  addiu       $t5, $t5, %lo(D_8006388C)
/* 00B43C 8000B88C 26100004 */  addiu       $s0, $s0, 0x4
/* 00B440 8000B890 160DFFF8 */  bne         $s0, $t5, .L8000B874
/* 00B444 8000B894 00000000 */   nop
/* 00B448 8000B898 0C002C49 */  jal         func_8000B124
/* 00B44C 8000B89C 00000000 */   nop
/* 00B450 8000B8A0 240E1000 */  addiu       $t6, $zero, 0x1000
/* 00B454 8000B8A4 3C01800B */  lui         $at, %hi(D_800B6798)
/* 00B458 8000B8A8 A42E6798 */  sh          $t6, %lo(D_800B6798)($at)
/* 00B45C 8000B8AC 0C002CB2 */  jal         func_8000B2C8
/* 00B460 8000B8B0 24040011 */   addiu      $a0, $zero, 0x11
.L8000B8B4:
/* 00B464 8000B8B4 0C0024D1 */  jal         func_80009344
/* 00B468 8000B8B8 00002025 */   move       $a0, $zero
/* 00B46C 8000B8BC 10000044 */  b           L8000B9D0
/* 00B470 8000B8C0 00000000 */   nop
glabel L8000B8C4
/* 00B474 8000B8C4 3C0F800B */  lui         $t7, %hi(D_800AD544)
/* 00B478 8000B8C8 3C18800B */  lui         $t8, %hi(D_800B6798)
/* 00B47C 8000B8CC 97186798 */  lhu         $t8, %lo(D_800B6798)($t8)
/* 00B480 8000B8D0 8DEFD544 */  lw          $t7, %lo(D_800AD544)($t7)
/* 00B484 8000B8D4 24040003 */  addiu       $a0, $zero, 0x3
/* 00B488 8000B8D8 3C01800A */  lui         $at, %hi(D_800A0C70)
/* 00B48C 8000B8DC 01F8C824 */  and         $t9, $t7, $t8
/* 00B490 8000B8E0 13200025 */  beqz        $t9, .L8000B978
/* 00B494 8000B8E4 00000000 */   nop
/* 00B498 8000B8E8 8C260C70 */  lw          $a2, %lo(D_800A0C70)($at)
/* 00B49C 8000B8EC 0C007F04 */  jal         func_8001FC10
/* 00B4A0 8000B8F0 8C270C74 */   lw         $a3, %lo(D_800A0C74)($at)
/* 00B4A4 8000B8F4 44802000 */  mtc1        $zero, $f4
/* 00B4A8 8000B8F8 00002025 */  move        $a0, $zero
/* 00B4AC 8000B8FC 00002825 */  move        $a1, $zero
/* 00B4B0 8000B900 00003025 */  move        $a2, $zero
/* 00B4B4 8000B904 240700FF */  addiu       $a3, $zero, 0xff
/* 00B4B8 8000B908 0C00059E */  jal         func_80001678
/* 00B4BC 8000B90C E7A40010 */   swc1       $f4, 0x10($sp)
/* 00B4C0 8000B910 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00B4C4 8000B914 0C004A0B */  jal         func_8001282C
/* 00B4C8 8000B918 24846778 */   addiu      $a0, $a0, %lo(D_800B6778)
/* 00B4CC 8000B91C 3C08800B */  lui         $t0, %hi(D_800AE50C)
/* 00B4D0 8000B920 8D08E50C */  lw          $t0, %lo(D_800AE50C)($t0)
/* 00B4D4 8000B924 3C01800B */  lui         $at, %hi(D_800B678C)
/* 00B4D8 8000B928 AC20678C */  sw          $zero, %lo(D_800B678C)($at)
/* 00B4DC 8000B92C 1100000E */  beqz        $t0, .L8000B968
/* 00B4E0 8000B930 00002025 */   move       $a0, $zero
/* 00B4E4 8000B934 24040016 */  addiu       $a0, $zero, 0x16
/* 00B4E8 8000B938 0C043966 */  jal         func_8010E598
/* 00B4EC 8000B93C 00002825 */   move       $a1, $zero
/* 00B4F0 8000B940 0C008538 */  jal         func_800214E0
/* 00B4F4 8000B944 00000000 */   nop
/* 00B4F8 8000B948 0C00AB41 */  jal         func_8002AD04
/* 00B4FC 8000B94C 00002025 */   move       $a0, $zero
/* 00B500 8000B950 0C002CB2 */  jal         func_8000B2C8
/* 00B504 8000B954 24040012 */   addiu      $a0, $zero, 0x12
/* 00B508 8000B958 0C002C76 */  jal         func_8000B1D8
/* 00B50C 8000B95C 00002025 */   move       $a0, $zero
/* 00B510 8000B960 10000005 */  b           .L8000B978
/* 00B514 8000B964 00000000 */   nop
.L8000B968:
/* 00B518 8000B968 0C043966 */  jal         func_8010E598
/* 00B51C 8000B96C 00002825 */   move       $a1, $zero
/* 00B520 8000B970 0C002C76 */  jal         func_8000B1D8
/* 00B524 8000B974 00002025 */   move       $a0, $zero
.L8000B978:
/* 00B528 8000B978 0C0024D1 */  jal         func_80009344
/* 00B52C 8000B97C 00002025 */   move       $a0, $zero
/* 00B530 8000B980 10000013 */  b           L8000B9D0
/* 00B534 8000B984 00000000 */   nop
glabel L8000B988
/* 00B538 8000B988 0C00C4E6 */  jal         func_80031398
/* 00B53C 8000B98C 00000000 */   nop
/* 00B540 8000B990 0C00C7B3 */  jal         func_80031ECC
/* 00B544 8000B994 00000000 */   nop
/* 00B548 8000B998 1000000D */  b           L8000B9D0
/* 00B54C 8000B99C 00000000 */   nop
glabel L8000B9A0
/* 00B550 8000B9A0 0C046836 */  jal         func_8011A0D8
/* 00B554 8000B9A4 00000000 */   nop
/* 00B558 8000B9A8 0C0469DE */  jal         func_8011A778
/* 00B55C 8000B9AC 00000000 */   nop
/* 00B560 8000B9B0 10000007 */  b           L8000B9D0
/* 00B564 8000B9B4 00000000 */   nop
glabel L8000B9B8
/* 00B568 8000B9B8 0C00B1A9 */  jal         func_8002C6A4
/* 00B56C 8000B9BC 00000000 */   nop
/* 00B570 8000B9C0 10000003 */  b           L8000B9D0
/* 00B574 8000B9C4 00000000 */   nop
glabel L8000B9C8
/* 00B578 8000B9C8 0C00B9B1 */  jal         func_8002E6C4
/* 00B57C 8000B9CC 00000000 */   nop
glabel L8000B9D0
/* 00B580 8000B9D0 3C09800B */  lui         $t1, %hi(D_800AD558)
/* 00B584 8000B9D4 2529D558 */  addiu       $t1, $t1, %lo(D_800AD558)
/* 00B588 8000B9D8 AFA90028 */  sw          $t1, 0x28($sp)
/* 00B58C 8000B9DC 24100001 */  addiu       $s0, $zero, 0x1
.L8000B9E0:
/* 00B590 8000B9E0 0C00856A */  jal         func_800215A8
/* 00B594 8000B9E4 02002025 */   move       $a0, $s0
/* 00B598 8000B9E8 0C002C8D */  jal         func_8000B234
/* 00B59C 8000B9EC 8FA40028 */   lw         $a0, 0x28($sp)
/* 00B5A0 8000B9F0 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00B5A4 8000B9F4 26100001 */  addiu       $s0, $s0, 0x1
/* 00B5A8 8000B9F8 24010003 */  addiu       $at, $zero, 0x3
/* 00B5AC 8000B9FC 254B0018 */  addiu       $t3, $t2, 0x18
/* 00B5B0 8000BA00 1601FFF7 */  bne         $s0, $at, .L8000B9E0
/* 00B5B4 8000BA04 AFAB0028 */   sw         $t3, 0x28($sp)
/* 00B5B8 8000BA08 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00B5BC 8000BA0C 8FB00020 */  lw          $s0, 0x20($sp)
/* 00B5C0 8000BA10 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00B5C4 8000BA14 03E00008 */  jr          $ra
/* 00B5C8 8000BA18 00000000 */   nop

glabel func_8000BA1C # 17
/* 00B5CC 8000BA1C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00B5D0 8000BA20 3C013F80 */  lui         $at, 0x3f80
/* 00B5D4 8000BA24 AFBF0034 */  sw          $ra, 0x34($sp)
/* 00B5D8 8000BA28 44816000 */  mtc1        $at, $f12
/* 00B5DC 8000BA2C AFB60030 */  sw          $s6, 0x30($sp)
/* 00B5E0 8000BA30 AFB5002C */  sw          $s5, 0x2c($sp)
/* 00B5E4 8000BA34 AFB40028 */  sw          $s4, 0x28($sp)
/* 00B5E8 8000BA38 AFB30024 */  sw          $s3, 0x24($sp)
/* 00B5EC 8000BA3C AFB20020 */  sw          $s2, 0x20($sp)
/* 00B5F0 8000BA40 AFB1001C */  sw          $s1, 0x1c($sp)
/* 00B5F4 8000BA44 AFB00018 */  sw          $s0, 0x18($sp)
/* 00B5F8 8000BA48 0C014DE4 */  jal         osViSetYScale
/* 00B5FC 8000BA4C AFA0003C */   sw         $zero, 0x3c($sp)
/* 00B600 8000BA50 0C001283 */  jal         func_80004A0C
/* 00B604 8000BA54 00002025 */   move       $a0, $zero
/* 00B608 8000BA58 0C007E77 */  jal         func_8001F9DC
/* 00B60C 8000BA5C 00000000 */   nop
/* 00B610 8000BA60 3C10800B */  lui         $s0, %hi(D_800B66F4)
/* 00B614 8000BA64 261066F4 */  addiu       $s0, $s0, %lo(D_800B66F4)
/* 00B618 8000BA68 8E0E0000 */  lw          $t6, 0x0($s0)
/* 00B61C 8000BA6C 24160004 */  addiu       $s6, $zero, 0x4
/* 00B620 8000BA70 24150003 */  addiu       $s5, $zero, 0x3
/* 00B624 8000BA74 11C0001B */  beqz        $t6, .L8000BAE4
/* 00B628 8000BA78 24140002 */   addiu      $s4, $zero, 0x2
/* 00B62C 8000BA7C 3C11800B */  lui         $s1, %hi(D_800AE4C0)
/* 00B630 8000BA80 2631E4C0 */  addiu       $s1, $s1, %lo(D_800AE4C0)
/* 00B634 8000BA84 24130001 */  addiu       $s3, $zero, 0x1
/* 00B638 8000BA88 27B2003C */  addiu       $s2, $sp, 0x3c
/* 00B63C 8000BA8C 02202025 */  move        $a0, $s1
.L8000BA90:
/* 00B640 8000BA90 02402825 */  move        $a1, $s2
/* 00B644 8000BA94 0C014554 */  jal         osRecvMesg
/* 00B648 8000BA98 02603025 */   move       $a2, $s3
/* 00B64C 8000BA9C 8FAF003C */  lw          $t7, 0x3c($sp)
/* 00B650 8000BAA0 85E30000 */  lh          $v1, 0x0($t7)
/* 00B654 8000BAA4 5073000D */  beql        $v1, $s3, .L8000BADC
/* 00B658 8000BAA8 8E080000 */   lw         $t0, 0x0($s0)
/* 00B65C 8000BAAC 50740008 */  beql        $v1, $s4, .L8000BAD0
/* 00B660 8000BAB0 8E180000 */   lw         $t8, 0x0($s0)
/* 00B664 8000BAB4 50750009 */  beql        $v1, $s5, .L8000BADC
/* 00B668 8000BAB8 8E080000 */   lw         $t0, 0x0($s0)
/* 00B66C 8000BABC 50760007 */  beql        $v1, $s6, .L8000BADC
/* 00B670 8000BAC0 8E080000 */   lw         $t0, 0x0($s0)
/* 00B674 8000BAC4 10000005 */  b           .L8000BADC
/* 00B678 8000BAC8 8E080000 */   lw         $t0, 0x0($s0)
/* 00B67C 8000BACC 8E180000 */  lw          $t8, 0x0($s0)
.L8000BAD0:
/* 00B680 8000BAD0 2719FFFF */  addiu       $t9, $t8, -0x1
/* 00B684 8000BAD4 AE190000 */  sw          $t9, 0x0($s0)
/* 00B688 8000BAD8 8E080000 */  lw          $t0, 0x0($s0)
.L8000BADC:
/* 00B68C 8000BADC 5500FFEC */  bnel        $t0, $zero, .L8000BA90
/* 00B690 8000BAE0 02202025 */   move       $a0, $s1
.L8000BAE4:
/* 00B694 8000BAE4 3C11800B */  lui         $s1, %hi(D_800AE4C0)
/* 00B698 8000BAE8 2631E4C0 */  addiu       $s1, $s1, %lo(D_800AE4C0)
/* 00B69C 8000BAEC 27B2003C */  addiu       $s2, $sp, 0x3c
.L8000BAF0:
/* 00B6A0 8000BAF0 0C014DF8 */  jal         func_800537E0
/* 00B6A4 8000BAF4 00000000 */   nop
/* 00B6A8 8000BAF8 10400006 */  beqz        $v0, .L8000BB14
/* 00B6AC 8000BAFC 02202025 */   move       $a0, $s1
/* 00B6B0 8000BB00 02402825 */  move        $a1, $s2
/* 00B6B4 8000BB04 0C014554 */  jal         osRecvMesg
/* 00B6B8 8000BB08 24060001 */   addiu      $a2, $zero, 0x1
/* 00B6BC 8000BB0C 1000FFF8 */  b           .L8000BAF0
/* 00B6C0 8000BB10 00000000 */   nop
.L8000BB14:
/* 00B6C4 8000BB14 1000FFFF */  b           .L8000BB14
/* 00B6C8 8000BB18 00000000 */   nop
/* 00B6CC 8000BB1C 00000000 */  nop
/* 00B6D0 8000BB20 8FBF0034 */  lw          $ra, 0x34($sp)
/* 00B6D4 8000BB24 8FB00018 */  lw          $s0, 0x18($sp)
/* 00B6D8 8000BB28 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00B6DC 8000BB2C 8FB20020 */  lw          $s2, 0x20($sp)
/* 00B6E0 8000BB30 8FB30024 */  lw          $s3, 0x24($sp)
/* 00B6E4 8000BB34 8FB40028 */  lw          $s4, 0x28($sp)
/* 00B6E8 8000BB38 8FB5002C */  lw          $s5, 0x2c($sp)
/* 00B6EC 8000BB3C 8FB60030 */  lw          $s6, 0x30($sp)
/* 00B6F0 8000BB40 03E00008 */  jr          $ra
/* 00B6F4 8000BB44 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000BB48 # 18
/* 00B6F8 8000BB48 3C0E8006 */  lui         $t6, %hi(D_80063850)
/* 00B6FC 8000BB4C 8DCE3850 */  lw          $t6, %lo(D_80063850)($t6)
/* 00B700 8000BB50 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00B704 8000BB54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00B708 8000BB58 AFA40018 */  sw          $a0, 0x18($sp)
/* 00B70C 8000BB5C 15C00007 */  bnez        $t6, .L8000BB7C
/* 00B710 8000BB60 AFA5001C */   sw         $a1, 0x1c($sp)
/* 00B714 8000BB64 0C01010B */  jal         func_8004042C
/* 00B718 8000BB68 00000000 */   nop
/* 00B71C 8000BB6C 50400004 */  beql        $v0, $zero, .L8000BB80
/* 00B720 8000BB70 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00B724 8000BB74 0C002E87 */  jal         func_8000BA1C
/* 00B728 8000BB78 00000000 */   nop
.L8000BB7C:
/* 00B72C 8000BB7C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000BB80:
/* 00B730 8000BB80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00B734 8000BB84 03E00008 */  jr          $ra
/* 00B738 8000BB88 00000000 */   nop

glabel func_8000BB8C # 19
/* 00B73C 8000BB8C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00B740 8000BB90 AFB30020 */  sw          $s3, 0x20($sp)
/* 00B744 8000BB94 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00B748 8000BB98 AFB00014 */  sw          $s0, 0x14($sp)
/* 00B74C 8000BB9C AFB10018 */  sw          $s1, 0x18($sp)
/* 00B750 8000BBA0 24020001 */  addiu       $v0, $zero, 0x1
/* 00B754 8000BBA4 3C10800B */  lui         $s0, %hi(D_800B66F4)
/* 00B758 8000BBA8 3C12800B */  lui         $s2, %hi(D_800B676C)
/* 00B75C 8000BBAC 3C13800B */  lui         $s3, %hi(D_800B66F8)
/* 00B760 8000BBB0 3C01800B */  lui         $at, %hi(D_800B679C)
/* 00B764 8000BBB4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00B768 8000BBB8 AC22679C */  sw          $v0, %lo(D_800B679C)($at)
/* 00B76C 8000BBBC 267366F8 */  addiu       $s3, $s3, %lo(D_800B66F8)
/* 00B770 8000BBC0 2652676C */  addiu       $s2, $s2, %lo(D_800B676C)
/* 00B774 8000BBC4 261066F4 */  addiu       $s0, $s0, %lo(D_800B66F4)
/* 00B778 8000BBC8 24110001 */  addiu       $s1, $zero, 0x1
.L8000BBCC:
/* 00B77C 8000BBCC 3C04800B */  lui         $a0, %hi(D_800AE4C0)
/* 00B780 8000BBD0 3C058006 */  lui         $a1, %hi(D_8006388C)
/* 00B784 8000BBD4 24A5388C */  addiu       $a1, $a1, %lo(D_8006388C)
/* 00B788 8000BBD8 2484E4C0 */  addiu       $a0, $a0, %lo(D_800AE4C0)
/* 00B78C 8000BBDC 0C014554 */  jal         osRecvMesg
/* 00B790 8000BBE0 02203025 */   move       $a2, $s1
/* 00B794 8000BBE4 3C0E8006 */  lui         $t6, %hi(D_8006388C)
/* 00B798 8000BBE8 8DCE388C */  lw          $t6, %lo(D_8006388C)($t6)
/* 00B79C 8000BBEC 24010002 */  addiu       $at, $zero, 0x2
/* 00B7A0 8000BBF0 85C20000 */  lh          $v0, 0x0($t6)
/* 00B7A4 8000BBF4 5051000A */  beql        $v0, $s1, .L8000BC20
/* 00B7A8 8000BBF8 8E0F0000 */   lw         $t7, 0x0($s0)
/* 00B7AC 8000BBFC 10410037 */  beq         $v0, $at, .L8000BCDC
/* 00B7B0 8000BC00 24010003 */   addiu      $at, $zero, 0x3
/* 00B7B4 8000BC04 1041004F */  beq         $v0, $at, .L8000BD44
/* 00B7B8 8000BC08 24010004 */   addiu      $at, $zero, 0x4
/* 00B7BC 8000BC0C 1041FFEF */  beq         $v0, $at, .L8000BBCC
/* 00B7C0 8000BC10 00000000 */   nop
/* 00B7C4 8000BC14 1000FFED */  b           .L8000BBCC
/* 00B7C8 8000BC18 00000000 */   nop
/* 00B7CC 8000BC1C 8E0F0000 */  lw          $t7, 0x0($s0)
.L8000BC20:
/* 00B7D0 8000BC20 15E0FFEA */  bnez        $t7, .L8000BBCC
/* 00B7D4 8000BC24 00000000 */   nop
/* 00B7D8 8000BC28 8E580000 */  lw          $t8, 0x0($s2)
/* 00B7DC 8000BC2C 5700004A */  bnel        $t8, $zero, .L8000BD58
/* 00B7E0 8000BC30 8FBF0024 */   lw         $ra, 0x24($sp)
/* 00B7E4 8000BC34 0C002BC2 */  jal         func_8000AF08
/* 00B7E8 8000BC38 00000000 */   nop
/* 00B7EC 8000BC3C 0C0012F0 */  jal         func_80004BC0
/* 00B7F0 8000BC40 00000000 */   nop
/* 00B7F4 8000BC44 0C0049AD */  jal         func_800126B4
/* 00B7F8 8000BC48 00000000 */   nop
/* 00B7FC 8000BC4C 8E790000 */  lw          $t9, 0x0($s3)
/* 00B800 8000BC50 3C01800B */  lui         $at, %hi(D_800B67A0)
/* 00B804 8000BC54 17200003 */  bnez        $t9, .L8000BC64
/* 00B808 8000BC58 00000000 */   nop
/* 00B80C 8000BC5C 10000005 */  b           .L8000BC74
/* 00B810 8000BC60 AC2067A0 */   sw         $zero, %lo(D_800B67A0)($at)
.L8000BC64:
/* 00B814 8000BC64 0C000816 */  jal         func_80002058
/* 00B818 8000BC68 00000000 */   nop
/* 00B81C 8000BC6C 3C01800B */  lui         $at, %hi(D_800B67A0)
/* 00B820 8000BC70 AC3167A0 */  sw          $s1, %lo(D_800B67A0)($at)
.L8000BC74:
/* 00B824 8000BC74 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 00B828 8000BC78 0C00FEDB */  jal         func_8003FB6C
/* 00B82C 8000BC7C 24846930 */   addiu      $a0, $a0, %lo(D_800B6930)
/* 00B830 8000BC80 AE710000 */  sw          $s1, 0x0($s3)
/* 00B834 8000BC84 3C08800B */  lui         $t0, %hi(D_800AE4F0)
/* 00B838 8000BC88 8D08E4F0 */  lw          $t0, %lo(D_800AE4F0)($t0)
/* 00B83C 8000BC8C 3C028006 */  lui         $v0, %hi(D_80063820)
/* 00B840 8000BC90 00084900 */  sll         $t1, $t0, 4
/* 00B844 8000BC94 00491021 */  addu        $v0, $v0, $t1
/* 00B848 8000BC98 8C423820 */  lw          $v0, %lo(D_80063820)($v0)
/* 00B84C 8000BC9C 10400003 */  beqz        $v0, .L8000BCAC
/* 00B850 8000BCA0 00000000 */   nop
/* 00B854 8000BCA4 0040F809 */  jalr        $v0
/* 00B858 8000BCA8 00000000 */   nop
.L8000BCAC:
/* 00B85C 8000BCAC 0C044AD2 */  jal         func_80112B48
/* 00B860 8000BCB0 00000000 */   nop
/* 00B864 8000BCB4 3C0A800B */  lui         $t2, %hi(D_800B67A0)
/* 00B868 8000BCB8 8D4A67A0 */  lw          $t2, %lo(D_800B67A0)($t2)
/* 00B86C 8000BCBC 1140FFC3 */  beqz        $t2, .L8000BBCC
/* 00B870 8000BCC0 00000000 */   nop
/* 00B874 8000BCC4 0C0008E1 */  jal         func_80002384
/* 00B878 8000BCC8 00000000 */   nop
/* 00B87C 8000BCCC 8E0B0000 */  lw          $t3, 0x0($s0)
/* 00B880 8000BCD0 256C0001 */  addiu       $t4, $t3, 0x1
/* 00B884 8000BCD4 1000FFBD */  b           .L8000BBCC
/* 00B888 8000BCD8 AE0C0000 */   sw         $t4, 0x0($s0)
.L8000BCDC:
/* 00B88C 8000BCDC 8E0D0000 */  lw          $t5, 0x0($s0)
/* 00B890 8000BCE0 3C02800B */  lui         $v0, %hi(D_800B679C)
/* 00B894 8000BCE4 8C42679C */  lw          $v0, %lo(D_800B679C)($v0)
/* 00B898 8000BCE8 25AEFFFF */  addiu       $t6, $t5, -0x1
/* 00B89C 8000BCEC AE0E0000 */  sw          $t6, 0x0($s0)
/* 00B8A0 8000BCF0 1040000C */  beqz        $v0, .L8000BD24
/* 00B8A4 8000BCF4 2C410004 */   sltiu      $at, $v0, 0x4
/* 00B8A8 8000BCF8 10200005 */  beqz        $at, .L8000BD10
/* 00B8AC 8000BCFC 00002025 */   move       $a0, $zero
/* 00B8B0 8000BD00 24420001 */  addiu       $v0, $v0, 0x1
/* 00B8B4 8000BD04 3C01800B */  lui         $at, %hi(D_800B679C)
/* 00B8B8 8000BD08 10000006 */  b           .L8000BD24
/* 00B8BC 8000BD0C AC22679C */   sw         $v0, %lo(D_800B679C)($at)
.L8000BD10:
/* 00B8C0 8000BD10 3C01800B */  lui         $at, %hi(D_800B679C)
/* 00B8C4 8000BD14 0C014D70 */  jal         osViBlack
/* 00B8C8 8000BD18 AC22679C */   sw         $v0, %lo(D_800B679C)($at)
/* 00B8CC 8000BD1C 3C01800B */  lui         $at, %hi(D_800B679C)
/* 00B8D0 8000BD20 AC20679C */  sw          $zero, %lo(D_800B679C)($at)
.L8000BD24:
/* 00B8D4 8000BD24 8E4F0000 */  lw          $t7, 0x0($s2)
/* 00B8D8 8000BD28 11E0FFA8 */  beqz        $t7, .L8000BBCC
/* 00B8DC 8000BD2C 00000000 */   nop
/* 00B8E0 8000BD30 8E180000 */  lw          $t8, 0x0($s0)
/* 00B8E4 8000BD34 1700FFA5 */  bnez        $t8, .L8000BBCC
/* 00B8E8 8000BD38 00000000 */   nop
/* 00B8EC 8000BD3C 10000006 */  b           .L8000BD58
/* 00B8F0 8000BD40 8FBF0024 */   lw         $ra, 0x24($sp)
.L8000BD44:
/* 00B8F4 8000BD44 0C002E87 */  jal         func_8000BA1C
/* 00B8F8 8000BD48 00000000 */   nop
/* 00B8FC 8000BD4C 1000FF9F */  b           .L8000BBCC
/* 00B900 8000BD50 00000000 */   nop
/* 00B904 8000BD54 8FBF0024 */  lw          $ra, 0x24($sp)
.L8000BD58:
/* 00B908 8000BD58 8FB00014 */  lw          $s0, 0x14($sp)
/* 00B90C 8000BD5C 8FB10018 */  lw          $s1, 0x18($sp)
/* 00B910 8000BD60 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00B914 8000BD64 8FB30020 */  lw          $s3, 0x20($sp)
/* 00B918 8000BD68 03E00008 */  jr          $ra
/* 00B91C 8000BD6C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8000BD70 # 20
/* 00B920 8000BD70 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00B924 8000BD74 AFBF0044 */  sw          $ra, 0x44($sp)
/* 00B928 8000BD78 AFB00034 */  sw          $s0, 0x34($sp)
/* 00B92C 8000BD7C 00808025 */  move        $s0, $a0
/* 00B930 8000BD80 AFB30040 */  sw          $s3, 0x40($sp)
/* 00B934 8000BD84 AFB2003C */  sw          $s2, 0x3c($sp)
/* 00B938 8000BD88 AFB10038 */  sw          $s1, 0x38($sp)
/* 00B93C 8000BD8C 0C0029EA */  jal         func_8000A7A8
/* 00B940 8000BD90 F7B40028 */   sdc1       $f20, 0x28($sp)
/* 00B944 8000BD94 3C11800B */  lui         $s1, %hi(D_800AE4C0)
/* 00B948 8000BD98 2631E4C0 */  addiu       $s1, $s1, %lo(D_800AE4C0)
/* 00B94C 8000BD9C 3C05800B */  lui         $a1, %hi(D_800AE518)
/* 00B950 8000BDA0 24A5E518 */  addiu       $a1, $a1, %lo(D_800AE518)
/* 00B954 8000BDA4 02202025 */  move        $a0, $s1
/* 00B958 8000BDA8 0C0145B8 */  jal         osCreateMesgQueue
/* 00B95C 8000BDAC 24060008 */   addiu      $a2, $zero, 0x8
/* 00B960 8000BDB0 3C05800B */  lui         $a1, %hi(D_800AE4D8)
/* 00B964 8000BDB4 24A5E4D8 */  addiu       $a1, $a1, %lo(D_800AE4D8)
/* 00B968 8000BDB8 02002025 */  move        $a0, $s0
/* 00B96C 8000BDBC 0C00FFCF */  jal         func_8003FF3C
/* 00B970 8000BDC0 02203025 */   move       $a2, $s1
/* 00B974 8000BDC4 0C00FF8F */  jal         func_8003FE3C
/* 00B978 8000BDC8 02002025 */   move       $a0, $s0
/* 00B97C 8000BDCC 3C01800B */  lui         $at, %hi(D_800AE4E0)
/* 00B980 8000BDD0 3C138006 */  lui         $s3, %hi(D_80063850)
/* 00B984 8000BDD4 3C12803E */  lui         $s2, %hi(D_803DA800)
/* 00B988 8000BDD8 3C11800F */  lui         $s1, %hi(D_800F2960)
/* 00B98C 8000BDDC 3C10800B */  lui         $s0, %hi(D_800AE4F0)
/* 00B990 8000BDE0 4480A800 */  mtc1        $zero, $f21
/* 00B994 8000BDE4 4480A000 */  mtc1        $zero, $f20
/* 00B998 8000BDE8 AC22E4E0 */  sw          $v0, %lo(D_800AE4E0)($at)
/* 00B99C 8000BDEC 2610E4F0 */  addiu       $s0, $s0, %lo(D_800AE4F0)
/* 00B9A0 8000BDF0 26312960 */  addiu       $s1, $s1, %lo(D_800F2960)
/* 00B9A4 8000BDF4 2652A800 */  addiu       $s2, $s2, %lo(D_803DA800)
/* 00B9A8 8000BDF8 26733850 */  addiu       $s3, $s3, %lo(D_80063850)
.L8000BDFC:
/* 00B9AC 8000BDFC 8E0E0000 */  lw          $t6, 0x0($s0)
/* 00B9B0 8000BE00 3C04800A */  lui         $a0, %hi(D_800A0B48)
/* 00B9B4 8000BE04 24840B48 */  addiu       $a0, $a0, %lo(D_800A0B48)
/* 00B9B8 8000BE08 15C0002E */  bnez        $t6, .L8000BEC4
/* 00B9BC 8000BE0C 00000000 */   nop
/* 00B9C0 8000BE10 0C002ED2 */  jal         func_8000BB48
/* 00B9C4 8000BE14 00002825 */   move       $a1, $zero
/* 00B9C8 8000BE18 3C0F8012 */  lui         $t7, %hi(D_80123430)
/* 00B9CC 8000BE1C 3C188012 */  lui         $t8, %hi(D_80123430)
/* 00B9D0 8000BE20 3C198013 */  lui         $t9, %hi(D_80133DE0)
/* 00B9D4 8000BE24 3C088013 */  lui         $t0, %hi(D_80133DE0)
/* 00B9D8 8000BE28 3C098013 */  lui         $t1, %hi(D_80134270)
/* 00B9DC 8000BE2C 25294270 */  addiu       $t1, $t1, %lo(D_80134270)
/* 00B9E0 8000BE30 25083DE0 */  addiu       $t0, $t0, %lo(D_80133DE0)
/* 00B9E4 8000BE34 27393DE0 */  addiu       $t9, $t9, %lo(D_80133DE0)
/* 00B9E8 8000BE38 27183430 */  addiu       $t8, $t8, %lo(D_80123430)
/* 00B9EC 8000BE3C 25EF3430 */  addiu       $t7, $t7, %lo(D_80123430)
/* 00B9F0 8000BE40 3C04000B */  lui         $a0, 0xb
/* 00B9F4 8000BE44 3C05000E */  lui         $a1, 0xe
/* 00B9F8 8000BE48 3C068011 */  lui         $a2, %hi(func_8010AAF0)
/* 00B9FC 8000BE4C 3C078011 */  lui         $a3, %hi(func_8010AAF0)
/* 00BA00 8000BE50 24E7AAF0 */  addiu       $a3, $a3, %lo(func_8010AAF0)
/* 00BA04 8000BE54 24C6AAF0 */  addiu       $a2, $a2, %lo(func_8010AAF0)
/* 00BA08 8000BE58 24A5CF60 */  addiu       $a1, $a1, -0x30a0
/* 00BA0C 8000BE5C 24843C70 */  addiu       $a0, $a0, 0x3c70
/* 00BA10 8000BE60 AFAF0010 */  sw          $t7, 0x10($sp)
/* 00BA14 8000BE64 AFB80014 */  sw          $t8, 0x14($sp)
/* 00BA18 8000BE68 AFB90018 */  sw          $t9, 0x18($sp)
/* 00BA1C 8000BE6C AFA8001C */  sw          $t0, 0x1c($sp)
/* 00BA20 8000BE70 0C004D70 */  jal         func_800135C0_LoadOverlay
/* 00BA24 8000BE74 AFA90020 */   sw         $t1, 0x20($sp)
/* 00BA28 8000BE78 3C04800A */  lui         $a0, %hi(D_800A0B54)
/* 00BA2C 8000BE7C 24840B54 */  addiu       $a0, $a0, %lo(D_800A0B54)
/* 00BA30 8000BE80 0C002ED2 */  jal         func_8000BB48
/* 00BA34 8000BE84 24050001 */   addiu      $a1, $zero, 0x1
/* 00BA38 8000BE88 0C043994 */  jal         func_8010E650
/* 00BA3C 8000BE8C 00000000 */   nop
/* 00BA40 8000BE90 0C00DFE2 */  jal         func_80037F88
/* 00BA44 8000BE94 00402025 */   move       $a0, $v0
/* 00BA48 8000BE98 3C04800A */  lui         $a0, %hi(D_800A0B64)
/* 00BA4C 8000BE9C 24840B64 */  addiu       $a0, $a0, %lo(D_800A0B64)
/* 00BA50 8000BEA0 0C002ED2 */  jal         func_8000BB48
/* 00BA54 8000BEA4 00002825 */   move       $a1, $zero
/* 00BA58 8000BEA8 24040140 */  addiu       $a0, $zero, 0x140
/* 00BA5C 8000BEAC 240500F0 */  addiu       $a1, $zero, 0xf0
/* 00BA60 8000BEB0 0C00F34C */  jal         func_8003CD30
/* 00BA64 8000BEB4 240600DA */   addiu      $a2, $zero, 0xda
/* 00BA68 8000BEB8 3C048006 */  lui         $a0, %hi(D_80063800)
/* 00BA6C 8000BEBC 0C00F560 */  jal         func_8003D580
/* 00BA70 8000BEC0 24843800 */   addiu      $a0, $a0, %lo(D_80063800)
.L8000BEC4:
/* 00BA74 8000BEC4 3C0400B1 */  lui         $a0, 0xb1
/* 00BA78 8000BEC8 0C008C9F */  jal         func_8002327C
/* 00BA7C 8000BECC 248440C0 */   addiu      $a0, $a0, 0x40c0
/* 00BA80 8000BED0 3C05800A */  lui         $a1, %hi(D_800A0B94)
/* 00BA84 8000BED4 24A50B94 */  addiu       $a1, $a1, %lo(D_800A0B94)
/* 00BA88 8000BED8 0C00E1A4 */  jal         func_80038690
/* 00BA8C 8000BEDC 02202025 */   move       $a0, $s1
/* 00BA90 8000BEE0 0C000146 */  jal         func_80000518
/* 00BA94 8000BEE4 00000000 */   nop
/* 00BA98 8000BEE8 3C05800A */  lui         $a1, %hi(D_800A0BAC)
/* 00BA9C 8000BEEC 24A50BAC */  addiu       $a1, $a1, %lo(D_800A0BAC)
/* 00BAA0 8000BEF0 0C00E1A4 */  jal         func_80038690
/* 00BAA4 8000BEF4 02202025 */   move       $a0, $s1
/* 00BAA8 8000BEF8 3C04800A */  lui         $a0, %hi(D_800A0BBC)
/* 00BAAC 8000BEFC 24840BBC */  addiu       $a0, $a0, %lo(D_800A0BBC)
/* 00BAB0 8000BF00 0C002ED2 */  jal         func_8000BB48
/* 00BAB4 8000BF04 24050001 */   addiu      $a1, $zero, 0x1
/* 00BAB8 8000BF08 0C009E3D */  jal         func_800278F4
/* 00BABC 8000BF0C 00000000 */   nop
/* 00BAC0 8000BF10 0C0077F5 */  jal         func_8001DFD4
/* 00BAC4 8000BF14 00000000 */   nop
/* 00BAC8 8000BF18 0C005C74 */  jal         func_800171D0
/* 00BACC 8000BF1C 00000000 */   nop
/* 00BAD0 8000BF20 0C003050 */  jal         func_8000C140
/* 00BAD4 8000BF24 00000000 */   nop
/* 00BAD8 8000BF28 0C003C03 */  jal         func_8000F00C
/* 00BADC 8000BF2C 00000000 */   nop
/* 00BAE0 8000BF30 0C009AAB */  jal         func_80026AAC
/* 00BAE4 8000BF34 00000000 */   nop
/* 00BAE8 8000BF38 3C04800A */  lui         $a0, %hi(D_800A0BC8)
/* 00BAEC 8000BF3C 24840BC8 */  addiu       $a0, $a0, %lo(D_800A0BC8)
/* 00BAF0 8000BF40 0C002ED2 */  jal         func_8000BB48
/* 00BAF4 8000BF44 24050001 */   addiu      $a1, $zero, 0x1
/* 00BAF8 8000BF48 3C04800B */  lui         $a0, %hi(D_800AE4E0)
/* 00BAFC 8000BF4C 3C05803B */  lui         $a1, %hi(D_803B5000)
/* 00BB00 8000BF50 240A1000 */  addiu       $t2, $zero, 0x1000
/* 00BB04 8000BF54 AFAA0010 */  sw          $t2, 0x10($sp)
/* 00BB08 8000BF58 24A55000 */  addiu       $a1, $a1, %lo(D_803B5000)
/* 00BB0C 8000BF5C 8C84E4E0 */  lw          $a0, %lo(D_800AE4E0)($a0)
/* 00BB10 8000BF60 02403025 */  move        $a2, $s2
/* 00BB14 8000BF64 0C00F140 */  jal         func_8003C500
/* 00BB18 8000BF68 2407000C */   addiu      $a3, $zero, 0xc
/* 00BB1C 8000BF6C 0C002B01 */  jal         func_8000AC04
/* 00BB20 8000BF70 00000000 */   nop
/* 00BB24 8000BF74 00002025 */  move        $a0, $zero
/* 00BB28 8000BF78 0C001F72 */  jal         func_80007DC8
/* 00BB2C 8000BF7C 2405000A */   addiu      $a1, $zero, 0xa
/* 00BB30 8000BF80 240400B3 */  addiu       $a0, $zero, 0xb3
/* 00BB34 8000BF84 0C001F72 */  jal         func_80007DC8
/* 00BB38 8000BF88 2405000A */   addiu      $a1, $zero, 0xa
/* 00BB3C 8000BF8C 8E0B0000 */  lw          $t3, 0x0($s0)
/* 00BB40 8000BF90 15600003 */  bnez        $t3, .L8000BFA0
/* 00BB44 8000BF94 00000000 */   nop
/* 00BB48 8000BF98 0C008568 */  jal         func_800215A0
/* 00BB4C 8000BF9C 00000000 */   nop
.L8000BFA0:
/* 00BB50 8000BFA0 0C002B2E */  jal         func_8000ACB8
/* 00BB54 8000BFA4 00000000 */   nop
/* 00BB58 8000BFA8 240C0001 */  addiu       $t4, $zero, 0x1
/* 00BB5C 8000BFAC 0C002EE3 */  jal         func_8000BB8C
/* 00BB60 8000BFB0 AE6C0000 */   sw         $t4, 0x0($s3)
/* 00BB64 8000BFB4 0C00305D */  jal         func_8000C174
/* 00BB68 8000BFB8 AE600000 */   sw         $zero, 0x0($s3)
/* 00BB6C 8000BFBC 0C005C81 */  jal         func_80017204
/* 00BB70 8000BFC0 00000000 */   nop
/* 00BB74 8000BFC4 0C00780A */  jal         func_8001E028
/* 00BB78 8000BFC8 00000000 */   nop
/* 00BB7C 8000BFCC 0C009E49 */  jal         func_80027924
/* 00BB80 8000BFD0 00000000 */   nop
/* 00BB84 8000BFD4 4406A800 */  mfc1        $a2, $f21
/* 00BB88 8000BFD8 4407A000 */  mfc1        $a3, $f20
/* 00BB8C 8000BFDC 0C007F04 */  jal         func_8001FC10
/* 00BB90 8000BFE0 24040001 */   addiu      $a0, $zero, 0x1
/* 00BB94 8000BFE4 0C014E00 */  jal         func_80053800
/* 00BB98 8000BFE8 02402025 */   move       $a0, $s2
/* 00BB9C 8000BFEC 0C014D70 */  jal         osViBlack
/* 00BBA0 8000BFF0 24040001 */   addiu      $a0, $zero, 0x1
/* 00BBA4 8000BFF4 3C0D800B */  lui         $t5, %hi(D_800B66F0)
/* 00BBA8 8000BFF8 8DAD66F0 */  lw          $t5, %lo(D_800B66F0)($t5)
/* 00BBAC 8000BFFC 1000FF7F */  b           .L8000BDFC
/* 00BBB0 8000C000 AE0D0000 */   sw         $t5, 0x0($s0)
/* 00BBB4 8000C004 00000000 */  nop
/* 00BBB8 8000C008 00000000 */  nop
/* 00BBBC 8000C00C 00000000 */  nop
/* 00BBC0 8000C010 00000000 */  nop
/* 00BBC4 8000C014 00000000 */  nop
/* 00BBC8 8000C018 00000000 */  nop
/* 00BBCC 8000C01C 00000000 */  nop
/* 00BBD0 8000C020 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00BBD4 8000C024 D7B40028 */  ldc1        $f20, 0x28($sp)
/* 00BBD8 8000C028 8FB00034 */  lw          $s0, 0x34($sp)
/* 00BBDC 8000C02C 8FB10038 */  lw          $s1, 0x38($sp)
/* 00BBE0 8000C030 8FB2003C */  lw          $s2, 0x3c($sp)
/* 00BBE4 8000C034 8FB30040 */  lw          $s3, 0x40($sp)
/* 00BBE8 8000C038 03E00008 */  jr          $ra
/* 00BBEC 8000C03C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8000C040 # 21
/* 00BBF0 8000C040 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00BBF4 8000C044 00803825 */  move        $a3, $a0
/* 00BBF8 8000C048 3C0E800B */  lui         $t6, %hi(D_800B6538)
/* 00BBFC 8000C04C AFBF001C */  sw          $ra, 0x1c($sp)
/* 00BC00 8000C050 25CE6538 */  addiu       $t6, $t6, %lo(D_800B6538)
/* 00BC04 8000C054 3C04800B */  lui         $a0, %hi(D_800B6538)
/* 00BC08 8000C058 3C068001 */  lui         $a2, %hi(func_8000BD70)
/* 00BC0C 8000C05C 240F000A */  addiu       $t7, $zero, 0xa
/* 00BC10 8000C060 AFAF0014 */  sw          $t7, 0x14($sp)
/* 00BC14 8000C064 24C6BD70 */  addiu       $a2, $a2, %lo(func_8000BD70)
/* 00BC18 8000C068 24846538 */  addiu       $a0, $a0, %lo(D_800B6538)
/* 00BC1C 8000C06C AFAE0010 */  sw          $t6, 0x10($sp)
/* 00BC20 8000C070 0C0142A8 */  jal         osCreateThread
/* 00BC24 8000C074 2405001E */   addiu      $a1, $zero, 0x1e
/* 00BC28 8000C078 3C04800B */  lui         $a0, %hi(D_800B6538)
/* 00BC2C 8000C07C 0C0142FC */  jal         osStartThread
/* 00BC30 8000C080 24846538 */   addiu      $a0, $a0, %lo(D_800B6538)
/* 00BC34 8000C084 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00BC38 8000C088 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BC3C 8000C08C 03E00008 */  jr          $ra
/* 00BC40 8000C090 00000000 */   nop

glabel func_8000C094 # 22
/* 00BC44 8000C094 3C0E800B */  lui         $t6, %hi(D_800B678C)
/* 00BC48 8000C098 8DCE678C */  lw          $t6, %lo(D_800B678C)($t6)
/* 00BC4C 8000C09C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00BC50 8000C0A0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00BC54 8000C0A4 51C00021 */  beql        $t6, $zero, .L8000C12C
/* 00BC58 8000C0A8 8FBF001C */   lw         $ra, 0x1c($sp)
/* 00BC5C 8000C0AC 0C002C4D */  jal         func_8000B134
/* 00BC60 8000C0B0 00000000 */   nop
/* 00BC64 8000C0B4 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00BC68 8000C0B8 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00BC6C 8000C0BC 8C850000 */  lw          $a1, 0x0($a0)
/* 00BC70 8000C0C0 240F00FF */  addiu       $t7, $zero, 0xff
/* 00BC74 8000C0C4 AFAF0010 */  sw          $t7, 0x10($sp)
/* 00BC78 8000C0C8 240600FF */  addiu       $a2, $zero, 0xff
/* 00BC7C 8000C0CC 240700FF */  addiu       $a3, $zero, 0xff
/* 00BC80 8000C0D0 AFA20014 */  sw          $v0, 0x14($sp)
/* 00BC84 8000C0D4 0C004B04 */  jal         func_80012C10
/* 00BC88 8000C0D8 24A5FFFF */   addiu      $a1, $a1, -0x1
/* 00BC8C 8000C0DC 3C05800B */  lui         $a1, %hi(D_800ABDD0)
/* 00BC90 8000C0E0 24A5BDD0 */  addiu       $a1, $a1, %lo(D_800ABDD0)
/* 00BC94 8000C0E4 8CA20000 */  lw          $v0, 0x0($a1)
/* 00BC98 8000C0E8 3C19E700 */  lui         $t9, 0xe700
/* 00BC9C 8000C0EC 3C09E300 */  lui         $t1, (0xE3000A01 >> 16)
/* 00BCA0 8000C0F0 24580008 */  addiu       $t8, $v0, 0x8
/* 00BCA4 8000C0F4 ACB80000 */  sw          $t8, 0x0($a1)
/* 00BCA8 8000C0F8 AC400004 */  sw          $zero, 0x4($v0)
/* 00BCAC 8000C0FC AC590000 */  sw          $t9, 0x0($v0)
/* 00BCB0 8000C100 8CA20000 */  lw          $v0, 0x0($a1)
/* 00BCB4 8000C104 35290A01 */  ori         $t1, $t1, (0xE3000A01 & 0xFFFF)
/* 00BCB8 8000C108 3C04800B */  lui         $a0, %hi(D_800B6778)
/* 00BCBC 8000C10C 24480008 */  addiu       $t0, $v0, 0x8
/* 00BCC0 8000C110 ACA80000 */  sw          $t0, 0x0($a1)
/* 00BCC4 8000C114 24846778 */  addiu       $a0, $a0, %lo(D_800B6778)
/* 00BCC8 8000C118 24060002 */  addiu       $a2, $zero, 0x2
/* 00BCCC 8000C11C AC400004 */  sw          $zero, 0x4($v0)
/* 00BCD0 8000C120 0C004A18 */  jal         func_80012860
/* 00BCD4 8000C124 AC490000 */   sw         $t1, 0x0($v0)
/* 00BCD8 8000C128 8FBF001C */  lw          $ra, 0x1c($sp)
.L8000C12C:
/* 00BCDC 8000C12C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00BCE0 8000C130 03E00008 */  jr          $ra
/* 00BCE4 8000C134 00000000 */   nop
/* 00BCE8 8000C138 00000000 */  nop
/* 00BCEC 8000C13C 00000000 */  nop
