.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001A530 # 0
/* 01A0E0 8001A530 3C01800C */  lui         $at, %hi(D_800BB110)
/* 01A0E4 8001A534 3C03800C */  lui         $v1, %hi(D_800BB118)
/* 01A0E8 8001A538 3C02800C */  lui         $v0, %hi(D_800BB138)
/* 01A0EC 8001A53C 2442B138 */  addiu       $v0, $v0, %lo(D_800BB138)
/* 01A0F0 8001A540 2463B118 */  addiu       $v1, $v1, %lo(D_800BB118)
/* 01A0F4 8001A544 AC20B110 */  sw          $zero, %lo(D_800BB110)($at)
/* 01A0F8 8001A548 AC20B114 */  sw          $zero, %lo(D_800BB114)($at)
.L8001A54C:
/* 01A0FC 8001A54C 24630010 */  addiu       $v1, $v1, 0x10
/* 01A100 8001A550 AC60FFF4 */  sw          $zero, -0xc($v1)
/* 01A104 8001A554 AC60FFF8 */  sw          $zero, -0x8($v1)
/* 01A108 8001A558 AC60FFFC */  sw          $zero, -0x4($v1)
/* 01A10C 8001A55C 1462FFFB */  bne         $v1, $v0, .L8001A54C
/* 01A110 8001A560 AC60FFF0 */   sw         $zero, -0x10($v1)
/* 01A114 8001A564 3C01800C */  lui         $at, %hi(D_800BB138)
/* 01A118 8001A568 03E00008 */  jr          $ra
/* 01A11C 8001A56C AC20B138 */   sw         $zero, %lo(D_800BB138)($at)

