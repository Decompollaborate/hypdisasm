.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005A920 # 0
/* 05A4D0 8005A920 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05A4D4 8005A924 24010004 */  addiu       $at, $zero, 0x4
/* 05A4D8 8005A928 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05A4DC 8005A92C 10A10055 */  beq         $a1, $at, .L8005AA84
/* 05A4E0 8005A930 00803825 */   move       $a3, $a0
/* 05A4E4 8005A934 24010005 */  addiu       $at, $zero, 0x5
/* 05A4E8 8005A938 54A1006B */  bnel        $a1, $at, .L8005AAE8
/* 05A4EC 8005A93C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A4F0 8005A940 AC860028 */  sw          $a2, 0x28($a0)
/* 05A4F4 8005A944 8CCE0000 */  lw          $t6, 0x0($a2)
/* 05A4F8 8005A948 AC800038 */  sw          $zero, 0x38($a0)
/* 05A4FC 8005A94C 3C0F8006 */  lui         $t7, %hi(func_8005AFCC)
/* 05A500 8005A950 AC8E0044 */  sw          $t6, 0x44($a0)
/* 05A504 8005A954 90C20008 */  lbu         $v0, 0x8($a2)
/* 05A508 8005A958 50400007 */  beql        $v0, $zero, .L8005A978
/* 05A50C 8005A95C 8CE20028 */   lw         $v0, 0x28($a3)
/* 05A510 8005A960 24040001 */  addiu       $a0, $zero, 0x1
/* 05A514 8005A964 10440034 */  beq         $v0, $a0, .L8005AA38
/* 05A518 8005A968 3C088006 */   lui        $t0, 0x8006
/* 05A51C 8005A96C 1000005E */  b           .L8005AAE8
/* 05A520 8005A970 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A524 8005A974 8CE20028 */  lw          $v0, 0x28($a3)
.L8005A978:
/* 05A528 8005A978 25EFAFCC */  addiu       $t7, $t7, %lo(func_8005AFCC)
/* 05A52C 8005A97C ACEF0004 */  sw          $t7, 0x4($a3)
/* 05A530 8005A980 8C580004 */  lw          $t8, 0x4($v0)
/* 05A534 8005A984 24050009 */  addiu       $a1, $zero, 0x9
/* 05A538 8005A988 0305001A */  div         $zero, $t8, $a1
/* 05A53C 8005A98C 0000C812 */  mflo        $t9
/* 05A540 8005A990 14A00002 */  bnez        $a1, .L8005A99C
/* 05A544 8005A994 00000000 */   nop
/* 05A548 8005A998 0007000D */  break       7
.L8005A99C:
/* 05A54C 8005A99C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05A550 8005A9A0 14A10004 */  bne         $a1, $at, .L8005A9B4
/* 05A554 8005A9A4 3C018000 */   lui        $at, 0x8000
/* 05A558 8005A9A8 17010002 */  bne         $t8, $at, .L8005A9B4
/* 05A55C 8005A9AC 00000000 */   nop
/* 05A560 8005A9B0 0006000D */  break       6
.L8005A9B4:
/* 05A564 8005A9B4 03250019 */  multu       $t9, $a1
/* 05A568 8005A9B8 00004012 */  mflo        $t0
/* 05A56C 8005A9BC AC480004 */  sw          $t0, 0x4($v0)
/* 05A570 8005A9C0 8CE20028 */  lw          $v0, 0x28($a3)
/* 05A574 8005A9C4 8C440010 */  lw          $a0, 0x10($v0)
/* 05A578 8005A9C8 8C890000 */  lw          $t1, 0x0($a0)
/* 05A57C 8005A9CC 8C8B0004 */  lw          $t3, 0x4($a0)
/* 05A580 8005A9D0 00095100 */  sll         $t2, $t1, 4
/* 05A584 8005A9D4 014B0019 */  multu       $t2, $t3
/* 05A588 8005A9D8 00006012 */  mflo        $t4
/* 05A58C 8005A9DC ACEC002C */  sw          $t4, 0x2c($a3)
/* 05A590 8005A9E0 8C43000C */  lw          $v1, 0xc($v0)
/* 05A594 8005A9E4 50600011 */  beql        $v1, $zero, .L8005AA2C
/* 05A598 8005A9E8 ACE00024 */   sw         $zero, 0x24($a3)
/* 05A59C 8005A9EC 8C6D0000 */  lw          $t5, 0x0($v1)
/* 05A5A0 8005A9F0 8CE50018 */  lw          $a1, 0x18($a3)
/* 05A5A4 8005A9F4 24060020 */  addiu       $a2, $zero, 0x20
/* 05A5A8 8005A9F8 ACED001C */  sw          $t5, 0x1c($a3)
/* 05A5AC 8005A9FC 8C4E000C */  lw          $t6, 0xc($v0)
/* 05A5B0 8005AA00 8DCF0004 */  lw          $t7, 0x4($t6)
/* 05A5B4 8005AA04 ACEF0020 */  sw          $t7, 0x20($a3)
/* 05A5B8 8005AA08 8C58000C */  lw          $t8, 0xc($v0)
/* 05A5BC 8005AA0C 8F190008 */  lw          $t9, 0x8($t8)
/* 05A5C0 8005AA10 ACF90024 */  sw          $t9, 0x24($a3)
/* 05A5C4 8005AA14 8C44000C */  lw          $a0, 0xc($v0)
/* 05A5C8 8005AA18 0C0150B8 */  jal         func_800542E0
/* 05A5CC 8005AA1C 2484000C */   addiu      $a0, $a0, 0xc
/* 05A5D0 8005AA20 10000031 */  b           .L8005AAE8
/* 05A5D4 8005AA24 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A5D8 8005AA28 ACE00024 */  sw          $zero, 0x24($a3)
.L8005AA2C:
/* 05A5DC 8005AA2C ACE00020 */  sw          $zero, 0x20($a3)
/* 05A5E0 8005AA30 1000002C */  b           .L8005AAE4
/* 05A5E4 8005AA34 ACE0001C */   sw         $zero, 0x1c($a3)
.L8005AA38:
/* 05A5E8 8005AA38 8CE20028 */  lw          $v0, 0x28($a3)
/* 05A5EC 8005AA3C 2508AAF4 */  addiu       $t0, $t0, -0x550c
/* 05A5F0 8005AA40 ACE80004 */  sw          $t0, 0x4($a3)
/* 05A5F4 8005AA44 8C43000C */  lw          $v1, 0xc($v0)
/* 05A5F8 8005AA48 5060000B */  beql        $v1, $zero, .L8005AA78
/* 05A5FC 8005AA4C ACE00024 */   sw         $zero, 0x24($a3)
/* 05A600 8005AA50 8C690000 */  lw          $t1, 0x0($v1)
/* 05A604 8005AA54 ACE9001C */  sw          $t1, 0x1c($a3)
/* 05A608 8005AA58 8C4A000C */  lw          $t2, 0xc($v0)
/* 05A60C 8005AA5C 8D4B0004 */  lw          $t3, 0x4($t2)
/* 05A610 8005AA60 ACEB0020 */  sw          $t3, 0x20($a3)
/* 05A614 8005AA64 8C4C000C */  lw          $t4, 0xc($v0)
/* 05A618 8005AA68 8D8D0008 */  lw          $t5, 0x8($t4)
/* 05A61C 8005AA6C 1000001D */  b           .L8005AAE4
/* 05A620 8005AA70 ACED0024 */   sw         $t5, 0x24($a3)
/* 05A624 8005AA74 ACE00024 */  sw          $zero, 0x24($a3)
.L8005AA78:
/* 05A628 8005AA78 ACE00020 */  sw          $zero, 0x20($a3)
/* 05A62C 8005AA7C 10000019 */  b           .L8005AAE4
/* 05A630 8005AA80 ACE0001C */   sw         $zero, 0x1c($a3)
.L8005AA84:
/* 05A634 8005AA84 8CE20028 */  lw          $v0, 0x28($a3)
/* 05A638 8005AA88 24040001 */  addiu       $a0, $zero, 0x1
/* 05A63C 8005AA8C ACE0003C */  sw          $zero, 0x3c($a3)
/* 05A640 8005AA90 ACE40040 */  sw          $a0, 0x40($a3)
/* 05A644 8005AA94 10400013 */  beqz        $v0, .L8005AAE4
/* 05A648 8005AA98 ACE00038 */   sw         $zero, 0x38($a3)
/* 05A64C 8005AA9C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 05A650 8005AAA0 ACEE0044 */  sw          $t6, 0x44($a3)
/* 05A654 8005AAA4 90430008 */  lbu         $v1, 0x8($v0)
/* 05A658 8005AAA8 14600007 */  bnez        $v1, .L8005AAC8
/* 05A65C 8005AAAC 00000000 */   nop
/* 05A660 8005AAB0 8C43000C */  lw          $v1, 0xc($v0)
/* 05A664 8005AAB4 5060000C */  beql        $v1, $zero, .L8005AAE8
/* 05A668 8005AAB8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A66C 8005AABC 8C6F0008 */  lw          $t7, 0x8($v1)
/* 05A670 8005AAC0 10000008 */  b           .L8005AAE4
/* 05A674 8005AAC4 ACEF0024 */   sw         $t7, 0x24($a3)
.L8005AAC8:
/* 05A678 8005AAC8 54830007 */  bnel        $a0, $v1, .L8005AAE8
/* 05A67C 8005AACC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A680 8005AAD0 8C43000C */  lw          $v1, 0xc($v0)
/* 05A684 8005AAD4 50600004 */  beql        $v1, $zero, .L8005AAE8
/* 05A688 8005AAD8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05A68C 8005AADC 8C780008 */  lw          $t8, 0x8($v1)
/* 05A690 8005AAE0 ACF80024 */  sw          $t8, 0x24($a3)
.L8005AAE4:
/* 05A694 8005AAE4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005AAE8:
/* 05A698 8005AAE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05A69C 8005AAEC 03E00008 */  jr          $ra
/* 05A6A0 8005AAF0 00000000 */   nop

