.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003D4E0 # 0
/* 03D090 8003D4E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D094 8003D4E4 AFA40018 */  sw          $a0, 0x18($sp)
/* 03D098 8003D4E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D09C 8003D4EC AFA60020 */  sw          $a2, 0x20($sp)
/* 03D0A0 8003D4F0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03D0A4 8003D4F4 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03D0A8 8003D4F8 AFA70024 */  sw          $a3, 0x24($sp)
/* 03D0AC 8003D4FC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03D0B0 8003D500 0C00DA76 */  jal         func_800369D8
/* 03D0B4 8003D504 24060018 */   addiu      $a2, $zero, 0x18
/* 03D0B8 8003D508 8FA30018 */  lw          $v1, 0x18($sp)
/* 03D0BC 8003D50C 00402825 */  move        $a1, $v0
/* 03D0C0 8003D510 AC620000 */  sw          $v0, 0x0($v1)
/* 03D0C4 8003D514 8FA6001C */  lw          $a2, 0x1c($sp)
/* 03D0C8 8003D518 0C00DA00 */  jal         func_80036800
/* 03D0CC 8003D51C 24640004 */   addiu      $a0, $v1, 0x4
/* 03D0D0 8003D520 8FA40018 */  lw          $a0, 0x18($sp)
/* 03D0D4 8003D524 8FA50020 */  lw          $a1, 0x20($sp)
/* 03D0D8 8003D528 0C00F7FC */  jal         func_8003DFF0
/* 03D0DC 8003D52C 24840010 */   addiu      $a0, $a0, 0x10
/* 03D0E0 8003D530 8FA40018 */  lw          $a0, 0x18($sp)
/* 03D0E4 8003D534 8FA50024 */  lw          $a1, 0x24($sp)
/* 03D0E8 8003D538 0C00D4D7 */  jal         func_8003535C
/* 03D0EC 8003D53C 24840030 */   addiu      $a0, $a0, 0x30
/* 03D0F0 8003D540 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D0F4 8003D544 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D0F8 8003D548 03E00008 */  jr          $ra
/* 03D0FC 8003D54C 00000000 */   nop

glabel func_8003D550 # 1
/* 03D100 8003D550 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D104 8003D554 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D108 8003D558 AFA40018 */  sw          $a0, 0x18($sp)
/* 03D10C 8003D55C 0C00D4F9 */  jal         func_800353E4
/* 03D110 8003D560 24840030 */   addiu      $a0, $a0, 0x30
/* 03D114 8003D564 8FA40018 */  lw          $a0, 0x18($sp)
/* 03D118 8003D568 0C00F85B */  jal         func_8003E16C
/* 03D11C 8003D56C 24840010 */   addiu      $a0, $a0, 0x10
/* 03D120 8003D570 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03D124 8003D574 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03D128 8003D578 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03D12C 8003D57C 0C00DB8B */  jal         func_80036E2C
/* 03D130 8003D580 8DC50000 */   lw         $a1, 0x0($t6)
/* 03D134 8003D584 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D138 8003D588 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D13C 8003D58C 03E00008 */  jr          $ra
/* 03D140 8003D590 00000000 */   nop

glabel func_8003D594 # 2
/* 03D144 8003D594 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D148 8003D598 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D14C 8003D59C AFA5001C */  sw          $a1, 0x1c($sp)
/* 03D150 8003D5A0 24A50010 */  addiu       $a1, $a1, 0x10
/* 03D154 8003D5A4 24840004 */  addiu       $a0, $a0, 0x4
/* 03D158 8003D5A8 0C00DA76 */  jal         func_800369D8
/* 03D15C 8003D5AC 24060035 */   addiu      $a2, $zero, 0x35
/* 03D160 8003D5B0 14400003 */  bnez        $v0, .L8003D5C0
/* 03D164 8003D5B4 00401825 */   move       $v1, $v0
/* 03D168 8003D5B8 10000008 */  b           .L8003D5DC
/* 03D16C 8003D5BC 00001025 */   move       $v0, $zero
.L8003D5C0:
/* 03D170 8003D5C0 AC600000 */  sw          $zero, 0x0($v1)
/* 03D174 8003D5C4 8FAE001C */  lw          $t6, 0x1c($sp)
/* 03D178 8003D5C8 246F0010 */  addiu       $t7, $v1, 0x10
/* 03D17C 8003D5CC AC600008 */  sw          $zero, 0x8($v1)
/* 03D180 8003D5D0 AC6F000C */  sw          $t7, 0xc($v1)
/* 03D184 8003D5D4 00601025 */  move        $v0, $v1
/* 03D188 8003D5D8 AC6E0004 */  sw          $t6, 0x4($v1)
.L8003D5DC:
/* 03D18C 8003D5DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D190 8003D5E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D194 8003D5E4 03E00008 */  jr          $ra
/* 03D198 8003D5E8 00000000 */   nop

