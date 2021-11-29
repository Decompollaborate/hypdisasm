.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003ADE0 # 0
/* 03A990 8003ADE0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03A994 8003ADE4 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03A998 8003ADE8 3C018010 */  lui         $at, %hi(D_800FD110)
/* 03A99C 8003ADEC AC24D110 */  sw          $a0, %lo(D_800FD110)($at)
/* 03A9A0 8003ADF0 00072880 */  sll         $a1, $a3, 2
/* 03A9A4 8003ADF4 3C018010 */  lui         $at, %hi(D_800FD104)
/* 03A9A8 8003ADF8 00A72823 */  subu        $a1, $a1, $a3
/* 03A9AC 8003ADFC AFA40018 */  sw          $a0, 0x18($sp)
/* 03A9B0 8003AE00 AC27D104 */  sw          $a3, %lo(D_800FD104)($at)
/* 03A9B4 8003AE04 00052880 */  sll         $a1, $a1, 2
/* 03A9B8 8003AE08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03A9BC 8003AE0C AFA60020 */  sw          $a2, 0x20($sp)
/* 03A9C0 8003AE10 3C018010 */  lui         $at, %hi(D_800FD108)
/* 03A9C4 8003AE14 00A72823 */  subu        $a1, $a1, $a3
/* 03A9C8 8003AE18 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03A9CC 8003AE1C AC20D108 */  sw          $zero, %lo(D_800FD108)($at)
/* 03A9D0 8003AE20 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03A9D4 8003AE24 000528C0 */  sll         $a1, $a1, 3
/* 03A9D8 8003AE28 0C00DA76 */  jal         func_800369D8
/* 03A9DC 8003AE2C 2406004D */   addiu      $a2, $zero, 0x4d
/* 03A9E0 8003AE30 3C018010 */  lui         $at, %hi(D_800FD100)
/* 03A9E4 8003AE34 AC22D100 */  sw          $v0, %lo(D_800FD100)($at)
/* 03A9E8 8003AE38 8FAF001C */  lw          $t7, 0x1c($sp)
/* 03A9EC 8003AE3C 8FB80020 */  lw          $t8, 0x20($sp)
/* 03A9F0 8003AE40 3C038010 */  lui         $v1, %hi(D_800FD118)
/* 03A9F4 8003AE44 3C018010 */  lui         $at, %hi(D_800FD10C)
/* 03A9F8 8003AE48 2463D118 */  addiu       $v1, $v1, %lo(D_800FD118)
/* 03A9FC 8003AE4C AC20D10C */  sw          $zero, %lo(D_800FD10C)($at)
/* 03AA00 8003AE50 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03AA04 8003AE54 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03AA08 8003AE58 24050400 */  addiu       $a1, $zero, 0x400
/* 03AA0C 8003AE5C 24060055 */  addiu       $a2, $zero, 0x55
/* 03AA10 8003AE60 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03AA14 8003AE64 0C00DA76 */  jal         func_800369D8
/* 03AA18 8003AE68 AC780004 */   sw         $t8, 0x4($v1)
/* 03AA1C 8003AE6C 3C018010 */  lui         $at, %hi(D_800FD128)
/* 03AA20 8003AE70 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03AA24 8003AE74 AC22D128 */  sw          $v0, %lo(D_800FD128)($at)
/* 03AA28 8003AE78 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03AA2C 8003AE7C 24050C00 */  addiu       $a1, $zero, 0xc00
/* 03AA30 8003AE80 0C00DA76 */  jal         func_800369D8
/* 03AA34 8003AE84 24060059 */   addiu      $a2, $zero, 0x59
/* 03AA38 8003AE88 8FA30028 */  lw          $v1, 0x28($sp)
/* 03AA3C 8003AE8C 3C018010 */  lui         $at, %hi(D_800FD12C)
/* 03AA40 8003AE90 AC22D12C */  sw          $v0, %lo(D_800FD12C)($at)
/* 03AA44 8003AE94 3C018010 */  lui         $at, %hi(D_800FD124)
/* 03AA48 8003AE98 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03AA4C 8003AE9C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03AA50 8003AEA0 2406005E */  addiu       $a2, $zero, 0x5e
/* 03AA54 8003AEA4 AC23D124 */  sw          $v1, %lo(D_800FD124)($at)
/* 03AA58 8003AEA8 0C00DA76 */  jal         func_800369D8
/* 03AA5C 8003AEAC 000328C0 */   sll        $a1, $v1, 3
/* 03AA60 8003AEB0 3C018010 */  lui         $at, %hi(D_800FD120)
/* 03AA64 8003AEB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03AA68 8003AEB8 AC22D120 */  sw          $v0, %lo(D_800FD120)($at)
/* 03AA6C 8003AEBC 3C028010 */  lui         $v0, %hi(D_800FD100)
/* 03AA70 8003AEC0 8C42D100 */  lw          $v0, %lo(D_800FD100)($v0)
/* 03AA74 8003AEC4 03E00008 */  jr          $ra
/* 03AA78 8003AEC8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003AECC # 1
/* 03AA7C 8003AECC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03AA80 8003AED0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03AA84 8003AED4 AFB00018 */  sw          $s0, 0x18($sp)
/* 03AA88 8003AED8 AFA60040 */  sw          $a2, 0x40($sp)
/* 03AA8C 8003AEDC 8CE20000 */  lw          $v0, 0x0($a3)
/* 03AA90 8003AEE0 3C0FE900 */  lui         $t7, 0xe900
/* 03AA94 8003AEE4 3C0B8010 */  lui         $t3, %hi(D_800FD108)
/* 03AA98 8003AEE8 244E0008 */  addiu       $t6, $v0, 0x8
/* 03AA9C 8003AEEC ACEE0000 */  sw          $t6, 0x0($a3)
/* 03AAA0 8003AEF0 AC400004 */  sw          $zero, 0x4($v0)
/* 03AAA4 8003AEF4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03AAA8 8003AEF8 8CE20000 */  lw          $v0, 0x0($a3)
/* 03AAAC 8003AEFC 3C19DF00 */  lui         $t9, 0xdf00
/* 03AAB0 8003AF00 256BD108 */  addiu       $t3, $t3, %lo(D_800FD108)
/* 03AAB4 8003AF04 24580008 */  addiu       $t8, $v0, 0x8
/* 03AAB8 8003AF08 ACF80000 */  sw          $t8, 0x0($a3)
/* 03AABC 8003AF0C AC400004 */  sw          $zero, 0x4($v0)
/* 03AAC0 8003AF10 AC590000 */  sw          $t9, 0x0($v0)
/* 03AAC4 8003AF14 8D6F0000 */  lw          $t7, 0x0($t3)
/* 03AAC8 8003AF18 3C198010 */  lui         $t9, %hi(D_800FD100)
/* 03AACC 8003AF1C 8FAD0040 */  lw          $t5, 0x40($sp)
/* 03AAD0 8003AF20 000FC080 */  sll         $t8, $t7, 2
/* 03AAD4 8003AF24 030FC023 */  subu        $t8, $t8, $t7
/* 03AAD8 8003AF28 8F39D100 */  lw          $t9, %lo(D_800FD100)($t9)
/* 03AADC 8003AF2C 0018C080 */  sll         $t8, $t8, 2
/* 03AAE0 8003AF30 030FC023 */  subu        $t8, $t8, $t7
/* 03AAE4 8003AF34 0018C0C0 */  sll         $t8, $t8, 3
/* 03AAE8 8003AF38 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03AAEC 8003AF3C 8DA90000 */  lw          $t1, 0x0($t5)
/* 03AAF0 8003AF40 03198021 */  addu        $s0, $t8, $t9
/* 03AAF4 8003AF44 3C0C8006 */  lui         $t4, %hi(func_8005DF20)
/* 03AAF8 8003AF48 01C95023 */  subu        $t2, $t6, $t1
/* 03AAFC 8003AF4C 3C0E8006 */  lui         $t6, %hi(func_8005DFF0)
/* 03AB00 8003AF50 258CDF20 */  addiu       $t4, $t4, %lo(func_8005DF20)
/* 03AB04 8003AF54 25CEDFF0 */  addiu       $t6, $t6, %lo(func_8005DFF0)
/* 03AB08 8003AF58 3C19800A */  lui         $t9, %hi(D_800A28EC)
/* 03AB0C 8003AF5C 240D0001 */  addiu       $t5, $zero, 0x1
/* 03AB10 8003AF60 01CC7823 */  subu        $t7, $t6, $t4
/* 03AB14 8003AF64 273928EC */  addiu       $t9, $t9, %lo(D_800A28EC)
/* 03AB18 8003AF68 0004C100 */  sll         $t8, $a0, 4
/* 03AB1C 8003AF6C AE0A0044 */  sw          $t2, 0x44($s0)
/* 03AB20 8003AF70 AE0D0010 */  sw          $t5, 0x10($s0)
/* 03AB24 8003AF74 AE000014 */  sw          $zero, 0x14($s0)
/* 03AB28 8003AF78 AE0C0018 */  sw          $t4, 0x18($s0)
/* 03AB2C 8003AF7C AE0F001C */  sw          $t7, 0x1c($s0)
/* 03AB30 8003AF80 03191021 */  addu        $v0, $t8, $t9
/* 03AB34 8003AF84 AE090040 */  sw          $t1, 0x40($s0)
/* 03AB38 8003AF88 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03AB3C 8003AF8C 240F0800 */  addiu       $t7, $zero, 0x800
/* 03AB40 8003AF90 3C188010 */  lui         $t8, %hi(D_800FD128)
/* 03AB44 8003AF94 AE0D0020 */  sw          $t5, 0x20($s0)
/* 03AB48 8003AF98 8C4E0004 */  lw          $t6, 0x4($v0)
/* 03AB4C 8003AF9C AE0F002C */  sw          $t7, 0x2c($s0)
/* 03AB50 8003AFA0 3C038010 */  lui         $v1, %hi(D_800FD120)
/* 03AB54 8003AFA4 AE0E0028 */  sw          $t6, 0x28($s0)
/* 03AB58 8003AFA8 8F18D128 */  lw          $t8, %lo(D_800FD128)($t8)
/* 03AB5C 8003AFAC 24190400 */  addiu       $t9, $zero, 0x400
/* 03AB60 8003AFB0 2463D120 */  addiu       $v1, $v1, %lo(D_800FD120)
/* 03AB64 8003AFB4 AE190034 */  sw          $t9, 0x34($s0)
/* 03AB68 8003AFB8 AE180030 */  sw          $t8, 0x30($s0)
/* 03AB6C 8003AFBC 8C6D0000 */  lw          $t5, 0x0($v1)
/* 03AB70 8003AFC0 3C0F8010 */  lui         $t7, %hi(D_800FD124)
/* 03AB74 8003AFC4 AE0D0038 */  sw          $t5, 0x38($s0)
/* 03AB78 8003AFC8 8C4E0008 */  lw          $t6, 0x8($v0)
/* 03AB7C 8003AFCC 11C00007 */  beqz        $t6, .L8003AFEC
/* 03AB80 8003AFD0 00000000 */   nop
/* 03AB84 8003AFD4 8DEFD124 */  lw          $t7, %lo(D_800FD124)($t7)
/* 03AB88 8003AFD8 8C790000 */  lw          $t9, 0x0($v1)
/* 03AB8C 8003AFDC 000FC0C0 */  sll         $t8, $t7, 3
/* 03AB90 8003AFE0 03196821 */  addu        $t5, $t8, $t9
/* 03AB94 8003AFE4 10000004 */  b           .L8003AFF8
/* 03AB98 8003AFE8 AE0D003C */   sw         $t5, 0x3c($s0)
.L8003AFEC:
/* 03AB9C 8003AFEC 3C0E8010 */  lui         $t6, %hi(D_800FD124)
/* 03ABA0 8003AFF0 8DCED124 */  lw          $t6, %lo(D_800FD124)($t6)
/* 03ABA4 8003AFF4 AE0E003C */  sw          $t6, 0x3c($s0)
.L8003AFF8:
/* 03ABA8 8003AFF8 3C0F8010 */  lui         $t7, %hi(D_800FD12C)
/* 03ABAC 8003AFFC 8DEFD12C */  lw          $t7, %lo(D_800FD12C)($t7)
/* 03ABB0 8003B000 24180C00 */  addiu       $t8, $zero, 0xc00
/* 03ABB4 8003B004 AE18004C */  sw          $t8, 0x4c($s0)
/* 03ABB8 8003B008 AE000000 */  sw          $zero, 0x0($s0)
/* 03ABBC 8003B00C AE050008 */  sw          $a1, 0x8($s0)
/* 03ABC0 8003B010 AE0F0048 */  sw          $t7, 0x48($s0)
/* 03ABC4 8003B014 8FB90048 */  lw          $t9, 0x48($sp)
/* 03ABC8 8003B018 30A20040 */  andi        $v0, $a1, 0x40
/* 03ABCC 8003B01C 10400005 */  beqz        $v0, .L8003B034
/* 03ABD0 8003B020 AE190050 */   sw         $t9, 0x50($s0)
/* 03ABD4 8003B024 3C0D800A */  lui         $t5, %hi(D_800A28E8)
/* 03ABD8 8003B028 25AD28E8 */  addiu       $t5, $t5, %lo(D_800A28E8)
/* 03ABDC 8003B02C 10000004 */  b           .L8003B040
/* 03ABE0 8003B030 AE0D0054 */   sw         $t5, 0x54($s0)
.L8003B034:
/* 03ABE4 8003B034 3C0E800A */  lui         $t6, %hi(D_800A28E4)
/* 03ABE8 8003B038 25CE28E4 */  addiu       $t6, $t6, %lo(D_800A28E4)
/* 03ABEC 8003B03C AE0E0054 */  sw          $t6, 0x54($s0)
.L8003B040:
/* 03ABF0 8003B040 3C0F8010 */  lui         $t7, %hi(D_800FD10C)
/* 03ABF4 8003B044 8DEFD10C */  lw          $t7, %lo(D_800FD10C)($t7)
/* 03ABF8 8003B048 3C198010 */  lui         $t9, %hi(D_800FD118)
/* 03ABFC 8003B04C 000FC080 */  sll         $t8, $t7, 2
/* 03AC00 8003B050 0338C821 */  addu        $t9, $t9, $t8
/* 03AC04 8003B054 8F39D118 */  lw          $t9, %lo(D_800FD118)($t9)
/* 03AC08 8003B058 AE19000C */  sw          $t9, 0xc($s0)
/* 03AC0C 8003B05C AFA70044 */  sw          $a3, 0x44($sp)
/* 03AC10 8003B060 0C014AD8 */  jal         func_80052B60
/* 03AC14 8003B064 AFA20024 */   sw         $v0, 0x24($sp)
/* 03AC18 8003B068 3C048010 */  lui         $a0, %hi(D_800FD110)
/* 03AC1C 8003B06C 8C84D110 */  lw          $a0, %lo(D_800FD110)($a0)
/* 03AC20 8003B070 02002825 */  move        $a1, $s0
/* 03AC24 8003B074 0C013A98 */  jal         func_8004EA60
/* 03AC28 8003B078 24060001 */   addiu      $a2, $zero, 0x1
/* 03AC2C 8003B07C 8FA20024 */  lw          $v0, 0x24($sp)
/* 03AC30 8003B080 3C0B8010 */  lui         $t3, %hi(D_800FD108)
/* 03AC34 8003B084 256BD108 */  addiu       $t3, $t3, %lo(D_800FD108)
/* 03AC38 8003B088 10400006 */  beqz        $v0, .L8003B0A4
/* 03AC3C 8003B08C 8FA70044 */   lw         $a3, 0x44($sp)
/* 03AC40 8003B090 3C028010 */  lui         $v0, %hi(D_800FD10C)
/* 03AC44 8003B094 2442D10C */  addiu       $v0, $v0, %lo(D_800FD10C)
/* 03AC48 8003B098 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03AC4C 8003B09C 39AE0001 */  xori        $t6, $t5, 0x1
/* 03AC50 8003B0A0 AC4E0000 */  sw          $t6, 0x0($v0)
.L8003B0A4:
/* 03AC54 8003B0A4 8D6F0000 */  lw          $t7, 0x0($t3)
/* 03AC58 8003B0A8 3C0D8010 */  lui         $t5, %hi(D_800FD104)
/* 03AC5C 8003B0AC 25F80001 */  addiu       $t8, $t7, 0x1
/* 03AC60 8003B0B0 AD780000 */  sw          $t8, 0x0($t3)
/* 03AC64 8003B0B4 8DADD104 */  lw          $t5, %lo(D_800FD104)($t5)
/* 03AC68 8003B0B8 030D082A */  slt         $at, $t8, $t5
/* 03AC6C 8003B0BC 54200003 */  bnel        $at, $zero, .L8003B0CC
/* 03AC70 8003B0C0 8CEE0000 */   lw         $t6, 0x0($a3)
/* 03AC74 8003B0C4 AD600000 */  sw          $zero, 0x0($t3)
/* 03AC78 8003B0C8 8CEE0000 */  lw          $t6, 0x0($a3)
.L8003B0CC:
/* 03AC7C 8003B0CC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 03AC80 8003B0D0 ADEE0000 */  sw          $t6, 0x0($t7)
/* 03AC84 8003B0D4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03AC88 8003B0D8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03AC8C 8003B0DC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03AC90 8003B0E0 03E00008 */  jr          $ra
/* 03AC94 8003B0E4 00000000 */   nop

glabel func_8003B0E8 # 2
/* 03AC98 8003B0E8 00047100 */  sll         $t6, $a0, 4
/* 03AC9C 8003B0EC 3C03800A */  lui         $v1, %hi(D_800A28F0)
/* 03ACA0 8003B0F0 006E1821 */  addu        $v1, $v1, $t6
/* 03ACA4 8003B0F4 3C05800A */  lui         $a1, %hi(D_800A290C)
/* 03ACA8 8003B0F8 3C08800A */  lui         $t0, %hi(D_800A290C)
/* 03ACAC 8003B0FC 8C6328F0 */  lw          $v1, %lo(D_800A28F0)($v1)
/* 03ACB0 8003B100 2508290C */  addiu       $t0, $t0, %lo(D_800A290C)
/* 03ACB4 8003B104 90A5290C */  lbu         $a1, %lo(D_800A290C)($a1)
/* 03ACB8 8003B108 00001025 */  move        $v0, $zero
/* 03ACBC 8003B10C 24091000 */  addiu       $t1, $zero, 0x1000
.L8003B110:
/* 03ACC0 8003B110 906F0000 */  lbu         $t7, 0x0($v1)
/* 03ACC4 8003B114 24420001 */  addiu       $v0, $v0, 0x1
/* 03ACC8 8003B118 00002025 */  move        $a0, $zero
/* 03ACCC 8003B11C 15E50009 */  bne         $t7, $a1, .L8003B144
/* 03ACD0 8003B120 00603025 */   move       $a2, $v1
/* 03ACD4 8003B124 3C07800A */  lui         $a3, %hi(D_800A290C)
/* 03ACD8 8003B128 24E7290C */  addiu       $a3, $a3, %lo(D_800A290C)
.L8003B12C:
/* 03ACDC 8003B12C 90D80001 */  lbu         $t8, 0x1($a2)
/* 03ACE0 8003B130 90F90001 */  lbu         $t9, 0x1($a3)
/* 03ACE4 8003B134 24840001 */  addiu       $a0, $a0, 0x1
/* 03ACE8 8003B138 24C60001 */  addiu       $a2, $a2, 0x1
/* 03ACEC 8003B13C 1319FFFB */  beq         $t8, $t9, .L8003B12C
/* 03ACF0 8003B140 24E70001 */   addiu      $a3, $a3, 0x1
.L8003B144:
/* 03ACF4 8003B144 01045021 */  addu        $t2, $t0, $a0
/* 03ACF8 8003B148 914B0000 */  lbu         $t3, 0x0($t2)
/* 03ACFC 8003B14C 15600003 */  bnez        $t3, .L8003B15C
/* 03AD00 8003B150 00000000 */   nop
/* 03AD04 8003B154 03E00008 */  jr          $ra
/* 03AD08 8003B158 00601025 */   move       $v0, $v1
.L8003B15C:
/* 03AD0C 8003B15C 1449FFEC */  bne         $v0, $t1, .L8003B110
/* 03AD10 8003B160 24630001 */   addiu      $v1, $v1, 0x1
/* 03AD14 8003B164 3C02800A */  lui         $v0, %hi(D_800A291C)
/* 03AD18 8003B168 2442291C */  addiu       $v0, $v0, %lo(D_800A291C)
/* 03AD1C 8003B16C 03E00008 */  jr          $ra
/* 03AD20 8003B170 00000000 */   nop

glabel func_8003B174 # 3
/* 03AD24 8003B174 03E00008 */  jr          $ra
/* 03AD28 8003B178 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8003B17C # 4
/* 03AD2C 8003B17C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03AD30 8003B180 AFA40018 */  sw          $a0, 0x18($sp)
/* 03AD34 8003B184 3C048010 */  lui         $a0, %hi(D_800FD130)
/* 03AD38 8003B188 2484D130 */  addiu       $a0, $a0, %lo(D_800FD130)
/* 03AD3C 8003B18C AFA5001C */  sw          $a1, 0x1c($sp)
/* 03AD40 8003B190 AFA60020 */  sw          $a2, 0x20($sp)
/* 03AD44 8003B194 27AE0018 */  addiu       $t6, $sp, 0x18
/* 03AD48 8003B198 8FA6006C */  lw          $a2, 0x6c($sp)
/* 03AD4C 8003B19C 8FA50068 */  lw          $a1, 0x68($sp)
/* 03AD50 8003B1A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03AD54 8003B1A4 AFA70024 */  sw          $a3, 0x24($sp)
/* 03AD58 8003B1A8 240300F0 */  addiu       $v1, $zero, 0xf0
/* 03AD5C 8003B1AC 25D90048 */  addiu       $t9, $t6, 0x48
/* 03AD60 8003B1B0 00804025 */  move        $t0, $a0
.L8003B1B4:
/* 03AD64 8003B1B4 8DC10000 */  lw          $at, 0x0($t6)
/* 03AD68 8003B1B8 25CE000C */  addiu       $t6, $t6, 0xc
/* 03AD6C 8003B1BC 2508000C */  addiu       $t0, $t0, 0xc
/* 03AD70 8003B1C0 AD01FFF4 */  sw          $at, -0xc($t0)
/* 03AD74 8003B1C4 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 03AD78 8003B1C8 AD01FFF8 */  sw          $at, -0x8($t0)
/* 03AD7C 8003B1CC 8DC1FFFC */  lw          $at, -0x4($t6)
/* 03AD80 8003B1D0 15D9FFF8 */  bne         $t6, $t9, .L8003B1B4
/* 03AD84 8003B1D4 AD01FFFC */   sw         $at, -0x4($t0)
/* 03AD88 8003B1D8 00A60019 */  multu       $a1, $a2
/* 03AD8C 8003B1DC 8DC10000 */  lw          $at, 0x0($t6)
/* 03AD90 8003B1E0 00055A80 */  sll         $t3, $a1, 10
/* 03AD94 8003B1E4 AD010000 */  sw          $at, 0x0($t0)
/* 03AD98 8003B1E8 8DD90004 */  lw          $t9, 0x4($t6)
/* 03AD9C 8003B1EC AD190004 */  sw          $t9, 0x4($t0)
/* 03ADA0 8003B1F0 8FAD0070 */  lw          $t5, 0x70($sp)
/* 03ADA4 8003B1F4 00004812 */  mflo        $t1
/* 03ADA8 8003B1F8 00000000 */  nop
/* 03ADAC 8003B1FC 00000000 */  nop
/* 03ADB0 8003B200 0123001A */  div         $zero, $t1, $v1
/* 03ADB4 8003B204 14600002 */  bnez        $v1, .L8003B210
/* 03ADB8 8003B208 00000000 */   nop
/* 03ADBC 8003B20C 0007000D */  break       7
.L8003B210:
/* 03ADC0 8003B210 2401FFFF */  addiu       $at, $zero, -0x1
/* 03ADC4 8003B214 14610004 */  bne         $v1, $at, .L8003B228
/* 03ADC8 8003B218 3C018000 */   lui        $at, 0x8000
/* 03ADCC 8003B21C 15210002 */  bne         $t1, $at, .L8003B228
/* 03ADD0 8003B220 00000000 */   nop
/* 03ADD4 8003B224 0006000D */  break       6
.L8003B228:
/* 03ADD8 8003B228 00005012 */  mflo        $t2
/* 03ADDC 8003B22C 3C018010 */  lui         $at, %hi(D_800FD138)
/* 03ADE0 8003B230 AC2AD138 */  sw          $t2, %lo(D_800FD138)($at)
/* 03ADE4 8003B234 24010280 */  addiu       $at, $zero, 0x280
/* 03ADE8 8003B238 0161001A */  div         $zero, $t3, $at
/* 03ADEC 8003B23C 00006012 */  mflo        $t4
/* 03ADF0 8003B240 3C018010 */  lui         $at, %hi(D_800FD150)
/* 03ADF4 8003B244 AC2CD150 */  sw          $t4, %lo(D_800FD150)($at)
/* 03ADF8 8003B248 05A10003 */  bgez        $t5, .L8003B258
/* 03ADFC 8003B24C 000DC0C3 */   sra        $t8, $t5, 3
/* 03AE00 8003B250 25A10007 */  addiu       $at, $t5, 0x7
/* 03AE04 8003B254 0001C0C3 */  sra         $t8, $at, 3
.L8003B258:
/* 03AE08 8003B258 03050019 */  multu       $t8, $a1
/* 03AE0C 8003B25C 00001012 */  mflo        $v0
/* 03AE10 8003B260 AC820028 */  sw          $v0, 0x28($a0)
/* 03AE14 8003B264 00000000 */  nop
/* 03AE18 8003B268 00460019 */  multu       $v0, $a2
/* 03AE1C 8003B26C 00007812 */  mflo        $t7
/* 03AE20 8003B270 00000000 */  nop
/* 03AE24 8003B274 00000000 */  nop
/* 03AE28 8003B278 01E3001A */  div         $zero, $t7, $v1
/* 03AE2C 8003B27C 0000C812 */  mflo        $t9
/* 03AE30 8003B280 AC99003C */  sw          $t9, 0x3c($a0)
/* 03AE34 8003B284 14600002 */  bnez        $v1, .L8003B290
/* 03AE38 8003B288 00000000 */   nop
/* 03AE3C 8003B28C 0007000D */  break       7
.L8003B290:
/* 03AE40 8003B290 2401FFFF */  addiu       $at, $zero, -0x1
/* 03AE44 8003B294 14610004 */  bne         $v1, $at, .L8003B2A8
/* 03AE48 8003B298 3C018000 */   lui        $at, 0x8000
/* 03AE4C 8003B29C 15E10002 */  bne         $t7, $at, .L8003B2A8
/* 03AE50 8003B2A0 00000000 */   nop
/* 03AE54 8003B2A4 0006000D */  break       6
.L8003B2A8:
/* 03AE58 8003B2A8 0C014830 */  jal         func_800520C0
/* 03AE5C 8003B2AC 00000000 */   nop
/* 03AE60 8003B2B0 0C01452C */  jal         func_800514B0
/* 03AE64 8003B2B4 24040001 */   addiu      $a0, $zero, 0x1
/* 03AE68 8003B2B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03AE6C 8003B2BC 8FAE0068 */  lw          $t6, 0x68($sp)
/* 03AE70 8003B2C0 3C01800A */  lui         $at, %hi(D_800A28E0)
/* 03AE74 8003B2C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03AE78 8003B2C8 03E00008 */  jr          $ra
/* 03AE7C 8003B2CC AC2E28E0 */   sw         $t6, %lo(D_800A28E0)($at)

