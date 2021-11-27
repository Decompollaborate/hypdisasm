.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002AA60 # 0
/* 02A610 8002AA60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A614 8002AA64 AFA60020 */  sw          $a2, 0x20($sp)
/* 02A618 8002AA68 00803025 */  move        $a2, $a0
/* 02A61C 8002AA6C AFA40018 */  sw          $a0, 0x18($sp)
/* 02A620 8002AA70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A624 8002AA74 AFA5001C */  sw          $a1, 0x1c($sp)
/* 02A628 8002AA78 00A02025 */  move        $a0, $a1
/* 02A62C 8002AA7C AFA70024 */  sw          $a3, 0x24($sp)
/* 02A630 8002AA80 00C02825 */  move        $a1, $a2
/* 02A634 8002AA84 0C011A3D */  jal         func_800468F4
/* 02A638 8002AA88 AFA60018 */   sw         $a2, 0x18($sp)
/* 02A63C 8002AA8C 8FA8002C */  lw          $t0, 0x2c($sp)
/* 02A640 8002AA90 8FA60018 */  lw          $a2, 0x18($sp)
/* 02A644 8002AA94 8FAA001C */  lw          $t2, 0x1c($sp)
/* 02A648 8002AA98 00404825 */  move        $t1, $v0
/* 02A64C 8002AA9C 11000028 */  beqz        $t0, .L8002AB40
/* 02A650 8002AAA0 00002825 */   move       $a1, $zero
/* 02A654 8002AAA4 31030003 */  andi        $v1, $t0, 0x3
/* 02A658 8002AAA8 1060000E */  beqz        $v1, .L8002AAE4
/* 02A65C 8002AAAC 8FAF0028 */   lw         $t7, 0x28($sp)
/* 02A660 8002AAB0 000070C0 */  sll         $t6, $zero, 3
/* 02A664 8002AAB4 01CFC021 */  addu        $t8, $t6, $t7
/* 02A668 8002AAB8 030A1021 */  addu        $v0, $t8, $t2
/* 02A66C 8002AABC 00603825 */  move        $a3, $v1
.L8002AAC0:
/* 02A670 8002AAC0 8C430000 */  lw          $v1, 0x0($v0)
/* 02A674 8002AAC4 8C440004 */  lw          $a0, 0x4($v0)
/* 02A678 8002AAC8 24A50001 */  addiu       $a1, $a1, 0x1
/* 02A67C 8002AACC 00C3C821 */  addu        $t9, $a2, $v1
/* 02A680 8002AAD0 24420008 */  addiu       $v0, $v0, 0x8
/* 02A684 8002AAD4 14E5FFFA */  bne         $a3, $a1, .L8002AAC0
/* 02A688 8002AAD8 AF240000 */   sw         $a0, 0x0($t9)
/* 02A68C 8002AADC 50A80019 */  beql        $a1, $t0, .L8002AB44
/* 02A690 8002AAE0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002AAE4:
/* 02A694 8002AAE4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 02A698 8002AAE8 000558C0 */  sll         $t3, $a1, 3
/* 02A69C 8002AAEC 016C6821 */  addu        $t5, $t3, $t4
/* 02A6A0 8002AAF0 01AA1021 */  addu        $v0, $t5, $t2
.L8002AAF4:
/* 02A6A4 8002AAF4 8C430000 */  lw          $v1, 0x0($v0)
/* 02A6A8 8002AAF8 8C440004 */  lw          $a0, 0x4($v0)
/* 02A6AC 8002AAFC 24A50004 */  addiu       $a1, $a1, 0x4
/* 02A6B0 8002AB00 00C37021 */  addu        $t6, $a2, $v1
/* 02A6B4 8002AB04 ADC40000 */  sw          $a0, 0x0($t6)
/* 02A6B8 8002AB08 8C430008 */  lw          $v1, 0x8($v0)
/* 02A6BC 8002AB0C 8C44000C */  lw          $a0, 0xc($v0)
/* 02A6C0 8002AB10 24420020 */  addiu       $v0, $v0, 0x20
/* 02A6C4 8002AB14 00C37821 */  addu        $t7, $a2, $v1
/* 02A6C8 8002AB18 ADE40000 */  sw          $a0, 0x0($t7)
/* 02A6CC 8002AB1C 8C43FFF0 */  lw          $v1, -0x10($v0)
/* 02A6D0 8002AB20 8C44FFF4 */  lw          $a0, -0xc($v0)
/* 02A6D4 8002AB24 00C3C021 */  addu        $t8, $a2, $v1
/* 02A6D8 8002AB28 AF040000 */  sw          $a0, 0x0($t8)
/* 02A6DC 8002AB2C 8C43FFF8 */  lw          $v1, -0x8($v0)
/* 02A6E0 8002AB30 8C44FFFC */  lw          $a0, -0x4($v0)
/* 02A6E4 8002AB34 00C3C821 */  addu        $t9, $a2, $v1
/* 02A6E8 8002AB38 14A8FFEE */  bne         $a1, $t0, .L8002AAF4
/* 02A6EC 8002AB3C AF240000 */   sw         $a0, 0x0($t9)
.L8002AB40:
/* 02A6F0 8002AB40 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002AB44:
/* 02A6F4 8002AB44 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A6F8 8002AB48 01201025 */  move        $v0, $t1
/* 02A6FC 8002AB4C 03E00008 */  jr          $ra
/* 02A700 8002AB50 00000000 */   nop

