.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8000A980 # 0
/* 00A530 8000A980 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A534 8000A984 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A538 8000A988 3C04800C */  lui         $a0, %hi(D_800BAF30)
/* 00A53C 8000A98C 3C050001 */  lui         $a1, (0x1E000 >> 16)
/* 00A540 8000A990 34A5E000 */  ori         $a1, $a1, (0x1E000 & 0xFFFF)
/* 00A544 8000A994 2484AF30 */  addiu       $a0, $a0, %lo(D_800BAF30)
/* 00A548 8000A998 2406003D */  addiu       $a2, $zero, 0x3d
/* 00A54C 8000A99C 0C00F538 */  jal         func_8003D4E0
/* 00A550 8000A9A0 24070020 */   addiu      $a3, $zero, 0x20
/* 00A554 8000A9A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00A558 8000A9A8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00A55C 8000A9AC 03E00008 */  jr          $ra
/* 00A560 8000A9B0 00000000 */   nop

glabel func_8000A9B4 # 1
/* 00A564 8000A9B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00A568 8000A9B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00A56C 8000A9BC 3C04800C */  lui         $a0, %hi(D_800BAF30)
/* 00A570 8000A9C0 0C00F554 */  jal         func_8003D550
/* 00A574 8000A9C4 2484AF30 */   addiu      $a0, $a0, %lo(D_800BAF30)
/* 00A578 8000A9C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00A57C 8000A9CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00A580 8000A9D0 03E00008 */  jr          $ra
/* 00A584 8000A9D4 00000000 */   nop

glabel func_8000A9D8 # 2
/* 00A588 8000A9D8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00A58C 8000A9DC AFBF001C */  sw          $ra, 0x1c($sp)
/* 00A590 8000A9E0 AFA50034 */  sw          $a1, 0x34($sp)
/* 00A594 8000A9E4 04A00008 */  bltz        $a1, .L8000AA08
/* 00A598 8000A9E8 AFA60038 */   sw         $a2, 0x38($sp)
/* 00A59C 8000A9EC 00041080 */  sll         $v0, $a0, 2
/* 00A5A0 8000A9F0 3C0F8007 */  lui         $t7, %hi(D_800692EC)
/* 00A5A4 8000A9F4 01E27821 */  addu        $t7, $t7, $v0
/* 00A5A8 8000A9F8 8DEF92EC */  lw          $t7, %lo(D_800692EC)($t7)
/* 00A5AC 8000A9FC 00AF082A */  slt         $at, $a1, $t7
/* 00A5B0 8000AA00 14200002 */  bnez        $at, .L8000AA0C
/* 00A5B4 8000AA04 00000000 */   nop
.L8000AA08:
/* 00A5B8 8000AA08 00041080 */  sll         $v0, $a0, 2
.L8000AA0C:
/* 00A5BC 8000AA0C 3C198007 */  lui         $t9, %hi(D_800692C0)
/* 00A5C0 8000AA10 8FA80034 */  lw          $t0, 0x34($sp)
/* 00A5C4 8000AA14 0322C821 */  addu        $t9, $t9, $v0
/* 00A5C8 8000AA18 8F3992C0 */  lw          $t9, %lo(D_800692C0)($t9)
/* 00A5CC 8000AA1C 00084900 */  sll         $t1, $t0, 4
/* 00A5D0 8000AA20 8FB80038 */  lw          $t8, 0x38($sp)
/* 00A5D4 8000AA24 03295021 */  addu        $t2, $t9, $t1
/* 00A5D8 8000AA28 8D410000 */  lw          $at, 0x0($t2)
/* 00A5DC 8000AA2C 27B90028 */  addiu       $t9, $sp, 0x28
/* 00A5E0 8000AA30 27A8002C */  addiu       $t0, $sp, 0x2c
/* 00A5E4 8000AA34 AF010000 */  sw          $at, 0x0($t8)
/* 00A5E8 8000AA38 8D4C0004 */  lw          $t4, 0x4($t2)
/* 00A5EC 8000AA3C AF0C0004 */  sw          $t4, 0x4($t8)
/* 00A5F0 8000AA40 8D410008 */  lw          $at, 0x8($t2)
/* 00A5F4 8000AA44 AF010008 */  sw          $at, 0x8($t8)
/* 00A5F8 8000AA48 8D4C000C */  lw          $t4, 0xc($t2)
/* 00A5FC 8000AA4C AF0C000C */  sw          $t4, 0xc($t8)
/* 00A600 8000AA50 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00A604 8000AA54 8DA10000 */  lw          $at, 0x0($t5)
/* 00A608 8000AA58 AFA10000 */  sw          $at, 0x0($sp)
/* 00A60C 8000AA5C 8DAF0004 */  lw          $t7, 0x4($t5)
/* 00A610 8000AA60 8FA40000 */  lw          $a0, 0x0($sp)
/* 00A614 8000AA64 AFAF0004 */  sw          $t7, 0x4($sp)
/* 00A618 8000AA68 8DA60008 */  lw          $a2, 0x8($t5)
/* 00A61C 8000AA6C 8FA50004 */  lw          $a1, 0x4($sp)
/* 00A620 8000AA70 AFA60008 */  sw          $a2, 0x8($sp)
/* 00A624 8000AA74 8DA7000C */  lw          $a3, 0xc($t5)
/* 00A628 8000AA78 AFB90014 */  sw          $t9, 0x14($sp)
/* 00A62C 8000AA7C AFA80010 */  sw          $t0, 0x10($sp)
/* 00A630 8000AA80 0C002BD1 */  jal         func_8000AF44
/* 00A634 8000AA84 AFA7000C */   sw         $a3, 0xc($sp)
/* 00A638 8000AA88 8FA20038 */  lw          $v0, 0x38($sp)
/* 00A63C 8000AA8C 8FA9002C */  lw          $t1, 0x2c($sp)
/* 00A640 8000AA90 AC490000 */  sw          $t1, 0x0($v0)
/* 00A644 8000AA94 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00A648 8000AA98 AC4B0004 */  sw          $t3, 0x4($v0)
/* 00A64C 8000AA9C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00A650 8000AAA0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00A654 8000AAA4 03E00008 */  jr          $ra
/* 00A658 8000AAA8 00000000 */   nop