glabel func_8003B2D0 # 5
/* 03AE80 8003B2D0 00E51023 */  subu        $v0, $a3, $a1
/* 03AE84 8003B2D4 00024040 */  sll         $t0, $v0, 1
/* 03AE88 8003B2D8 250E0002 */  addiu       $t6, $t0, 0x2
/* 03AE8C 8003B2DC A48E0000 */  sh          $t6, 0x0($a0)
/* 03AE90 8003B2E0 8FAF0010 */  lw          $t7, 0x10($sp)
/* 03AE94 8003B2E4 0005C880 */  sll         $t9, $a1, 2
/* 03AE98 8003B2E8 03285821 */  addu        $t3, $t9, $t0
/* 03AE9C 8003B2EC 01E61823 */  subu        $v1, $t7, $a2
/* 03AEA0 8003B2F0 00034840 */  sll         $t1, $v1, 1
/* 03AEA4 8003B2F4 24590001 */  addiu       $t9, $v0, 0x1
/* 03AEA8 8003B2F8 44992000 */  mtc1        $t9, $f4
/* 03AEAC 8003B2FC 25380002 */  addiu       $t8, $t1, 0x2
/* 03AEB0 8003B300 A4980002 */  sh          $t8, 0x2($a0)
/* 03AEB4 8003B304 A480000E */  sh          $zero, 0xe($a0)
/* 03AEB8 8003B308 8498000E */  lh          $t8, 0xe($a0)
/* 03AEBC 8003B30C 00066880 */  sll         $t5, $a2, 2
/* 03AEC0 8003B310 468021A0 */  cvt.s.w     $f6, $f4
/* 03AEC4 8003B314 240A01FF */  addiu       $t2, $zero, 0x1ff
/* 03AEC8 8003B318 01A97021 */  addu        $t6, $t5, $t1
/* 03AECC 8003B31C 25CF0002 */  addiu       $t7, $t6, 0x2
/* 03AED0 8003B320 256C0002 */  addiu       $t4, $t3, 0x2
/* 03AED4 8003B324 A48A0004 */  sh          $t2, 0x4($a0)
/* 03AED8 8003B328 A48C0008 */  sh          $t4, 0x8($a0)
/* 03AEDC 8003B32C A48F000A */  sh          $t7, 0xa($a0)
/* 03AEE0 8003B330 A48A000C */  sh          $t2, 0xc($a0)
/* 03AEE4 8003B334 A4980006 */  sh          $t8, 0x6($a0)
/* 03AEE8 8003B338 C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 03AEEC 8003B33C 246B0001 */  addiu       $t3, $v1, 0x1
/* 03AEF0 8003B340 448B8000 */  mtc1        $t3, $f16
/* 03AEF4 8003B344 46083282 */  mul.s       $f10, $f6, $f8
/* 03AEF8 8003B348 8FAC0018 */  lw          $t4, 0x18($sp)
/* 03AEFC 8003B34C 8FAD0014 */  lw          $t5, 0x14($sp)
/* 03AF00 8003B350 448C3000 */  mtc1        $t4, $f6
/* 03AF04 8003B354 468084A0 */  cvt.s.w     $f18, $f16
/* 03AF08 8003B358 46803220 */  cvt.s.w     $f8, $f6
/* 03AF0C 8003B35C 46125103 */  div.s       $f4, $f10, $f18
/* 03AF10 8003B360 448D5000 */  mtc1        $t5, $f10
/* 03AF14 8003B364 00000000 */  nop
/* 03AF18 8003B368 468054A0 */  cvt.s.w     $f18, $f10
/* 03AF1C 8003B36C 46082402 */  mul.s       $f16, $f4, $f8
/* 03AF20 8003B370 03E00008 */  jr          $ra
/* 03AF24 8003B374 46128003 */   div.s      $f0, $f16, $f18

glabel func_8003B378 # 6
/* 03AF28 8003B378 27BDFEE8 */  addiu       $sp, $sp, -0x118
/* 03AF2C 8003B37C 3C0F800A */  lui         $t7, %hi(D_800A2924)
/* 03AF30 8003B380 AFB00008 */  sw          $s0, 0x8($sp)
/* 03AF34 8003B384 3C02800A */  lui         $v0, %hi(D_800A28E0)
/* 03AF38 8003B388 25EF2924 */  addiu       $t7, $t7, %lo(D_800A2924)
/* 03AF3C 8003B38C 244228E0 */  addiu       $v0, $v0, %lo(D_800A28E0)
/* 03AF40 8003B390 00808025 */  move        $s0, $a0
/* 03AF44 8003B394 AFB5001C */  sw          $s5, 0x1c($sp)
/* 03AF48 8003B398 AFB40018 */  sw          $s4, 0x18($sp)
/* 03AF4C 8003B39C AFB30014 */  sw          $s3, 0x14($sp)
/* 03AF50 8003B3A0 AFB20010 */  sw          $s2, 0x10($sp)
/* 03AF54 8003B3A4 AFB1000C */  sw          $s1, 0xc($sp)
/* 03AF58 8003B3A8 AFA60120 */  sw          $a2, 0x120($sp)
/* 03AF5C 8003B3AC 25F900B4 */  addiu       $t9, $t7, 0xb4
/* 03AF60 8003B3B0 27AE0058 */  addiu       $t6, $sp, 0x58
.L8003B3B4:
/* 03AF64 8003B3B4 8DE10000 */  lw          $at, 0x0($t7)
/* 03AF68 8003B3B8 25EF000C */  addiu       $t7, $t7, 0xc
/* 03AF6C 8003B3BC 25CE000C */  addiu       $t6, $t6, 0xc
/* 03AF70 8003B3C0 ADC1FFF4 */  sw          $at, -0xc($t6)
/* 03AF74 8003B3C4 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 03AF78 8003B3C8 ADC1FFF8 */  sw          $at, -0x8($t6)
/* 03AF7C 8003B3CC 8DE1FFFC */  lw          $at, -0x4($t7)
/* 03AF80 8003B3D0 15F9FFF8 */  bne         $t7, $t9, .L8003B3B4
/* 03AF84 8003B3D4 ADC1FFFC */   sw         $at, -0x4($t6)
/* 03AF88 8003B3D8 8DE10000 */  lw          $at, 0x0($t7)
/* 03AF8C 8003B3DC 8DF90004 */  lw          $t9, 0x4($t7)
/* 03AF90 8003B3E0 3C088010 */  lui         $t0, %hi(D_800FD118)
/* 03AF94 8003B3E4 ADC10000 */  sw          $at, 0x0($t6)
/* 03AF98 8003B3E8 95E10008 */  lhu         $at, 0x8($t7)
/* 03AF9C 8003B3EC ADD90004 */  sw          $t9, 0x4($t6)
/* 03AFA0 8003B3F0 3C0A8010 */  lui         $t2, %hi(D_800FD120)
/* 03AFA4 8003B3F4 A5C10008 */  sh          $at, 0x8($t6)
/* 03AFA8 8003B3F8 8C4B0000 */  lw          $t3, 0x0($v0)
/* 03AFAC 8003B3FC 254AD120 */  addiu       $t2, $t2, %lo(D_800FD120)
/* 03AFB0 8003B400 2508D118 */  addiu       $t0, $t0, %lo(D_800FD118)
/* 03AFB4 8003B404 1160007A */  beqz        $t3, .L8003B5F0
/* 03AFB8 8003B408 00054840 */   sll        $t1, $a1, 1
/* 03AFBC 8003B40C 2407003A */  addiu       $a3, $zero, 0x3a
/* 03AFC0 8003B410 24040005 */  addiu       $a0, $zero, 0x5
/* 03AFC4 8003B414 24030008 */  addiu       $v1, $zero, 0x8
/* 03AFC8 8003B418 8FB90120 */  lw          $t9, 0x120($sp)
.L8003B41C:
/* 03AFCC 8003B41C 8D180000 */  lw          $t8, 0x0($t0)
/* 03AFD0 8003B420 25080004 */  addiu       $t0, $t0, 0x4
/* 03AFD4 8003B424 01790019 */  multu       $t3, $t9
/* 03AFD8 8003B428 02002825 */  move        $a1, $s0
/* 03AFDC 8003B42C 00007812 */  mflo        $t7
/* 03AFE0 8003B430 000F7040 */  sll         $t6, $t7, 1
/* 03AFE4 8003B434 920F0000 */  lbu         $t7, 0x0($s0)
/* 03AFE8 8003B438 030EC821 */  addu        $t9, $t8, $t6
/* 03AFEC 8003B43C 03293021 */  addu        $a2, $t9, $t1
/* 03AFF0 8003B440 11E00069 */  beqz        $t7, .L8003B5E8
/* 03AFF4 8003B444 00000000 */   nop
/* 03AFF8 8003B448 90AC0000 */  lbu         $t4, 0x0($a1)
/* 03AFFC 8003B44C 318B00FF */  andi        $t3, $t4, 0xff
.L8003B450:
/* 03B000 8003B450 29610030 */  slti        $at, $t3, 0x30
/* 03B004 8003B454 14200007 */  bnez        $at, .L8003B474
/* 03B008 8003B458 01606825 */   move       $t5, $t3
/* 03B00C 8003B45C 2961003A */  slti        $at, $t3, 0x3a
/* 03B010 8003B460 10200004 */  beqz        $at, .L8003B474
/* 03B014 8003B464 256BFFD0 */   addiu      $t3, $t3, -0x30
/* 03B018 8003B468 317800FF */  andi        $t8, $t3, 0xff
/* 03B01C 8003B46C 10000015 */  b           .L8003B4C4
/* 03B020 8003B470 03005825 */   move       $t3, $t8
.L8003B474:
/* 03B024 8003B474 29A10061 */  slti        $at, $t5, 0x61
/* 03B028 8003B478 14200006 */  bnez        $at, .L8003B494
/* 03B02C 8003B47C 29A1007B */   slti       $at, $t5, 0x7b
/* 03B030 8003B480 10200004 */  beqz        $at, .L8003B494
/* 03B034 8003B484 25ABFFA9 */   addiu      $t3, $t5, -0x57
/* 03B038 8003B488 316E00FF */  andi        $t6, $t3, 0xff
/* 03B03C 8003B48C 1000000D */  b           .L8003B4C4
/* 03B040 8003B490 01C05825 */   move       $t3, $t6
.L8003B494:
/* 03B044 8003B494 29A10041 */  slti        $at, $t5, 0x41
/* 03B048 8003B498 14200006 */  bnez        $at, .L8003B4B4
/* 03B04C 8003B49C 29A1005B */   slti       $at, $t5, 0x5b
/* 03B050 8003B4A0 10200004 */  beqz        $at, .L8003B4B4
/* 03B054 8003B4A4 25ABFFC9 */   addiu      $t3, $t5, -0x37
/* 03B058 8003B4A8 317900FF */  andi        $t9, $t3, 0xff
/* 03B05C 8003B4AC 10000005 */  b           .L8003B4C4
/* 03B060 8003B4B0 03205825 */   move       $t3, $t9
.L8003B4B4:
/* 03B064 8003B4B4 14ED0003 */  bne         $a3, $t5, .L8003B4C4
/* 03B068 8003B4B8 240B0024 */   addiu      $t3, $zero, 0x24
/* 03B06C 8003B4BC 10000001 */  b           .L8003B4C4
/* 03B070 8003B4C0 240B0025 */   addiu      $t3, $zero, 0x25
.L8003B4C4:
/* 03B074 8003B4C4 000B7880 */  sll         $t7, $t3, 2
/* 03B078 8003B4C8 01EB7821 */  addu        $t7, $t7, $t3
/* 03B07C 8003B4CC 27B80058 */  addiu       $t8, $sp, 0x58
/* 03B080 8003B4D0 01F89021 */  addu        $s2, $t7, $t8
/* 03B084 8003B4D4 00006025 */  move        $t4, $zero
/* 03B088 8003B4D8 00C06825 */  move        $t5, $a2
.L8003B4DC:
/* 03B08C 8003B4DC 00005825 */  move        $t3, $zero
/* 03B090 8003B4E0 92510000 */  lbu         $s1, 0x0($s2)
/* 03B094 8003B4E4 01A0A825 */  move        $s5, $t5
.L8003B4E8:
/* 03B098 8003B4E8 322E0080 */  andi        $t6, $s1, 0x80
/* 03B09C 8003B4EC 11C00003 */  beqz        $t6, .L8003B4FC
/* 03B0A0 8003B4F0 02209825 */   move       $s3, $s1
/* 03B0A4 8003B4F4 10000002 */  b           .L8003B500
/* 03B0A8 8003B4F8 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003B4FC:
/* 03B0AC 8003B4FC 24140001 */  addiu       $s4, $zero, 0x1
.L8003B500:
/* 03B0B0 8003B500 A6B40000 */  sh          $s4, 0x0($s5)
/* 03B0B4 8003B504 8C590000 */  lw          $t9, 0x0($v0)
/* 03B0B8 8003B508 00138840 */  sll         $s1, $s3, 1
/* 03B0BC 8003B50C 323300FF */  andi        $s3, $s1, 0xff
/* 03B0C0 8003B510 00197840 */  sll         $t7, $t9, 1
/* 03B0C4 8003B514 32790080 */  andi        $t9, $s3, 0x80
/* 03B0C8 8003B518 02AFC021 */  addu        $t8, $s5, $t7
/* 03B0CC 8003B51C 13200003 */  beqz        $t9, .L8003B52C
/* 03B0D0 8003B520 A7140000 */   sh         $s4, 0x0($t8)
/* 03B0D4 8003B524 10000002 */  b           .L8003B530
/* 03B0D8 8003B528 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003B52C:
/* 03B0DC 8003B52C 24140001 */  addiu       $s4, $zero, 0x1
.L8003B530:
/* 03B0E0 8003B530 A6B40002 */  sh          $s4, 0x2($s5)
/* 03B0E4 8003B534 8C4F0000 */  lw          $t7, 0x0($v0)
/* 03B0E8 8003B538 00138840 */  sll         $s1, $s3, 1
/* 03B0EC 8003B53C 323300FF */  andi        $s3, $s1, 0xff
/* 03B0F0 8003B540 000FC040 */  sll         $t8, $t7, 1
/* 03B0F4 8003B544 02B87021 */  addu        $t6, $s5, $t8
/* 03B0F8 8003B548 326F0080 */  andi        $t7, $s3, 0x80
/* 03B0FC 8003B54C 11E00003 */  beqz        $t7, .L8003B55C
/* 03B100 8003B550 A5D40002 */   sh         $s4, 0x2($t6)
/* 03B104 8003B554 10000002 */  b           .L8003B560
/* 03B108 8003B558 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003B55C:
/* 03B10C 8003B55C 24140001 */  addiu       $s4, $zero, 0x1
.L8003B560:
/* 03B110 8003B560 A6B40004 */  sh          $s4, 0x4($s5)
/* 03B114 8003B564 8C580000 */  lw          $t8, 0x0($v0)
/* 03B118 8003B568 00138840 */  sll         $s1, $s3, 1
/* 03B11C 8003B56C 323300FF */  andi        $s3, $s1, 0xff
/* 03B120 8003B570 00187040 */  sll         $t6, $t8, 1
/* 03B124 8003B574 02AEC821 */  addu        $t9, $s5, $t6
/* 03B128 8003B578 32780080 */  andi        $t8, $s3, 0x80
/* 03B12C 8003B57C 13000003 */  beqz        $t8, .L8003B58C
/* 03B130 8003B580 A7340004 */   sh         $s4, 0x4($t9)
/* 03B134 8003B584 10000002 */  b           .L8003B590
/* 03B138 8003B588 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003B58C:
/* 03B13C 8003B58C 24140001 */  addiu       $s4, $zero, 0x1
.L8003B590:
/* 03B140 8003B590 A6B40006 */  sh          $s4, 0x6($s5)
/* 03B144 8003B594 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03B148 8003B598 00138840 */  sll         $s1, $s3, 1
/* 03B14C 8003B59C 323800FF */  andi        $t8, $s1, 0xff
/* 03B150 8003B5A0 000EC840 */  sll         $t9, $t6, 1
/* 03B154 8003B5A4 02B97821 */  addu        $t7, $s5, $t9
/* 03B158 8003B5A8 256B0004 */  addiu       $t3, $t3, 0x4
/* 03B15C 8003B5AC A5F40006 */  sh          $s4, 0x6($t7)
/* 03B160 8003B5B0 26B50008 */  addiu       $s5, $s5, 0x8
/* 03B164 8003B5B4 1563FFCC */  bne         $t3, $v1, .L8003B4E8
/* 03B168 8003B5B8 03008825 */   move       $s1, $t8
/* 03B16C 8003B5BC 8C4B0000 */  lw          $t3, 0x0($v0)
/* 03B170 8003B5C0 258C0001 */  addiu       $t4, $t4, 0x1
/* 03B174 8003B5C4 26520001 */  addiu       $s2, $s2, 0x1
/* 03B178 8003B5C8 000BC880 */  sll         $t9, $t3, 2
/* 03B17C 8003B5CC 1584FFC3 */  bne         $t4, $a0, .L8003B4DC
/* 03B180 8003B5D0 01B96821 */   addu       $t5, $t5, $t9
/* 03B184 8003B5D4 90AC0001 */  lbu         $t4, 0x1($a1)
/* 03B188 8003B5D8 24A50001 */  addiu       $a1, $a1, 0x1
/* 03B18C 8003B5DC 24C60010 */  addiu       $a2, $a2, 0x10
/* 03B190 8003B5E0 5580FF9B */  bnel        $t4, $zero, .L8003B450
/* 03B194 8003B5E4 318B00FF */   andi       $t3, $t4, 0xff
.L8003B5E8:
/* 03B198 8003B5E8 550AFF8C */  bnel        $t0, $t2, .L8003B41C
/* 03B19C 8003B5EC 8FB90120 */   lw         $t9, 0x120($sp)
.L8003B5F0:
/* 03B1A0 8003B5F0 8FB00008 */  lw          $s0, 0x8($sp)
/* 03B1A4 8003B5F4 8FB1000C */  lw          $s1, 0xc($sp)
/* 03B1A8 8003B5F8 8FB20010 */  lw          $s2, 0x10($sp)
/* 03B1AC 8003B5FC 8FB30014 */  lw          $s3, 0x14($sp)
/* 03B1B0 8003B600 8FB40018 */  lw          $s4, 0x18($sp)
/* 03B1B4 8003B604 8FB5001C */  lw          $s5, 0x1c($sp)
/* 03B1B8 8003B608 03E00008 */  jr          $ra
/* 03B1BC 8003B60C 27BD0118 */   addiu      $sp, $sp, 0x118

glabel func_8003B610 # 7
/* 03B1C0 8003B610 3C038010 */  lui         $v1, %hi(D_800FD198)
/* 03B1C4 8003B614 2463D198 */  addiu       $v1, $v1, %lo(D_800FD198)
/* 03B1C8 8003B618 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03B1CC 8003B61C AC640000 */  sw          $a0, 0x0($v1)
/* 03B1D0 8003B620 248F0008 */  addiu       $t7, $a0, 0x8
/* 03B1D4 8003B624 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03B1D8 8003B628 AFA40038 */  sw          $a0, 0x38($sp)
/* 03B1DC 8003B62C AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B1E0 8003B630 3C18E700 */  lui         $t8, 0xe700
/* 03B1E4 8003B634 AC980000 */  sw          $t8, 0x0($a0)
/* 03B1E8 8003B638 AC800004 */  sw          $zero, 0x4($a0)
/* 03B1EC 8003B63C 8C620000 */  lw          $v0, 0x0($v1)
/* 03B1F0 8003B640 3C0EE300 */  lui         $t6, (0xE3000A01 >> 16)
/* 03B1F4 8003B644 35CE0A01 */  ori         $t6, $t6, (0xE3000A01 & 0xFFFF)
/* 03B1F8 8003B648 24590008 */  addiu       $t9, $v0, 0x8
/* 03B1FC 8003B64C AC790000 */  sw          $t9, 0x0($v1)
/* 03B200 8003B650 AC400004 */  sw          $zero, 0x4($v0)
/* 03B204 8003B654 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03B208 8003B658 8C620000 */  lw          $v0, 0x0($v1)
/* 03B20C 8003B65C 3C18E300 */  lui         $t8, (0xE3000C00 >> 16)
/* 03B210 8003B660 37180C00 */  ori         $t8, $t8, (0xE3000C00 & 0xFFFF)
/* 03B214 8003B664 244F0008 */  addiu       $t7, $v0, 0x8
/* 03B218 8003B668 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B21C 8003B66C AC400004 */  sw          $zero, 0x4($v0)
/* 03B220 8003B670 AC580000 */  sw          $t8, 0x0($v0)
/* 03B224 8003B674 8C620000 */  lw          $v0, 0x0($v1)
/* 03B228 8003B678 3C0EE300 */  lui         $t6, (0xE3001402 >> 16)
/* 03B22C 8003B67C 35CE1402 */  ori         $t6, $t6, (0xE3001402 & 0xFFFF)
/* 03B230 8003B680 24590008 */  addiu       $t9, $v0, 0x8
/* 03B234 8003B684 AC790000 */  sw          $t9, 0x0($v1)
/* 03B238 8003B688 240F0C00 */  addiu       $t7, $zero, 0xc00
/* 03B23C 8003B68C AC4F0004 */  sw          $t7, 0x4($v0)
/* 03B240 8003B690 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03B244 8003B694 8C620000 */  lw          $v0, 0x0($v1)
/* 03B248 8003B698 3C19E300 */  lui         $t9, (0xE3001201 >> 16)
/* 03B24C 8003B69C 37391201 */  ori         $t9, $t9, (0xE3001201 & 0xFFFF)
/* 03B250 8003B6A0 24580008 */  addiu       $t8, $v0, 0x8
/* 03B254 8003B6A4 AC780000 */  sw          $t8, 0x0($v1)
/* 03B258 8003B6A8 240E2000 */  addiu       $t6, $zero, 0x2000
/* 03B25C 8003B6AC AC4E0004 */  sw          $t6, 0x4($v0)
/* 03B260 8003B6B0 AC590000 */  sw          $t9, 0x0($v0)
/* 03B264 8003B6B4 8C620000 */  lw          $v0, 0x0($v1)
/* 03B268 8003B6B8 3C18E300 */  lui         $t8, (0xE3000F00 >> 16)
/* 03B26C 8003B6BC 37180F00 */  ori         $t8, $t8, (0xE3000F00 & 0xFFFF)
/* 03B270 8003B6C0 244F0008 */  addiu       $t7, $v0, 0x8
/* 03B274 8003B6C4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B278 8003B6C8 AC400004 */  sw          $zero, 0x4($v0)
/* 03B27C 8003B6CC AC580000 */  sw          $t8, 0x0($v0)
/* 03B280 8003B6D0 8C620000 */  lw          $v0, 0x0($v1)
/* 03B284 8003B6D4 3C0EE200 */  lui         $t6, (0xE2001E01 >> 16)
/* 03B288 8003B6D8 35CE1E01 */  ori         $t6, $t6, (0xE2001E01 & 0xFFFF)
/* 03B28C 8003B6DC 24590008 */  addiu       $t9, $v0, 0x8
/* 03B290 8003B6E0 AC790000 */  sw          $t9, 0x0($v1)
/* 03B294 8003B6E4 AC400004 */  sw          $zero, 0x4($v0)
/* 03B298 8003B6E8 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03B29C 8003B6EC 8C620000 */  lw          $v0, 0x0($v1)
/* 03B2A0 8003B6F0 3C0EFF2F */  lui         $t6, (0xFF2FFFFF >> 16)
/* 03B2A4 8003B6F4 3C18FC11 */  lui         $t8, (0xFC119623 >> 16)
/* 03B2A8 8003B6F8 244F0008 */  addiu       $t7, $v0, 0x8
/* 03B2AC 8003B6FC AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B2B0 8003B700 AFA20018 */  sw          $v0, 0x18($sp)
/* 03B2B4 8003B704 37189623 */  ori         $t8, $t8, (0xFC119623 & 0xFFFF)
/* 03B2B8 8003B708 35CEFFFF */  ori         $t6, $t6, (0xFF2FFFFF & 0xFFFF)
/* 03B2BC 8003B70C AC4E0004 */  sw          $t6, 0x4($v0)
/* 03B2C0 8003B710 AC580000 */  sw          $t8, 0x0($v0)
/* 03B2C4 8003B714 3C048010 */  lui         $a0, %hi(D_800FD1A0)
/* 03B2C8 8003B718 3C058010 */  lui         $a1, %hi(D_800FD1A4)
/* 03B2CC 8003B71C 3C068010 */  lui         $a2, %hi(D_800FD1A8)
/* 03B2D0 8003B720 3C078010 */  lui         $a3, %hi(D_800FD1AC)
/* 03B2D4 8003B724 8CE7D1AC */  lw          $a3, %lo(D_800FD1AC)($a3)
/* 03B2D8 8003B728 8CC6D1A8 */  lw          $a2, %lo(D_800FD1A8)($a2)
/* 03B2DC 8003B72C 8CA5D1A4 */  lw          $a1, %lo(D_800FD1A4)($a1)
/* 03B2E0 8003B730 0C00F0F9 */  jal         func_8003C3E4
/* 03B2E4 8003B734 8C84D1A0 */   lw         $a0, %lo(D_800FD1A0)($a0)
/* 03B2E8 8003B738 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03B2EC 8003B73C 3C0F800A */  lui         $t7, %hi(D_800A29F0)
/* 03B2F0 8003B740 25EF29F0 */  addiu       $t7, $t7, %lo(D_800A29F0)
/* 03B2F4 8003B744 3C018010 */  lui         $at, %hi(D_800FD1D8)
/* 03B2F8 8003B748 AC2FD1D8 */  sw          $t7, %lo(D_800FD1D8)($at)
/* 03B2FC 8003B74C 03E00008 */  jr          $ra
/* 03B300 8003B750 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8003B754 # 8
/* 03B304 8003B754 3C0E8010 */  lui         $t6, %hi(D_800FD198)
/* 03B308 8003B758 8DCED198 */  lw          $t6, %lo(D_800FD198)($t6)
/* 03B30C 8003B75C 03E00008 */  jr          $ra
/* 03B310 8003B760 AC8E0000 */   sw         $t6, 0x0($a0)