glabel func_8002AB54 # 1
/* 02A704 8002AB54 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A708 8002AB58 8FAE0038 */  lw          $t6, 0x38($sp)
/* 02A70C 8002AB5C AFA50024 */  sw          $a1, 0x24($sp)
/* 02A710 8002AB60 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02A714 8002AB64 AFA60028 */  sw          $a2, 0x28($sp)
/* 02A718 8002AB68 00C02825 */  move        $a1, $a2
/* 02A71C 8002AB6C 000E78C0 */  sll         $t7, $t6, 3
/* 02A720 8002AB70 AFA7002C */  sw          $a3, 0x2c($sp)
/* 02A724 8002AB74 0C00D4A3 */  jal         func_8003528C
/* 02A728 8002AB78 01E73021 */   addu       $a2, $t7, $a3
/* 02A72C 8002AB7C 8FB90034 */  lw          $t9, 0x34($sp)
/* 02A730 8002AB80 8FA80038 */  lw          $t0, 0x38($sp)
/* 02A734 8002AB84 8FA40024 */  lw          $a0, 0x24($sp)
/* 02A738 8002AB88 8FA50028 */  lw          $a1, 0x28($sp)
/* 02A73C 8002AB8C 8FA6002C */  lw          $a2, 0x2c($sp)
/* 02A740 8002AB90 8FA70030 */  lw          $a3, 0x30($sp)
/* 02A744 8002AB94 AFB90010 */  sw          $t9, 0x10($sp)
/* 02A748 8002AB98 0C00AA98 */  jal         func_8002AA60
/* 02A74C 8002AB9C AFA80014 */   sw         $t0, 0x14($sp)
/* 02A750 8002ABA0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02A754 8002ABA4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A758 8002ABA8 03E00008 */  jr          $ra
/* 02A75C 8002ABAC 00000000 */   nop

