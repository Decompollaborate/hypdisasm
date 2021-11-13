.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005C400 # 0
/* 05BFB0 8005C400 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 05BFB4 8005C404 AFB30030 */  sw          $s3, 0x30($sp)
/* 05BFB8 8005C408 AFB00024 */  sw          $s0, 0x24($sp)
/* 05BFBC 8005C40C 00808025 */  move        $s0, $a0
/* 05BFC0 8005C410 00C09825 */  move        $s3, $a2
/* 05BFC4 8005C414 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05BFC8 8005C418 AFB50038 */  sw          $s5, 0x38($sp)
/* 05BFCC 8005C41C AFB40034 */  sw          $s4, 0x34($sp)
/* 05BFD0 8005C420 AFB2002C */  sw          $s2, 0x2c($sp)
/* 05BFD4 8005C424 AFB10028 */  sw          $s1, 0x28($sp)
/* 05BFD8 8005C428 AFA500A4 */  sw          $a1, 0xa4($sp)
/* 05BFDC 8005C42C AFA700AC */  sw          $a3, 0xac($sp)
/* 05BFE0 8005C430 14C00003 */  bne         $a2, $zero, .L8005C440
/* 05BFE4 8005C434 00005025 */   move       $t2, $zero
/* 05BFE8 8005C438 100000FD */  b           .L8005C830
/* 05BFEC 8005C43C 8FA200B0 */   lw         $v0, 0xb0($sp)
.L8005C440:
/* 05BFF0 8005C440 8E0E002C */  lw          $t6, 0x2c($s0)
/* 05BFF4 8005C444 3C0100FF */  lui         $at, 0xff
/* 05BFF8 8005C448 3421FFFF */  ori         $at, $at, 0xffff
/* 05BFFC 8005C44C 8FA600B0 */  lw          $a2, 0xb0($sp)
/* 05C000 8005C450 01C17824 */  and         $t7, $t6, $at
/* 05C004 8005C454 3C010B00 */  lui         $at, 0xb00
/* 05C008 8005C458 01E1C025 */  or          $t8, $t7, $at
/* 05C00C 8005C45C ACD80000 */  sw          $t8, 0x0($a2)
/* 05C010 8005C460 8E190028 */  lw          $t9, 0x28($s0)
/* 05C014 8005C464 3C011FFF */  lui         $at, 0x1fff
/* 05C018 8005C468 3421FFFF */  ori         $at, $at, 0xffff
/* 05C01C 8005C46C 8F2C0010 */  lw          $t4, 0x10($t9)
/* 05C020 8005C470 02604025 */  move        $t0, $s3
/* 05C024 8005C474 24190010 */  addiu       $t9, $zero, 0x10
/* 05C028 8005C478 258D0008 */  addiu       $t5, $t4, 0x8
/* 05C02C 8005C47C 01A17024 */  and         $t6, $t5, $at
/* 05C030 8005C480 ACCE0004 */  sw          $t6, 0x4($a2)
/* 05C034 8005C484 8E030038 */  lw          $v1, 0x38($s0)
/* 05C038 8005C488 8E040020 */  lw          $a0, 0x20($s0)
/* 05C03C 8005C48C 24D50008 */  addiu       $s5, $a2, 0x8
/* 05C040 8005C490 00737821 */  addu        $t7, $v1, $s3
/* 05C044 8005C494 008F282B */  sltu        $a1, $a0, $t7
/* 05C048 8005C498 10A00004 */  beq         $a1, $zero, .L8005C4AC
/* 05C04C 8005C49C 00000000 */   nop
/* 05C050 8005C4A0 8E050024 */  lw          $a1, 0x24($s0)
/* 05C054 8005C4A4 0005C02B */  sltu        $t8, $zero, $a1
/* 05C058 8005C4A8 03002825 */  move        $a1, $t8
.L8005C4AC:
/* 05C05C 8005C4AC 10A00003 */  beq         $a1, $zero, .L8005C4BC
/* 05C060 8005C4B0 24010009 */   addiu      $at, $zero, 0x9
/* 05C064 8005C4B4 10000001 */  b           .L8005C4BC
/* 05C068 8005C4B8 00834023 */   subu       $t0, $a0, $v1
.L8005C4BC:
/* 05C06C 8005C4BC 8E03003C */  lw          $v1, 0x3c($s0)
/* 05C070 8005C4C0 00002025 */  move        $a0, $zero
/* 05C074 8005C4C4 8FAD00A4 */  lw          $t5, 0xa4($sp)
/* 05C078 8005C4C8 10600003 */  beq         $v1, $zero, .L8005C4D8
/* 05C07C 8005C4CC 00000000 */   nop
/* 05C080 8005C4D0 10000001 */  b           .L8005C4D8
/* 05C084 8005C4D4 03232023 */   subu       $a0, $t9, $v1
.L8005C4D8:
/* 05C088 8005C4D8 01043023 */  subu        $a2, $t0, $a0
/* 05C08C 8005C4DC 04C10002 */  bgez        $a2, .L8005C4E8
/* 05C090 8005C4E0 00000000 */   nop
/* 05C094 8005C4E4 00003025 */  move        $a2, $zero
.L8005C4E8:
/* 05C098 8005C4E8 10A0007A */  beq         $a1, $zero, .L8005C6D4
/* 05C09C 8005C4EC 24D1000F */   addiu      $s1, $a2, 0xf
/* 05C0A0 8005C4F0 85AE0000 */  lh          $t6, 0x0($t5)
/* 05C0A4 8005C4F4 24D1000F */  addiu       $s1, $a2, 0xf
/* 05C0A8 8005C4F8 00116103 */  sra         $t4, $s1, 4
/* 05C0AC 8005C4FC AFA00014 */  sw          $zero, 0x14($sp)
/* 05C0B0 8005C500 AFAE0010 */  sw          $t6, 0x10($sp)
/* 05C0B4 8005C504 8E0F0040 */  lw          $t7, 0x40($s0)
/* 05C0B8 8005C508 000CA0C0 */  sll         $s4, $t4, 3
/* 05C0BC 8005C50C 028CA021 */  addu        $s4, $s4, $t4
/* 05C0C0 8005C510 02803825 */  move        $a3, $s4
/* 05C0C4 8005C514 AFA8007C */  sw          $t0, 0x7c($sp)
/* 05C0C8 8005C518 01808825 */  move        $s1, $t4
/* 05C0CC 8005C51C 02A02025 */  move        $a0, $s5
/* 05C0D0 8005C520 02002825 */  move        $a1, $s0
/* 05C0D4 8005C524 0C017376 */  jal         func_8005CDD8
/* 05C0D8 8005C528 AFAF0018 */   sw         $t7, 0x18($sp)
/* 05C0DC 8005C52C 8E03003C */  lw          $v1, 0x3c($s0)
/* 05C0E0 8005C530 8FA8007C */  lw          $t0, 0x7c($sp)
/* 05C0E4 8005C534 8FAB00A4 */  lw          $t3, 0xa4($sp)
/* 05C0E8 8005C538 10600006 */  beq         $v1, $zero, .L8005C554
/* 05C0EC 8005C53C 0040A825 */   move       $s5, $v0
/* 05C0F0 8005C540 85780000 */  lh          $t8, 0x0($t3)
/* 05C0F4 8005C544 0003C840 */  sll         $t9, $v1, 1
/* 05C0F8 8005C548 03196021 */  addu        $t4, $t8, $t9
/* 05C0FC 8005C54C 10000004 */  b           .L8005C560
/* 05C100 8005C550 A56C0000 */   sh         $t4, 0x0($t3)
.L8005C554:
/* 05C104 8005C554 856D0000 */  lh          $t5, 0x0($t3)
/* 05C108 8005C558 25AE0020 */  addiu       $t6, $t5, 0x20
/* 05C10C 8005C55C A56E0000 */  sh          $t6, 0x0($t3)
.L8005C560:
/* 05C110 8005C560 8E02001C */  lw          $v0, 0x1c($s0)
/* 05C114 8005C564 240A0009 */  addiu       $t2, $zero, 0x9
/* 05C118 8005C568 8E180028 */  lw          $t8, 0x28($s0)
/* 05C11C 8005C56C 00026102 */  srl         $t4, $v0, 4
/* 05C120 8005C570 018A0019 */  multu       $t4, $t2
/* 05C124 8005C574 304F000F */  andi        $t7, $v0, 0xf
/* 05C128 8005C578 AE0F003C */  sw          $t7, 0x3c($s0)
/* 05C12C 8005C57C 8F190000 */  lw          $t9, 0x0($t8)
/* 05C130 8005C580 0113082A */  slt         $at, $t0, $s3
/* 05C134 8005C584 AE020038 */  sw          $v0, 0x38($s0)
/* 05C138 8005C588 00081840 */  sll         $v1, $t0, 1
/* 05C13C 8005C58C 00006812 */  mflo        $t5
/* 05C140 8005C590 032D7021 */  addu        $t6, $t9, $t5
/* 05C144 8005C594 25CF0009 */  addiu       $t7, $t6, 0x9
/* 05C148 8005C598 AE0F0044 */  sw          $t7, 0x44($s0)
/* 05C14C 8005C59C 10200041 */  beq         $at, $zero, .L8005C6A4
/* 05C150 8005C5A0 85690000 */   lh         $t1, 0x0($t3)
.L8005C5A4:
/* 05C154 8005C5A4 26380001 */  addiu       $t8, $s1, 0x1
/* 05C158 8005C5A8 00186140 */  sll         $t4, $t8, 5
/* 05C15C 8005C5AC 8E020024 */  lw          $v0, 0x24($s0)
/* 05C160 8005C5B0 01899021 */  addu        $s2, $t4, $t1
/* 05C164 8005C5B4 2401FFE0 */  addiu       $at, $zero, -0x20
/* 05C168 8005C5B8 0241C824 */  and         $t9, $s2, $at
/* 05C16C 8005C5BC 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C170 8005C5C0 240A0009 */  addiu       $t2, $zero, 0x9
/* 05C174 8005C5C4 02689823 */  subu        $s3, $s3, $t0
/* 05C178 8005C5C8 03209025 */  move        $s2, $t9
/* 05C17C 8005C5CC 10410004 */  beq         $v0, $at, .L8005C5E0
/* 05C180 8005C5D0 01234821 */   addu       $t1, $t1, $v1
/* 05C184 8005C5D4 10400002 */  beq         $v0, $zero, .L8005C5E0
/* 05C188 8005C5D8 244DFFFF */   addiu      $t5, $v0, -0x1
/* 05C18C 8005C5DC AE0D0024 */  sw          $t5, 0x24($s0)
.L8005C5E0:
/* 05C190 8005C5E0 8E0E0020 */  lw          $t6, 0x20($s0)
/* 05C194 8005C5E4 8E0F001C */  lw          $t7, 0x1c($s0)
/* 05C198 8005C5E8 01CF1023 */  subu        $v0, $t6, $t7
/* 05C19C 8005C5EC 0262082B */  sltu        $at, $s3, $v0
/* 05C1A0 8005C5F0 10200003 */  beq         $at, $zero, .L8005C600
/* 05C1A4 8005C5F4 00404025 */   move       $t0, $v0
/* 05C1A8 8005C5F8 10000001 */  b           .L8005C600
/* 05C1AC 8005C5FC 02604025 */   move       $t0, $s3
.L8005C600:
/* 05C1B0 8005C600 8E18003C */  lw          $t8, 0x3c($s0)
/* 05C1B4 8005C604 01183021 */  addu        $a2, $t0, $t8
/* 05C1B8 8005C608 24C6FFF0 */  addiu       $a2, $a2, -0x10
/* 05C1BC 8005C60C 04C30003 */  bgezl       $a2, .L8005C61C
/* 05C1C0 8005C610 24D1000F */   addiu      $s1, $a2, 0xf
/* 05C1C4 8005C614 00003025 */  move        $a2, $zero
/* 05C1C8 8005C618 24D1000F */  addiu       $s1, $a2, 0xf
.L8005C61C:
/* 05C1CC 8005C61C 00116103 */  sra         $t4, $s1, 4
/* 05C1D0 8005C620 018A0019 */  multu       $t4, $t2
/* 05C1D4 8005C624 AFB20010 */  sw          $s2, 0x10($sp)
/* 05C1D8 8005C628 AFA00014 */  sw          $zero, 0x14($sp)
/* 05C1DC 8005C62C 8E190040 */  lw          $t9, 0x40($s0)
/* 05C1E0 8005C630 AFA90070 */  sw          $t1, 0x70($sp)
/* 05C1E4 8005C634 AFA8007C */  sw          $t0, 0x7c($sp)
/* 05C1E8 8005C638 372D0002 */  ori         $t5, $t9, 0x2
/* 05C1EC 8005C63C AFAD0018 */  sw          $t5, 0x18($sp)
/* 05C1F0 8005C640 01808825 */  move        $s1, $t4
/* 05C1F4 8005C644 02A02025 */  move        $a0, $s5
/* 05C1F8 8005C648 0000A012 */  mflo        $s4
/* 05C1FC 8005C64C 02803825 */  move        $a3, $s4
/* 05C200 8005C650 0C017376 */  jal         func_8005CDD8
/* 05C204 8005C654 02002825 */   move       $a1, $s0
/* 05C208 8005C658 8E0E003C */  lw          $t6, 0x3c($s0)
/* 05C20C 8005C65C 8FA8007C */  lw          $t0, 0x7c($sp)
/* 05C210 8005C660 3C0100FF */  lui         $at, 0xff
/* 05C214 8005C664 000E7840 */  sll         $t7, $t6, 1
/* 05C218 8005C668 8FA90070 */  lw          $t1, 0x70($sp)
/* 05C21C 8005C66C 01F2C021 */  addu        $t8, $t7, $s2
/* 05C220 8005C670 3421FFFF */  ori         $at, $at, 0xffff
/* 05C224 8005C674 03016024 */  and         $t4, $t8, $at
/* 05C228 8005C678 3C010A00 */  lui         $at, 0xa00
/* 05C22C 8005C67C 00081840 */  sll         $v1, $t0, 1
/* 05C230 8005C680 306FFFFF */  andi        $t7, $v1, 0xffff
/* 05C234 8005C684 0181C825 */  or          $t9, $t4, $at
/* 05C238 8005C688 00097400 */  sll         $t6, $t1, 16
/* 05C23C 8005C68C 01CFC025 */  or          $t8, $t6, $t7
/* 05C240 8005C690 0113082A */  slt         $at, $t0, $s3
/* 05C244 8005C694 AC580004 */  sw          $t8, 0x4($v0)
/* 05C248 8005C698 AC590000 */  sw          $t9, 0x0($v0)
/* 05C24C 8005C69C 1420FFC1 */  bne         $at, $zero, .L8005C5A4
/* 05C250 8005C6A0 24550008 */   addiu      $s5, $v0, 0x8
.L8005C6A4:
/* 05C254 8005C6A4 8E0C003C */  lw          $t4, 0x3c($s0)
/* 05C258 8005C6A8 8E0E0038 */  lw          $t6, 0x38($s0)
/* 05C25C 8005C6AC 8E180044 */  lw          $t8, 0x44($s0)
/* 05C260 8005C6B0 0193C821 */  addu        $t9, $t4, $s3
/* 05C264 8005C6B4 332D000F */  andi        $t5, $t9, 0xf
/* 05C268 8005C6B8 01D37821 */  addu        $t7, $t6, $s3
/* 05C26C 8005C6BC 03146021 */  addu        $t4, $t8, $s4
/* 05C270 8005C6C0 AE0D003C */  sw          $t5, 0x3c($s0)
/* 05C274 8005C6C4 AE0F0038 */  sw          $t7, 0x38($s0)
/* 05C278 8005C6C8 AE0C0044 */  sw          $t4, 0x44($s0)
/* 05C27C 8005C6CC 10000058 */  b           .L8005C830
/* 05C280 8005C6D0 02A01025 */   move       $v0, $s5
.L8005C6D4:
/* 05C284 8005C6D4 8E020028 */  lw          $v0, 0x28($s0)
/* 05C288 8005C6D8 8E0D0044 */  lw          $t5, 0x44($s0)
/* 05C28C 8005C6DC 0011C903 */  sra         $t9, $s1, 4
/* 05C290 8005C6E0 8C4E0000 */  lw          $t6, 0x0($v0)
/* 05C294 8005C6E4 0019A0C0 */  sll         $s4, $t9, 3
/* 05C298 8005C6E8 8C580004 */  lw          $t8, 0x4($v0)
/* 05C29C 8005C6EC 0299A021 */  addu        $s4, $s4, $t9
/* 05C2A0 8005C6F0 01B42821 */  addu        $a1, $t5, $s4
/* 05C2A4 8005C6F4 00AE7823 */  subu        $t7, $a1, $t6
/* 05C2A8 8005C6F8 01F81823 */  subu        $v1, $t7, $t8
/* 05C2AC 8005C6FC 04610002 */  bgez        $v1, .L8005C708
/* 05C2B0 8005C700 03208825 */   move       $s1, $t9
/* 05C2B4 8005C704 00001825 */  move        $v1, $zero
.L8005C708:
/* 05C2B8 8005C708 0061001A */  div         $zero, $v1, $at
/* 05C2BC 8005C70C 00001012 */  mflo        $v0
/* 05C2C0 8005C710 00114100 */  sll         $t0, $s1, 4
/* 05C2C4 8005C714 00029100 */  sll         $s2, $v0, 4
/* 05C2C8 8005C718 01044821 */  addu        $t1, $t0, $a0
/* 05C2CC 8005C71C 0132082A */  slt         $at, $t1, $s2
/* 05C2D0 8005C720 10200002 */  beq         $at, $zero, .L8005C72C
/* 05C2D4 8005C724 8FAB00A4 */   lw         $t3, 0xa4($sp)
/* 05C2D8 8005C728 01209025 */  move        $s2, $t1
.L8005C72C:
/* 05C2DC 8005C72C 3259000F */  andi        $t9, $s2, 0xf
/* 05C2E0 8005C730 02596823 */  subu        $t5, $s2, $t9
/* 05C2E4 8005C734 01B3082A */  slt         $at, $t5, $s3
/* 05C2E8 8005C738 10200026 */  beq         $at, $zero, .L8005C7D4
/* 05C2EC 8005C73C 02833823 */   subu       $a3, $s4, $v1
/* 05C2F0 8005C740 856E0000 */  lh          $t6, 0x0($t3)
/* 05C2F4 8005C744 AFA00014 */  sw          $zero, 0x14($sp)
/* 05C2F8 8005C748 240A0001 */  addiu       $t2, $zero, 0x1
/* 05C2FC 8005C74C AFAE0010 */  sw          $t6, 0x10($sp)
/* 05C300 8005C750 8E0F0040 */  lw          $t7, 0x40($s0)
/* 05C304 8005C754 AFAA006C */  sw          $t2, 0x6c($sp)
/* 05C308 8005C758 AFA90040 */  sw          $t1, 0x40($sp)
/* 05C30C 8005C75C 02A02025 */  move        $a0, $s5
/* 05C310 8005C760 02002825 */  move        $a1, $s0
/* 05C314 8005C764 01123023 */  subu        $a2, $t0, $s2
/* 05C318 8005C768 0C017376 */  jal         func_8005CDD8
/* 05C31C 8005C76C AFAF0018 */   sw         $t7, 0x18($sp)
/* 05C320 8005C770 8E03003C */  lw          $v1, 0x3c($s0)
/* 05C324 8005C774 8FA90040 */  lw          $t1, 0x40($sp)
/* 05C328 8005C778 8FAA006C */  lw          $t2, 0x6c($sp)
/* 05C32C 8005C77C 8FAB00A4 */  lw          $t3, 0xa4($sp)
/* 05C330 8005C780 10600006 */  beq         $v1, $zero, .L8005C79C
/* 05C334 8005C784 0040A825 */   move       $s5, $v0
/* 05C338 8005C788 85780000 */  lh          $t8, 0x0($t3)
/* 05C33C 8005C78C 00036040 */  sll         $t4, $v1, 1
/* 05C340 8005C790 030CC821 */  addu        $t9, $t8, $t4
/* 05C344 8005C794 10000004 */  b           .L8005C7A8
/* 05C348 8005C798 A5790000 */   sh         $t9, 0x0($t3)
.L8005C79C:
/* 05C34C 8005C79C 856D0000 */  lh          $t5, 0x0($t3)
/* 05C350 8005C7A0 25AE0020 */  addiu       $t6, $t5, 0x20
/* 05C354 8005C7A4 A56E0000 */  sh          $t6, 0x0($t3)
.L8005C7A8:
/* 05C358 8005C7A8 8E0F003C */  lw          $t7, 0x3c($s0)
/* 05C35C 8005C7AC 8E190038 */  lw          $t9, 0x38($s0)
/* 05C360 8005C7B0 8E0E0044 */  lw          $t6, 0x44($s0)
/* 05C364 8005C7B4 01F3C021 */  addu        $t8, $t7, $s3
/* 05C368 8005C7B8 330C000F */  andi        $t4, $t8, 0xf
/* 05C36C 8005C7BC 03336821 */  addu        $t5, $t9, $s3
/* 05C370 8005C7C0 01D47821 */  addu        $t7, $t6, $s4
/* 05C374 8005C7C4 AE0C003C */  sw          $t4, 0x3c($s0)
/* 05C378 8005C7C8 AE0D0038 */  sw          $t5, 0x38($s0)
/* 05C37C 8005C7CC 10000003 */  b           .L8005C7DC
/* 05C380 8005C7D0 AE0F0044 */   sw         $t7, 0x44($s0)
.L8005C7D4:
/* 05C384 8005C7D4 AE00003C */  sw          $zero, 0x3c($s0)
/* 05C388 8005C7D8 AE050044 */  sw          $a1, 0x44($s0)
.L8005C7DC:
/* 05C38C 8005C7DC 12400013 */  beq         $s2, $zero, .L8005C82C
/* 05C390 8005C7E0 02A01025 */   move       $v0, $s5
/* 05C394 8005C7E4 11400005 */  beq         $t2, $zero, .L8005C7FC
/* 05C398 8005C7E8 AE00003C */   sw         $zero, 0x3c($s0)
/* 05C39C 8005C7EC 01321823 */  subu        $v1, $t1, $s2
/* 05C3A0 8005C7F0 0003C040 */  sll         $t8, $v1, 1
/* 05C3A4 8005C7F4 10000002 */  b           .L8005C800
/* 05C3A8 8005C7F8 03001825 */   move       $v1, $t8
.L8005C7FC:
/* 05C3AC 8005C7FC 00001825 */  move        $v1, $zero
.L8005C800:
/* 05C3B0 8005C800 856C0000 */  lh          $t4, 0x0($t3)
/* 05C3B4 8005C804 3C0100FF */  lui         $at, 0xff
/* 05C3B8 8005C808 3421FFFF */  ori         $at, $at, 0xffff
/* 05C3BC 8005C80C 0183C821 */  addu        $t9, $t4, $v1
/* 05C3C0 8005C810 03216824 */  and         $t5, $t9, $at
/* 05C3C4 8005C814 3C010200 */  lui         $at, 0x200
/* 05C3C8 8005C818 01A17025 */  or          $t6, $t5, $at
/* 05C3CC 8005C81C 00127840 */  sll         $t7, $s2, 1
/* 05C3D0 8005C820 AC4F0004 */  sw          $t7, 0x4($v0)
/* 05C3D4 8005C824 AC4E0000 */  sw          $t6, 0x0($v0)
/* 05C3D8 8005C828 26B50008 */  addiu       $s5, $s5, 0x8
.L8005C82C:
/* 05C3DC 8005C82C 02A01025 */  move        $v0, $s5
.L8005C830:
/* 05C3E0 8005C830 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05C3E4 8005C834 8FB00024 */  lw          $s0, 0x24($sp)
/* 05C3E8 8005C838 8FB10028 */  lw          $s1, 0x28($sp)
/* 05C3EC 8005C83C 8FB2002C */  lw          $s2, 0x2c($sp)
/* 05C3F0 8005C840 8FB30030 */  lw          $s3, 0x30($sp)
/* 05C3F4 8005C844 8FB40034 */  lw          $s4, 0x34($sp)
/* 05C3F8 8005C848 8FB50038 */  lw          $s5, 0x38($sp)
/* 05C3FC 8005C84C 03E00008 */  jr          $ra
/* 05C400 8005C850 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_8005C854 # 1
/* 05C404 8005C854 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 05C408 8005C858 8FAE0060 */  lw          $t6, 0x60($sp)
/* 05C40C 8005C85C AFB30020 */  sw          $s3, 0x20($sp)
/* 05C410 8005C860 AFB00014 */  sw          $s0, 0x14($sp)
/* 05C414 8005C864 00808025 */  move        $s0, $a0
/* 05C418 8005C868 00C09825 */  move        $s3, $a2
/* 05C41C 8005C86C AFBF0024 */  sw          $ra, 0x24($sp)
/* 05C420 8005C870 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05C424 8005C874 AFB10018 */  sw          $s1, 0x18($sp)
/* 05C428 8005C878 AFA50054 */  sw          $a1, 0x54($sp)
/* 05C42C 8005C87C AFA7005C */  sw          $a3, 0x5c($sp)
/* 05C430 8005C880 14C00003 */  bne         $a2, $zero, .L8005C890
/* 05C434 8005C884 01C04825 */   move       $t1, $t6
/* 05C438 8005C888 100000D7 */  b           .L8005CBE8
/* 05C43C 8005C88C 01C01025 */   move       $v0, $t6
.L8005C890:
/* 05C440 8005C890 8E020038 */  lw          $v0, 0x38($s0)
/* 05C444 8005C894 8E030020 */  lw          $v1, 0x20($s0)
/* 05C448 8005C898 00537821 */  addu        $t7, $v0, $s3
/* 05C44C 8005C89C 006F082B */  sltu        $at, $v1, $t7
/* 05C450 8005C8A0 50200084 */  beql        $at, $zero, .L8005CAB4
/* 05C454 8005C8A4 8E020028 */   lw         $v0, 0x28($s0)
/* 05C458 8005C8A8 8E180024 */  lw          $t8, 0x24($s0)
/* 05C45C 8005C8AC 00629023 */  subu        $s2, $v1, $v0
/* 05C460 8005C8B0 53000080 */  beql        $t8, $zero, .L8005CAB4
/* 05C464 8005C8B4 8E020028 */   lw         $v0, 0x28($s0)
/* 05C468 8005C8B8 1A40001C */  blez        $s2, .L8005C92C
/* 05C46C 8005C8BC 00128840 */   sll        $s1, $s2, 1
/* 05C470 8005C8C0 8E190030 */  lw          $t9, 0x30($s0)
/* 05C474 8005C8C4 8E040044 */  lw          $a0, 0x44($s0)
/* 05C478 8005C8C8 02202825 */  move        $a1, $s1
/* 05C47C 8005C8CC 0320F809 */  jalr        $t9
/* 05C480 8005C8D0 8E060034 */   lw         $a2, 0x34($s0)
/* 05C484 8005C8D4 8FAA0054 */  lw          $t2, 0x54($sp)
/* 05C488 8005C8D8 30460007 */  andi        $a2, $v0, 0x7
/* 05C48C 8005C8DC 8FA80060 */  lw          $t0, 0x60($sp)
/* 05C490 8005C8E0 854B0000 */  lh          $t3, 0x0($t2)
/* 05C494 8005C8E4 02263821 */  addu        $a3, $s1, $a2
/* 05C498 8005C8E8 30EE0007 */  andi        $t6, $a3, 0x7
/* 05C49C 8005C8EC 00EE7823 */  subu        $t7, $a3, $t6
/* 05C4A0 8005C8F0 25F80008 */  addiu       $t8, $t7, 0x8
/* 05C4A4 8005C8F4 3C010800 */  lui         $at, 0x800
/* 05C4A8 8005C8F8 25090008 */  addiu       $t1, $t0, 0x8
/* 05C4AC 8005C8FC 316CFFFF */  andi        $t4, $t3, 0xffff
/* 05C4B0 8005C900 01816825 */  or          $t5, $t4, $at
/* 05C4B4 8005C904 3319FFFF */  andi        $t9, $t8, 0xffff
/* 05C4B8 8005C908 01202025 */  move        $a0, $t1
/* 05C4BC 8005C90C 00465823 */  subu        $t3, $v0, $a2
/* 05C4C0 8005C910 3C0A0400 */  lui         $t2, 0x400
/* 05C4C4 8005C914 AD190004 */  sw          $t9, 0x4($t0)
/* 05C4C8 8005C918 AD0D0000 */  sw          $t5, 0x0($t0)
/* 05C4CC 8005C91C AC8B0004 */  sw          $t3, 0x4($a0)
/* 05C4D0 8005C920 AC8A0000 */  sw          $t2, 0x0($a0)
/* 05C4D4 8005C924 10000002 */  b           .L8005C930
/* 05C4D8 8005C928 25290008 */   addiu      $t1, $t1, 0x8
.L8005C92C:
/* 05C4DC 8005C92C 00003025 */  move        $a2, $zero
.L8005C930:
/* 05C4E0 8005C930 8FAC0054 */  lw          $t4, 0x54($sp)
/* 05C4E4 8005C934 0253082A */  slt         $at, $s2, $s3
/* 05C4E8 8005C938 858D0000 */  lh          $t5, 0x0($t4)
/* 05C4EC 8005C93C 01A67021 */  addu        $t6, $t5, $a2
/* 05C4F0 8005C940 A58E0000 */  sh          $t6, 0x0($t4)
/* 05C4F4 8005C944 8E0F0028 */  lw          $t7, 0x28($s0)
/* 05C4F8 8005C948 8E02001C */  lw          $v0, 0x1c($s0)
/* 05C4FC 8005C94C 8DF80000 */  lw          $t8, 0x0($t7)
/* 05C500 8005C950 0002C840 */  sll         $t9, $v0, 1
/* 05C504 8005C954 AE020038 */  sw          $v0, 0x38($s0)
/* 05C508 8005C958 03195021 */  addu        $t2, $t8, $t9
/* 05C50C 8005C95C AE0A0044 */  sw          $t2, 0x44($s0)
/* 05C510 8005C960 8FAB0054 */  lw          $t3, 0x54($sp)
/* 05C514 8005C964 10200049 */  beq         $at, $zero, .L8005CA8C
/* 05C518 8005C968 85680000 */   lh         $t0, 0x0($t3)
/* 05C51C 8005C96C 8E020024 */  lw          $v0, 0x24($s0)
.L8005C970:
/* 05C520 8005C970 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C524 8005C974 01114021 */  addu        $t0, $t0, $s1
/* 05C528 8005C978 10410004 */  beq         $v0, $at, .L8005C98C
/* 05C52C 8005C97C 02729823 */   subu       $s3, $s3, $s2
/* 05C530 8005C980 10400002 */  beq         $v0, $zero, .L8005C98C
/* 05C534 8005C984 244DFFFF */   addiu      $t5, $v0, -0x1
/* 05C538 8005C988 AE0D0024 */  sw          $t5, 0x24($s0)
.L8005C98C:
/* 05C53C 8005C98C 8E0E0020 */  lw          $t6, 0x20($s0)
/* 05C540 8005C990 8E0C001C */  lw          $t4, 0x1c($s0)
/* 05C544 8005C994 01CC1023 */  subu        $v0, $t6, $t4
/* 05C548 8005C998 0262082B */  sltu        $at, $s3, $v0
/* 05C54C 8005C99C 10200003 */  beq         $at, $zero, .L8005C9AC
/* 05C550 8005C9A0 00409025 */   move       $s2, $v0
/* 05C554 8005C9A4 10000001 */  b           .L8005C9AC
/* 05C558 8005C9A8 02609025 */   move       $s2, $s3
.L8005C9AC:
/* 05C55C 8005C9AC 8E040044 */  lw          $a0, 0x44($s0)
/* 05C560 8005C9B0 8E060034 */  lw          $a2, 0x34($s0)
/* 05C564 8005C9B4 AFA9004C */  sw          $t1, 0x4c($sp)
/* 05C568 8005C9B8 AFA8002C */  sw          $t0, 0x2c($sp)
/* 05C56C 8005C9BC 8E190030 */  lw          $t9, 0x30($s0)
/* 05C570 8005C9C0 00128840 */  sll         $s1, $s2, 1
/* 05C574 8005C9C4 02202825 */  move        $a1, $s1
/* 05C578 8005C9C8 0320F809 */  jalr        $t9
/* 05C57C 8005C9CC 00000000 */   nop
/* 05C580 8005C9D0 8FA8002C */  lw          $t0, 0x2c($sp)
/* 05C584 8005C9D4 30450007 */  andi        $a1, $v0, 0x7
/* 05C588 8005C9D8 8FA9004C */  lw          $t1, 0x4c($sp)
/* 05C58C 8005C9DC 31030007 */  andi        $v1, $t0, 0x7
/* 05C590 8005C9E0 10600004 */  beq         $v1, $zero, .L8005C9F4
/* 05C594 8005C9E4 02253821 */   addu       $a3, $s1, $a1
/* 05C598 8005C9E8 240F0008 */  addiu       $t7, $zero, 0x8
/* 05C59C 8005C9EC 10000002 */  b           .L8005C9F8
/* 05C5A0 8005C9F0 01E33023 */   subu       $a2, $t7, $v1
.L8005C9F4:
/* 05C5A4 8005C9F4 00003025 */  move        $a2, $zero
.L8005C9F8:
/* 05C5A8 8005C9F8 30ED0007 */  andi        $t5, $a3, 0x7
/* 05C5AC 8005C9FC 00ED7023 */  subu        $t6, $a3, $t5
/* 05C5B0 8005CA00 01201825 */  move        $v1, $t1
/* 05C5B4 8005CA04 0106C021 */  addu        $t8, $t0, $a2
/* 05C5B8 8005CA08 330AFFFF */  andi        $t2, $t8, 0xffff
/* 05C5BC 8005CA0C 25290008 */  addiu       $t1, $t1, 0x8
/* 05C5C0 8005CA10 25CC0008 */  addiu       $t4, $t6, 0x8
/* 05C5C4 8005CA14 3C010800 */  lui         $at, 0x800
/* 05C5C8 8005CA18 01415825 */  or          $t3, $t2, $at
/* 05C5CC 8005CA1C 3199FFFF */  andi        $t9, $t4, 0xffff
/* 05C5D0 8005CA20 01202025 */  move        $a0, $t1
/* 05C5D4 8005CA24 AC790004 */  sw          $t9, 0x4($v1)
/* 05C5D8 8005CA28 AC6B0000 */  sw          $t3, 0x0($v1)
/* 05C5DC 8005CA2C 0045C023 */  subu        $t8, $v0, $a1
/* 05C5E0 8005CA30 3C0F0400 */  lui         $t7, 0x400
/* 05C5E4 8005CA34 AC8F0000 */  sw          $t7, 0x0($a0)
/* 05C5E8 8005CA38 AC980004 */  sw          $t8, 0x4($a0)
/* 05C5EC 8005CA3C 14A00002 */  bne         $a1, $zero, .L8005CA48
/* 05C5F0 8005CA40 25290008 */   addiu      $t1, $t1, 0x8
/* 05C5F4 8005CA44 10C0000E */  beq         $a2, $zero, .L8005CA80
.L8005CA48:
/* 05C5F8 8005CA48 01055021 */   addu       $t2, $t0, $a1
/* 05C5FC 8005CA4C 3C0100FF */  lui         $at, 0xff
/* 05C600 8005CA50 3421FFFF */  ori         $at, $at, 0xffff
/* 05C604 8005CA54 01465821 */  addu        $t3, $t2, $a2
/* 05C608 8005CA58 01616824 */  and         $t5, $t3, $at
/* 05C60C 8005CA5C 01201025 */  move        $v0, $t1
/* 05C610 8005CA60 3C010A00 */  lui         $at, 0xa00
/* 05C614 8005CA64 0008CC00 */  sll         $t9, $t0, 16
/* 05C618 8005CA68 322FFFFF */  andi        $t7, $s1, 0xffff
/* 05C61C 8005CA6C 032FC025 */  or          $t8, $t9, $t7
/* 05C620 8005CA70 01A17025 */  or          $t6, $t5, $at
/* 05C624 8005CA74 AC4E0000 */  sw          $t6, 0x0($v0)
/* 05C628 8005CA78 AC580004 */  sw          $t8, 0x4($v0)
/* 05C62C 8005CA7C 25290008 */  addiu       $t1, $t1, 0x8
.L8005CA80:
/* 05C630 8005CA80 0253082A */  slt         $at, $s2, $s3
/* 05C634 8005CA84 5420FFBA */  bnel        $at, $zero, .L8005C970
/* 05C638 8005CA88 8E020024 */   lw         $v0, 0x24($s0)
.L8005CA8C:
/* 05C63C 8005CA8C 8E0A0038 */  lw          $t2, 0x38($s0)
/* 05C640 8005CA90 8E0D0044 */  lw          $t5, 0x44($s0)
/* 05C644 8005CA94 00137040 */  sll         $t6, $s3, 1
/* 05C648 8005CA98 01535821 */  addu        $t3, $t2, $s3
/* 05C64C 8005CA9C 01AE6021 */  addu        $t4, $t5, $t6
/* 05C650 8005CAA0 AE0B0038 */  sw          $t3, 0x38($s0)
/* 05C654 8005CAA4 AE0C0044 */  sw          $t4, 0x44($s0)
/* 05C658 8005CAA8 1000004F */  b           .L8005CBE8
/* 05C65C 8005CAAC 01201025 */   move       $v0, $t1
/* 05C660 8005CAB0 8E020028 */  lw          $v0, 0x28($s0)
.L8005CAB4:
/* 05C664 8005CAB4 8E040044 */  lw          $a0, 0x44($s0)
/* 05C668 8005CAB8 00138840 */  sll         $s1, $s3, 1
/* 05C66C 8005CABC 8C590000 */  lw          $t9, 0x0($v0)
/* 05C670 8005CAC0 8C580004 */  lw          $t8, 0x4($v0)
/* 05C674 8005CAC4 00911821 */  addu        $v1, $a0, $s1
/* 05C678 8005CAC8 00797823 */  subu        $t7, $v1, $t9
/* 05C67C 8005CACC 01F89023 */  subu        $s2, $t7, $t8
/* 05C680 8005CAD0 06430003 */  bgezl       $s2, .L8005CAE0
/* 05C684 8005CAD4 0232082A */   slt        $at, $s1, $s2
/* 05C688 8005CAD8 00009025 */  move        $s2, $zero
/* 05C68C 8005CADC 0232082A */  slt         $at, $s1, $s2
.L8005CAE0:
/* 05C690 8005CAE0 50200003 */  beql        $at, $zero, .L8005CAF0
/* 05C694 8005CAE4 0251082A */   slt        $at, $s2, $s1
/* 05C698 8005CAE8 02209025 */  move        $s2, $s1
/* 05C69C 8005CAEC 0251082A */  slt         $at, $s2, $s1
.L8005CAF0:
/* 05C6A0 8005CAF0 5020002C */  beql        $at, $zero, .L8005CBA4
/* 05C6A4 8005CAF4 AE030044 */   sw         $v1, 0x44($s0)
/* 05C6A8 8005CAF8 1A60001E */  blez        $s3, .L8005CB74
/* 05C6AC 8005CAFC 00003025 */   move       $a2, $zero
/* 05C6B0 8005CB00 02322823 */  subu        $a1, $s1, $s2
/* 05C6B4 8005CB04 8E060034 */  lw          $a2, 0x34($s0)
/* 05C6B8 8005CB08 AFA50048 */  sw          $a1, 0x48($sp)
/* 05C6BC 8005CB0C 8E190030 */  lw          $t9, 0x30($s0)
/* 05C6C0 8005CB10 0320F809 */  jalr        $t9
/* 05C6C4 8005CB14 00000000 */   nop
/* 05C6C8 8005CB18 8FA70048 */  lw          $a3, 0x48($sp)
/* 05C6CC 8005CB1C 8FAA0054 */  lw          $t2, 0x54($sp)
/* 05C6D0 8005CB20 30460007 */  andi        $a2, $v0, 0x7
/* 05C6D4 8005CB24 8FA80060 */  lw          $t0, 0x60($sp)
/* 05C6D8 8005CB28 854B0000 */  lh          $t3, 0x0($t2)
/* 05C6DC 8005CB2C 00E63821 */  addu        $a3, $a3, $a2
/* 05C6E0 8005CB30 30EC0007 */  andi        $t4, $a3, 0x7
/* 05C6E4 8005CB34 00EC7823 */  subu        $t7, $a3, $t4
/* 05C6E8 8005CB38 25F80008 */  addiu       $t8, $t7, 0x8
/* 05C6EC 8005CB3C 3C010800 */  lui         $at, 0x800
/* 05C6F0 8005CB40 25090008 */  addiu       $t1, $t0, 0x8
/* 05C6F4 8005CB44 316DFFFF */  andi        $t5, $t3, 0xffff
/* 05C6F8 8005CB48 01A17025 */  or          $t6, $t5, $at
/* 05C6FC 8005CB4C 3319FFFF */  andi        $t9, $t8, 0xffff
/* 05C700 8005CB50 01202025 */  move        $a0, $t1
/* 05C704 8005CB54 00465823 */  subu        $t3, $v0, $a2
/* 05C708 8005CB58 3C0A0400 */  lui         $t2, 0x400
/* 05C70C 8005CB5C AD190004 */  sw          $t9, 0x4($t0)
/* 05C710 8005CB60 AD0E0000 */  sw          $t6, 0x0($t0)
/* 05C714 8005CB64 AC8B0004 */  sw          $t3, 0x4($a0)
/* 05C718 8005CB68 AC8A0000 */  sw          $t2, 0x0($a0)
/* 05C71C 8005CB6C 10000001 */  b           .L8005CB74
/* 05C720 8005CB70 25290008 */   addiu      $t1, $t1, 0x8
.L8005CB74:
/* 05C724 8005CB74 8FAD0054 */  lw          $t5, 0x54($sp)
/* 05C728 8005CB78 85AE0000 */  lh          $t6, 0x0($t5)
/* 05C72C 8005CB7C 01C66021 */  addu        $t4, $t6, $a2
/* 05C730 8005CB80 A5AC0000 */  sh          $t4, 0x0($t5)
/* 05C734 8005CB84 8E0F0038 */  lw          $t7, 0x38($s0)
/* 05C738 8005CB88 8E190044 */  lw          $t9, 0x44($s0)
/* 05C73C 8005CB8C 01F3C021 */  addu        $t8, $t7, $s3
/* 05C740 8005CB90 03315021 */  addu        $t2, $t9, $s1
/* 05C744 8005CB94 AE180038 */  sw          $t8, 0x38($s0)
/* 05C748 8005CB98 10000002 */  b           .L8005CBA4
/* 05C74C 8005CB9C AE0A0044 */   sw         $t2, 0x44($s0)
/* 05C750 8005CBA0 AE030044 */  sw          $v1, 0x44($s0)
.L8005CBA4:
/* 05C754 8005CBA4 1240000F */  beq         $s2, $zero, .L8005CBE4
/* 05C758 8005CBA8 02321823 */   subu       $v1, $s1, $s2
/* 05C75C 8005CBAC 04610002 */  bgez        $v1, .L8005CBB8
/* 05C760 8005CBB0 01201025 */   move       $v0, $t1
/* 05C764 8005CBB4 00001825 */  move        $v1, $zero
.L8005CBB8:
/* 05C768 8005CBB8 8FAB0054 */  lw          $t3, 0x54($sp)
/* 05C76C 8005CBBC 3C0100FF */  lui         $at, 0xff
/* 05C770 8005CBC0 3421FFFF */  ori         $at, $at, 0xffff
/* 05C774 8005CBC4 856E0000 */  lh          $t6, 0x0($t3)
/* 05C778 8005CBC8 AC520004 */  sw          $s2, 0x4($v0)
/* 05C77C 8005CBCC 25290008 */  addiu       $t1, $t1, 0x8
/* 05C780 8005CBD0 01C36021 */  addu        $t4, $t6, $v1
/* 05C784 8005CBD4 01816824 */  and         $t5, $t4, $at
/* 05C788 8005CBD8 3C010200 */  lui         $at, 0x200
/* 05C78C 8005CBDC 01A17825 */  or          $t7, $t5, $at
/* 05C790 8005CBE0 AC4F0000 */  sw          $t7, 0x0($v0)
.L8005CBE4:
/* 05C794 8005CBE4 01201025 */  move        $v0, $t1
.L8005CBE8:
/* 05C798 8005CBE8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05C79C 8005CBEC 8FB00014 */  lw          $s0, 0x14($sp)
/* 05C7A0 8005CBF0 8FB10018 */  lw          $s1, 0x18($sp)
/* 05C7A4 8005CBF4 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05C7A8 8005CBF8 8FB30020 */  lw          $s3, 0x20($sp)
/* 05C7AC 8005CBFC 03E00008 */  jr          $ra
/* 05C7B0 8005CC00 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8005CC04 # 2
/* 05C7B4 8005CC04 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05C7B8 8005CC08 24010004 */  addiu       $at, $zero, 0x4
/* 05C7BC 8005CC0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 05C7C0 8005CC10 10A10055 */  beq         $a1, $at, .L8005CD68
/* 05C7C4 8005CC14 00803825 */   move       $a3, $a0
/* 05C7C8 8005CC18 24010005 */  addiu       $at, $zero, 0x5
/* 05C7CC 8005CC1C 54A1006B */  bnel        $a1, $at, .L8005CDCC
/* 05C7D0 8005CC20 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C7D4 8005CC24 AC860028 */  sw          $a2, 0x28($a0)
/* 05C7D8 8005CC28 8CCE0000 */  lw          $t6, 0x0($a2)
/* 05C7DC 8005CC2C AC800038 */  sw          $zero, 0x38($a0)
/* 05C7E0 8005CC30 3C0F8006 */  lui         $t7, %hi(func_8005C400)
/* 05C7E4 8005CC34 AC8E0044 */  sw          $t6, 0x44($a0)
/* 05C7E8 8005CC38 90C20008 */  lbu         $v0, 0x8($a2)
/* 05C7EC 8005CC3C 50400007 */  beql        $v0, $zero, .L8005CC5C
/* 05C7F0 8005CC40 8CE20028 */   lw         $v0, 0x28($a3)
/* 05C7F4 8005CC44 24040001 */  addiu       $a0, $zero, 0x1
/* 05C7F8 8005CC48 10440034 */  beq         $v0, $a0, .L8005CD1C
/* 05C7FC 8005CC4C 3C088006 */   lui        $t0, 0x8006
/* 05C800 8005CC50 1000005E */  b           .L8005CDCC
/* 05C804 8005CC54 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C808 8005CC58 8CE20028 */  lw          $v0, 0x28($a3)
.L8005CC5C:
/* 05C80C 8005CC5C 25EFC400 */  addiu       $t7, $t7, %lo(func_8005C400)
/* 05C810 8005CC60 ACEF0004 */  sw          $t7, 0x4($a3)
/* 05C814 8005CC64 8C580004 */  lw          $t8, 0x4($v0)
/* 05C818 8005CC68 24050009 */  addiu       $a1, $zero, 0x9
/* 05C81C 8005CC6C 0305001A */  div         $zero, $t8, $a1
/* 05C820 8005CC70 0000C812 */  mflo        $t9
/* 05C824 8005CC74 14A00002 */  bne         $a1, $zero, .L8005CC80
/* 05C828 8005CC78 00000000 */   nop
/* 05C82C 8005CC7C 0007000D */  break       7
.L8005CC80:
/* 05C830 8005CC80 2401FFFF */  addiu       $at, $zero, -0x1
/* 05C834 8005CC84 14A10004 */  bne         $a1, $at, .L8005CC98
/* 05C838 8005CC88 3C018000 */   lui        $at, 0x8000
/* 05C83C 8005CC8C 17010002 */  bne         $t8, $at, .L8005CC98
/* 05C840 8005CC90 00000000 */   nop
/* 05C844 8005CC94 0006000D */  break       6
.L8005CC98:
/* 05C848 8005CC98 03250019 */  multu       $t9, $a1
/* 05C84C 8005CC9C 00004012 */  mflo        $t0
/* 05C850 8005CCA0 AC480004 */  sw          $t0, 0x4($v0)
/* 05C854 8005CCA4 8CE20028 */  lw          $v0, 0x28($a3)
/* 05C858 8005CCA8 8C440010 */  lw          $a0, 0x10($v0)
/* 05C85C 8005CCAC 8C890000 */  lw          $t1, 0x0($a0)
/* 05C860 8005CCB0 8C8B0004 */  lw          $t3, 0x4($a0)
/* 05C864 8005CCB4 00095100 */  sll         $t2, $t1, 4
/* 05C868 8005CCB8 014B0019 */  multu       $t2, $t3
/* 05C86C 8005CCBC 00006012 */  mflo        $t4
/* 05C870 8005CCC0 ACEC002C */  sw          $t4, 0x2c($a3)
/* 05C874 8005CCC4 8C43000C */  lw          $v1, 0xc($v0)
/* 05C878 8005CCC8 50600011 */  beql        $v1, $zero, .L8005CD10
/* 05C87C 8005CCCC ACE00024 */   sw         $zero, 0x24($a3)
/* 05C880 8005CCD0 8C6D0000 */  lw          $t5, 0x0($v1)
/* 05C884 8005CCD4 8CE50018 */  lw          $a1, 0x18($a3)
/* 05C888 8005CCD8 24060020 */  addiu       $a2, $zero, 0x20
/* 05C88C 8005CCDC ACED001C */  sw          $t5, 0x1c($a3)
/* 05C890 8005CCE0 8C4E000C */  lw          $t6, 0xc($v0)
/* 05C894 8005CCE4 8DCF0004 */  lw          $t7, 0x4($t6)
/* 05C898 8005CCE8 ACEF0020 */  sw          $t7, 0x20($a3)
/* 05C89C 8005CCEC 8C58000C */  lw          $t8, 0xc($v0)
/* 05C8A0 8005CCF0 8F190008 */  lw          $t9, 0x8($t8)
/* 05C8A4 8005CCF4 ACF90024 */  sw          $t9, 0x24($a3)
/* 05C8A8 8005CCF8 8C44000C */  lw          $a0, 0xc($v0)
/* 05C8AC 8005CCFC 0C017B34 */  jal         func_8005ECD0
/* 05C8B0 8005CD00 2484000C */   addiu      $a0, $a0, 0xc
/* 05C8B4 8005CD04 10000031 */  b           .L8005CDCC
/* 05C8B8 8005CD08 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C8BC 8005CD0C ACE00024 */  sw          $zero, 0x24($a3)
.L8005CD10:
/* 05C8C0 8005CD10 ACE00020 */  sw          $zero, 0x20($a3)
/* 05C8C4 8005CD14 1000002C */  b           .L8005CDC8
/* 05C8C8 8005CD18 ACE0001C */   sw         $zero, 0x1c($a3)
.L8005CD1C:
/* 05C8CC 8005CD1C 8CE20028 */  lw          $v0, 0x28($a3)
/* 05C8D0 8005CD20 2508C854 */  addiu       $t0, $t0, -0x37ac
/* 05C8D4 8005CD24 ACE80004 */  sw          $t0, 0x4($a3)
/* 05C8D8 8005CD28 8C43000C */  lw          $v1, 0xc($v0)
/* 05C8DC 8005CD2C 5060000B */  beql        $v1, $zero, .L8005CD5C
/* 05C8E0 8005CD30 ACE00024 */   sw         $zero, 0x24($a3)
/* 05C8E4 8005CD34 8C690000 */  lw          $t1, 0x0($v1)
/* 05C8E8 8005CD38 ACE9001C */  sw          $t1, 0x1c($a3)
/* 05C8EC 8005CD3C 8C4A000C */  lw          $t2, 0xc($v0)
/* 05C8F0 8005CD40 8D4B0004 */  lw          $t3, 0x4($t2)
/* 05C8F4 8005CD44 ACEB0020 */  sw          $t3, 0x20($a3)
/* 05C8F8 8005CD48 8C4C000C */  lw          $t4, 0xc($v0)
/* 05C8FC 8005CD4C 8D8D0008 */  lw          $t5, 0x8($t4)
/* 05C900 8005CD50 1000001D */  b           .L8005CDC8
/* 05C904 8005CD54 ACED0024 */   sw         $t5, 0x24($a3)
/* 05C908 8005CD58 ACE00024 */  sw          $zero, 0x24($a3)
.L8005CD5C:
/* 05C90C 8005CD5C ACE00020 */  sw          $zero, 0x20($a3)
/* 05C910 8005CD60 10000019 */  b           .L8005CDC8
/* 05C914 8005CD64 ACE0001C */   sw         $zero, 0x1c($a3)
.L8005CD68:
/* 05C918 8005CD68 8CE20028 */  lw          $v0, 0x28($a3)
/* 05C91C 8005CD6C 24040001 */  addiu       $a0, $zero, 0x1
/* 05C920 8005CD70 ACE0003C */  sw          $zero, 0x3c($a3)
/* 05C924 8005CD74 ACE40040 */  sw          $a0, 0x40($a3)
/* 05C928 8005CD78 10400013 */  beq         $v0, $zero, .L8005CDC8
/* 05C92C 8005CD7C ACE00038 */   sw         $zero, 0x38($a3)
/* 05C930 8005CD80 8C4E0000 */  lw          $t6, 0x0($v0)
/* 05C934 8005CD84 ACEE0044 */  sw          $t6, 0x44($a3)
/* 05C938 8005CD88 90430008 */  lbu         $v1, 0x8($v0)
/* 05C93C 8005CD8C 14600007 */  bne         $v1, $zero, .L8005CDAC
/* 05C940 8005CD90 00000000 */   nop
/* 05C944 8005CD94 8C43000C */  lw          $v1, 0xc($v0)
/* 05C948 8005CD98 5060000C */  beql        $v1, $zero, .L8005CDCC
/* 05C94C 8005CD9C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C950 8005CDA0 8C6F0008 */  lw          $t7, 0x8($v1)
/* 05C954 8005CDA4 10000008 */  b           .L8005CDC8
/* 05C958 8005CDA8 ACEF0024 */   sw         $t7, 0x24($a3)
.L8005CDAC:
/* 05C95C 8005CDAC 54830007 */  bnel        $a0, $v1, .L8005CDCC
/* 05C960 8005CDB0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C964 8005CDB4 8C43000C */  lw          $v1, 0xc($v0)
/* 05C968 8005CDB8 50600004 */  beql        $v1, $zero, .L8005CDCC
/* 05C96C 8005CDBC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05C970 8005CDC0 8C780008 */  lw          $t8, 0x8($v1)
/* 05C974 8005CDC4 ACF80024 */  sw          $t8, 0x24($a3)
.L8005CDC8:
/* 05C978 8005CDC8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005CDCC:
/* 05C97C 8005CDCC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05C980 8005CDD0 03E00008 */  jr          $ra
/* 05C984 8005CDD4 00000000 */   nop