glabel func_8003B764 # 9
/* 03B314 8003B764 3C028010 */  lui         $v0, %hi(D_800FD1A0)
/* 03B318 8003B768 2442D1A0 */  addiu       $v0, $v0, %lo(D_800FD1A0)
/* 03B31C 8003B76C 240300FF */  addiu       $v1, $zero, 0xff
/* 03B320 8003B770 AC430000 */  sw          $v1, 0x0($v0)
/* 03B324 8003B774 AC430004 */  sw          $v1, 0x4($v0)
/* 03B328 8003B778 AC430008 */  sw          $v1, 0x8($v0)
/* 03B32C 8003B77C AC43000C */  sw          $v1, 0xc($v0)
/* 03B330 8003B780 3C0E8010 */  lui         $t6, %hi(D_800FD180)
/* 03B334 8003B784 8DCED180 */  lw          $t6, %lo(D_800FD180)($t6)
/* 03B338 8003B788 3C0F8010 */  lui         $t7, %hi(D_800FD184)
/* 03B33C 8003B78C 8DEFD184 */  lw          $t7, %lo(D_800FD184)($t7)
/* 03B340 8003B790 3C018010 */  lui         $at, %hi(D_800FD1B0)
/* 03B344 8003B794 3C188010 */  lui         $t8, %hi(D_800FD188)
/* 03B348 8003B798 AC2ED1B0 */  sw          $t6, %lo(D_800FD1B0)($at)
/* 03B34C 8003B79C 8F18D188 */  lw          $t8, %lo(D_800FD188)($t8)
/* 03B350 8003B7A0 3C018010 */  lui         $at, %hi(D_800FD1B4)
/* 03B354 8003B7A4 AC2FD1B4 */  sw          $t7, %lo(D_800FD1B4)($at)
/* 03B358 8003B7A8 3C018010 */  lui         $at, %hi(D_800FD1B8)
/* 03B35C 8003B7AC 3C198010 */  lui         $t9, %hi(D_800FD18C)
/* 03B360 8003B7B0 8F39D18C */  lw          $t9, %lo(D_800FD18C)($t9)
/* 03B364 8003B7B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03B368 8003B7B8 AC38D1B8 */  sw          $t8, %lo(D_800FD1B8)($at)
/* 03B36C 8003B7BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03B370 8003B7C0 3C018010 */  lui         $at, %hi(D_800FD1BC)
/* 03B374 8003B7C4 00002025 */  move        $a0, $zero
/* 03B378 8003B7C8 00002825 */  move        $a1, $zero
/* 03B37C 8003B7CC 0C00F0CA */  jal         func_8003C328
/* 03B380 8003B7D0 AC39D1BC */   sw         $t9, %lo(D_800FD1BC)($at)
/* 03B384 8003B7D4 3C013F80 */  lui         $at, 0x3f80
/* 03B388 8003B7D8 44810000 */  mtc1        $at, $f0
/* 03B38C 8003B7DC 3C018010 */  lui         $at, %hi(D_800FD1C8)
/* 03B390 8003B7E0 AC20D1C8 */  sw          $zero, %lo(D_800FD1C8)($at)
/* 03B394 8003B7E4 3C018010 */  lui         $at, %hi(D_800FD1CC)
/* 03B398 8003B7E8 24080008 */  addiu       $t0, $zero, 0x8
/* 03B39C 8003B7EC AC28D1CC */  sw          $t0, %lo(D_800FD1CC)($at)
/* 03B3A0 8003B7F0 3C018010 */  lui         $at, %hi(D_800FD1D0)
/* 03B3A4 8003B7F4 E420D1D0 */  swc1        $f0, %lo(D_800FD1D0)($at)
/* 03B3A8 8003B7F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03B3AC 8003B7FC 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03B3B0 8003B800 3C09800A */  lui         $t1, %hi(D_800A29F0)
/* 03B3B4 8003B804 E420D1D4 */  swc1        $f0, %lo(D_800FD1D4)($at)
/* 03B3B8 8003B808 3C018010 */  lui         $at, %hi(D_800FD1D8)
/* 03B3BC 8003B80C 252929F0 */  addiu       $t1, $t1, %lo(D_800A29F0)
/* 03B3C0 8003B810 AC29D1D8 */  sw          $t1, %lo(D_800FD1D8)($at)
/* 03B3C4 8003B814 03E00008 */  jr          $ra
/* 03B3C8 8003B818 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003B81C # 10
/* 03B3CC 8003B81C 27BDFBB8 */  addiu       $sp, $sp, -0x448
/* 03B3D0 8003B820 AFB00210 */  sw          $s0, 0x210($sp)
/* 03B3D4 8003B824 AFA40448 */  sw          $a0, 0x448($sp)
/* 03B3D8 8003B828 27B00244 */  addiu       $s0, $sp, 0x244
/* 03B3DC 8003B82C AFA5044C */  sw          $a1, 0x44c($sp)
/* 03B3E0 8003B830 27AE044C */  addiu       $t6, $sp, 0x44c
/* 03B3E4 8003B834 AFBF0224 */  sw          $ra, 0x224($sp)
/* 03B3E8 8003B838 AFB40220 */  sw          $s4, 0x220($sp)
/* 03B3EC 8003B83C AFB3021C */  sw          $s3, 0x21c($sp)
/* 03B3F0 8003B840 AFB20218 */  sw          $s2, 0x218($sp)
/* 03B3F4 8003B844 AFB10214 */  sw          $s1, 0x214($sp)
/* 03B3F8 8003B848 AFA60450 */  sw          $a2, 0x450($sp)
/* 03B3FC 8003B84C AFA70454 */  sw          $a3, 0x454($sp)
/* 03B400 8003B850 25D801F8 */  addiu       $t8, $t6, 0x1f8
/* 03B404 8003B854 8FA50448 */  lw          $a1, 0x448($sp)
/* 03B408 8003B858 02002025 */  move        $a0, $s0
/* 03B40C 8003B85C 03A0C825 */  move        $t9, $sp
.L8003B860:
/* 03B410 8003B860 89C10000 */  lwl         $at, 0x0($t6)
/* 03B414 8003B864 99C10003 */  lwr         $at, 0x3($t6)
/* 03B418 8003B868 25CE000C */  addiu       $t6, $t6, 0xc
/* 03B41C 8003B86C 2739000C */  addiu       $t9, $t9, 0xc
/* 03B420 8003B870 AB21FFFC */  swl         $at, -0x4($t9)
/* 03B424 8003B874 BB21FFFF */  swr         $at, -0x1($t9)
/* 03B428 8003B878 89C1FFF8 */  lwl         $at, -0x8($t6)
/* 03B42C 8003B87C 99C1FFFB */  lwr         $at, -0x5($t6)
/* 03B430 8003B880 AB210000 */  swl         $at, 0x0($t9)
/* 03B434 8003B884 BB210003 */  swr         $at, 0x3($t9)
/* 03B438 8003B888 89C1FFFC */  lwl         $at, -0x4($t6)
/* 03B43C 8003B88C 99C1FFFF */  lwr         $at, -0x1($t6)
/* 03B440 8003B890 AB210004 */  swl         $at, 0x4($t9)
/* 03B444 8003B894 15D8FFF2 */  bne         $t6, $t8, .L8003B860
/* 03B448 8003B898 BB210007 */   swr        $at, 0x7($t9)
/* 03B44C 8003B89C 89C10000 */  lwl         $at, 0x0($t6)
/* 03B450 8003B8A0 99C10003 */  lwr         $at, 0x3($t6)
/* 03B454 8003B8A4 AB210008 */  swl         $at, 0x8($t9)
/* 03B458 8003B8A8 BB21000B */  swr         $at, 0xb($t9)
/* 03B45C 8003B8AC 89D80004 */  lwl         $t8, 0x4($t6)
/* 03B460 8003B8B0 99D80007 */  lwr         $t8, 0x7($t6)
/* 03B464 8003B8B4 AB38000C */  swl         $t8, 0xc($t9)
/* 03B468 8003B8B8 BB38000F */  swr         $t8, 0xf($t9)
/* 03B46C 8003B8BC 8FA7000C */  lw          $a3, 0xc($sp)
/* 03B470 8003B8C0 0C014589 */  jal         func_80051624
/* 03B474 8003B8C4 8FA60008 */   lw         $a2, 0x8($sp)
/* 03B478 8003B8C8 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B47C 8003B8CC 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B480 8003B8D0 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B484 8003B8D4 3C09E700 */  lui         $t1, 0xe700
/* 03B488 8003B8D8 3C0BE300 */  lui         $t3, (0xE3001001 >> 16)
/* 03B48C 8003B8DC 24680008 */  addiu       $t0, $v1, 0x8
/* 03B490 8003B8E0 ACC80000 */  sw          $t0, 0x0($a2)
/* 03B494 8003B8E4 AC600004 */  sw          $zero, 0x4($v1)
/* 03B498 8003B8E8 AC690000 */  sw          $t1, 0x0($v1)
/* 03B49C 8003B8EC 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B4A0 8003B8F0 356B1001 */  ori         $t3, $t3, (0xE3001001 & 0xFFFF)
/* 03B4A4 8003B8F4 02009025 */  move        $s2, $s0
/* 03B4A8 8003B8F8 246A0008 */  addiu       $t2, $v1, 0x8
/* 03B4AC 8003B8FC ACCA0000 */  sw          $t2, 0x0($a2)
/* 03B4B0 8003B900 AC600004 */  sw          $zero, 0x4($v1)
/* 03B4B4 8003B904 AC6B0000 */  sw          $t3, 0x0($v1)
/* 03B4B8 8003B908 93AC0244 */  lbu         $t4, 0x244($sp)
/* 03B4BC 8003B90C 27AD0244 */  addiu       $t5, $sp, 0x244
/* 03B4C0 8003B910 2414000A */  addiu       $s4, $zero, 0xa
/* 03B4C4 8003B914 11800022 */  beqz        $t4, .L8003B9A0
/* 03B4C8 8003B918 24130001 */   addiu      $s3, $zero, 0x1
/* 03B4CC 8003B91C 91A40000 */  lbu         $a0, 0x0($t5)
/* 03B4D0 8003B920 8FB0023C */  lw          $s0, 0x23c($sp)
/* 03B4D4 8003B924 308F0080 */  andi        $t7, $a0, 0x80
.L8003B928:
/* 03B4D8 8003B928 11E00008 */  beqz        $t7, .L8003B94C
/* 03B4DC 8003B92C 00008825 */   move       $s1, $zero
/* 03B4E0 8003B930 924E0001 */  lbu         $t6, 0x1($s2)
/* 03B4E4 8003B934 0004C200 */  sll         $t8, $a0, 8
/* 03B4E8 8003B938 02608825 */  move        $s1, $s3
/* 03B4EC 8003B93C 26520001 */  addiu       $s2, $s2, 0x1
/* 03B4F0 8003B940 0C011954 */  jal         func_80046550
/* 03B4F4 8003B944 030E2025 */   or         $a0, $t8, $t6
/* 03B4F8 8003B948 00408025 */  move        $s0, $v0
.L8003B94C:
/* 03B4FC 8003B94C 56330006 */  bnel        $s1, $s3, .L8003B968
/* 03B500 8003B950 92440000 */   lbu        $a0, 0x0($s2)
/* 03B504 8003B954 0C00EEC2 */  jal         func_8003BB08
/* 03B508 8003B958 02002025 */   move       $a0, $s0
/* 03B50C 8003B95C 1000000C */  b           .L8003B990
/* 03B510 8003B960 92440001 */   lbu        $a0, 0x1($s2)
/* 03B514 8003B964 92440000 */  lbu         $a0, 0x0($s2)
.L8003B968:
/* 03B518 8003B968 3C198010 */  lui         $t9, %hi(D_800FD1B8)
/* 03B51C 8003B96C 16840005 */  bne         $s4, $a0, .L8003B984
/* 03B520 8003B970 00000000 */   nop
/* 03B524 8003B974 8F39D1B8 */  lw          $t9, %lo(D_800FD1B8)($t9)
/* 03B528 8003B978 3C018010 */  lui         $at, %hi(D_800FD1C0)
/* 03B52C 8003B97C 10000003 */  b           .L8003B98C
/* 03B530 8003B980 AC39D1C0 */   sw         $t9, %lo(D_800FD1C0)($at)
.L8003B984:
/* 03B534 8003B984 0C00EF59 */  jal         func_8003BD64
/* 03B538 8003B988 00000000 */   nop
.L8003B98C:
/* 03B53C 8003B98C 92440001 */  lbu         $a0, 0x1($s2)
.L8003B990:
/* 03B540 8003B990 26520001 */  addiu       $s2, $s2, 0x1
/* 03B544 8003B994 5480FFE4 */  bnel        $a0, $zero, .L8003B928
/* 03B548 8003B998 308F0080 */   andi       $t7, $a0, 0x80
/* 03B54C 8003B99C AFB0023C */  sw          $s0, 0x23c($sp)
.L8003B9A0:
/* 03B550 8003B9A0 24040010 */  addiu       $a0, $zero, 0x10
/* 03B554 8003B9A4 0C00EE73 */  jal         func_8003B9CC
/* 03B558 8003B9A8 24050010 */   addiu      $a1, $zero, 0x10
/* 03B55C 8003B9AC 8FBF0224 */  lw          $ra, 0x224($sp)
/* 03B560 8003B9B0 8FB00210 */  lw          $s0, 0x210($sp)
/* 03B564 8003B9B4 8FB10214 */  lw          $s1, 0x214($sp)
/* 03B568 8003B9B8 8FB20218 */  lw          $s2, 0x218($sp)
/* 03B56C 8003B9BC 8FB3021C */  lw          $s3, 0x21c($sp)
/* 03B570 8003B9C0 8FB40220 */  lw          $s4, 0x220($sp)
/* 03B574 8003B9C4 03E00008 */  jr          $ra
/* 03B578 8003B9C8 27BD0448 */   addiu      $sp, $sp, 0x448

glabel func_8003B9CC # 11
/* 03B57C 8003B9CC 44842000 */  mtc1        $a0, $f4
/* 03B580 8003B9D0 3C013FE0 */  lui         $at, 0x3fe0
/* 03B584 8003B9D4 44811800 */  mtc1        $at, $f3
/* 03B588 8003B9D8 468021A0 */  cvt.s.w     $f6, $f4
/* 03B58C 8003B9DC 3C018010 */  lui         $at, %hi(D_800FD1D0)
/* 03B590 8003B9E0 C428D1D0 */  lwc1        $f8, %lo(D_800FD1D0)($at)
/* 03B594 8003B9E4 44801000 */  mtc1        $zero, $f2
/* 03B598 8003B9E8 3C028010 */  lui         $v0, %hi(D_800FD1C0)
/* 03B59C 8003B9EC 2442D1C0 */  addiu       $v0, $v0, %lo(D_800FD1C0)
/* 03B5A0 8003B9F0 46083282 */  mul.s       $f10, $f6, $f8
/* 03B5A4 8003B9F4 8C590000 */  lw          $t9, 0x0($v0)
/* 03B5A8 8003B9F8 3C0E8010 */  lui         $t6, %hi(D_800FD1B8)
/* 03B5AC 8003B9FC 8DCED1B8 */  lw          $t6, %lo(D_800FD1B8)($t6)
/* 03B5B0 8003BA00 24AFFFFF */  addiu       $t7, $a1, -0x1
/* 03B5B4 8003BA04 46005421 */  cvt.d.s     $f16, $f10
/* 03B5B8 8003BA08 46228480 */  add.d       $f18, $f16, $f2
/* 03B5BC 8003BA0C 4620910D */  trunc.w.d   $f4, $f18
/* 03B5C0 8003BA10 44182000 */  mfc1        $t8, $f4
/* 03B5C4 8003BA14 00000000 */  nop
/* 03B5C8 8003BA18 03194021 */  addu        $t0, $t8, $t9
/* 03B5CC 8003BA1C 01C8082A */  slt         $at, $t6, $t0
/* 03B5D0 8003BA20 50200014 */  beql        $at, $zero, .L8003BA74
/* 03B5D4 8003BA24 448F4000 */   mtc1       $t7, $f8
/* 03B5D8 8003BA28 44853000 */  mtc1        $a1, $f6
/* 03B5DC 8003BA2C 3C098010 */  lui         $t1, %hi(D_800FD1B0)
/* 03B5E0 8003BA30 8D29D1B0 */  lw          $t1, %lo(D_800FD1B0)($t1)
/* 03B5E4 8003BA34 46803220 */  cvt.s.w     $f8, $f6
/* 03B5E8 8003BA38 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03B5EC 8003BA3C AC490000 */  sw          $t1, 0x0($v0)
/* 03B5F0 8003BA40 C42AD1D4 */  lwc1        $f10, %lo(D_800FD1D4)($at)
/* 03B5F4 8003BA44 3C078010 */  lui         $a3, %hi(D_800FD1C4)
/* 03B5F8 8003BA48 24E7D1C4 */  addiu       $a3, $a3, %lo(D_800FD1C4)
/* 03B5FC 8003BA4C 460A4402 */  mul.s       $f16, $f8, $f10
/* 03B600 8003BA50 8CEC0000 */  lw          $t4, 0x0($a3)
/* 03B604 8003BA54 460084A1 */  cvt.d.s     $f18, $f16
/* 03B608 8003BA58 46229100 */  add.d       $f4, $f18, $f2
/* 03B60C 8003BA5C 4620218D */  trunc.w.d   $f6, $f4
/* 03B610 8003BA60 440B3000 */  mfc1        $t3, $f6
/* 03B614 8003BA64 00000000 */  nop
/* 03B618 8003BA68 018B6821 */  addu        $t5, $t4, $t3
/* 03B61C 8003BA6C ACED0000 */  sw          $t5, 0x0($a3)
/* 03B620 8003BA70 448F4000 */  mtc1        $t7, $f8
.L8003BA74:
/* 03B624 8003BA74 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03B628 8003BA78 C420D1D4 */  lwc1        $f0, %lo(D_800FD1D4)($at)
/* 03B62C 8003BA7C 468042A0 */  cvt.s.w     $f10, $f8
/* 03B630 8003BA80 3C078010 */  lui         $a3, %hi(D_800FD1C4)
/* 03B634 8003BA84 24E7D1C4 */  addiu       $a3, $a3, %lo(D_800FD1C4)
/* 03B638 8003BA88 8CE20000 */  lw          $v0, 0x0($a3)
/* 03B63C 8003BA8C 3C048010 */  lui         $a0, %hi(D_800FD1BC)
/* 03B640 8003BA90 8C84D1BC */  lw          $a0, %lo(D_800FD1BC)($a0)
/* 03B644 8003BA94 46005402 */  mul.s       $f16, $f10, $f0
/* 03B648 8003BA98 460084A1 */  cvt.d.s     $f18, $f16
/* 03B64C 8003BA9C 46229100 */  add.d       $f4, $f18, $f2
/* 03B650 8003BAA0 4620218D */  trunc.w.d   $f6, $f4
/* 03B654 8003BAA4 44063000 */  mfc1        $a2, $f6
/* 03B658 8003BAA8 00000000 */  nop
/* 03B65C 8003BAAC 00C2C821 */  addu        $t9, $a2, $v0
/* 03B660 8003BAB0 0099082A */  slt         $at, $a0, $t9
/* 03B664 8003BAB4 10200012 */  beqz        $at, .L8003BB00
/* 03B668 8003BAB8 00000000 */   nop
/* 03B66C 8003BABC 44854000 */  mtc1        $a1, $f8
/* 03B670 8003BAC0 3C013FE0 */  lui         $at, 0x3fe0
/* 03B674 8003BAC4 44812800 */  mtc1        $at, $f5
/* 03B678 8003BAC8 468042A0 */  cvt.s.w     $f10, $f8
/* 03B67C 8003BACC 44802000 */  mtc1        $zero, $f4
/* 03B680 8003BAD0 46005402 */  mul.s       $f16, $f10, $f0
/* 03B684 8003BAD4 460084A1 */  cvt.d.s     $f18, $f16
/* 03B688 8003BAD8 46249180 */  add.d       $f6, $f18, $f4
/* 03B68C 8003BADC 4620320D */  trunc.w.d   $f8, $f6
/* 03B690 8003BAE0 44034000 */  mfc1        $v1, $f8
/* 03B694 8003BAE4 00000000 */  nop
.L8003BAE8:
/* 03B698 8003BAE8 00434023 */  subu        $t0, $v0, $v1
/* 03B69C 8003BAEC 00C84821 */  addu        $t1, $a2, $t0
/* 03B6A0 8003BAF0 0089082A */  slt         $at, $a0, $t1
/* 03B6A4 8003BAF4 ACE80000 */  sw          $t0, 0x0($a3)
/* 03B6A8 8003BAF8 1420FFFB */  bnez        $at, .L8003BAE8
/* 03B6AC 8003BAFC 01001025 */   move       $v0, $t0
.L8003BB00:
/* 03B6B0 8003BB00 03E00008 */  jr          $ra
/* 03B6B4 8003BB04 00000000 */   nop

glabel func_8003BB08 # 12
/* 03B6B8 8003BB08 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B6BC 8003BB0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03B6C0 8003BB10 0C011D1F */  jal         func_8004747C
/* 03B6C4 8003BB14 00000000 */   nop
/* 03B6C8 8003BB18 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B6CC 8003BB1C 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B6D0 8003BB20 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B6D4 8003BB24 3C0FFD90 */  lui         $t7, 0xfd90
/* 03B6D8 8003BB28 00402025 */  move        $a0, $v0
/* 03B6DC 8003BB2C 246E0008 */  addiu       $t6, $v1, 0x8
/* 03B6E0 8003BB30 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03B6E4 8003BB34 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B6E8 8003BB38 00002825 */  move        $a1, $zero
/* 03B6EC 8003BB3C 0C00F081 */  jal         func_8003C204
/* 03B6F0 8003BB40 AFA30018 */   sw         $v1, 0x18($sp)
/* 03B6F4 8003BB44 8FAD0018 */  lw          $t5, 0x18($sp)
/* 03B6F8 8003BB48 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B6FC 8003BB4C 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B700 8003BB50 ADA20004 */  sw          $v0, 0x4($t5)
/* 03B704 8003BB54 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B708 8003BB58 3C19F590 */  lui         $t9, 0xf590
/* 03B70C 8003BB5C 3C0E0700 */  lui         $t6, 0x700
/* 03B710 8003BB60 24780008 */  addiu       $t8, $v1, 0x8
/* 03B714 8003BB64 ACD80000 */  sw          $t8, 0x0($a2)
/* 03B718 8003BB68 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03B71C 8003BB6C AC790000 */  sw          $t9, 0x0($v1)
/* 03B720 8003BB70 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B724 8003BB74 3C18E600 */  lui         $t8, 0xe600
/* 03B728 8003BB78 3C0EF300 */  lui         $t6, 0xf300
/* 03B72C 8003BB7C 246F0008 */  addiu       $t7, $v1, 0x8
/* 03B730 8003BB80 ACCF0000 */  sw          $t7, 0x0($a2)
/* 03B734 8003BB84 AC600004 */  sw          $zero, 0x4($v1)
/* 03B738 8003BB88 AC780000 */  sw          $t8, 0x0($v1)
/* 03B73C 8003BB8C 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B740 8003BB90 3C0F0703 */  lui         $t7, (0x703F800 >> 16)
/* 03B744 8003BB94 35EFF800 */  ori         $t7, $t7, (0x703F800 & 0xFFFF)
/* 03B748 8003BB98 24790008 */  addiu       $t9, $v1, 0x8
/* 03B74C 8003BB9C ACD90000 */  sw          $t9, 0x0($a2)
/* 03B750 8003BBA0 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03B754 8003BBA4 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03B758 8003BBA8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B75C 8003BBAC 3C19E700 */  lui         $t9, 0xe700
/* 03B760 8003BBB0 3C0FF580 */  lui         $t7, (0xF5800200 >> 16)
/* 03B764 8003BBB4 24780008 */  addiu       $t8, $v1, 0x8
/* 03B768 8003BBB8 ACD80000 */  sw          $t8, 0x0($a2)
/* 03B76C 8003BBBC AC600004 */  sw          $zero, 0x4($v1)
/* 03B770 8003BBC0 AC790000 */  sw          $t9, 0x0($v1)
/* 03B774 8003BBC4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B778 8003BBC8 35EF0200 */  ori         $t7, $t7, (0xF5800200 & 0xFFFF)
/* 03B77C 8003BBCC 3C19F200 */  lui         $t9, 0xf200
/* 03B780 8003BBD0 246E0008 */  addiu       $t6, $v1, 0x8
/* 03B784 8003BBD4 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03B788 8003BBD8 AC600004 */  sw          $zero, 0x4($v1)
/* 03B78C 8003BBDC AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B790 8003BBE0 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B794 8003BBE4 3C0E0003 */  lui         $t6, (0x3C03C >> 16)
/* 03B798 8003BBE8 35CEC03C */  ori         $t6, $t6, (0x3C03C & 0xFFFF)
/* 03B79C 8003BBEC 24780008 */  addiu       $t8, $v1, 0x8
/* 03B7A0 8003BBF0 ACD80000 */  sw          $t8, 0x0($a2)
/* 03B7A4 8003BBF4 24040010 */  addiu       $a0, $zero, 0x10
/* 03B7A8 8003BBF8 24050010 */  addiu       $a1, $zero, 0x10
/* 03B7AC 8003BBFC AC6E0004 */  sw          $t6, 0x4($v1)
/* 03B7B0 8003BC00 0C00EE73 */  jal         func_8003B9CC
/* 03B7B4 8003BC04 AC790000 */   sw         $t9, 0x0($v1)
/* 03B7B8 8003BC08 3C013FE0 */  lui         $at, 0x3fe0
/* 03B7BC 8003BC0C 44810800 */  mtc1        $at, $f1
/* 03B7C0 8003BC10 3C014180 */  lui         $at, 0x4180
/* 03B7C4 8003BC14 44817000 */  mtc1        $at, $f14
/* 03B7C8 8003BC18 3C0A8010 */  lui         $t2, %hi(D_800FD1D0)
/* 03B7CC 8003BC1C 254AD1D0 */  addiu       $t2, $t2, %lo(D_800FD1D0)
/* 03B7D0 8003BC20 3C014480 */  lui         $at, 0x4480
/* 03B7D4 8003BC24 44818000 */  mtc1        $at, $f16
/* 03B7D8 8003BC28 C5420000 */  lwc1        $f2, 0x0($t2)
/* 03B7DC 8003BC2C 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03B7E0 8003BC30 C42CD1D4 */  lwc1        $f12, %lo(D_800FD1D4)($at)
/* 03B7E4 8003BC34 46028103 */  div.s       $f4, $f16, $f2
/* 03B7E8 8003BC38 44800000 */  mtc1        $zero, $f0
/* 03B7EC 8003BC3C 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B7F0 8003BC40 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B7F4 8003BC44 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B7F8 8003BC48 3C078010 */  lui         $a3, %hi(D_800FD1C0)
/* 03B7FC 8003BC4C 24E7D1C0 */  addiu       $a3, $a3, %lo(D_800FD1C0)
/* 03B800 8003BC50 8CF80000 */  lw          $t8, 0x0($a3)
/* 03B804 8003BC54 24790008 */  addiu       $t9, $v1, 0x8
/* 03B808 8003BC58 ACD90000 */  sw          $t9, 0x0($a2)
/* 03B80C 8003BC5C 3C0B8010 */  lui         $t3, %hi(D_800FD1C4)
/* 03B810 8003BC60 3C01E400 */  lui         $at, 0xe400
/* 03B814 8003BC64 256BD1C4 */  addiu       $t3, $t3, %lo(D_800FD1C4)
/* 03B818 8003BC68 460C8483 */  div.s       $f18, $f16, $f12
/* 03B81C 8003BC6C 460021A1 */  cvt.d.s     $f6, $f4
/* 03B820 8003BC70 46203200 */  add.d       $f8, $f6, $f0
/* 03B824 8003BC74 4620428D */  trunc.w.d   $f10, $f8
/* 03B828 8003BC78 46009121 */  cvt.d.s     $f4, $f18
/* 03B82C 8003BC7C 44085000 */  mfc1        $t0, $f10
/* 03B830 8003BC80 46027282 */  mul.s       $f10, $f14, $f2
/* 03B834 8003BC84 46202180 */  add.d       $f6, $f4, $f0
/* 03B838 8003BC88 460C7102 */  mul.s       $f4, $f14, $f12
/* 03B83C 8003BC8C 4600548D */  trunc.w.s   $f18, $f10
/* 03B840 8003BC90 4620320D */  trunc.w.d   $f8, $f6
/* 03B844 8003BC94 440F9000 */  mfc1        $t7, $f18
/* 03B848 8003BC98 4600218D */  trunc.w.s   $f6, $f4
/* 03B84C 8003BC9C 01F8C821 */  addu        $t9, $t7, $t8
/* 03B850 8003BCA0 00197080 */  sll         $t6, $t9, 2
/* 03B854 8003BCA4 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 03B858 8003BCA8 000FC300 */  sll         $t8, $t7, 12
/* 03B85C 8003BCAC 0301C825 */  or          $t9, $t8, $at
/* 03B860 8003BCB0 44183000 */  mfc1        $t8, $f6
/* 03B864 8003BCB4 8D6E0000 */  lw          $t6, 0x0($t3)
/* 03B868 8003BCB8 44094000 */  mfc1        $t1, $f8
/* 03B86C 8003BCBC 01D87821 */  addu        $t7, $t6, $t8
/* 03B870 8003BCC0 000F7080 */  sll         $t6, $t7, 2
/* 03B874 8003BCC4 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03B878 8003BCC8 03387825 */  or          $t7, $t9, $t8
/* 03B87C 8003BCCC AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B880 8003BCD0 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03B884 8003BCD4 000EC880 */  sll         $t9, $t6, 2
/* 03B888 8003BCD8 8D6E0000 */  lw          $t6, 0x0($t3)
/* 03B88C 8003BCDC 33380FFF */  andi        $t8, $t9, 0xfff
/* 03B890 8003BCE0 00187B00 */  sll         $t7, $t8, 12
/* 03B894 8003BCE4 000EC880 */  sll         $t9, $t6, 2
/* 03B898 8003BCE8 33380FFF */  andi        $t8, $t9, 0xfff
/* 03B89C 8003BCEC 01F87025 */  or          $t6, $t7, $t8
/* 03B8A0 8003BCF0 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03B8A4 8003BCF4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B8A8 8003BCF8 3C0FE100 */  lui         $t7, 0xe100
/* 03B8AC 8003BCFC 3C0EF100 */  lui         $t6, 0xf100
/* 03B8B0 8003BD00 24790008 */  addiu       $t9, $v1, 0x8
/* 03B8B4 8003BD04 ACD90000 */  sw          $t9, 0x0($a2)
/* 03B8B8 8003BD08 AC600004 */  sw          $zero, 0x4($v1)
/* 03B8BC 8003BD0C AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B8C0 8003BD10 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B8C4 8003BD14 00087C00 */  sll         $t7, $t0, 16
/* 03B8C8 8003BD18 24780008 */  addiu       $t8, $v1, 0x8
/* 03B8CC 8003BD1C ACD80000 */  sw          $t8, 0x0($a2)
/* 03B8D0 8003BD20 3138FFFF */  andi        $t8, $t1, 0xffff
/* 03B8D4 8003BD24 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03B8D8 8003BD28 01F87025 */  or          $t6, $t7, $t8
/* 03B8DC 8003BD2C AC6E0004 */  sw          $t6, 0x4($v1)
/* 03B8E0 8003BD30 C5480000 */  lwc1        $f8, 0x0($t2)
/* 03B8E4 8003BD34 8CF90000 */  lw          $t9, 0x0($a3)
/* 03B8E8 8003BD38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03B8EC 8003BD3C 46087282 */  mul.s       $f10, $f14, $f8
/* 03B8F0 8003BD40 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B8F4 8003BD44 460054A1 */  cvt.d.s     $f18, $f10
/* 03B8F8 8003BD48 46209100 */  add.d       $f4, $f18, $f0
/* 03B8FC 8003BD4C 4620218D */  trunc.w.d   $f6, $f4
/* 03B900 8003BD50 44183000 */  mfc1        $t8, $f6
/* 03B904 8003BD54 00000000 */  nop
/* 03B908 8003BD58 03387021 */  addu        $t6, $t9, $t8
/* 03B90C 8003BD5C 03E00008 */  jr          $ra
/* 03B910 8003BD60 ACEE0000 */   sw         $t6, 0x0($a3)

