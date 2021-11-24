.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osDisableInt # 0
/* 057BA0 80057FF0 3C0A800A */  lui         $t2, %hi(__OSGlobalIntMask)
/* 057BA4 80057FF4 254ADC80 */  addiu       $t2, $t2, %lo(__OSGlobalIntMask)
/* 057BA8 80057FF8 8D4B0000 */  lw          $t3, 0x0($t2)
/* 057BAC 80057FFC 316BFF00 */  andi        $t3, $t3, 0xff00
/* 057BB0 80058000 40086000 */  mfc0        $t0, Status
/* 057BB4 80058004 2401FFFE */  addiu       $at, $zero, -0x2
/* 057BB8 80058008 01014824 */  and         $t1, $t0, $at
/* 057BBC 8005800C 40896000 */  mtc0        $t1, Status
/* 057BC0 80058010 31020001 */  andi        $v0, $t0, 0x1
/* 057BC4 80058014 8D480000 */  lw          $t0, 0x0($t2)
/* 057BC8 80058018 3108FF00 */  andi        $t0, $t0, 0xff00
/* 057BCC 8005801C 110B000E */  beq         $t0, $t3, .L80058058
/* 057BD0 80058020 3C0A800A */   lui        $t2, %hi(__osRunningThread)
/* 057BD4 80058024 254AF8A0 */  addiu       $t2, $t2, %lo(__osRunningThread)
/* 057BD8 80058028 8D490118 */  lw          $t1, 0x118($t2)
/* 057BDC 8005802C 312AFF00 */  andi        $t2, $t1, 0xff00
/* 057BE0 80058030 01485024 */  and         $t2, $t2, $t0
/* 057BE4 80058034 3C01FFFF */  lui         $at, 0xffff
/* 057BE8 80058038 342100FF */  ori         $at, $at, 0xff
/* 057BEC 8005803C 01214824 */  and         $t1, $t1, $at
/* 057BF0 80058040 012A4825 */  or          $t1, $t1, $t2
/* 057BF4 80058044 2401FFFE */  addiu       $at, $zero, -0x2
/* 057BF8 80058048 01214824 */  and         $t1, $t1, $at
/* 057BFC 8005804C 40896000 */  mtc0        $t1, Status
/* 057C00 80058050 00000000 */  nop
/* 057C04 80058054 00000000 */  nop
.L80058058:
/* 057C08 80058058 03E00008 */  jr          $ra
/* 057C0C 8005805C 00000000 */   nop

glabel __osRestoreInt # 1
/* 057C10 80058060 40086000 */  mfc0        $t0, Status
/* 057C14 80058064 01044025 */  or          $t0, $t0, $a0
/* 057C18 80058068 40886000 */  mtc0        $t0, Status
/* 057C1C 8005806C 00000000 */  nop
/* 057C20 80058070 00000000 */  nop
/* 057C24 80058074 03E00008 */  jr          $ra
/* 057C28 80058078 00000000 */   nop
/* 057C2C 8005807C 00000000 */  nop
