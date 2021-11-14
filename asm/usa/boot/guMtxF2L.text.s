.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guMtxF2L # 0
/* 057D80 800581D0 3C014780 */  lui         $at, 0x4780
/* 057D84 800581D4 44810000 */  mtc1        $at, $f0
/* 057D88 800581D8 3C19FFFF */  lui         $t9, 0xffff
/* 057D8C 800581DC 24B80020 */  addiu       $t8, $a1, 0x20
.L800581E0:
/* 057D90 800581E0 C4840000 */  lwc1        $f4, 0x0($a0)
/* 057D94 800581E4 C48A0004 */  lwc1        $f10, 0x4($a0)
/* 057D98 800581E8 24A50004 */  addiu       $a1, $a1, 0x4
/* 057D9C 800581EC 46002182 */  mul.s       $f6, $f4, $f0
/* 057DA0 800581F0 24840008 */  addiu       $a0, $a0, 0x8
/* 057DA4 800581F4 46005402 */  mul.s       $f16, $f10, $f0
/* 057DA8 800581F8 4600320D */  trunc.w.s   $f8, $f6
/* 057DAC 800581FC 4600848D */  trunc.w.s   $f18, $f16
/* 057DB0 80058200 44084000 */  mfc1        $t0, $f8
/* 057DB4 80058204 44099000 */  mfc1        $t1, $f18
/* 057DB8 80058208 01195024 */  and         $t2, $t0, $t9
/* 057DBC 8005820C 00086C00 */  sll         $t5, $t0, 16
/* 057DC0 80058210 00095C02 */  srl         $t3, $t1, 16
/* 057DC4 80058214 312EFFFF */  andi        $t6, $t1, 0xffff
/* 057DC8 80058218 014B6025 */  or          $t4, $t2, $t3
/* 057DCC 8005821C 01AE7825 */  or          $t7, $t5, $t6
/* 057DD0 80058220 ACACFFFC */  sw          $t4, -0x4($a1)
/* 057DD4 80058224 14B8FFEE */  bne         $a1, $t8, .L800581E0
/* 057DD8 80058228 ACAF001C */   sw         $t7, 0x1c($a1)
/* 057DDC 8005822C 03E00008 */  jr          $ra
/* 057DE0 80058230 00000000 */   nop
/* 057DE4 80058234 00000000 */  nop
/* 057DE8 80058238 00000000 */  nop
/* 057DEC 8005823C 00000000 */  nop