glabel func_8003BD64 # 13
/* 03B914 8003BD64 3C0F8010 */  lui         $t7, %hi(D_800FD1C8)
/* 03B918 8003BD68 8DEFD1C8 */  lw          $t7, %lo(D_800FD1C8)($t7)
/* 03B91C 8003BD6C 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 03B920 8003BD70 AFA40070 */  sw          $a0, 0x70($sp)
/* 03B924 8003BD74 93AE0073 */  lbu         $t6, 0x73($sp)
/* 03B928 8003BD78 000FC080 */  sll         $t8, $t7, 2
/* 03B92C 8003BD7C 030FC023 */  subu        $t8, $t8, $t7
/* 03B930 8003BD80 0018C180 */  sll         $t8, $t8, 6
/* 03B934 8003BD84 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03B938 8003BD88 01D82021 */  addu        $a0, $t6, $t8
/* 03B93C 8003BD8C 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 03B940 8003BD90 27A50064 */  addiu       $a1, $sp, 0x64
/* 03B944 8003BD94 27A60060 */  addiu       $a2, $sp, 0x60
/* 03B948 8003BD98 0C011D10 */  jal         func_80047440
/* 03B94C 8003BD9C 27A70058 */   addiu      $a3, $sp, 0x58
/* 03B950 8003BDA0 8FA70064 */  lw          $a3, 0x64($sp)
/* 03B954 8003BDA4 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B958 8003BDA8 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B95C 8003BDAC 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B960 8003BDB0 24E70001 */  addiu       $a3, $a3, 0x1
/* 03B964 8003BDB4 30F900FE */  andi        $t9, $a3, 0xfe
/* 03B968 8003BDB8 3C1F8010 */  lui         $ra, %hi(D_800FD1CC)
/* 03B96C 8003BDBC 00197043 */  sra         $t6, $t9, 1
/* 03B970 8003BDC0 8FFFD1CC */  lw          $ra, %lo(D_800FD1CC)($ra)
/* 03B974 8003BDC4 AFB90068 */  sw          $t9, 0x68($sp)
/* 03B978 8003BDC8 25D8FFFF */  addiu       $t8, $t6, -0x1
/* 03B97C 8003BDCC 246F0008 */  addiu       $t7, $v1, 0x8
/* 03B980 8003BDD0 ACCF0000 */  sw          $t7, 0x0($a2)
/* 03B984 8003BDD4 33190FFF */  andi        $t9, $t8, 0xfff
/* 03B988 8003BDD8 3C01FD88 */  lui         $at, 0xfd88
/* 03B98C 8003BDDC 03217825 */  or          $t7, $t9, $at
/* 03B990 8003BDE0 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03B994 8003BDE4 AFBF0054 */  sw          $ra, 0x54($sp)
/* 03B998 8003BDE8 00402025 */  move        $a0, $v0
/* 03B99C 8003BDEC 00002825 */  move        $a1, $zero
/* 03B9A0 8003BDF0 0C00F081 */  jal         func_8003C204
/* 03B9A4 8003BDF4 AFA30048 */   sw         $v1, 0x48($sp)
/* 03B9A8 8003BDF8 8FAD0048 */  lw          $t5, 0x48($sp)
/* 03B9AC 8003BDFC 8FBF0054 */  lw          $ra, 0x54($sp)
/* 03B9B0 8003BE00 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03B9B4 8003BE04 ADA20004 */  sw          $v0, 0x4($t5)
/* 03B9B8 8003BE08 8FA40068 */  lw          $a0, 0x68($sp)
/* 03B9BC 8003BE0C 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03B9C0 8003BE10 8CC30000 */  lw          $v1, 0x0($a2)
/* 03B9C4 8003BE14 2484FFFF */  addiu       $a0, $a0, -0x1
/* 03B9C8 8003BE18 0004C080 */  sll         $t8, $a0, 2
/* 03B9CC 8003BE1C 27070001 */  addiu       $a3, $t8, 0x1
/* 03B9D0 8003BE20 0007C843 */  sra         $t9, $a3, 1
/* 03B9D4 8003BE24 27270007 */  addiu       $a3, $t9, 0x7
/* 03B9D8 8003BE28 246E0008 */  addiu       $t6, $v1, 0x8
/* 03B9DC 8003BE2C ACCE0000 */  sw          $t6, 0x0($a2)
/* 03B9E0 8003BE30 000778C3 */  sra         $t7, $a3, 3
/* 03B9E4 8003BE34 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 03B9E8 8003BE38 000E3A40 */  sll         $a3, $t6, 9
/* 03B9EC 8003BE3C 3C01F588 */  lui         $at, 0xf588
/* 03B9F0 8003BE40 00E1C825 */  or          $t9, $a3, $at
/* 03B9F4 8003BE44 3C0F0700 */  lui         $t7, 0x700
/* 03B9F8 8003BE48 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03B9FC 8003BE4C AC790000 */  sw          $t9, 0x0($v1)
/* 03BA00 8003BE50 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BA04 8003BE54 03002025 */  move        $a0, $t8
/* 03BA08 8003BE58 3C18E600 */  lui         $t8, 0xe600
/* 03BA0C 8003BE5C 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BA10 8003BE60 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03BA14 8003BE64 AC600004 */  sw          $zero, 0x4($v1)
/* 03BA18 8003BE68 AC780000 */  sw          $t8, 0x0($v1)
/* 03BA1C 8003BE6C 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BA20 8003BE70 00047040 */  sll         $t6, $a0, 1
/* 03BA24 8003BE74 3C0FF400 */  lui         $t7, 0xf400
/* 03BA28 8003BE78 24790008 */  addiu       $t9, $v1, 0x8
/* 03BA2C 8003BE7C ACD90000 */  sw          $t9, 0x0($a2)
/* 03BA30 8003BE80 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03BA34 8003BE84 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03BA38 8003BE88 8FAE0060 */  lw          $t6, 0x60($sp)
/* 03BA3C 8003BE8C 0018CB00 */  sll         $t9, $t8, 12
/* 03BA40 8003BE90 3C010700 */  lui         $at, 0x700
/* 03BA44 8003BE94 03217825 */  or          $t7, $t9, $at
/* 03BA48 8003BE98 25D9FFFF */  addiu       $t9, $t6, -0x1
/* 03BA4C 8003BE9C 00197100 */  sll         $t6, $t9, 4
/* 03BA50 8003BEA0 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03BA54 8003BEA4 01F8C825 */  or          $t9, $t7, $t8
/* 03BA58 8003BEA8 AC790004 */  sw          $t9, 0x4($v1)
/* 03BA5C 8003BEAC 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BA60 8003BEB0 3C0FE700 */  lui         $t7, 0xe700
/* 03BA64 8003BEB4 3C01F580 */  lui         $at, 0xf580
/* 03BA68 8003BEB8 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BA6C 8003BEBC ACCE0000 */  sw          $t6, 0x0($a2)
/* 03BA70 8003BEC0 AC600004 */  sw          $zero, 0x4($v1)
/* 03BA74 8003BEC4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03BA78 8003BEC8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BA7C 8003BECC 00E1C825 */  or          $t9, $a3, $at
/* 03BA80 8003BED0 3C0FF200 */  lui         $t7, 0xf200
/* 03BA84 8003BED4 24780008 */  addiu       $t8, $v1, 0x8
/* 03BA88 8003BED8 ACD80000 */  sw          $t8, 0x0($a2)
/* 03BA8C 8003BEDC AC600004 */  sw          $zero, 0x4($v1)
/* 03BA90 8003BEE0 AC790000 */  sw          $t9, 0x0($v1)
/* 03BA94 8003BEE4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BA98 8003BEE8 0004C080 */  sll         $t8, $a0, 2
/* 03BA9C 8003BEEC 33190FFF */  andi        $t9, $t8, 0xfff
/* 03BAA0 8003BEF0 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BAA4 8003BEF4 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03BAA8 8003BEF8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03BAAC 8003BEFC 8FAF0060 */  lw          $t7, 0x60($sp)
/* 03BAB0 8003BF00 00197300 */  sll         $t6, $t9, 12
/* 03BAB4 8003BF04 3C028010 */  lui         $v0, %hi(D_800FD1CC)
/* 03BAB8 8003BF08 25F9FFFF */  addiu       $t9, $t7, -0x1
/* 03BABC 8003BF0C 00197900 */  sll         $t7, $t9, 4
/* 03BAC0 8003BF10 31F80FFF */  andi        $t8, $t7, 0xfff
/* 03BAC4 8003BF14 01D8C825 */  or          $t9, $t6, $t8
/* 03BAC8 8003BF18 AC790004 */  sw          $t9, 0x4($v1)
/* 03BACC 8003BF1C 8C42D1CC */  lw          $v0, %lo(D_800FD1CC)($v0)
/* 03BAD0 8003BF20 8FAF0064 */  lw          $t7, 0x64($sp)
/* 03BAD4 8003BF24 03E02025 */  move        $a0, $ra
/* 03BAD8 8003BF28 14400004 */  bnez        $v0, .L8003BF3C
/* 03BADC 8003BF2C 29E10003 */   slti       $at, $t7, 0x3
/* 03BAE0 8003BF30 10200002 */  beqz        $at, .L8003BF3C
/* 03BAE4 8003BF34 240E0003 */   addiu      $t6, $zero, 0x3
/* 03BAE8 8003BF38 AFAE0064 */  sw          $t6, 0x64($sp)
.L8003BF3C:
/* 03BAEC 8003BF3C 14400004 */  bnez        $v0, .L8003BF50
/* 03BAF0 8003BF40 00000000 */   nop
/* 03BAF4 8003BF44 8FA40064 */  lw          $a0, 0x64($sp)
/* 03BAF8 8003BF48 10000001 */  b           .L8003BF50
/* 03BAFC 8003BF4C 24840001 */   addiu      $a0, $a0, 0x1
.L8003BF50:
/* 03BB00 8003BF50 AFBF0054 */  sw          $ra, 0x54($sp)
/* 03BB04 8003BF54 0C00EE73 */  jal         func_8003B9CC
/* 03BB08 8003BF58 24050010 */   addiu      $a1, $zero, 0x10
/* 03BB0C 8003BF5C 8FBF0054 */  lw          $ra, 0x54($sp)
/* 03BB10 8003BF60 8FB80064 */  lw          $t8, 0x64($sp)
/* 03BB14 8003BF64 3C0F8010 */  lui         $t7, %hi(D_800FD1CC)
/* 03BB18 8003BF68 8DEFD1CC */  lw          $t7, %lo(D_800FD1CC)($t7)
/* 03BB1C 8003BF6C 03F81023 */  subu        $v0, $ra, $t8
/* 03BB20 8003BF70 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03BB24 8003BF74 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03BB28 8003BF78 04410003 */  bgez        $v0, .L8003BF88
/* 03BB2C 8003BF7C 0002C843 */   sra        $t9, $v0, 1
/* 03BB30 8003BF80 24410001 */  addiu       $at, $v0, 0x1
/* 03BB34 8003BF84 0001C843 */  sra         $t9, $at, 1
.L8003BF88:
/* 03BB38 8003BF88 03201025 */  move        $v0, $t9
/* 03BB3C 8003BF8C 11E00015 */  beqz        $t7, .L8003BFE4
/* 03BB40 8003BF90 03205025 */   move       $t2, $t9
/* 03BB44 8003BF94 44822000 */  mtc1        $v0, $f4
/* 03BB48 8003BF98 3C0B8010 */  lui         $t3, %hi(D_800FD1D0)
/* 03BB4C 8003BF9C 256BD1D0 */  addiu       $t3, $t3, %lo(D_800FD1D0)
/* 03BB50 8003BFA0 468021A0 */  cvt.s.w     $f6, $f4
/* 03BB54 8003BFA4 C5680000 */  lwc1        $f8, 0x0($t3)
/* 03BB58 8003BFA8 3C013FE0 */  lui         $at, 0x3fe0
/* 03BB5C 8003BFAC 44810800 */  mtc1        $at, $f1
/* 03BB60 8003BFB0 44800000 */  mtc1        $zero, $f0
/* 03BB64 8003BFB4 3C078010 */  lui         $a3, %hi(D_800FD1C0)
/* 03BB68 8003BFB8 46083282 */  mul.s       $f10, $f6, $f8
/* 03BB6C 8003BFBC 24E7D1C0 */  addiu       $a3, $a3, %lo(D_800FD1C0)
/* 03BB70 8003BFC0 8CF90000 */  lw          $t9, 0x0($a3)
/* 03BB74 8003BFC4 3C018010 */  lui         $at, %hi(D_800FD1C0)
/* 03BB78 8003BFC8 46005421 */  cvt.d.s     $f16, $f10
/* 03BB7C 8003BFCC 46208480 */  add.d       $f18, $f16, $f0
/* 03BB80 8003BFD0 4620910D */  trunc.w.d   $f4, $f18
/* 03BB84 8003BFD4 44182000 */  mfc1        $t8, $f4
/* 03BB88 8003BFD8 00000000 */  nop
/* 03BB8C 8003BFDC 03387821 */  addu        $t7, $t9, $t8
/* 03BB90 8003BFE0 AC2FD1C0 */  sw          $t7, %lo(D_800FD1C0)($at)
.L8003BFE4:
/* 03BB94 8003BFE4 3C013FE0 */  lui         $at, 0x3fe0
/* 03BB98 8003BFE8 44810800 */  mtc1        $at, $f1
/* 03BB9C 8003BFEC 3C0B8010 */  lui         $t3, %hi(D_800FD1D0)
/* 03BBA0 8003BFF0 256BD1D0 */  addiu       $t3, $t3, %lo(D_800FD1D0)
/* 03BBA4 8003BFF4 3C014480 */  lui         $at, 0x4480
/* 03BBA8 8003BFF8 44817000 */  mtc1        $at, $f14
/* 03BBAC 8003BFFC C5620000 */  lwc1        $f2, 0x0($t3)
/* 03BBB0 8003C000 3C0C8010 */  lui         $t4, %hi(D_800FD1D4)
/* 03BBB4 8003C004 258CD1D4 */  addiu       $t4, $t4, %lo(D_800FD1D4)
/* 03BBB8 8003C008 46027183 */  div.s       $f6, $f14, $f2
/* 03BBBC 8003C00C C58C0000 */  lwc1        $f12, 0x0($t4)
/* 03BBC0 8003C010 44800000 */  mtc1        $zero, $f0
/* 03BBC4 8003C014 8FAE0058 */  lw          $t6, 0x58($sp)
/* 03BBC8 8003C018 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BBCC 8003C01C 3C078010 */  lui         $a3, %hi(D_800FD1C0)
/* 03BBD0 8003C020 25D9FFF4 */  addiu       $t9, $t6, -0xc
/* 03BBD4 8003C024 AFB90058 */  sw          $t9, 0x58($sp)
/* 03BBD8 8003C028 8FB90064 */  lw          $t9, 0x64($sp)
/* 03BBDC 8003C02C 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BBE0 8003C030 24E7D1C0 */  addiu       $a3, $a3, %lo(D_800FD1C0)
/* 03BBE4 8003C034 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03BBE8 8003C038 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03BBEC 8003C03C 3C01E400 */  lui         $at, 0xe400
/* 03BBF0 8003C040 3C0D8010 */  lui         $t5, %hi(D_800FD1C4)
/* 03BBF4 8003C044 25ADD1C4 */  addiu       $t5, $t5, %lo(D_800FD1C4)
/* 03BBF8 8003C048 460C7483 */  div.s       $f18, $f14, $f12
/* 03BBFC 8003C04C 46003221 */  cvt.d.s     $f8, $f6
/* 03BC00 8003C050 46204280 */  add.d       $f10, $f8, $f0
/* 03BC04 8003C054 4620540D */  trunc.w.d   $f16, $f10
/* 03BC08 8003C058 44995000 */  mtc1        $t9, $f10
/* 03BC0C 8003C05C 46009121 */  cvt.d.s     $f4, $f18
/* 03BC10 8003C060 44088000 */  mfc1        $t0, $f16
/* 03BC14 8003C064 46805420 */  cvt.s.w     $f16, $f10
/* 03BC18 8003C068 46202180 */  add.d       $f6, $f4, $f0
/* 03BC1C 8003C06C 46028482 */  mul.s       $f18, $f16, $f2
/* 03BC20 8003C070 4620320D */  trunc.w.d   $f8, $f6
/* 03BC24 8003C074 46009121 */  cvt.d.s     $f4, $f18
/* 03BC28 8003C078 44094000 */  mfc1        $t1, $f8
/* 03BC2C 8003C07C 46202180 */  add.d       $f6, $f4, $f0
/* 03BC30 8003C080 4620320D */  trunc.w.d   $f8, $f6
/* 03BC34 8003C084 440F4000 */  mfc1        $t7, $f8
/* 03BC38 8003C088 00000000 */  nop
/* 03BC3C 8003C08C 01EEC821 */  addu        $t9, $t7, $t6
/* 03BC40 8003C090 0019C080 */  sll         $t8, $t9, 2
/* 03BC44 8003C094 330F0FFF */  andi        $t7, $t8, 0xfff
/* 03BC48 8003C098 000F7300 */  sll         $t6, $t7, 12
/* 03BC4C 8003C09C 8FAF0058 */  lw          $t7, 0x58($sp)
/* 03BC50 8003C0A0 8FB80060 */  lw          $t8, 0x60($sp)
/* 03BC54 8003C0A4 01C1C825 */  or          $t9, $t6, $at
/* 03BC58 8003C0A8 030F7023 */  subu        $t6, $t8, $t7
/* 03BC5C 8003C0AC 448E5000 */  mtc1        $t6, $f10
/* 03BC60 8003C0B0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 03BC64 8003C0B4 46805420 */  cvt.s.w     $f16, $f10
/* 03BC68 8003C0B8 460C8482 */  mul.s       $f18, $f16, $f12
/* 03BC6C 8003C0BC 46009121 */  cvt.d.s     $f4, $f18
/* 03BC70 8003C0C0 46202180 */  add.d       $f6, $f4, $f0
/* 03BC74 8003C0C4 4620320D */  trunc.w.d   $f8, $f6
/* 03BC78 8003C0C8 440F4000 */  mfc1        $t7, $f8
/* 03BC7C 8003C0CC 00000000 */  nop
/* 03BC80 8003C0D0 01CFC021 */  addu        $t8, $t6, $t7
/* 03BC84 8003C0D4 00187080 */  sll         $t6, $t8, 2
/* 03BC88 8003C0D8 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 03BC8C 8003C0DC 032FC025 */  or          $t8, $t9, $t7
/* 03BC90 8003C0E0 AC780000 */  sw          $t8, 0x0($v1)
/* 03BC94 8003C0E4 8FAE0058 */  lw          $t6, 0x58($sp)
/* 03BC98 8003C0E8 C5920000 */  lwc1        $f18, 0x0($t4)
/* 03BC9C 8003C0EC 000EC823 */  negu        $t9, $t6
/* 03BCA0 8003C0F0 44995000 */  mtc1        $t9, $f10
/* 03BCA4 8003C0F4 8DAE0000 */  lw          $t6, 0x0($t5)
/* 03BCA8 8003C0F8 46805420 */  cvt.s.w     $f16, $f10
/* 03BCAC 8003C0FC 46128102 */  mul.s       $f4, $f16, $f18
/* 03BCB0 8003C100 460021A1 */  cvt.d.s     $f6, $f4
/* 03BCB4 8003C104 46203200 */  add.d       $f8, $f6, $f0
/* 03BCB8 8003C108 4620428D */  trunc.w.d   $f10, $f8
/* 03BCBC 8003C10C 44185000 */  mfc1        $t8, $f10
/* 03BCC0 8003C110 00000000 */  nop
/* 03BCC4 8003C114 01D8C821 */  addu        $t9, $t6, $t8
/* 03BCC8 8003C118 8CF80000 */  lw          $t8, 0x0($a3)
/* 03BCCC 8003C11C 00197880 */  sll         $t7, $t9, 2
/* 03BCD0 8003C120 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03BCD4 8003C124 0018C880 */  sll         $t9, $t8, 2
/* 03BCD8 8003C128 332F0FFF */  andi        $t7, $t9, 0xfff
/* 03BCDC 8003C12C 000FC300 */  sll         $t8, $t7, 12
/* 03BCE0 8003C130 030EC825 */  or          $t9, $t8, $t6
/* 03BCE4 8003C134 AC790004 */  sw          $t9, 0x4($v1)
/* 03BCE8 8003C138 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BCEC 8003C13C 3C18E100 */  lui         $t8, 0xe100
/* 03BCF0 8003C140 3C19F100 */  lui         $t9, 0xf100
/* 03BCF4 8003C144 246F0008 */  addiu       $t7, $v1, 0x8
/* 03BCF8 8003C148 ACCF0000 */  sw          $t7, 0x0($a2)
/* 03BCFC 8003C14C AC600004 */  sw          $zero, 0x4($v1)
/* 03BD00 8003C150 AC780000 */  sw          $t8, 0x0($v1)
/* 03BD04 8003C154 8CC30000 */  lw          $v1, 0x0($a2)
/* 03BD08 8003C158 0008C400 */  sll         $t8, $t0, 16
/* 03BD0C 8003C15C 3C0F8010 */  lui         $t7, %hi(D_800FD1CC)
/* 03BD10 8003C160 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BD14 8003C164 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03BD18 8003C168 312EFFFF */  andi        $t6, $t1, 0xffff
/* 03BD1C 8003C16C AC790000 */  sw          $t9, 0x0($v1)
/* 03BD20 8003C170 030EC825 */  or          $t9, $t8, $t6
/* 03BD24 8003C174 AC790004 */  sw          $t9, 0x4($v1)
/* 03BD28 8003C178 8DEFD1CC */  lw          $t7, %lo(D_800FD1CC)($t7)
/* 03BD2C 8003C17C 03EAC023 */  subu        $t8, $ra, $t2
/* 03BD30 8003C180 8FAE0064 */  lw          $t6, 0x64($sp)
/* 03BD34 8003C184 51E0000F */  beql        $t7, $zero, .L8003C1C4
/* 03BD38 8003C188 25CF0001 */   addiu      $t7, $t6, 0x1
/* 03BD3C 8003C18C 44988000 */  mtc1        $t8, $f16
/* 03BD40 8003C190 C5640000 */  lwc1        $f4, 0x0($t3)
/* 03BD44 8003C194 8CEF0000 */  lw          $t7, 0x0($a3)
/* 03BD48 8003C198 468084A0 */  cvt.s.w     $f18, $f16
/* 03BD4C 8003C19C 46049182 */  mul.s       $f6, $f18, $f4
/* 03BD50 8003C1A0 46003221 */  cvt.d.s     $f8, $f6
/* 03BD54 8003C1A4 46204280 */  add.d       $f10, $f8, $f0
/* 03BD58 8003C1A8 4620540D */  trunc.w.d   $f16, $f10
/* 03BD5C 8003C1AC 44198000 */  mfc1        $t9, $f16
/* 03BD60 8003C1B0 00000000 */  nop
/* 03BD64 8003C1B4 01F9C021 */  addu        $t8, $t7, $t9
/* 03BD68 8003C1B8 1000000E */  b           .L8003C1F4
/* 03BD6C 8003C1BC ACF80000 */   sw         $t8, 0x0($a3)
/* 03BD70 8003C1C0 25CF0001 */  addiu       $t7, $t6, 0x1
.L8003C1C4:
/* 03BD74 8003C1C4 448F9000 */  mtc1        $t7, $f18
/* 03BD78 8003C1C8 C5660000 */  lwc1        $f6, 0x0($t3)
/* 03BD7C 8003C1CC 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03BD80 8003C1D0 46809120 */  cvt.s.w     $f4, $f18
/* 03BD84 8003C1D4 46062202 */  mul.s       $f8, $f4, $f6
/* 03BD88 8003C1D8 460042A1 */  cvt.d.s     $f10, $f8
/* 03BD8C 8003C1DC 46205400 */  add.d       $f16, $f10, $f0
/* 03BD90 8003C1E0 4620848D */  trunc.w.d   $f18, $f16
/* 03BD94 8003C1E4 44189000 */  mfc1        $t8, $f18
/* 03BD98 8003C1E8 00000000 */  nop
/* 03BD9C 8003C1EC 01D87821 */  addu        $t7, $t6, $t8
/* 03BDA0 8003C1F0 ACEF0000 */  sw          $t7, 0x0($a3)
.L8003C1F4:
/* 03BDA4 8003C1F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03BDA8 8003C1F8 27BD0070 */  addiu       $sp, $sp, 0x70
/* 03BDAC 8003C1FC 03E00008 */  jr          $ra
/* 03BDB0 8003C200 00000000 */   nop

