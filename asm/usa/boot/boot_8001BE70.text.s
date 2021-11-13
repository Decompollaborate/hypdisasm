.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001BE70 # 0
/* 01BA20 8001BE70 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01BA24 8001BE74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01BA28 8001BE78 AFB00018 */  sw          $s0, 0x18($sp)
/* 01BA2C 8001BE7C 00A03825 */  move        $a3, $a1
/* 01BA30 8001BE80 AC850000 */  sw          $a1, 0x0($a0)
/* 01BA34 8001BE84 00808025 */  move        $s0, $a0
/* 01BA38 8001BE88 00052880 */  sll         $a1, $a1, 2
/* 01BA3C 8001BE8C 00A72823 */  subu        $a1, $a1, $a3
/* 01BA40 8001BE90 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01BA44 8001BE94 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01BA48 8001BE98 00052880 */  sll         $a1, $a1, 2
/* 01BA4C 8001BE9C AFA70024 */  sw          $a3, 0x24($sp)
/* 01BA50 8001BEA0 0C00E03D */  jal         func_800380F4
/* 01BA54 8001BEA4 24060013 */   addiu      $a2, $zero, 0x13
/* 01BA58 8001BEA8 8FA70024 */  lw          $a3, 0x24($sp)
/* 01BA5C 8001BEAC AE020004 */  sw          $v0, 0x4($s0)
/* 01BA60 8001BEB0 00002025 */  move        $a0, $zero
/* 01BA64 8001BEB4 10E00027 */  beq         $a3, $zero, .L8001BF54
/* 01BA68 8001BEB8 00401825 */   move       $v1, $v0
/* 01BA6C 8001BEBC 30E20003 */  andi        $v0, $a3, 0x3
/* 01BA70 8001BEC0 1040000A */  beq         $v0, $zero, .L8001BEEC
/* 01BA74 8001BEC4 00402825 */   move       $a1, $v0
.L8001BEC8:
/* 01BA78 8001BEC8 246EFFF4 */  addiu       $t6, $v1, -0xc
/* 01BA7C 8001BECC 2462000C */  addiu       $v0, $v1, 0xc
/* 01BA80 8001BED0 AC620008 */  sw          $v0, 0x8($v1)
/* 01BA84 8001BED4 AC6E0004 */  sw          $t6, 0x4($v1)
/* 01BA88 8001BED8 AC600000 */  sw          $zero, 0x0($v1)
/* 01BA8C 8001BEDC 24840001 */  addiu       $a0, $a0, 0x1
/* 01BA90 8001BEE0 14A4FFF9 */  bne         $a1, $a0, .L8001BEC8
/* 01BA94 8001BEE4 00401825 */   move       $v1, $v0
/* 01BA98 8001BEE8 1087001A */  beq         $a0, $a3, .L8001BF54
.L8001BEEC:
/* 01BA9C 8001BEEC 2462000C */   addiu      $v0, $v1, 0xc
/* 01BAA0 8001BEF0 246FFFF4 */  addiu       $t7, $v1, -0xc
/* 01BAA4 8001BEF4 AC620008 */  sw          $v0, 0x8($v1)
/* 01BAA8 8001BEF8 AC600000 */  sw          $zero, 0x0($v1)
/* 01BAAC 8001BEFC AC6F0004 */  sw          $t7, 0x4($v1)
/* 01BAB0 8001BF00 2458FFF4 */  addiu       $t8, $v0, -0xc
/* 01BAB4 8001BF04 00401825 */  move        $v1, $v0
/* 01BAB8 8001BF08 2442000C */  addiu       $v0, $v0, 0xc
/* 01BABC 8001BF0C AC58FFF8 */  sw          $t8, -0x8($v0)
/* 01BAC0 8001BF10 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 01BAC4 8001BF14 AC620008 */  sw          $v0, 0x8($v1)
/* 01BAC8 8001BF18 2459FFF4 */  addiu       $t9, $v0, -0xc
/* 01BACC 8001BF1C 00401825 */  move        $v1, $v0
/* 01BAD0 8001BF20 2442000C */  addiu       $v0, $v0, 0xc
/* 01BAD4 8001BF24 AC59FFF8 */  sw          $t9, -0x8($v0)
/* 01BAD8 8001BF28 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 01BADC 8001BF2C AC620008 */  sw          $v0, 0x8($v1)
/* 01BAE0 8001BF30 2448FFF4 */  addiu       $t0, $v0, -0xc
/* 01BAE4 8001BF34 00401825 */  move        $v1, $v0
/* 01BAE8 8001BF38 2442000C */  addiu       $v0, $v0, 0xc
/* 01BAEC 8001BF3C AC48FFF8 */  sw          $t0, -0x8($v0)
/* 01BAF0 8001BF40 AC40FFF4 */  sw          $zero, -0xc($v0)
/* 01BAF4 8001BF44 AC620008 */  sw          $v0, 0x8($v1)
/* 01BAF8 8001BF48 24840004 */  addiu       $a0, $a0, 0x4
/* 01BAFC 8001BF4C 1487FFE7 */  bne         $a0, $a3, .L8001BEEC
/* 01BB00 8001BF50 00401825 */   move       $v1, $v0
.L8001BF54:
/* 01BB04 8001BF54 AC60FFFC */  sw          $zero, -0x4($v1)
/* 01BB08 8001BF58 8E090004 */  lw          $t1, 0x4($s0)
/* 01BB0C 8001BF5C 2463FFF4 */  addiu       $v1, $v1, -0xc
/* 01BB10 8001BF60 AD200004 */  sw          $zero, 0x4($t1)
/* 01BB14 8001BF64 8E0A0004 */  lw          $t2, 0x4($s0)
/* 01BB18 8001BF68 AE000008 */  sw          $zero, 0x8($s0)
/* 01BB1C 8001BF6C AE00000C */  sw          $zero, 0xc($s0)
/* 01BB20 8001BF70 AE000014 */  sw          $zero, 0x14($s0)
/* 01BB24 8001BF74 AE0A0010 */  sw          $t2, 0x10($s0)
/* 01BB28 8001BF78 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01BB2C 8001BF7C 8FB00018 */  lw          $s0, 0x18($sp)
/* 01BB30 8001BF80 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01BB34 8001BF84 03E00008 */  jr          $ra
/* 01BB38 8001BF88 00000000 */   nop