glabel func_8000AAAC # 3
/* 00A65C 8000AAAC 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00A660 8000AAB0 AFB00038 */  sw          $s0, 0x38($sp)
/* 00A664 8000AAB4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 00A668 8000AAB8 AFA60068 */  sw          $a2, 0x68($sp)
/* 00A66C 8000AABC 8C8E0000 */  lw          $t6, 0x0($a0)
/* 00A670 8000AAC0 00808025 */  move        $s0, $a0
/* 00A674 8000AAC4 00A02025 */  move        $a0, $a1
/* 00A678 8000AAC8 00C02825 */  move        $a1, $a2
/* 00A67C 8000AACC 27A6004C */  addiu       $a2, $sp, 0x4c
/* 00A680 8000AAD0 0C002A76 */  jal         func_8000A9D8
/* 00A684 8000AAD4 AFAE005C */   sw         $t6, 0x5c($sp)
/* 00A688 8000AAD8 8E020000 */  lw          $v0, 0x0($s0)
/* 00A68C 8000AADC 3C18E700 */  lui         $t8, 0xe700
/* 00A690 8000AAE0 24010002 */  addiu       $at, $zero, 0x2
/* 00A694 8000AAE4 244F0008 */  addiu       $t7, $v0, 0x8
/* 00A698 8000AAE8 AE0F0000 */  sw          $t7, 0x0($s0)
/* 00A69C 8000AAEC AC400004 */  sw          $zero, 0x4($v0)
/* 00A6A0 8000AAF0 AC580000 */  sw          $t8, 0x0($v0)
/* 00A6A4 8000AAF4 93B90059 */  lbu         $t9, 0x59($sp)
/* 00A6A8 8000AAF8 3C09E300 */  lui         $t1, (0xE3001001 >> 16)
/* 00A6AC 8000AAFC 24180002 */  addiu       $t8, $zero, 0x2
/* 00A6B0 8000AB00 17210009 */  bne         $t9, $at, .L8000AB28
/* 00A6B4 8000AB04 02002025 */   move       $a0, $s0
/* 00A6B8 8000AB08 8E020000 */  lw          $v0, 0x0($s0)
/* 00A6BC 8000AB0C 35291001 */  ori         $t1, $t1, (0xE3001001 & 0xFFFF)
/* 00A6C0 8000AB10 340A8000 */  ori         $t2, $zero, 0x8000
/* 00A6C4 8000AB14 24480008 */  addiu       $t0, $v0, 0x8
/* 00A6C8 8000AB18 AE080000 */  sw          $t0, 0x0($s0)
/* 00A6CC 8000AB1C AC4A0004 */  sw          $t2, 0x4($v0)
/* 00A6D0 8000AB20 10000008 */  b           .L8000AB44
/* 00A6D4 8000AB24 AC490000 */   sw         $t1, 0x0($v0)
.L8000AB28:
/* 00A6D8 8000AB28 8E020000 */  lw          $v0, 0x0($s0)
/* 00A6DC 8000AB2C 3C0CE300 */  lui         $t4, (0xE3001001 >> 16)
/* 00A6E0 8000AB30 358C1001 */  ori         $t4, $t4, (0xE3001001 & 0xFFFF)
/* 00A6E4 8000AB34 244B0008 */  addiu       $t3, $v0, 0x8
/* 00A6E8 8000AB38 AE0B0000 */  sw          $t3, 0x0($s0)
/* 00A6EC 8000AB3C AC400004 */  sw          $zero, 0x4($v0)
/* 00A6F0 8000AB40 AC4C0000 */  sw          $t4, 0x0($v0)
.L8000AB44:
/* 00A6F4 8000AB44 93AD0058 */  lbu         $t5, 0x58($sp)
/* 00A6F8 8000AB48 97AE0054 */  lhu         $t6, 0x54($sp)
/* 00A6FC 8000AB4C 97AF0056 */  lhu         $t7, 0x56($sp)
/* 00A700 8000AB50 24190002 */  addiu       $t9, $zero, 0x2
/* 00A704 8000AB54 AFB90020 */  sw          $t9, 0x20($sp)
/* 00A708 8000AB58 8FA5004C */  lw          $a1, 0x4c($sp)
/* 00A70C 8000AB5C 8FA60050 */  lw          $a2, 0x50($sp)
/* 00A710 8000AB60 93A70059 */  lbu         $a3, 0x59($sp)
/* 00A714 8000AB64 AFB8001C */  sw          $t8, 0x1c($sp)
/* 00A718 8000AB68 AFA00024 */  sw          $zero, 0x24($sp)
/* 00A71C 8000AB6C AFA00028 */  sw          $zero, 0x28($sp)
/* 00A720 8000AB70 AFAD0010 */  sw          $t5, 0x10($sp)
/* 00A724 8000AB74 AFAE0014 */  sw          $t6, 0x14($sp)
/* 00A728 8000AB78 0C00FC70 */  jal         func_8003F1C0
/* 00A72C 8000AB7C AFAF0018 */   sw         $t7, 0x18($sp)
/* 00A730 8000AB80 8FBF003C */  lw          $ra, 0x3c($sp)
/* 00A734 8000AB84 8FA2005C */  lw          $v0, 0x5c($sp)
/* 00A738 8000AB88 8FB00038 */  lw          $s0, 0x38($sp)
/* 00A73C 8000AB8C 03E00008 */  jr          $ra
/* 00A740 8000AB90 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8000AB94 # 4
/* 00A744 8000AB94 27BDFF40 */  addiu       $sp, $sp, -0xc0
/* 00A748 8000AB98 AFBF005C */  sw          $ra, 0x5c($sp)
/* 00A74C 8000AB9C AFB20058 */  sw          $s2, 0x58($sp)
/* 00A750 8000ABA0 AFB10054 */  sw          $s1, 0x54($sp)
/* 00A754 8000ABA4 AFB00050 */  sw          $s0, 0x50($sp)
/* 00A758 8000ABA8 F7B80048 */  sdc1        $f24, 0x48($sp)
/* 00A75C 8000ABAC F7B60040 */  sdc1        $f22, 0x40($sp)
/* 00A760 8000ABB0 F7B40038 */  sdc1        $f20, 0x38($sp)
/* 00A764 8000ABB4 3C01800A */  lui         $at, %hi(D_800A5D7C)
/* 00A768 8000ABB8 C4225D7C */  lwc1        $f2, %lo(D_800A5D7C)($at)
/* 00A76C 8000ABBC C4A0001C */  lwc1        $f0, 0x1c($a1)
/* 00A770 8000ABC0 00A08025 */  move        $s0, $a1
/* 00A774 8000ABC4 00C08825 */  move        $s1, $a2
/* 00A778 8000ABC8 4602003C */  c.lt.s      $f0, $f2
/* 00A77C 8000ABCC 3C01800A */  lui         $at, %hi(D_800A5D80)
/* 00A780 8000ABD0 45020007 */  bc1fl       .L8000ABF0
/* 00A784 8000ABD4 C6000020 */   lwc1       $f0, 0x20($s0)
/* 00A788 8000ABD8 C4245D80 */  lwc1        $f4, %lo(D_800A5D80)($at)
/* 00A78C 8000ABDC 4600203C */  c.lt.s      $f4, $f0
/* 00A790 8000ABE0 00000000 */  nop
/* 00A794 8000ABE4 450300CF */  bc1tl       .L8000AF24
/* 00A798 8000ABE8 8FBF005C */   lw         $ra, 0x5c($sp)
/* 00A79C 8000ABEC C6000020 */  lwc1        $f0, 0x20($s0)
.L8000ABF0:
/* 00A7A0 8000ABF0 3C01800A */  lui         $at, %hi(D_800A5D84)
/* 00A7A4 8000ABF4 3C0FDE00 */  lui         $t7, 0xde00
/* 00A7A8 8000ABF8 4602003C */  c.lt.s      $f0, $f2
/* 00A7AC 8000ABFC 00000000 */  nop
/* 00A7B0 8000AC00 45020007 */  bc1fl       .L8000AC20
/* 00A7B4 8000AC04 8E220000 */   lw         $v0, 0x0($s1)
/* 00A7B8 8000AC08 C4265D84 */  lwc1        $f6, %lo(D_800A5D84)($at)
/* 00A7BC 8000AC0C 4600303C */  c.lt.s      $f6, $f0
/* 00A7C0 8000AC10 00000000 */  nop
/* 00A7C4 8000AC14 450300C3 */  bc1tl       .L8000AF24
/* 00A7C8 8000AC18 8FBF005C */   lw         $ra, 0x5c($sp)
/* 00A7CC 8000AC1C 8E220000 */  lw          $v0, 0x0($s1)
.L8000AC20:
/* 00A7D0 8000AC20 3C180101 */  lui         $t8, 0x101
/* 00A7D4 8000AC24 2718C720 */  addiu       $t8, $t8, -0x38e0
/* 00A7D8 8000AC28 244E0008 */  addiu       $t6, $v0, 0x8
/* 00A7DC 8000AC2C AE2E0000 */  sw          $t6, 0x0($s1)
/* 00A7E0 8000AC30 AC580004 */  sw          $t8, 0x4($v0)
/* 00A7E4 8000AC34 AC4F0000 */  sw          $t7, 0x0($v0)
/* 00A7E8 8000AC38 8E050000 */  lw          $a1, 0x0($s0)
/* 00A7EC 8000AC3C 3C12E300 */  lui         $s2, (0xE3001001 >> 16)
/* 00A7F0 8000AC40 36521001 */  ori         $s2, $s2, (0xE3001001 & 0xFFFF)
/* 00A7F4 8000AC44 04A000A7 */  bltz        $a1, .L8000AEE4
/* 00A7F8 8000AC48 3C014080 */   lui        $at, 0x4080
/* 00A7FC 8000AC4C 4481B000 */  mtc1        $at, $f22
/* 00A800 8000AC50 3C013F00 */  lui         $at, 0x3f00
/* 00A804 8000AC54 4481A000 */  mtc1        $at, $f20
/* 00A808 8000AC58 4480C000 */  mtc1        $zero, $f24
/* 00A80C 8000AC5C AFA400C0 */  sw          $a0, 0xc0($sp)
/* 00A810 8000AC60 8FA400C0 */  lw          $a0, 0xc0($sp)
.L8000AC64:
/* 00A814 8000AC64 0C002A76 */  jal         func_8000A9D8
/* 00A818 8000AC68 27A600AC */   addiu      $a2, $sp, 0xac
/* 00A81C 8000AC6C 8E220000 */  lw          $v0, 0x0($s1)
/* 00A820 8000AC70 3C0AE700 */  lui         $t2, 0xe700
/* 00A824 8000AC74 24010002 */  addiu       $at, $zero, 0x2
/* 00A828 8000AC78 24590008 */  addiu       $t9, $v0, 0x8
/* 00A82C 8000AC7C AE390000 */  sw          $t9, 0x0($s1)
/* 00A830 8000AC80 AC400004 */  sw          $zero, 0x4($v0)
/* 00A834 8000AC84 AC4A0000 */  sw          $t2, 0x0($v0)
/* 00A838 8000AC88 93AB00B9 */  lbu         $t3, 0xb9($sp)
/* 00A83C 8000AC8C 24030001 */  addiu       $v1, $zero, 0x1
/* 00A840 8000AC90 02202025 */  move        $a0, $s1
/* 00A844 8000AC94 55610009 */  bnel        $t3, $at, .L8000ACBC
/* 00A848 8000AC98 8E220000 */   lw         $v0, 0x0($s1)
/* 00A84C 8000AC9C 8E220000 */  lw          $v0, 0x0($s1)
/* 00A850 8000ACA0 340D8000 */  ori         $t5, $zero, 0x8000
/* 00A854 8000ACA4 244C0008 */  addiu       $t4, $v0, 0x8
/* 00A858 8000ACA8 AE2C0000 */  sw          $t4, 0x0($s1)
/* 00A85C 8000ACAC AC4D0004 */  sw          $t5, 0x4($v0)
/* 00A860 8000ACB0 10000006 */  b           .L8000ACCC
/* 00A864 8000ACB4 AC520000 */   sw         $s2, 0x0($v0)
/* 00A868 8000ACB8 8E220000 */  lw          $v0, 0x0($s1)
.L8000ACBC:
/* 00A86C 8000ACBC 244E0008 */  addiu       $t6, $v0, 0x8
/* 00A870 8000ACC0 AE2E0000 */  sw          $t6, 0x0($s1)
/* 00A874 8000ACC4 AC400004 */  sw          $zero, 0x4($v0)
/* 00A878 8000ACC8 AC520000 */  sw          $s2, 0x0($v0)
.L8000ACCC:
/* 00A87C 8000ACCC 97A900B4 */  lhu         $t1, 0xb4($sp)
/* 00A880 8000ACD0 97A800B6 */  lhu         $t0, 0xb6($sp)
/* 00A884 8000ACD4 8FA500AC */  lw          $a1, 0xac($sp)
/* 00A888 8000ACD8 252FFFFF */  addiu       $t7, $t1, -0x1
/* 00A88C 8000ACDC 012FC024 */  and         $t8, $t1, $t7
/* 00A890 8000ACE0 13000003 */  beqz        $t8, .L8000ACF0
/* 00A894 8000ACE4 2519FFFF */   addiu      $t9, $t0, -0x1
/* 00A898 8000ACE8 10000001 */  b           .L8000ACF0
/* 00A89C 8000ACEC 00001825 */   move       $v1, $zero
.L8000ACF0:
/* 00A8A0 8000ACF0 01195024 */  and         $t2, $t0, $t9
/* 00A8A4 8000ACF4 11400003 */  beqz        $t2, .L8000AD04
/* 00A8A8 8000ACF8 8FA600B0 */   lw         $a2, 0xb0($sp)
/* 00A8AC 8000ACFC 10000002 */  b           .L8000AD08
/* 00A8B0 8000AD00 00001025 */   move       $v0, $zero
.L8000AD04:
/* 00A8B4 8000AD04 24020001 */  addiu       $v0, $zero, 0x1
.L8000AD08:
/* 00A8B8 8000AD08 93AB00B8 */  lbu         $t3, 0xb8($sp)
/* 00A8BC 8000AD0C 93A700B9 */  lbu         $a3, 0xb9($sp)
/* 00A8C0 8000AD10 AFA90014 */  sw          $t1, 0x14($sp)
/* 00A8C4 8000AD14 AFA80018 */  sw          $t0, 0x18($sp)
/* 00A8C8 8000AD18 AFA0001C */  sw          $zero, 0x1c($sp)
/* 00A8CC 8000AD1C AFA00020 */  sw          $zero, 0x20($sp)
/* 00A8D0 8000AD20 AFA30024 */  sw          $v1, 0x24($sp)
/* 00A8D4 8000AD24 AFA20028 */  sw          $v0, 0x28($sp)
/* 00A8D8 8000AD28 0C00FC70 */  jal         func_8003F1C0
/* 00A8DC 8000AD2C AFAB0010 */   sw         $t3, 0x10($sp)
/* 00A8E0 8000AD30 8E02000C */  lw          $v0, 0xc($s0)
/* 00A8E4 8000AD34 97A600B4 */  lhu         $a2, 0xb4($sp)
/* 00A8E8 8000AD38 97A500B6 */  lhu         $a1, 0xb6($sp)
/* 00A8EC 8000AD3C 04400003 */  bltz        $v0, .L8000AD4C
/* 00A8F0 8000AD40 00000000 */   nop
/* 00A8F4 8000AD44 10000001 */  b           .L8000AD4C
/* 00A8F8 8000AD48 00403025 */   move       $a2, $v0
.L8000AD4C:
/* 00A8FC 8000AD4C 8E020010 */  lw          $v0, 0x10($s0)
/* 00A900 8000AD50 44864000 */  mtc1        $a2, $f8
/* 00A904 8000AD54 04400003 */  bltz        $v0, .L8000AD64
/* 00A908 8000AD58 00000000 */   nop
/* 00A90C 8000AD5C 10000001 */  b           .L8000AD64
/* 00A910 8000AD60 00402825 */   move       $a1, $v0
.L8000AD64:
/* 00A914 8000AD64 8E220000 */  lw          $v0, 0x0($s1)
/* 00A918 8000AD68 468042A0 */  cvt.s.w     $f10, $f8
/* 00A91C 8000AD6C 3C01E400 */  lui         $at, 0xe400
/* 00A920 8000AD70 244C0008 */  addiu       $t4, $v0, 0x8
/* 00A924 8000AD74 AE2C0000 */  sw          $t4, 0x0($s1)
/* 00A928 8000AD78 8E0D0004 */  lw          $t5, 0x4($s0)
/* 00A92C 8000AD7C C610001C */  lwc1        $f16, 0x1c($s0)
/* 00A930 8000AD80 8E0B0008 */  lw          $t3, 0x8($s0)
/* 00A934 8000AD84 448D2000 */  mtc1        $t5, $f4
/* 00A938 8000AD88 46105482 */  mul.s       $f18, $f10, $f16
/* 00A93C 8000AD8C 468021A0 */  cvt.s.w     $f6, $f4
/* 00A940 8000AD90 44852000 */  mtc1        $a1, $f4
/* 00A944 8000AD94 46123200 */  add.s       $f8, $f6, $f18
/* 00A948 8000AD98 C6120020 */  lwc1        $f18, 0x20($s0)
/* 00A94C 8000AD9C 468021A0 */  cvt.s.w     $f6, $f4
/* 00A950 8000ADA0 46164282 */  mul.s       $f10, $f8, $f22
/* 00A954 8000ADA4 4600540D */  trunc.w.s   $f16, $f10
/* 00A958 8000ADA8 448B5000 */  mtc1        $t3, $f10
/* 00A95C 8000ADAC 46123202 */  mul.s       $f8, $f6, $f18
/* 00A960 8000ADB0 440F8000 */  mfc1        $t7, $f16
/* 00A964 8000ADB4 00000000 */  nop
/* 00A968 8000ADB8 31F80FFF */  andi        $t8, $t7, 0xfff
/* 00A96C 8000ADBC 46805420 */  cvt.s.w     $f16, $f10
/* 00A970 8000ADC0 0018CB00 */  sll         $t9, $t8, 12
/* 00A974 8000ADC4 03215025 */  or          $t2, $t9, $at
/* 00A978 8000ADC8 3C014480 */  lui         $at, 0x4480
/* 00A97C 8000ADCC 44815000 */  mtc1        $at, $f10
/* 00A980 8000ADD0 3C01C480 */  lui         $at, 0xc480
/* 00A984 8000ADD4 46088100 */  add.s       $f4, $f16, $f8
/* 00A988 8000ADD8 44814000 */  mtc1        $at, $f8
/* 00A98C 8000ADDC 46162182 */  mul.s       $f6, $f4, $f22
/* 00A990 8000ADE0 4600348D */  trunc.w.s   $f18, $f6
/* 00A994 8000ADE4 440D9000 */  mfc1        $t5, $f18
/* 00A998 8000ADE8 00000000 */  nop
/* 00A99C 8000ADEC 31AE0FFF */  andi        $t6, $t5, 0xfff
/* 00A9A0 8000ADF0 014E7825 */  or          $t7, $t2, $t6
/* 00A9A4 8000ADF4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 00A9A8 8000ADF8 8E180004 */  lw          $t8, 0x4($s0)
/* 00A9AC 8000ADFC 8E0D0008 */  lw          $t5, 0x8($s0)
/* 00A9B0 8000AE00 0018C880 */  sll         $t9, $t8, 2
/* 00A9B4 8000AE04 332B0FFF */  andi        $t3, $t9, 0xfff
/* 00A9B8 8000AE08 000D5080 */  sll         $t2, $t5, 2
/* 00A9BC 8000AE0C 314E0FFF */  andi        $t6, $t2, 0xfff
/* 00A9C0 8000AE10 000B6300 */  sll         $t4, $t3, 12
/* 00A9C4 8000AE14 018E7825 */  or          $t7, $t4, $t6
/* 00A9C8 8000AE18 AC4F0004 */  sw          $t7, 0x4($v0)
/* 00A9CC 8000AE1C 8E220000 */  lw          $v0, 0x0($s1)
/* 00A9D0 8000AE20 3C19E100 */  lui         $t9, 0xe100
/* 00A9D4 8000AE24 24580008 */  addiu       $t8, $v0, 0x8
/* 00A9D8 8000AE28 AE380000 */  sw          $t8, 0x0($s1)
/* 00A9DC 8000AE2C AC590000 */  sw          $t9, 0x0($v0)
/* 00A9E0 8000AE30 8E0D0018 */  lw          $t5, 0x18($s0)
/* 00A9E4 8000AE34 97AB00B6 */  lhu         $t3, 0xb6($sp)
/* 00A9E8 8000AE38 016D5023 */  subu        $t2, $t3, $t5
/* 00A9EC 8000AE3C 8E0B0014 */  lw          $t3, 0x14($s0)
/* 00A9F0 8000AE40 254CFFFF */  addiu       $t4, $t2, -0x1
/* 00A9F4 8000AE44 000C7140 */  sll         $t6, $t4, 5
/* 00A9F8 8000AE48 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 00A9FC 8000AE4C 000B6D40 */  sll         $t5, $t3, 21
/* 00AA00 8000AE50 01AF5025 */  or          $t2, $t5, $t7
/* 00AA04 8000AE54 AC4A0004 */  sw          $t2, 0x4($v0)
/* 00AA08 8000AE58 8E230000 */  lw          $v1, 0x0($s1)
/* 00AA0C 8000AE5C 3C0EF100 */  lui         $t6, 0xf100
/* 00AA10 8000AE60 246C0008 */  addiu       $t4, $v1, 0x8
/* 00AA14 8000AE64 AE2C0000 */  sw          $t4, 0x0($s1)
/* 00AA18 8000AE68 AC6E0000 */  sw          $t6, 0x0($v1)
/* 00AA1C 8000AE6C C610001C */  lwc1        $f16, 0x1c($s0)
/* 00AA20 8000AE70 46105003 */  div.s       $f0, $f10, $f16
/* 00AA24 8000AE74 4600C03E */  c.le.s      $f24, $f0
/* 00AA28 8000AE78 00000000 */  nop
/* 00AA2C 8000AE7C 45020004 */  bc1fl       .L8000AE90
/* 00AA30 8000AE80 46140301 */   sub.s      $f12, $f0, $f20
/* 00AA34 8000AE84 10000002 */  b           .L8000AE90
/* 00AA38 8000AE88 46140300 */   add.s      $f12, $f0, $f20
/* 00AA3C 8000AE8C 46140301 */  sub.s       $f12, $f0, $f20
.L8000AE90:
/* 00AA40 8000AE90 C6040020 */  lwc1        $f4, 0x20($s0)
/* 00AA44 8000AE94 4600648D */  trunc.w.s   $f18, $f12
/* 00AA48 8000AE98 46044003 */  div.s       $f0, $f8, $f4
/* 00AA4C 8000AE9C 4600C03E */  c.le.s      $f24, $f0
/* 00AA50 8000AEA0 00000000 */  nop
/* 00AA54 8000AEA4 45020004 */  bc1fl       .L8000AEB8
/* 00AA58 8000AEA8 46140081 */   sub.s      $f2, $f0, $f20
/* 00AA5C 8000AEAC 10000002 */  b           .L8000AEB8
/* 00AA60 8000AEB0 46140080 */   add.s      $f2, $f0, $f20
/* 00AA64 8000AEB4 46140081 */  sub.s       $f2, $f0, $f20
.L8000AEB8:
/* 00AA68 8000AEB8 4600118D */  trunc.w.s   $f6, $f2
/* 00AA6C 8000AEBC 440A9000 */  mfc1        $t2, $f18
/* 00AA70 8000AEC0 26100024 */  addiu       $s0, $s0, 0x24
/* 00AA74 8000AEC4 44193000 */  mfc1        $t9, $f6
/* 00AA78 8000AEC8 000A6400 */  sll         $t4, $t2, 16
/* 00AA7C 8000AECC 332BFFFF */  andi        $t3, $t9, 0xffff
/* 00AA80 8000AED0 016C7025 */  or          $t6, $t3, $t4
/* 00AA84 8000AED4 AC6E0004 */  sw          $t6, 0x4($v1)
/* 00AA88 8000AED8 8E050000 */  lw          $a1, 0x0($s0)
/* 00AA8C 8000AEDC 04A3FF61 */  bgezl       $a1, .L8000AC64
/* 00AA90 8000AEE0 8FA400C0 */   lw         $a0, 0xc0($sp)
.L8000AEE4:
/* 00AA94 8000AEE4 8E220000 */  lw          $v0, 0x0($s1)
/* 00AA98 8000AEE8 3C19D700 */  lui         $t9, 0xd700
/* 00AA9C 8000AEEC 3C0D7FFF */  lui         $t5, 0x7fff
/* 00AAA0 8000AEF0 24580008 */  addiu       $t8, $v0, 0x8
/* 00AAA4 8000AEF4 AE380000 */  sw          $t8, 0x0($s1)
/* 00AAA8 8000AEF8 AC4D0004 */  sw          $t5, 0x4($v0)
/* 00AAAC 8000AEFC AC590000 */  sw          $t9, 0x0($v0)
/* 00AAB0 8000AF00 8E220000 */  lw          $v0, 0x0($s1)
/* 00AAB4 8000AF04 3C0ADB08 */  lui         $t2, (0xDB080010 >> 16)
/* 00AAB8 8000AF08 354A0010 */  ori         $t2, $t2, (0xDB080010 & 0xFFFF)
/* 00AABC 8000AF0C 244F0008 */  addiu       $t7, $v0, 0x8
/* 00AAC0 8000AF10 AE2F0000 */  sw          $t7, 0x0($s1)
/* 00AAC4 8000AF14 240B7FFF */  addiu       $t3, $zero, 0x7fff
/* 00AAC8 8000AF18 AC4B0004 */  sw          $t3, 0x4($v0)
/* 00AACC 8000AF1C AC4A0000 */  sw          $t2, 0x0($v0)
/* 00AAD0 8000AF20 8FBF005C */  lw          $ra, 0x5c($sp)
.L8000AF24:
/* 00AAD4 8000AF24 D7B40038 */  ldc1        $f20, 0x38($sp)
/* 00AAD8 8000AF28 D7B60040 */  ldc1        $f22, 0x40($sp)
/* 00AADC 8000AF2C D7B80048 */  ldc1        $f24, 0x48($sp)
/* 00AAE0 8000AF30 8FB00050 */  lw          $s0, 0x50($sp)
/* 00AAE4 8000AF34 8FB10054 */  lw          $s1, 0x54($sp)
/* 00AAE8 8000AF38 8FB20058 */  lw          $s2, 0x58($sp)
/* 00AAEC 8000AF3C 03E00008 */  jr          $ra
/* 00AAF0 8000AF40 27BD00C0 */   addiu      $sp, $sp, 0xc0