glabel func_8003C204 # 14
/* 03BDB4 8003C204 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BDB8 8003C208 AFA40020 */  sw          $a0, 0x20($sp)
/* 03BDBC 8003C20C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 03BDC0 8003C210 3C0F0082 */  lui         $t7, 0x82
/* 03BDC4 8003C214 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03BDC8 8003C218 AFA50024 */  sw          $a1, 0x24($sp)
/* 03BDCC 8003C21C 25EF56F0 */  addiu       $t7, $t7, 0x56f0
/* 03BDD0 8003C220 3C048010 */  lui         $a0, %hi(D_800FD1E0)
/* 03BDD4 8003C224 AFA0001C */  sw          $zero, 0x1c($sp)
/* 03BDD8 8003C228 2484D1E0 */  addiu       $a0, $a0, %lo(D_800FD1E0)
/* 03BDDC 8003C22C 27A7001C */  addiu       $a3, $sp, 0x1c
/* 03BDE0 8003C230 24060080 */  addiu       $a2, $zero, 0x80
/* 03BDE4 8003C234 0C00F58A */  jal         func_8003D628
/* 03BDE8 8003C238 01CF2821 */   addu       $a1, $t6, $t7
/* 03BDEC 8003C23C 8FA30024 */  lw          $v1, 0x24($sp)
/* 03BDF0 8003C240 50600003 */  beql        $v1, $zero, .L8003C250
/* 03BDF4 8003C244 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03BDF8 8003C248 AC620000 */  sw          $v0, 0x0($v1)
/* 03BDFC 8003C24C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003C250:
/* 03BE00 8003C250 8FA2001C */  lw          $v0, 0x1c($sp)
/* 03BE04 8003C254 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BE08 8003C258 03E00008 */  jr          $ra
/* 03BE0C 8003C25C 00000000 */   nop

glabel func_8003C260 # 15
/* 03BE10 8003C260 00C4082A */  slt         $at, $a2, $a0
/* 03BE14 8003C264 10200004 */  beqz        $at, .L8003C278
/* 03BE18 8003C268 3C038010 */   lui        $v1, %hi(D_800FD1B0)
/* 03BE1C 8003C26C 00C01025 */  move        $v0, $a2
/* 03BE20 8003C270 00803025 */  move        $a2, $a0
/* 03BE24 8003C274 00402025 */  move        $a0, $v0
.L8003C278:
/* 03BE28 8003C278 00E5082A */  slt         $at, $a3, $a1
/* 03BE2C 8003C27C 10200004 */  beqz        $at, .L8003C290
/* 03BE30 8003C280 2463D1B0 */   addiu      $v1, $v1, %lo(D_800FD1B0)
/* 03BE34 8003C284 00E01025 */  move        $v0, $a3
/* 03BE38 8003C288 00A03825 */  move        $a3, $a1
/* 03BE3C 8003C28C 00402825 */  move        $a1, $v0
.L8003C290:
/* 03BE40 8003C290 04810003 */  bgez        $a0, .L8003C2A0
/* 03BE44 8003C294 3C018010 */   lui        $at, %hi(D_800FD1C0)
/* 03BE48 8003C298 10000002 */  b           .L8003C2A4
/* 03BE4C 8003C29C 00001025 */   move       $v0, $zero
.L8003C2A0:
/* 03BE50 8003C2A0 00801025 */  move        $v0, $a0
.L8003C2A4:
/* 03BE54 8003C2A4 AC620000 */  sw          $v0, 0x0($v1)
/* 03BE58 8003C2A8 04A10003 */  bgez        $a1, .L8003C2B8
/* 03BE5C 8003C2AC AC22D1C0 */   sw         $v0, %lo(D_800FD1C0)($at)
/* 03BE60 8003C2B0 10000002 */  b           .L8003C2BC
/* 03BE64 8003C2B4 00001025 */   move       $v0, $zero
.L8003C2B8:
/* 03BE68 8003C2B8 00A01025 */  move        $v0, $a1
.L8003C2BC:
/* 03BE6C 8003C2BC 3C048010 */  lui         $a0, %hi(D_800FD1B4)
/* 03BE70 8003C2C0 2484D1B4 */  addiu       $a0, $a0, %lo(D_800FD1B4)
/* 03BE74 8003C2C4 AC820000 */  sw          $v0, 0x0($a0)
/* 03BE78 8003C2C8 3C038010 */  lui         $v1, %hi(D_800FD190)
/* 03BE7C 8003C2CC 8C63D190 */  lw          $v1, %lo(D_800FD190)($v1)
/* 03BE80 8003C2D0 3C018010 */  lui         $at, %hi(D_800FD1C4)
/* 03BE84 8003C2D4 AC22D1C4 */  sw          $v0, %lo(D_800FD1C4)($at)
/* 03BE88 8003C2D8 00C3082A */  slt         $at, $a2, $v1
/* 03BE8C 8003C2DC 14200005 */  bnez        $at, .L8003C2F4
/* 03BE90 8003C2E0 3C028010 */   lui        $v0, %hi(D_800FD194)
/* 03BE94 8003C2E4 2478FFFF */  addiu       $t8, $v1, -0x1
/* 03BE98 8003C2E8 3C018010 */  lui         $at, %hi(D_800FD1B8)
/* 03BE9C 8003C2EC 10000003 */  b           .L8003C2FC
/* 03BEA0 8003C2F0 AC38D1B8 */   sw         $t8, %lo(D_800FD1B8)($at)
.L8003C2F4:
/* 03BEA4 8003C2F4 3C018010 */  lui         $at, %hi(D_800FD1B8)
/* 03BEA8 8003C2F8 AC26D1B8 */  sw          $a2, %lo(D_800FD1B8)($at)
.L8003C2FC:
/* 03BEAC 8003C2FC 8C42D194 */  lw          $v0, %lo(D_800FD194)($v0)
/* 03BEB0 8003C300 00E2082A */  slt         $at, $a3, $v0
/* 03BEB4 8003C304 14200004 */  bnez        $at, .L8003C318
/* 03BEB8 8003C308 2459FFFF */   addiu      $t9, $v0, -0x1
/* 03BEBC 8003C30C 3C018010 */  lui         $at, %hi(D_800FD1BC)
/* 03BEC0 8003C310 03E00008 */  jr          $ra
/* 03BEC4 8003C314 AC39D1BC */   sw         $t9, %lo(D_800FD1BC)($at)
.L8003C318:
/* 03BEC8 8003C318 3C018010 */  lui         $at, %hi(D_800FD1BC)
/* 03BECC 8003C31C AC27D1BC */  sw          $a3, %lo(D_800FD1BC)($at)
/* 03BED0 8003C320 03E00008 */  jr          $ra
/* 03BED4 8003C324 00000000 */   nop

glabel func_8003C328 # 16
/* 03BED8 8003C328 3C0E8010 */  lui         $t6, %hi(D_800FD1B0)
/* 03BEDC 8003C32C 8DCED1B0 */  lw          $t6, %lo(D_800FD1B0)($t6)
/* 03BEE0 8003C330 3C188010 */  lui         $t8, %hi(D_800FD1B4)
/* 03BEE4 8003C334 8F18D1B4 */  lw          $t8, %lo(D_800FD1B4)($t8)
/* 03BEE8 8003C338 3C018010 */  lui         $at, %hi(D_800FD1C0)
/* 03BEEC 8003C33C 01C47821 */  addu        $t7, $t6, $a0
/* 03BEF0 8003C340 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03BEF4 8003C344 AC2FD1C0 */  sw          $t7, %lo(D_800FD1C0)($at)
/* 03BEF8 8003C348 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03BEFC 8003C34C 3C018010 */  lui         $at, %hi(D_800FD1C4)
/* 03BF00 8003C350 0305C821 */  addu        $t9, $t8, $a1
/* 03BF04 8003C354 AC39D1C4 */  sw          $t9, %lo(D_800FD1C4)($at)
/* 03BF08 8003C358 24050010 */  addiu       $a1, $zero, 0x10
/* 03BF0C 8003C35C 0C00EE73 */  jal         func_8003B9CC
/* 03BF10 8003C360 24040010 */   addiu      $a0, $zero, 0x10
/* 03BF14 8003C364 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03BF18 8003C368 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03BF1C 8003C36C 03E00008 */  jr          $ra
/* 03BF20 8003C370 00000000 */   nop

glabel func_8003C374 # 17
/* 03BF24 8003C374 3C0E8010 */  lui         $t6, %hi(D_800FD1B0)
/* 03BF28 8003C378 8DCED1B0 */  lw          $t6, %lo(D_800FD1B0)($t6)
/* 03BF2C 8003C37C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03BF30 8003C380 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03BF34 8003C384 3C018010 */  lui         $at, %hi(D_800FD1C0)
/* 03BF38 8003C388 01C47821 */  addu        $t7, $t6, $a0
/* 03BF3C 8003C38C AC2FD1C0 */  sw          $t7, %lo(D_800FD1C0)($at)
/* 03BF40 8003C390 24040010 */  addiu       $a0, $zero, 0x10
/* 03BF44 8003C394 0C00EE73 */  jal         func_8003B9CC
/* 03BF48 8003C398 24050010 */   addiu      $a1, $zero, 0x10
/* 03BF4C 8003C39C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03BF50 8003C3A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03BF54 8003C3A4 03E00008 */  jr          $ra
/* 03BF58 8003C3A8 00000000 */   nop

glabel func_8003C3AC # 18
/* 03BF5C 8003C3AC 3C0E8010 */  lui         $t6, %hi(D_800FD1B4)
/* 03BF60 8003C3B0 8DCED1B4 */  lw          $t6, %lo(D_800FD1B4)($t6)
/* 03BF64 8003C3B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03BF68 8003C3B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03BF6C 8003C3BC 3C018010 */  lui         $at, %hi(D_800FD1C4)
/* 03BF70 8003C3C0 01C47821 */  addu        $t7, $t6, $a0
/* 03BF74 8003C3C4 AC2FD1C4 */  sw          $t7, %lo(D_800FD1C4)($at)
/* 03BF78 8003C3C8 24040010 */  addiu       $a0, $zero, 0x10
/* 03BF7C 8003C3CC 0C00EE73 */  jal         func_8003B9CC
/* 03BF80 8003C3D0 24050010 */   addiu      $a1, $zero, 0x10
/* 03BF84 8003C3D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03BF88 8003C3D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03BF8C 8003C3DC 03E00008 */  jr          $ra
/* 03BF90 8003C3E0 00000000 */   nop

glabel func_8003C3E4 # 19
/* 03BF94 8003C3E4 3C0A8010 */  lui         $t2, %hi(D_800FD198)
/* 03BF98 8003C3E8 254AD198 */  addiu       $t2, $t2, %lo(D_800FD198)
/* 03BF9C 8003C3EC 3C098010 */  lui         $t1, %hi(D_800FD1A0)
/* 03BFA0 8003C3F0 8D430000 */  lw          $v1, 0x0($t2)
/* 03BFA4 8003C3F4 2529D1A0 */  addiu       $t1, $t1, %lo(D_800FD1A0)
/* 03BFA8 8003C3F8 AD240000 */  sw          $a0, 0x0($t1)
/* 03BFAC 8003C3FC 246E0008 */  addiu       $t6, $v1, 0x8
/* 03BFB0 8003C400 AD250004 */  sw          $a1, 0x4($t1)
/* 03BFB4 8003C404 AD260008 */  sw          $a2, 0x8($t1)
/* 03BFB8 8003C408 AD27000C */  sw          $a3, 0xc($t1)
/* 03BFBC 8003C40C AD4E0000 */  sw          $t6, 0x0($t2)
/* 03BFC0 8003C410 3C0FE700 */  lui         $t7, 0xe700
/* 03BFC4 8003C414 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03BFC8 8003C418 AC600004 */  sw          $zero, 0x4($v1)
/* 03BFCC 8003C41C 8D430000 */  lw          $v1, 0x0($t2)
/* 03BFD0 8003C420 3C19FA00 */  lui         $t9, 0xfa00
/* 03BFD4 8003C424 240100FF */  addiu       $at, $zero, 0xff
/* 03BFD8 8003C428 24780008 */  addiu       $t8, $v1, 0x8
/* 03BFDC 8003C42C AD580000 */  sw          $t8, 0x0($t2)
/* 03BFE0 8003C430 AC790000 */  sw          $t9, 0x0($v1)
/* 03BFE4 8003C434 8D2E0000 */  lw          $t6, 0x0($t1)
/* 03BFE8 8003C438 8D2B000C */  lw          $t3, 0xc($t1)
/* 03BFEC 8003C43C 8D390004 */  lw          $t9, 0x4($t1)
/* 03BFF0 8003C440 000E7E00 */  sll         $t7, $t6, 24
/* 03BFF4 8003C444 316C00FF */  andi        $t4, $t3, 0xff
/* 03BFF8 8003C448 018FC025 */  or          $t8, $t4, $t7
/* 03BFFC 8003C44C 8D2C0008 */  lw          $t4, 0x8($t1)
/* 03C000 8003C450 332B00FF */  andi        $t3, $t9, 0xff
/* 03C004 8003C454 000B6C00 */  sll         $t5, $t3, 16
/* 03C008 8003C458 318F00FF */  andi        $t7, $t4, 0xff
/* 03C00C 8003C45C 000FCA00 */  sll         $t9, $t7, 8
/* 03C010 8003C460 030D7025 */  or          $t6, $t8, $t5
/* 03C014 8003C464 01D95825 */  or          $t3, $t6, $t9
/* 03C018 8003C468 14E1000B */  bne         $a3, $at, .L8003C498
/* 03C01C 8003C46C AC6B0004 */   sw         $t3, 0x4($v1)
/* 03C020 8003C470 8D430000 */  lw          $v1, 0x0($t2)
/* 03C024 8003C474 3C0DE200 */  lui         $t5, (0xE200001C >> 16)
/* 03C028 8003C478 3C0C0055 */  lui         $t4, (0x553048 >> 16)
/* 03C02C 8003C47C 24780008 */  addiu       $t8, $v1, 0x8
/* 03C030 8003C480 AD580000 */  sw          $t8, 0x0($t2)
/* 03C034 8003C484 358C3048 */  ori         $t4, $t4, (0x553048 & 0xFFFF)
/* 03C038 8003C488 35AD001C */  ori         $t5, $t5, (0xE200001C & 0xFFFF)
/* 03C03C 8003C48C AC6D0000 */  sw          $t5, 0x0($v1)
/* 03C040 8003C490 03E00008 */  jr          $ra
/* 03C044 8003C494 AC6C0004 */   sw         $t4, 0x4($v1)
.L8003C498:
/* 03C048 8003C498 8D430000 */  lw          $v1, 0x0($t2)
/* 03C04C 8003C49C 3C0EE200 */  lui         $t6, (0xE200001C >> 16)
/* 03C050 8003C4A0 3C190050 */  lui         $t9, (0x5041C8 >> 16)
/* 03C054 8003C4A4 246F0008 */  addiu       $t7, $v1, 0x8
/* 03C058 8003C4A8 AD4F0000 */  sw          $t7, 0x0($t2)
/* 03C05C 8003C4AC 373941C8 */  ori         $t9, $t9, (0x5041C8 & 0xFFFF)
/* 03C060 8003C4B0 35CE001C */  ori         $t6, $t6, (0xE200001C & 0xFFFF)
/* 03C064 8003C4B4 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03C068 8003C4B8 AC790004 */  sw          $t9, 0x4($v1)
/* 03C06C 8003C4BC 03E00008 */  jr          $ra
/* 03C070 8003C4C0 00000000 */   nop

glabel func_8003C4C4 # 20
/* 03C074 8003C4C4 3C018010 */  lui         $at, %hi(D_800FD1D8)
/* 03C078 8003C4C8 03E00008 */  jr          $ra
/* 03C07C 8003C4CC AC24D1D8 */   sw         $a0, %lo(D_800FD1D8)($at)

glabel func_8003C4D0 # 21
/* 03C080 8003C4D0 3C018010 */  lui         $at, %hi(D_800FD1C8)
/* 03C084 8003C4D4 03E00008 */  jr          $ra
/* 03C088 8003C4D8 AC24D1C8 */   sw         $a0, %lo(D_800FD1C8)($at)

glabel func_8003C4DC # 22
/* 03C08C 8003C4DC 3C018010 */  lui         $at, %hi(D_800FD1CC)
/* 03C090 8003C4E0 03E00008 */  jr          $ra
/* 03C094 8003C4E4 AC24D1CC */   sw         $a0, %lo(D_800FD1CC)($at)

glabel func_8003C4E8 # 23
/* 03C098 8003C4E8 3C018010 */  lui         $at, %hi(D_800FD1D0)
/* 03C09C 8003C4EC E42CD1D0 */  swc1        $f12, %lo(D_800FD1D0)($at)
/* 03C0A0 8003C4F0 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03C0A4 8003C4F4 03E00008 */  jr          $ra
/* 03C0A8 8003C4F8 E42ED1D4 */   swc1       $f14, %lo(D_800FD1D4)($at)

glabel func_8003C4FC # 24
/* 03C0AC 8003C4FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03C0B0 8003C500 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03C0B4 8003C504 000671C0 */  sll         $t6, $a2, 7
/* 03C0B8 8003C508 AFA40018 */  sw          $a0, 0x18($sp)
/* 03C0BC 8003C50C 25C5000F */  addiu       $a1, $t6, 0xf
/* 03C0C0 8003C510 2401FFF0 */  addiu       $at, $zero, -0x10
/* 03C0C4 8003C514 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C0C8 8003C518 AFA60020 */  sw          $a2, 0x20($sp)
/* 03C0CC 8003C51C 00A17824 */  and         $t7, $a1, $at
/* 03C0D0 8003C520 3C048010 */  lui         $a0, %hi(D_800FD1E0)
/* 03C0D4 8003C524 2484D1E0 */  addiu       $a0, $a0, %lo(D_800FD1E0)
/* 03C0D8 8003C528 01E02825 */  move        $a1, $t7
/* 03C0DC 8003C52C 240600F1 */  addiu       $a2, $zero, 0xf1
/* 03C0E0 8003C530 0C00F538 */  jal         func_8003D4E0
/* 03C0E4 8003C534 24070004 */   addiu      $a3, $zero, 0x4
/* 03C0E8 8003C538 2406000A */  addiu       $a2, $zero, 0xa
/* 03C0EC 8003C53C 8FA40018 */  lw          $a0, 0x18($sp)
/* 03C0F0 8003C540 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03C0F4 8003C544 3C018010 */  lui         $at, %hi(D_800FD190)
/* 03C0F8 8003C548 0086001A */  div         $zero, $a0, $a2
/* 03C0FC 8003C54C 00001012 */  mflo        $v0
/* 03C100 8003C550 AC24D190 */  sw          $a0, %lo(D_800FD190)($at)
/* 03C104 8003C554 3C018010 */  lui         $at, %hi(D_800FD194)
/* 03C108 8003C558 00A6001A */  div         $zero, $a1, $a2
/* 03C10C 8003C55C AC25D194 */  sw          $a1, %lo(D_800FD194)($at)
/* 03C110 8003C560 14C00002 */  bnez        $a2, .L8003C56C
/* 03C114 8003C564 00000000 */   nop
/* 03C118 8003C568 0007000D */  break       7
.L8003C56C:
/* 03C11C 8003C56C 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C120 8003C570 14C10004 */  bne         $a2, $at, .L8003C584
/* 03C124 8003C574 3C018000 */   lui        $at, 0x8000
/* 03C128 8003C578 14810002 */  bne         $a0, $at, .L8003C584
/* 03C12C 8003C57C 00000000 */   nop
/* 03C130 8003C580 0006000D */  break       6
.L8003C584:
/* 03C134 8003C584 3C018010 */  lui         $at, %hi(D_800FD180)
/* 03C138 8003C588 2458FFFF */  addiu       $t8, $v0, -0x1
/* 03C13C 8003C58C AC38D180 */  sw          $t8, %lo(D_800FD180)($at)
/* 03C140 8003C590 14C00002 */  bnez        $a2, .L8003C59C
/* 03C144 8003C594 00000000 */   nop
/* 03C148 8003C598 0007000D */  break       7
.L8003C59C:
/* 03C14C 8003C59C 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C150 8003C5A0 14C10004 */  bne         $a2, $at, .L8003C5B4
/* 03C154 8003C5A4 3C018000 */   lui        $at, 0x8000
/* 03C158 8003C5A8 14A10002 */  bne         $a1, $at, .L8003C5B4
/* 03C15C 8003C5AC 00000000 */   nop
/* 03C160 8003C5B0 0006000D */  break       6
.L8003C5B4:
/* 03C164 8003C5B4 00001812 */  mflo        $v1
/* 03C168 8003C5B8 2479FFFF */  addiu       $t9, $v1, -0x1
/* 03C16C 8003C5BC 3C018010 */  lui         $at, %hi(D_800FD184)
/* 03C170 8003C5C0 AC39D184 */  sw          $t9, %lo(D_800FD184)($at)
/* 03C174 8003C5C4 3C018010 */  lui         $at, %hi(D_800FD188)
/* 03C178 8003C5C8 00824023 */  subu        $t0, $a0, $v0
/* 03C17C 8003C5CC AC28D188 */  sw          $t0, %lo(D_800FD188)($at)
/* 03C180 8003C5D0 3C018010 */  lui         $at, %hi(D_800FD18C)
/* 03C184 8003C5D4 00A34823 */  subu        $t1, $a1, $v1
/* 03C188 8003C5D8 0C00EDD9 */  jal         func_8003B764
/* 03C18C 8003C5DC AC29D18C */   sw         $t1, %lo(D_800FD18C)($at)
/* 03C190 8003C5E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03C194 8003C5E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03C198 8003C5E8 03E00008 */  jr          $ra
/* 03C19C 8003C5EC 00000000 */   nop