glabel func_8003D5EC # 3
/* 03D19C 8003D5EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D1A0 8003D5F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D1A4 8003D5F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 03D1A8 8003D5F8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03D1AC 8003D5FC 8CA50008 */  lw          $a1, 0x8($a1)
/* 03D1B0 8003D600 0C00F9E5 */  jal         func_8003E794
/* 03D1B4 8003D604 24840010 */   addiu      $a0, $a0, 0x10
/* 03D1B8 8003D608 8FA40018 */  lw          $a0, 0x18($sp)
/* 03D1BC 8003D60C 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03D1C0 8003D610 0C00DB8B */  jal         func_80036E2C
/* 03D1C4 8003D614 24840004 */   addiu      $a0, $a0, 0x4
/* 03D1C8 8003D618 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D1CC 8003D61C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D1D0 8003D620 03E00008 */  jr          $ra
/* 03D1D4 8003D624 00000000 */   nop

glabel func_8003D628 # 4
/* 03D1D8 8003D628 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D1DC 8003D62C AFA40028 */  sw          $a0, 0x28($sp)
/* 03D1E0 8003D630 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03D1E4 8003D634 24840010 */  addiu       $a0, $a0, 0x10
/* 03D1E8 8003D638 AFB00018 */  sw          $s0, 0x18($sp)
/* 03D1EC 8003D63C AFA5002C */  sw          $a1, 0x2c($sp)
/* 03D1F0 8003D640 AFA60030 */  sw          $a2, 0x30($sp)
/* 03D1F4 8003D644 AFA70034 */  sw          $a3, 0x34($sp)
/* 03D1F8 8003D648 0C00FA4C */  jal         func_8003E930
/* 03D1FC 8003D64C AFA40020 */   sw         $a0, 0x20($sp)
/* 03D200 8003D650 10400017 */  beqz        $v0, .L8003D6B0
/* 03D204 8003D654 00408025 */   move       $s0, $v0
/* 03D208 8003D658 8C4E0004 */  lw          $t6, 0x4($v0)
/* 03D20C 8003D65C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03D210 8003D660 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D214 8003D664 01CF082B */  sltu        $at, $t6, $t7
/* 03D218 8003D668 1420000F */  bnez        $at, .L8003D6A8
/* 03D21C 8003D66C 00000000 */   nop
/* 03D220 8003D670 8C580000 */  lw          $t8, 0x0($v0)
/* 03D224 8003D674 8C48000C */  lw          $t0, 0xc($v0)
/* 03D228 8003D678 37190001 */  ori         $t9, $t8, 0x1
/* 03D22C 8003D67C AC590000 */  sw          $t9, 0x0($v0)
/* 03D230 8003D680 8FA90034 */  lw          $t1, 0x34($sp)
/* 03D234 8003D684 AD280000 */  sw          $t0, 0x0($t1)
/* 03D238 8003D688 8C4A0000 */  lw          $t2, 0x0($v0)
/* 03D23C 8003D68C 314B0002 */  andi        $t3, $t2, 0x2
/* 03D240 8003D690 11600003 */  beqz        $t3, .L8003D6A0
/* 03D244 8003D694 00000000 */   nop
/* 03D248 8003D698 10000020 */  b           .L8003D71C
/* 03D24C 8003D69C 24020001 */   addiu      $v0, $zero, 0x1
.L8003D6A0:
/* 03D250 8003D6A0 1000001E */  b           .L8003D71C
/* 03D254 8003D6A4 00001025 */   move       $v0, $zero
.L8003D6A8:
/* 03D258 8003D6A8 0C00F57B */  jal         func_8003D5EC
/* 03D25C 8003D6AC 02002825 */   move       $a1, $s0
.L8003D6B0:
/* 03D260 8003D6B0 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D264 8003D6B4 0C00F5CC */  jal         func_8003D730
/* 03D268 8003D6B8 8FA50030 */   lw         $a1, 0x30($sp)
/* 03D26C 8003D6BC 14400003 */  bnez        $v0, .L8003D6CC
/* 03D270 8003D6C0 00408025 */   move       $s0, $v0
/* 03D274 8003D6C4 0C00F961 */  jal         func_8003E584
/* 03D278 8003D6C8 8FA40020 */   lw         $a0, 0x20($sp)
.L8003D6CC:
/* 03D27C 8003D6CC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 03D280 8003D6D0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03D284 8003D6D4 8E06000C */  lw          $a2, 0xc($s0)
/* 03D288 8003D6D8 AE050008 */  sw          $a1, 0x8($s0)
/* 03D28C 8003D6DC AE0C0004 */  sw          $t4, 0x4($s0)
/* 03D290 8003D6E0 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D294 8003D6E4 8FA70030 */  lw          $a3, 0x30($sp)
/* 03D298 8003D6E8 0C00D561 */  jal         func_80035584
/* 03D29C 8003D6EC 24840030 */   addiu      $a0, $a0, 0x30
/* 03D2A0 8003D6F0 8FA40020 */  lw          $a0, 0x20($sp)
/* 03D2A4 8003D6F4 02002825 */  move        $a1, $s0
/* 03D2A8 8003D6F8 0C00F8F5 */  jal         func_8003E3D4
/* 03D2AC 8003D6FC 8FA6002C */   lw         $a2, 0x2c($sp)
/* 03D2B0 8003D700 8E0D0000 */  lw          $t5, 0x0($s0)
/* 03D2B4 8003D704 8E0F000C */  lw          $t7, 0xc($s0)
/* 03D2B8 8003D708 24020001 */  addiu       $v0, $zero, 0x1
/* 03D2BC 8003D70C 35AE0003 */  ori         $t6, $t5, 0x3
/* 03D2C0 8003D710 AE0E0000 */  sw          $t6, 0x0($s0)
/* 03D2C4 8003D714 8FB80034 */  lw          $t8, 0x34($sp)
/* 03D2C8 8003D718 AF0F0000 */  sw          $t7, 0x0($t8)
.L8003D71C:
/* 03D2CC 8003D71C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03D2D0 8003D720 8FB00018 */  lw          $s0, 0x18($sp)
/* 03D2D4 8003D724 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03D2D8 8003D728 03E00008 */  jr          $ra
/* 03D2DC 8003D72C 00000000 */   nop