glabel func_8002ABB0 # 2
/* 02A760 8002ABB0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02A764 8002ABB4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02A768 8002ABB8 AFB00028 */  sw          $s0, 0x28($sp)
/* 02A76C 8002ABBC 8C8F0008 */  lw          $t7, 0x8($a0)
/* 02A770 8002ABC0 8C8E000C */  lw          $t6, 0xc($a0)
/* 02A774 8002ABC4 00808025 */  move        $s0, $a0
/* 02A778 8002ABC8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 02A77C 8002ABCC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 02A780 8002ABD0 2406005D */  addiu       $a2, $zero, 0x5d
/* 02A784 8002ABD4 0C00DA76 */  jal         func_800369D8
/* 02A788 8002ABD8 01CF2823 */   subu       $a1, $t6, $t7
/* 02A78C 8002ABDC AFA20030 */  sw          $v0, 0x30($sp)
/* 02A790 8002ABE0 8E190008 */  lw          $t9, 0x8($s0)
/* 02A794 8002ABE4 8E180010 */  lw          $t8, 0x10($s0)
/* 02A798 8002ABE8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 02A79C 8002ABEC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 02A7A0 8002ABF0 24060063 */  addiu       $a2, $zero, 0x63
/* 02A7A4 8002ABF4 0C00DAAE */  jal         func_80036AB8
/* 02A7A8 8002ABF8 03192823 */   subu       $a1, $t8, $t9
/* 02A7AC 8002ABFC AFA20034 */  sw          $v0, 0x34($sp)
/* 02A7B0 8002AC00 8E09000C */  lw          $t1, 0xc($s0)
/* 02A7B4 8002AC04 8E030008 */  lw          $v1, 0x8($s0)
/* 02A7B8 8002AC08 8E080010 */  lw          $t0, 0x10($s0)
/* 02A7BC 8002AC0C 8E040000 */  lw          $a0, 0x0($s0)
/* 02A7C0 8002AC10 01235023 */  subu        $t2, $t1, $v1
/* 02A7C4 8002AC14 AFAA0010 */  sw          $t2, 0x10($sp)
/* 02A7C8 8002AC18 8E0B0014 */  lw          $t3, 0x14($s0)
/* 02A7CC 8002AC1C 8FA50030 */  lw          $a1, 0x30($sp)
/* 02A7D0 8002AC20 00403025 */  move        $a2, $v0
/* 02A7D4 8002AC24 01636023 */  subu        $t4, $t3, $v1
/* 02A7D8 8002AC28 AFAC0014 */  sw          $t4, 0x14($sp)
/* 02A7DC 8002AC2C 8E0D0018 */  lw          $t5, 0x18($s0)
/* 02A7E0 8002AC30 01033823 */  subu        $a3, $t0, $v1
/* 02A7E4 8002AC34 01A37023 */  subu        $t6, $t5, $v1
/* 02A7E8 8002AC38 0C00AAD5 */  jal         func_8002AB54
/* 02A7EC 8002AC3C AFAE0018 */   sw         $t6, 0x18($sp)
/* 02A7F0 8002AC40 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 02A7F4 8002AC44 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 02A7F8 8002AC48 0C00DB8B */  jal         func_80036E2C
/* 02A7FC 8002AC4C 8FA50034 */   lw         $a1, 0x34($sp)
/* 02A800 8002AC50 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02A804 8002AC54 8FA20030 */  lw          $v0, 0x30($sp)
/* 02A808 8002AC58 8FB00028 */  lw          $s0, 0x28($sp)
/* 02A80C 8002AC5C 03E00008 */  jr          $ra
/* 02A810 8002AC60 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8002AC64 # 3
/* 02A814 8002AC64 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A818 8002AC68 00802825 */  move        $a1, $a0
/* 02A81C 8002AC6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A820 8002AC70 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 02A824 8002AC74 0C00DB8B */  jal         func_80036E2C
/* 02A828 8002AC78 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 02A82C 8002AC7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A830 8002AC80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A834 8002AC84 03E00008 */  jr          $ra
/* 02A838 8002AC88 00000000 */   nop

glabel func_8002AC8C # 4
/* 02A83C 8002AC8C 03E00008 */  jr          $ra
/* 02A840 8002AC90 00000000 */   nop

glabel func_8002AC94 # 5
/* 02A844 8002AC94 03E00008 */  jr          $ra
/* 02A848 8002AC98 00000000 */   nop

glabel func_8002AC9C # 6
/* 02A84C 8002AC9C 03E00008 */  jr          $ra
/* 02A850 8002ACA0 00000000 */   nop

glabel func_8002ACA4 # 7
/* 02A854 8002ACA4 03E00008 */  jr          $ra
/* 02A858 8002ACA8 00000000 */   nop
/* 02A85C 8002ACAC 00000000 */  nop