glabel func_8003C5F0 # 25
/* 03C1A0 8003C5F0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03C1A4 8003C5F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C1A8 8003C5F8 8CAF0004 */  lw          $t7, 0x4($a1)
/* 03C1AC 8003C5FC 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03C1B0 8003C600 30827F7F */  andi        $v0, $a0, 0x7f7f
/* 03C1B4 8003C604 8CA80008 */  lw          $t0, 0x8($a1)
/* 03C1B8 8003C608 01CF0019 */  multu       $t6, $t7
/* 03C1BC 8003C60C 27A70024 */  addiu       $a3, $sp, 0x24
/* 03C1C0 8003C610 00003012 */  mflo        $a2
/* 03C1C4 8003C614 04C10003 */  bgez        $a2, .L8003C624
/* 03C1C8 8003C618 0006C043 */   sra        $t8, $a2, 1
/* 03C1CC 8003C61C 24C10001 */  addiu       $at, $a2, 0x1
/* 03C1D0 8003C620 0001C043 */  sra         $t8, $at, 1
.L8003C624:
/* 03C1D4 8003C624 28412580 */  slti        $at, $v0, 0x2580
/* 03C1D8 8003C628 14200003 */  bnez        $at, .L8003C638
/* 03C1DC 8003C62C 03003025 */   move       $a2, $t8
/* 03C1E0 8003C630 10000015 */  b           .L8003C688
/* 03C1E4 8003C634 24030009 */   addiu      $v1, $zero, 0x9
.L8003C638:
/* 03C1E8 8003C638 28412520 */  slti        $at, $v0, 0x2520
/* 03C1EC 8003C63C 54200004 */  bnel        $at, $zero, .L8003C650
/* 03C1F0 8003C640 28412420 */   slti       $at, $v0, 0x2420
/* 03C1F4 8003C644 10000010 */  b           .L8003C688
/* 03C1F8 8003C648 2443DBF0 */   addiu      $v1, $v0, -0x2410
/* 03C1FC 8003C64C 28412420 */  slti        $at, $v0, 0x2420
.L8003C650:
/* 03C200 8003C650 54200004 */  bnel        $at, $zero, .L8003C664
/* 03C204 8003C654 28412330 */   slti       $at, $v0, 0x2330
/* 03C208 8003C658 1000000B */  b           .L8003C688
/* 03C20C 8003C65C 2443DC90 */   addiu      $v1, $v0, -0x2370
/* 03C210 8003C660 28412330 */  slti        $at, $v0, 0x2330
.L8003C664:
/* 03C214 8003C664 54200004 */  bnel        $at, $zero, .L8003C678
/* 03C218 8003C668 28412120 */   slti       $at, $v0, 0x2120
/* 03C21C 8003C66C 10000006 */  b           .L8003C688
/* 03C220 8003C670 2443DD30 */   addiu      $v1, $v0, -0x22d0
/* 03C224 8003C674 28412120 */  slti        $at, $v0, 0x2120
.L8003C678:
/* 03C228 8003C678 14200003 */  bnez        $at, .L8003C688
/* 03C22C 8003C67C 24030009 */   addiu      $v1, $zero, 0x9
/* 03C230 8003C680 10000001 */  b           .L8003C688
/* 03C234 8003C684 2443DEE0 */   addiu      $v1, $v0, -0x2120
.L8003C688:
/* 03C238 8003C688 8CA4000C */  lw          $a0, 0xc($a1)
/* 03C23C 8003C68C 0003C880 */  sll         $t9, $v1, 2
/* 03C240 8003C690 00994821 */  addu        $t1, $a0, $t9
/* 03C244 8003C694 8D220000 */  lw          $v0, 0x0($t1)
/* 03C248 8003C698 14400002 */  bnez        $v0, .L8003C6A4
/* 03C24C 8003C69C 00000000 */   nop
/* 03C250 8003C6A0 8C820024 */  lw          $v0, 0x24($a0)
.L8003C6A4:
/* 03C254 8003C6A4 3C048010 */  lui         $a0, %hi(D_800FD1E0)
/* 03C258 8003C6A8 2484D1E0 */  addiu       $a0, $a0, %lo(D_800FD1E0)
/* 03C25C 8003C6AC 0C00F58A */  jal         func_8003D628
/* 03C260 8003C6B0 01022821 */   addu       $a1, $t0, $v0
/* 03C264 8003C6B4 24010001 */  addiu       $at, $zero, 0x1
/* 03C268 8003C6B8 14410003 */  bne         $v0, $at, .L8003C6C8
/* 03C26C 8003C6BC 3C048010 */   lui        $a0, %hi(D_800FD1E0)
/* 03C270 8003C6C0 0C00F610 */  jal         func_8003D840
/* 03C274 8003C6C4 2484D1E0 */   addiu      $a0, $a0, %lo(D_800FD1E0)
.L8003C6C8:
/* 03C278 8003C6C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03C27C 8003C6CC 8FA20024 */  lw          $v0, 0x24($sp)
/* 03C280 8003C6D0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03C284 8003C6D4 03E00008 */  jr          $ra
/* 03C288 8003C6D8 00000000 */   nop