glabel func_8005AAF4 # 1
/* 05A6A4 8005AAF4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 05A6A8 8005AAF8 8FA80060 */  lw          $t0, 0x60($sp)
/* 05A6AC 8005AAFC AFB30020 */  sw          $s3, 0x20($sp)
/* 05A6B0 8005AB00 AFB00014 */  sw          $s0, 0x14($sp)
/* 05A6B4 8005AB04 00808025 */  move        $s0, $a0
/* 05A6B8 8005AB08 00C09825 */  move        $s3, $a2
/* 05A6BC 8005AB0C AFBF0024 */  sw          $ra, 0x24($sp)
/* 05A6C0 8005AB10 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05A6C4 8005AB14 AFB10018 */  sw          $s1, 0x18($sp)
/* 05A6C8 8005AB18 AFA7005C */  sw          $a3, 0x5c($sp)
/* 05A6CC 8005AB1C 00A05025 */  move        $t2, $a1
/* 05A6D0 8005AB20 14C00003 */  bnez        $a2, .L8005AB30
/* 05A6D4 8005AB24 01004825 */   move       $t1, $t0
/* 05A6D8 8005AB28 100000D6 */  b           .L8005AE84
/* 05A6DC 8005AB2C 01001025 */   move       $v0, $t0
.L8005AB30:
/* 05A6E0 8005AB30 8E020038 */  lw          $v0, 0x38($s0)
/* 05A6E4 8005AB34 8E030020 */  lw          $v1, 0x20($s0)
/* 05A6E8 8005AB38 00537021 */  addu        $t6, $v0, $s3
/* 05A6EC 8005AB3C 006E082B */  sltu        $at, $v1, $t6
/* 05A6F0 8005AB40 50200084 */  beql        $at, $zero, .L8005AD54
/* 05A6F4 8005AB44 8E020028 */   lw         $v0, 0x28($s0)
/* 05A6F8 8005AB48 8E0F0024 */  lw          $t7, 0x24($s0)
/* 05A6FC 8005AB4C 00629023 */  subu        $s2, $v1, $v0
/* 05A700 8005AB50 51E00080 */  beql        $t7, $zero, .L8005AD54
/* 05A704 8005AB54 8E020028 */   lw         $v0, 0x28($s0)
/* 05A708 8005AB58 1A40001E */  blez        $s2, .L8005ABD4
/* 05A70C 8005AB5C 00128840 */   sll        $s1, $s2, 1
/* 05A710 8005AB60 8E040044 */  lw          $a0, 0x44($s0)
/* 05A714 8005AB64 8E060034 */  lw          $a2, 0x34($s0)
/* 05A718 8005AB68 AFAA0054 */  sw          $t2, 0x54($sp)
/* 05A71C 8005AB6C 8E190030 */  lw          $t9, 0x30($s0)
/* 05A720 8005AB70 02202825 */  move        $a1, $s1
/* 05A724 8005AB74 0320F809 */  jalr        $t9
/* 05A728 8005AB78 00000000 */   nop
/* 05A72C 8005AB7C 8FAA0054 */  lw          $t2, 0x54($sp)
/* 05A730 8005AB80 30460007 */  andi        $a2, $v0, 0x7
/* 05A734 8005AB84 8FA80060 */  lw          $t0, 0x60($sp)
/* 05A738 8005AB88 85580000 */  lh          $t8, 0x0($t2)
/* 05A73C 8005AB8C 02263821 */  addu        $a3, $s1, $a2
/* 05A740 8005AB90 30ED0007 */  andi        $t5, $a3, 0x7
/* 05A744 8005AB94 00ED7023 */  subu        $t6, $a3, $t5
/* 05A748 8005AB98 3C010800 */  lui         $at, 0x800
/* 05A74C 8005AB9C 330BFFFF */  andi        $t3, $t8, 0xffff
/* 05A750 8005ABA0 01616025 */  or          $t4, $t3, $at
/* 05A754 8005ABA4 25CF0008 */  addiu       $t7, $t6, 0x8
/* 05A758 8005ABA8 25090008 */  addiu       $t1, $t0, 0x8
/* 05A75C 8005ABAC 31F9FFFF */  andi        $t9, $t7, 0xffff
/* 05A760 8005ABB0 01202025 */  move        $a0, $t1
/* 05A764 8005ABB4 00465823 */  subu        $t3, $v0, $a2
/* 05A768 8005ABB8 3C180400 */  lui         $t8, 0x400
/* 05A76C 8005ABBC AD190004 */  sw          $t9, 0x4($t0)
/* 05A770 8005ABC0 AD0C0000 */  sw          $t4, 0x0($t0)
/* 05A774 8005ABC4 AC8B0004 */  sw          $t3, 0x4($a0)
/* 05A778 8005ABC8 AC980000 */  sw          $t8, 0x0($a0)
/* 05A77C 8005ABCC 10000002 */  b           .L8005ABD8
/* 05A780 8005ABD0 25290008 */   addiu      $t1, $t1, 0x8
.L8005ABD4:
/* 05A784 8005ABD4 00003025 */  move        $a2, $zero
.L8005ABD8:
/* 05A788 8005ABD8 854C0000 */  lh          $t4, 0x0($t2)
/* 05A78C 8005ABDC 0253082A */  slt         $at, $s2, $s3
/* 05A790 8005ABE0 01866821 */  addu        $t5, $t4, $a2
/* 05A794 8005ABE4 A54D0000 */  sh          $t5, 0x0($t2)
/* 05A798 8005ABE8 8E0E0028 */  lw          $t6, 0x28($s0)
/* 05A79C 8005ABEC 8E02001C */  lw          $v0, 0x1c($s0)
/* 05A7A0 8005ABF0 8DCF0000 */  lw          $t7, 0x0($t6)
/* 05A7A4 8005ABF4 0002C840 */  sll         $t9, $v0, 1
/* 05A7A8 8005ABF8 AE020038 */  sw          $v0, 0x38($s0)
/* 05A7AC 8005ABFC 01F9C021 */  addu        $t8, $t7, $t9
/* 05A7B0 8005AC00 AE180044 */  sw          $t8, 0x44($s0)
/* 05A7B4 8005AC04 10200049 */  beqz        $at, .L8005AD2C
/* 05A7B8 8005AC08 85480000 */   lh         $t0, 0x0($t2)
/* 05A7BC 8005AC0C 8E020024 */  lw          $v0, 0x24($s0)
.L8005AC10:
/* 05A7C0 8005AC10 2401FFFF */  addiu       $at, $zero, -0x1
/* 05A7C4 8005AC14 01114021 */  addu        $t0, $t0, $s1
/* 05A7C8 8005AC18 10410004 */  beq         $v0, $at, .L8005AC2C
/* 05A7CC 8005AC1C 02729823 */   subu       $s3, $s3, $s2
/* 05A7D0 8005AC20 10400002 */  beqz        $v0, .L8005AC2C
/* 05A7D4 8005AC24 244BFFFF */   addiu      $t3, $v0, -0x1
/* 05A7D8 8005AC28 AE0B0024 */  sw          $t3, 0x24($s0)
.L8005AC2C:
/* 05A7DC 8005AC2C 8E0C0020 */  lw          $t4, 0x20($s0)
/* 05A7E0 8005AC30 8E0D001C */  lw          $t5, 0x1c($s0)
/* 05A7E4 8005AC34 018D1023 */  subu        $v0, $t4, $t5
/* 05A7E8 8005AC38 0262082B */  sltu        $at, $s3, $v0
/* 05A7EC 8005AC3C 10200003 */  beqz        $at, .L8005AC4C
/* 05A7F0 8005AC40 00409025 */   move       $s2, $v0
/* 05A7F4 8005AC44 10000001 */  b           .L8005AC4C
/* 05A7F8 8005AC48 02609025 */   move       $s2, $s3
.L8005AC4C:
/* 05A7FC 8005AC4C 8E040044 */  lw          $a0, 0x44($s0)
/* 05A800 8005AC50 8E060034 */  lw          $a2, 0x34($s0)
/* 05A804 8005AC54 AFA9004C */  sw          $t1, 0x4c($sp)
/* 05A808 8005AC58 AFA8002C */  sw          $t0, 0x2c($sp)
/* 05A80C 8005AC5C 8E190030 */  lw          $t9, 0x30($s0)
/* 05A810 8005AC60 00128840 */  sll         $s1, $s2, 1
/* 05A814 8005AC64 02202825 */  move        $a1, $s1
/* 05A818 8005AC68 0320F809 */  jalr        $t9
/* 05A81C 8005AC6C 00000000 */   nop
/* 05A820 8005AC70 8FA8002C */  lw          $t0, 0x2c($sp)
/* 05A824 8005AC74 30450007 */  andi        $a1, $v0, 0x7
/* 05A828 8005AC78 8FA9004C */  lw          $t1, 0x4c($sp)
/* 05A82C 8005AC7C 31030007 */  andi        $v1, $t0, 0x7
/* 05A830 8005AC80 10600004 */  beqz        $v1, .L8005AC94
/* 05A834 8005AC84 02253821 */   addu       $a3, $s1, $a1
/* 05A838 8005AC88 240E0008 */  addiu       $t6, $zero, 0x8
/* 05A83C 8005AC8C 10000002 */  b           .L8005AC98
/* 05A840 8005AC90 01C33023 */   subu       $a2, $t6, $v1
.L8005AC94:
/* 05A844 8005AC94 00003025 */  move        $a2, $zero
.L8005AC98:
/* 05A848 8005AC98 01067821 */  addu        $t7, $t0, $a2
/* 05A84C 8005AC9C 30EC0007 */  andi        $t4, $a3, 0x7
/* 05A850 8005ACA0 00EC6823 */  subu        $t5, $a3, $t4
/* 05A854 8005ACA4 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05A858 8005ACA8 01201825 */  move        $v1, $t1
/* 05A85C 8005ACAC 3C010800 */  lui         $at, 0x800
/* 05A860 8005ACB0 03015825 */  or          $t3, $t8, $at
/* 05A864 8005ACB4 25290008 */  addiu       $t1, $t1, 0x8
/* 05A868 8005ACB8 25B90008 */  addiu       $t9, $t5, 0x8
/* 05A86C 8005ACBC 332EFFFF */  andi        $t6, $t9, 0xffff
/* 05A870 8005ACC0 01202025 */  move        $a0, $t1
/* 05A874 8005ACC4 AC6E0004 */  sw          $t6, 0x4($v1)
/* 05A878 8005ACC8 AC6B0000 */  sw          $t3, 0x0($v1)
/* 05A87C 8005ACCC 0045C023 */  subu        $t8, $v0, $a1
/* 05A880 8005ACD0 3C0F0400 */  lui         $t7, 0x400
/* 05A884 8005ACD4 AC8F0000 */  sw          $t7, 0x0($a0)
/* 05A888 8005ACD8 AC980004 */  sw          $t8, 0x4($a0)
/* 05A88C 8005ACDC 14A00002 */  bnez        $a1, .L8005ACE8
/* 05A890 8005ACE0 25290008 */   addiu      $t1, $t1, 0x8
/* 05A894 8005ACE4 10C0000E */  beqz        $a2, .L8005AD20
.L8005ACE8:
/* 05A898 8005ACE8 01055821 */   addu       $t3, $t0, $a1
/* 05A89C 8005ACEC 3C0100FF */  lui         $at, 0xff
/* 05A8A0 8005ACF0 3421FFFF */  ori         $at, $at, 0xffff
/* 05A8A4 8005ACF4 01666021 */  addu        $t4, $t3, $a2
/* 05A8A8 8005ACF8 01816824 */  and         $t5, $t4, $at
/* 05A8AC 8005ACFC 01201025 */  move        $v0, $t1
/* 05A8B0 8005AD00 3C010A00 */  lui         $at, 0xa00
/* 05A8B4 8005AD04 00087C00 */  sll         $t7, $t0, 16
/* 05A8B8 8005AD08 3238FFFF */  andi        $t8, $s1, 0xffff
/* 05A8BC 8005AD0C 01F85825 */  or          $t3, $t7, $t8
/* 05A8C0 8005AD10 01A1C825 */  or          $t9, $t5, $at
/* 05A8C4 8005AD14 AC590000 */  sw          $t9, 0x0($v0)
/* 05A8C8 8005AD18 AC4B0004 */  sw          $t3, 0x4($v0)
/* 05A8CC 8005AD1C 25290008 */  addiu       $t1, $t1, 0x8
.L8005AD20:
/* 05A8D0 8005AD20 0253082A */  slt         $at, $s2, $s3
/* 05A8D4 8005AD24 5420FFBA */  bnel        $at, $zero, .L8005AC10
/* 05A8D8 8005AD28 8E020024 */   lw         $v0, 0x24($s0)
.L8005AD2C:
/* 05A8DC 8005AD2C 8E0C0038 */  lw          $t4, 0x38($s0)
/* 05A8E0 8005AD30 8E190044 */  lw          $t9, 0x44($s0)
/* 05A8E4 8005AD34 00137040 */  sll         $t6, $s3, 1
/* 05A8E8 8005AD38 01936821 */  addu        $t5, $t4, $s3
/* 05A8EC 8005AD3C 032E7821 */  addu        $t7, $t9, $t6
/* 05A8F0 8005AD40 AE0D0038 */  sw          $t5, 0x38($s0)
/* 05A8F4 8005AD44 AE0F0044 */  sw          $t7, 0x44($s0)
/* 05A8F8 8005AD48 1000004E */  b           .L8005AE84
/* 05A8FC 8005AD4C 01201025 */   move       $v0, $t1
/* 05A900 8005AD50 8E020028 */  lw          $v0, 0x28($s0)
.L8005AD54:
/* 05A904 8005AD54 8E040044 */  lw          $a0, 0x44($s0)
/* 05A908 8005AD58 00138840 */  sll         $s1, $s3, 1
/* 05A90C 8005AD5C 8C580000 */  lw          $t8, 0x0($v0)
/* 05A910 8005AD60 8C4C0004 */  lw          $t4, 0x4($v0)
/* 05A914 8005AD64 00911821 */  addu        $v1, $a0, $s1
/* 05A918 8005AD68 00785823 */  subu        $t3, $v1, $t8
/* 05A91C 8005AD6C 016C9023 */  subu        $s2, $t3, $t4
/* 05A920 8005AD70 06430003 */  bgezl       $s2, .L8005AD80
/* 05A924 8005AD74 0232082A */   slt        $at, $s1, $s2
/* 05A928 8005AD78 00009025 */  move        $s2, $zero
/* 05A92C 8005AD7C 0232082A */  slt         $at, $s1, $s2
.L8005AD80:
/* 05A930 8005AD80 50200003 */  beql        $at, $zero, .L8005AD90
/* 05A934 8005AD84 0251082A */   slt        $at, $s2, $s1
/* 05A938 8005AD88 02209025 */  move        $s2, $s1
/* 05A93C 8005AD8C 0251082A */  slt         $at, $s2, $s1
.L8005AD90:
/* 05A940 8005AD90 5020002C */  beql        $at, $zero, .L8005AE44
/* 05A944 8005AD94 AE030044 */   sw         $v1, 0x44($s0)
/* 05A948 8005AD98 1A60001F */  blez        $s3, .L8005AE18
/* 05A94C 8005AD9C 00003025 */   move       $a2, $zero
/* 05A950 8005ADA0 8E060034 */  lw          $a2, 0x34($s0)
/* 05A954 8005ADA4 02322823 */  subu        $a1, $s1, $s2
/* 05A958 8005ADA8 AFA50048 */  sw          $a1, 0x48($sp)
/* 05A95C 8005ADAC AFAA0054 */  sw          $t2, 0x54($sp)
/* 05A960 8005ADB0 8E190030 */  lw          $t9, 0x30($s0)
/* 05A964 8005ADB4 0320F809 */  jalr        $t9
/* 05A968 8005ADB8 00000000 */   nop
/* 05A96C 8005ADBC 8FAA0054 */  lw          $t2, 0x54($sp)
/* 05A970 8005ADC0 8FA70048 */  lw          $a3, 0x48($sp)
/* 05A974 8005ADC4 30460007 */  andi        $a2, $v0, 0x7
/* 05A978 8005ADC8 854D0000 */  lh          $t5, 0x0($t2)
/* 05A97C 8005ADCC 8FA80060 */  lw          $t0, 0x60($sp)
/* 05A980 8005ADD0 00E63821 */  addu        $a3, $a3, $a2
/* 05A984 8005ADD4 30F80007 */  andi        $t8, $a3, 0x7
/* 05A988 8005ADD8 00F85823 */  subu        $t3, $a3, $t8
/* 05A98C 8005ADDC 3C010800 */  lui         $at, 0x800
/* 05A990 8005ADE0 31AEFFFF */  andi        $t6, $t5, 0xffff
/* 05A994 8005ADE4 01C17825 */  or          $t7, $t6, $at
/* 05A998 8005ADE8 256C0008 */  addiu       $t4, $t3, 0x8
/* 05A99C 8005ADEC 25090008 */  addiu       $t1, $t0, 0x8
/* 05A9A0 8005ADF0 3199FFFF */  andi        $t9, $t4, 0xffff
/* 05A9A4 8005ADF4 01202025 */  move        $a0, $t1
/* 05A9A8 8005ADF8 00467023 */  subu        $t6, $v0, $a2
/* 05A9AC 8005ADFC 3C0D0400 */  lui         $t5, 0x400
/* 05A9B0 8005AE00 AD190004 */  sw          $t9, 0x4($t0)
/* 05A9B4 8005AE04 AD0F0000 */  sw          $t7, 0x0($t0)
/* 05A9B8 8005AE08 AC8E0004 */  sw          $t6, 0x4($a0)
/* 05A9BC 8005AE0C AC8D0000 */  sw          $t5, 0x0($a0)
/* 05A9C0 8005AE10 10000001 */  b           .L8005AE18
/* 05A9C4 8005AE14 25290008 */   addiu      $t1, $t1, 0x8
.L8005AE18:
/* 05A9C8 8005AE18 854F0000 */  lh          $t7, 0x0($t2)
/* 05A9CC 8005AE1C 01E6C021 */  addu        $t8, $t7, $a2
/* 05A9D0 8005AE20 A5580000 */  sh          $t8, 0x0($t2)
/* 05A9D4 8005AE24 8E0B0038 */  lw          $t3, 0x38($s0)
/* 05A9D8 8005AE28 8E190044 */  lw          $t9, 0x44($s0)
/* 05A9DC 8005AE2C 01736021 */  addu        $t4, $t3, $s3
/* 05A9E0 8005AE30 03316821 */  addu        $t5, $t9, $s1
/* 05A9E4 8005AE34 AE0C0038 */  sw          $t4, 0x38($s0)
/* 05A9E8 8005AE38 10000002 */  b           .L8005AE44
/* 05A9EC 8005AE3C AE0D0044 */   sw         $t5, 0x44($s0)
/* 05A9F0 8005AE40 AE030044 */  sw          $v1, 0x44($s0)
.L8005AE44:
/* 05A9F4 8005AE44 1240000E */  beqz        $s2, .L8005AE80
/* 05A9F8 8005AE48 02321823 */   subu       $v1, $s1, $s2
/* 05A9FC 8005AE4C 04610002 */  bgez        $v1, .L8005AE58
/* 05AA00 8005AE50 01201025 */   move       $v0, $t1
/* 05AA04 8005AE54 00001825 */  move        $v1, $zero
.L8005AE58:
/* 05AA08 8005AE58 854E0000 */  lh          $t6, 0x0($t2)
/* 05AA0C 8005AE5C 3C0100FF */  lui         $at, 0xff
/* 05AA10 8005AE60 3421FFFF */  ori         $at, $at, 0xffff
/* 05AA14 8005AE64 01C37821 */  addu        $t7, $t6, $v1
/* 05AA18 8005AE68 01E1C024 */  and         $t8, $t7, $at
/* 05AA1C 8005AE6C 3C010200 */  lui         $at, 0x200
/* 05AA20 8005AE70 03015825 */  or          $t3, $t8, $at
/* 05AA24 8005AE74 AC4B0000 */  sw          $t3, 0x0($v0)
/* 05AA28 8005AE78 AC520004 */  sw          $s2, 0x4($v0)
/* 05AA2C 8005AE7C 25290008 */  addiu       $t1, $t1, 0x8
.L8005AE80:
/* 05AA30 8005AE80 01201025 */  move        $v0, $t1
.L8005AE84:
/* 05AA34 8005AE84 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05AA38 8005AE88 8FB00014 */  lw          $s0, 0x14($sp)
/* 05AA3C 8005AE8C 8FB10018 */  lw          $s1, 0x18($sp)
/* 05AA40 8005AE90 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05AA44 8005AE94 8FB30020 */  lw          $s3, 0x20($sp)
/* 05AA48 8005AE98 03E00008 */  jr          $ra
/* 05AA4C 8005AE9C 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8005AEA0 # 2
/* 05AA50 8005AEA0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05AA54 8005AEA4 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05AA58 8005AEA8 AFB50028 */  sw          $s5, 0x28($sp)
/* 05AA5C 8005AEAC 00137400 */  sll         $t6, $s3, 16
/* 05AA60 8005AEB0 0015C400 */  sll         $t8, $s5, 16
/* 05AA64 8005AEB4 0018AC03 */  sra         $s5, $t8, 16
/* 05AA68 8005AEB8 000E9C03 */  sra         $s3, $t6, 16
/* 05AA6C 8005AEBC 1A20001A */  blez        $s1, .L8005AF28
/* 05AA70 8005AEC0 AFBF0014 */   sw         $ra, 0x14($sp)
/* 05AA74 8005AEC4 8E590030 */  lw          $t9, 0x30($s2)
/* 05AA78 8005AEC8 8E440044 */  lw          $a0, 0x44($s2)
/* 05AA7C 8005AECC 02202825 */  move        $a1, $s1
/* 05AA80 8005AED0 0320F809 */  jalr        $t9
/* 05AA84 8005AED4 8E460034 */   lw         $a2, 0x34($s2)
/* 05AA88 8005AED8 30460007 */  andi        $a2, $v0, 0x7
/* 05AA8C 8005AEDC 02268821 */  addu        $s1, $s1, $a2
/* 05AA90 8005AEE0 326EFFFF */  andi        $t6, $s3, 0xffff
/* 05AA94 8005AEE4 3C010800 */  lui         $at, 0x800
/* 05AA98 8005AEE8 01C17825 */  or          $t7, $t6, $at
/* 05AA9C 8005AEEC 32380007 */  andi        $t8, $s1, 0x7
/* 05AAA0 8005AEF0 02002025 */  move        $a0, $s0
/* 05AAA4 8005AEF4 0238C823 */  subu        $t9, $s1, $t8
/* 05AAA8 8005AEF8 272E0008 */  addiu       $t6, $t9, 0x8
/* 05AAAC 8005AEFC AC8F0000 */  sw          $t7, 0x0($a0)
/* 05AAB0 8005AF00 26100008 */  addiu       $s0, $s0, 0x8
/* 05AAB4 8005AF04 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 05AAB8 8005AF08 02002825 */  move        $a1, $s0
/* 05AABC 8005AF0C AC8F0004 */  sw          $t7, 0x4($a0)
/* 05AAC0 8005AF10 0046C823 */  subu        $t9, $v0, $a2
/* 05AAC4 8005AF14 3C180400 */  lui         $t8, 0x400
/* 05AAC8 8005AF18 ACB80000 */  sw          $t8, 0x0($a1)
/* 05AACC 8005AF1C ACB90004 */  sw          $t9, 0x4($a1)
/* 05AAD0 8005AF20 10000002 */  b           .L8005AF2C
/* 05AAD4 8005AF24 26100008 */   addiu      $s0, $s0, 0x8
.L8005AF28:
/* 05AAD8 8005AF28 00003025 */  move        $a2, $zero
.L8005AF2C:
/* 05AADC 8005AF2C 328E0002 */  andi        $t6, $s4, 0x2
/* 05AAE0 8005AF30 11C00009 */  beqz        $t6, .L8005AF58
/* 05AAE4 8005AF34 02001025 */   move       $v0, $s0
/* 05AAE8 8005AF38 3C0F0F00 */  lui         $t7, 0xf00
/* 05AAEC 8005AF3C AC4F0000 */  sw          $t7, 0x0($v0)
/* 05AAF0 8005AF40 8E580018 */  lw          $t8, 0x18($s2)
/* 05AAF4 8005AF44 3C011FFF */  lui         $at, 0x1fff
/* 05AAF8 8005AF48 3421FFFF */  ori         $at, $at, 0xffff
/* 05AAFC 8005AF4C 0301C824 */  and         $t9, $t8, $at
/* 05AB00 8005AF50 AC590004 */  sw          $t9, 0x4($v0)
/* 05AB04 8005AF54 26100008 */  addiu       $s0, $s0, 0x8
.L8005AF58:
/* 05AB08 8005AF58 02667021 */  addu        $t6, $s3, $a2
/* 05AB0C 8005AF5C 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 05AB10 8005AF60 3C010800 */  lui         $at, 0x800
/* 05AB14 8005AF64 01E1C025 */  or          $t8, $t7, $at
/* 05AB18 8005AF68 02001825 */  move        $v1, $s0
/* 05AB1C 8005AF6C AC780000 */  sw          $t8, 0x0($v1)
/* 05AB20 8005AF70 00167840 */  sll         $t7, $s6, 1
/* 05AB24 8005AF74 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05AB28 8005AF78 00157400 */  sll         $t6, $s5, 16
/* 05AB2C 8005AF7C 01D8C825 */  or          $t9, $t6, $t8
/* 05AB30 8005AF80 328F00FF */  andi        $t7, $s4, 0xff
/* 05AB34 8005AF84 26100008 */  addiu       $s0, $s0, 0x8
/* 05AB38 8005AF88 000F7400 */  sll         $t6, $t7, 16
/* 05AB3C 8005AF8C 3C010100 */  lui         $at, 0x100
/* 05AB40 8005AF90 AC790004 */  sw          $t9, 0x4($v1)
/* 05AB44 8005AF94 01C1C025 */  or          $t8, $t6, $at
/* 05AB48 8005AF98 02002025 */  move        $a0, $s0
/* 05AB4C 8005AF9C AC980000 */  sw          $t8, 0x0($a0)
/* 05AB50 8005AFA0 8E590014 */  lw          $t9, 0x14($s2)
/* 05AB54 8005AFA4 3C011FFF */  lui         $at, 0x1fff
/* 05AB58 8005AFA8 3421FFFF */  ori         $at, $at, 0xffff
/* 05AB5C 8005AFAC 03217824 */  and         $t7, $t9, $at
/* 05AB60 8005AFB0 AC8F0004 */  sw          $t7, 0x4($a0)
/* 05AB64 8005AFB4 AE400040 */  sw          $zero, 0x40($s2)
/* 05AB68 8005AFB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05AB6C 8005AFBC 26100008 */  addiu       $s0, $s0, 0x8
/* 05AB70 8005AFC0 02001025 */  move        $v0, $s0
/* 05AB74 8005AFC4 03E00008 */  jr          $ra
/* 05AB78 8005AFC8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8005AFCC # 3
/* 05AB7C 8005AFCC 27BDFF50 */  addiu       $sp, $sp, -0xb0
/* 05AB80 8005AFD0 AFB70044 */  sw          $s7, 0x44($sp)
/* 05AB84 8005AFD4 AFA700BC */  sw          $a3, 0xbc($sp)
/* 05AB88 8005AFD8 00A03825 */  move        $a3, $a1
/* 05AB8C 8005AFDC 0080B825 */  move        $s7, $a0
/* 05AB90 8005AFE0 AFBF004C */  sw          $ra, 0x4c($sp)
/* 05AB94 8005AFE4 AFBE0048 */  sw          $fp, 0x48($sp)
/* 05AB98 8005AFE8 AFB60040 */  sw          $s6, 0x40($sp)
/* 05AB9C 8005AFEC AFB5003C */  sw          $s5, 0x3c($sp)
/* 05ABA0 8005AFF0 AFB40038 */  sw          $s4, 0x38($sp)
/* 05ABA4 8005AFF4 AFB30034 */  sw          $s3, 0x34($sp)
/* 05ABA8 8005AFF8 AFB20030 */  sw          $s2, 0x30($sp)
/* 05ABAC 8005AFFC AFB1002C */  sw          $s1, 0x2c($sp)
/* 05ABB0 8005B000 AFB00028 */  sw          $s0, 0x28($sp)
/* 05ABB4 8005B004 AFA500B4 */  sw          $a1, 0xb4($sp)
/* 05ABB8 8005B008 00C04025 */  move        $t0, $a2
/* 05ABBC 8005B00C 14C00003 */  bnez        $a2, .L8005B01C
/* 05ABC0 8005B010 00006825 */   move       $t5, $zero
/* 05ABC4 8005B014 10000109 */  b           .L8005B43C
/* 05ABC8 8005B018 8FA200C0 */   lw         $v0, 0xc0($sp)
.L8005B01C:
/* 05ABCC 8005B01C 8EEE002C */  lw          $t6, 0x2c($s7)
/* 05ABD0 8005B020 3C0100FF */  lui         $at, 0xff
/* 05ABD4 8005B024 3421FFFF */  ori         $at, $at, 0xffff
/* 05ABD8 8005B028 8FA500C0 */  lw          $a1, 0xc0($sp)
/* 05ABDC 8005B02C 01C17824 */  and         $t7, $t6, $at
/* 05ABE0 8005B030 3C010B00 */  lui         $at, 0xb00
/* 05ABE4 8005B034 01E1C025 */  or          $t8, $t7, $at
/* 05ABE8 8005B038 ACB80000 */  sw          $t8, 0x0($a1)
/* 05ABEC 8005B03C 8EF90028 */  lw          $t9, 0x28($s7)
/* 05ABF0 8005B040 3C011FFF */  lui         $at, 0x1fff
/* 05ABF4 8005B044 3421FFFF */  ori         $at, $at, 0xffff
/* 05ABF8 8005B048 8F2E0010 */  lw          $t6, 0x10($t9)
/* 05ABFC 8005B04C 24AA0008 */  addiu       $t2, $a1, 0x8
/* 05AC00 8005B050 00003025 */  move        $a2, $zero
/* 05AC04 8005B054 25CF0008 */  addiu       $t7, $t6, 0x8
/* 05AC08 8005B058 01E1C024 */  and         $t8, $t7, $at
/* 05AC0C 8005B05C ACB80004 */  sw          $t8, 0x4($a1)
/* 05AC10 8005B060 8EE30038 */  lw          $v1, 0x38($s7)
/* 05AC14 8005B064 8EE40020 */  lw          $a0, 0x20($s7)
/* 05AC18 8005B068 01002825 */  move        $a1, $t0
/* 05AC1C 8005B06C 0068C821 */  addu        $t9, $v1, $t0
/* 05AC20 8005B070 0099482B */  sltu        $t1, $a0, $t9
/* 05AC24 8005B074 11200004 */  beqz        $t1, .L8005B088
/* 05AC28 8005B078 240F0010 */   addiu      $t7, $zero, 0x10
/* 05AC2C 8005B07C 8EE90024 */  lw          $t1, 0x24($s7)
/* 05AC30 8005B080 0009702B */  sltu        $t6, $zero, $t1
/* 05AC34 8005B084 01C04825 */  move        $t1, $t6
.L8005B088:
/* 05AC38 8005B088 11200003 */  beqz        $t1, .L8005B098
/* 05AC3C 8005B08C 24010009 */   addiu      $at, $zero, 0x9
/* 05AC40 8005B090 10000001 */  b           .L8005B098
/* 05AC44 8005B094 00832823 */   subu       $a1, $a0, $v1
.L8005B098:
/* 05AC48 8005B098 8EE3003C */  lw          $v1, 0x3c($s7)
/* 05AC4C 8005B09C 01408025 */  move        $s0, $t2
/* 05AC50 8005B0A0 02E09025 */  move        $s2, $s7
/* 05AC54 8005B0A4 10600003 */  beqz        $v1, .L8005B0B4
/* 05AC58 8005B0A8 00009825 */   move       $s3, $zero
/* 05AC5C 8005B0AC 10000001 */  b           .L8005B0B4
/* 05AC60 8005B0B0 01E33023 */   subu       $a2, $t7, $v1
.L8005B0B4:
/* 05AC64 8005B0B4 00A62023 */  subu        $a0, $a1, $a2
/* 05AC68 8005B0B8 04810002 */  bgez        $a0, .L8005B0C4
/* 05AC6C 8005B0BC 00000000 */   nop
/* 05AC70 8005B0C0 00002025 */  move        $a0, $zero
.L8005B0C4:
/* 05AC74 8005B0C4 11200081 */  beqz        $t1, .L8005B2CC
/* 05AC78 8005B0C8 249E000F */   addiu      $fp, $a0, 0xf
/* 05AC7C 8005B0CC 249E000F */  addiu       $fp, $a0, 0xf
/* 05AC80 8005B0D0 001EC103 */  sra         $t8, $fp, 4
/* 05AC84 8005B0D4 84F50000 */  lh          $s5, 0x0($a3)
/* 05AC88 8005B0D8 8EF40040 */  lw          $s4, 0x40($s7)
/* 05AC8C 8005B0DC 001848C0 */  sll         $t1, $t8, 3
/* 05AC90 8005B0E0 01384821 */  addu        $t1, $t1, $t8
/* 05AC94 8005B0E4 01208825 */  move        $s1, $t1
/* 05AC98 8005B0E8 AFA9005C */  sw          $t1, 0x5c($sp)
/* 05AC9C 8005B0EC AFA800B8 */  sw          $t0, 0xb8($sp)
/* 05ACA0 8005B0F0 AFA700B4 */  sw          $a3, 0xb4($sp)
/* 05ACA4 8005B0F4 AFA5008C */  sw          $a1, 0x8c($sp)
/* 05ACA8 8005B0F8 0300F025 */  move        $fp, $t8
/* 05ACAC 8005B0FC 0C016BA8 */  jal         func_8005AEA0
/* 05ACB0 8005B100 0080B025 */   move       $s6, $a0
/* 05ACB4 8005B104 8EE3003C */  lw          $v1, 0x3c($s7)
/* 05ACB8 8005B108 8FA5008C */  lw          $a1, 0x8c($sp)
/* 05ACBC 8005B10C 8FA700B4 */  lw          $a3, 0xb4($sp)
/* 05ACC0 8005B110 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 05ACC4 8005B114 8FA9005C */  lw          $t1, 0x5c($sp)
/* 05ACC8 8005B118 10600006 */  beqz        $v1, .L8005B134
/* 05ACCC 8005B11C 00405025 */   move       $t2, $v0
/* 05ACD0 8005B120 84F90000 */  lh          $t9, 0x0($a3)
/* 05ACD4 8005B124 00037040 */  sll         $t6, $v1, 1
/* 05ACD8 8005B128 032E7821 */  addu        $t7, $t9, $t6
/* 05ACDC 8005B12C 10000004 */  b           .L8005B140
/* 05ACE0 8005B130 A4EF0000 */   sh         $t7, 0x0($a3)
.L8005B134:
/* 05ACE4 8005B134 84F80000 */  lh          $t8, 0x0($a3)
/* 05ACE8 8005B138 27190020 */  addiu       $t9, $t8, 0x20
/* 05ACEC 8005B13C A4F90000 */  sh          $t9, 0x0($a3)
.L8005B140:
/* 05ACF0 8005B140 8EE2001C */  lw          $v0, 0x1c($s7)
/* 05ACF4 8005B144 8EEF0028 */  lw          $t7, 0x28($s7)
/* 05ACF8 8005B148 00A8082A */  slt         $at, $a1, $t0
/* 05ACFC 8005B14C 304E000F */  andi        $t6, $v0, 0xf
/* 05AD00 8005B150 AEEE003C */  sw          $t6, 0x3c($s7)
/* 05AD04 8005B154 8DF80000 */  lw          $t8, 0x0($t7)
/* 05AD08 8005B158 0002C902 */  srl         $t9, $v0, 4
/* 05AD0C 8005B15C 001970C0 */  sll         $t6, $t9, 3
/* 05AD10 8005B160 01D97021 */  addu        $t6, $t6, $t9
/* 05AD14 8005B164 030E7821 */  addu        $t7, $t8, $t6
/* 05AD18 8005B168 25F90009 */  addiu       $t9, $t7, 0x9
/* 05AD1C 8005B16C AEF90044 */  sw          $t9, 0x44($s7)
/* 05AD20 8005B170 AEE20038 */  sw          $v0, 0x38($s7)
/* 05AD24 8005B174 10200049 */  beqz        $at, .L8005B29C
/* 05AD28 8005B178 84E60000 */   lh         $a2, 0x0($a3)
/* 05AD2C 8005B17C 00051840 */  sll         $v1, $a1, 1
.L8005B180:
/* 05AD30 8005B180 27D80001 */  addiu       $t8, $fp, 0x1
/* 05AD34 8005B184 00187140 */  sll         $t6, $t8, 5
/* 05AD38 8005B188 8EE20024 */  lw          $v0, 0x24($s7)
/* 05AD3C 8005B18C 01C63821 */  addu        $a3, $t6, $a2
/* 05AD40 8005B190 2401FFE0 */  addiu       $at, $zero, -0x20
/* 05AD44 8005B194 00E17824 */  and         $t7, $a3, $at
/* 05AD48 8005B198 2401FFFF */  addiu       $at, $zero, -0x1
/* 05AD4C 8005B19C 01054023 */  subu        $t0, $t0, $a1
/* 05AD50 8005B1A0 01E03825 */  move        $a3, $t7
/* 05AD54 8005B1A4 10410004 */  beq         $v0, $at, .L8005B1B8
/* 05AD58 8005B1A8 00C33021 */   addu       $a2, $a2, $v1
/* 05AD5C 8005B1AC 10400002 */  beqz        $v0, .L8005B1B8
/* 05AD60 8005B1B0 2459FFFF */   addiu      $t9, $v0, -0x1
/* 05AD64 8005B1B4 AEF90024 */  sw          $t9, 0x24($s7)
.L8005B1B8:
/* 05AD68 8005B1B8 8EF80020 */  lw          $t8, 0x20($s7)
/* 05AD6C 8005B1BC 8EEE001C */  lw          $t6, 0x1c($s7)
/* 05AD70 8005B1C0 01408025 */  move        $s0, $t2
/* 05AD74 8005B1C4 02E09025 */  move        $s2, $s7
/* 05AD78 8005B1C8 030E1023 */  subu        $v0, $t8, $t6
/* 05AD7C 8005B1CC 0102082B */  sltu        $at, $t0, $v0
/* 05AD80 8005B1D0 10200003 */  beqz        $at, .L8005B1E0
/* 05AD84 8005B1D4 0007AC00 */   sll        $s5, $a3, 16
/* 05AD88 8005B1D8 10000002 */  b           .L8005B1E4
/* 05AD8C 8005B1DC 01002825 */   move       $a1, $t0
.L8005B1E0:
/* 05AD90 8005B1E0 00402825 */  move        $a1, $v0
.L8005B1E4:
/* 05AD94 8005B1E4 8EEF003C */  lw          $t7, 0x3c($s7)
/* 05AD98 8005B1E8 0015C403 */  sra         $t8, $s5, 16
/* 05AD9C 8005B1EC 0300A825 */  move        $s5, $t8
/* 05ADA0 8005B1F0 00AF2021 */  addu        $a0, $a1, $t7
/* 05ADA4 8005B1F4 2484FFF0 */  addiu       $a0, $a0, -0x10
/* 05ADA8 8005B1F8 04810002 */  bgez        $a0, .L8005B204
/* 05ADAC 8005B1FC 00009825 */   move       $s3, $zero
/* 05ADB0 8005B200 00002025 */  move        $a0, $zero
.L8005B204:
/* 05ADB4 8005B204 8EF40040 */  lw          $s4, 0x40($s7)
/* 05ADB8 8005B208 249E000F */  addiu       $fp, $a0, 0xf
/* 05ADBC 8005B20C 001EC903 */  sra         $t9, $fp, 4
/* 05ADC0 8005B210 001948C0 */  sll         $t1, $t9, 3
/* 05ADC4 8005B214 01394821 */  addu        $t1, $t1, $t9
/* 05ADC8 8005B218 368E0002 */  ori         $t6, $s4, 0x2
/* 05ADCC 8005B21C 01C0A025 */  move        $s4, $t6
/* 05ADD0 8005B220 01208825 */  move        $s1, $t1
/* 05ADD4 8005B224 AFA9005C */  sw          $t1, 0x5c($sp)
/* 05ADD8 8005B228 0320F025 */  move        $fp, $t9
/* 05ADDC 8005B22C AFA800B8 */  sw          $t0, 0xb8($sp)
/* 05ADE0 8005B230 AFA70088 */  sw          $a3, 0x88($sp)
/* 05ADE4 8005B234 AFA60080 */  sw          $a2, 0x80($sp)
/* 05ADE8 8005B238 AFA5008C */  sw          $a1, 0x8c($sp)
/* 05ADEC 8005B23C 0C016BA8 */  jal         func_8005AEA0
/* 05ADF0 8005B240 0080B025 */   move       $s6, $a0
/* 05ADF4 8005B244 8EEF003C */  lw          $t7, 0x3c($s7)
/* 05ADF8 8005B248 8FA70088 */  lw          $a3, 0x88($sp)
/* 05ADFC 8005B24C 3C0100FF */  lui         $at, 0xff
/* 05AE00 8005B250 000FC840 */  sll         $t9, $t7, 1
/* 05AE04 8005B254 3421FFFF */  ori         $at, $at, 0xffff
/* 05AE08 8005B258 0327C021 */  addu        $t8, $t9, $a3
/* 05AE0C 8005B25C 03017024 */  and         $t6, $t8, $at
/* 05AE10 8005B260 8FA5008C */  lw          $a1, 0x8c($sp)
/* 05AE14 8005B264 3C010A00 */  lui         $at, 0xa00
/* 05AE18 8005B268 8FA60080 */  lw          $a2, 0x80($sp)
/* 05AE1C 8005B26C 01C17825 */  or          $t7, $t6, $at
/* 05AE20 8005B270 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 05AE24 8005B274 8FA9005C */  lw          $t1, 0x5c($sp)
/* 05AE28 8005B278 00051840 */  sll         $v1, $a1, 1
/* 05AE2C 8005B27C 306EFFFF */  andi        $t6, $v1, 0xffff
/* 05AE30 8005B280 AC4F0000 */  sw          $t7, 0x0($v0)
/* 05AE34 8005B284 0006C400 */  sll         $t8, $a2, 16
/* 05AE38 8005B288 030E7825 */  or          $t7, $t8, $t6
/* 05AE3C 8005B28C 00A8082A */  slt         $at, $a1, $t0
/* 05AE40 8005B290 AC4F0004 */  sw          $t7, 0x4($v0)
/* 05AE44 8005B294 1420FFBA */  bnez        $at, .L8005B180
/* 05AE48 8005B298 244A0008 */   addiu      $t2, $v0, 0x8
.L8005B29C:
/* 05AE4C 8005B29C 8EF9003C */  lw          $t9, 0x3c($s7)
/* 05AE50 8005B2A0 8EEF0038 */  lw          $t7, 0x38($s7)
/* 05AE54 8005B2A4 01401025 */  move        $v0, $t2
/* 05AE58 8005B2A8 0328C021 */  addu        $t8, $t9, $t0
/* 05AE5C 8005B2AC 330E000F */  andi        $t6, $t8, 0xf
/* 05AE60 8005B2B0 8EF80044 */  lw          $t8, 0x44($s7)
/* 05AE64 8005B2B4 AEEE003C */  sw          $t6, 0x3c($s7)
/* 05AE68 8005B2B8 01E8C821 */  addu        $t9, $t7, $t0
/* 05AE6C 8005B2BC 03097021 */  addu        $t6, $t8, $t1
/* 05AE70 8005B2C0 AEF90038 */  sw          $t9, 0x38($s7)
/* 05AE74 8005B2C4 1000005D */  b           .L8005B43C
/* 05AE78 8005B2C8 AEEE0044 */   sw         $t6, 0x44($s7)
.L8005B2CC:
/* 05AE7C 8005B2CC 8EE20028 */  lw          $v0, 0x28($s7)
/* 05AE80 8005B2D0 001E7903 */  sra         $t7, $fp, 4
/* 05AE84 8005B2D4 8EF90044 */  lw          $t9, 0x44($s7)
/* 05AE88 8005B2D8 000F48C0 */  sll         $t1, $t7, 3
/* 05AE8C 8005B2DC 8C580000 */  lw          $t8, 0x0($v0)
/* 05AE90 8005B2E0 012F4821 */  addu        $t1, $t1, $t7
/* 05AE94 8005B2E4 01E0F025 */  move        $fp, $t7
/* 05AE98 8005B2E8 8C4F0004 */  lw          $t7, 0x4($v0)
/* 05AE9C 8005B2EC 03295821 */  addu        $t3, $t9, $t1
/* 05AEA0 8005B2F0 01787023 */  subu        $t6, $t3, $t8
/* 05AEA4 8005B2F4 01CF1823 */  subu        $v1, $t6, $t7
/* 05AEA8 8005B2F8 04610002 */  bgez        $v1, .L8005B304
/* 05AEAC 8005B2FC 001E2900 */   sll        $a1, $fp, 4
/* 05AEB0 8005B300 00001825 */  move        $v1, $zero
.L8005B304:
/* 05AEB4 8005B304 0061001A */  div         $zero, $v1, $at
/* 05AEB8 8005B308 00001012 */  mflo        $v0
/* 05AEBC 8005B30C 00022100 */  sll         $a0, $v0, 4
/* 05AEC0 8005B310 00A66021 */  addu        $t4, $a1, $a2
/* 05AEC4 8005B314 0184082A */  slt         $at, $t4, $a0
/* 05AEC8 8005B318 10200002 */  beqz        $at, .L8005B324
/* 05AECC 8005B31C 01408025 */   move       $s0, $t2
/* 05AED0 8005B320 01802025 */  move        $a0, $t4
.L8005B324:
/* 05AED4 8005B324 3098000F */  andi        $t8, $a0, 0xf
/* 05AED8 8005B328 00987023 */  subu        $t6, $a0, $t8
/* 05AEDC 8005B32C 01C8082A */  slt         $at, $t6, $t0
/* 05AEE0 8005B330 1020002B */  beqz        $at, .L8005B3E0
/* 05AEE4 8005B334 01233023 */   subu       $a2, $t1, $v1
/* 05AEE8 8005B338 84F50000 */  lh          $s5, 0x0($a3)
/* 05AEEC 8005B33C 8EF40040 */  lw          $s4, 0x40($s7)
/* 05AEF0 8005B340 240D0001 */  addiu       $t5, $zero, 0x1
/* 05AEF4 8005B344 AFAD007C */  sw          $t5, 0x7c($sp)
/* 05AEF8 8005B348 AFAC0050 */  sw          $t4, 0x50($sp)
/* 05AEFC 8005B34C AFA9005C */  sw          $t1, 0x5c($sp)
/* 05AF00 8005B350 AFA800B8 */  sw          $t0, 0xb8($sp)
/* 05AF04 8005B354 AFA700B4 */  sw          $a3, 0xb4($sp)
/* 05AF08 8005B358 AFA40090 */  sw          $a0, 0x90($sp)
/* 05AF0C 8005B35C 02E09025 */  move        $s2, $s7
/* 05AF10 8005B360 00A4B023 */  subu        $s6, $a1, $a0
/* 05AF14 8005B364 00C08825 */  move        $s1, $a2
/* 05AF18 8005B368 0C016BA8 */  jal         func_8005AEA0
/* 05AF1C 8005B36C 00009825 */   move       $s3, $zero
/* 05AF20 8005B370 8EE3003C */  lw          $v1, 0x3c($s7)
/* 05AF24 8005B374 8FA40090 */  lw          $a0, 0x90($sp)
/* 05AF28 8005B378 8FA700B4 */  lw          $a3, 0xb4($sp)
/* 05AF2C 8005B37C 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 05AF30 8005B380 8FA9005C */  lw          $t1, 0x5c($sp)
/* 05AF34 8005B384 8FAC0050 */  lw          $t4, 0x50($sp)
/* 05AF38 8005B388 8FAD007C */  lw          $t5, 0x7c($sp)
/* 05AF3C 8005B38C 10600006 */  beqz        $v1, .L8005B3A8
/* 05AF40 8005B390 00405025 */   move       $t2, $v0
/* 05AF44 8005B394 84EF0000 */  lh          $t7, 0x0($a3)
/* 05AF48 8005B398 0003C840 */  sll         $t9, $v1, 1
/* 05AF4C 8005B39C 01F9C021 */  addu        $t8, $t7, $t9
/* 05AF50 8005B3A0 10000004 */  b           .L8005B3B4
/* 05AF54 8005B3A4 A4F80000 */   sh         $t8, 0x0($a3)
.L8005B3A8:
/* 05AF58 8005B3A8 84EE0000 */  lh          $t6, 0x0($a3)
/* 05AF5C 8005B3AC 25CF0020 */  addiu       $t7, $t6, 0x20
/* 05AF60 8005B3B0 A4EF0000 */  sh          $t7, 0x0($a3)
.L8005B3B4:
/* 05AF64 8005B3B4 8EF9003C */  lw          $t9, 0x3c($s7)
/* 05AF68 8005B3B8 8EEF0038 */  lw          $t7, 0x38($s7)
/* 05AF6C 8005B3BC 0328C021 */  addu        $t8, $t9, $t0
/* 05AF70 8005B3C0 330E000F */  andi        $t6, $t8, 0xf
/* 05AF74 8005B3C4 8EF80044 */  lw          $t8, 0x44($s7)
/* 05AF78 8005B3C8 AEEE003C */  sw          $t6, 0x3c($s7)
/* 05AF7C 8005B3CC 01E8C821 */  addu        $t9, $t7, $t0
/* 05AF80 8005B3D0 03097021 */  addu        $t6, $t8, $t1
/* 05AF84 8005B3D4 AEF90038 */  sw          $t9, 0x38($s7)
/* 05AF88 8005B3D8 10000003 */  b           .L8005B3E8
/* 05AF8C 8005B3DC AEEE0044 */   sw         $t6, 0x44($s7)
.L8005B3E0:
/* 05AF90 8005B3E0 AEE0003C */  sw          $zero, 0x3c($s7)
/* 05AF94 8005B3E4 AEEB0044 */  sw          $t3, 0x44($s7)
.L8005B3E8:
/* 05AF98 8005B3E8 10800013 */  beqz        $a0, .L8005B438
/* 05AF9C 8005B3EC 01401025 */   move       $v0, $t2
/* 05AFA0 8005B3F0 11A00005 */  beqz        $t5, .L8005B408
/* 05AFA4 8005B3F4 AEE0003C */   sw         $zero, 0x3c($s7)
/* 05AFA8 8005B3F8 01841823 */  subu        $v1, $t4, $a0
/* 05AFAC 8005B3FC 00037840 */  sll         $t7, $v1, 1
/* 05AFB0 8005B400 10000002 */  b           .L8005B40C
/* 05AFB4 8005B404 01E01825 */   move       $v1, $t7
.L8005B408:
/* 05AFB8 8005B408 00001825 */  move        $v1, $zero
.L8005B40C:
/* 05AFBC 8005B40C 84F90000 */  lh          $t9, 0x0($a3)
/* 05AFC0 8005B410 3C0100FF */  lui         $at, 0xff
/* 05AFC4 8005B414 3421FFFF */  ori         $at, $at, 0xffff
/* 05AFC8 8005B418 0323C021 */  addu        $t8, $t9, $v1
/* 05AFCC 8005B41C 03017024 */  and         $t6, $t8, $at
/* 05AFD0 8005B420 3C010200 */  lui         $at, 0x200
/* 05AFD4 8005B424 01C17825 */  or          $t7, $t6, $at
/* 05AFD8 8005B428 0004C840 */  sll         $t9, $a0, 1
/* 05AFDC 8005B42C AC590004 */  sw          $t9, 0x4($v0)
/* 05AFE0 8005B430 AC4F0000 */  sw          $t7, 0x0($v0)
/* 05AFE4 8005B434 254A0008 */  addiu       $t2, $t2, 0x8
.L8005B438:
/* 05AFE8 8005B438 01401025 */  move        $v0, $t2
.L8005B43C:
/* 05AFEC 8005B43C 8FBF004C */  lw          $ra, 0x4c($sp)
/* 05AFF0 8005B440 8FB00028 */  lw          $s0, 0x28($sp)
/* 05AFF4 8005B444 8FB1002C */  lw          $s1, 0x2c($sp)
/* 05AFF8 8005B448 8FB20030 */  lw          $s2, 0x30($sp)
/* 05AFFC 8005B44C 8FB30034 */  lw          $s3, 0x34($sp)
/* 05B000 8005B450 8FB40038 */  lw          $s4, 0x38($sp)
/* 05B004 8005B454 8FB5003C */  lw          $s5, 0x3c($sp)
/* 05B008 8005B458 8FB60040 */  lw          $s6, 0x40($sp)
/* 05B00C 8005B45C 8FB70044 */  lw          $s7, 0x44($sp)
/* 05B010 8005B460 8FBE0048 */  lw          $fp, 0x48($sp)
/* 05B014 8005B464 03E00008 */  jr          $ra
/* 05B018 8005B468 27BD00B0 */   addiu      $sp, $sp, 0xb0
/* 05B01C 8005B46C 00000000 */  nop