glabel func_8003D730 # 5
/* 03D2E0 8003D730 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D2E4 8003D734 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03D2E8 8003D738 AFB10018 */  sw          $s1, 0x18($sp)
/* 03D2EC 8003D73C 00809025 */  move        $s2, $a0
/* 03D2F0 8003D740 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D2F4 8003D744 AFB30020 */  sw          $s3, 0x20($sp)
/* 03D2F8 8003D748 24910010 */  addiu       $s1, $a0, 0x10
/* 03D2FC 8003D74C 00A09825 */  move        $s3, $a1
/* 03D300 8003D750 AFB00014 */  sw          $s0, 0x14($sp)
/* 03D304 8003D754 0C00FA61 */  jal         func_8003E984
/* 03D308 8003D758 02202025 */   move       $a0, $s1
/* 03D30C 8003D75C 00408025 */  move        $s0, $v0
.L8003D760:
/* 03D310 8003D760 0C00F961 */  jal         func_8003E584
/* 03D314 8003D764 02202025 */   move       $a0, $s1
/* 03D318 8003D768 10400007 */  beqz        $v0, .L8003D788
/* 03D31C 8003D76C 02402025 */   move       $a0, $s2
/* 03D320 8003D770 0C00F565 */  jal         func_8003D594
/* 03D324 8003D774 02602825 */   move       $a1, $s3
/* 03D328 8003D778 10400003 */  beqz        $v0, .L8003D788
/* 03D32C 8003D77C 00000000 */   nop
/* 03D330 8003D780 10000010 */  b           .L8003D7C4
/* 03D334 8003D784 8FBF0024 */   lw         $ra, 0x24($sp)
.L8003D788:
/* 03D338 8003D788 12000005 */  beqz        $s0, .L8003D7A0
/* 03D33C 8003D78C 02402025 */   move       $a0, $s2
/* 03D340 8003D790 8E0E0000 */  lw          $t6, 0x0($s0)
/* 03D344 8003D794 31CF0003 */  andi        $t7, $t6, 0x3
/* 03D348 8003D798 11E00003 */  beqz        $t7, .L8003D7A8
/* 03D34C 8003D79C 00000000 */   nop
.L8003D7A0:
/* 03D350 8003D7A0 10000007 */  b           .L8003D7C0
/* 03D354 8003D7A4 00001025 */   move       $v0, $zero
.L8003D7A8:
/* 03D358 8003D7A8 0C00F57B */  jal         func_8003D5EC
/* 03D35C 8003D7AC 02002825 */   move       $a1, $s0
/* 03D360 8003D7B0 0C00FA6A */  jal         func_8003E9A8
/* 03D364 8003D7B4 02202025 */   move       $a0, $s1
/* 03D368 8003D7B8 1000FFE9 */  b           .L8003D760
/* 03D36C 8003D7BC 00408025 */   move       $s0, $v0
.L8003D7C0:
/* 03D370 8003D7C0 8FBF0024 */  lw          $ra, 0x24($sp)
.L8003D7C4:
/* 03D374 8003D7C4 8FB00014 */  lw          $s0, 0x14($sp)
/* 03D378 8003D7C8 8FB10018 */  lw          $s1, 0x18($sp)
/* 03D37C 8003D7CC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03D380 8003D7D0 8FB30020 */  lw          $s3, 0x20($sp)
/* 03D384 8003D7D4 03E00008 */  jr          $ra
/* 03D388 8003D7D8 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003D7DC # 6
/* 03D38C 8003D7DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D390 8003D7E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D394 8003D7E4 AFA40018 */  sw          $a0, 0x18($sp)
/* 03D398 8003D7E8 24840030 */  addiu       $a0, $a0, 0x30
/* 03D39C 8003D7EC 0C00D584 */  jal         func_80035610
/* 03D3A0 8003D7F0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 03D3A4 8003D7F4 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03D3A8 8003D7F8 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03D3AC 8003D7FC 8DC2001C */  lw          $v0, 0x1c($t6)
/* 03D3B0 8003D800 5040000C */  beql        $v0, $zero, .L8003D834
/* 03D3B4 8003D804 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03D3B8 8003D808 8C430004 */  lw          $v1, 0x4($v0)
.L8003D80C:
/* 03D3BC 8003D80C 00A0C027 */  not         $t8, $a1
/* 03D3C0 8003D810 8C640000 */  lw          $a0, 0x0($v1)
/* 03D3C4 8003D814 00857824 */  and         $t7, $a0, $a1
/* 03D3C8 8003D818 11E00005 */  beqz        $t7, .L8003D830
/* 03D3CC 8003D81C 0098C824 */   and        $t9, $a0, $t8
/* 03D3D0 8003D820 AC790000 */  sw          $t9, 0x0($v1)
/* 03D3D4 8003D824 8C420008 */  lw          $v0, 0x8($v0)
/* 03D3D8 8003D828 5440FFF8 */  bnel        $v0, $zero, .L8003D80C
/* 03D3DC 8003D82C 8C430004 */   lw         $v1, 0x4($v0)
.L8003D830:
/* 03D3E0 8003D830 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003D834:
/* 03D3E4 8003D834 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D3E8 8003D838 03E00008 */  jr          $ra
/* 03D3EC 8003D83C 00000000 */   nop

