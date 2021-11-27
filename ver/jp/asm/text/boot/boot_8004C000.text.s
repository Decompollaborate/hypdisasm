.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004C000 # 0
/* 04BBB0 8004C000 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04BBB4 8004C004 24010004 */  addiu       $at, $zero, 0x4
/* 04BBB8 8004C008 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04BBBC 8004C00C 10A10050 */  beq         $a1, $at, .L8004C150
/* 04BBC0 8004C010 00803825 */   move       $a3, $a0
/* 04BBC4 8004C014 24010005 */  addiu       $at, $zero, 0x5
/* 04BBC8 8004C018 54A10066 */  bnel        $a1, $at, .L8004C1B4
/* 04BBCC 8004C01C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BBD0 8004C020 AC860020 */  sw          $a2, 0x20($a0)
/* 04BBD4 8004C024 8CCE0000 */  lw          $t6, 0x0($a2)
/* 04BBD8 8004C028 AC800030 */  sw          $zero, 0x30($a0)
/* 04BBDC 8004C02C AC8E003C */  sw          $t6, 0x3c($a0)
/* 04BBE0 8004C030 90C20008 */  lbu         $v0, 0x8($a2)
/* 04BBE4 8004C034 50400007 */  beql        $v0, $zero, .L8004C054
/* 04BBE8 8004C038 8CE20020 */   lw         $v0, 0x20($a3)
/* 04BBEC 8004C03C 24040001 */  addiu       $a0, $zero, 0x1
/* 04BBF0 8004C040 50440033 */  beql        $v0, $a0, .L8004C110
/* 04BBF4 8004C044 8CE20020 */   lw         $v0, 0x20($a3)
/* 04BBF8 8004C048 1000005A */  b           .L8004C1B4
/* 04BBFC 8004C04C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BC00 8004C050 8CE20020 */  lw          $v0, 0x20($a3)
.L8004C054:
/* 04BC04 8004C054 24050009 */  addiu       $a1, $zero, 0x9
/* 04BC08 8004C058 8C4F0004 */  lw          $t7, 0x4($v0)
/* 04BC0C 8004C05C 01E5001A */  div         $zero, $t7, $a1
/* 04BC10 8004C060 0000C012 */  mflo        $t8
/* 04BC14 8004C064 14A00002 */  bnez        $a1, .L8004C070
/* 04BC18 8004C068 00000000 */   nop
/* 04BC1C 8004C06C 0007000D */  break       7
.L8004C070:
/* 04BC20 8004C070 2401FFFF */  addiu       $at, $zero, -0x1
/* 04BC24 8004C074 14A10004 */  bne         $a1, $at, .L8004C088
/* 04BC28 8004C078 3C018000 */   lui        $at, 0x8000
/* 04BC2C 8004C07C 15E10002 */  bne         $t7, $at, .L8004C088
/* 04BC30 8004C080 00000000 */   nop
/* 04BC34 8004C084 0006000D */  break       6
.L8004C088:
/* 04BC38 8004C088 03050019 */  multu       $t8, $a1
/* 04BC3C 8004C08C 0000C812 */  mflo        $t9
/* 04BC40 8004C090 AC590004 */  sw          $t9, 0x4($v0)
/* 04BC44 8004C094 8CE20020 */  lw          $v0, 0x20($a3)
/* 04BC48 8004C098 8C440010 */  lw          $a0, 0x10($v0)
/* 04BC4C 8004C09C 8C880000 */  lw          $t0, 0x0($a0)
/* 04BC50 8004C0A0 8C8A0004 */  lw          $t2, 0x4($a0)
/* 04BC54 8004C0A4 00084900 */  sll         $t1, $t0, 4
/* 04BC58 8004C0A8 012A0019 */  multu       $t1, $t2
/* 04BC5C 8004C0AC 00005812 */  mflo        $t3
/* 04BC60 8004C0B0 ACEB0024 */  sw          $t3, 0x24($a3)
/* 04BC64 8004C0B4 8C43000C */  lw          $v1, 0xc($v0)
/* 04BC68 8004C0B8 50600011 */  beql        $v1, $zero, .L8004C100
/* 04BC6C 8004C0BC ACE0001C */   sw         $zero, 0x1c($a3)
/* 04BC70 8004C0C0 8C6C0000 */  lw          $t4, 0x0($v1)
/* 04BC74 8004C0C4 8CE50010 */  lw          $a1, 0x10($a3)
/* 04BC78 8004C0C8 24060020 */  addiu       $a2, $zero, 0x20
/* 04BC7C 8004C0CC ACEC0014 */  sw          $t4, 0x14($a3)
/* 04BC80 8004C0D0 8C4D000C */  lw          $t5, 0xc($v0)
/* 04BC84 8004C0D4 8DAE0004 */  lw          $t6, 0x4($t5)
/* 04BC88 8004C0D8 ACEE0018 */  sw          $t6, 0x18($a3)
/* 04BC8C 8004C0DC 8C4F000C */  lw          $t7, 0xc($v0)
/* 04BC90 8004C0E0 8DF80008 */  lw          $t8, 0x8($t7)
/* 04BC94 8004C0E4 ACF8001C */  sw          $t8, 0x1c($a3)
/* 04BC98 8004C0E8 8C44000C */  lw          $a0, 0xc($v0)
/* 04BC9C 8004C0EC 0C0150B8 */  jal         func_800542E0
/* 04BCA0 8004C0F0 2484000C */   addiu      $a0, $a0, 0xc
/* 04BCA4 8004C0F4 1000002F */  b           .L8004C1B4
/* 04BCA8 8004C0F8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BCAC 8004C0FC ACE0001C */  sw          $zero, 0x1c($a3)
.L8004C100:
/* 04BCB0 8004C100 ACE00018 */  sw          $zero, 0x18($a3)
/* 04BCB4 8004C104 1000002A */  b           .L8004C1B0
/* 04BCB8 8004C108 ACE00014 */   sw         $zero, 0x14($a3)
/* 04BCBC 8004C10C 8CE20020 */  lw          $v0, 0x20($a3)
.L8004C110:
/* 04BCC0 8004C110 8C43000C */  lw          $v1, 0xc($v0)
/* 04BCC4 8004C114 5060000B */  beql        $v1, $zero, .L8004C144
/* 04BCC8 8004C118 ACE0001C */   sw         $zero, 0x1c($a3)
/* 04BCCC 8004C11C 8C790000 */  lw          $t9, 0x0($v1)
/* 04BCD0 8004C120 ACF90014 */  sw          $t9, 0x14($a3)
/* 04BCD4 8004C124 8C48000C */  lw          $t0, 0xc($v0)
/* 04BCD8 8004C128 8D090004 */  lw          $t1, 0x4($t0)
/* 04BCDC 8004C12C ACE90018 */  sw          $t1, 0x18($a3)
/* 04BCE0 8004C130 8C4A000C */  lw          $t2, 0xc($v0)
/* 04BCE4 8004C134 8D4B0008 */  lw          $t3, 0x8($t2)
/* 04BCE8 8004C138 1000001D */  b           .L8004C1B0
/* 04BCEC 8004C13C ACEB001C */   sw         $t3, 0x1c($a3)
/* 04BCF0 8004C140 ACE0001C */  sw          $zero, 0x1c($a3)
.L8004C144:
/* 04BCF4 8004C144 ACE00018 */  sw          $zero, 0x18($a3)
/* 04BCF8 8004C148 10000019 */  b           .L8004C1B0
/* 04BCFC 8004C14C ACE00014 */   sw         $zero, 0x14($a3)
.L8004C150:
/* 04BD00 8004C150 8CE20020 */  lw          $v0, 0x20($a3)
/* 04BD04 8004C154 24040001 */  addiu       $a0, $zero, 0x1
/* 04BD08 8004C158 ACE00034 */  sw          $zero, 0x34($a3)
/* 04BD0C 8004C15C ACE40038 */  sw          $a0, 0x38($a3)
/* 04BD10 8004C160 10400013 */  beqz        $v0, .L8004C1B0
/* 04BD14 8004C164 ACE00030 */   sw         $zero, 0x30($a3)
/* 04BD18 8004C168 8C4C0000 */  lw          $t4, 0x0($v0)
/* 04BD1C 8004C16C ACEC003C */  sw          $t4, 0x3c($a3)
/* 04BD20 8004C170 90430008 */  lbu         $v1, 0x8($v0)
/* 04BD24 8004C174 14600007 */  bnez        $v1, .L8004C194
/* 04BD28 8004C178 00000000 */   nop
/* 04BD2C 8004C17C 8C43000C */  lw          $v1, 0xc($v0)
/* 04BD30 8004C180 5060000C */  beql        $v1, $zero, .L8004C1B4
/* 04BD34 8004C184 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BD38 8004C188 8C6D0008 */  lw          $t5, 0x8($v1)
/* 04BD3C 8004C18C 10000008 */  b           .L8004C1B0
/* 04BD40 8004C190 ACED001C */   sw         $t5, 0x1c($a3)
.L8004C194:
/* 04BD44 8004C194 54830007 */  bnel        $a0, $v1, .L8004C1B4
/* 04BD48 8004C198 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BD4C 8004C19C 8C43000C */  lw          $v1, 0xc($v0)
/* 04BD50 8004C1A0 50600004 */  beql        $v1, $zero, .L8004C1B4
/* 04BD54 8004C1A4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04BD58 8004C1A8 8C6E0008 */  lw          $t6, 0x8($v1)
/* 04BD5C 8004C1AC ACEE001C */  sw          $t6, 0x1c($a3)
.L8004C1B0:
/* 04BD60 8004C1B0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004C1B4:
/* 04BD64 8004C1B4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04BD68 8004C1B8 03E00008 */  jr          $ra
/* 04BD6C 8004C1BC 00000000 */   nop