glabel func_8001A570 # 1
/* 01A120 8001A570 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01A124 8001A574 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01A128 8001A578 AFB10018 */  sw          $s1, 0x18($sp)
/* 01A12C 8001A57C 00808825 */  move        $s1, $a0
/* 01A130 8001A580 AFB00014 */  sw          $s0, 0x14($sp)
/* 01A134 8001A584 AFA5002C */  sw          $a1, 0x2c($sp)
/* 01A138 8001A588 AFA60030 */  sw          $a2, 0x30($sp)
/* 01A13C 8001A58C 0C001B0D */  jal         func_80006C34
/* 01A140 8001A590 AFA70034 */   sw         $a3, 0x34($sp)
/* 01A144 8001A594 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01A148 8001A598 00408025 */  move        $s0, $v0
/* 01A14C 8001A59C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01A150 8001A5A0 24050010 */  addiu       $a1, $zero, 0x10
/* 01A154 8001A5A4 0C00DA76 */  jal         func_800369D8
/* 01A158 8001A5A8 2406003F */   addiu      $a2, $zero, 0x3f
/* 01A15C 8001A5AC 00402025 */  move        $a0, $v0
/* 01A160 8001A5B0 24050010 */  addiu       $a1, $zero, 0x10
/* 01A164 8001A5B4 0C013C58 */  jal         func_8004F160
/* 01A168 8001A5B8 AFA20020 */   sw         $v0, 0x20($sp)
/* 01A16C 8001A5BC 8FA30020 */  lw          $v1, 0x20($sp)
/* 01A170 8001A5C0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01A174 8001A5C4 24080087 */  addiu       $t0, $zero, 0x87
/* 01A178 8001A5C8 02002025 */  move        $a0, $s0
/* 01A17C 8001A5CC AC6E0004 */  sw          $t6, 0x4($v1)
/* 01A180 8001A5D0 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01A184 8001A5D4 AC6F0008 */  sw          $t7, 0x8($v1)
/* 01A188 8001A5D8 8FB8002C */  lw          $t8, 0x2c($sp)
/* 01A18C 8001A5DC AC780000 */  sw          $t8, 0x0($v1)
/* 01A190 8001A5E0 8FB90038 */  lw          $t9, 0x38($sp)
/* 01A194 8001A5E4 AC79000C */  sw          $t9, 0xc($v1)
/* 01A198 8001A5E8 A6080034 */  sh          $t0, 0x34($s0)
/* 01A19C 8001A5EC 0C001BB8 */  jal         func_80006EE0
/* 01A1A0 8001A5F0 AE030054 */   sw         $v1, 0x54($s0)
/* 01A1A4 8001A5F4 0C001C1B */  jal         func_8000706C
/* 01A1A8 8001A5F8 00402025 */   move       $a0, $v0
/* 01A1AC 8001A5FC C6240000 */  lwc1        $f4, 0x0($s1)
/* 01A1B0 8001A600 3C04800C */  lui         $a0, %hi(D_800BB138)
/* 01A1B4 8001A604 2484B138 */  addiu       $a0, $a0, %lo(D_800BB138)
/* 01A1B8 8001A608 E6040018 */  swc1        $f4, 0x18($s0)
/* 01A1BC 8001A60C C6260004 */  lwc1        $f6, 0x4($s1)
/* 01A1C0 8001A610 8E090038 */  lw          $t1, 0x38($s0)
/* 01A1C4 8001A614 3C01800C */  lui         $at, %hi(D_800BB110)
/* 01A1C8 8001A618 E606001C */  swc1        $f6, 0x1c($s0)
/* 01A1CC 8001A61C C6280008 */  lwc1        $f8, 0x8($s1)
/* 01A1D0 8001A620 E6080020 */  swc1        $f8, 0x20($s0)
/* 01A1D4 8001A624 C62A0000 */  lwc1        $f10, 0x0($s1)
/* 01A1D8 8001A628 E60A0044 */  swc1        $f10, 0x44($s0)
/* 01A1DC 8001A62C C6300004 */  lwc1        $f16, 0x4($s1)
/* 01A1E0 8001A630 E6100048 */  swc1        $f16, 0x48($s0)
/* 01A1E4 8001A634 C6320008 */  lwc1        $f18, 0x8($s1)
/* 01A1E8 8001A638 E612004C */  swc1        $f18, 0x4c($s0)
/* 01A1EC 8001A63C 8C830000 */  lw          $v1, 0x0($a0)
/* 01A1F0 8001A640 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01A1F4 8001A644 8FB10018 */  lw          $s1, 0x18($sp)
/* 01A1F8 8001A648 00035080 */  sll         $t2, $v1, 2
/* 01A1FC 8001A64C 002A0821 */  addu        $at, $at, $t2
/* 01A200 8001A650 8FB00014 */  lw          $s0, 0x14($sp)
/* 01A204 8001A654 AC29B110 */  sw          $t1, %lo(D_800BB110)($at)
/* 01A208 8001A658 246B0001 */  addiu       $t3, $v1, 0x1
/* 01A20C 8001A65C AC8B0000 */  sw          $t3, 0x0($a0)
/* 01A210 8001A660 03E00008 */  jr          $ra
/* 01A214 8001A664 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001A668 # 2
/* 01A218 8001A668 00047080 */  sll         $t6, $a0, 2
/* 01A21C 8001A66C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A220 8001A670 3C04800C */  lui         $a0, %hi(D_800BB110)
/* 01A224 8001A674 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A228 8001A678 008E2021 */  addu        $a0, $a0, $t6
/* 01A22C 8001A67C AFA5001C */  sw          $a1, 0x1c($sp)
/* 01A230 8001A680 0C001A23 */  jal         func_8000688C
/* 01A234 8001A684 8C84B110 */   lw         $a0, %lo(D_800BB110)($a0)
/* 01A238 8001A688 8C430054 */  lw          $v1, 0x54($v0)
/* 01A23C 8001A68C 8FAF001C */  lw          $t7, 0x1c($sp)
/* 01A240 8001A690 AC6F000C */  sw          $t7, 0xc($v1)
/* 01A244 8001A694 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A248 8001A698 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A24C 8001A69C 03E00008 */  jr          $ra
/* 01A250 8001A6A0 00000000 */   nop