glabel func_8003D840 # 7
/* 03D3F0 8003D840 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D3F4 8003D844 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D3F8 8003D848 0C00F5F7 */  jal         func_8003D7DC
/* 03D3FC 8003D84C 24050002 */   addiu      $a1, $zero, 0x2
/* 03D400 8003D850 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D404 8003D854 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D408 8003D858 03E00008 */  jr          $ra
/* 03D40C 8003D85C 00000000 */   nop

glabel func_8003D860 # 8
/* 03D410 8003D860 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D414 8003D864 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D418 8003D868 0C00F5F7 */  jal         func_8003D7DC
/* 03D41C 8003D86C 24050003 */   addiu      $a1, $zero, 0x3
/* 03D420 8003D870 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D424 8003D874 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D428 8003D878 03E00008 */  jr          $ra
/* 03D42C 8003D87C 00000000 */   nop

glabel func_8003D880 # 9
/* 03D430 8003D880 C4A00000 */  lwc1        $f0, 0x0($a1)
/* 03D434 8003D884 C4860000 */  lwc1        $f6, 0x0($a0)
/* 03D438 8003D888 C4A20004 */  lwc1        $f2, 0x4($a1)
/* 03D43C 8003D88C 46003182 */  mul.s       $f6, $f6, $f0
/* 03D440 8003D890 C488000C */  lwc1        $f8, 0xc($a0)
/* 03D444 8003D894 C4A40008 */  lwc1        $f4, 0x8($a1)
/* 03D448 8003D898 46024202 */  mul.s       $f8, $f8, $f2
/* 03D44C 8003D89C C48A0018 */  lwc1        $f10, 0x18($a0)
/* 03D450 8003D8A0 C48C0024 */  lwc1        $f12, 0x24($a0)
/* 03D454 8003D8A4 46045282 */  mul.s       $f10, $f10, $f4
/* 03D458 8003D8A8 C48E0004 */  lwc1        $f14, 0x4($a0)
/* 03D45C 8003D8AC 46083180 */  add.s       $f6, $f6, $f8
/* 03D460 8003D8B0 46007382 */  mul.s       $f14, $f14, $f0
/* 03D464 8003D8B4 C4880010 */  lwc1        $f8, 0x10($a0)
/* 03D468 8003D8B8 460A3180 */  add.s       $f6, $f6, $f10
/* 03D46C 8003D8BC 46024202 */  mul.s       $f8, $f8, $f2
/* 03D470 8003D8C0 C48A001C */  lwc1        $f10, 0x1c($a0)
/* 03D474 8003D8C4 460C3180 */  add.s       $f6, $f6, $f12
/* 03D478 8003D8C8 46045282 */  mul.s       $f10, $f10, $f4
/* 03D47C 8003D8CC C48C0008 */  lwc1        $f12, 0x8($a0)
/* 03D480 8003D8D0 460E4200 */  add.s       $f8, $f8, $f14
/* 03D484 8003D8D4 46006302 */  mul.s       $f12, $f12, $f0
/* 03D488 8003D8D8 C48E0014 */  lwc1        $f14, 0x14($a0)
/* 03D48C 8003D8DC 460A4200 */  add.s       $f8, $f8, $f10
/* 03D490 8003D8E0 46027382 */  mul.s       $f14, $f14, $f2
/* 03D494 8003D8E4 C48A0020 */  lwc1        $f10, 0x20($a0)
/* 03D498 8003D8E8 C4900028 */  lwc1        $f16, 0x28($a0)
/* 03D49C 8003D8EC 46045282 */  mul.s       $f10, $f10, $f4
/* 03D4A0 8003D8F0 46104200 */  add.s       $f8, $f8, $f16
/* 03D4A4 8003D8F4 C490002C */  lwc1        $f16, 0x2c($a0)
/* 03D4A8 8003D8F8 460E6300 */  add.s       $f12, $f12, $f14
/* 03D4AC 8003D8FC 46106300 */  add.s       $f12, $f12, $f16
/* 03D4B0 8003D900 460C5280 */  add.s       $f10, $f10, $f12
/* 03D4B4 8003D904 E4C60000 */  swc1        $f6, 0x0($a2)
/* 03D4B8 8003D908 E4C80004 */  swc1        $f8, 0x4($a2)
/* 03D4BC 8003D90C 03E00008 */  jr          $ra
/* 03D4C0 8003D910 E4CA0008 */   swc1       $f10, 0x8($a2)
/* 03D4C4 8003D914 00000000 */  nop
/* 03D4C8 8003D918 00000000 */  nop
/* 03D4CC 8003D91C 00000000 */  nop
