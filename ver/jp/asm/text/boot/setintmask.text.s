.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel osSetIntMask # 0
/* 0512D0 80051720 400C6000 */  mfc0        $t4, Status
/* 0512D4 80051724 3182FF01 */  andi        $v0, $t4, 0xff01
/* 0512D8 80051728 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 0512DC 8005172C 25083130 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 0512E0 80051730 8D0B0000 */  lw          $t3, 0x0($t0)
/* 0512E4 80051734 2401FFFF */  addiu       $at, $zero, -0x1
/* 0512E8 80051738 01614026 */  xor         $t0, $t3, $at
/* 0512EC 8005173C 3108FF00 */  andi        $t0, $t0, 0xff00
/* 0512F0 80051740 00481025 */  or          $v0, $v0, $t0
/* 0512F4 80051744 3C0AA430 */  lui         $t2, %hi(D_A430000C)
/* 0512F8 80051748 8D4A000C */  lw          $t2, %lo(D_A430000C)($t2)
/* 0512FC 8005174C 11400005 */  beqz        $t2, .L80051764
/* 051300 80051750 000B4C02 */   srl        $t1, $t3, 16
/* 051304 80051754 2401FFFF */  addiu       $at, $zero, -0x1
/* 051308 80051758 01214826 */  xor         $t1, $t1, $at
/* 05130C 8005175C 3129003F */  andi        $t1, $t1, 0x3f
/* 051310 80051760 01495025 */  or          $t2, $t2, $t1
.L80051764:
/* 051314 80051764 000A5400 */  sll         $t2, $t2, 16
/* 051318 80051768 004A1025 */  or          $v0, $v0, $t2
/* 05131C 8005176C 3C01003F */  lui         $at, 0x3f
/* 051320 80051770 00814024 */  and         $t0, $a0, $at
/* 051324 80051774 010B4024 */  and         $t0, $t0, $t3
/* 051328 80051778 000843C2 */  srl         $t0, $t0, 15
/* 05132C 8005177C 3C0A800B */  lui         $t2, %hi(D_800AC960)
/* 051330 80051780 01485021 */  addu        $t2, $t2, $t0
/* 051334 80051784 954AC960 */  lhu         $t2, %lo(D_800AC960)($t2)
/* 051338 80051788 3C01A430 */  lui         $at, %hi(D_A430000C)
/* 05133C 8005178C AC2A000C */  sw          $t2, %lo(D_A430000C)($at)
/* 051340 80051790 3088FF01 */  andi        $t0, $a0, 0xff01
/* 051344 80051794 3169FF00 */  andi        $t1, $t3, 0xff00
/* 051348 80051798 01094024 */  and         $t0, $t0, $t1
/* 05134C 8005179C 3C01FFFF */  lui         $at, (0xFFFF00FF >> 16)
/* 051350 800517A0 342100FF */  ori         $at, $at, (0xFFFF00FF & 0xFFFF)
/* 051354 800517A4 01816024 */  and         $t4, $t4, $at
/* 051358 800517A8 01886025 */  or          $t4, $t4, $t0
/* 05135C 800517AC 408C6000 */  mtc0        $t4, Status
/* 051360 800517B0 00000000 */  nop
/* 051364 800517B4 00000000 */  nop
/* 051368 800517B8 03E00008 */  jr          $ra
/* 05136C 800517BC 00000000 */   nop