glabel func_8001A6A4 # 3
/* 01A254 8001A6A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A258 8001A6A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A25C 8001A6AC 8C830054 */  lw          $v1, 0x54($a0)
/* 01A260 8001A6B0 24010001 */  addiu       $at, $zero, 0x1
/* 01A264 8001A6B4 8C620000 */  lw          $v0, 0x0($v1)
/* 01A268 8001A6B8 1040000A */  beqz        $v0, .L8001A6E4
/* 01A26C 8001A6BC 00000000 */   nop
/* 01A270 8001A6C0 10410012 */  beq         $v0, $at, .L8001A70C
/* 01A274 8001A6C4 24010002 */   addiu      $at, $zero, 0x2
/* 01A278 8001A6C8 1041001A */  beq         $v0, $at, .L8001A734
/* 01A27C 8001A6CC 3C04800C */   lui        $a0, 0x800c
/* 01A280 8001A6D0 24010003 */  addiu       $at, $zero, 0x3
/* 01A284 8001A6D4 1041001D */  beq         $v0, $at, .L8001A74C
/* 01A288 8001A6D8 3C04800C */   lui        $a0, 0x800c
/* 01A28C 8001A6DC 10000020 */  b           .L8001A760
/* 01A290 8001A6E0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001A6E4:
/* 01A294 8001A6E4 0C044854 */  jal         func_80112150
/* 01A298 8001A6E8 8C640004 */   lw         $a0, 0x4($v1)
/* 01A29C 8001A6EC 3C04800C */  lui         $a0, %hi(D_800BB140)
/* 01A2A0 8001A6F0 3C05800B */  lui         $a1, %hi(D_800A8870)
/* 01A2A4 8001A6F4 24A58870 */  addiu       $a1, $a1, %lo(D_800A8870)
/* 01A2A8 8001A6F8 2484B140 */  addiu       $a0, $a0, %lo(D_800BB140)
/* 01A2AC 8001A6FC 0C014589 */  jal         func_80051624
/* 01A2B0 8001A700 00403025 */   move       $a2, $v0
/* 01A2B4 8001A704 10000016 */  b           .L8001A760
/* 01A2B8 8001A708 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001A70C:
/* 01A2BC 8001A70C 0C044854 */  jal         func_80112150
/* 01A2C0 8001A710 8C640004 */   lw         $a0, 0x4($v1)
/* 01A2C4 8001A714 3C04800C */  lui         $a0, %hi(D_800BB140)
/* 01A2C8 8001A718 3C05800B */  lui         $a1, %hi(D_800A888C)
/* 01A2CC 8001A71C 24A5888C */  addiu       $a1, $a1, %lo(D_800A888C)
/* 01A2D0 8001A720 2484B140 */  addiu       $a0, $a0, %lo(D_800BB140)
/* 01A2D4 8001A724 0C014589 */  jal         func_80051624
/* 01A2D8 8001A728 00403025 */   move       $a2, $v0
/* 01A2DC 8001A72C 1000000C */  b           .L8001A760
/* 01A2E0 8001A730 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001A734:
/* 01A2E4 8001A734 3C05800B */  lui         $a1, %hi(D_800A88B0)
/* 01A2E8 8001A738 24A588B0 */  addiu       $a1, $a1, %lo(D_800A88B0)
/* 01A2EC 8001A73C 0C014589 */  jal         func_80051624
/* 01A2F0 8001A740 2484B140 */   addiu      $a0, $a0, -0x4ec0
/* 01A2F4 8001A744 10000006 */  b           .L8001A760
/* 01A2F8 8001A748 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001A74C:
/* 01A2FC 8001A74C 3C05800B */  lui         $a1, %hi(D_800A88DC)
/* 01A300 8001A750 24A588DC */  addiu       $a1, $a1, %lo(D_800A88DC)
/* 01A304 8001A754 0C014589 */  jal         func_80051624
/* 01A308 8001A758 2484B140 */   addiu      $a0, $a0, -0x4ec0
/* 01A30C 8001A75C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001A760:
/* 01A310 8001A760 3C02800C */  lui         $v0, %hi(D_800BB140)
/* 01A314 8001A764 2442B140 */  addiu       $v0, $v0, %lo(D_800BB140)
/* 01A318 8001A768 03E00008 */  jr          $ra
/* 01A31C 8001A76C 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001A770 # 4
/* 01A320 8001A770 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A324 8001A774 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A328 8001A778 8C820054 */  lw          $v0, 0x54($a0)
/* 01A32C 8001A77C 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A330 8001A780 2484B208 */  addiu       $a0, $a0, %lo(D_800BB208)
/* 01A334 8001A784 8C4E000C */  lw          $t6, 0xc($v0)
/* 01A338 8001A788 3C05800B */  lui         $a1, 0x800b
/* 01A33C 8001A78C 2DC10005 */  sltiu       $at, $t6, 0x5
/* 01A340 8001A790 10200029 */  beqz        $at, .L8001A838
/* 01A344 8001A794 000E7080 */   sll        $t6, $t6, 2
/* 01A348 8001A798 3C01800B */  lui         $at, %hi(jtbl_800A89C4)
/* 01A34C 8001A79C 002E0821 */  addu        $at, $at, $t6
/* 01A350 8001A7A0 8C2E89C4 */  lw          $t6, %lo(jtbl_800A89C4)($at)
/* 01A354 8001A7A4 01C00008 */  jr          $t6
/* 01A358 8001A7A8 00000000 */   nop
glabel L8001A7AC
/* 01A35C 8001A7AC 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A360 8001A7B0 3C05800B */  lui         $a1, %hi(D_800A8908)
/* 01A364 8001A7B4 24A58908 */  addiu       $a1, $a1, %lo(D_800A8908)
/* 01A368 8001A7B8 0C014589 */  jal         func_80051624
/* 01A36C 8001A7BC 2484B208 */   addiu      $a0, $a0, %lo(D_800BB208)
/* 01A370 8001A7C0 10000020 */  b           .L8001A844
/* 01A374 8001A7C4 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001A7C8
/* 01A378 8001A7C8 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A37C 8001A7CC 3C05800B */  lui         $a1, %hi(D_800A8924)
/* 01A380 8001A7D0 24A58924 */  addiu       $a1, $a1, %lo(D_800A8924)
/* 01A384 8001A7D4 0C014589 */  jal         func_80051624
/* 01A388 8001A7D8 2484B208 */   addiu      $a0, $a0, %lo(D_800BB208)
/* 01A38C 8001A7DC 10000019 */  b           .L8001A844
/* 01A390 8001A7E0 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001A7E4
/* 01A394 8001A7E4 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A398 8001A7E8 3C05800B */  lui         $a1, %hi(D_800A893C)
/* 01A39C 8001A7EC 24A5893C */  addiu       $a1, $a1, %lo(D_800A893C)
/* 01A3A0 8001A7F0 0C014589 */  jal         func_80051624
/* 01A3A4 8001A7F4 2484B208 */   addiu      $a0, $a0, %lo(D_800BB208)
/* 01A3A8 8001A7F8 10000012 */  b           .L8001A844
/* 01A3AC 8001A7FC 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001A800
/* 01A3B0 8001A800 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A3B4 8001A804 3C05800B */  lui         $a1, %hi(D_800A8950)
/* 01A3B8 8001A808 24A58950 */  addiu       $a1, $a1, %lo(D_800A8950)
/* 01A3BC 8001A80C 0C014589 */  jal         func_80051624
/* 01A3C0 8001A810 2484B208 */   addiu      $a0, $a0, %lo(D_800BB208)
/* 01A3C4 8001A814 1000000B */  b           .L8001A844
/* 01A3C8 8001A818 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8001A81C
/* 01A3CC 8001A81C 3C04800C */  lui         $a0, %hi(D_800BB208)
/* 01A3D0 8001A820 3C05800B */  lui         $a1, %hi(D_800A8988)
/* 01A3D4 8001A824 24A58988 */  addiu       $a1, $a1, %lo(D_800A8988)
/* 01A3D8 8001A828 0C014589 */  jal         func_80051624
/* 01A3DC 8001A82C 2484B208 */   addiu      $a0, $a0, %lo(D_800BB208)
/* 01A3E0 8001A830 10000004 */  b           .L8001A844
/* 01A3E4 8001A834 8FBF0014 */   lw         $ra, 0x14($sp)
.L8001A838:
/* 01A3E8 8001A838 0C014589 */  jal         func_80051624
/* 01A3EC 8001A83C 24A589AC */   addiu      $a1, $a1, -0x7654
/* 01A3F0 8001A840 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001A844:
/* 01A3F4 8001A844 3C02800C */  lui         $v0, %hi(D_800BB208)
/* 01A3F8 8001A848 2442B208 */  addiu       $v0, $v0, %lo(D_800BB208)
/* 01A3FC 8001A84C 03E00008 */  jr          $ra
/* 01A400 8001A850 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001A854 # 5
/* 01A404 8001A854 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01A408 8001A858 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01A40C 8001A85C 0C007314 */  jal         func_8001CC50
/* 01A410 8001A860 00000000 */   nop
/* 01A414 8001A864 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01A418 8001A868 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01A41C 8001A86C 03E00008 */  jr          $ra
/* 01A420 8001A870 00000000 */   nop
/* 01A424 8001A874 00000000 */  nop
/* 01A428 8001A878 00000000 */  nop
/* 01A42C 8001A87C 00000000 */  nop
