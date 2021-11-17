.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guNormalize # 0
/* 059B60 80059FB0 C4840000 */  lwc1        $f4, 0x0($a0)
/* 059B64 80059FB4 C4A60000 */  lwc1        $f6, 0x0($a1)
/* 059B68 80059FB8 C4C80000 */  lwc1        $f8, 0x0($a2)
/* 059B6C 80059FBC 46042282 */  mul.s       $f10, $f4, $f4
/* 059B70 80059FC0 3C083F80 */  lui         $t0, 0x3f80
/* 059B74 80059FC4 46063402 */  mul.s       $f16, $f6, $f6
/* 059B78 80059FC8 46105480 */  add.s       $f18, $f10, $f16
/* 059B7C 80059FCC 46084402 */  mul.s       $f16, $f8, $f8
/* 059B80 80059FD0 46128280 */  add.s       $f10, $f16, $f18
/* 059B84 80059FD4 44889000 */  mtc1        $t0, $f18
/* 059B88 80059FD8 46005404 */  sqrt.s      $f16, $f10
/* 059B8C 80059FDC 46109283 */  div.s       $f10, $f18, $f16
/* 059B90 80059FE0 460A2402 */  mul.s       $f16, $f4, $f10
/* 059B94 80059FE4 00000000 */  nop
/* 059B98 80059FE8 460A3482 */  mul.s       $f18, $f6, $f10
/* 059B9C 80059FEC 00000000 */  nop
/* 059BA0 80059FF0 460A4102 */  mul.s       $f4, $f8, $f10
/* 059BA4 80059FF4 E4900000 */  swc1        $f16, 0x0($a0)
/* 059BA8 80059FF8 E4B20000 */  swc1        $f18, 0x0($a1)
/* 059BAC 80059FFC 03E00008 */  jr          $ra
/* 059BB0 8005A000 E4C40000 */   swc1       $f4, 0x0($a2)
/* 059BB4 8005A004 00000000 */  nop
/* 059BB8 8005A008 00000000 */  nop
/* 059BBC 8005A00C 00000000 */  nop