glabel func_8004C1C0 # 1
/* 04BD70 8004C1C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04BD74 8004C1C4 AFB4002C */  sw          $s4, 0x2c($sp)
/* 04BD78 8004C1C8 AFB60028 */  sw          $s6, 0x28($sp)
/* 04BD7C 8004C1CC 00147400 */  sll         $t6, $s4, 16
/* 04BD80 8004C1D0 0016C400 */  sll         $t8, $s6, 16
/* 04BD84 8004C1D4 0018B403 */  sra         $s6, $t8, 16
/* 04BD88 8004C1D8 000EA403 */  sra         $s4, $t6, 16
/* 04BD8C 8004C1DC 1A200017 */  blez        $s1, .L8004C23C
/* 04BD90 8004C1E0 AFBF0014 */   sw         $ra, 0x14($sp)
/* 04BD94 8004C1E4 8E590028 */  lw          $t9, 0x28($s2)
/* 04BD98 8004C1E8 8E44003C */  lw          $a0, 0x3c($s2)
/* 04BD9C 8004C1EC 02202825 */  move        $a1, $s1
/* 04BDA0 8004C1F0 0320F809 */  jalr        $t9
/* 04BDA4 8004C1F4 8E46002C */   lw         $a2, 0x2c($s2)
/* 04BDA8 8004C1F8 30450007 */  andi        $a1, $v0, 0x7
/* 04BDAC 8004C1FC 02258821 */  addu        $s1, $s1, $a1
/* 04BDB0 8004C200 322E0007 */  andi        $t6, $s1, 0x7
/* 04BDB4 8004C204 022E7823 */  subu        $t7, $s1, $t6
/* 04BDB8 8004C208 25F80008 */  addiu       $t8, $t7, 0x8
/* 04BDBC 8004C20C 33190FFF */  andi        $t9, $t8, 0xfff
/* 04BDC0 8004C210 00197300 */  sll         $t6, $t9, 12
/* 04BDC4 8004C214 3C010400 */  lui         $at, 0x400
/* 04BDC8 8004C218 01C17825 */  or          $t7, $t6, $at
/* 04BDCC 8004C21C 32980FFF */  andi        $t8, $s4, 0xfff
/* 04BDD0 8004C220 02002025 */  move        $a0, $s0
/* 04BDD4 8004C224 01F8C825 */  or          $t9, $t7, $t8
/* 04BDD8 8004C228 00457023 */  subu        $t6, $v0, $a1
/* 04BDDC 8004C22C AC8E0004 */  sw          $t6, 0x4($a0)
/* 04BDE0 8004C230 AC990000 */  sw          $t9, 0x0($a0)
/* 04BDE4 8004C234 10000002 */  b           .L8004C240
/* 04BDE8 8004C238 26100008 */   addiu      $s0, $s0, 0x8
.L8004C23C:
/* 04BDEC 8004C23C 00002825 */  move        $a1, $zero
.L8004C240:
/* 04BDF0 8004C240 326F0002 */  andi        $t7, $s3, 0x2
/* 04BDF4 8004C244 11E00009 */  beqz        $t7, .L8004C26C
/* 04BDF8 8004C248 02001025 */   move       $v0, $s0
/* 04BDFC 8004C24C 3C180F00 */  lui         $t8, 0xf00
/* 04BE00 8004C250 AC580000 */  sw          $t8, 0x0($v0)
/* 04BE04 8004C254 8E590010 */  lw          $t9, 0x10($s2)
/* 04BE08 8004C258 3C011FFF */  lui         $at, 0x1fff
/* 04BE0C 8004C25C 3421FFFF */  ori         $at, $at, 0xffff
/* 04BE10 8004C260 03217024 */  and         $t6, $t9, $at
/* 04BE14 8004C264 AC4E0004 */  sw          $t6, 0x4($v0)
/* 04BE18 8004C268 26100008 */  addiu       $s0, $s0, 0x8
.L8004C26C:
/* 04BE1C 8004C26C 8E4F000C */  lw          $t7, 0xc($s2)
/* 04BE20 8004C270 3C011FFF */  lui         $at, 0x1fff
/* 04BE24 8004C274 3421FFFF */  ori         $at, $at, 0xffff
/* 04BE28 8004C278 01E1C024 */  and         $t8, $t7, $at
/* 04BE2C 8004C27C 3C0100FF */  lui         $at, 0xff
/* 04BE30 8004C280 3421FFFF */  ori         $at, $at, 0xffff
/* 04BE34 8004C284 0301C824 */  and         $t9, $t8, $at
/* 04BE38 8004C288 3C010100 */  lui         $at, 0x100
/* 04BE3C 8004C28C 03217025 */  or          $t6, $t9, $at
/* 04BE40 8004C290 02001825 */  move        $v1, $s0
/* 04BE44 8004C294 AC6E0000 */  sw          $t6, 0x0($v1)
/* 04BE48 8004C298 0015C840 */  sll         $t9, $s5, 1
/* 04BE4C 8004C29C 332E0FFF */  andi        $t6, $t9, 0xfff
/* 04BE50 8004C2A0 000E7C00 */  sll         $t7, $t6, 16
/* 04BE54 8004C2A4 0013C700 */  sll         $t8, $s3, 28
/* 04BE58 8004C2A8 030FC825 */  or          $t9, $t8, $t7
/* 04BE5C 8004C2AC 30AE000F */  andi        $t6, $a1, 0xf
/* 04BE60 8004C2B0 000EC300 */  sll         $t8, $t6, 12
/* 04BE64 8004C2B4 03387825 */  or          $t7, $t9, $t8
/* 04BE68 8004C2B8 32CE0FFF */  andi        $t6, $s6, 0xfff
/* 04BE6C 8004C2BC 01EEC825 */  or          $t9, $t7, $t6
/* 04BE70 8004C2C0 AC790004 */  sw          $t9, 0x4($v1)
/* 04BE74 8004C2C4 AE400038 */  sw          $zero, 0x38($s2)
/* 04BE78 8004C2C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04BE7C 8004C2CC 26100008 */  addiu       $s0, $s0, 0x8
/* 04BE80 8004C2D0 02001025 */  move        $v0, $s0
/* 04BE84 8004C2D4 03E00008 */  jr          $ra
/* 04BE88 8004C2D8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8004C2DC # 2
/* 04BE8C 8004C2DC 27BDFF50 */  addiu       $sp, $sp, -0xb0
/* 04BE90 8004C2E0 AFB70044 */  sw          $s7, 0x44($sp)
/* 04BE94 8004C2E4 0080B825 */  move        $s7, $a0
/* 04BE98 8004C2E8 AFBF004C */  sw          $ra, 0x4c($sp)
/* 04BE9C 8004C2EC AFBE0048 */  sw          $fp, 0x48($sp)
/* 04BEA0 8004C2F0 AFB60040 */  sw          $s6, 0x40($sp)
/* 04BEA4 8004C2F4 AFB5003C */  sw          $s5, 0x3c($sp)
/* 04BEA8 8004C2F8 AFB40038 */  sw          $s4, 0x38($sp)
/* 04BEAC 8004C2FC AFB30034 */  sw          $s3, 0x34($sp)
/* 04BEB0 8004C300 AFB20030 */  sw          $s2, 0x30($sp)
/* 04BEB4 8004C304 AFB1002C */  sw          $s1, 0x2c($sp)
/* 04BEB8 8004C308 AFB00028 */  sw          $s0, 0x28($sp)
/* 04BEBC 8004C30C 00A05825 */  move        $t3, $a1
/* 04BEC0 8004C310 00C04025 */  move        $t0, $a2
/* 04BEC4 8004C314 14C00003 */  bnez        $a2, .L8004C324
/* 04BEC8 8004C318 00006025 */   move       $t4, $zero
/* 04BECC 8004C31C 1000010D */  b           .L8004C754
/* 04BED0 8004C320 00E01025 */   move       $v0, $a3
.L8004C324:
/* 04BED4 8004C324 8EEE0024 */  lw          $t6, 0x24($s7)
/* 04BED8 8004C328 3C0100FF */  lui         $at, 0xff
/* 04BEDC 8004C32C 3421FFFF */  ori         $at, $at, 0xffff
/* 04BEE0 8004C330 01C17824 */  and         $t7, $t6, $at
/* 04BEE4 8004C334 3C010B00 */  lui         $at, 0xb00
/* 04BEE8 8004C338 01E1C025 */  or          $t8, $t7, $at
/* 04BEEC 8004C33C ACF80000 */  sw          $t8, 0x0($a3)
/* 04BEF0 8004C340 8EF90020 */  lw          $t9, 0x20($s7)
/* 04BEF4 8004C344 3C011FFF */  lui         $at, 0x1fff
/* 04BEF8 8004C348 3421FFFF */  ori         $at, $at, 0xffff
/* 04BEFC 8004C34C 8F2E0010 */  lw          $t6, 0x10($t9)
/* 04BF00 8004C350 24EA0008 */  addiu       $t2, $a3, 0x8
/* 04BF04 8004C354 01002825 */  move        $a1, $t0
/* 04BF08 8004C358 25CF0008 */  addiu       $t7, $t6, 0x8
/* 04BF0C 8004C35C 01E1C024 */  and         $t8, $t7, $at
/* 04BF10 8004C360 ACF80004 */  sw          $t8, 0x4($a3)
/* 04BF14 8004C364 8EE30030 */  lw          $v1, 0x30($s7)
/* 04BF18 8004C368 8EE40018 */  lw          $a0, 0x18($s7)
/* 04BF1C 8004C36C 240F0010 */  addiu       $t7, $zero, 0x10
/* 04BF20 8004C370 0068C821 */  addu        $t9, $v1, $t0
/* 04BF24 8004C374 0099482B */  sltu        $t1, $a0, $t9
/* 04BF28 8004C378 11200004 */  beqz        $t1, .L8004C38C
/* 04BF2C 8004C37C 00003025 */   move       $a2, $zero
/* 04BF30 8004C380 8EE9001C */  lw          $t1, 0x1c($s7)
/* 04BF34 8004C384 0009702B */  sltu        $t6, $zero, $t1
/* 04BF38 8004C388 01C04825 */  move        $t1, $t6
.L8004C38C:
/* 04BF3C 8004C38C 11200003 */  beqz        $t1, .L8004C39C
/* 04BF40 8004C390 24010009 */   addiu      $at, $zero, 0x9
/* 04BF44 8004C394 10000001 */  b           .L8004C39C
/* 04BF48 8004C398 00832823 */   subu       $a1, $a0, $v1
.L8004C39C:
/* 04BF4C 8004C39C 8EE30034 */  lw          $v1, 0x34($s7)
/* 04BF50 8004C3A0 01408025 */  move        $s0, $t2
/* 04BF54 8004C3A4 02E09025 */  move        $s2, $s7
/* 04BF58 8004C3A8 10600003 */  beqz        $v1, .L8004C3B8
/* 04BF5C 8004C3AC 0000A025 */   move       $s4, $zero
/* 04BF60 8004C3B0 10000001 */  b           .L8004C3B8
/* 04BF64 8004C3B4 01E33023 */   subu       $a2, $t7, $v1
.L8004C3B8:
/* 04BF68 8004C3B8 00A62023 */  subu        $a0, $a1, $a2
/* 04BF6C 8004C3BC 04810002 */  bgez        $a0, .L8004C3C8
/* 04BF70 8004C3C0 00000000 */   nop
/* 04BF74 8004C3C4 00002025 */  move        $a0, $zero
.L8004C3C8:
/* 04BF78 8004C3C8 11200082 */  beqz        $t1, .L8004C5D4
/* 04BF7C 8004C3CC 249E000F */   addiu      $fp, $a0, 0xf
/* 04BF80 8004C3D0 249E000F */  addiu       $fp, $a0, 0xf
/* 04BF84 8004C3D4 001EC103 */  sra         $t8, $fp, 4
/* 04BF88 8004C3D8 85760000 */  lh          $s6, 0x0($t3)
/* 04BF8C 8004C3DC 8EF30038 */  lw          $s3, 0x38($s7)
/* 04BF90 8004C3E0 001848C0 */  sll         $t1, $t8, 3
/* 04BF94 8004C3E4 01384821 */  addu        $t1, $t1, $t8
/* 04BF98 8004C3E8 01208825 */  move        $s1, $t1
/* 04BF9C 8004C3EC AFA9005C */  sw          $t1, 0x5c($sp)
/* 04BFA0 8004C3F0 AFAB00B4 */  sw          $t3, 0xb4($sp)
/* 04BFA4 8004C3F4 AFA800B8 */  sw          $t0, 0xb8($sp)
/* 04BFA8 8004C3F8 AFA5008C */  sw          $a1, 0x8c($sp)
/* 04BFAC 8004C3FC 0300F025 */  move        $fp, $t8
/* 04BFB0 8004C400 0C013070 */  jal         func_8004C1C0
/* 04BFB4 8004C404 0080A825 */   move       $s5, $a0
/* 04BFB8 8004C408 8EE30034 */  lw          $v1, 0x34($s7)
/* 04BFBC 8004C40C 8FA5008C */  lw          $a1, 0x8c($sp)
/* 04BFC0 8004C410 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 04BFC4 8004C414 8FA9005C */  lw          $t1, 0x5c($sp)
/* 04BFC8 8004C418 8FAB00B4 */  lw          $t3, 0xb4($sp)
/* 04BFCC 8004C41C 10600006 */  beqz        $v1, .L8004C438
/* 04BFD0 8004C420 00405025 */   move       $t2, $v0
/* 04BFD4 8004C424 85790000 */  lh          $t9, 0x0($t3)
/* 04BFD8 8004C428 00037040 */  sll         $t6, $v1, 1
/* 04BFDC 8004C42C 032E7821 */  addu        $t7, $t9, $t6
/* 04BFE0 8004C430 10000004 */  b           .L8004C444
/* 04BFE4 8004C434 A56F0000 */   sh         $t7, 0x0($t3)
.L8004C438:
/* 04BFE8 8004C438 85780000 */  lh          $t8, 0x0($t3)
/* 04BFEC 8004C43C 27190020 */  addiu       $t9, $t8, 0x20
/* 04BFF0 8004C440 A5790000 */  sh          $t9, 0x0($t3)
.L8004C444:
/* 04BFF4 8004C444 8EE20014 */  lw          $v0, 0x14($s7)
/* 04BFF8 8004C448 8EEF0020 */  lw          $t7, 0x20($s7)
/* 04BFFC 8004C44C 00A8082A */  slt         $at, $a1, $t0
/* 04C000 8004C450 304E000F */  andi        $t6, $v0, 0xf
/* 04C004 8004C454 AEEE0034 */  sw          $t6, 0x34($s7)
/* 04C008 8004C458 8DF80000 */  lw          $t8, 0x0($t7)
/* 04C00C 8004C45C 0002C902 */  srl         $t9, $v0, 4
/* 04C010 8004C460 001970C0 */  sll         $t6, $t9, 3
/* 04C014 8004C464 01D97021 */  addu        $t6, $t6, $t9
/* 04C018 8004C468 030E7821 */  addu        $t7, $t8, $t6
/* 04C01C 8004C46C 25F90009 */  addiu       $t9, $t7, 0x9
/* 04C020 8004C470 AEF9003C */  sw          $t9, 0x3c($s7)
/* 04C024 8004C474 AEE20030 */  sw          $v0, 0x30($s7)
/* 04C028 8004C478 1020004A */  beqz        $at, .L8004C5A4
/* 04C02C 8004C47C 85660000 */   lh         $a2, 0x0($t3)
/* 04C030 8004C480 00051840 */  sll         $v1, $a1, 1
.L8004C484:
/* 04C034 8004C484 27D80001 */  addiu       $t8, $fp, 0x1
/* 04C038 8004C488 00187140 */  sll         $t6, $t8, 5
/* 04C03C 8004C48C 01C63821 */  addu        $a3, $t6, $a2
/* 04C040 8004C490 8EE2001C */  lw          $v0, 0x1c($s7)
/* 04C044 8004C494 24E70010 */  addiu       $a3, $a3, 0x10
/* 04C048 8004C498 2401FFE0 */  addiu       $at, $zero, -0x20
/* 04C04C 8004C49C 00E17824 */  and         $t7, $a3, $at
/* 04C050 8004C4A0 2401FFFF */  addiu       $at, $zero, -0x1
/* 04C054 8004C4A4 01054023 */  subu        $t0, $t0, $a1
/* 04C058 8004C4A8 01E03825 */  move        $a3, $t7
/* 04C05C 8004C4AC 10410004 */  beq         $v0, $at, .L8004C4C0
/* 04C060 8004C4B0 00C33021 */   addu       $a2, $a2, $v1
/* 04C064 8004C4B4 10400002 */  beqz        $v0, .L8004C4C0
/* 04C068 8004C4B8 2459FFFF */   addiu      $t9, $v0, -0x1
/* 04C06C 8004C4BC AEF9001C */  sw          $t9, 0x1c($s7)
.L8004C4C0:
/* 04C070 8004C4C0 8EF80018 */  lw          $t8, 0x18($s7)
/* 04C074 8004C4C4 8EEE0014 */  lw          $t6, 0x14($s7)
/* 04C078 8004C4C8 01408025 */  move        $s0, $t2
/* 04C07C 8004C4CC 02E09025 */  move        $s2, $s7
/* 04C080 8004C4D0 030E1023 */  subu        $v0, $t8, $t6
/* 04C084 8004C4D4 0102082B */  sltu        $at, $t0, $v0
/* 04C088 8004C4D8 10200003 */  beqz        $at, .L8004C4E8
/* 04C08C 8004C4DC 0007B400 */   sll        $s6, $a3, 16
/* 04C090 8004C4E0 10000002 */  b           .L8004C4EC
/* 04C094 8004C4E4 01002825 */   move       $a1, $t0
.L8004C4E8:
/* 04C098 8004C4E8 00402825 */  move        $a1, $v0
.L8004C4EC:
/* 04C09C 8004C4EC 8EEF0034 */  lw          $t7, 0x34($s7)
/* 04C0A0 8004C4F0 0016C403 */  sra         $t8, $s6, 16
/* 04C0A4 8004C4F4 0300B025 */  move        $s6, $t8
/* 04C0A8 8004C4F8 00AF2021 */  addu        $a0, $a1, $t7
/* 04C0AC 8004C4FC 2484FFF0 */  addiu       $a0, $a0, -0x10
/* 04C0B0 8004C500 04810002 */  bgez        $a0, .L8004C50C
/* 04C0B4 8004C504 0000A025 */   move       $s4, $zero
/* 04C0B8 8004C508 00002025 */  move        $a0, $zero
.L8004C50C:
/* 04C0BC 8004C50C 8EF30038 */  lw          $s3, 0x38($s7)
/* 04C0C0 8004C510 249E000F */  addiu       $fp, $a0, 0xf
/* 04C0C4 8004C514 001EC903 */  sra         $t9, $fp, 4
/* 04C0C8 8004C518 001948C0 */  sll         $t1, $t9, 3
/* 04C0CC 8004C51C 01394821 */  addu        $t1, $t1, $t9
/* 04C0D0 8004C520 366E0002 */  ori         $t6, $s3, 0x2
/* 04C0D4 8004C524 01C09825 */  move        $s3, $t6
/* 04C0D8 8004C528 01208825 */  move        $s1, $t1
/* 04C0DC 8004C52C AFA9005C */  sw          $t1, 0x5c($sp)
/* 04C0E0 8004C530 0320F025 */  move        $fp, $t9
/* 04C0E4 8004C534 AFA800B8 */  sw          $t0, 0xb8($sp)
/* 04C0E8 8004C538 AFA70088 */  sw          $a3, 0x88($sp)
/* 04C0EC 8004C53C AFA60080 */  sw          $a2, 0x80($sp)
/* 04C0F0 8004C540 AFA5008C */  sw          $a1, 0x8c($sp)
/* 04C0F4 8004C544 0C013070 */  jal         func_8004C1C0
/* 04C0F8 8004C548 0080A825 */   move       $s5, $a0
/* 04C0FC 8004C54C 8EEF0034 */  lw          $t7, 0x34($s7)
/* 04C100 8004C550 8FA70088 */  lw          $a3, 0x88($sp)
/* 04C104 8004C554 3C0100FF */  lui         $at, 0xff
/* 04C108 8004C558 000FC840 */  sll         $t9, $t7, 1
/* 04C10C 8004C55C 3421FFFF */  ori         $at, $at, 0xffff
/* 04C110 8004C560 0327C021 */  addu        $t8, $t9, $a3
/* 04C114 8004C564 03017024 */  and         $t6, $t8, $at
/* 04C118 8004C568 8FA5008C */  lw          $a1, 0x8c($sp)
/* 04C11C 8004C56C 3C010A00 */  lui         $at, 0xa00
/* 04C120 8004C570 8FA60080 */  lw          $a2, 0x80($sp)
/* 04C124 8004C574 01C17825 */  or          $t7, $t6, $at
/* 04C128 8004C578 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 04C12C 8004C57C 8FA9005C */  lw          $t1, 0x5c($sp)
/* 04C130 8004C580 00051840 */  sll         $v1, $a1, 1
/* 04C134 8004C584 306EFFFF */  andi        $t6, $v1, 0xffff
/* 04C138 8004C588 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04C13C 8004C58C 0006C400 */  sll         $t8, $a2, 16
/* 04C140 8004C590 030E7825 */  or          $t7, $t8, $t6
/* 04C144 8004C594 00A8082A */  slt         $at, $a1, $t0
/* 04C148 8004C598 AC4F0004 */  sw          $t7, 0x4($v0)
/* 04C14C 8004C59C 1420FFB9 */  bnez        $at, .L8004C484
/* 04C150 8004C5A0 244A0008 */   addiu      $t2, $v0, 0x8
.L8004C5A4:
/* 04C154 8004C5A4 8EF90034 */  lw          $t9, 0x34($s7)
/* 04C158 8004C5A8 8EEF0030 */  lw          $t7, 0x30($s7)
/* 04C15C 8004C5AC 01401025 */  move        $v0, $t2
/* 04C160 8004C5B0 0328C021 */  addu        $t8, $t9, $t0
/* 04C164 8004C5B4 330E000F */  andi        $t6, $t8, 0xf
/* 04C168 8004C5B8 8EF8003C */  lw          $t8, 0x3c($s7)
/* 04C16C 8004C5BC AEEE0034 */  sw          $t6, 0x34($s7)
/* 04C170 8004C5C0 01E8C821 */  addu        $t9, $t7, $t0
/* 04C174 8004C5C4 03097021 */  addu        $t6, $t8, $t1
/* 04C178 8004C5C8 AEF90030 */  sw          $t9, 0x30($s7)
/* 04C17C 8004C5CC 10000061 */  b           .L8004C754
/* 04C180 8004C5D0 AEEE003C */   sw         $t6, 0x3c($s7)
.L8004C5D4:
/* 04C184 8004C5D4 8EE20020 */  lw          $v0, 0x20($s7)
/* 04C188 8004C5D8 8EF9003C */  lw          $t9, 0x3c($s7)
/* 04C18C 8004C5DC 001E7903 */  sra         $t7, $fp, 4
/* 04C190 8004C5E0 000F48C0 */  sll         $t1, $t7, 3
/* 04C194 8004C5E4 012F4821 */  addu        $t1, $t1, $t7
/* 04C198 8004C5E8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04C19C 8004C5EC 0329C021 */  addu        $t8, $t9, $t1
/* 04C1A0 8004C5F0 8C590004 */  lw          $t9, 0x4($v0)
/* 04C1A4 8004C5F4 01E0F025 */  move        $fp, $t7
/* 04C1A8 8004C5F8 030E7823 */  subu        $t7, $t8, $t6
/* 04C1AC 8004C5FC 01F91823 */  subu        $v1, $t7, $t9
/* 04C1B0 8004C600 04610002 */  bgez        $v1, .L8004C60C
/* 04C1B4 8004C604 001E2900 */   sll        $a1, $fp, 4
/* 04C1B8 8004C608 00001825 */  move        $v1, $zero
.L8004C60C:
/* 04C1BC 8004C60C 0061001A */  div         $zero, $v1, $at
/* 04C1C0 8004C610 00001012 */  mflo        $v0
/* 04C1C4 8004C614 00022100 */  sll         $a0, $v0, 4
/* 04C1C8 8004C618 00A63821 */  addu        $a3, $a1, $a2
/* 04C1CC 8004C61C 00E4082A */  slt         $at, $a3, $a0
/* 04C1D0 8004C620 10200002 */  beqz        $at, .L8004C62C
/* 04C1D4 8004C624 01408025 */   move       $s0, $t2
/* 04C1D8 8004C628 00E02025 */  move        $a0, $a3
.L8004C62C:
/* 04C1DC 8004C62C 308E000F */  andi        $t6, $a0, 0xf
/* 04C1E0 8004C630 008E7823 */  subu        $t7, $a0, $t6
/* 04C1E4 8004C634 01E8082A */  slt         $at, $t7, $t0
/* 04C1E8 8004C638 1020002B */  beqz        $at, .L8004C6E8
/* 04C1EC 8004C63C 01233023 */   subu       $a2, $t1, $v1
/* 04C1F0 8004C640 85760000 */  lh          $s6, 0x0($t3)
/* 04C1F4 8004C644 8EF30038 */  lw          $s3, 0x38($s7)
/* 04C1F8 8004C648 240C0001 */  addiu       $t4, $zero, 0x1
/* 04C1FC 8004C64C AFAC007C */  sw          $t4, 0x7c($sp)
/* 04C200 8004C650 AFAB00B4 */  sw          $t3, 0xb4($sp)
/* 04C204 8004C654 AFA9005C */  sw          $t1, 0x5c($sp)
/* 04C208 8004C658 AFA800B8 */  sw          $t0, 0xb8($sp)
/* 04C20C 8004C65C AFA70054 */  sw          $a3, 0x54($sp)
/* 04C210 8004C660 AFA40090 */  sw          $a0, 0x90($sp)
/* 04C214 8004C664 02E09025 */  move        $s2, $s7
/* 04C218 8004C668 00A4A823 */  subu        $s5, $a1, $a0
/* 04C21C 8004C66C 00C08825 */  move        $s1, $a2
/* 04C220 8004C670 0C013070 */  jal         func_8004C1C0
/* 04C224 8004C674 0000A025 */   move       $s4, $zero
/* 04C228 8004C678 8EE30034 */  lw          $v1, 0x34($s7)
/* 04C22C 8004C67C 8FA40090 */  lw          $a0, 0x90($sp)
/* 04C230 8004C680 8FA70054 */  lw          $a3, 0x54($sp)
/* 04C234 8004C684 8FA800B8 */  lw          $t0, 0xb8($sp)
/* 04C238 8004C688 8FA9005C */  lw          $t1, 0x5c($sp)
/* 04C23C 8004C68C 8FAB00B4 */  lw          $t3, 0xb4($sp)
/* 04C240 8004C690 8FAC007C */  lw          $t4, 0x7c($sp)
/* 04C244 8004C694 10600006 */  beqz        $v1, .L8004C6B0
/* 04C248 8004C698 00405025 */   move       $t2, $v0
/* 04C24C 8004C69C 85790000 */  lh          $t9, 0x0($t3)
/* 04C250 8004C6A0 0003C040 */  sll         $t8, $v1, 1
/* 04C254 8004C6A4 03387021 */  addu        $t6, $t9, $t8
/* 04C258 8004C6A8 10000004 */  b           .L8004C6BC
/* 04C25C 8004C6AC A56E0000 */   sh         $t6, 0x0($t3)
.L8004C6B0:
/* 04C260 8004C6B0 856F0000 */  lh          $t7, 0x0($t3)
/* 04C264 8004C6B4 25F90020 */  addiu       $t9, $t7, 0x20
/* 04C268 8004C6B8 A5790000 */  sh          $t9, 0x0($t3)
.L8004C6BC:
/* 04C26C 8004C6BC 8EF80034 */  lw          $t8, 0x34($s7)
/* 04C270 8004C6C0 8EF90030 */  lw          $t9, 0x30($s7)
/* 04C274 8004C6C4 03087021 */  addu        $t6, $t8, $t0
/* 04C278 8004C6C8 31CF000F */  andi        $t7, $t6, 0xf
/* 04C27C 8004C6CC 8EEE003C */  lw          $t6, 0x3c($s7)
/* 04C280 8004C6D0 AEEF0034 */  sw          $t7, 0x34($s7)
/* 04C284 8004C6D4 0328C021 */  addu        $t8, $t9, $t0
/* 04C288 8004C6D8 01C97821 */  addu        $t7, $t6, $t1
/* 04C28C 8004C6DC AEF80030 */  sw          $t8, 0x30($s7)
/* 04C290 8004C6E0 10000007 */  b           .L8004C700
/* 04C294 8004C6E4 AEEF003C */   sw         $t7, 0x3c($s7)
.L8004C6E8:
/* 04C298 8004C6E8 8EF90008 */  lw          $t9, 0x8($s7)
/* 04C29C 8004C6EC AEE00034 */  sw          $zero, 0x34($s7)
/* 04C2A0 8004C6F0 AF200010 */  sw          $zero, 0x10($t9)
/* 04C2A4 8004C6F4 8EF8003C */  lw          $t8, 0x3c($s7)
/* 04C2A8 8004C6F8 03097021 */  addu        $t6, $t8, $t1
/* 04C2AC 8004C6FC AEEE003C */  sw          $t6, 0x3c($s7)
.L8004C700:
/* 04C2B0 8004C700 10800013 */  beqz        $a0, .L8004C750
/* 04C2B4 8004C704 01401025 */   move       $v0, $t2
/* 04C2B8 8004C708 11800005 */  beqz        $t4, .L8004C720
/* 04C2BC 8004C70C AEE00034 */   sw         $zero, 0x34($s7)
/* 04C2C0 8004C710 00E41823 */  subu        $v1, $a3, $a0
/* 04C2C4 8004C714 00037840 */  sll         $t7, $v1, 1
/* 04C2C8 8004C718 10000002 */  b           .L8004C724
/* 04C2CC 8004C71C 01E01825 */   move       $v1, $t7
.L8004C720:
/* 04C2D0 8004C720 00001825 */  move        $v1, $zero
.L8004C724:
/* 04C2D4 8004C724 85790000 */  lh          $t9, 0x0($t3)
/* 04C2D8 8004C728 3C0100FF */  lui         $at, 0xff
/* 04C2DC 8004C72C 3421FFFF */  ori         $at, $at, 0xffff
/* 04C2E0 8004C730 0323C021 */  addu        $t8, $t9, $v1
/* 04C2E4 8004C734 03017024 */  and         $t6, $t8, $at
/* 04C2E8 8004C738 3C010200 */  lui         $at, 0x200
/* 04C2EC 8004C73C 01C17825 */  or          $t7, $t6, $at
/* 04C2F0 8004C740 0004C840 */  sll         $t9, $a0, 1
/* 04C2F4 8004C744 AC590004 */  sw          $t9, 0x4($v0)
/* 04C2F8 8004C748 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04C2FC 8004C74C 254A0008 */  addiu       $t2, $t2, 0x8
.L8004C750:
/* 04C300 8004C750 01401025 */  move        $v0, $t2
.L8004C754:
/* 04C304 8004C754 8FBF004C */  lw          $ra, 0x4c($sp)
/* 04C308 8004C758 8FB00028 */  lw          $s0, 0x28($sp)
/* 04C30C 8004C75C 8FB1002C */  lw          $s1, 0x2c($sp)
/* 04C310 8004C760 8FB20030 */  lw          $s2, 0x30($sp)
/* 04C314 8004C764 8FB30034 */  lw          $s3, 0x34($sp)
/* 04C318 8004C768 8FB40038 */  lw          $s4, 0x38($sp)
/* 04C31C 8004C76C 8FB5003C */  lw          $s5, 0x3c($sp)
/* 04C320 8004C770 8FB60040 */  lw          $s6, 0x40($sp)
/* 04C324 8004C774 8FB70044 */  lw          $s7, 0x44($sp)
/* 04C328 8004C778 8FBE0048 */  lw          $fp, 0x48($sp)
/* 04C32C 8004C77C 03E00008 */  jr          $ra
/* 04C330 8004C780 27BD00B0 */   addiu      $sp, $sp, 0xb0
/* 04C334 8004C784 00000000 */  nop
/* 04C338 8004C788 00000000 */  nop
/* 04C33C 8004C78C 00000000 */  nop