glabel func_8005CDD8 # 3
/* 05C988 8005CDD8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05C98C 8005CDDC AFB10018 */  sw          $s1, 0x18($sp)
/* 05C990 8005CDE0 AFB00014 */  sw          $s0, 0x14($sp)
/* 05C994 8005CDE4 00808025 */  move        $s0, $a0
/* 05C998 8005CDE8 00A08825 */  move        $s1, $a1
/* 05C99C 8005CDEC AFBF001C */  sw          $ra, 0x1c($sp)
/* 05C9A0 8005CDF0 18E0001E */  blez        $a3, .L8005CE6C
/* 05C9A4 8005CDF4 AFA60028 */   sw         $a2, 0x28($sp)
/* 05C9A8 8005CDF8 8CA40044 */  lw          $a0, 0x44($a1)
/* 05C9AC 8005CDFC 8E260034 */  lw          $a2, 0x34($s1)
/* 05C9B0 8005CE00 AFA7002C */  sw          $a3, 0x2c($sp)
/* 05C9B4 8005CE04 8E390030 */  lw          $t9, 0x30($s1)
/* 05C9B8 8005CE08 00E02825 */  move        $a1, $a3
/* 05C9BC 8005CE0C 0320F809 */  jalr        $t9
/* 05C9C0 8005CE10 00000000 */   nop
/* 05C9C4 8005CE14 8FA7002C */  lw          $a3, 0x2c($sp)
/* 05C9C8 8005CE18 30460007 */  andi        $a2, $v0, 0x7
/* 05C9CC 8005CE1C 87AE0036 */  lh          $t6, 0x36($sp)
/* 05C9D0 8005CE20 00E63821 */  addu        $a3, $a3, $a2
/* 05C9D4 8005CE24 30E80007 */  andi        $t0, $a3, 0x7
/* 05C9D8 8005CE28 00E84823 */  subu        $t1, $a3, $t0
/* 05C9DC 8005CE2C 02002025 */  move        $a0, $s0
/* 05C9E0 8005CE30 26100008 */  addiu       $s0, $s0, 0x8
/* 05C9E4 8005CE34 252A0008 */  addiu       $t2, $t1, 0x8
/* 05C9E8 8005CE38 3C010800 */  lui         $at, 0x800
/* 05C9EC 8005CE3C 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 05C9F0 8005CE40 01E1C025 */  or          $t8, $t7, $at
/* 05C9F4 8005CE44 314BFFFF */  andi        $t3, $t2, 0xffff
/* 05C9F8 8005CE48 02002825 */  move        $a1, $s0
/* 05C9FC 8005CE4C AC8B0004 */  sw          $t3, 0x4($a0)
/* 05CA00 8005CE50 AC980000 */  sw          $t8, 0x0($a0)
/* 05CA04 8005CE54 00466823 */  subu        $t5, $v0, $a2
/* 05CA08 8005CE58 3C0C0400 */  lui         $t4, 0x400
/* 05CA0C 8005CE5C ACAC0000 */  sw          $t4, 0x0($a1)
/* 05CA10 8005CE60 ACAD0004 */  sw          $t5, 0x4($a1)
/* 05CA14 8005CE64 10000002 */  b           .L8005CE70
/* 05CA18 8005CE68 26100008 */   addiu      $s0, $s0, 0x8
.L8005CE6C:
/* 05CA1C 8005CE6C 00003025 */  move        $a2, $zero
.L8005CE70:
/* 05CA20 8005CE70 8FA50038 */  lw          $a1, 0x38($sp)
/* 05CA24 8005CE74 02001025 */  move        $v0, $s0
/* 05CA28 8005CE78 3C0E0F00 */  lui         $t6, 0xf00
/* 05CA2C 8005CE7C 30B90002 */  andi        $t9, $a1, 0x2
/* 05CA30 8005CE80 13200007 */  beq         $t9, $zero, .L8005CEA0
/* 05CA34 8005CE84 3C011FFF */   lui        $at, 0x1fff
/* 05CA38 8005CE88 AC4E0000 */  sw          $t6, 0x0($v0)
/* 05CA3C 8005CE8C 8E2F0018 */  lw          $t7, 0x18($s1)
/* 05CA40 8005CE90 3421FFFF */  ori         $at, $at, 0xffff
/* 05CA44 8005CE94 26100008 */  addiu       $s0, $s0, 0x8
/* 05CA48 8005CE98 01E1C024 */  and         $t8, $t7, $at
/* 05CA4C 8005CE9C AC580004 */  sw          $t8, 0x4($v0)
.L8005CEA0:
/* 05CA50 8005CEA0 87A80036 */  lh          $t0, 0x36($sp)
/* 05CA54 8005CEA4 3C010800 */  lui         $at, 0x800
/* 05CA58 8005CEA8 02001825 */  move        $v1, $s0
/* 05CA5C 8005CEAC 01064821 */  addu        $t1, $t0, $a2
/* 05CA60 8005CEB0 312AFFFF */  andi        $t2, $t1, 0xffff
/* 05CA64 8005CEB4 01415825 */  or          $t3, $t2, $at
/* 05CA68 8005CEB8 AC6B0000 */  sw          $t3, 0x0($v1)
/* 05CA6C 8005CEBC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 05CA70 8005CEC0 87AD0032 */  lh          $t5, 0x32($sp)
/* 05CA74 8005CEC4 30A900FF */  andi        $t1, $a1, 0xff
/* 05CA78 8005CEC8 000E7840 */  sll         $t7, $t6, 1
/* 05CA7C 8005CECC 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05CA80 8005CED0 000DCC00 */  sll         $t9, $t5, 16
/* 05CA84 8005CED4 03384025 */  or          $t0, $t9, $t8
/* 05CA88 8005CED8 26100008 */  addiu       $s0, $s0, 0x8
/* 05CA8C 8005CEDC 00095400 */  sll         $t2, $t1, 16
/* 05CA90 8005CEE0 3C010100 */  lui         $at, 0x100
/* 05CA94 8005CEE4 AC680004 */  sw          $t0, 0x4($v1)
/* 05CA98 8005CEE8 01415825 */  or          $t3, $t2, $at
/* 05CA9C 8005CEEC 02002025 */  move        $a0, $s0
/* 05CAA0 8005CEF0 AC8B0000 */  sw          $t3, 0x0($a0)
/* 05CAA4 8005CEF4 8E2C0014 */  lw          $t4, 0x14($s1)
/* 05CAA8 8005CEF8 3C011FFF */  lui         $at, 0x1fff
/* 05CAAC 8005CEFC 3421FFFF */  ori         $at, $at, 0xffff
/* 05CAB0 8005CF00 01816824 */  and         $t5, $t4, $at
/* 05CAB4 8005CF04 AC8D0004 */  sw          $t5, 0x4($a0)
/* 05CAB8 8005CF08 AE200040 */  sw          $zero, 0x40($s1)
/* 05CABC 8005CF0C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05CAC0 8005CF10 26020008 */  addiu       $v0, $s0, 0x8
/* 05CAC4 8005CF14 8FB00014 */  lw          $s0, 0x14($sp)
/* 05CAC8 8005CF18 8FB10018 */  lw          $s1, 0x18($sp)
/* 05CACC 8005CF1C 03E00008 */  jr          $ra
/* 05CAD0 8005CF20 27BD0020 */   addiu      $sp, $sp, 0x20
/* 05CAD4 8005CF24 00000000 */  nop
/* 05CAD8 8005CF28 00000000 */  nop
/* 05CADC 8005CF2C 00000000 */  nop