glabel func_8003C6DC # 26
/* 03C28C 8003C6DC 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 03C290 8003C6E0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 03C294 8003C6E4 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03C298 8003C6E8 AFB70034 */  sw          $s7, 0x34($sp)
/* 03C29C 8003C6EC AFB60030 */  sw          $s6, 0x30($sp)
/* 03C2A0 8003C6F0 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03C2A4 8003C6F4 AFB40028 */  sw          $s4, 0x28($sp)
/* 03C2A8 8003C6F8 AFB30024 */  sw          $s3, 0x24($sp)
/* 03C2AC 8003C6FC AFB20020 */  sw          $s2, 0x20($sp)
/* 03C2B0 8003C700 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03C2B4 8003C704 AFB00018 */  sw          $s0, 0x18($sp)
/* 03C2B8 8003C708 AFA400D8 */  sw          $a0, 0xd8($sp)
/* 03C2BC 8003C70C AFA500DC */  sw          $a1, 0xdc($sp)
/* 03C2C0 8003C710 14C000B3 */  bnez        $a2, .L8003C9E0
/* 03C2C4 8003C714 AFA600E0 */   sw         $a2, 0xe0($sp)
/* 03C2C8 8003C718 240F0010 */  addiu       $t7, $zero, 0x10
/* 03C2CC 8003C71C AFAF00D0 */  sw          $t7, 0xd0($sp)
/* 03C2D0 8003C720 0C01190B */  jal         func_8004642C
/* 03C2D4 8003C724 00A02025 */   move       $a0, $a1
/* 03C2D8 8003C728 24180040 */  addiu       $t8, $zero, 0x40
/* 03C2DC 8003C72C 28410041 */  slti        $at, $v0, 0x41
/* 03C2E0 8003C730 00401825 */  move        $v1, $v0
/* 03C2E4 8003C734 14200002 */  bnez        $at, .L8003C740
/* 03C2E8 8003C738 AFB800BC */   sw         $t8, 0xbc($sp)
/* 03C2EC 8003C73C 24030040 */  addiu       $v1, $zero, 0x40
.L8003C740:
/* 03C2F0 8003C740 14600004 */  bnez        $v1, .L8003C754
/* 03C2F4 8003C744 3C048010 */   lui        $a0, %hi(D_800FD0E0)
/* 03C2F8 8003C748 8FB900D8 */  lw          $t9, 0xd8($sp)
/* 03C2FC 8003C74C 10000232 */  b           .L8003D018
/* 03C300 8003C750 AF200000 */   sw         $zero, 0x0($t9)
.L8003C754:
/* 03C304 8003C754 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03C308 8003C758 24050010 */  addiu       $a1, $zero, 0x10
/* 03C30C 8003C75C 24060211 */  addiu       $a2, $zero, 0x211
/* 03C310 8003C760 0C00DA76 */  jal         func_800369D8
/* 03C314 8003C764 AFA300C0 */   sw         $v1, 0xc0($sp)
/* 03C318 8003C768 8FA500C0 */  lw          $a1, 0xc0($sp)
/* 03C31C 8003C76C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03C320 8003C770 AFA20088 */  sw          $v0, 0x88($sp)
/* 03C324 8003C774 00054180 */  sll         $t0, $a1, 6
/* 03C328 8003C778 01002825 */  move        $a1, $t0
/* 03C32C 8003C77C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03C330 8003C780 0C00DA76 */  jal         func_800369D8
/* 03C334 8003C784 24060213 */   addiu      $a2, $zero, 0x213
/* 03C338 8003C788 8FA900DC */  lw          $t1, 0xdc($sp)
/* 03C33C 8003C78C AFA2009C */  sw          $v0, 0x9c($sp)
/* 03C340 8003C790 AFA000AC */  sw          $zero, 0xac($sp)
/* 03C344 8003C794 912A0000 */  lbu         $t2, 0x0($t1)
/* 03C348 8003C798 00001825 */  move        $v1, $zero
/* 03C34C 8003C79C 24170007 */  addiu       $s7, $zero, 0x7
/* 03C350 8003C7A0 11400083 */  beqz        $t2, .L8003C9B0
/* 03C354 8003C7A4 2415000C */   addiu      $s5, $zero, 0xc
/* 03C358 8003C7A8 91220000 */  lbu         $v0, 0x0($t1)
/* 03C35C 8003C7AC 3C1E8010 */  lui         $fp, %hi(D_800FD1C8)
/* 03C360 8003C7B0 27DED1C8 */  addiu       $fp, $fp, %lo(D_800FD1C8)
/* 03C364 8003C7B4 AFA90098 */  sw          $t1, 0x98($sp)
/* 03C368 8003C7B8 AFA300B8 */  sw          $v1, 0xb8($sp)
/* 03C36C 8003C7BC 24120008 */  addiu       $s2, $zero, 0x8
/* 03C370 8003C7C0 304B0080 */  andi        $t3, $v0, 0x80
.L8003C7C4:
/* 03C374 8003C7C4 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 03C378 8003C7C8 8FA50098 */  lw          $a1, 0x98($sp)
/* 03C37C 8003C7CC 1160001F */  beqz        $t3, .L8003C84C
/* 03C380 8003C7D0 0000B025 */   move       $s6, $zero
/* 03C384 8003C7D4 24630001 */  addiu       $v1, $v1, 0x1
/* 03C388 8003C7D8 28610040 */  slti        $at, $v1, 0x40
/* 03C38C 8003C7DC 1020000E */  beqz        $at, .L8003C818
/* 03C390 8003C7E0 240E0004 */   addiu      $t6, $zero, 0x4
/* 03C394 8003C7E4 AFB200A8 */  sw          $s2, 0xa8($sp)
/* 03C398 8003C7E8 90AD0001 */  lbu         $t5, 0x1($a1)
/* 03C39C 8003C7EC 24A50001 */  addiu       $a1, $a1, 0x1
/* 03C3A0 8003C7F0 24630001 */  addiu       $v1, $v1, 0x1
/* 03C3A4 8003C7F4 00026200 */  sll         $t4, $v0, 8
/* 03C3A8 8003C7F8 AFA300B8 */  sw          $v1, 0xb8($sp)
/* 03C3AC 8003C7FC AFA50098 */  sw          $a1, 0x98($sp)
/* 03C3B0 8003C800 0C011954 */  jal         func_80046550
/* 03C3B4 8003C804 018D2025 */   or         $a0, $t4, $t5
/* 03C3B8 8003C808 0C011D1F */  jal         func_8004747C
/* 03C3BC 8003C80C 00402025 */   move       $a0, $v0
/* 03C3C0 8003C810 1000001D */  b           .L8003C888
/* 03C3C4 8003C814 00402025 */   move       $a0, $v0
.L8003C818:
/* 03C3C8 8003C818 8FC40000 */  lw          $a0, 0x0($fp)
/* 03C3CC 8003C81C AFA50098 */  sw          $a1, 0x98($sp)
/* 03C3D0 8003C820 AFAE00A8 */  sw          $t6, 0xa8($sp)
/* 03C3D4 8003C824 00047880 */  sll         $t7, $a0, 2
/* 03C3D8 8003C828 01E47823 */  subu        $t7, $t7, $a0
/* 03C3DC 8003C82C 000F2180 */  sll         $a0, $t7, 6
/* 03C3E0 8003C830 27A50084 */  addiu       $a1, $sp, 0x84
/* 03C3E4 8003C834 27A60080 */  addiu       $a2, $sp, 0x80
/* 03C3E8 8003C838 27A7007C */  addiu       $a3, $sp, 0x7c
/* 03C3EC 8003C83C 0C011D10 */  jal         func_80047440
/* 03C3F0 8003C840 AFA300B8 */   sw         $v1, 0xb8($sp)
/* 03C3F4 8003C844 10000010 */  b           .L8003C888
/* 03C3F8 8003C848 00402025 */   move       $a0, $v0
.L8003C84C:
/* 03C3FC 8003C84C 8FD90000 */  lw          $t9, 0x0($fp)
/* 03C400 8003C850 24630001 */  addiu       $v1, $v1, 0x1
/* 03C404 8003C854 24180004 */  addiu       $t8, $zero, 0x4
/* 03C408 8003C858 00194080 */  sll         $t0, $t9, 2
/* 03C40C 8003C85C 01194023 */  subu        $t0, $t0, $t9
/* 03C410 8003C860 00084180 */  sll         $t0, $t0, 6
/* 03C414 8003C864 00482021 */  addu        $a0, $v0, $t0
/* 03C418 8003C868 AFB800A8 */  sw          $t8, 0xa8($sp)
/* 03C41C 8003C86C 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 03C420 8003C870 AFA300B8 */  sw          $v1, 0xb8($sp)
/* 03C424 8003C874 27A50084 */  addiu       $a1, $sp, 0x84
/* 03C428 8003C878 27A60080 */  addiu       $a2, $sp, 0x80
/* 03C42C 8003C87C 0C011D10 */  jal         func_80047440
/* 03C430 8003C880 27A7007C */   addiu      $a3, $sp, 0x7c
/* 03C434 8003C884 00402025 */  move        $a0, $v0
.L8003C888:
/* 03C438 8003C888 0C00F081 */  jal         func_8003C204
/* 03C43C 8003C88C 27A50074 */   addiu      $a1, $sp, 0x74
/* 03C440 8003C890 8FA90074 */  lw          $t1, 0x74($sp)
/* 03C444 8003C894 24010001 */  addiu       $at, $zero, 0x1
/* 03C448 8003C898 AFA20094 */  sw          $v0, 0x94($sp)
/* 03C44C 8003C89C 15210003 */  bne         $t1, $at, .L8003C8AC
/* 03C450 8003C8A0 3C048010 */   lui        $a0, %hi(D_800FD1E0)
/* 03C454 8003C8A4 0C00F610 */  jal         func_8003D840
/* 03C458 8003C8A8 2484D1E0 */   addiu      $a0, $a0, %lo(D_800FD1E0)
.L8003C8AC:
/* 03C45C 8003C8AC 8FB100C0 */  lw          $s1, 0xc0($sp)
/* 03C460 8003C8B0 8FAA009C */  lw          $t2, 0x9c($sp)
/* 03C464 8003C8B4 8FAB00AC */  lw          $t3, 0xac($sp)
/* 03C468 8003C8B8 00116080 */  sll         $t4, $s1, 2
/* 03C46C 8003C8BC 01808825 */  move        $s1, $t4
/* 03C470 8003C8C0 8FB40094 */  lw          $s4, 0x94($sp)
/* 03C474 8003C8C4 014B9821 */  addu        $s3, $t2, $t3
/* 03C478 8003C8C8 8FAD00A8 */  lw          $t5, 0xa8($sp)
.L8003C8CC:
/* 03C47C 8003C8CC 8FB00084 */  lw          $s0, 0x84($sp)
/* 03C480 8003C8D0 02602025 */  move        $a0, $s3
/* 03C484 8003C8D4 15B20007 */  bne         $t5, $s2, .L8003C8F4
/* 03C488 8003C8D8 26100001 */   addiu      $s0, $s0, 0x1
/* 03C48C 8003C8DC 02802025 */  move        $a0, $s4
/* 03C490 8003C8E0 02602825 */  move        $a1, $s3
/* 03C494 8003C8E4 0C013E84 */  jal         bcopy
/* 03C498 8003C8E8 02403025 */   move       $a2, $s2
/* 03C49C 8003C8EC 1000001C */  b           .L8003C960
/* 03C4A0 8003C8F0 26940008 */   addiu      $s4, $s4, 0x8
.L8003C8F4:
/* 03C4A4 8003C8F4 06010003 */  bgez        $s0, .L8003C904
/* 03C4A8 8003C8F8 00107043 */   sra        $t6, $s0, 1
/* 03C4AC 8003C8FC 26010001 */  addiu       $at, $s0, 0x1
/* 03C4B0 8003C900 00017043 */  sra         $t6, $at, 1
.L8003C904:
/* 03C4B4 8003C904 01C08025 */  move        $s0, $t6
/* 03C4B8 8003C908 0C013C58 */  jal         func_8004F160
/* 03C4BC 8003C90C 24050004 */   addiu      $a1, $zero, 0x4
/* 03C4C0 8003C910 8FA2007C */  lw          $v0, 0x7c($sp)
/* 03C4C4 8003C914 8FB80080 */  lw          $t8, 0x80($sp)
/* 03C4C8 8003C918 02A27823 */  subu        $t7, $s5, $v0
/* 03C4CC 8003C91C 02CF082A */  slt         $at, $s6, $t7
/* 03C4D0 8003C920 1420000F */  bnez        $at, .L8003C960
/* 03C4D4 8003C924 0302C823 */   subu       $t9, $t8, $v0
/* 03C4D8 8003C928 2728000C */  addiu       $t0, $t9, 0xc
/* 03C4DC 8003C92C 02C8082A */  slt         $at, $s6, $t0
/* 03C4E0 8003C930 1020000B */  beqz        $at, .L8003C960
/* 03C4E4 8003C934 8FA90084 */   lw         $t1, 0x84($sp)
/* 03C4E8 8003C938 02E95023 */  subu        $t2, $s7, $t1
/* 03C4EC 8003C93C 02802025 */  move        $a0, $s4
/* 03C4F0 8003C940 05410003 */  bgez        $t2, .L8003C950
/* 03C4F4 8003C944 000A5883 */   sra        $t3, $t2, 2
/* 03C4F8 8003C948 25410003 */  addiu       $at, $t2, 0x3
/* 03C4FC 8003C94C 00015883 */  sra         $t3, $at, 2
.L8003C950:
/* 03C500 8003C950 01732821 */  addu        $a1, $t3, $s3
/* 03C504 8003C954 0C013E84 */  jal         bcopy
/* 03C508 8003C958 02003025 */   move       $a2, $s0
/* 03C50C 8003C95C 0290A021 */  addu        $s4, $s4, $s0
.L8003C960:
/* 03C510 8003C960 8FAC00D0 */  lw          $t4, 0xd0($sp)
/* 03C514 8003C964 26D60001 */  addiu       $s6, $s6, 0x1
/* 03C518 8003C968 02719821 */  addu        $s3, $s3, $s1
/* 03C51C 8003C96C 56CCFFD7 */  bnel        $s6, $t4, .L8003C8CC
/* 03C520 8003C970 8FAD00A8 */   lw         $t5, 0xa8($sp)
/* 03C524 8003C974 8FAD00AC */  lw          $t5, 0xac($sp)
/* 03C528 8003C978 8FAE00A8 */  lw          $t6, 0xa8($sp)
/* 03C52C 8003C97C 8FA30098 */  lw          $v1, 0x98($sp)
/* 03C530 8003C980 01AE7821 */  addu        $t7, $t5, $t6
/* 03C534 8003C984 AFAF00AC */  sw          $t7, 0xac($sp)
/* 03C538 8003C988 90620001 */  lbu         $v0, 0x1($v1)
/* 03C53C 8003C98C 24630001 */  addiu       $v1, $v1, 0x1
/* 03C540 8003C990 50400008 */  beql        $v0, $zero, .L8003C9B4
/* 03C544 8003C994 8FA20088 */   lw         $v0, 0x88($sp)
/* 03C548 8003C998 8FB800B8 */  lw          $t8, 0xb8($sp)
/* 03C54C 8003C99C 8FB900BC */  lw          $t9, 0xbc($sp)
/* 03C550 8003C9A0 AFA30098 */  sw          $v1, 0x98($sp)
/* 03C554 8003C9A4 0319082A */  slt         $at, $t8, $t9
/* 03C558 8003C9A8 5420FF86 */  bnel        $at, $zero, .L8003C7C4
/* 03C55C 8003C9AC 304B0080 */   andi       $t3, $v0, 0x80
.L8003C9B0:
/* 03C560 8003C9B0 8FA20088 */  lw          $v0, 0x88($sp)
.L8003C9B4:
/* 03C564 8003C9B4 24080004 */  addiu       $t0, $zero, 0x4
/* 03C568 8003C9B8 240B0010 */  addiu       $t3, $zero, 0x10
/* 03C56C 8003C9BC AC48000C */  sw          $t0, 0xc($v0)
/* 03C570 8003C9C0 8FA900C0 */  lw          $t1, 0xc0($sp)
/* 03C574 8003C9C4 AC4B0008 */  sw          $t3, 0x8($v0)
/* 03C578 8003C9C8 000950C0 */  sll         $t2, $t1, 3
/* 03C57C 8003C9CC AC4A0004 */  sw          $t2, 0x4($v0)
/* 03C580 8003C9D0 8FAC009C */  lw          $t4, 0x9c($sp)
/* 03C584 8003C9D4 AC4C0000 */  sw          $t4, 0x0($v0)
/* 03C588 8003C9D8 8FAD00D8 */  lw          $t5, 0xd8($sp)
/* 03C58C 8003C9DC ADA20000 */  sw          $v0, 0x0($t5)
.L8003C9E0:
/* 03C590 8003C9E0 8FAE00E0 */  lw          $t6, 0xe0($sp)
/* 03C594 8003C9E4 240F000F */  addiu       $t7, $zero, 0xf
/* 03C598 8003C9E8 51C0018C */  beql        $t6, $zero, .L8003D01C
/* 03C59C 8003C9EC 8FBF003C */   lw         $ra, 0x3c($sp)
/* 03C5A0 8003C9F0 A3AF006F */  sb          $t7, 0x6f($sp)
/* 03C5A4 8003C9F4 8DC20000 */  lw          $v0, 0x0($t6)
/* 03C5A8 8003C9F8 8FA800DC */  lw          $t0, 0xdc($sp)
/* 03C5AC 8003C9FC 8DD80004 */  lw          $t8, 0x4($t6)
/* 03C5B0 8003CA00 0002B880 */  sll         $s7, $v0, 2
/* 03C5B4 8003CA04 AFA200D4 */  sw          $v0, 0xd4($sp)
/* 03C5B8 8003CA08 AFA80098 */  sw          $t0, 0x98($sp)
/* 03C5BC 8003CA0C 01002025 */  move        $a0, $t0
/* 03C5C0 8003CA10 AFB800D0 */  sw          $t8, 0xd0($sp)
/* 03C5C4 8003CA14 06E10003 */  bgez        $s7, .L8003CA24
/* 03C5C8 8003CA18 0017C8C3 */   sra        $t9, $s7, 3
/* 03C5CC 8003CA1C 26E10007 */  addiu       $at, $s7, 0x7
/* 03C5D0 8003CA20 0001C8C3 */  sra         $t9, $at, 3
.L8003CA24:
/* 03C5D4 8003CA24 0320B825 */  move        $s7, $t9
/* 03C5D8 8003CA28 0C01190B */  jal         func_8004642C
/* 03C5DC 8003CA2C 0320A825 */   move       $s5, $t9
/* 03C5E0 8003CA30 8FA900DC */  lw          $t1, 0xdc($sp)
/* 03C5E4 8003CA34 00403825 */  move        $a3, $v0
/* 03C5E8 8003CA38 8FAC00D4 */  lw          $t4, 0xd4($sp)
/* 03C5EC 8003CA3C 912A0000 */  lbu         $t2, 0x0($t1)
/* 03C5F0 8003CA40 8FAD00D0 */  lw          $t5, 0xd0($sp)
/* 03C5F4 8003CA44 24050010 */  addiu       $a1, $zero, 0x10
/* 03C5F8 8003CA48 1140001A */  beqz        $t2, .L8003CAB4
/* 03C5FC 8003CA4C 2406026F */   addiu      $a2, $zero, 0x26f
/* 03C600 8003CA50 8FA30098 */  lw          $v1, 0x98($sp)
/* 03C604 8003CA54 2404002E */  addiu       $a0, $zero, 0x2e
/* 03C608 8003CA58 90620000 */  lbu         $v0, 0x0($v1)
/* 03C60C 8003CA5C 304B0080 */  andi        $t3, $v0, 0x80
.L8003CA60:
/* 03C610 8003CA60 11600003 */  beqz        $t3, .L8003CA70
/* 03C614 8003CA64 2401005E */   addiu      $at, $zero, 0x5e
/* 03C618 8003CA68 1000000E */  b           .L8003CAA4
/* 03C61C 8003CA6C 24630001 */   addiu      $v1, $v1, 0x1
.L8003CA70:
/* 03C620 8003CA70 54410005 */  bnel        $v0, $at, .L8003CA88
/* 03C624 8003CA74 28410030 */   slti       $at, $v0, 0x30
/* 03C628 8003CA78 24630001 */  addiu       $v1, $v1, 0x1
/* 03C62C 8003CA7C 10000009 */  b           .L8003CAA4
/* 03C630 8003CA80 24E7FFFE */   addiu      $a3, $a3, -0x2
/* 03C634 8003CA84 28410030 */  slti        $at, $v0, 0x30
.L8003CA88:
/* 03C638 8003CA88 14200003 */  bnez        $at, .L8003CA98
/* 03C63C 8003CA8C 2841003A */   slti       $at, $v0, 0x3a
/* 03C640 8003CA90 54200004 */  bnel        $at, $zero, .L8003CAA4
/* 03C644 8003CA94 24E70001 */   addiu      $a3, $a3, 0x1
.L8003CA98:
/* 03C648 8003CA98 54820003 */  bnel        $a0, $v0, .L8003CAA8
/* 03C64C 8003CA9C 90620001 */   lbu        $v0, 0x1($v1)
/* 03C650 8003CAA0 24E70001 */  addiu       $a3, $a3, 0x1
.L8003CAA4:
/* 03C654 8003CAA4 90620001 */  lbu         $v0, 0x1($v1)
.L8003CAA8:
/* 03C658 8003CAA8 24630001 */  addiu       $v1, $v1, 0x1
/* 03C65C 8003CAAC 5440FFEC */  bnel        $v0, $zero, .L8003CA60
/* 03C660 8003CAB0 304B0080 */   andi       $t3, $v0, 0x80
.L8003CAB4:
/* 03C664 8003CAB4 018D0019 */  multu       $t4, $t5
/* 03C668 8003CAB8 240E1000 */  addiu       $t6, $zero, 0x1000
/* 03C66C 8003CABC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03C670 8003CAC0 8FB800D8 */  lw          $t8, 0xd8($sp)
/* 03C674 8003CAC4 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03C678 8003CAC8 8FB900DC */  lw          $t9, 0xdc($sp)
/* 03C67C 8003CACC 00008012 */  mflo        $s0
/* 03C680 8003CAD0 06010003 */  bgez        $s0, .L8003CAE0
/* 03C684 8003CAD4 00107843 */   sra        $t7, $s0, 1
/* 03C688 8003CAD8 26010001 */  addiu       $at, $s0, 0x1
/* 03C68C 8003CADC 00017843 */  sra         $t7, $at, 1
.L8003CAE0:
/* 03C690 8003CAE0 01CF001A */  div         $zero, $t6, $t7
/* 03C694 8003CAE4 01E08025 */  move        $s0, $t7
/* 03C698 8003CAE8 16000002 */  bnez        $s0, .L8003CAF4
/* 03C69C 8003CAEC 00000000 */   nop
/* 03C6A0 8003CAF0 0007000D */  break       7
.L8003CAF4:
/* 03C6A4 8003CAF4 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C6A8 8003CAF8 16010004 */  bne         $s0, $at, .L8003CB0C
/* 03C6AC 8003CAFC 3C018000 */   lui        $at, 0x8000
/* 03C6B0 8003CB00 15C10002 */  bne         $t6, $at, .L8003CB0C
/* 03C6B4 8003CB04 00000000 */   nop
/* 03C6B8 8003CB08 0006000D */  break       6
.L8003CB0C:
/* 03C6BC 8003CB0C 00001012 */  mflo        $v0
/* 03C6C0 8003CB10 0047082A */  slt         $at, $v0, $a3
/* 03C6C4 8003CB14 10200002 */  beqz        $at, .L8003CB20
/* 03C6C8 8003CB18 AFA200BC */   sw         $v0, 0xbc($sp)
/* 03C6CC 8003CB1C 00403825 */  move        $a3, $v0
.L8003CB20:
/* 03C6D0 8003CB20 54E00004 */  bnel        $a3, $zero, .L8003CB34
/* 03C6D4 8003CB24 AFB90098 */   sw         $t9, 0x98($sp)
/* 03C6D8 8003CB28 1000013B */  b           .L8003D018
/* 03C6DC 8003CB2C AF000000 */   sw         $zero, 0x0($t8)
/* 03C6E0 8003CB30 AFB90098 */  sw          $t9, 0x98($sp)
.L8003CB34:
/* 03C6E4 8003CB34 AFA000B8 */  sw          $zero, 0xb8($sp)
/* 03C6E8 8003CB38 AFA000AC */  sw          $zero, 0xac($sp)
/* 03C6EC 8003CB3C AFA20048 */  sw          $v0, 0x48($sp)
/* 03C6F0 8003CB40 0C00DA76 */  jal         func_800369D8
/* 03C6F4 8003CB44 AFA700C0 */   sw         $a3, 0xc0($sp)
/* 03C6F8 8003CB48 8FA900C0 */  lw          $t1, 0xc0($sp)
/* 03C6FC 8003CB4C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03C700 8003CB50 AFA20088 */  sw          $v0, 0x88($sp)
/* 03C704 8003CB54 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03C708 8003CB58 06010003 */  bgez        $s0, .L8003CB68
/* 03C70C 8003CB5C 00104043 */   sra        $t0, $s0, 1
/* 03C710 8003CB60 26010001 */  addiu       $at, $s0, 0x1
/* 03C714 8003CB64 00014043 */  sra         $t0, $at, 1
.L8003CB68:
/* 03C718 8003CB68 01090019 */  multu       $t0, $t1
/* 03C71C 8003CB6C 24060271 */  addiu       $a2, $zero, 0x271
/* 03C720 8003CB70 00002812 */  mflo        $a1
/* 03C724 8003CB74 0C00DA76 */  jal         func_800369D8
/* 03C728 8003CB78 00000000 */   nop
/* 03C72C 8003CB7C 8FAA00DC */  lw          $t2, 0xdc($sp)
/* 03C730 8003CB80 AFA2009C */  sw          $v0, 0x9c($sp)
/* 03C734 8003CB84 8FAC0048 */  lw          $t4, 0x48($sp)
/* 03C738 8003CB88 914B0000 */  lbu         $t3, 0x0($t2)
/* 03C73C 8003CB8C 51600116 */  beql        $t3, $zero, .L8003CFE8
/* 03C740 8003CB90 8FA20088 */   lw         $v0, 0x88($sp)
/* 03C744 8003CB94 19800113 */  blez        $t4, .L8003CFE4
/* 03C748 8003CB98 8FAD0098 */   lw         $t5, 0x98($sp)
/* 03C74C 8003CB9C 91A20000 */  lbu         $v0, 0x0($t5)
/* 03C750 8003CBA0 304F0080 */  andi        $t7, $v0, 0x80
.L8003CBA4:
/* 03C754 8003CBA4 11E00023 */  beqz        $t7, .L8003CC34
/* 03C758 8003CBA8 2841003A */   slti       $at, $v0, 0x3a
/* 03C75C 8003CBAC 8FAE00B8 */  lw          $t6, 0xb8($sp)
/* 03C760 8003CBB0 8FB90048 */  lw          $t9, 0x48($sp)
/* 03C764 8003CBB4 0000B025 */  move        $s6, $zero
/* 03C768 8003CBB8 25D80001 */  addiu       $t8, $t6, 0x1
/* 03C76C 8003CBBC 0319082A */  slt         $at, $t8, $t9
/* 03C770 8003CBC0 1020000F */  beqz        $at, .L8003CC00
/* 03C774 8003CBC4 AFB800B8 */   sw         $t8, 0xb8($sp)
/* 03C778 8003CBC8 8FA80098 */  lw          $t0, 0x98($sp)
/* 03C77C 8003CBCC 270A0001 */  addiu       $t2, $t8, 0x1
/* 03C780 8003CBD0 AFB700A8 */  sw          $s7, 0xa8($sp)
/* 03C784 8003CBD4 25090001 */  addiu       $t1, $t0, 0x1
/* 03C788 8003CBD8 AFA90098 */  sw          $t1, 0x98($sp)
/* 03C78C 8003CBDC AFAA00B8 */  sw          $t2, 0xb8($sp)
/* 03C790 8003CBE0 912C0000 */  lbu         $t4, 0x0($t1)
/* 03C794 8003CBE4 00025A00 */  sll         $t3, $v0, 8
/* 03C798 8003CBE8 8FA500E0 */  lw          $a1, 0xe0($sp)
/* 03C79C 8003CBEC 0C00F17C */  jal         func_8003C5F0
/* 03C7A0 8003CBF0 016C2025 */   or         $a0, $t3, $t4
/* 03C7A4 8003CBF4 AFA20094 */  sw          $v0, 0x94($sp)
/* 03C7A8 8003CBF8 1000008F */  b           .L8003CE38
/* 03C7AC 8003CBFC 0040A025 */   move       $s4, $v0
.L8003CC00:
/* 03C7B0 8003CC00 8FAD00D4 */  lw          $t5, 0xd4($sp)
/* 03C7B4 8003CC04 8FB40094 */  lw          $s4, 0x94($sp)
/* 03C7B8 8003CC08 05A10003 */  bgez        $t5, .L8003CC18
/* 03C7BC 8003CC0C 000D7843 */   sra        $t7, $t5, 1
/* 03C7C0 8003CC10 25A10001 */  addiu       $at, $t5, 0x1
/* 03C7C4 8003CC14 00017843 */  sra         $t7, $at, 1
.L8003CC18:
/* 03C7C8 8003CC18 000F7080 */  sll         $t6, $t7, 2
/* 03C7CC 8003CC1C 05C10003 */  bgez        $t6, .L8003CC2C
/* 03C7D0 8003CC20 000EC8C3 */   sra        $t9, $t6, 3
/* 03C7D4 8003CC24 25C10007 */  addiu       $at, $t6, 0x7
/* 03C7D8 8003CC28 0001C8C3 */  sra         $t9, $at, 3
.L8003CC2C:
/* 03C7DC 8003CC2C 10000082 */  b           .L8003CE38
/* 03C7E0 8003CC30 AFB900A8 */   sw         $t9, 0xa8($sp)
.L8003CC34:
/* 03C7E4 8003CC34 14200006 */  bnez        $at, .L8003CC50
/* 03C7E8 8003CC38 00401825 */   move       $v1, $v0
/* 03C7EC 8003CC3C 2401005E */  addiu       $at, $zero, 0x5e
/* 03C7F0 8003CC40 5061000E */  beql        $v1, $at, .L8003CC7C
/* 03C7F4 8003CC44 8FB80098 */   lw         $t8, 0x98($sp)
/* 03C7F8 8003CC48 1000006C */  b           L8003CDFC
/* 03C7FC 8003CC4C 0000B025 */   move       $s6, $zero
.L8003CC50:
/* 03C800 8003CC50 2468FFE0 */  addiu       $t0, $v1, -0x20
/* 03C804 8003CC54 2D01001A */  sltiu       $at, $t0, 0x1a
/* 03C808 8003CC58 10200068 */  beqz        $at, L8003CDFC
/* 03C80C 8003CC5C 0000B025 */   move       $s6, $zero
/* 03C810 8003CC60 00084080 */  sll         $t0, $t0, 2
/* 03C814 8003CC64 3C01800B */  lui         $at, %hi(jtbl_800ABF44)
/* 03C818 8003CC68 00280821 */  addu        $at, $at, $t0
/* 03C81C 8003CC6C 8C28BF44 */  lw          $t0, %lo(jtbl_800ABF44)($at)
/* 03C820 8003CC70 01000008 */  jr          $t0
/* 03C824 8003CC74 00000000 */   nop
/* 03C828 8003CC78 8FB80098 */  lw          $t8, 0x98($sp)
.L8003CC7C:
/* 03C82C 8003CC7C AFA000A8 */  sw          $zero, 0xa8($sp)
/* 03C830 8003CC80 2401005E */  addiu       $at, $zero, 0x5e
/* 03C834 8003CC84 270A0001 */  addiu       $t2, $t8, 0x1
/* 03C838 8003CC88 AFAA0098 */  sw          $t2, 0x98($sp)
/* 03C83C 8003CC8C 91420000 */  lbu         $v0, 0x0($t2)
/* 03C840 8003CC90 240B000F */  addiu       $t3, $zero, 0xf
/* 03C844 8003CC94 54410004 */  bnel        $v0, $at, .L8003CCA8
/* 03C848 8003CC98 28410041 */   slti       $at, $v0, 0x41
/* 03C84C 8003CC9C 100000C3 */  b           .L8003CFAC
/* 03C850 8003CCA0 A3AB006F */   sb         $t3, 0x6f($sp)
/* 03C854 8003CCA4 28410041 */  slti        $at, $v0, 0x41
.L8003CCA8:
/* 03C858 8003CCA8 10200003 */  beqz        $at, .L8003CCB8
/* 03C85C 8003CCAC 2449FFD0 */   addiu      $t1, $v0, -0x30
/* 03C860 8003CCB0 100000BE */  b           .L8003CFAC
/* 03C864 8003CCB4 A3A9006F */   sb         $t1, 0x6f($sp)
.L8003CCB8:
/* 03C868 8003CCB8 28410061 */  slti        $at, $v0, 0x61
/* 03C86C 8003CCBC 10200004 */  beqz        $at, .L8003CCD0
/* 03C870 8003CCC0 244DFFA9 */   addiu      $t5, $v0, -0x57
/* 03C874 8003CCC4 244CFFC9 */  addiu       $t4, $v0, -0x37
/* 03C878 8003CCC8 100000B8 */  b           .L8003CFAC
/* 03C87C 8003CCCC A3AC006F */   sb         $t4, 0x6f($sp)
.L8003CCD0:
/* 03C880 8003CCD0 100000B6 */  b           .L8003CFAC
/* 03C884 8003CCD4 A3AD006F */   sb         $t5, 0x6f($sp)
glabel L8003CCD8
/* 03C888 8003CCD8 8FB900D4 */  lw          $t9, 0xd4($sp)
/* 03C88C 8003CCDC 8FAF00B8 */  lw          $t7, 0xb8($sp)
/* 03C890 8003CCE0 8FB40094 */  lw          $s4, 0x94($sp)
/* 03C894 8003CCE4 25EE0001 */  addiu       $t6, $t7, 0x1
/* 03C898 8003CCE8 AFAE00B8 */  sw          $t6, 0xb8($sp)
/* 03C89C 8003CCEC 07210003 */  bgez        $t9, .L8003CCFC
/* 03C8A0 8003CCF0 00194043 */   sra        $t0, $t9, 1
/* 03C8A4 8003CCF4 27210001 */  addiu       $at, $t9, 0x1
/* 03C8A8 8003CCF8 00014043 */  sra         $t0, $at, 1
.L8003CCFC:
/* 03C8AC 8003CCFC 0008C080 */  sll         $t8, $t0, 2
/* 03C8B0 8003CD00 07010003 */  bgez        $t8, .L8003CD10
/* 03C8B4 8003CD04 001850C3 */   sra        $t2, $t8, 3
/* 03C8B8 8003CD08 27010007 */  addiu       $at, $t8, 0x7
/* 03C8BC 8003CD0C 000150C3 */  sra         $t2, $at, 3
.L8003CD10:
/* 03C8C0 8003CD10 10000049 */  b           .L8003CE38
/* 03C8C4 8003CD14 AFAA00A8 */   sw         $t2, 0xa8($sp)
glabel L8003CD18
/* 03C8C8 8003CD18 8FAB00B8 */  lw          $t3, 0xb8($sp)
/* 03C8CC 8003CD1C 8FAC0048 */  lw          $t4, 0x48($sp)
/* 03C8D0 8003CD20 8FAF00D4 */  lw          $t7, 0xd4($sp)
/* 03C8D4 8003CD24 25690001 */  addiu       $t1, $t3, 0x1
/* 03C8D8 8003CD28 012C082A */  slt         $at, $t1, $t4
/* 03C8DC 8003CD2C 1020000B */  beqz        $at, .L8003CD5C
/* 03C8E0 8003CD30 AFA900B8 */   sw         $t1, 0xb8($sp)
/* 03C8E4 8003CD34 252D0001 */  addiu       $t5, $t1, 0x1
/* 03C8E8 8003CD38 3401A380 */  ori         $at, $zero, 0xa380
/* 03C8EC 8003CD3C AFB700A8 */  sw          $s7, 0xa8($sp)
/* 03C8F0 8003CD40 AFAD00B8 */  sw          $t5, 0xb8($sp)
/* 03C8F4 8003CD44 00412021 */  addu        $a0, $v0, $at
/* 03C8F8 8003CD48 0C00F17C */  jal         func_8003C5F0
/* 03C8FC 8003CD4C 8FA500E0 */   lw         $a1, 0xe0($sp)
/* 03C900 8003CD50 AFA20094 */  sw          $v0, 0x94($sp)
/* 03C904 8003CD54 10000038 */  b           .L8003CE38
/* 03C908 8003CD58 0040A025 */   move       $s4, $v0
.L8003CD5C:
/* 03C90C 8003CD5C 05E10003 */  bgez        $t7, .L8003CD6C
/* 03C910 8003CD60 000F7043 */   sra        $t6, $t7, 1
/* 03C914 8003CD64 25E10001 */  addiu       $at, $t7, 0x1
/* 03C918 8003CD68 00017043 */  sra         $t6, $at, 1
.L8003CD6C:
/* 03C91C 8003CD6C 000EC880 */  sll         $t9, $t6, 2
/* 03C920 8003CD70 07210003 */  bgez        $t9, .L8003CD80
/* 03C924 8003CD74 001940C3 */   sra        $t0, $t9, 3
/* 03C928 8003CD78 27210007 */  addiu       $at, $t9, 0x7
/* 03C92C 8003CD7C 000140C3 */  sra         $t0, $at, 3
.L8003CD80:
/* 03C930 8003CD80 AFA800A8 */  sw          $t0, 0xa8($sp)
/* 03C934 8003CD84 1000002C */  b           .L8003CE38
/* 03C938 8003CD88 8FB40094 */   lw         $s4, 0x94($sp)
glabel L8003CD8C
/* 03C93C 8003CD8C 8FB800B8 */  lw          $t8, 0xb8($sp)
/* 03C940 8003CD90 8FAB0048 */  lw          $t3, 0x48($sp)
/* 03C944 8003CD94 8FA900D4 */  lw          $t1, 0xd4($sp)
/* 03C948 8003CD98 270A0001 */  addiu       $t2, $t8, 0x1
/* 03C94C 8003CD9C 014B082A */  slt         $at, $t2, $t3
/* 03C950 8003CDA0 1020000A */  beqz        $at, .L8003CDCC
/* 03C954 8003CDA4 AFAA00B8 */   sw         $t2, 0xb8($sp)
/* 03C958 8003CDA8 254C0001 */  addiu       $t4, $t2, 0x1
/* 03C95C 8003CDAC AFB700A8 */  sw          $s7, 0xa8($sp)
/* 03C960 8003CDB0 AFAC00B8 */  sw          $t4, 0xb8($sp)
/* 03C964 8003CDB4 24042125 */  addiu       $a0, $zero, 0x2125
/* 03C968 8003CDB8 0C00F17C */  jal         func_8003C5F0
/* 03C96C 8003CDBC 8FA500E0 */   lw         $a1, 0xe0($sp)
/* 03C970 8003CDC0 AFA20094 */  sw          $v0, 0x94($sp)
/* 03C974 8003CDC4 1000001C */  b           .L8003CE38
/* 03C978 8003CDC8 0040A025 */   move       $s4, $v0
.L8003CDCC:
/* 03C97C 8003CDCC 05210003 */  bgez        $t1, .L8003CDDC
/* 03C980 8003CDD0 00096843 */   sra        $t5, $t1, 1
/* 03C984 8003CDD4 25210001 */  addiu       $at, $t1, 0x1
/* 03C988 8003CDD8 00016843 */  sra         $t5, $at, 1
.L8003CDDC:
/* 03C98C 8003CDDC 000D7880 */  sll         $t7, $t5, 2
/* 03C990 8003CDE0 05E10003 */  bgez        $t7, .L8003CDF0
/* 03C994 8003CDE4 000F70C3 */   sra        $t6, $t7, 3
/* 03C998 8003CDE8 25E10007 */  addiu       $at, $t7, 0x7
/* 03C99C 8003CDEC 000170C3 */  sra         $t6, $at, 3
.L8003CDF0:
/* 03C9A0 8003CDF0 AFAE00A8 */  sw          $t6, 0xa8($sp)
/* 03C9A4 8003CDF4 10000010 */  b           .L8003CE38
/* 03C9A8 8003CDF8 8FB40094 */   lw         $s4, 0x94($sp)
glabel L8003CDFC
/* 03C9AC 8003CDFC 8FB900D4 */  lw          $t9, 0xd4($sp)
/* 03C9B0 8003CE00 8FAA00B8 */  lw          $t2, 0xb8($sp)
/* 03C9B4 8003CE04 8FB40094 */  lw          $s4, 0x94($sp)
/* 03C9B8 8003CE08 07210003 */  bgez        $t9, .L8003CE18
/* 03C9BC 8003CE0C 00194043 */   sra        $t0, $t9, 1
/* 03C9C0 8003CE10 27210001 */  addiu       $at, $t9, 0x1
/* 03C9C4 8003CE14 00014043 */  sra         $t0, $at, 1
.L8003CE18:
/* 03C9C8 8003CE18 0008C080 */  sll         $t8, $t0, 2
/* 03C9CC 8003CE1C 07010003 */  bgez        $t8, .L8003CE2C
/* 03C9D0 8003CE20 001858C3 */   sra        $t3, $t8, 3
/* 03C9D4 8003CE24 27010007 */  addiu       $at, $t8, 0x7
/* 03C9D8 8003CE28 000158C3 */  sra         $t3, $at, 3
.L8003CE2C:
/* 03C9DC 8003CE2C 254C0001 */  addiu       $t4, $t2, 0x1
/* 03C9E0 8003CE30 AFAB00A8 */  sw          $t3, 0xa8($sp)
/* 03C9E4 8003CE34 AFAC00B8 */  sw          $t4, 0xb8($sp)
.L8003CE38:
/* 03C9E8 8003CE38 8FAF00D0 */  lw          $t7, 0xd0($sp)
/* 03C9EC 8003CE3C 8FA9009C */  lw          $t1, 0x9c($sp)
/* 03C9F0 8003CE40 8FAD00AC */  lw          $t5, 0xac($sp)
/* 03C9F4 8003CE44 19E00059 */  blez        $t7, .L8003CFAC
/* 03C9F8 8003CE48 012D9821 */   addu       $s3, $t1, $t5
/* 03C9FC 8003CE4C 8FBE00D4 */  lw          $fp, 0xd4($sp)
/* 03CA00 8003CE50 8FB800C0 */  lw          $t8, 0xc0($sp)
/* 03CA04 8003CE54 07C10003 */  bgez        $fp, .L8003CE64
/* 03CA08 8003CE58 001E7043 */   sra        $t6, $fp, 1
/* 03CA0C 8003CE5C 27C10001 */  addiu       $at, $fp, 0x1
/* 03CA10 8003CE60 00017043 */  sra         $t6, $at, 1
.L8003CE64:
/* 03CA14 8003CE64 000EC880 */  sll         $t9, $t6, 2
/* 03CA18 8003CE68 0320F025 */  move        $fp, $t9
/* 03CA1C 8003CE6C 07C10003 */  bgez        $fp, .L8003CE7C
/* 03CA20 8003CE70 001E40C3 */   sra        $t0, $fp, 3
/* 03CA24 8003CE74 27C10007 */  addiu       $at, $fp, 0x7
/* 03CA28 8003CE78 000140C3 */  sra         $t0, $at, 3
.L8003CE7C:
/* 03CA2C 8003CE7C 03080019 */  multu       $t8, $t0
/* 03CA30 8003CE80 0100F025 */  move        $fp, $t0
/* 03CA34 8003CE84 00005812 */  mflo        $t3
/* 03CA38 8003CE88 AFAB0044 */  sw          $t3, 0x44($sp)
/* 03CA3C 8003CE8C 00000000 */  nop
.L8003CE90:
/* 03CA40 8003CE90 8FAA00A8 */  lw          $t2, 0xa8($sp)
/* 03CA44 8003CE94 93B1006F */  lbu         $s1, 0x6f($sp)
/* 03CA48 8003CE98 2401000F */  addiu       $at, $zero, 0xf
/* 03CA4C 8003CE9C 1557003B */  bne         $t2, $s7, .L8003CF8C
/* 03CA50 8003CEA0 02602025 */   move       $a0, $s3
/* 03CA54 8003CEA4 12210034 */  beq         $s1, $at, .L8003CF78
/* 03CA58 8003CEA8 02802025 */   move       $a0, $s4
/* 03CA5C 8003CEAC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03CA60 8003CEB0 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03CA64 8003CEB4 02E02825 */  move        $a1, $s7
/* 03CA68 8003CEB8 240602BA */  addiu       $a2, $zero, 0x2ba
/* 03CA6C 8003CEBC 0C00DA76 */  jal         func_800369D8
/* 03CA70 8003CEC0 00008025 */   move       $s0, $zero
/* 03CA74 8003CEC4 00409025 */  move        $s2, $v0
/* 03CA78 8003CEC8 02802025 */  move        $a0, $s4
/* 03CA7C 8003CECC 00402825 */  move        $a1, $v0
/* 03CA80 8003CED0 0C013E84 */  jal         bcopy
/* 03CA84 8003CED4 02E03025 */   move       $a2, $s7
/* 03CA88 8003CED8 1AE0001E */  blez        $s7, .L8003CF54
/* 03CA8C 8003CEDC 02E03025 */   move       $a2, $s7
/* 03CA90 8003CEE0 00116100 */  sll         $t4, $s1, 4
/* 03CA94 8003CEE4 32E50003 */  andi        $a1, $s7, 0x3
/* 03CA98 8003CEE8 10A0000A */  beqz        $a1, .L8003CF14
/* 03CA9C 8003CEEC 01911821 */   addu       $v1, $t4, $s1
/* 03CAA0 8003CEF0 00A02025 */  move        $a0, $a1
/* 03CAA4 8003CEF4 02501021 */  addu        $v0, $s2, $s0
.L8003CEF8:
/* 03CAA8 8003CEF8 90490000 */  lbu         $t1, 0x0($v0)
/* 03CAAC 8003CEFC 26100001 */  addiu       $s0, $s0, 0x1
/* 03CAB0 8003CF00 24420001 */  addiu       $v0, $v0, 0x1
/* 03CAB4 8003CF04 01236824 */  and         $t5, $t1, $v1
/* 03CAB8 8003CF08 1490FFFB */  bne         $a0, $s0, .L8003CEF8
/* 03CABC 8003CF0C A04DFFFF */   sb         $t5, -0x1($v0)
/* 03CAC0 8003CF10 12170010 */  beq         $s0, $s7, .L8003CF54
.L8003CF14:
/* 03CAC4 8003CF14 02501021 */   addu       $v0, $s2, $s0
.L8003CF18:
/* 03CAC8 8003CF18 90590001 */  lbu         $t9, 0x1($v0)
/* 03CACC 8003CF1C 90580002 */  lbu         $t8, 0x2($v0)
/* 03CAD0 8003CF20 904A0003 */  lbu         $t2, 0x3($v0)
/* 03CAD4 8003CF24 904F0000 */  lbu         $t7, 0x0($v0)
/* 03CAD8 8003CF28 26100004 */  addiu       $s0, $s0, 0x4
/* 03CADC 8003CF2C 03234024 */  and         $t0, $t9, $v1
/* 03CAE0 8003CF30 03035824 */  and         $t3, $t8, $v1
/* 03CAE4 8003CF34 01436024 */  and         $t4, $t2, $v1
/* 03CAE8 8003CF38 01E37024 */  and         $t6, $t7, $v1
/* 03CAEC 8003CF3C A04C0003 */  sb          $t4, 0x3($v0)
/* 03CAF0 8003CF40 A04B0002 */  sb          $t3, 0x2($v0)
/* 03CAF4 8003CF44 A0480001 */  sb          $t0, 0x1($v0)
/* 03CAF8 8003CF48 24420004 */  addiu       $v0, $v0, 0x4
/* 03CAFC 8003CF4C 1615FFF2 */  bne         $s0, $s5, .L8003CF18
/* 03CB00 8003CF50 A04EFFFC */   sb         $t6, -0x4($v0)
.L8003CF54:
/* 03CB04 8003CF54 02402025 */  move        $a0, $s2
/* 03CB08 8003CF58 0C013E84 */  jal         bcopy
/* 03CB0C 8003CF5C 02602825 */   move       $a1, $s3
/* 03CB10 8003CF60 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03CB14 8003CF64 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 03CB18 8003CF68 0C00DB8B */  jal         func_80036E2C
/* 03CB1C 8003CF6C 02402825 */   move       $a1, $s2
/* 03CB20 8003CF70 10000009 */  b           .L8003CF98
/* 03CB24 8003CF74 0297A021 */   addu       $s4, $s4, $s7
.L8003CF78:
/* 03CB28 8003CF78 02602825 */  move        $a1, $s3
/* 03CB2C 8003CF7C 0C013E84 */  jal         bcopy
/* 03CB30 8003CF80 02E03025 */   move       $a2, $s7
/* 03CB34 8003CF84 10000004 */  b           .L8003CF98
/* 03CB38 8003CF88 0297A021 */   addu       $s4, $s4, $s7
.L8003CF8C:
/* 03CB3C 8003CF8C 0C013C58 */  jal         func_8004F160
/* 03CB40 8003CF90 03C02825 */   move       $a1, $fp
/* 03CB44 8003CF94 029EA021 */  addu        $s4, $s4, $fp
.L8003CF98:
/* 03CB48 8003CF98 8FAD00D0 */  lw          $t5, 0xd0($sp)
/* 03CB4C 8003CF9C 8FA90044 */  lw          $t1, 0x44($sp)
/* 03CB50 8003CFA0 26D60001 */  addiu       $s6, $s6, 0x1
/* 03CB54 8003CFA4 16CDFFBA */  bne         $s6, $t5, .L8003CE90
/* 03CB58 8003CFA8 02699821 */   addu       $s3, $s3, $t1
.L8003CFAC:
/* 03CB5C 8003CFAC 8FAF0098 */  lw          $t7, 0x98($sp)
/* 03CB60 8003CFB0 8FB900AC */  lw          $t9, 0xac($sp)
/* 03CB64 8003CFB4 8FA800A8 */  lw          $t0, 0xa8($sp)
/* 03CB68 8003CFB8 25EE0001 */  addiu       $t6, $t7, 0x1
/* 03CB6C 8003CFBC AFAE0098 */  sw          $t6, 0x98($sp)
/* 03CB70 8003CFC0 0328C021 */  addu        $t8, $t9, $t0
/* 03CB74 8003CFC4 AFB800AC */  sw          $t8, 0xac($sp)
/* 03CB78 8003CFC8 91C20000 */  lbu         $v0, 0x0($t6)
/* 03CB7C 8003CFCC 8FAB00B8 */  lw          $t3, 0xb8($sp)
/* 03CB80 8003CFD0 8FAA00BC */  lw          $t2, 0xbc($sp)
/* 03CB84 8003CFD4 10400003 */  beqz        $v0, .L8003CFE4
/* 03CB88 8003CFD8 016A082A */   slt        $at, $t3, $t2
/* 03CB8C 8003CFDC 5420FEF1 */  bnel        $at, $zero, .L8003CBA4
/* 03CB90 8003CFE0 304F0080 */   andi       $t7, $v0, 0x80
.L8003CFE4:
/* 03CB94 8003CFE4 8FA20088 */  lw          $v0, 0x88($sp)
.L8003CFE8:
/* 03CB98 8003CFE8 240C0002 */  addiu       $t4, $zero, 0x2
/* 03CB9C 8003CFEC AC4C000C */  sw          $t4, 0xc($v0)
/* 03CBA0 8003CFF0 8FA900C0 */  lw          $t1, 0xc0($sp)
/* 03CBA4 8003CFF4 01370019 */  multu       $t1, $s7
/* 03CBA8 8003CFF8 00006812 */  mflo        $t5
/* 03CBAC 8003CFFC AC4D0004 */  sw          $t5, 0x4($v0)
/* 03CBB0 8003D000 8FAF00D0 */  lw          $t7, 0xd0($sp)
/* 03CBB4 8003D004 AC4F0008 */  sw          $t7, 0x8($v0)
/* 03CBB8 8003D008 8FB9009C */  lw          $t9, 0x9c($sp)
/* 03CBBC 8003D00C AC590000 */  sw          $t9, 0x0($v0)
/* 03CBC0 8003D010 8FA800D8 */  lw          $t0, 0xd8($sp)
/* 03CBC4 8003D014 AD020000 */  sw          $v0, 0x0($t0)
.L8003D018:
/* 03CBC8 8003D018 8FBF003C */  lw          $ra, 0x3c($sp)
.L8003D01C:
/* 03CBCC 8003D01C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03CBD0 8003D020 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03CBD4 8003D024 8FB20020 */  lw          $s2, 0x20($sp)
/* 03CBD8 8003D028 8FB30024 */  lw          $s3, 0x24($sp)
/* 03CBDC 8003D02C 8FB40028 */  lw          $s4, 0x28($sp)
/* 03CBE0 8003D030 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03CBE4 8003D034 8FB60030 */  lw          $s6, 0x30($sp)
/* 03CBE8 8003D038 8FB70034 */  lw          $s7, 0x34($sp)
/* 03CBEC 8003D03C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03CBF0 8003D040 03E00008 */  jr          $ra
/* 03CBF4 8003D044 27BD00D8 */   addiu      $sp, $sp, 0xd8

