.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050AA0 # 0
/* 050650 80050AA0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 050654 80050AA4 AFA40028 */  sw          $a0, 0x28($sp)
/* 050658 80050AA8 AFA5002C */  sw          $a1, 0x2c($sp)
/* 05065C 80050AAC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 050660 80050AB0 8FAF0028 */  lw          $t7, 0x28($sp)
/* 050664 80050AB4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 050668 80050AB8 AFA60030 */  sw          $a2, 0x30($sp)
/* 05066C 80050ABC AFA70034 */  sw          $a3, 0x34($sp)
/* 050670 80050AC0 AFB00018 */  sw          $s0, 0x18($sp)
/* 050674 80050AC4 ADEE0014 */  sw          $t6, 0x14($t7)
/* 050678 80050AC8 8FB90028 */  lw          $t9, 0x28($sp)
/* 05067C 80050ACC 8FB8003C */  lw          $t8, 0x3c($sp)
/* 050680 80050AD0 AF380004 */  sw          $t8, 0x4($t9)
/* 050684 80050AD4 8FA80028 */  lw          $t0, 0x28($sp)
/* 050688 80050AD8 AD000000 */  sw          $zero, 0x0($t0)
/* 05068C 80050ADC 8FA90028 */  lw          $t1, 0x28($sp)
/* 050690 80050AE0 AD200008 */  sw          $zero, 0x8($t1)
/* 050694 80050AE4 8FAB0028 */  lw          $t3, 0x28($sp)
/* 050698 80050AE8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 05069C 80050AEC AD6A011C */  sw          $t2, 0x11c($t3)
/* 0506A0 80050AF0 8FAC0034 */  lw          $t4, 0x34($sp)
/* 0506A4 80050AF4 8FAD0028 */  lw          $t5, 0x28($sp)
/* 0506A8 80050AF8 01807825 */  move        $t7, $t4
/* 0506AC 80050AFC 000C77C3 */  sra         $t6, $t4, 31
/* 0506B0 80050B00 ADAE0038 */  sw          $t6, 0x38($t5)
/* 0506B4 80050B04 ADAF003C */  sw          $t7, 0x3c($t5)
/* 0506B8 80050B08 8FB80038 */  lw          $t8, 0x38($sp)
/* 0506BC 80050B0C 8FB90028 */  lw          $t9, 0x28($sp)
/* 0506C0 80050B10 3C0C8005 */  lui         $t4, %hi(D_80057F20)
/* 0506C4 80050B14 03004825 */  move        $t1, $t8
/* 0506C8 80050B18 2D210010 */  sltiu       $at, $t1, 0x10
/* 0506CC 80050B1C 001847C3 */  sra         $t0, $t8, 31
/* 0506D0 80050B20 01015023 */  subu        $t2, $t0, $at
/* 0506D4 80050B24 252BFFF0 */  addiu       $t3, $t1, -0x10
/* 0506D8 80050B28 AF2B00F4 */  sw          $t3, 0xf4($t9)
/* 0506DC 80050B2C AF2A00F0 */  sw          $t2, 0xf0($t9)
/* 0506E0 80050B30 8FAD0028 */  lw          $t5, 0x28($sp)
/* 0506E4 80050B34 258C7F20 */  addiu       $t4, $t4, %lo(D_80057F20)
/* 0506E8 80050B38 01807825 */  move        $t7, $t4
/* 0506EC 80050B3C 000C77C3 */  sra         $t6, $t4, 31
/* 0506F0 80050B40 ADAE0100 */  sw          $t6, 0x100($t5)
/* 0506F4 80050B44 ADAF0104 */  sw          $t7, 0x104($t5)
/* 0506F8 80050B48 8FA90028 */  lw          $t1, 0x28($sp)
/* 0506FC 80050B4C 3C18003F */  lui         $t8, 0x3f
/* 050700 80050B50 3718FF01 */  ori         $t8, $t8, 0xff01
/* 050704 80050B54 AFB80020 */  sw          $t8, 0x20($sp)
/* 050708 80050B58 3408FF03 */  ori         $t0, $zero, 0xff03
/* 05070C 80050B5C AD280118 */  sw          $t0, 0x118($t1)
/* 050710 80050B60 8FAA0020 */  lw          $t2, 0x20($sp)
/* 050714 80050B64 8FAC0028 */  lw          $t4, 0x28($sp)
/* 050718 80050B68 3C01003F */  lui         $at, 0x3f
/* 05071C 80050B6C 01415824 */  and         $t3, $t2, $at
/* 050720 80050B70 000BCC02 */  srl         $t9, $t3, 16
/* 050724 80050B74 AD990128 */  sw          $t9, 0x128($t4)
/* 050728 80050B78 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05072C 80050B7C 3C0E0100 */  lui         $t6, 0x100
/* 050730 80050B80 35CE0800 */  ori         $t6, $t6, 0x800
/* 050734 80050B84 ADEE012C */  sw          $t6, 0x12c($t7)
/* 050738 80050B88 8FAD0028 */  lw          $t5, 0x28($sp)
/* 05073C 80050B8C 24180001 */  addiu       $t8, $zero, 0x1
/* 050740 80050B90 ADA00018 */  sw          $zero, 0x18($t5)
/* 050744 80050B94 8FA80028 */  lw          $t0, 0x28($sp)
/* 050748 80050B98 A5180010 */  sh          $t8, 0x10($t0)
/* 05074C 80050B9C 8FA90028 */  lw          $t1, 0x28($sp)
/* 050750 80050BA0 0C015FFC */  jal         func_80057FF0
/* 050754 80050BA4 A5200012 */   sh         $zero, 0x12($t1)
/* 050758 80050BA8 3C0A800A */  lui         $t2, %hi(D_8009F89C)
/* 05075C 80050BAC 8D4AF89C */  lw          $t2, %lo(D_8009F89C)($t2)
/* 050760 80050BB0 8FAB0028 */  lw          $t3, 0x28($sp)
/* 050764 80050BB4 00408025 */  move        $s0, $v0
/* 050768 80050BB8 3C01800A */  lui         $at, 0x800a
/* 05076C 80050BBC AD6A000C */  sw          $t2, 0xc($t3)
/* 050770 80050BC0 8FB90028 */  lw          $t9, 0x28($sp)
/* 050774 80050BC4 02002025 */  move        $a0, $s0
/* 050778 80050BC8 0C016018 */  jal         func_80058060
/* 05077C 80050BCC AC39F89C */   sw         $t9, -0x764($at)
/* 050780 80050BD0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 050784 80050BD4 8FB00018 */  lw          $s0, 0x18($sp)
/* 050788 80050BD8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05078C 80050BDC 03E00008 */  jr          $ra
/* 050790 80050BE0 00000000 */   nop
/* 050794 80050BE4 00000000 */  nop
/* 050798 80050BE8 00000000 */  nop
/* 05079C 80050BEC 00000000 */  nop