glabel func_8000AF44 # 5
/* 00AAF4 8000AF44 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00AAF8 8000AF48 AFA60030 */  sw          $a2, 0x30($sp)
/* 00AAFC 8000AF4C 97A20030 */  lhu         $v0, 0x30($sp)
/* 00AB00 8000AF50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00AB04 8000AF54 AFA40028 */  sw          $a0, 0x28($sp)
/* 00AB08 8000AF58 28410011 */  slti        $at, $v0, 0x11
/* 00AB0C 8000AF5C AFA5002C */  sw          $a1, 0x2c($sp)
/* 00AB10 8000AF60 14200003 */  bnez        $at, .L8000AF70
/* 00AB14 8000AF64 AFA70034 */   sw         $a3, 0x34($sp)
/* 00AB18 8000AF68 10000002 */  b           .L8000AF74
/* 00AB1C 8000AF6C 00401825 */   move       $v1, $v0
.L8000AF70:
/* 00AB20 8000AF70 24030010 */  addiu       $v1, $zero, 0x10
.L8000AF74:
/* 00AB24 8000AF74 97B80032 */  lhu         $t8, 0x32($sp)
/* 00AB28 8000AF78 93A80034 */  lbu         $t0, 0x34($sp)
/* 00AB2C 8000AF7C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00AB30 8000AF80 00780019 */  multu       $v1, $t8
/* 00AB34 8000AF84 3C0F00DE */  lui         $t7, 0xde
/* 00AB38 8000AF88 25EF5560 */  addiu       $t7, $t7, 0x5560
/* 00AB3C 8000AF8C 3C04800C */  lui         $a0, %hi(D_800BAF30)
/* 00AB40 8000AF90 2484AF30 */  addiu       $a0, $a0, %lo(D_800BAF30)
/* 00AB44 8000AF94 8FA70038 */  lw          $a3, 0x38($sp)
/* 00AB48 8000AF98 01CF2821 */  addu        $a1, $t6, $t7
/* 00AB4C 8000AF9C 0000C812 */  mflo        $t9
/* 00AB50 8000AFA0 01193004 */  sllv        $a2, $t9, $t0
/* 00AB54 8000AFA4 00064843 */  sra         $t1, $a2, 1
/* 00AB58 8000AFA8 0C00F58A */  jal         func_8003D628
/* 00AB5C 8000AFAC 01203025 */   move       $a2, $t1
/* 00AB60 8000AFB0 93AA0035 */  lbu         $t2, 0x35($sp)
/* 00AB64 8000AFB4 24010002 */  addiu       $at, $zero, 0x2
/* 00AB68 8000AFB8 00401825 */  move        $v1, $v0
/* 00AB6C 8000AFBC 11410004 */  beq         $t2, $at, .L8000AFD0
/* 00AB70 8000AFC0 3C04800C */   lui        $a0, %hi(D_800BAF30)
/* 00AB74 8000AFC4 8FAB003C */  lw          $t3, 0x3c($sp)
/* 00AB78 8000AFC8 10000013 */  b           .L8000B018
/* 00AB7C 8000AFCC AD600000 */   sw         $zero, 0x0($t3)
.L8000AFD0:
/* 00AB80 8000AFD0 8FAC002C */  lw          $t4, 0x2c($sp)
/* 00AB84 8000AFD4 3C0D00DE */  lui         $t5, 0xde
/* 00AB88 8000AFD8 25AD5560 */  addiu       $t5, $t5, 0x5560
/* 00AB8C 8000AFDC 2484AF30 */  addiu       $a0, $a0, %lo(D_800BAF30)
/* 00AB90 8000AFE0 24060020 */  addiu       $a2, $zero, 0x20
/* 00AB94 8000AFE4 8FA7003C */  lw          $a3, 0x3c($sp)
/* 00AB98 8000AFE8 AFA3001C */  sw          $v1, 0x1c($sp)
/* 00AB9C 8000AFEC 0C00F58A */  jal         func_8003D628
/* 00ABA0 8000AFF0 018D2821 */   addu       $a1, $t4, $t5
/* 00ABA4 8000AFF4 8FA3001C */  lw          $v1, 0x1c($sp)
/* 00ABA8 8000AFF8 24040001 */  addiu       $a0, $zero, 0x1
/* 00ABAC 8000AFFC 10640003 */  beq         $v1, $a0, .L8000B00C
/* 00ABB0 8000B000 00000000 */   nop
/* 00ABB4 8000B004 54440004 */  bnel        $v0, $a0, .L8000B018
/* 00ABB8 8000B008 24020001 */   addiu      $v0, $zero, 0x1
.L8000B00C:
/* 00ABBC 8000B00C 10000002 */  b           .L8000B018
/* 00ABC0 8000B010 00001025 */   move       $v0, $zero
/* 00ABC4 8000B014 24020001 */  addiu       $v0, $zero, 0x1
.L8000B018:
/* 00ABC8 8000B018 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00ABCC 8000B01C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00ABD0 8000B020 03E00008 */  jr          $ra
/* 00ABD4 8000B024 00000000 */   nop
/* 00ABD8 8000B028 00000000 */  nop
/* 00ABDC 8000B02C 00000000 */  nop