glabel func_8003D048 # 27
/* 03CBF8 8003D048 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03CBFC 8003D04C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03CC00 8003D050 1080000A */  beqz        $a0, .L8003D07C
/* 03CC04 8003D054 00803025 */   move       $a2, $a0
/* 03CC08 8003D058 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03CC0C 8003D05C 8CC50000 */  lw          $a1, 0x0($a2)
/* 03CC10 8003D060 AFA60018 */  sw          $a2, 0x18($sp)
/* 03CC14 8003D064 0C00DB8B */  jal         func_80036E2C
/* 03CC18 8003D068 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 03CC1C 8003D06C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 03CC20 8003D070 8FA50018 */  lw          $a1, 0x18($sp)
/* 03CC24 8003D074 0C00DB8B */  jal         func_80036E2C
/* 03CC28 8003D078 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
.L8003D07C:
/* 03CC2C 8003D07C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03CC30 8003D080 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03CC34 8003D084 03E00008 */  jr          $ra
/* 03CC38 8003D088 00000000 */   nop

glabel func_8003D08C # 28
/* 03CC3C 8003D08C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03CC40 8003D090 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03CC44 8003D094 8C8E0004 */  lw          $t6, 0x4($a0)
/* 03CC48 8003D098 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03CC4C 8003D09C 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03CC50 8003D0A0 AFAE001C */  sw          $t6, 0x1c($sp)
/* 03CC54 8003D0A4 8C8F0008 */  lw          $t7, 0x8($a0)
/* 03CC58 8003D0A8 00802825 */  move        $a1, $a0
/* 03CC5C 8003D0AC 00C02025 */  move        $a0, $a2
/* 03CC60 8003D0B0 0C00F48E */  jal         func_8003D238
/* 03CC64 8003D0B4 AFAF0018 */   sw         $t7, 0x18($sp)
/* 03CC68 8003D0B8 3C013FE0 */  lui         $at, 0x3fe0
/* 03CC6C 8003D0BC 44816800 */  mtc1        $at, $f13
/* 03CC70 8003D0C0 3C014480 */  lui         $at, 0x4480
/* 03CC74 8003D0C4 44817000 */  mtc1        $at, $f14
/* 03CC78 8003D0C8 3C018010 */  lui         $at, %hi(D_800FD1D0)
/* 03CC7C 8003D0CC C420D1D0 */  lwc1        $f0, %lo(D_800FD1D0)($at)
/* 03CC80 8003D0D0 3C018010 */  lui         $at, %hi(D_800FD1D4)
/* 03CC84 8003D0D4 C422D1D4 */  lwc1        $f2, %lo(D_800FD1D4)($at)
/* 03CC88 8003D0D8 46007103 */  div.s       $f4, $f14, $f0
/* 03CC8C 8003D0DC 44806000 */  mtc1        $zero, $f12
/* 03CC90 8003D0E0 8FAC001C */  lw          $t4, 0x1c($sp)
/* 03CC94 8003D0E4 3C098010 */  lui         $t1, %hi(D_800FD1C0)
/* 03CC98 8003D0E8 2529D1C0 */  addiu       $t1, $t1, %lo(D_800FD1C0)
/* 03CC9C 8003D0EC 8D2F0000 */  lw          $t7, 0x0($t1)
/* 03CCA0 8003D0F0 3C068010 */  lui         $a2, %hi(D_800FD198)
/* 03CCA4 8003D0F4 24C6D198 */  addiu       $a2, $a2, %lo(D_800FD198)
/* 03CCA8 8003D0F8 8CC20000 */  lw          $v0, 0x0($a2)
/* 03CCAC 8003D0FC 3C0A8010 */  lui         $t2, %hi(D_800FD1C4)
/* 03CCB0 8003D100 254AD1C4 */  addiu       $t2, $t2, %lo(D_800FD1C4)
/* 03CCB4 8003D104 244B0008 */  addiu       $t3, $v0, 0x8
/* 03CCB8 8003D108 ACCB0000 */  sw          $t3, 0x0($a2)
/* 03CCBC 8003D10C 3C01E400 */  lui         $at, 0xe400
/* 03CCC0 8003D110 46027403 */  div.s       $f16, $f14, $f2
/* 03CCC4 8003D114 460021A1 */  cvt.d.s     $f6, $f4
/* 03CCC8 8003D118 462C3200 */  add.d       $f8, $f6, $f12
/* 03CCCC 8003D11C 4620428D */  trunc.w.d   $f10, $f8
/* 03CCD0 8003D120 448C4000 */  mtc1        $t4, $f8
/* 03CCD4 8003D124 460084A1 */  cvt.d.s     $f18, $f16
/* 03CCD8 8003D128 44075000 */  mfc1        $a3, $f10
/* 03CCDC 8003D12C 468042A0 */  cvt.s.w     $f10, $f8
/* 03CCE0 8003D130 462C9100 */  add.d       $f4, $f18, $f12
/* 03CCE4 8003D134 46005402 */  mul.s       $f16, $f10, $f0
/* 03CCE8 8003D138 4620218D */  trunc.w.d   $f6, $f4
/* 03CCEC 8003D13C 4600848D */  trunc.w.s   $f18, $f16
/* 03CCF0 8003D140 44083000 */  mfc1        $t0, $f6
/* 03CCF4 8003D144 440E9000 */  mfc1        $t6, $f18
/* 03CCF8 8003D148 00000000 */  nop
/* 03CCFC 8003D14C 01CFC021 */  addu        $t8, $t6, $t7
/* 03CD00 8003D150 8FAF0018 */  lw          $t7, 0x18($sp)
/* 03CD04 8003D154 0018C880 */  sll         $t9, $t8, 2
/* 03CD08 8003D158 332B0FFF */  andi        $t3, $t9, 0xfff
/* 03CD0C 8003D15C 448F2000 */  mtc1        $t7, $f4
/* 03CD10 8003D160 8D4E0000 */  lw          $t6, 0x0($t2)
/* 03CD14 8003D164 000B6300 */  sll         $t4, $t3, 12
/* 03CD18 8003D168 468021A0 */  cvt.s.w     $f6, $f4
/* 03CD1C 8003D16C 01816825 */  or          $t5, $t4, $at
/* 03CD20 8003D170 46023202 */  mul.s       $f8, $f6, $f2
/* 03CD24 8003D174 4600428D */  trunc.w.s   $f10, $f8
/* 03CD28 8003D178 44195000 */  mfc1        $t9, $f10
/* 03CD2C 8003D17C 00000000 */  nop
/* 03CD30 8003D180 01D95821 */  addu        $t3, $t6, $t9
/* 03CD34 8003D184 000B6080 */  sll         $t4, $t3, 2
/* 03CD38 8003D188 318F0FFF */  andi        $t7, $t4, 0xfff
/* 03CD3C 8003D18C 01AFC025 */  or          $t8, $t5, $t7
/* 03CD40 8003D190 AC580000 */  sw          $t8, 0x0($v0)
/* 03CD44 8003D194 8D2E0000 */  lw          $t6, 0x0($t1)
/* 03CD48 8003D198 8D4D0000 */  lw          $t5, 0x0($t2)
/* 03CD4C 8003D19C 000EC880 */  sll         $t9, $t6, 2
/* 03CD50 8003D1A0 332B0FFF */  andi        $t3, $t9, 0xfff
/* 03CD54 8003D1A4 000D7880 */  sll         $t7, $t5, 2
/* 03CD58 8003D1A8 31F80FFF */  andi        $t8, $t7, 0xfff
/* 03CD5C 8003D1AC 000B6300 */  sll         $t4, $t3, 12
/* 03CD60 8003D1B0 01987025 */  or          $t6, $t4, $t8
/* 03CD64 8003D1B4 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03CD68 8003D1B8 8CC20000 */  lw          $v0, 0x0($a2)
/* 03CD6C 8003D1BC 3C0BE100 */  lui         $t3, 0xe100
/* 03CD70 8003D1C0 0007C400 */  sll         $t8, $a3, 16
/* 03CD74 8003D1C4 24590008 */  addiu       $t9, $v0, 0x8
/* 03CD78 8003D1C8 ACD90000 */  sw          $t9, 0x0($a2)
/* 03CD7C 8003D1CC AC400004 */  sw          $zero, 0x4($v0)
/* 03CD80 8003D1D0 AC4B0000 */  sw          $t3, 0x0($v0)
/* 03CD84 8003D1D4 8CC20000 */  lw          $v0, 0x0($a2)
/* 03CD88 8003D1D8 310EFFFF */  andi        $t6, $t0, 0xffff
/* 03CD8C 8003D1DC 030EC825 */  or          $t9, $t8, $t6
/* 03CD90 8003D1E0 244D0008 */  addiu       $t5, $v0, 0x8
/* 03CD94 8003D1E4 ACCD0000 */  sw          $t5, 0x0($a2)
/* 03CD98 8003D1E8 3C0FF100 */  lui         $t7, 0xf100
/* 03CD9C 8003D1EC AC4F0000 */  sw          $t7, 0x0($v0)
/* 03CDA0 8003D1F0 AC590004 */  sw          $t9, 0x4($v0)
/* 03CDA4 8003D1F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03CDA8 8003D1F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03CDAC 8003D1FC 03E00008 */  jr          $ra
/* 03CDB0 8003D200 00000000 */   nop

glabel func_8003D204 # 29
/* 03CDB4 8003D204 3C0E8010 */  lui         $t6, %hi(D_800FD180)
/* 03CDB8 8003D208 8DCED180 */  lw          $t6, %lo(D_800FD180)($t6)
/* 03CDBC 8003D20C 3C0F8010 */  lui         $t7, %hi(D_800FD184)
/* 03CDC0 8003D210 3C188010 */  lui         $t8, %hi(D_800FD188)
/* 03CDC4 8003D214 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CDC8 8003D218 8DEFD184 */  lw          $t7, %lo(D_800FD184)($t7)
/* 03CDCC 8003D21C 3C198010 */  lui         $t9, %hi(D_800FD18C)
/* 03CDD0 8003D220 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03CDD4 8003D224 8F18D188 */  lw          $t8, %lo(D_800FD188)($t8)
/* 03CDD8 8003D228 ACD80000 */  sw          $t8, 0x0($a2)
/* 03CDDC 8003D22C 8F39D18C */  lw          $t9, %lo(D_800FD18C)($t9)
/* 03CDE0 8003D230 03E00008 */  jr          $ra
/* 03CDE4 8003D234 ACF90000 */   sw         $t9, 0x0($a3)

glabel func_8003D238 # 30
/* 03CDE8 8003D238 8C820000 */  lw          $v0, 0x0($a0)
/* 03CDEC 8003D23C 8CA60004 */  lw          $a2, 0x4($a1)
/* 03CDF0 8003D240 8CA70008 */  lw          $a3, 0x8($a1)
/* 03CDF4 8003D244 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CDF8 8003D248 3C08E700 */  lui         $t0, 0xe700
/* 03CDFC 8003D24C AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CE00 8003D250 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03CE04 8003D254 AC400004 */  sw          $zero, 0x4($v0)
/* 03CE08 8003D258 10A00095 */  beqz        $a1, .L8003D4B0
/* 03CE0C 8003D25C AC480000 */   sw         $t0, 0x0($v0)
/* 03CE10 8003D260 8CAF000C */  lw          $t7, 0xc($a1)
/* 03CE14 8003D264 24010002 */  addiu       $at, $zero, 0x2
/* 03CE18 8003D268 340E8000 */  ori         $t6, $zero, 0x8000
/* 03CE1C 8003D26C 15E10032 */  bne         $t7, $at, .L8003D338
/* 03CE20 8003D270 3C19E300 */   lui        $t9, 0xe300
/* 03CE24 8003D274 8C820000 */  lw          $v0, 0x0($a0)
/* 03CE28 8003D278 3C19E300 */  lui         $t9, (0xE3001001 >> 16)
/* 03CE2C 8003D27C 37391001 */  ori         $t9, $t9, (0xE3001001 & 0xFFFF)
/* 03CE30 8003D280 24580008 */  addiu       $t8, $v0, 0x8
/* 03CE34 8003D284 AC980000 */  sw          $t8, 0x0($a0)
/* 03CE38 8003D288 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03CE3C 8003D28C AC590000 */  sw          $t9, 0x0($v0)
/* 03CE40 8003D290 8C820000 */  lw          $v0, 0x0($a0)
/* 03CE44 8003D294 3C18FD10 */  lui         $t8, 0xfd10
/* 03CE48 8003D298 3C198010 */  lui         $t9, %hi(D_800FD1D8)
/* 03CE4C 8003D29C 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CE50 8003D2A0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03CE54 8003D2A4 AC580000 */  sw          $t8, 0x0($v0)
/* 03CE58 8003D2A8 8F39D1D8 */  lw          $t9, %lo(D_800FD1D8)($t9)
/* 03CE5C 8003D2AC 3C0FE800 */  lui         $t7, 0xe800
/* 03CE60 8003D2B0 3C090700 */  lui         $t1, 0x700
/* 03CE64 8003D2B4 AC590004 */  sw          $t9, 0x4($v0)
/* 03CE68 8003D2B8 8C820000 */  lw          $v0, 0x0($a0)
/* 03CE6C 8003D2BC 3C19F500 */  lui         $t9, (0xF5000100 >> 16)
/* 03CE70 8003D2C0 37390100 */  ori         $t9, $t9, (0xF5000100 & 0xFFFF)
/* 03CE74 8003D2C4 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CE78 8003D2C8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CE7C 8003D2CC AC400004 */  sw          $zero, 0x4($v0)
/* 03CE80 8003D2D0 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03CE84 8003D2D4 8C820000 */  lw          $v0, 0x0($a0)
/* 03CE88 8003D2D8 3C0FE600 */  lui         $t7, 0xe600
/* 03CE8C 8003D2DC 24580008 */  addiu       $t8, $v0, 0x8
/* 03CE90 8003D2E0 AC980000 */  sw          $t8, 0x0($a0)
/* 03CE94 8003D2E4 AC490004 */  sw          $t1, 0x4($v0)
/* 03CE98 8003D2E8 AC590000 */  sw          $t9, 0x0($v0)
/* 03CE9C 8003D2EC 8C820000 */  lw          $v0, 0x0($a0)
/* 03CEA0 8003D2F0 3C19F000 */  lui         $t9, (0xF0001001 >> 16)
/* 03CEA4 8003D2F4 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CEA8 8003D2F8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CEAC 8003D2FC AC400004 */  sw          $zero, 0x4($v0)
/* 03CEB0 8003D300 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03CEB4 8003D304 8C820000 */  lw          $v0, 0x0($a0)
/* 03CEB8 8003D308 3C0E0703 */  lui         $t6, (0x703C000 >> 16)
/* 03CEBC 8003D30C 35CEC000 */  ori         $t6, $t6, (0x703C000 & 0xFFFF)
/* 03CEC0 8003D310 24580008 */  addiu       $t8, $v0, 0x8
/* 03CEC4 8003D314 AC980000 */  sw          $t8, 0x0($a0)
/* 03CEC8 8003D318 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03CECC 8003D31C AC590000 */  sw          $t9, 0x0($v0)
/* 03CED0 8003D320 8C820000 */  lw          $v0, 0x0($a0)
/* 03CED4 8003D324 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CED8 8003D328 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03CEDC 8003D32C AC400004 */  sw          $zero, 0x4($v0)
/* 03CEE0 8003D330 10000008 */  b           .L8003D354
/* 03CEE4 8003D334 AC480000 */   sw         $t0, 0x0($v0)
.L8003D338:
/* 03CEE8 8003D338 8C820000 */  lw          $v0, 0x0($a0)
/* 03CEEC 8003D33C 37391001 */  ori         $t9, $t9, (0xF0001001 & 0xFFFF)
/* 03CEF0 8003D340 3C090700 */  lui         $t1, 0x700
/* 03CEF4 8003D344 24580008 */  addiu       $t8, $v0, 0x8
/* 03CEF8 8003D348 AC980000 */  sw          $t8, 0x0($a0)
/* 03CEFC 8003D34C AC400004 */  sw          $zero, 0x4($v0)
/* 03CF00 8003D350 AC590000 */  sw          $t9, 0x0($v0)
.L8003D354:
/* 03CF04 8003D354 8C820000 */  lw          $v0, 0x0($a0)
/* 03CF08 8003D358 3C01FD00 */  lui         $at, 0xfd00
/* 03CF0C 8003D35C 00066043 */  sra         $t4, $a2, 1
/* 03CF10 8003D360 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CF14 8003D364 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CF18 8003D368 8CAF000C */  lw          $t7, 0xc($a1)
/* 03CF1C 8003D36C 25830007 */  addiu       $v1, $t4, 0x7
/* 03CF20 8003D370 3C0AF500 */  lui         $t2, 0xf500
/* 03CF24 8003D374 31F80007 */  andi        $t8, $t7, 0x7
/* 03CF28 8003D378 0018CD40 */  sll         $t9, $t8, 21
/* 03CF2C 8003D37C 03217025 */  or          $t6, $t9, $at
/* 03CF30 8003D380 3C010008 */  lui         $at, 0x8
/* 03CF34 8003D384 2598FFFF */  addiu       $t8, $t4, -0x1
/* 03CF38 8003D388 33190FFF */  andi        $t9, $t8, 0xfff
/* 03CF3C 8003D38C 01C17825 */  or          $t7, $t6, $at
/* 03CF40 8003D390 01F97025 */  or          $t6, $t7, $t9
/* 03CF44 8003D394 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03CF48 8003D398 8CB80000 */  lw          $t8, 0x0($a1)
/* 03CF4C 8003D39C 0003C8C3 */  sra         $t9, $v1, 3
/* 03CF50 8003D3A0 332E01FF */  andi        $t6, $t9, 0x1ff
/* 03CF54 8003D3A4 AC580004 */  sw          $t8, 0x4($v0)
/* 03CF58 8003D3A8 8C820000 */  lw          $v0, 0x0($a0)
/* 03CF5C 8003D3AC 000E1A40 */  sll         $v1, $t6, 9
/* 03CF60 8003D3B0 24CCFFFF */  addiu       $t4, $a2, -0x1
/* 03CF64 8003D3B4 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CF68 8003D3B8 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03CF6C 8003D3BC 8CAF000C */  lw          $t7, 0xc($a1)
/* 03CF70 8003D3C0 AC490004 */  sw          $t1, 0x4($v0)
/* 03CF74 8003D3C4 24EDFFFF */  addiu       $t5, $a3, -0x1
/* 03CF78 8003D3C8 31F90007 */  andi        $t9, $t7, 0x7
/* 03CF7C 8003D3CC 00197540 */  sll         $t6, $t9, 21
/* 03CF80 8003D3D0 01CAC025 */  or          $t8, $t6, $t2
/* 03CF84 8003D3D4 03017825 */  or          $t7, $t8, $at
/* 03CF88 8003D3D8 01E3C825 */  or          $t9, $t7, $v1
/* 03CF8C 8003D3DC AC590000 */  sw          $t9, 0x0($v0)
/* 03CF90 8003D3E0 8C820000 */  lw          $v0, 0x0($a0)
/* 03CF94 8003D3E4 3C18E600 */  lui         $t8, 0xe600
/* 03CF98 8003D3E8 AFA20010 */  sw          $v0, 0x10($sp)
/* 03CF9C 8003D3EC 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CFA0 8003D3F0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CFA4 8003D3F4 8FAF0010 */  lw          $t7, 0x10($sp)
/* 03CFA8 8003D3F8 3C0EF400 */  lui         $t6, 0xf400
/* 03CFAC 8003D3FC ADF80000 */  sw          $t8, 0x0($t7)
/* 03CFB0 8003D400 ADE00004 */  sw          $zero, 0x4($t7)
/* 03CFB4 8003D404 8C820000 */  lw          $v0, 0x0($a0)
/* 03CFB8 8003D408 000DC080 */  sll         $t8, $t5, 2
/* 03CFBC 8003D40C 330D0FFF */  andi        $t5, $t8, 0xfff
/* 03CFC0 8003D410 24590008 */  addiu       $t9, $v0, 0x8
/* 03CFC4 8003D414 AC990000 */  sw          $t9, 0x0($a0)
/* 03CFC8 8003D418 000CC840 */  sll         $t9, $t4, 1
/* 03CFCC 8003D41C AC4E0000 */  sw          $t6, 0x0($v0)
/* 03CFD0 8003D420 332E0FFF */  andi        $t6, $t9, 0xfff
/* 03CFD4 8003D424 000EC300 */  sll         $t8, $t6, 12
/* 03CFD8 8003D428 03097825 */  or          $t7, $t8, $t1
/* 03CFDC 8003D42C 01EDC825 */  or          $t9, $t7, $t5
/* 03CFE0 8003D430 AC590004 */  sw          $t9, 0x4($v0)
/* 03CFE4 8003D434 8C820000 */  lw          $v0, 0x0($a0)
/* 03CFE8 8003D438 AFA20008 */  sw          $v0, 0x8($sp)
/* 03CFEC 8003D43C 244E0008 */  addiu       $t6, $v0, 0x8
/* 03CFF0 8003D440 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03CFF4 8003D444 8FB80008 */  lw          $t8, 0x8($sp)
/* 03CFF8 8003D448 AF080000 */  sw          $t0, 0x0($t8)
/* 03CFFC 8003D44C AF000004 */  sw          $zero, 0x4($t8)
/* 03D000 8003D450 8C820000 */  lw          $v0, 0x0($a0)
/* 03D004 8003D454 AFA20004 */  sw          $v0, 0x4($sp)
/* 03D008 8003D458 244F0008 */  addiu       $t7, $v0, 0x8
/* 03D00C 8003D45C AC8F0000 */  sw          $t7, 0x0($a0)
/* 03D010 8003D460 8CB9000C */  lw          $t9, 0xc($a1)
/* 03D014 8003D464 332E0007 */  andi        $t6, $t9, 0x7
/* 03D018 8003D468 000EC540 */  sll         $t8, $t6, 21
/* 03D01C 8003D46C 8FAE0004 */  lw          $t6, 0x4($sp)
/* 03D020 8003D470 030A7825 */  or          $t7, $t8, $t2
/* 03D024 8003D474 01E3C825 */  or          $t9, $t7, $v1
/* 03D028 8003D478 ADD90000 */  sw          $t9, 0x0($t6)
/* 03D02C 8003D47C ADC00004 */  sw          $zero, 0x4($t6)
/* 03D030 8003D480 8C820000 */  lw          $v0, 0x0($a0)
/* 03D034 8003D484 000C7080 */  sll         $t6, $t4, 2
/* 03D038 8003D488 3C0FF200 */  lui         $t7, 0xf200
/* 03D03C 8003D48C AFA20000 */  sw          $v0, 0x0($sp)
/* 03D040 8003D490 24580008 */  addiu       $t8, $v0, 0x8
/* 03D044 8003D494 AC980000 */  sw          $t8, 0x0($a0)
/* 03D048 8003D498 8FB90000 */  lw          $t9, 0x0($sp)
/* 03D04C 8003D49C 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03D050 8003D4A0 AF2F0000 */  sw          $t7, 0x0($t9)
/* 03D054 8003D4A4 00187B00 */  sll         $t7, $t8, 12
/* 03D058 8003D4A8 01ED7025 */  or          $t6, $t7, $t5
/* 03D05C 8003D4AC AF2E0004 */  sw          $t6, 0x4($t9)
.L8003D4B0:
/* 03D060 8003D4B0 03E00008 */  jr          $ra
/* 03D064 8003D4B4 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8003D4B8 # 31
/* 03D068 8003D4B8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D06C 8003D4BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D070 8003D4C0 3C048010 */  lui         $a0, %hi(D_800FD1E0)
/* 03D074 8003D4C4 0C00F618 */  jal         func_8003D860
/* 03D078 8003D4C8 2484D1E0 */   addiu      $a0, $a0, %lo(D_800FD1E0)
/* 03D07C 8003D4CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D080 8003D4D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D084 8003D4D4 03E00008 */  jr          $ra
/* 03D088 8003D4D8 00000000 */   nop
/* 03D08C 8003D4DC 00000000 */  nop