glabel func_8001BF8C # 1
/* 01BB3C 8001BF8C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BB40 8001BF90 00803025 */  move        $a2, $a0
/* 01BB44 8001BF94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BB48 8001BF98 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 01BB4C 8001BF9C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 01BB50 8001BFA0 0C00E152 */  jal         func_80038548
/* 01BB54 8001BFA4 8CC50004 */   lw         $a1, 0x4($a2)
/* 01BB58 8001BFA8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BB5C 8001BFAC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BB60 8001BFB0 03E00008 */  jr          $ra
/* 01BB64 8001BFB4 00000000 */   nop

glabel func_8001BFB8 # 2
/* 01BB68 8001BFB8 8C820010 */  lw          $v0, 0x10($a0)
/* 01BB6C 8001BFBC 00A03025 */  move        $a2, $a1
/* 01BB70 8001BFC0 8C430008 */  lw          $v1, 0x8($v0)
/* 01BB74 8001BFC4 50600003 */  beql        $v1, $zero, .L8001BFD4
/* 01BB78 8001BFC8 8C85000C */   lw         $a1, 0xc($a0)
/* 01BB7C 8001BFCC AC600004 */  sw          $zero, 0x4($v1)
/* 01BB80 8001BFD0 8C85000C */  lw          $a1, 0xc($a0)
.L8001BFD4:
/* 01BB84 8001BFD4 AC830010 */  sw          $v1, 0x10($a0)
/* 01BB88 8001BFD8 AC400008 */  sw          $zero, 0x8($v0)
/* 01BB8C 8001BFDC AC460000 */  sw          $a2, 0x0($v0)
/* 01BB90 8001BFE0 10A00002 */  beq         $a1, $zero, .L8001BFEC
/* 01BB94 8001BFE4 AC450004 */   sw         $a1, 0x4($v0)
/* 01BB98 8001BFE8 ACA20008 */  sw          $v0, 0x8($a1)
.L8001BFEC:
/* 01BB9C 8001BFEC 8C8E0008 */  lw          $t6, 0x8($a0)
/* 01BBA0 8001BFF0 AC82000C */  sw          $v0, 0xc($a0)
/* 01BBA4 8001BFF4 15C00002 */  bne         $t6, $zero, .L8001C000
/* 01BBA8 8001BFF8 00000000 */   nop
/* 01BBAC 8001BFFC AC820008 */  sw          $v0, 0x8($a0)
.L8001C000:
/* 01BBB0 8001C000 03E00008 */  jr          $ra
/* 01BBB4 8001C004 00000000 */   nop

glabel func_8001C008 # 3
/* 01BBB8 8001C008 8C830008 */  lw          $v1, 0x8($a0)
/* 01BBBC 8001C00C 00001025 */  move        $v0, $zero
/* 01BBC0 8001C010 14600003 */  bne         $v1, $zero, .L8001C020
/* 01BBC4 8001C014 AC830014 */   sw         $v1, 0x14($a0)
/* 01BBC8 8001C018 03E00008 */  jr          $ra
/* 01BBCC 8001C01C ACA00000 */   sw         $zero, 0x0($a1)
.L8001C020:
/* 01BBD0 8001C020 8C6E0000 */  lw          $t6, 0x0($v1)
/* 01BBD4 8001C024 24020001 */  addiu       $v0, $zero, 0x1
/* 01BBD8 8001C028 ACAE0000 */  sw          $t6, 0x0($a1)
/* 01BBDC 8001C02C 03E00008 */  jr          $ra
/* 01BBE0 8001C030 00000000 */   nop

