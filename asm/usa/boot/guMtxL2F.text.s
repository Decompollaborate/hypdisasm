.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guMtxL2F # 0
/* 057DF0 80058240 3C013780 */  lui         $at, 0x3780
/* 057DF4 80058244 44810000 */  mtc1        $at, $f0
/* 057DF8 80058248 3C19FFFF */  lui         $t9, 0xffff
/* 057DFC 8005824C 24B80020 */  addiu       $t8, $a1, 0x20
.L80058250:
/* 057E00 80058250 8CA80000 */  lw          $t0, 0x0($a1)
/* 057E04 80058254 8CA90020 */  lw          $t1, 0x20($a1)
/* 057E08 80058258 24A50004 */  addiu       $a1, $a1, 0x4
/* 057E0C 8005825C 01195024 */  and         $t2, $t0, $t9
/* 057E10 80058260 00095C02 */  srl         $t3, $t1, 16
/* 057E14 80058264 014B6025 */  or          $t4, $t2, $t3
/* 057E18 80058268 448C2000 */  mtc1        $t4, $f4
/* 057E1C 8005826C 00086C00 */  sll         $t5, $t0, 16
/* 057E20 80058270 312EFFFF */  andi        $t6, $t1, 0xffff
/* 057E24 80058274 01AE7825 */  or          $t7, $t5, $t6
/* 057E28 80058278 468021A0 */  cvt.s.w     $f6, $f4
/* 057E2C 8005827C 448F5000 */  mtc1        $t7, $f10
/* 057E30 80058280 24840008 */  addiu       $a0, $a0, 0x8
/* 057E34 80058284 46805420 */  cvt.s.w     $f16, $f10
/* 057E38 80058288 46003202 */  mul.s       $f8, $f6, $f0
/* 057E3C 8005828C 00000000 */  nop
/* 057E40 80058290 46008482 */  mul.s       $f18, $f16, $f0
/* 057E44 80058294 E488FFF8 */  swc1        $f8, -0x8($a0)
/* 057E48 80058298 14B8FFED */  bne         $a1, $t8, .L80058250
/* 057E4C 8005829C E492FFFC */   swc1       $f18, -0x4($a0)
/* 057E50 800582A0 03E00008 */  jr          $ra
/* 057E54 800582A4 00000000 */   nop
/* 057E58 800582A8 00000000 */  nop
/* 057E5C 800582AC 00000000 */  nop