glabel func_8001C034 # 4
/* 01BBE4 8001C034 8C820014 */  lw          $v0, 0x14($a0)
/* 01BBE8 8001C038 5440000C */  bnel        $v0, $zero, .L8001C06C
/* 01BBEC 8001C03C 8C430008 */   lw         $v1, 0x8($v0)
/* 01BBF0 8001C040 8C830008 */  lw          $v1, 0x8($a0)
/* 01BBF4 8001C044 00001025 */  move        $v0, $zero
/* 01BBF8 8001C048 14600003 */  bne         $v1, $zero, .L8001C058
/* 01BBFC 8001C04C AC830014 */   sw         $v1, 0x14($a0)
/* 01BC00 8001C050 03E00008 */  jr          $ra
/* 01BC04 8001C054 ACA00000 */   sw         $zero, 0x0($a1)
.L8001C058:
/* 01BC08 8001C058 8C6E0000 */  lw          $t6, 0x0($v1)
/* 01BC0C 8001C05C 24020001 */  addiu       $v0, $zero, 0x1
/* 01BC10 8001C060 03E00008 */  jr          $ra
/* 01BC14 8001C064 ACAE0000 */   sw         $t6, 0x0($a1)
/* 01BC18 8001C068 8C430008 */  lw          $v1, 0x8($v0)
.L8001C06C:
/* 01BC1C 8001C06C 00001025 */  move        $v0, $zero
/* 01BC20 8001C070 14600003 */  bne         $v1, $zero, .L8001C080
/* 01BC24 8001C074 AC830014 */   sw         $v1, 0x14($a0)
/* 01BC28 8001C078 03E00008 */  jr          $ra
/* 01BC2C 8001C07C ACA00000 */   sw         $zero, 0x0($a1)
.L8001C080:
/* 01BC30 8001C080 8C6F0000 */  lw          $t7, 0x0($v1)
/* 01BC34 8001C084 24020001 */  addiu       $v0, $zero, 0x1
/* 01BC38 8001C088 ACAF0000 */  sw          $t7, 0x0($a1)
/* 01BC3C 8001C08C 03E00008 */  jr          $ra
/* 01BC40 8001C090 00000000 */   nop

glabel func_8001C094 # 5
/* 01BC44 8001C094 8C830014 */  lw          $v1, 0x14($a0)
/* 01BC48 8001C098 8C620004 */  lw          $v0, 0x4($v1)
/* 01BC4C 8001C09C 8C650008 */  lw          $a1, 0x8($v1)
/* 01BC50 8001C0A0 50400004 */  beql        $v0, $zero, .L8001C0B4
/* 01BC54 8001C0A4 AC850008 */   sw         $a1, 0x8($a0)
/* 01BC58 8001C0A8 10000002 */  b           .L8001C0B4
/* 01BC5C 8001C0AC AC450008 */   sw         $a1, 0x8($v0)
/* 01BC60 8001C0B0 AC850008 */  sw          $a1, 0x8($a0)
.L8001C0B4:
/* 01BC64 8001C0B4 50A00004 */  beql        $a1, $zero, .L8001C0C8
/* 01BC68 8001C0B8 AC82000C */   sw         $v0, 0xc($a0)
/* 01BC6C 8001C0BC 10000002 */  b           .L8001C0C8
/* 01BC70 8001C0C0 ACA20004 */   sw         $v0, 0x4($a1)
/* 01BC74 8001C0C4 AC82000C */  sw          $v0, 0xc($a0)
.L8001C0C8:
/* 01BC78 8001C0C8 8C860010 */  lw          $a2, 0x10($a0)
/* 01BC7C 8001C0CC AC820014 */  sw          $v0, 0x14($a0)
/* 01BC80 8001C0D0 8C650000 */  lw          $a1, 0x0($v1)
/* 01BC84 8001C0D4 AC600004 */  sw          $zero, 0x4($v1)
/* 01BC88 8001C0D8 10C00002 */  beq         $a2, $zero, .L8001C0E4
/* 01BC8C 8001C0DC AC660008 */   sw         $a2, 0x8($v1)
/* 01BC90 8001C0E0 ACC30004 */  sw          $v1, 0x4($a2)
.L8001C0E4:
/* 01BC94 8001C0E4 AC830010 */  sw          $v1, 0x10($a0)
/* 01BC98 8001C0E8 03E00008 */  jr          $ra
/* 01BC9C 8001C0EC 00A01025 */   move       $v0, $a1

glabel func_8001C0F0 # 6
/* 01BCA0 8001C0F0 8C820014 */  lw          $v0, 0x14($a0)
/* 01BCA4 8001C0F4 03E00008 */  jr          $ra
/* 01BCA8 8001C0F8 AC450000 */   sw         $a1, 0x0($v0)

glabel func_8001C0FC # 7
/* 01BCAC 8001C0FC 8C820010 */  lw          $v0, 0x10($a0)
/* 01BCB0 8001C100 0002702B */  sltu        $t6, $zero, $v0
/* 01BCB4 8001C104 03E00008 */  jr          $ra
/* 01BCB8 8001C108 01C01025 */   move       $v0, $t6
/* 01BCBC 8001C10C 00000000 */  nop
