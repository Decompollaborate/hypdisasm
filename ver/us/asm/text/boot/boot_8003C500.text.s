.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003C500 # 0
/* 03C0B0 8003C500 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03C0B4 8003C504 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03C0B8 8003C508 3C01800F */  lui         $at, %hi(D_800F2990)
/* 03C0BC 8003C50C AC242990 */  sw          $a0, %lo(D_800F2990)($at)
/* 03C0C0 8003C510 00072880 */  sll         $a1, $a3, 2
/* 03C0C4 8003C514 3C01800F */  lui         $at, %hi(D_800F2984)
/* 03C0C8 8003C518 00A72823 */  subu        $a1, $a1, $a3
/* 03C0CC 8003C51C AFA40018 */  sw          $a0, 0x18($sp)
/* 03C0D0 8003C520 AC272984 */  sw          $a3, %lo(D_800F2984)($at)
/* 03C0D4 8003C524 00052880 */  sll         $a1, $a1, 2
/* 03C0D8 8003C528 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C0DC 8003C52C AFA60020 */  sw          $a2, 0x20($sp)
/* 03C0E0 8003C530 3C01800F */  lui         $at, %hi(D_800F2988)
/* 03C0E4 8003C534 00A72823 */  subu        $a1, $a1, $a3
/* 03C0E8 8003C538 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03C0EC 8003C53C AC202988 */  sw          $zero, %lo(D_800F2988)($at)
/* 03C0F0 8003C540 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03C0F4 8003C544 000528C0 */  sll         $a1, $a1, 3
/* 03C0F8 8003C548 0C00E03D */  jal         func_800380F4
/* 03C0FC 8003C54C 2406004D */   addiu      $a2, $zero, 0x4d
/* 03C100 8003C550 3C01800F */  lui         $at, %hi(D_800F2980)
/* 03C104 8003C554 AC222980 */  sw          $v0, %lo(D_800F2980)($at)
/* 03C108 8003C558 8FAF001C */  lw          $t7, 0x1c($sp)
/* 03C10C 8003C55C 8FB80020 */  lw          $t8, 0x20($sp)
/* 03C110 8003C560 3C03800F */  lui         $v1, %hi(D_800F2998)
/* 03C114 8003C564 3C01800F */  lui         $at, %hi(D_800F298C)
/* 03C118 8003C568 24632998 */  addiu       $v1, $v1, %lo(D_800F2998)
/* 03C11C 8003C56C AC20298C */  sw          $zero, %lo(D_800F298C)($at)
/* 03C120 8003C570 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03C124 8003C574 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03C128 8003C578 24050400 */  addiu       $a1, $zero, 0x400
/* 03C12C 8003C57C 24060055 */  addiu       $a2, $zero, 0x55
/* 03C130 8003C580 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03C134 8003C584 0C00E03D */  jal         func_800380F4
/* 03C138 8003C588 AC780004 */   sw         $t8, 0x4($v1)
/* 03C13C 8003C58C 3C01800F */  lui         $at, %hi(D_800F29A8)
/* 03C140 8003C590 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03C144 8003C594 AC2229A8 */  sw          $v0, %lo(D_800F29A8)($at)
/* 03C148 8003C598 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03C14C 8003C59C 24050C00 */  addiu       $a1, $zero, 0xc00
/* 03C150 8003C5A0 0C00E03D */  jal         func_800380F4
/* 03C154 8003C5A4 24060059 */   addiu      $a2, $zero, 0x59
/* 03C158 8003C5A8 8FA30028 */  lw          $v1, 0x28($sp)
/* 03C15C 8003C5AC 3C01800F */  lui         $at, %hi(D_800F29AC)
/* 03C160 8003C5B0 AC2229AC */  sw          $v0, %lo(D_800F29AC)($at)
/* 03C164 8003C5B4 3C01800F */  lui         $at, %hi(D_800F29A4)
/* 03C168 8003C5B8 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03C16C 8003C5BC 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03C170 8003C5C0 2406005E */  addiu       $a2, $zero, 0x5e
/* 03C174 8003C5C4 AC2329A4 */  sw          $v1, %lo(D_800F29A4)($at)
/* 03C178 8003C5C8 0C00E03D */  jal         func_800380F4
/* 03C17C 8003C5CC 000328C0 */   sll        $a1, $v1, 3
/* 03C180 8003C5D0 3C01800F */  lui         $at, %hi(D_800F29A0)
/* 03C184 8003C5D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03C188 8003C5D8 AC2229A0 */  sw          $v0, %lo(D_800F29A0)($at)
/* 03C18C 8003C5DC 3C02800F */  lui         $v0, %hi(D_800F2980)
/* 03C190 8003C5E0 8C422980 */  lw          $v0, %lo(D_800F2980)($v0)
/* 03C194 8003C5E4 03E00008 */  jr          $ra
/* 03C198 8003C5E8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003C5EC # 1
/* 03C19C 8003C5EC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03C1A0 8003C5F0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03C1A4 8003C5F4 AFB00018 */  sw          $s0, 0x18($sp)
/* 03C1A8 8003C5F8 AFA60040 */  sw          $a2, 0x40($sp)
/* 03C1AC 8003C5FC 8CE20000 */  lw          $v0, 0x0($a3)
/* 03C1B0 8003C600 3C0FE900 */  lui         $t7, 0xe900
/* 03C1B4 8003C604 3C0B800F */  lui         $t3, %hi(D_800F2988)
/* 03C1B8 8003C608 244E0008 */  addiu       $t6, $v0, 0x8
/* 03C1BC 8003C60C ACEE0000 */  sw          $t6, 0x0($a3)
/* 03C1C0 8003C610 AC400004 */  sw          $zero, 0x4($v0)
/* 03C1C4 8003C614 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03C1C8 8003C618 8CE20000 */  lw          $v0, 0x0($a3)
/* 03C1CC 8003C61C 3C19DF00 */  lui         $t9, 0xdf00
/* 03C1D0 8003C620 256B2988 */  addiu       $t3, $t3, %lo(D_800F2988)
/* 03C1D4 8003C624 24580008 */  addiu       $t8, $v0, 0x8
/* 03C1D8 8003C628 ACF80000 */  sw          $t8, 0x0($a3)
/* 03C1DC 8003C62C AC400004 */  sw          $zero, 0x4($v0)
/* 03C1E0 8003C630 AC590000 */  sw          $t9, 0x0($v0)
/* 03C1E4 8003C634 8D6F0000 */  lw          $t7, 0x0($t3)
/* 03C1E8 8003C638 3C19800F */  lui         $t9, %hi(D_800F2980)
/* 03C1EC 8003C63C 8FAD0040 */  lw          $t5, 0x40($sp)
/* 03C1F0 8003C640 000FC080 */  sll         $t8, $t7, 2
/* 03C1F4 8003C644 030FC023 */  subu        $t8, $t8, $t7
/* 03C1F8 8003C648 8F392980 */  lw          $t9, %lo(D_800F2980)($t9)
/* 03C1FC 8003C64C 0018C080 */  sll         $t8, $t8, 2
/* 03C200 8003C650 030FC023 */  subu        $t8, $t8, $t7
/* 03C204 8003C654 0018C0C0 */  sll         $t8, $t8, 3
/* 03C208 8003C658 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03C20C 8003C65C 8DA90000 */  lw          $t1, 0x0($t5)
/* 03C210 8003C660 03198021 */  addu        $s0, $t8, $t9
/* 03C214 8003C664 3C0C8006 */  lui         $t4, %hi(func_80060050)
/* 03C218 8003C668 01C95023 */  subu        $t2, $t6, $t1
/* 03C21C 8003C66C 3C0E8006 */  lui         $t6, %hi(func_80060120)
/* 03C220 8003C670 258C0050 */  addiu       $t4, $t4, %lo(func_80060050)
/* 03C224 8003C674 25CE0120 */  addiu       $t6, $t6, %lo(func_80060120)
/* 03C228 8003C678 3C19800A */  lui         $t9, %hi(D_8009D41C)
/* 03C22C 8003C67C 240D0001 */  addiu       $t5, $zero, 0x1
/* 03C230 8003C680 01CC7823 */  subu        $t7, $t6, $t4
/* 03C234 8003C684 2739D41C */  addiu       $t9, $t9, %lo(D_8009D41C)
/* 03C238 8003C688 0004C100 */  sll         $t8, $a0, 4
/* 03C23C 8003C68C AE0A0044 */  sw          $t2, 0x44($s0)
/* 03C240 8003C690 AE0D0010 */  sw          $t5, 0x10($s0)
/* 03C244 8003C694 AE000014 */  sw          $zero, 0x14($s0)
/* 03C248 8003C698 AE0C0018 */  sw          $t4, 0x18($s0)
/* 03C24C 8003C69C AE0F001C */  sw          $t7, 0x1c($s0)
/* 03C250 8003C6A0 03191021 */  addu        $v0, $t8, $t9
/* 03C254 8003C6A4 AE090040 */  sw          $t1, 0x40($s0)
/* 03C258 8003C6A8 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03C25C 8003C6AC 240F0800 */  addiu       $t7, $zero, 0x800
/* 03C260 8003C6B0 3C18800F */  lui         $t8, %hi(D_800F29A8)
/* 03C264 8003C6B4 AE0D0020 */  sw          $t5, 0x20($s0)
/* 03C268 8003C6B8 8C4E0004 */  lw          $t6, 0x4($v0)
/* 03C26C 8003C6BC AE0F002C */  sw          $t7, 0x2c($s0)
/* 03C270 8003C6C0 3C03800F */  lui         $v1, %hi(D_800F29A0)
/* 03C274 8003C6C4 AE0E0028 */  sw          $t6, 0x28($s0)
/* 03C278 8003C6C8 8F1829A8 */  lw          $t8, %lo(D_800F29A8)($t8)
/* 03C27C 8003C6CC 24190400 */  addiu       $t9, $zero, 0x400
/* 03C280 8003C6D0 246329A0 */  addiu       $v1, $v1, %lo(D_800F29A0)
/* 03C284 8003C6D4 AE190034 */  sw          $t9, 0x34($s0)
/* 03C288 8003C6D8 AE180030 */  sw          $t8, 0x30($s0)
/* 03C28C 8003C6DC 8C6D0000 */  lw          $t5, 0x0($v1)
/* 03C290 8003C6E0 3C0F800F */  lui         $t7, %hi(D_800F29A4)
/* 03C294 8003C6E4 AE0D0038 */  sw          $t5, 0x38($s0)
/* 03C298 8003C6E8 8C4E0008 */  lw          $t6, 0x8($v0)
/* 03C29C 8003C6EC 11C00007 */  beqz        $t6, .L8003C70C
/* 03C2A0 8003C6F0 00000000 */   nop
/* 03C2A4 8003C6F4 8DEF29A4 */  lw          $t7, %lo(D_800F29A4)($t7)
/* 03C2A8 8003C6F8 8C790000 */  lw          $t9, 0x0($v1)
/* 03C2AC 8003C6FC 000FC0C0 */  sll         $t8, $t7, 3
/* 03C2B0 8003C700 03196821 */  addu        $t5, $t8, $t9
/* 03C2B4 8003C704 10000004 */  b           .L8003C718
/* 03C2B8 8003C708 AE0D003C */   sw         $t5, 0x3c($s0)
.L8003C70C:
/* 03C2BC 8003C70C 3C0E800F */  lui         $t6, %hi(D_800F29A4)
/* 03C2C0 8003C710 8DCE29A4 */  lw          $t6, %lo(D_800F29A4)($t6)
/* 03C2C4 8003C714 AE0E003C */  sw          $t6, 0x3c($s0)
.L8003C718:
/* 03C2C8 8003C718 3C0F800F */  lui         $t7, %hi(D_800F29AC)
/* 03C2CC 8003C71C 8DEF29AC */  lw          $t7, %lo(D_800F29AC)($t7)
/* 03C2D0 8003C720 24180C00 */  addiu       $t8, $zero, 0xc00
/* 03C2D4 8003C724 AE18004C */  sw          $t8, 0x4c($s0)
/* 03C2D8 8003C728 AE000000 */  sw          $zero, 0x0($s0)
/* 03C2DC 8003C72C AE050008 */  sw          $a1, 0x8($s0)
/* 03C2E0 8003C730 AE0F0048 */  sw          $t7, 0x48($s0)
/* 03C2E4 8003C734 8FB90048 */  lw          $t9, 0x48($sp)
/* 03C2E8 8003C738 30A20040 */  andi        $v0, $a1, 0x40
/* 03C2EC 8003C73C 10400005 */  beqz        $v0, .L8003C754
/* 03C2F0 8003C740 AE190050 */   sw         $t9, 0x50($s0)
/* 03C2F4 8003C744 3C0D800A */  lui         $t5, %hi(D_8009D418)
/* 03C2F8 8003C748 25ADD418 */  addiu       $t5, $t5, %lo(D_8009D418)
/* 03C2FC 8003C74C 10000004 */  b           .L8003C760
/* 03C300 8003C750 AE0D0054 */   sw         $t5, 0x54($s0)
.L8003C754:
/* 03C304 8003C754 3C0E800A */  lui         $t6, %hi(D_8009D414)
/* 03C308 8003C758 25CED414 */  addiu       $t6, $t6, %lo(D_8009D414)
/* 03C30C 8003C75C AE0E0054 */  sw          $t6, 0x54($s0)
.L8003C760:
/* 03C310 8003C760 3C0F800F */  lui         $t7, %hi(D_800F298C)
/* 03C314 8003C764 8DEF298C */  lw          $t7, %lo(D_800F298C)($t7)
/* 03C318 8003C768 3C19800F */  lui         $t9, %hi(D_800F2998)
/* 03C31C 8003C76C 000FC080 */  sll         $t8, $t7, 2
/* 03C320 8003C770 0338C821 */  addu        $t9, $t9, $t8
/* 03C324 8003C774 8F392998 */  lw          $t9, %lo(D_800F2998)($t9)
/* 03C328 8003C778 AE19000C */  sw          $t9, 0xc($s0)
/* 03C32C 8003C77C AFA70044 */  sw          $a3, 0x44($sp)
/* 03C330 8003C780 0C0150F4 */  jal         osWritebackDCacheAll
/* 03C334 8003C784 AFA20024 */   sw         $v0, 0x24($sp)
/* 03C338 8003C788 3C04800F */  lui         $a0, %hi(D_800F2990)
/* 03C33C 8003C78C 8C842990 */  lw          $a0, %lo(D_800F2990)($a0)
/* 03C340 8003C790 02002825 */  move        $a1, $s0
/* 03C344 8003C794 0C014C64 */  jal         osSendMesg
/* 03C348 8003C798 24060001 */   addiu      $a2, $zero, 0x1
/* 03C34C 8003C79C 8FA20024 */  lw          $v0, 0x24($sp)
/* 03C350 8003C7A0 3C0B800F */  lui         $t3, %hi(D_800F2988)
/* 03C354 8003C7A4 256B2988 */  addiu       $t3, $t3, %lo(D_800F2988)
/* 03C358 8003C7A8 10400006 */  beqz        $v0, .L8003C7C4
/* 03C35C 8003C7AC 8FA70044 */   lw         $a3, 0x44($sp)
/* 03C360 8003C7B0 3C02800F */  lui         $v0, %hi(D_800F298C)
/* 03C364 8003C7B4 2442298C */  addiu       $v0, $v0, %lo(D_800F298C)
/* 03C368 8003C7B8 8C4D0000 */  lw          $t5, 0x0($v0)
/* 03C36C 8003C7BC 39AE0001 */  xori        $t6, $t5, 0x1
/* 03C370 8003C7C0 AC4E0000 */  sw          $t6, 0x0($v0)
.L8003C7C4:
/* 03C374 8003C7C4 8D6F0000 */  lw          $t7, 0x0($t3)
/* 03C378 8003C7C8 3C0D800F */  lui         $t5, %hi(D_800F2984)
/* 03C37C 8003C7CC 25F80001 */  addiu       $t8, $t7, 0x1
/* 03C380 8003C7D0 AD780000 */  sw          $t8, 0x0($t3)
/* 03C384 8003C7D4 8DAD2984 */  lw          $t5, %lo(D_800F2984)($t5)
/* 03C388 8003C7D8 030D082A */  slt         $at, $t8, $t5
/* 03C38C 8003C7DC 54200003 */  bnel        $at, $zero, .L8003C7EC
/* 03C390 8003C7E0 8CEE0000 */   lw         $t6, 0x0($a3)
/* 03C394 8003C7E4 AD600000 */  sw          $zero, 0x0($t3)
/* 03C398 8003C7E8 8CEE0000 */  lw          $t6, 0x0($a3)
.L8003C7EC:
/* 03C39C 8003C7EC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 03C3A0 8003C7F0 ADEE0000 */  sw          $t6, 0x0($t7)
/* 03C3A4 8003C7F4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03C3A8 8003C7F8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03C3AC 8003C7FC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03C3B0 8003C800 03E00008 */  jr          $ra
/* 03C3B4 8003C804 00000000 */   nop

glabel func_8003C808 # 2
/* 03C3B8 8003C808 00047100 */  sll         $t6, $a0, 4
/* 03C3BC 8003C80C 3C03800A */  lui         $v1, %hi(D_8009D420)
/* 03C3C0 8003C810 006E1821 */  addu        $v1, $v1, $t6
/* 03C3C4 8003C814 3C05800A */  lui         $a1, %hi(D_8009D43C)
/* 03C3C8 8003C818 3C08800A */  lui         $t0, %hi(D_8009D43C)
/* 03C3CC 8003C81C 8C63D420 */  lw          $v1, %lo(D_8009D420)($v1)
/* 03C3D0 8003C820 2508D43C */  addiu       $t0, $t0, %lo(D_8009D43C)
/* 03C3D4 8003C824 90A5D43C */  lbu         $a1, %lo(D_8009D43C)($a1)
/* 03C3D8 8003C828 00001025 */  move        $v0, $zero
/* 03C3DC 8003C82C 24091000 */  addiu       $t1, $zero, 0x1000
.L8003C830:
/* 03C3E0 8003C830 906F0000 */  lbu         $t7, 0x0($v1)
/* 03C3E4 8003C834 24420001 */  addiu       $v0, $v0, 0x1
/* 03C3E8 8003C838 00002025 */  move        $a0, $zero
/* 03C3EC 8003C83C 15E50009 */  bne         $t7, $a1, .L8003C864
/* 03C3F0 8003C840 00603025 */   move       $a2, $v1
/* 03C3F4 8003C844 3C07800A */  lui         $a3, %hi(D_8009D43C)
/* 03C3F8 8003C848 24E7D43C */  addiu       $a3, $a3, %lo(D_8009D43C)
.L8003C84C:
/* 03C3FC 8003C84C 90D80001 */  lbu         $t8, 0x1($a2)
/* 03C400 8003C850 90F90001 */  lbu         $t9, 0x1($a3)
/* 03C404 8003C854 24840001 */  addiu       $a0, $a0, 0x1
/* 03C408 8003C858 24C60001 */  addiu       $a2, $a2, 0x1
/* 03C40C 8003C85C 1319FFFB */  beq         $t8, $t9, .L8003C84C
/* 03C410 8003C860 24E70001 */   addiu      $a3, $a3, 0x1
.L8003C864:
/* 03C414 8003C864 01045021 */  addu        $t2, $t0, $a0
/* 03C418 8003C868 914B0000 */  lbu         $t3, 0x0($t2)
/* 03C41C 8003C86C 15600003 */  bnez        $t3, .L8003C87C
/* 03C420 8003C870 00000000 */   nop
/* 03C424 8003C874 03E00008 */  jr          $ra
/* 03C428 8003C878 00601025 */   move       $v0, $v1
.L8003C87C:
/* 03C42C 8003C87C 1449FFEC */  bne         $v0, $t1, .L8003C830
/* 03C430 8003C880 24630001 */   addiu      $v1, $v1, 0x1
/* 03C434 8003C884 3C02800A */  lui         $v0, %hi(D_8009D44C)
/* 03C438 8003C888 2442D44C */  addiu       $v0, $v0, %lo(D_8009D44C)
/* 03C43C 8003C88C 03E00008 */  jr          $ra
/* 03C440 8003C890 00000000 */   nop

glabel func_8003C894 # 3
/* 03C444 8003C894 03E00008 */  jr          $ra
/* 03C448 8003C898 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8003C89C # 4
/* 03C44C 8003C89C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03C450 8003C8A0 AFA40018 */  sw          $a0, 0x18($sp)
/* 03C454 8003C8A4 3C04800F */  lui         $a0, %hi(D_800F29B0)
/* 03C458 8003C8A8 248429B0 */  addiu       $a0, $a0, %lo(D_800F29B0)
/* 03C45C 8003C8AC AFA5001C */  sw          $a1, 0x1c($sp)
/* 03C460 8003C8B0 AFA60020 */  sw          $a2, 0x20($sp)
/* 03C464 8003C8B4 27AE0018 */  addiu       $t6, $sp, 0x18
/* 03C468 8003C8B8 8FA6006C */  lw          $a2, 0x6c($sp)
/* 03C46C 8003C8BC 8FA50068 */  lw          $a1, 0x68($sp)
/* 03C470 8003C8C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C474 8003C8C4 AFA70024 */  sw          $a3, 0x24($sp)
/* 03C478 8003C8C8 240300F0 */  addiu       $v1, $zero, 0xf0
/* 03C47C 8003C8CC 25D90048 */  addiu       $t9, $t6, 0x48
/* 03C480 8003C8D0 00804025 */  move        $t0, $a0
.L8003C8D4:
/* 03C484 8003C8D4 8DC10000 */  lw          $at, 0x0($t6)
/* 03C488 8003C8D8 25CE000C */  addiu       $t6, $t6, 0xc
/* 03C48C 8003C8DC 2508000C */  addiu       $t0, $t0, 0xc
/* 03C490 8003C8E0 AD01FFF4 */  sw          $at, -0xc($t0)
/* 03C494 8003C8E4 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 03C498 8003C8E8 AD01FFF8 */  sw          $at, -0x8($t0)
/* 03C49C 8003C8EC 8DC1FFFC */  lw          $at, -0x4($t6)
/* 03C4A0 8003C8F0 15D9FFF8 */  bne         $t6, $t9, .L8003C8D4
/* 03C4A4 8003C8F4 AD01FFFC */   sw         $at, -0x4($t0)
/* 03C4A8 8003C8F8 00A60019 */  multu       $a1, $a2
/* 03C4AC 8003C8FC 8DC10000 */  lw          $at, 0x0($t6)
/* 03C4B0 8003C900 00055A80 */  sll         $t3, $a1, 10
/* 03C4B4 8003C904 AD010000 */  sw          $at, 0x0($t0)
/* 03C4B8 8003C908 8DD90004 */  lw          $t9, 0x4($t6)
/* 03C4BC 8003C90C AD190004 */  sw          $t9, 0x4($t0)
/* 03C4C0 8003C910 8FAD0070 */  lw          $t5, 0x70($sp)
/* 03C4C4 8003C914 00004812 */  mflo        $t1
/* 03C4C8 8003C918 00000000 */  nop
/* 03C4CC 8003C91C 00000000 */  nop
/* 03C4D0 8003C920 0123001A */  div         $zero, $t1, $v1
/* 03C4D4 8003C924 14600002 */  bnez        $v1, .L8003C930
/* 03C4D8 8003C928 00000000 */   nop
/* 03C4DC 8003C92C 0007000D */  break       7
.L8003C930:
/* 03C4E0 8003C930 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C4E4 8003C934 14610004 */  bne         $v1, $at, .L8003C948
/* 03C4E8 8003C938 3C018000 */   lui        $at, 0x8000
/* 03C4EC 8003C93C 15210002 */  bne         $t1, $at, .L8003C948
/* 03C4F0 8003C940 00000000 */   nop
/* 03C4F4 8003C944 0006000D */  break       6
.L8003C948:
/* 03C4F8 8003C948 00005012 */  mflo        $t2
/* 03C4FC 8003C94C 3C01800F */  lui         $at, %hi(D_800F29B8)
/* 03C500 8003C950 AC2A29B8 */  sw          $t2, %lo(D_800F29B8)($at)
/* 03C504 8003C954 24010280 */  addiu       $at, $zero, 0x280
/* 03C508 8003C958 0161001A */  div         $zero, $t3, $at
/* 03C50C 8003C95C 00006012 */  mflo        $t4
/* 03C510 8003C960 3C01800F */  lui         $at, %hi(D_800F29D0)
/* 03C514 8003C964 AC2C29D0 */  sw          $t4, %lo(D_800F29D0)($at)
/* 03C518 8003C968 05A10003 */  bgez        $t5, .L8003C978
/* 03C51C 8003C96C 000DC0C3 */   sra        $t8, $t5, 3
/* 03C520 8003C970 25A10007 */  addiu       $at, $t5, 0x7
/* 03C524 8003C974 0001C0C3 */  sra         $t8, $at, 3
.L8003C978:
/* 03C528 8003C978 03050019 */  multu       $t8, $a1
/* 03C52C 8003C97C 00001012 */  mflo        $v0
/* 03C530 8003C980 AC820028 */  sw          $v0, 0x28($a0)
/* 03C534 8003C984 00000000 */  nop
/* 03C538 8003C988 00460019 */  multu       $v0, $a2
/* 03C53C 8003C98C 00007812 */  mflo        $t7
/* 03C540 8003C990 00000000 */  nop
/* 03C544 8003C994 00000000 */  nop
/* 03C548 8003C998 01E3001A */  div         $zero, $t7, $v1
/* 03C54C 8003C99C 0000C812 */  mflo        $t9
/* 03C550 8003C9A0 AC99003C */  sw          $t9, 0x3c($a0)
/* 03C554 8003C9A4 14600002 */  bnez        $v1, .L8003C9B0
/* 03C558 8003C9A8 00000000 */   nop
/* 03C55C 8003C9AC 0007000D */  break       7
.L8003C9B0:
/* 03C560 8003C9B0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C564 8003C9B4 14610004 */  bne         $v1, $at, .L8003C9C8
/* 03C568 8003C9B8 3C018000 */   lui        $at, 0x8000
/* 03C56C 8003C9BC 15E10002 */  bne         $t7, $at, .L8003C9C8
/* 03C570 8003C9C0 00000000 */   nop
/* 03C574 8003C9C4 0006000D */  break       6
.L8003C9C8:
/* 03C578 8003C9C8 0C014D58 */  jal         osViSetMode
/* 03C57C 8003C9CC 00000000 */   nop
/* 03C580 8003C9D0 0C014D70 */  jal         osViBlack
/* 03C584 8003C9D4 24040001 */   addiu      $a0, $zero, 0x1
/* 03C588 8003C9D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03C58C 8003C9DC 8FAE0068 */  lw          $t6, 0x68($sp)
/* 03C590 8003C9E0 3C01800A */  lui         $at, %hi(D_8009D410)
/* 03C594 8003C9E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03C598 8003C9E8 03E00008 */  jr          $ra
/* 03C59C 8003C9EC AC2ED410 */   sw         $t6, %lo(D_8009D410)($at)

glabel func_8003C9F0 # 5
/* 03C5A0 8003C9F0 00E51023 */  subu        $v0, $a3, $a1
/* 03C5A4 8003C9F4 00024040 */  sll         $t0, $v0, 1
/* 03C5A8 8003C9F8 250E0002 */  addiu       $t6, $t0, 0x2
/* 03C5AC 8003C9FC A48E0000 */  sh          $t6, 0x0($a0)
/* 03C5B0 8003CA00 8FAF0010 */  lw          $t7, 0x10($sp)
/* 03C5B4 8003CA04 0005C880 */  sll         $t9, $a1, 2
/* 03C5B8 8003CA08 03285821 */  addu        $t3, $t9, $t0
/* 03C5BC 8003CA0C 01E61823 */  subu        $v1, $t7, $a2
/* 03C5C0 8003CA10 00034840 */  sll         $t1, $v1, 1
/* 03C5C4 8003CA14 24590001 */  addiu       $t9, $v0, 0x1
/* 03C5C8 8003CA18 44992000 */  mtc1        $t9, $f4
/* 03C5CC 8003CA1C 25380002 */  addiu       $t8, $t1, 0x2
/* 03C5D0 8003CA20 A4980002 */  sh          $t8, 0x2($a0)
/* 03C5D4 8003CA24 A480000E */  sh          $zero, 0xe($a0)
/* 03C5D8 8003CA28 8498000E */  lh          $t8, 0xe($a0)
/* 03C5DC 8003CA2C 00066880 */  sll         $t5, $a2, 2
/* 03C5E0 8003CA30 468021A0 */  cvt.s.w     $f6, $f4
/* 03C5E4 8003CA34 240A01FF */  addiu       $t2, $zero, 0x1ff
/* 03C5E8 8003CA38 01A97021 */  addu        $t6, $t5, $t1
/* 03C5EC 8003CA3C 25CF0002 */  addiu       $t7, $t6, 0x2
/* 03C5F0 8003CA40 256C0002 */  addiu       $t4, $t3, 0x2
/* 03C5F4 8003CA44 A48A0004 */  sh          $t2, 0x4($a0)
/* 03C5F8 8003CA48 A48C0008 */  sh          $t4, 0x8($a0)
/* 03C5FC 8003CA4C A48F000A */  sh          $t7, 0xa($a0)
/* 03C600 8003CA50 A48A000C */  sh          $t2, 0xc($a0)
/* 03C604 8003CA54 A4980006 */  sh          $t8, 0x6($a0)
/* 03C608 8003CA58 C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 03C60C 8003CA5C 246B0001 */  addiu       $t3, $v1, 0x1
/* 03C610 8003CA60 448B8000 */  mtc1        $t3, $f16
/* 03C614 8003CA64 46083282 */  mul.s       $f10, $f6, $f8
/* 03C618 8003CA68 8FAC0018 */  lw          $t4, 0x18($sp)
/* 03C61C 8003CA6C 8FAD0014 */  lw          $t5, 0x14($sp)
/* 03C620 8003CA70 448C3000 */  mtc1        $t4, $f6
/* 03C624 8003CA74 468084A0 */  cvt.s.w     $f18, $f16
/* 03C628 8003CA78 46803220 */  cvt.s.w     $f8, $f6
/* 03C62C 8003CA7C 46125103 */  div.s       $f4, $f10, $f18
/* 03C630 8003CA80 448D5000 */  mtc1        $t5, $f10
/* 03C634 8003CA84 00000000 */  nop
/* 03C638 8003CA88 468054A0 */  cvt.s.w     $f18, $f10
/* 03C63C 8003CA8C 46082402 */  mul.s       $f16, $f4, $f8
/* 03C640 8003CA90 03E00008 */  jr          $ra
/* 03C644 8003CA94 46128003 */   div.s      $f0, $f16, $f18

glabel func_8003CA98 # 6
/* 03C648 8003CA98 27BDFEE8 */  addiu       $sp, $sp, -0x118
/* 03C64C 8003CA9C 3C0F800A */  lui         $t7, %hi(D_8009D454)
/* 03C650 8003CAA0 AFB00008 */  sw          $s0, 0x8($sp)
/* 03C654 8003CAA4 3C02800A */  lui         $v0, %hi(D_8009D410)
/* 03C658 8003CAA8 25EFD454 */  addiu       $t7, $t7, %lo(D_8009D454)
/* 03C65C 8003CAAC 2442D410 */  addiu       $v0, $v0, %lo(D_8009D410)
/* 03C660 8003CAB0 00808025 */  move        $s0, $a0
/* 03C664 8003CAB4 AFB5001C */  sw          $s5, 0x1c($sp)
/* 03C668 8003CAB8 AFB40018 */  sw          $s4, 0x18($sp)
/* 03C66C 8003CABC AFB30014 */  sw          $s3, 0x14($sp)
/* 03C670 8003CAC0 AFB20010 */  sw          $s2, 0x10($sp)
/* 03C674 8003CAC4 AFB1000C */  sw          $s1, 0xc($sp)
/* 03C678 8003CAC8 AFA60120 */  sw          $a2, 0x120($sp)
/* 03C67C 8003CACC 25F900B4 */  addiu       $t9, $t7, 0xb4
/* 03C680 8003CAD0 27AE0058 */  addiu       $t6, $sp, 0x58
.L8003CAD4:
/* 03C684 8003CAD4 8DE10000 */  lw          $at, 0x0($t7)
/* 03C688 8003CAD8 25EF000C */  addiu       $t7, $t7, 0xc
/* 03C68C 8003CADC 25CE000C */  addiu       $t6, $t6, 0xc
/* 03C690 8003CAE0 ADC1FFF4 */  sw          $at, -0xc($t6)
/* 03C694 8003CAE4 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 03C698 8003CAE8 ADC1FFF8 */  sw          $at, -0x8($t6)
/* 03C69C 8003CAEC 8DE1FFFC */  lw          $at, -0x4($t7)
/* 03C6A0 8003CAF0 15F9FFF8 */  bne         $t7, $t9, .L8003CAD4
/* 03C6A4 8003CAF4 ADC1FFFC */   sw         $at, -0x4($t6)
/* 03C6A8 8003CAF8 8DE10000 */  lw          $at, 0x0($t7)
/* 03C6AC 8003CAFC 8DF90004 */  lw          $t9, 0x4($t7)
/* 03C6B0 8003CB00 3C08800F */  lui         $t0, %hi(D_800F2998)
/* 03C6B4 8003CB04 ADC10000 */  sw          $at, 0x0($t6)
/* 03C6B8 8003CB08 95E10008 */  lhu         $at, 0x8($t7)
/* 03C6BC 8003CB0C ADD90004 */  sw          $t9, 0x4($t6)
/* 03C6C0 8003CB10 3C0A800F */  lui         $t2, %hi(D_800F29A0)
/* 03C6C4 8003CB14 A5C10008 */  sh          $at, 0x8($t6)
/* 03C6C8 8003CB18 8C4B0000 */  lw          $t3, 0x0($v0)
/* 03C6CC 8003CB1C 254A29A0 */  addiu       $t2, $t2, %lo(D_800F29A0)
/* 03C6D0 8003CB20 25082998 */  addiu       $t0, $t0, %lo(D_800F2998)
/* 03C6D4 8003CB24 1160007A */  beqz        $t3, .L8003CD10
/* 03C6D8 8003CB28 00054840 */   sll        $t1, $a1, 1
/* 03C6DC 8003CB2C 2407003A */  addiu       $a3, $zero, 0x3a
/* 03C6E0 8003CB30 24040005 */  addiu       $a0, $zero, 0x5
/* 03C6E4 8003CB34 24030008 */  addiu       $v1, $zero, 0x8
/* 03C6E8 8003CB38 8FB90120 */  lw          $t9, 0x120($sp)
.L8003CB3C:
/* 03C6EC 8003CB3C 8D180000 */  lw          $t8, 0x0($t0)
/* 03C6F0 8003CB40 25080004 */  addiu       $t0, $t0, 0x4
/* 03C6F4 8003CB44 01790019 */  multu       $t3, $t9
/* 03C6F8 8003CB48 02002825 */  move        $a1, $s0
/* 03C6FC 8003CB4C 00007812 */  mflo        $t7
/* 03C700 8003CB50 000F7040 */  sll         $t6, $t7, 1
/* 03C704 8003CB54 920F0000 */  lbu         $t7, 0x0($s0)
/* 03C708 8003CB58 030EC821 */  addu        $t9, $t8, $t6
/* 03C70C 8003CB5C 03293021 */  addu        $a2, $t9, $t1
/* 03C710 8003CB60 11E00069 */  beqz        $t7, .L8003CD08
/* 03C714 8003CB64 00000000 */   nop
/* 03C718 8003CB68 90AC0000 */  lbu         $t4, 0x0($a1)
/* 03C71C 8003CB6C 318B00FF */  andi        $t3, $t4, 0xff
.L8003CB70:
/* 03C720 8003CB70 29610030 */  slti        $at, $t3, 0x30
/* 03C724 8003CB74 14200007 */  bnez        $at, .L8003CB94
/* 03C728 8003CB78 01606825 */   move       $t5, $t3
/* 03C72C 8003CB7C 2961003A */  slti        $at, $t3, 0x3a
/* 03C730 8003CB80 10200004 */  beqz        $at, .L8003CB94
/* 03C734 8003CB84 256BFFD0 */   addiu      $t3, $t3, -0x30
/* 03C738 8003CB88 317800FF */  andi        $t8, $t3, 0xff
/* 03C73C 8003CB8C 10000015 */  b           .L8003CBE4
/* 03C740 8003CB90 03005825 */   move       $t3, $t8
.L8003CB94:
/* 03C744 8003CB94 29A10061 */  slti        $at, $t5, 0x61
/* 03C748 8003CB98 14200006 */  bnez        $at, .L8003CBB4
/* 03C74C 8003CB9C 29A1007B */   slti       $at, $t5, 0x7b
/* 03C750 8003CBA0 10200004 */  beqz        $at, .L8003CBB4
/* 03C754 8003CBA4 25ABFFA9 */   addiu      $t3, $t5, -0x57
/* 03C758 8003CBA8 316E00FF */  andi        $t6, $t3, 0xff
/* 03C75C 8003CBAC 1000000D */  b           .L8003CBE4
/* 03C760 8003CBB0 01C05825 */   move       $t3, $t6
.L8003CBB4:
/* 03C764 8003CBB4 29A10041 */  slti        $at, $t5, 0x41
/* 03C768 8003CBB8 14200006 */  bnez        $at, .L8003CBD4
/* 03C76C 8003CBBC 29A1005B */   slti       $at, $t5, 0x5b
/* 03C770 8003CBC0 10200004 */  beqz        $at, .L8003CBD4
/* 03C774 8003CBC4 25ABFFC9 */   addiu      $t3, $t5, -0x37
/* 03C778 8003CBC8 317900FF */  andi        $t9, $t3, 0xff
/* 03C77C 8003CBCC 10000005 */  b           .L8003CBE4
/* 03C780 8003CBD0 03205825 */   move       $t3, $t9
.L8003CBD4:
/* 03C784 8003CBD4 14ED0003 */  bne         $a3, $t5, .L8003CBE4
/* 03C788 8003CBD8 240B0024 */   addiu      $t3, $zero, 0x24
/* 03C78C 8003CBDC 10000001 */  b           .L8003CBE4
/* 03C790 8003CBE0 240B0025 */   addiu      $t3, $zero, 0x25
.L8003CBE4:
/* 03C794 8003CBE4 000B7880 */  sll         $t7, $t3, 2
/* 03C798 8003CBE8 01EB7821 */  addu        $t7, $t7, $t3
/* 03C79C 8003CBEC 27B80058 */  addiu       $t8, $sp, 0x58
/* 03C7A0 8003CBF0 01F89021 */  addu        $s2, $t7, $t8
/* 03C7A4 8003CBF4 00006025 */  move        $t4, $zero
/* 03C7A8 8003CBF8 00C06825 */  move        $t5, $a2
.L8003CBFC:
/* 03C7AC 8003CBFC 00005825 */  move        $t3, $zero
/* 03C7B0 8003CC00 92510000 */  lbu         $s1, 0x0($s2)
/* 03C7B4 8003CC04 01A0A825 */  move        $s5, $t5
.L8003CC08:
/* 03C7B8 8003CC08 322E0080 */  andi        $t6, $s1, 0x80
/* 03C7BC 8003CC0C 11C00003 */  beqz        $t6, .L8003CC1C
/* 03C7C0 8003CC10 02209825 */   move       $s3, $s1
/* 03C7C4 8003CC14 10000002 */  b           .L8003CC20
/* 03C7C8 8003CC18 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003CC1C:
/* 03C7CC 8003CC1C 24140001 */  addiu       $s4, $zero, 0x1
.L8003CC20:
/* 03C7D0 8003CC20 A6B40000 */  sh          $s4, 0x0($s5)
/* 03C7D4 8003CC24 8C590000 */  lw          $t9, 0x0($v0)
/* 03C7D8 8003CC28 00138840 */  sll         $s1, $s3, 1
/* 03C7DC 8003CC2C 323300FF */  andi        $s3, $s1, 0xff
/* 03C7E0 8003CC30 00197840 */  sll         $t7, $t9, 1
/* 03C7E4 8003CC34 32790080 */  andi        $t9, $s3, 0x80
/* 03C7E8 8003CC38 02AFC021 */  addu        $t8, $s5, $t7
/* 03C7EC 8003CC3C 13200003 */  beqz        $t9, .L8003CC4C
/* 03C7F0 8003CC40 A7140000 */   sh         $s4, 0x0($t8)
/* 03C7F4 8003CC44 10000002 */  b           .L8003CC50
/* 03C7F8 8003CC48 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003CC4C:
/* 03C7FC 8003CC4C 24140001 */  addiu       $s4, $zero, 0x1
.L8003CC50:
/* 03C800 8003CC50 A6B40002 */  sh          $s4, 0x2($s5)
/* 03C804 8003CC54 8C4F0000 */  lw          $t7, 0x0($v0)
/* 03C808 8003CC58 00138840 */  sll         $s1, $s3, 1
/* 03C80C 8003CC5C 323300FF */  andi        $s3, $s1, 0xff
/* 03C810 8003CC60 000FC040 */  sll         $t8, $t7, 1
/* 03C814 8003CC64 02B87021 */  addu        $t6, $s5, $t8
/* 03C818 8003CC68 326F0080 */  andi        $t7, $s3, 0x80
/* 03C81C 8003CC6C 11E00003 */  beqz        $t7, .L8003CC7C
/* 03C820 8003CC70 A5D40002 */   sh         $s4, 0x2($t6)
/* 03C824 8003CC74 10000002 */  b           .L8003CC80
/* 03C828 8003CC78 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003CC7C:
/* 03C82C 8003CC7C 24140001 */  addiu       $s4, $zero, 0x1
.L8003CC80:
/* 03C830 8003CC80 A6B40004 */  sh          $s4, 0x4($s5)
/* 03C834 8003CC84 8C580000 */  lw          $t8, 0x0($v0)
/* 03C838 8003CC88 00138840 */  sll         $s1, $s3, 1
/* 03C83C 8003CC8C 323300FF */  andi        $s3, $s1, 0xff
/* 03C840 8003CC90 00187040 */  sll         $t6, $t8, 1
/* 03C844 8003CC94 02AEC821 */  addu        $t9, $s5, $t6
/* 03C848 8003CC98 32780080 */  andi        $t8, $s3, 0x80
/* 03C84C 8003CC9C 13000003 */  beqz        $t8, .L8003CCAC
/* 03C850 8003CCA0 A7340004 */   sh         $s4, 0x4($t9)
/* 03C854 8003CCA4 10000002 */  b           .L8003CCB0
/* 03C858 8003CCA8 3414FFFF */   ori        $s4, $zero, 0xffff
.L8003CCAC:
/* 03C85C 8003CCAC 24140001 */  addiu       $s4, $zero, 0x1
.L8003CCB0:
/* 03C860 8003CCB0 A6B40006 */  sh          $s4, 0x6($s5)
/* 03C864 8003CCB4 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03C868 8003CCB8 00138840 */  sll         $s1, $s3, 1
/* 03C86C 8003CCBC 323800FF */  andi        $t8, $s1, 0xff
/* 03C870 8003CCC0 000EC840 */  sll         $t9, $t6, 1
/* 03C874 8003CCC4 02B97821 */  addu        $t7, $s5, $t9
/* 03C878 8003CCC8 256B0004 */  addiu       $t3, $t3, 0x4
/* 03C87C 8003CCCC A5F40006 */  sh          $s4, 0x6($t7)
/* 03C880 8003CCD0 26B50008 */  addiu       $s5, $s5, 0x8
/* 03C884 8003CCD4 1563FFCC */  bne         $t3, $v1, .L8003CC08
/* 03C888 8003CCD8 03008825 */   move       $s1, $t8
/* 03C88C 8003CCDC 8C4B0000 */  lw          $t3, 0x0($v0)
/* 03C890 8003CCE0 258C0001 */  addiu       $t4, $t4, 0x1
/* 03C894 8003CCE4 26520001 */  addiu       $s2, $s2, 0x1
/* 03C898 8003CCE8 000BC880 */  sll         $t9, $t3, 2
/* 03C89C 8003CCEC 1584FFC3 */  bne         $t4, $a0, .L8003CBFC
/* 03C8A0 8003CCF0 01B96821 */   addu       $t5, $t5, $t9
/* 03C8A4 8003CCF4 90AC0001 */  lbu         $t4, 0x1($a1)
/* 03C8A8 8003CCF8 24A50001 */  addiu       $a1, $a1, 0x1
/* 03C8AC 8003CCFC 24C60010 */  addiu       $a2, $a2, 0x10
/* 03C8B0 8003CD00 5580FF9B */  bnel        $t4, $zero, .L8003CB70
/* 03C8B4 8003CD04 318B00FF */   andi       $t3, $t4, 0xff
.L8003CD08:
/* 03C8B8 8003CD08 550AFF8C */  bnel        $t0, $t2, .L8003CB3C
/* 03C8BC 8003CD0C 8FB90120 */   lw         $t9, 0x120($sp)
.L8003CD10:
/* 03C8C0 8003CD10 8FB00008 */  lw          $s0, 0x8($sp)
/* 03C8C4 8003CD14 8FB1000C */  lw          $s1, 0xc($sp)
/* 03C8C8 8003CD18 8FB20010 */  lw          $s2, 0x10($sp)
/* 03C8CC 8003CD1C 8FB30014 */  lw          $s3, 0x14($sp)
/* 03C8D0 8003CD20 8FB40018 */  lw          $s4, 0x18($sp)
/* 03C8D4 8003CD24 8FB5001C */  lw          $s5, 0x1c($sp)
/* 03C8D8 8003CD28 03E00008 */  jr          $ra
/* 03C8DC 8003CD2C 27BD0118 */   addiu      $sp, $sp, 0x118

glabel func_8003CD30 # 7
/* 03C8E0 8003CD30 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03C8E4 8003CD34 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03C8E8 8003CD38 000671C0 */  sll         $t6, $a2, 7
/* 03C8EC 8003CD3C AFA40018 */  sw          $a0, 0x18($sp)
/* 03C8F0 8003CD40 25C5000F */  addiu       $a1, $t6, 0xf
/* 03C8F4 8003CD44 2401FFF0 */  addiu       $at, $zero, -0x10
/* 03C8F8 8003CD48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C8FC 8003CD4C AFA60020 */  sw          $a2, 0x20($sp)
/* 03C900 8003CD50 00A17824 */  and         $t7, $a1, $at
/* 03C904 8003CD54 3C04800F */  lui         $a0, %hi(D_800F2A60)
/* 03C908 8003CD58 24842A60 */  addiu       $a0, $a0, %lo(D_800F2A60)
/* 03C90C 8003CD5C 01E02825 */  move        $a1, $t7
/* 03C910 8003CD60 240600F1 */  addiu       $a2, $zero, 0xf1
/* 03C914 8003CD64 0C00FDC0 */  jal         func_8003F700
/* 03C918 8003CD68 24070004 */   addiu      $a3, $zero, 0x4
/* 03C91C 8003CD6C 2406000A */  addiu       $a2, $zero, 0xa
/* 03C920 8003CD70 8FA40018 */  lw          $a0, 0x18($sp)
/* 03C924 8003CD74 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03C928 8003CD78 3C01800F */  lui         $at, %hi(D_800F2A10)
/* 03C92C 8003CD7C 0086001A */  div         $zero, $a0, $a2
/* 03C930 8003CD80 00001012 */  mflo        $v0
/* 03C934 8003CD84 AC242A10 */  sw          $a0, %lo(D_800F2A10)($at)
/* 03C938 8003CD88 3C01800F */  lui         $at, %hi(D_800F2A14)
/* 03C93C 8003CD8C 00A6001A */  div         $zero, $a1, $a2
/* 03C940 8003CD90 AC252A14 */  sw          $a1, %lo(D_800F2A14)($at)
/* 03C944 8003CD94 14C00002 */  bnez        $a2, .L8003CDA0
/* 03C948 8003CD98 00000000 */   nop
/* 03C94C 8003CD9C 0007000D */  break       7
.L8003CDA0:
/* 03C950 8003CDA0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C954 8003CDA4 14C10004 */  bne         $a2, $at, .L8003CDB8
/* 03C958 8003CDA8 3C018000 */   lui        $at, 0x8000
/* 03C95C 8003CDAC 14810002 */  bne         $a0, $at, .L8003CDB8
/* 03C960 8003CDB0 00000000 */   nop
/* 03C964 8003CDB4 0006000D */  break       6
.L8003CDB8:
/* 03C968 8003CDB8 3C01800F */  lui         $at, %hi(D_800F2A00)
/* 03C96C 8003CDBC 2458FFFF */  addiu       $t8, $v0, -0x1
/* 03C970 8003CDC0 AC382A00 */  sw          $t8, %lo(D_800F2A00)($at)
/* 03C974 8003CDC4 14C00002 */  bnez        $a2, .L8003CDD0
/* 03C978 8003CDC8 00000000 */   nop
/* 03C97C 8003CDCC 0007000D */  break       7
.L8003CDD0:
/* 03C980 8003CDD0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C984 8003CDD4 14C10004 */  bne         $a2, $at, .L8003CDE8
/* 03C988 8003CDD8 3C018000 */   lui        $at, 0x8000
/* 03C98C 8003CDDC 14A10002 */  bne         $a1, $at, .L8003CDE8
/* 03C990 8003CDE0 00000000 */   nop
/* 03C994 8003CDE4 0006000D */  break       6
.L8003CDE8:
/* 03C998 8003CDE8 00001812 */  mflo        $v1
/* 03C99C 8003CDEC 2479FFFF */  addiu       $t9, $v1, -0x1
/* 03C9A0 8003CDF0 3C01800F */  lui         $at, %hi(D_800F2A04)
/* 03C9A4 8003CDF4 AC392A04 */  sw          $t9, %lo(D_800F2A04)($at)
/* 03C9A8 8003CDF8 3C01800F */  lui         $at, %hi(D_800F2A08)
/* 03C9AC 8003CDFC 00824023 */  subu        $t0, $a0, $v0
/* 03C9B0 8003CE00 AC282A08 */  sw          $t0, %lo(D_800F2A08)($at)
/* 03C9B4 8003CE04 3C01800F */  lui         $at, %hi(D_800F2A0C)
/* 03C9B8 8003CE08 00A34823 */  subu        $t1, $a1, $v1
/* 03C9BC 8003CE0C 0C00F3DE */  jal         func_8003CF78
/* 03C9C0 8003CE10 AC292A0C */   sw         $t1, %lo(D_800F2A0C)($at)
/* 03C9C4 8003CE14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03C9C8 8003CE18 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03C9CC 8003CE1C 03E00008 */  jr          $ra
/* 03C9D0 8003CE20 00000000 */   nop

glabel func_8003CE24 # 8
/* 03C9D4 8003CE24 3C03800F */  lui         $v1, %hi(D_800F2A18)
/* 03C9D8 8003CE28 24632A18 */  addiu       $v1, $v1, %lo(D_800F2A18)
/* 03C9DC 8003CE2C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03C9E0 8003CE30 AC640000 */  sw          $a0, 0x0($v1)
/* 03C9E4 8003CE34 248F0008 */  addiu       $t7, $a0, 0x8
/* 03C9E8 8003CE38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03C9EC 8003CE3C AFA40038 */  sw          $a0, 0x38($sp)
/* 03C9F0 8003CE40 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03C9F4 8003CE44 3C18E700 */  lui         $t8, 0xe700
/* 03C9F8 8003CE48 AC980000 */  sw          $t8, 0x0($a0)
/* 03C9FC 8003CE4C AC800004 */  sw          $zero, 0x4($a0)
/* 03CA00 8003CE50 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA04 8003CE54 3C0EE300 */  lui         $t6, (0xE3000A01 >> 16)
/* 03CA08 8003CE58 35CE0A01 */  ori         $t6, $t6, (0xE3000A01 & 0xFFFF)
/* 03CA0C 8003CE5C 24590008 */  addiu       $t9, $v0, 0x8
/* 03CA10 8003CE60 AC790000 */  sw          $t9, 0x0($v1)
/* 03CA14 8003CE64 AC400004 */  sw          $zero, 0x4($v0)
/* 03CA18 8003CE68 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03CA1C 8003CE6C 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA20 8003CE70 3C18E300 */  lui         $t8, (0xE3000C00 >> 16)
/* 03CA24 8003CE74 37180C00 */  ori         $t8, $t8, (0xE3000C00 & 0xFFFF)
/* 03CA28 8003CE78 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CA2C 8003CE7C AC6F0000 */  sw          $t7, 0x0($v1)
/* 03CA30 8003CE80 AC400004 */  sw          $zero, 0x4($v0)
/* 03CA34 8003CE84 AC580000 */  sw          $t8, 0x0($v0)
/* 03CA38 8003CE88 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA3C 8003CE8C 3C0EE300 */  lui         $t6, (0xE3001402 >> 16)
/* 03CA40 8003CE90 35CE1402 */  ori         $t6, $t6, (0xE3001402 & 0xFFFF)
/* 03CA44 8003CE94 24590008 */  addiu       $t9, $v0, 0x8
/* 03CA48 8003CE98 AC790000 */  sw          $t9, 0x0($v1)
/* 03CA4C 8003CE9C 240F0C00 */  addiu       $t7, $zero, 0xc00
/* 03CA50 8003CEA0 AC4F0004 */  sw          $t7, 0x4($v0)
/* 03CA54 8003CEA4 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03CA58 8003CEA8 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA5C 8003CEAC 3C19E300 */  lui         $t9, (0xE3001201 >> 16)
/* 03CA60 8003CEB0 37391201 */  ori         $t9, $t9, (0xE3001201 & 0xFFFF)
/* 03CA64 8003CEB4 24580008 */  addiu       $t8, $v0, 0x8
/* 03CA68 8003CEB8 AC780000 */  sw          $t8, 0x0($v1)
/* 03CA6C 8003CEBC 240E2000 */  addiu       $t6, $zero, 0x2000
/* 03CA70 8003CEC0 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03CA74 8003CEC4 AC590000 */  sw          $t9, 0x0($v0)
/* 03CA78 8003CEC8 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA7C 8003CECC 3C18E300 */  lui         $t8, (0xE3000F00 >> 16)
/* 03CA80 8003CED0 37180F00 */  ori         $t8, $t8, (0xE3000F00 & 0xFFFF)
/* 03CA84 8003CED4 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CA88 8003CED8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03CA8C 8003CEDC AC400004 */  sw          $zero, 0x4($v0)
/* 03CA90 8003CEE0 AC580000 */  sw          $t8, 0x0($v0)
/* 03CA94 8003CEE4 8C620000 */  lw          $v0, 0x0($v1)
/* 03CA98 8003CEE8 3C0EE200 */  lui         $t6, (0xE2001E01 >> 16)
/* 03CA9C 8003CEEC 35CE1E01 */  ori         $t6, $t6, (0xE2001E01 & 0xFFFF)
/* 03CAA0 8003CEF0 24590008 */  addiu       $t9, $v0, 0x8
/* 03CAA4 8003CEF4 AC790000 */  sw          $t9, 0x0($v1)
/* 03CAA8 8003CEF8 AC400004 */  sw          $zero, 0x4($v0)
/* 03CAAC 8003CEFC AC4E0000 */  sw          $t6, 0x0($v0)
/* 03CAB0 8003CF00 8C620000 */  lw          $v0, 0x0($v1)
/* 03CAB4 8003CF04 3C0EFF2F */  lui         $t6, (0xFF2FFFFF >> 16)
/* 03CAB8 8003CF08 3C18FC11 */  lui         $t8, (0xFC119623 >> 16)
/* 03CABC 8003CF0C 244F0008 */  addiu       $t7, $v0, 0x8
/* 03CAC0 8003CF10 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03CAC4 8003CF14 AFA20018 */  sw          $v0, 0x18($sp)
/* 03CAC8 8003CF18 37189623 */  ori         $t8, $t8, (0xFC119623 & 0xFFFF)
/* 03CACC 8003CF1C 35CEFFFF */  ori         $t6, $t6, (0xFF2FFFFF & 0xFFFF)
/* 03CAD0 8003CF20 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03CAD4 8003CF24 AC580000 */  sw          $t8, 0x0($v0)
/* 03CAD8 8003CF28 3C04800F */  lui         $a0, %hi(D_800F2A20)
/* 03CADC 8003CF2C 3C05800F */  lui         $a1, %hi(D_800F2A24)
/* 03CAE0 8003CF30 3C06800F */  lui         $a2, %hi(D_800F2A28)
/* 03CAE4 8003CF34 3C07800F */  lui         $a3, %hi(D_800F2A2C)
/* 03CAE8 8003CF38 8CE72A2C */  lw          $a3, %lo(D_800F2A2C)($a3)
/* 03CAEC 8003CF3C 8CC62A28 */  lw          $a2, %lo(D_800F2A28)($a2)
/* 03CAF0 8003CF40 8CA52A24 */  lw          $a1, %lo(D_800F2A24)($a1)
/* 03CAF4 8003CF44 0C00F528 */  jal         func_8003D4A0
/* 03CAF8 8003CF48 8C842A20 */   lw         $a0, %lo(D_800F2A20)($a0)
/* 03CAFC 8003CF4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03CB00 8003CF50 3C0F800A */  lui         $t7, %hi(D_800A7040)
/* 03CB04 8003CF54 25EF7040 */  addiu       $t7, $t7, %lo(D_800A7040)
/* 03CB08 8003CF58 3C01800F */  lui         $at, %hi(D_800F2A58)
/* 03CB0C 8003CF5C AC2F2A58 */  sw          $t7, %lo(D_800F2A58)($at)
/* 03CB10 8003CF60 03E00008 */  jr          $ra
/* 03CB14 8003CF64 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8003CF68 # 9
/* 03CB18 8003CF68 3C0E800F */  lui         $t6, %hi(D_800F2A18)
/* 03CB1C 8003CF6C 8DCE2A18 */  lw          $t6, %lo(D_800F2A18)($t6)
/* 03CB20 8003CF70 03E00008 */  jr          $ra
/* 03CB24 8003CF74 AC8E0000 */   sw         $t6, 0x0($a0)

glabel func_8003CF78 # 10
/* 03CB28 8003CF78 3C02800F */  lui         $v0, %hi(D_800F2A20)
/* 03CB2C 8003CF7C 24422A20 */  addiu       $v0, $v0, %lo(D_800F2A20)
/* 03CB30 8003CF80 240300FF */  addiu       $v1, $zero, 0xff
/* 03CB34 8003CF84 AC430000 */  sw          $v1, 0x0($v0)
/* 03CB38 8003CF88 AC430004 */  sw          $v1, 0x4($v0)
/* 03CB3C 8003CF8C AC430008 */  sw          $v1, 0x8($v0)
/* 03CB40 8003CF90 AC43000C */  sw          $v1, 0xc($v0)
/* 03CB44 8003CF94 3C0E800F */  lui         $t6, %hi(D_800F2A00)
/* 03CB48 8003CF98 8DCE2A00 */  lw          $t6, %lo(D_800F2A00)($t6)
/* 03CB4C 8003CF9C 3C0F800F */  lui         $t7, %hi(D_800F2A04)
/* 03CB50 8003CFA0 8DEF2A04 */  lw          $t7, %lo(D_800F2A04)($t7)
/* 03CB54 8003CFA4 3C01800F */  lui         $at, %hi(D_800F2A30)
/* 03CB58 8003CFA8 3C18800F */  lui         $t8, %hi(D_800F2A08)
/* 03CB5C 8003CFAC AC2E2A30 */  sw          $t6, %lo(D_800F2A30)($at)
/* 03CB60 8003CFB0 8F182A08 */  lw          $t8, %lo(D_800F2A08)($t8)
/* 03CB64 8003CFB4 3C01800F */  lui         $at, %hi(D_800F2A34)
/* 03CB68 8003CFB8 AC2F2A34 */  sw          $t7, %lo(D_800F2A34)($at)
/* 03CB6C 8003CFBC 3C01800F */  lui         $at, %hi(D_800F2A38)
/* 03CB70 8003CFC0 3C19800F */  lui         $t9, %hi(D_800F2A0C)
/* 03CB74 8003CFC4 8F392A0C */  lw          $t9, %lo(D_800F2A0C)($t9)
/* 03CB78 8003CFC8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03CB7C 8003CFCC AC382A38 */  sw          $t8, %lo(D_800F2A38)($at)
/* 03CB80 8003CFD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03CB84 8003CFD4 3C01800F */  lui         $at, %hi(D_800F2A3C)
/* 03CB88 8003CFD8 00002025 */  move        $a0, $zero
/* 03CB8C 8003CFDC 00002825 */  move        $a1, $zero
/* 03CB90 8003CFE0 0C00F4F9 */  jal         func_8003D3E4
/* 03CB94 8003CFE4 AC392A3C */   sw         $t9, %lo(D_800F2A3C)($at)
/* 03CB98 8003CFE8 3C013F80 */  lui         $at, 0x3f80
/* 03CB9C 8003CFEC 44810000 */  mtc1        $at, $f0
/* 03CBA0 8003CFF0 3C01800F */  lui         $at, %hi(D_800F2A48)
/* 03CBA4 8003CFF4 AC202A48 */  sw          $zero, %lo(D_800F2A48)($at)
/* 03CBA8 8003CFF8 3C01800F */  lui         $at, %hi(D_800F2A4C)
/* 03CBAC 8003CFFC 24080001 */  addiu       $t0, $zero, 0x1
/* 03CBB0 8003D000 AC282A4C */  sw          $t0, %lo(D_800F2A4C)($at)
/* 03CBB4 8003D004 3C01800F */  lui         $at, %hi(D_800F2A50)
/* 03CBB8 8003D008 E4202A50 */  swc1        $f0, %lo(D_800F2A50)($at)
/* 03CBBC 8003D00C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03CBC0 8003D010 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03CBC4 8003D014 3C09800A */  lui         $t1, %hi(D_800A7040)
/* 03CBC8 8003D018 E4202A54 */  swc1        $f0, %lo(D_800F2A54)($at)
/* 03CBCC 8003D01C 3C01800F */  lui         $at, %hi(D_800F2A58)
/* 03CBD0 8003D020 25297040 */  addiu       $t1, $t1, %lo(D_800A7040)
/* 03CBD4 8003D024 AC292A58 */  sw          $t1, %lo(D_800F2A58)($at)
/* 03CBD8 8003D028 03E00008 */  jr          $ra
/* 03CBDC 8003D02C 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003D030 # 11
/* 03CBE0 8003D030 27BDFBB8 */  addiu       $sp, $sp, -0x448
/* 03CBE4 8003D034 AFB00210 */  sw          $s0, 0x210($sp)
/* 03CBE8 8003D038 AFA40448 */  sw          $a0, 0x448($sp)
/* 03CBEC 8003D03C 27B00244 */  addiu       $s0, $sp, 0x244
/* 03CBF0 8003D040 AFA5044C */  sw          $a1, 0x44c($sp)
/* 03CBF4 8003D044 27AE044C */  addiu       $t6, $sp, 0x44c
/* 03CBF8 8003D048 AFBF0224 */  sw          $ra, 0x224($sp)
/* 03CBFC 8003D04C AFB40220 */  sw          $s4, 0x220($sp)
/* 03CC00 8003D050 AFB3021C */  sw          $s3, 0x21c($sp)
/* 03CC04 8003D054 AFB20218 */  sw          $s2, 0x218($sp)
/* 03CC08 8003D058 AFB10214 */  sw          $s1, 0x214($sp)
/* 03CC0C 8003D05C AFA60450 */  sw          $a2, 0x450($sp)
/* 03CC10 8003D060 AFA70454 */  sw          $a3, 0x454($sp)
/* 03CC14 8003D064 25D801F8 */  addiu       $t8, $t6, 0x1f8
/* 03CC18 8003D068 8FA50448 */  lw          $a1, 0x448($sp)
/* 03CC1C 8003D06C 02002025 */  move        $a0, $s0
/* 03CC20 8003D070 03A0C825 */  move        $t9, $sp
.L8003D074:
/* 03CC24 8003D074 89C10000 */  lwl         $at, 0x0($t6)
/* 03CC28 8003D078 99C10003 */  lwr         $at, 0x3($t6)
/* 03CC2C 8003D07C 25CE000C */  addiu       $t6, $t6, 0xc
/* 03CC30 8003D080 2739000C */  addiu       $t9, $t9, 0xc
/* 03CC34 8003D084 AB21FFFC */  swl         $at, -0x4($t9)
/* 03CC38 8003D088 BB21FFFF */  swr         $at, -0x1($t9)
/* 03CC3C 8003D08C 89C1FFF8 */  lwl         $at, -0x8($t6)
/* 03CC40 8003D090 99C1FFFB */  lwr         $at, -0x5($t6)
/* 03CC44 8003D094 AB210000 */  swl         $at, 0x0($t9)
/* 03CC48 8003D098 BB210003 */  swr         $at, 0x3($t9)
/* 03CC4C 8003D09C 89C1FFFC */  lwl         $at, -0x4($t6)
/* 03CC50 8003D0A0 99C1FFFF */  lwr         $at, -0x1($t6)
/* 03CC54 8003D0A4 AB210004 */  swl         $at, 0x4($t9)
/* 03CC58 8003D0A8 15D8FFF2 */  bne         $t6, $t8, .L8003D074
/* 03CC5C 8003D0AC BB210007 */   swr        $at, 0x7($t9)
/* 03CC60 8003D0B0 89C10000 */  lwl         $at, 0x0($t6)
/* 03CC64 8003D0B4 99C10003 */  lwr         $at, 0x3($t6)
/* 03CC68 8003D0B8 AB210008 */  swl         $at, 0x8($t9)
/* 03CC6C 8003D0BC BB21000B */  swr         $at, 0xb($t9)
/* 03CC70 8003D0C0 89D80004 */  lwl         $t8, 0x4($t6)
/* 03CC74 8003D0C4 99D80007 */  lwr         $t8, 0x7($t6)
/* 03CC78 8003D0C8 AB38000C */  swl         $t8, 0xc($t9)
/* 03CC7C 8003D0CC BB38000F */  swr         $t8, 0xf($t9)
/* 03CC80 8003D0D0 8FA7000C */  lw          $a3, 0xc($sp)
/* 03CC84 8003D0D4 0C014E38 */  jal         sprintf
/* 03CC88 8003D0D8 8FA60008 */   lw         $a2, 0x8($sp)
/* 03CC8C 8003D0DC 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03CC90 8003D0E0 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03CC94 8003D0E4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03CC98 8003D0E8 3C09E700 */  lui         $t1, 0xe700
/* 03CC9C 8003D0EC 3C0BE300 */  lui         $t3, (0xE3001001 >> 16)
/* 03CCA0 8003D0F0 24680008 */  addiu       $t0, $v1, 0x8
/* 03CCA4 8003D0F4 ACC80000 */  sw          $t0, 0x0($a2)
/* 03CCA8 8003D0F8 AC600004 */  sw          $zero, 0x4($v1)
/* 03CCAC 8003D0FC AC690000 */  sw          $t1, 0x0($v1)
/* 03CCB0 8003D100 8CC30000 */  lw          $v1, 0x0($a2)
/* 03CCB4 8003D104 356B1001 */  ori         $t3, $t3, (0xE3001001 & 0xFFFF)
/* 03CCB8 8003D108 02009025 */  move        $s2, $s0
/* 03CCBC 8003D10C 246A0008 */  addiu       $t2, $v1, 0x8
/* 03CCC0 8003D110 ACCA0000 */  sw          $t2, 0x0($a2)
/* 03CCC4 8003D114 AC600004 */  sw          $zero, 0x4($v1)
/* 03CCC8 8003D118 AC6B0000 */  sw          $t3, 0x0($v1)
/* 03CCCC 8003D11C 93AC0244 */  lbu         $t4, 0x244($sp)
/* 03CCD0 8003D120 27AD0244 */  addiu       $t5, $sp, 0x244
/* 03CCD4 8003D124 2414000A */  addiu       $s4, $zero, 0xa
/* 03CCD8 8003D128 11800022 */  beqz        $t4, .L8003D1B4
/* 03CCDC 8003D12C 24130001 */   addiu      $s3, $zero, 0x1
/* 03CCE0 8003D130 91A40000 */  lbu         $a0, 0x0($t5)
/* 03CCE4 8003D134 8FB0023C */  lw          $s0, 0x23c($sp)
/* 03CCE8 8003D138 308F0080 */  andi        $t7, $a0, 0x80
.L8003D13C:
/* 03CCEC 8003D13C 11E00008 */  beqz        $t7, .L8003D160
/* 03CCF0 8003D140 00008825 */   move       $s1, $zero
/* 03CCF4 8003D144 924E0001 */  lbu         $t6, 0x1($s2)
/* 03CCF8 8003D148 0004C200 */  sll         $t8, $a0, 8
/* 03CCFC 8003D14C 02608825 */  move        $s1, $s3
/* 03CD00 8003D150 26520001 */  addiu       $s2, $s2, 0x1
/* 03CD04 8003D154 0C0126F4 */  jal         func_80049BD0
/* 03CD08 8003D158 030E2025 */   or         $a0, $t8, $t6
/* 03CD0C 8003D15C 00408025 */  move        $s0, $v0
.L8003D160:
/* 03CD10 8003D160 56330006 */  bnel        $s1, $s3, .L8003D17C
/* 03CD14 8003D164 92440000 */   lbu        $a0, 0x0($s2)
/* 03CD18 8003D168 0C00F85F */  jal         func_8003E17C
/* 03CD1C 8003D16C 02002025 */   move       $a0, $s0
/* 03CD20 8003D170 1000000C */  b           .L8003D1A4
/* 03CD24 8003D174 92440001 */   lbu        $a0, 0x1($s2)
/* 03CD28 8003D178 92440000 */  lbu         $a0, 0x0($s2)
.L8003D17C:
/* 03CD2C 8003D17C 3C19800F */  lui         $t9, %hi(D_800F2A38)
/* 03CD30 8003D180 16840005 */  bne         $s4, $a0, .L8003D198
/* 03CD34 8003D184 00000000 */   nop
/* 03CD38 8003D188 8F392A38 */  lw          $t9, %lo(D_800F2A38)($t9)
/* 03CD3C 8003D18C 3C01800F */  lui         $at, %hi(D_800F2A40)
/* 03CD40 8003D190 10000003 */  b           .L8003D1A0
/* 03CD44 8003D194 AC392A40 */   sw         $t9, %lo(D_800F2A40)($at)
.L8003D198:
/* 03CD48 8003D198 0C00F8F6 */  jal         func_8003E3D8
/* 03CD4C 8003D19C 00000000 */   nop
.L8003D1A0:
/* 03CD50 8003D1A0 92440001 */  lbu         $a0, 0x1($s2)
.L8003D1A4:
/* 03CD54 8003D1A4 26520001 */  addiu       $s2, $s2, 0x1
/* 03CD58 8003D1A8 5480FFE4 */  bnel        $a0, $zero, .L8003D13C
/* 03CD5C 8003D1AC 308F0080 */   andi       $t7, $a0, 0x80
/* 03CD60 8003D1B0 AFB0023C */  sw          $s0, 0x23c($sp)
.L8003D1B4:
/* 03CD64 8003D1B4 24040010 */  addiu       $a0, $zero, 0x10
/* 03CD68 8003D1B8 0C00F478 */  jal         func_8003D1E0
/* 03CD6C 8003D1BC 24050010 */   addiu      $a1, $zero, 0x10
/* 03CD70 8003D1C0 8FBF0224 */  lw          $ra, 0x224($sp)
/* 03CD74 8003D1C4 8FB00210 */  lw          $s0, 0x210($sp)
/* 03CD78 8003D1C8 8FB10214 */  lw          $s1, 0x214($sp)
/* 03CD7C 8003D1CC 8FB20218 */  lw          $s2, 0x218($sp)
/* 03CD80 8003D1D0 8FB3021C */  lw          $s3, 0x21c($sp)
/* 03CD84 8003D1D4 8FB40220 */  lw          $s4, 0x220($sp)
/* 03CD88 8003D1D8 03E00008 */  jr          $ra
/* 03CD8C 8003D1DC 27BD0448 */   addiu      $sp, $sp, 0x448

glabel func_8003D1E0 # 12
/* 03CD90 8003D1E0 44842000 */  mtc1        $a0, $f4
/* 03CD94 8003D1E4 3C013FE0 */  lui         $at, 0x3fe0
/* 03CD98 8003D1E8 44811800 */  mtc1        $at, $f3
/* 03CD9C 8003D1EC 468021A0 */  cvt.s.w     $f6, $f4
/* 03CDA0 8003D1F0 3C01800F */  lui         $at, %hi(D_800F2A50)
/* 03CDA4 8003D1F4 C4282A50 */  lwc1        $f8, %lo(D_800F2A50)($at)
/* 03CDA8 8003D1F8 44801000 */  mtc1        $zero, $f2
/* 03CDAC 8003D1FC 3C02800F */  lui         $v0, %hi(D_800F2A40)
/* 03CDB0 8003D200 24422A40 */  addiu       $v0, $v0, %lo(D_800F2A40)
/* 03CDB4 8003D204 46083282 */  mul.s       $f10, $f6, $f8
/* 03CDB8 8003D208 8C590000 */  lw          $t9, 0x0($v0)
/* 03CDBC 8003D20C 3C0E800F */  lui         $t6, %hi(D_800F2A38)
/* 03CDC0 8003D210 8DCE2A38 */  lw          $t6, %lo(D_800F2A38)($t6)
/* 03CDC4 8003D214 24AFFFFF */  addiu       $t7, $a1, -0x1
/* 03CDC8 8003D218 46005421 */  cvt.d.s     $f16, $f10
/* 03CDCC 8003D21C 46228480 */  add.d       $f18, $f16, $f2
/* 03CDD0 8003D220 4620910D */  trunc.w.d   $f4, $f18
/* 03CDD4 8003D224 44182000 */  mfc1        $t8, $f4
/* 03CDD8 8003D228 00000000 */  nop
/* 03CDDC 8003D22C 03194021 */  addu        $t0, $t8, $t9
/* 03CDE0 8003D230 01C8082A */  slt         $at, $t6, $t0
/* 03CDE4 8003D234 50200014 */  beql        $at, $zero, .L8003D288
/* 03CDE8 8003D238 448F4000 */   mtc1       $t7, $f8
/* 03CDEC 8003D23C 44853000 */  mtc1        $a1, $f6
/* 03CDF0 8003D240 3C09800F */  lui         $t1, %hi(D_800F2A30)
/* 03CDF4 8003D244 8D292A30 */  lw          $t1, %lo(D_800F2A30)($t1)
/* 03CDF8 8003D248 46803220 */  cvt.s.w     $f8, $f6
/* 03CDFC 8003D24C 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03CE00 8003D250 AC490000 */  sw          $t1, 0x0($v0)
/* 03CE04 8003D254 C42A2A54 */  lwc1        $f10, %lo(D_800F2A54)($at)
/* 03CE08 8003D258 3C07800F */  lui         $a3, %hi(D_800F2A44)
/* 03CE0C 8003D25C 24E72A44 */  addiu       $a3, $a3, %lo(D_800F2A44)
/* 03CE10 8003D260 460A4402 */  mul.s       $f16, $f8, $f10
/* 03CE14 8003D264 8CEC0000 */  lw          $t4, 0x0($a3)
/* 03CE18 8003D268 460084A1 */  cvt.d.s     $f18, $f16
/* 03CE1C 8003D26C 46229100 */  add.d       $f4, $f18, $f2
/* 03CE20 8003D270 4620218D */  trunc.w.d   $f6, $f4
/* 03CE24 8003D274 440B3000 */  mfc1        $t3, $f6
/* 03CE28 8003D278 00000000 */  nop
/* 03CE2C 8003D27C 018B6821 */  addu        $t5, $t4, $t3
/* 03CE30 8003D280 ACED0000 */  sw          $t5, 0x0($a3)
/* 03CE34 8003D284 448F4000 */  mtc1        $t7, $f8
.L8003D288:
/* 03CE38 8003D288 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03CE3C 8003D28C C4202A54 */  lwc1        $f0, %lo(D_800F2A54)($at)
/* 03CE40 8003D290 468042A0 */  cvt.s.w     $f10, $f8
/* 03CE44 8003D294 3C07800F */  lui         $a3, %hi(D_800F2A44)
/* 03CE48 8003D298 24E72A44 */  addiu       $a3, $a3, %lo(D_800F2A44)
/* 03CE4C 8003D29C 8CE20000 */  lw          $v0, 0x0($a3)
/* 03CE50 8003D2A0 3C04800F */  lui         $a0, %hi(D_800F2A3C)
/* 03CE54 8003D2A4 8C842A3C */  lw          $a0, %lo(D_800F2A3C)($a0)
/* 03CE58 8003D2A8 46005402 */  mul.s       $f16, $f10, $f0
/* 03CE5C 8003D2AC 460084A1 */  cvt.d.s     $f18, $f16
/* 03CE60 8003D2B0 46229100 */  add.d       $f4, $f18, $f2
/* 03CE64 8003D2B4 4620218D */  trunc.w.d   $f6, $f4
/* 03CE68 8003D2B8 44063000 */  mfc1        $a2, $f6
/* 03CE6C 8003D2BC 00000000 */  nop
/* 03CE70 8003D2C0 00C2C821 */  addu        $t9, $a2, $v0
/* 03CE74 8003D2C4 0099082A */  slt         $at, $a0, $t9
/* 03CE78 8003D2C8 10200012 */  beqz        $at, .L8003D314
/* 03CE7C 8003D2CC 00000000 */   nop
/* 03CE80 8003D2D0 44854000 */  mtc1        $a1, $f8
/* 03CE84 8003D2D4 3C013FE0 */  lui         $at, 0x3fe0
/* 03CE88 8003D2D8 44812800 */  mtc1        $at, $f5
/* 03CE8C 8003D2DC 468042A0 */  cvt.s.w     $f10, $f8
/* 03CE90 8003D2E0 44802000 */  mtc1        $zero, $f4
/* 03CE94 8003D2E4 46005402 */  mul.s       $f16, $f10, $f0
/* 03CE98 8003D2E8 460084A1 */  cvt.d.s     $f18, $f16
/* 03CE9C 8003D2EC 46249180 */  add.d       $f6, $f18, $f4
/* 03CEA0 8003D2F0 4620320D */  trunc.w.d   $f8, $f6
/* 03CEA4 8003D2F4 44034000 */  mfc1        $v1, $f8
/* 03CEA8 8003D2F8 00000000 */  nop
.L8003D2FC:
/* 03CEAC 8003D2FC 00434023 */  subu        $t0, $v0, $v1
/* 03CEB0 8003D300 00C84821 */  addu        $t1, $a2, $t0
/* 03CEB4 8003D304 0089082A */  slt         $at, $a0, $t1
/* 03CEB8 8003D308 ACE80000 */  sw          $t0, 0x0($a3)
/* 03CEBC 8003D30C 1420FFFB */  bnez        $at, .L8003D2FC
/* 03CEC0 8003D310 01001025 */   move       $v0, $t0
.L8003D314:
/* 03CEC4 8003D314 03E00008 */  jr          $ra
/* 03CEC8 8003D318 00000000 */   nop

glabel func_8003D31C # 13
/* 03CECC 8003D31C 00C4082A */  slt         $at, $a2, $a0
/* 03CED0 8003D320 10200004 */  beqz        $at, .L8003D334
/* 03CED4 8003D324 3C03800F */   lui        $v1, %hi(D_800F2A30)
/* 03CED8 8003D328 00C01025 */  move        $v0, $a2
/* 03CEDC 8003D32C 00803025 */  move        $a2, $a0
/* 03CEE0 8003D330 00402025 */  move        $a0, $v0
.L8003D334:
/* 03CEE4 8003D334 00E5082A */  slt         $at, $a3, $a1
/* 03CEE8 8003D338 10200004 */  beqz        $at, .L8003D34C
/* 03CEEC 8003D33C 24632A30 */   addiu      $v1, $v1, %lo(D_800F2A30)
/* 03CEF0 8003D340 00E01025 */  move        $v0, $a3
/* 03CEF4 8003D344 00A03825 */  move        $a3, $a1
/* 03CEF8 8003D348 00402825 */  move        $a1, $v0
.L8003D34C:
/* 03CEFC 8003D34C 04810003 */  bgez        $a0, .L8003D35C
/* 03CF00 8003D350 3C01800F */   lui        $at, %hi(D_800F2A40)
/* 03CF04 8003D354 10000002 */  b           .L8003D360
/* 03CF08 8003D358 00001025 */   move       $v0, $zero
.L8003D35C:
/* 03CF0C 8003D35C 00801025 */  move        $v0, $a0
.L8003D360:
/* 03CF10 8003D360 AC620000 */  sw          $v0, 0x0($v1)
/* 03CF14 8003D364 04A10003 */  bgez        $a1, .L8003D374
/* 03CF18 8003D368 AC222A40 */   sw         $v0, %lo(D_800F2A40)($at)
/* 03CF1C 8003D36C 10000002 */  b           .L8003D378
/* 03CF20 8003D370 00001025 */   move       $v0, $zero
.L8003D374:
/* 03CF24 8003D374 00A01025 */  move        $v0, $a1
.L8003D378:
/* 03CF28 8003D378 3C04800F */  lui         $a0, %hi(D_800F2A34)
/* 03CF2C 8003D37C 24842A34 */  addiu       $a0, $a0, %lo(D_800F2A34)
/* 03CF30 8003D380 AC820000 */  sw          $v0, 0x0($a0)
/* 03CF34 8003D384 3C03800F */  lui         $v1, %hi(D_800F2A10)
/* 03CF38 8003D388 8C632A10 */  lw          $v1, %lo(D_800F2A10)($v1)
/* 03CF3C 8003D38C 3C01800F */  lui         $at, %hi(D_800F2A44)
/* 03CF40 8003D390 AC222A44 */  sw          $v0, %lo(D_800F2A44)($at)
/* 03CF44 8003D394 00C3082A */  slt         $at, $a2, $v1
/* 03CF48 8003D398 14200005 */  bnez        $at, .L8003D3B0
/* 03CF4C 8003D39C 3C02800F */   lui        $v0, %hi(D_800F2A14)
/* 03CF50 8003D3A0 2478FFFF */  addiu       $t8, $v1, -0x1
/* 03CF54 8003D3A4 3C01800F */  lui         $at, %hi(D_800F2A38)
/* 03CF58 8003D3A8 10000003 */  b           .L8003D3B8
/* 03CF5C 8003D3AC AC382A38 */   sw         $t8, %lo(D_800F2A38)($at)
.L8003D3B0:
/* 03CF60 8003D3B0 3C01800F */  lui         $at, %hi(D_800F2A38)
/* 03CF64 8003D3B4 AC262A38 */  sw          $a2, %lo(D_800F2A38)($at)
.L8003D3B8:
/* 03CF68 8003D3B8 8C422A14 */  lw          $v0, %lo(D_800F2A14)($v0)
/* 03CF6C 8003D3BC 00E2082A */  slt         $at, $a3, $v0
/* 03CF70 8003D3C0 14200004 */  bnez        $at, .L8003D3D4
/* 03CF74 8003D3C4 2459FFFF */   addiu      $t9, $v0, -0x1
/* 03CF78 8003D3C8 3C01800F */  lui         $at, %hi(D_800F2A3C)
/* 03CF7C 8003D3CC 03E00008 */  jr          $ra
/* 03CF80 8003D3D0 AC392A3C */   sw         $t9, %lo(D_800F2A3C)($at)
.L8003D3D4:
/* 03CF84 8003D3D4 3C01800F */  lui         $at, %hi(D_800F2A3C)
/* 03CF88 8003D3D8 AC272A3C */  sw          $a3, %lo(D_800F2A3C)($at)
/* 03CF8C 8003D3DC 03E00008 */  jr          $ra
/* 03CF90 8003D3E0 00000000 */   nop

glabel func_8003D3E4 # 14
/* 03CF94 8003D3E4 3C0E800F */  lui         $t6, %hi(D_800F2A30)
/* 03CF98 8003D3E8 8DCE2A30 */  lw          $t6, %lo(D_800F2A30)($t6)
/* 03CF9C 8003D3EC 3C18800F */  lui         $t8, %hi(D_800F2A34)
/* 03CFA0 8003D3F0 8F182A34 */  lw          $t8, %lo(D_800F2A34)($t8)
/* 03CFA4 8003D3F4 3C01800F */  lui         $at, %hi(D_800F2A40)
/* 03CFA8 8003D3F8 01C47821 */  addu        $t7, $t6, $a0
/* 03CFAC 8003D3FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03CFB0 8003D400 AC2F2A40 */  sw          $t7, %lo(D_800F2A40)($at)
/* 03CFB4 8003D404 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03CFB8 8003D408 3C01800F */  lui         $at, %hi(D_800F2A44)
/* 03CFBC 8003D40C 0305C821 */  addu        $t9, $t8, $a1
/* 03CFC0 8003D410 AC392A44 */  sw          $t9, %lo(D_800F2A44)($at)
/* 03CFC4 8003D414 24050010 */  addiu       $a1, $zero, 0x10
/* 03CFC8 8003D418 0C00F478 */  jal         func_8003D1E0
/* 03CFCC 8003D41C 24040010 */   addiu      $a0, $zero, 0x10
/* 03CFD0 8003D420 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03CFD4 8003D424 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03CFD8 8003D428 03E00008 */  jr          $ra
/* 03CFDC 8003D42C 00000000 */   nop

glabel func_8003D430 # 15
/* 03CFE0 8003D430 3C0E800F */  lui         $t6, %hi(D_800F2A30)
/* 03CFE4 8003D434 8DCE2A30 */  lw          $t6, %lo(D_800F2A30)($t6)
/* 03CFE8 8003D438 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03CFEC 8003D43C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03CFF0 8003D440 3C01800F */  lui         $at, %hi(D_800F2A40)
/* 03CFF4 8003D444 01C47821 */  addu        $t7, $t6, $a0
/* 03CFF8 8003D448 AC2F2A40 */  sw          $t7, %lo(D_800F2A40)($at)
/* 03CFFC 8003D44C 24040010 */  addiu       $a0, $zero, 0x10
/* 03D000 8003D450 0C00F478 */  jal         func_8003D1E0
/* 03D004 8003D454 24050010 */   addiu      $a1, $zero, 0x10
/* 03D008 8003D458 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D00C 8003D45C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D010 8003D460 03E00008 */  jr          $ra
/* 03D014 8003D464 00000000 */   nop

glabel func_8003D468 # 16
/* 03D018 8003D468 3C0E800F */  lui         $t6, %hi(D_800F2A34)
/* 03D01C 8003D46C 8DCE2A34 */  lw          $t6, %lo(D_800F2A34)($t6)
/* 03D020 8003D470 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D024 8003D474 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D028 8003D478 3C01800F */  lui         $at, %hi(D_800F2A44)
/* 03D02C 8003D47C 01C47821 */  addu        $t7, $t6, $a0
/* 03D030 8003D480 AC2F2A44 */  sw          $t7, %lo(D_800F2A44)($at)
/* 03D034 8003D484 24040010 */  addiu       $a0, $zero, 0x10
/* 03D038 8003D488 0C00F478 */  jal         func_8003D1E0
/* 03D03C 8003D48C 24050010 */   addiu      $a1, $zero, 0x10
/* 03D040 8003D490 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D044 8003D494 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D048 8003D498 03E00008 */  jr          $ra
/* 03D04C 8003D49C 00000000 */   nop

glabel func_8003D4A0 # 17
/* 03D050 8003D4A0 3C0A800F */  lui         $t2, %hi(D_800F2A18)
/* 03D054 8003D4A4 254A2A18 */  addiu       $t2, $t2, %lo(D_800F2A18)
/* 03D058 8003D4A8 3C09800F */  lui         $t1, %hi(D_800F2A20)
/* 03D05C 8003D4AC 8D430000 */  lw          $v1, 0x0($t2)
/* 03D060 8003D4B0 25292A20 */  addiu       $t1, $t1, %lo(D_800F2A20)
/* 03D064 8003D4B4 AD240000 */  sw          $a0, 0x0($t1)
/* 03D068 8003D4B8 246E0008 */  addiu       $t6, $v1, 0x8
/* 03D06C 8003D4BC AD250004 */  sw          $a1, 0x4($t1)
/* 03D070 8003D4C0 AD260008 */  sw          $a2, 0x8($t1)
/* 03D074 8003D4C4 AD27000C */  sw          $a3, 0xc($t1)
/* 03D078 8003D4C8 AD4E0000 */  sw          $t6, 0x0($t2)
/* 03D07C 8003D4CC 3C0FE700 */  lui         $t7, 0xe700
/* 03D080 8003D4D0 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03D084 8003D4D4 AC600004 */  sw          $zero, 0x4($v1)
/* 03D088 8003D4D8 8D430000 */  lw          $v1, 0x0($t2)
/* 03D08C 8003D4DC 3C19FA00 */  lui         $t9, 0xfa00
/* 03D090 8003D4E0 240100FF */  addiu       $at, $zero, 0xff
/* 03D094 8003D4E4 24780008 */  addiu       $t8, $v1, 0x8
/* 03D098 8003D4E8 AD580000 */  sw          $t8, 0x0($t2)
/* 03D09C 8003D4EC AC790000 */  sw          $t9, 0x0($v1)
/* 03D0A0 8003D4F0 8D2E0000 */  lw          $t6, 0x0($t1)
/* 03D0A4 8003D4F4 8D2B000C */  lw          $t3, 0xc($t1)
/* 03D0A8 8003D4F8 8D390004 */  lw          $t9, 0x4($t1)
/* 03D0AC 8003D4FC 000E7E00 */  sll         $t7, $t6, 24
/* 03D0B0 8003D500 316C00FF */  andi        $t4, $t3, 0xff
/* 03D0B4 8003D504 018FC025 */  or          $t8, $t4, $t7
/* 03D0B8 8003D508 8D2C0008 */  lw          $t4, 0x8($t1)
/* 03D0BC 8003D50C 332B00FF */  andi        $t3, $t9, 0xff
/* 03D0C0 8003D510 000B6C00 */  sll         $t5, $t3, 16
/* 03D0C4 8003D514 318F00FF */  andi        $t7, $t4, 0xff
/* 03D0C8 8003D518 000FCA00 */  sll         $t9, $t7, 8
/* 03D0CC 8003D51C 030D7025 */  or          $t6, $t8, $t5
/* 03D0D0 8003D520 01D95825 */  or          $t3, $t6, $t9
/* 03D0D4 8003D524 14E1000B */  bne         $a3, $at, .L8003D554
/* 03D0D8 8003D528 AC6B0004 */   sw         $t3, 0x4($v1)
/* 03D0DC 8003D52C 8D430000 */  lw          $v1, 0x0($t2)
/* 03D0E0 8003D530 3C0DE200 */  lui         $t5, (0xE200001C >> 16)
/* 03D0E4 8003D534 3C0C0055 */  lui         $t4, (0x553048 >> 16)
/* 03D0E8 8003D538 24780008 */  addiu       $t8, $v1, 0x8
/* 03D0EC 8003D53C AD580000 */  sw          $t8, 0x0($t2)
/* 03D0F0 8003D540 358C3048 */  ori         $t4, $t4, (0x553048 & 0xFFFF)
/* 03D0F4 8003D544 35AD001C */  ori         $t5, $t5, (0xE200001C & 0xFFFF)
/* 03D0F8 8003D548 AC6D0000 */  sw          $t5, 0x0($v1)
/* 03D0FC 8003D54C 03E00008 */  jr          $ra
/* 03D100 8003D550 AC6C0004 */   sw         $t4, 0x4($v1)
.L8003D554:
/* 03D104 8003D554 8D430000 */  lw          $v1, 0x0($t2)
/* 03D108 8003D558 3C0EE200 */  lui         $t6, (0xE200001C >> 16)
/* 03D10C 8003D55C 3C190050 */  lui         $t9, (0x5041C8 >> 16)
/* 03D110 8003D560 246F0008 */  addiu       $t7, $v1, 0x8
/* 03D114 8003D564 AD4F0000 */  sw          $t7, 0x0($t2)
/* 03D118 8003D568 373941C8 */  ori         $t9, $t9, (0x5041C8 & 0xFFFF)
/* 03D11C 8003D56C 35CE001C */  ori         $t6, $t6, (0xE200001C & 0xFFFF)
/* 03D120 8003D570 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03D124 8003D574 AC790004 */  sw          $t9, 0x4($v1)
/* 03D128 8003D578 03E00008 */  jr          $ra
/* 03D12C 8003D57C 00000000 */   nop

glabel func_8003D580 # 18
/* 03D130 8003D580 3C01800F */  lui         $at, %hi(D_800F2A58)
/* 03D134 8003D584 03E00008 */  jr          $ra
/* 03D138 8003D588 AC242A58 */   sw         $a0, %lo(D_800F2A58)($at)

glabel func_8003D58C # 19
/* 03D13C 8003D58C 3C01800F */  lui         $at, %hi(D_800F2A48)
/* 03D140 8003D590 03E00008 */  jr          $ra
/* 03D144 8003D594 AC242A48 */   sw         $a0, %lo(D_800F2A48)($at)

glabel func_8003D598 # 20
/* 03D148 8003D598 3C01800F */  lui         $at, %hi(D_800F2A50)
/* 03D14C 8003D59C E42C2A50 */  swc1        $f12, %lo(D_800F2A50)($at)
/* 03D150 8003D5A0 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03D154 8003D5A4 03E00008 */  jr          $ra
/* 03D158 8003D5A8 E42E2A54 */   swc1       $f14, %lo(D_800F2A54)($at)

glabel func_8003D5AC # 21
/* 03D15C 8003D5AC 3C01800F */  lui         $at, %hi(D_800F2A4C)
/* 03D160 8003D5B0 03E00008 */  jr          $ra
/* 03D164 8003D5B4 AC242A4C */   sw         $a0, %lo(D_800F2A4C)($at)

glabel func_8003D5B8 # 22
/* 03D168 8003D5B8 3C0E800F */  lui         $t6, %hi(D_800F2A00)
/* 03D16C 8003D5BC 8DCE2A00 */  lw          $t6, %lo(D_800F2A00)($t6)
/* 03D170 8003D5C0 3C0F800F */  lui         $t7, %hi(D_800F2A04)
/* 03D174 8003D5C4 3C18800F */  lui         $t8, %hi(D_800F2A08)
/* 03D178 8003D5C8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D17C 8003D5CC 8DEF2A04 */  lw          $t7, %lo(D_800F2A04)($t7)
/* 03D180 8003D5D0 3C19800F */  lui         $t9, %hi(D_800F2A0C)
/* 03D184 8003D5D4 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03D188 8003D5D8 8F182A08 */  lw          $t8, %lo(D_800F2A08)($t8)
/* 03D18C 8003D5DC ACD80000 */  sw          $t8, 0x0($a2)
/* 03D190 8003D5E0 8F392A0C */  lw          $t9, %lo(D_800F2A0C)($t9)
/* 03D194 8003D5E4 03E00008 */  jr          $ra
/* 03D198 8003D5E8 ACF90000 */   sw         $t9, 0x0($a3)

glabel func_8003D5EC # 23
/* 03D19C 8003D5EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03D1A0 8003D5F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D1A4 8003D5F4 8C8E0004 */  lw          $t6, 0x4($a0)
/* 03D1A8 8003D5F8 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03D1AC 8003D5FC 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03D1B0 8003D600 AFAE001C */  sw          $t6, 0x1c($sp)
/* 03D1B4 8003D604 8C8F0008 */  lw          $t7, 0x8($a0)
/* 03D1B8 8003D608 00802825 */  move        $a1, $a0
/* 03D1BC 8003D60C 00C02025 */  move        $a0, $a2
/* 03D1C0 8003D610 0C00F761 */  jal         func_8003DD84
/* 03D1C4 8003D614 AFAF0018 */   sw         $t7, 0x18($sp)
/* 03D1C8 8003D618 3C013FE0 */  lui         $at, 0x3fe0
/* 03D1CC 8003D61C 44816800 */  mtc1        $at, $f13
/* 03D1D0 8003D620 3C014480 */  lui         $at, 0x4480
/* 03D1D4 8003D624 44817000 */  mtc1        $at, $f14
/* 03D1D8 8003D628 3C01800F */  lui         $at, %hi(D_800F2A50)
/* 03D1DC 8003D62C C4202A50 */  lwc1        $f0, %lo(D_800F2A50)($at)
/* 03D1E0 8003D630 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03D1E4 8003D634 C4222A54 */  lwc1        $f2, %lo(D_800F2A54)($at)
/* 03D1E8 8003D638 46007103 */  div.s       $f4, $f14, $f0
/* 03D1EC 8003D63C 44806000 */  mtc1        $zero, $f12
/* 03D1F0 8003D640 8FAC001C */  lw          $t4, 0x1c($sp)
/* 03D1F4 8003D644 3C09800F */  lui         $t1, %hi(D_800F2A40)
/* 03D1F8 8003D648 25292A40 */  addiu       $t1, $t1, %lo(D_800F2A40)
/* 03D1FC 8003D64C 8D2F0000 */  lw          $t7, 0x0($t1)
/* 03D200 8003D650 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03D204 8003D654 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03D208 8003D658 8CC20000 */  lw          $v0, 0x0($a2)
/* 03D20C 8003D65C 3C0A800F */  lui         $t2, %hi(D_800F2A44)
/* 03D210 8003D660 254A2A44 */  addiu       $t2, $t2, %lo(D_800F2A44)
/* 03D214 8003D664 244B0008 */  addiu       $t3, $v0, 0x8
/* 03D218 8003D668 ACCB0000 */  sw          $t3, 0x0($a2)
/* 03D21C 8003D66C 3C01E400 */  lui         $at, 0xe400
/* 03D220 8003D670 46027403 */  div.s       $f16, $f14, $f2
/* 03D224 8003D674 460021A1 */  cvt.d.s     $f6, $f4
/* 03D228 8003D678 462C3200 */  add.d       $f8, $f6, $f12
/* 03D22C 8003D67C 4620428D */  trunc.w.d   $f10, $f8
/* 03D230 8003D680 448C4000 */  mtc1        $t4, $f8
/* 03D234 8003D684 460084A1 */  cvt.d.s     $f18, $f16
/* 03D238 8003D688 44075000 */  mfc1        $a3, $f10
/* 03D23C 8003D68C 468042A0 */  cvt.s.w     $f10, $f8
/* 03D240 8003D690 462C9100 */  add.d       $f4, $f18, $f12
/* 03D244 8003D694 46005402 */  mul.s       $f16, $f10, $f0
/* 03D248 8003D698 4620218D */  trunc.w.d   $f6, $f4
/* 03D24C 8003D69C 4600848D */  trunc.w.s   $f18, $f16
/* 03D250 8003D6A0 44083000 */  mfc1        $t0, $f6
/* 03D254 8003D6A4 440E9000 */  mfc1        $t6, $f18
/* 03D258 8003D6A8 00000000 */  nop
/* 03D25C 8003D6AC 01CFC021 */  addu        $t8, $t6, $t7
/* 03D260 8003D6B0 8FAF0018 */  lw          $t7, 0x18($sp)
/* 03D264 8003D6B4 0018C880 */  sll         $t9, $t8, 2
/* 03D268 8003D6B8 332B0FFF */  andi        $t3, $t9, 0xfff
/* 03D26C 8003D6BC 448F2000 */  mtc1        $t7, $f4
/* 03D270 8003D6C0 8D4E0000 */  lw          $t6, 0x0($t2)
/* 03D274 8003D6C4 000B6300 */  sll         $t4, $t3, 12
/* 03D278 8003D6C8 468021A0 */  cvt.s.w     $f6, $f4
/* 03D27C 8003D6CC 01816825 */  or          $t5, $t4, $at
/* 03D280 8003D6D0 46023202 */  mul.s       $f8, $f6, $f2
/* 03D284 8003D6D4 4600428D */  trunc.w.s   $f10, $f8
/* 03D288 8003D6D8 44195000 */  mfc1        $t9, $f10
/* 03D28C 8003D6DC 00000000 */  nop
/* 03D290 8003D6E0 01D95821 */  addu        $t3, $t6, $t9
/* 03D294 8003D6E4 000B6080 */  sll         $t4, $t3, 2
/* 03D298 8003D6E8 318F0FFF */  andi        $t7, $t4, 0xfff
/* 03D29C 8003D6EC 01AFC025 */  or          $t8, $t5, $t7
/* 03D2A0 8003D6F0 AC580000 */  sw          $t8, 0x0($v0)
/* 03D2A4 8003D6F4 8D2E0000 */  lw          $t6, 0x0($t1)
/* 03D2A8 8003D6F8 8D4D0000 */  lw          $t5, 0x0($t2)
/* 03D2AC 8003D6FC 000EC880 */  sll         $t9, $t6, 2
/* 03D2B0 8003D700 332B0FFF */  andi        $t3, $t9, 0xfff
/* 03D2B4 8003D704 000D7880 */  sll         $t7, $t5, 2
/* 03D2B8 8003D708 31F80FFF */  andi        $t8, $t7, 0xfff
/* 03D2BC 8003D70C 000B6300 */  sll         $t4, $t3, 12
/* 03D2C0 8003D710 01987025 */  or          $t6, $t4, $t8
/* 03D2C4 8003D714 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03D2C8 8003D718 8CC20000 */  lw          $v0, 0x0($a2)
/* 03D2CC 8003D71C 3C0BE100 */  lui         $t3, 0xe100
/* 03D2D0 8003D720 0007C400 */  sll         $t8, $a3, 16
/* 03D2D4 8003D724 24590008 */  addiu       $t9, $v0, 0x8
/* 03D2D8 8003D728 ACD90000 */  sw          $t9, 0x0($a2)
/* 03D2DC 8003D72C AC400004 */  sw          $zero, 0x4($v0)
/* 03D2E0 8003D730 AC4B0000 */  sw          $t3, 0x0($v0)
/* 03D2E4 8003D734 8CC20000 */  lw          $v0, 0x0($a2)
/* 03D2E8 8003D738 310EFFFF */  andi        $t6, $t0, 0xffff
/* 03D2EC 8003D73C 030EC825 */  or          $t9, $t8, $t6
/* 03D2F0 8003D740 244D0008 */  addiu       $t5, $v0, 0x8
/* 03D2F4 8003D744 ACCD0000 */  sw          $t5, 0x0($a2)
/* 03D2F8 8003D748 3C0FF100 */  lui         $t7, 0xf100
/* 03D2FC 8003D74C AC4F0000 */  sw          $t7, 0x0($v0)
/* 03D300 8003D750 AC590004 */  sw          $t9, 0x4($v0)
/* 03D304 8003D754 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D308 8003D758 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03D30C 8003D75C 03E00008 */  jr          $ra
/* 03D310 8003D760 00000000 */   nop

glabel func_8003D764 # 24
/* 03D314 8003D764 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 03D318 8003D768 AFB60048 */  sw          $s6, 0x48($sp)
/* 03D31C 8003D76C AFB50044 */  sw          $s5, 0x44($sp)
/* 03D320 8003D770 AFB3003C */  sw          $s3, 0x3c($sp)
/* 03D324 8003D774 AFB10034 */  sw          $s1, 0x34($sp)
/* 03D328 8003D778 00C08825 */  move        $s1, $a2
/* 03D32C 8003D77C 00809825 */  move        $s3, $a0
/* 03D330 8003D780 00E0A825 */  move        $s5, $a3
/* 03D334 8003D784 00A0B025 */  move        $s6, $a1
/* 03D338 8003D788 AFBF0054 */  sw          $ra, 0x54($sp)
/* 03D33C 8003D78C AFBE0050 */  sw          $fp, 0x50($sp)
/* 03D340 8003D790 AFB7004C */  sw          $s7, 0x4c($sp)
/* 03D344 8003D794 AFB40040 */  sw          $s4, 0x40($sp)
/* 03D348 8003D798 AFB20038 */  sw          $s2, 0x38($sp)
/* 03D34C 8003D79C AFB00030 */  sw          $s0, 0x30($sp)
/* 03D350 8003D7A0 F7B60028 */  sdc1        $f22, 0x28($sp)
/* 03D354 8003D7A4 04C10004 */  bgez        $a2, .L8003D7B8
/* 03D358 8003D7A8 F7B40020 */   sdc1       $f20, 0x20($sp)
/* 03D35C 8003D7AC 00067023 */  negu        $t6, $a2
/* 03D360 8003D7B0 AFAE00B0 */  sw          $t6, 0xb0($sp)
/* 03D364 8003D7B4 00008825 */  move        $s1, $zero
.L8003D7B8:
/* 03D368 8003D7B8 06A10004 */  bgez        $s5, .L8003D7CC
/* 03D36C 8003D7BC 3C02800F */   lui        $v0, %hi(D_800F2A10)
/* 03D370 8003D7C0 0015A023 */  negu        $s4, $s5
/* 03D374 8003D7C4 AFB400B4 */  sw          $s4, 0xb4($sp)
/* 03D378 8003D7C8 0000A825 */  move        $s5, $zero
.L8003D7CC:
/* 03D37C 8003D7CC 8FA700A8 */  lw          $a3, 0xa8($sp)
/* 03D380 8003D7D0 8C422A10 */  lw          $v0, %lo(D_800F2A10)($v0)
/* 03D384 8003D7D4 8FB400B4 */  lw          $s4, 0xb4($sp)
/* 03D388 8003D7D8 8FA800AC */  lw          $t0, 0xac($sp)
/* 03D38C 8003D7DC 0047082A */  slt         $at, $v0, $a3
/* 03D390 8003D7E0 10200002 */  beqz        $at, .L8003D7EC
/* 03D394 8003D7E4 8FAF00B0 */   lw         $t7, 0xb0($sp)
/* 03D398 8003D7E8 00403825 */  move        $a3, $v0
.L8003D7EC:
/* 03D39C 8003D7EC 3C02800F */  lui         $v0, %hi(D_800F2A14)
/* 03D3A0 8003D7F0 8C422A14 */  lw          $v0, %lo(D_800F2A14)($v0)
/* 03D3A4 8003D7F4 0048082A */  slt         $at, $v0, $t0
/* 03D3A8 8003D7F8 50200003 */  beql        $at, $zero, .L8003D808
/* 03D3AC 8003D7FC 8EC40004 */   lw         $a0, 0x4($s6)
/* 03D3B0 8003D800 00404025 */  move        $t0, $v0
/* 03D3B4 8003D804 8EC40004 */  lw          $a0, 0x4($s6)
.L8003D808:
/* 03D3B8 8003D808 01E4082A */  slt         $at, $t7, $a0
/* 03D3BC 8003D80C 5020007E */  beql        $at, $zero, .L8003DA08
/* 03D3C0 8003D810 8FBF0054 */   lw         $ra, 0x54($sp)
/* 03D3C4 8003D814 8EC50008 */  lw          $a1, 0x8($s6)
/* 03D3C8 8003D818 00F11023 */  subu        $v0, $a3, $s1
/* 03D3CC 8003D81C 24430001 */  addiu       $v1, $v0, 0x1
/* 03D3D0 8003D820 0285082A */  slt         $at, $s4, $a1
/* 03D3D4 8003D824 10200077 */  beqz        $at, .L8003DA04
/* 03D3D8 8003D828 008F3023 */   subu       $a2, $a0, $t7
/* 03D3DC 8003D82C 00C3082A */  slt         $at, $a2, $v1
/* 03D3E0 8003D830 10200002 */  beqz        $at, .L8003D83C
/* 03D3E4 8003D834 01E0C025 */   move       $t8, $t7
/* 03D3E8 8003D838 00C01825 */  move        $v1, $a2
.L8003D83C:
/* 03D3EC 8003D83C 01151023 */  subu        $v0, $t0, $s5
/* 03D3F0 8003D840 24420001 */  addiu       $v0, $v0, 0x1
/* 03D3F4 8003D844 00B42023 */  subu        $a0, $a1, $s4
/* 03D3F8 8003D848 0082082A */  slt         $at, $a0, $v0
/* 03D3FC 8003D84C 10200002 */  beqz        $at, .L8003D858
/* 03D400 8003D850 00409025 */   move       $s2, $v0
/* 03D404 8003D854 00809025 */  move        $s2, $a0
.L8003D858:
/* 03D408 8003D858 5860006B */  blezl       $v1, .L8003DA08
/* 03D40C 8003D85C 8FBF0054 */   lw         $ra, 0x54($sp)
/* 03D410 8003D860 1A400068 */  blez        $s2, .L8003DA04
/* 03D414 8003D864 24191000 */   addiu      $t9, $zero, 0x1000
/* 03D418 8003D868 0323001A */  div         $zero, $t9, $v1
/* 03D41C 8003D86C 00008012 */  mflo        $s0
/* 03D420 8003D870 0223B821 */  addu        $s7, $s1, $v1
/* 03D424 8003D874 14600002 */  bnez        $v1, .L8003D880
/* 03D428 8003D878 00000000 */   nop
/* 03D42C 8003D87C 0007000D */  break       7
.L8003D880:
/* 03D430 8003D880 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D434 8003D884 14610004 */  bne         $v1, $at, .L8003D898
/* 03D438 8003D888 3C018000 */   lui        $at, 0x8000
/* 03D43C 8003D88C 17210002 */  bne         $t9, $at, .L8003D898
/* 03D440 8003D890 00000000 */   nop
/* 03D444 8003D894 0006000D */  break       6
.L8003D898:
/* 03D448 8003D898 00175080 */  sll         $t2, $s7, 2
/* 03D44C 8003D89C 1A400059 */  blez        $s2, .L8003DA04
/* 03D450 8003D8A0 AFB6009C */   sw         $s6, 0x9c($sp)
/* 03D454 8003D8A4 314B0FFF */  andi        $t3, $t2, 0xfff
/* 03D458 8003D8A8 000B6300 */  sll         $t4, $t3, 12
/* 03D45C 8003D8AC 3C01E400 */  lui         $at, 0xe400
/* 03D460 8003D8B0 0181B825 */  or          $s7, $t4, $at
/* 03D464 8003D8B4 3C014480 */  lui         $at, 0x4480
/* 03D468 8003D8B8 44812000 */  mtc1        $at, $f4
/* 03D46C 8003D8BC C7A600B8 */  lwc1        $f6, 0xb8($sp)
/* 03D470 8003D8C0 3C013F00 */  lui         $at, 0x3f00
/* 03D474 8003D8C4 44815000 */  mtc1        $at, $f10
/* 03D478 8003D8C8 46062203 */  div.s       $f8, $f4, $f6
/* 03D47C 8003D8CC 3C014480 */  lui         $at, 0x4480
/* 03D480 8003D8D0 44812000 */  mtc1        $at, $f4
/* 03D484 8003D8D4 C7B600BC */  lwc1        $f22, 0xbc($sp)
/* 03D488 8003D8D8 3C013F00 */  lui         $at, 0x3f00
/* 03D48C 8003D8DC 8FB800B0 */  lw          $t8, 0xb0($sp)
/* 03D490 8003D8E0 0011F080 */  sll         $fp, $s1, 2
/* 03D494 8003D8E4 33CE0FFF */  andi        $t6, $fp, 0xfff
/* 03D498 8003D8E8 0303B021 */  addu        $s6, $t8, $v1
/* 03D49C 8003D8EC 00184540 */  sll         $t0, $t8, 21
/* 03D4A0 8003D8F0 26D6FFFF */  addiu       $s6, $s6, -0x1
/* 03D4A4 8003D8F4 000EF300 */  sll         $fp, $t6, 12
/* 03D4A8 8003D8F8 46162183 */  div.s       $f6, $f4, $f22
/* 03D4AC 8003D8FC 460A4400 */  add.s       $f16, $f8, $f10
/* 03D4B0 8003D900 44814000 */  mtc1        $at, $f8
/* 03D4B4 8003D904 4600848D */  trunc.w.s   $f18, $f16
/* 03D4B8 8003D908 440C9000 */  mfc1        $t4, $f18
/* 03D4BC 8003D90C 00000000 */  nop
/* 03D4C0 8003D910 000C6C00 */  sll         $t5, $t4, 16
/* 03D4C4 8003D914 46083280 */  add.s       $f10, $f6, $f8
/* 03D4C8 8003D918 4600540D */  trunc.w.s   $f16, $f10
/* 03D4CC 8003D91C 440F8000 */  mfc1        $t7, $f16
/* 03D4D0 8003D920 00000000 */  nop
/* 03D4D4 8003D924 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 03D4D8 8003D928 01B84825 */  or          $t1, $t5, $t8
.L8003D92C:
/* 03D4DC 8003D92C 0250082A */  slt         $at, $s2, $s0
/* 03D4E0 8003D930 10200002 */  beqz        $at, .L8003D93C
/* 03D4E4 8003D934 8FA600B0 */   lw         $a2, 0xb0($sp)
/* 03D4E8 8003D938 02408025 */  move        $s0, $s2
.L8003D93C:
/* 03D4EC 8003D93C 44909000 */  mtc1        $s0, $f18
/* 03D4F0 8003D940 02908821 */  addu        $s1, $s4, $s0
/* 03D4F4 8003D944 2639FFFF */  addiu       $t9, $s1, -0x1
/* 03D4F8 8003D948 46809120 */  cvt.s.w     $f4, $f18
/* 03D4FC 8003D94C AFB90014 */  sw          $t9, 0x14($sp)
/* 03D500 8003D950 02602025 */  move        $a0, $s3
/* 03D504 8003D954 8FA5009C */  lw          $a1, 0x9c($sp)
/* 03D508 8003D958 02803825 */  move        $a3, $s4
/* 03D50C 8003D95C AFB60010 */  sw          $s6, 0x10($sp)
/* 03D510 8003D960 46162502 */  mul.s       $f20, $f4, $f22
/* 03D514 8003D964 AFA80064 */  sw          $t0, 0x64($sp)
/* 03D518 8003D968 0C00F68F */  jal         func_8003DA3C
/* 03D51C 8003D96C AFA9005C */   sw         $t1, 0x5c($sp)
/* 03D520 8003D970 8E620000 */  lw          $v0, 0x0($s3)
/* 03D524 8003D974 44953000 */  mtc1        $s5, $f6
/* 03D528 8003D978 02B05821 */  addu        $t3, $s5, $s0
/* 03D52C 8003D97C 8FA80064 */  lw          $t0, 0x64($sp)
/* 03D530 8003D980 8FA9005C */  lw          $t1, 0x5c($sp)
/* 03D534 8003D984 000B6080 */  sll         $t4, $t3, 2
/* 03D538 8003D988 00156880 */  sll         $t5, $s5, 2
/* 03D53C 8003D98C 244A0008 */  addiu       $t2, $v0, 0x8
/* 03D540 8003D990 46803220 */  cvt.s.w     $f8, $f6
/* 03D544 8003D994 AE6A0000 */  sw          $t2, 0x0($s3)
/* 03D548 8003D998 31B80FFF */  andi        $t8, $t5, 0xfff
/* 03D54C 8003D99C 318E0FFF */  andi        $t6, $t4, 0xfff
/* 03D550 8003D9A0 02EE7825 */  or          $t7, $s7, $t6
/* 03D554 8003D9A4 03D8C825 */  or          $t9, $fp, $t8
/* 03D558 8003D9A8 AC590004 */  sw          $t9, 0x4($v0)
/* 03D55C 8003D9AC AC4F0000 */  sw          $t7, 0x0($v0)
/* 03D560 8003D9B0 8E620000 */  lw          $v0, 0x0($s3)
/* 03D564 8003D9B4 46144280 */  add.s       $f10, $f8, $f20
/* 03D568 8003D9B8 00146140 */  sll         $t4, $s4, 5
/* 03D56C 8003D9BC 244A0008 */  addiu       $t2, $v0, 0x8
/* 03D570 8003D9C0 AE6A0000 */  sw          $t2, 0x0($s3)
/* 03D574 8003D9C4 318EFFFF */  andi        $t6, $t4, 0xffff
/* 03D578 8003D9C8 3C0BE100 */  lui         $t3, 0xe100
/* 03D57C 8003D9CC 010E7825 */  or          $t7, $t0, $t6
/* 03D580 8003D9D0 AC4F0004 */  sw          $t7, 0x4($v0)
/* 03D584 8003D9D4 AC4B0000 */  sw          $t3, 0x0($v0)
/* 03D588 8003D9D8 4600540D */  trunc.w.s   $f16, $f10
/* 03D58C 8003D9DC 8E620000 */  lw          $v0, 0x0($s3)
/* 03D590 8003D9E0 02509023 */  subu        $s2, $s2, $s0
/* 03D594 8003D9E4 3C18F100 */  lui         $t8, 0xf100
/* 03D598 8003D9E8 244D0008 */  addiu       $t5, $v0, 0x8
/* 03D59C 8003D9EC AE6D0000 */  sw          $t5, 0x0($s3)
/* 03D5A0 8003D9F0 44158000 */  mfc1        $s5, $f16
/* 03D5A4 8003D9F4 0220A025 */  move        $s4, $s1
/* 03D5A8 8003D9F8 AC490004 */  sw          $t1, 0x4($v0)
/* 03D5AC 8003D9FC 1E40FFCB */  bgtz        $s2, .L8003D92C
/* 03D5B0 8003DA00 AC580000 */   sw         $t8, 0x0($v0)
.L8003DA04:
/* 03D5B4 8003DA04 8FBF0054 */  lw          $ra, 0x54($sp)
.L8003DA08:
/* 03D5B8 8003DA08 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 03D5BC 8003DA0C D7B60028 */  ldc1        $f22, 0x28($sp)
/* 03D5C0 8003DA10 8FB00030 */  lw          $s0, 0x30($sp)
/* 03D5C4 8003DA14 8FB10034 */  lw          $s1, 0x34($sp)
/* 03D5C8 8003DA18 8FB20038 */  lw          $s2, 0x38($sp)
/* 03D5CC 8003DA1C 8FB3003C */  lw          $s3, 0x3c($sp)
/* 03D5D0 8003DA20 8FB40040 */  lw          $s4, 0x40($sp)
/* 03D5D4 8003DA24 8FB50044 */  lw          $s5, 0x44($sp)
/* 03D5D8 8003DA28 8FB60048 */  lw          $s6, 0x48($sp)
/* 03D5DC 8003DA2C 8FB7004C */  lw          $s7, 0x4c($sp)
/* 03D5E0 8003DA30 8FBE0050 */  lw          $fp, 0x50($sp)
/* 03D5E4 8003DA34 03E00008 */  jr          $ra
/* 03D5E8 8003DA38 27BD0098 */   addiu      $sp, $sp, 0x98

glabel func_8003DA3C # 25
/* 03D5EC 8003DA3C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 03D5F0 8003DA40 AFB1000C */  sw          $s1, 0xc($sp)
/* 03D5F4 8003DA44 8FB10078 */  lw          $s1, 0x78($sp)
/* 03D5F8 8003DA48 AFB00008 */  sw          $s0, 0x8($sp)
/* 03D5FC 8003DA4C 00C08025 */  move        $s0, $a2
/* 03D600 8003DA50 0226082A */  slt         $at, $s1, $a2
/* 03D604 8003DA54 10200003 */  beqz        $at, .L8003DA64
/* 03D608 8003DA58 8FA8007C */   lw         $t0, 0x7c($sp)
/* 03D60C 8003DA5C 02208025 */  move        $s0, $s1
/* 03D610 8003DA60 00C08825 */  move        $s1, $a2
.L8003DA64:
/* 03D614 8003DA64 0107082A */  slt         $at, $t0, $a3
/* 03D618 8003DA68 10200003 */  beqz        $at, .L8003DA78
/* 03D61C 8003DA6C 00E01025 */   move       $v0, $a3
/* 03D620 8003DA70 01003825 */  move        $a3, $t0
/* 03D624 8003DA74 00404025 */  move        $t0, $v0
.L8003DA78:
/* 03D628 8003DA78 06010002 */  bgez        $s0, .L8003DA84
/* 03D62C 8003DA7C 00000000 */   nop
/* 03D630 8003DA80 00008025 */  move        $s0, $zero
.L8003DA84:
/* 03D634 8003DA84 04E30003 */  bgezl       $a3, .L8003DA94
/* 03D638 8003DA88 8CA20004 */   lw         $v0, 0x4($a1)
/* 03D63C 8003DA8C 00003825 */  move        $a3, $zero
/* 03D640 8003DA90 8CA20004 */  lw          $v0, 0x4($a1)
.L8003DA94:
/* 03D644 8003DA94 2442FFFF */  addiu       $v0, $v0, -0x1
/* 03D648 8003DA98 0051082A */  slt         $at, $v0, $s1
/* 03D64C 8003DA9C 50200003 */  beql        $at, $zero, .L8003DAAC
/* 03D650 8003DAA0 8CA20008 */   lw         $v0, 0x8($a1)
/* 03D654 8003DAA4 00408825 */  move        $s1, $v0
/* 03D658 8003DAA8 8CA20008 */  lw          $v0, 0x8($a1)
.L8003DAAC:
/* 03D65C 8003DAAC 2442FFFF */  addiu       $v0, $v0, -0x1
/* 03D660 8003DAB0 0048082A */  slt         $at, $v0, $t0
/* 03D664 8003DAB4 50200003 */  beql        $at, $zero, .L8003DAC4
/* 03D668 8003DAB8 0230082A */   slt        $at, $s1, $s0
/* 03D66C 8003DABC 00404025 */  move        $t0, $v0
/* 03D670 8003DAC0 0230082A */  slt         $at, $s1, $s0
.L8003DAC4:
/* 03D674 8003DAC4 142000AB */  bnez        $at, .L8003DD74
/* 03D678 8003DAC8 0107082A */   slt        $at, $t0, $a3
/* 03D67C 8003DACC 542000AA */  bnel        $at, $zero, .L8003DD78
/* 03D680 8003DAD0 8FB00008 */   lw         $s0, 0x8($sp)
/* 03D684 8003DAD4 8C820000 */  lw          $v0, 0x0($a0)
/* 03D688 8003DAD8 3C09E700 */  lui         $t1, 0xe700
/* 03D68C 8003DADC 3C0BF500 */  lui         $t3, 0xf500
/* 03D690 8003DAE0 244E0008 */  addiu       $t6, $v0, 0x8
/* 03D694 8003DAE4 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D698 8003DAE8 AC400004 */  sw          $zero, 0x4($v0)
/* 03D69C 8003DAEC 10A000A1 */  beqz        $a1, .L8003DD74
/* 03D6A0 8003DAF0 AC490000 */   sw         $t1, 0x0($v0)
/* 03D6A4 8003DAF4 8CAF000C */  lw          $t7, 0xc($a1)
/* 03D6A8 8003DAF8 24010002 */  addiu       $at, $zero, 0x2
/* 03D6AC 8003DAFC 340E8000 */  ori         $t6, $zero, 0x8000
/* 03D6B0 8003DB00 15E10032 */  bne         $t7, $at, .L8003DBCC
/* 03D6B4 8003DB04 3C19E300 */   lui        $t9, 0xe300
/* 03D6B8 8003DB08 8C820000 */  lw          $v0, 0x0($a0)
/* 03D6BC 8003DB0C 3C19E300 */  lui         $t9, (0xE3001001 >> 16)
/* 03D6C0 8003DB10 37391001 */  ori         $t9, $t9, (0xE3001001 & 0xFFFF)
/* 03D6C4 8003DB14 24580008 */  addiu       $t8, $v0, 0x8
/* 03D6C8 8003DB18 AC980000 */  sw          $t8, 0x0($a0)
/* 03D6CC 8003DB1C AC4E0004 */  sw          $t6, 0x4($v0)
/* 03D6D0 8003DB20 AC590000 */  sw          $t9, 0x0($v0)
/* 03D6D4 8003DB24 8C820000 */  lw          $v0, 0x0($a0)
/* 03D6D8 8003DB28 3C18FD10 */  lui         $t8, 0xfd10
/* 03D6DC 8003DB2C 3C19800F */  lui         $t9, %hi(D_800F2A58)
/* 03D6E0 8003DB30 244F0008 */  addiu       $t7, $v0, 0x8
/* 03D6E4 8003DB34 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03D6E8 8003DB38 AC580000 */  sw          $t8, 0x0($v0)
/* 03D6EC 8003DB3C 8F392A58 */  lw          $t9, %lo(D_800F2A58)($t9)
/* 03D6F0 8003DB40 3C0FE800 */  lui         $t7, 0xe800
/* 03D6F4 8003DB44 3C0A0700 */  lui         $t2, 0x700
/* 03D6F8 8003DB48 AC590004 */  sw          $t9, 0x4($v0)
/* 03D6FC 8003DB4C 8C820000 */  lw          $v0, 0x0($a0)
/* 03D700 8003DB50 3C19F500 */  lui         $t9, (0xF5000100 >> 16)
/* 03D704 8003DB54 37390100 */  ori         $t9, $t9, (0xF5000100 & 0xFFFF)
/* 03D708 8003DB58 244E0008 */  addiu       $t6, $v0, 0x8
/* 03D70C 8003DB5C AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D710 8003DB60 AC400004 */  sw          $zero, 0x4($v0)
/* 03D714 8003DB64 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03D718 8003DB68 8C820000 */  lw          $v0, 0x0($a0)
/* 03D71C 8003DB6C 3C0FE600 */  lui         $t7, 0xe600
/* 03D720 8003DB70 24580008 */  addiu       $t8, $v0, 0x8
/* 03D724 8003DB74 AC980000 */  sw          $t8, 0x0($a0)
/* 03D728 8003DB78 AC4A0004 */  sw          $t2, 0x4($v0)
/* 03D72C 8003DB7C AC590000 */  sw          $t9, 0x0($v0)
/* 03D730 8003DB80 8C820000 */  lw          $v0, 0x0($a0)
/* 03D734 8003DB84 3C19F000 */  lui         $t9, (0xF0001001 >> 16)
/* 03D738 8003DB88 244E0008 */  addiu       $t6, $v0, 0x8
/* 03D73C 8003DB8C AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D740 8003DB90 AC400004 */  sw          $zero, 0x4($v0)
/* 03D744 8003DB94 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03D748 8003DB98 8C820000 */  lw          $v0, 0x0($a0)
/* 03D74C 8003DB9C 3C0E0703 */  lui         $t6, (0x703C000 >> 16)
/* 03D750 8003DBA0 35CEC000 */  ori         $t6, $t6, (0x703C000 & 0xFFFF)
/* 03D754 8003DBA4 24580008 */  addiu       $t8, $v0, 0x8
/* 03D758 8003DBA8 AC980000 */  sw          $t8, 0x0($a0)
/* 03D75C 8003DBAC AC4E0004 */  sw          $t6, 0x4($v0)
/* 03D760 8003DBB0 AC590000 */  sw          $t9, 0x0($v0)
/* 03D764 8003DBB4 8C820000 */  lw          $v0, 0x0($a0)
/* 03D768 8003DBB8 244F0008 */  addiu       $t7, $v0, 0x8
/* 03D76C 8003DBBC AC8F0000 */  sw          $t7, 0x0($a0)
/* 03D770 8003DBC0 AC400004 */  sw          $zero, 0x4($v0)
/* 03D774 8003DBC4 10000008 */  b           .L8003DBE8
/* 03D778 8003DBC8 AC490000 */   sw         $t1, 0x0($v0)
.L8003DBCC:
/* 03D77C 8003DBCC 8C820000 */  lw          $v0, 0x0($a0)
/* 03D780 8003DBD0 37391001 */  ori         $t9, $t9, (0xF0001001 & 0xFFFF)
/* 03D784 8003DBD4 3C0A0700 */  lui         $t2, 0x700
/* 03D788 8003DBD8 24580008 */  addiu       $t8, $v0, 0x8
/* 03D78C 8003DBDC AC980000 */  sw          $t8, 0x0($a0)
/* 03D790 8003DBE0 AC400004 */  sw          $zero, 0x4($v0)
/* 03D794 8003DBE4 AC590000 */  sw          $t9, 0x0($v0)
.L8003DBE8:
/* 03D798 8003DBE8 8C820000 */  lw          $v0, 0x0($a0)
/* 03D79C 8003DBEC 3C01FD00 */  lui         $at, 0xfd00
/* 03D7A0 8003DBF0 02301823 */  subu        $v1, $s1, $s0
/* 03D7A4 8003DBF4 244E0008 */  addiu       $t6, $v0, 0x8
/* 03D7A8 8003DBF8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D7AC 8003DBFC 8CAF000C */  lw          $t7, 0xc($a1)
/* 03D7B0 8003DC00 24630001 */  addiu       $v1, $v1, 0x1
/* 03D7B4 8003DC04 00076880 */  sll         $t5, $a3, 2
/* 03D7B8 8003DC08 31F80007 */  andi        $t8, $t7, 0x7
/* 03D7BC 8003DC0C 0018CD40 */  sll         $t9, $t8, 21
/* 03D7C0 8003DC10 8CB80004 */  lw          $t8, 0x4($a1)
/* 03D7C4 8003DC14 03217025 */  or          $t6, $t9, $at
/* 03D7C8 8003DC18 3C010008 */  lui         $at, 0x8
/* 03D7CC 8003DC1C 01C17825 */  or          $t7, $t6, $at
/* 03D7D0 8003DC20 0018C843 */  sra         $t9, $t8, 1
/* 03D7D4 8003DC24 272EFFFF */  addiu       $t6, $t9, -0x1
/* 03D7D8 8003DC28 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03D7DC 8003DC2C 01F8C825 */  or          $t9, $t7, $t8
/* 03D7E0 8003DC30 AC590000 */  sw          $t9, 0x0($v0)
/* 03D7E4 8003DC34 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03D7E8 8003DC38 0003C043 */  sra         $t8, $v1, 1
/* 03D7EC 8003DC3C 27030007 */  addiu       $v1, $t8, 0x7
/* 03D7F0 8003DC40 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03D7F4 8003DC44 8C820000 */  lw          $v0, 0x0($a0)
/* 03D7F8 8003DC48 0003C8C3 */  sra         $t9, $v1, 3
/* 03D7FC 8003DC4C 332E01FF */  andi        $t6, $t9, 0x1ff
/* 03D800 8003DC50 244F0008 */  addiu       $t7, $v0, 0x8
/* 03D804 8003DC54 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03D808 8003DC58 8CB8000C */  lw          $t8, 0xc($a1)
/* 03D80C 8003DC5C 000E1A40 */  sll         $v1, $t6, 9
/* 03D810 8003DC60 AC4A0004 */  sw          $t2, 0x4($v0)
/* 03D814 8003DC64 33190007 */  andi        $t9, $t8, 0x7
/* 03D818 8003DC68 00197540 */  sll         $t6, $t9, 21
/* 03D81C 8003DC6C 01CB7825 */  or          $t7, $t6, $t3
/* 03D820 8003DC70 01E1C025 */  or          $t8, $t7, $at
/* 03D824 8003DC74 0303C825 */  or          $t9, $t8, $v1
/* 03D828 8003DC78 AC590000 */  sw          $t9, 0x0($v0)
/* 03D82C 8003DC7C 8C820000 */  lw          $v0, 0x0($a0)
/* 03D830 8003DC80 3C0FE600 */  lui         $t7, 0xe600
/* 03D834 8003DC84 31B90FFF */  andi        $t9, $t5, 0xfff
/* 03D838 8003DC88 244E0008 */  addiu       $t6, $v0, 0x8
/* 03D83C 8003DC8C AC8E0000 */  sw          $t6, 0x0($a0)
/* 03D840 8003DC90 AC400004 */  sw          $zero, 0x4($v0)
/* 03D844 8003DC94 AC4F0000 */  sw          $t7, 0x0($v0)
/* 03D848 8003DC98 8C820000 */  lw          $v0, 0x0($a0)
/* 03D84C 8003DC9C 00107040 */  sll         $t6, $s0, 1
/* 03D850 8003DCA0 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 03D854 8003DCA4 24580008 */  addiu       $t8, $v0, 0x8
/* 03D858 8003DCA8 AC980000 */  sw          $t8, 0x0($a0)
/* 03D85C 8003DCAC 000FC300 */  sll         $t8, $t7, 12
/* 03D860 8003DCB0 03206825 */  move        $t5, $t9
/* 03D864 8003DCB4 3C01F400 */  lui         $at, 0xf400
/* 03D868 8003DCB8 0301C825 */  or          $t9, $t8, $at
/* 03D86C 8003DCBC 032D7025 */  or          $t6, $t9, $t5
/* 03D870 8003DCC0 0011C840 */  sll         $t9, $s1, 1
/* 03D874 8003DCC4 00087880 */  sll         $t7, $t0, 2
/* 03D878 8003DCC8 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03D87C 8003DCCC 332E0FFF */  andi        $t6, $t9, 0xfff
/* 03D880 8003DCD0 31F80FFF */  andi        $t8, $t7, 0xfff
/* 03D884 8003DCD4 000E7B00 */  sll         $t7, $t6, 12
/* 03D888 8003DCD8 01EAC825 */  or          $t9, $t7, $t2
/* 03D88C 8003DCDC 03387025 */  or          $t6, $t9, $t8
/* 03D890 8003DCE0 AFB80014 */  sw          $t8, 0x14($sp)
/* 03D894 8003DCE4 AC4E0004 */  sw          $t6, 0x4($v0)
/* 03D898 8003DCE8 8C820000 */  lw          $v0, 0x0($a0)
/* 03D89C 8003DCEC 3C01F200 */  lui         $at, 0xf200
/* 03D8A0 8003DCF0 AFA20028 */  sw          $v0, 0x28($sp)
/* 03D8A4 8003DCF4 244F0008 */  addiu       $t7, $v0, 0x8
/* 03D8A8 8003DCF8 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03D8AC 8003DCFC 8FB90028 */  lw          $t9, 0x28($sp)
/* 03D8B0 8003DD00 AF290000 */  sw          $t1, 0x0($t9)
/* 03D8B4 8003DD04 AF200004 */  sw          $zero, 0x4($t9)
/* 03D8B8 8003DD08 8C820000 */  lw          $v0, 0x0($a0)
/* 03D8BC 8003DD0C AFA20024 */  sw          $v0, 0x24($sp)
/* 03D8C0 8003DD10 24580008 */  addiu       $t8, $v0, 0x8
/* 03D8C4 8003DD14 AC980000 */  sw          $t8, 0x0($a0)
/* 03D8C8 8003DD18 8CAE000C */  lw          $t6, 0xc($a1)
/* 03D8CC 8003DD1C 31CF0007 */  andi        $t7, $t6, 0x7
/* 03D8D0 8003DD20 000FCD40 */  sll         $t9, $t7, 21
/* 03D8D4 8003DD24 8FAF0024 */  lw          $t7, 0x24($sp)
/* 03D8D8 8003DD28 032BC025 */  or          $t8, $t9, $t3
/* 03D8DC 8003DD2C 03037025 */  or          $t6, $t8, $v1
/* 03D8E0 8003DD30 ADEE0000 */  sw          $t6, 0x0($t7)
/* 03D8E4 8003DD34 ADE00004 */  sw          $zero, 0x4($t7)
/* 03D8E8 8003DD38 8C820000 */  lw          $v0, 0x0($a0)
/* 03D8EC 8003DD3C 0010C080 */  sll         $t8, $s0, 2
/* 03D8F0 8003DD40 330E0FFF */  andi        $t6, $t8, 0xfff
/* 03D8F4 8003DD44 24590008 */  addiu       $t9, $v0, 0x8
/* 03D8F8 8003DD48 AC990000 */  sw          $t9, 0x0($a0)
/* 03D8FC 8003DD4C 000E7B00 */  sll         $t7, $t6, 12
/* 03D900 8003DD50 01E1C825 */  or          $t9, $t7, $at
/* 03D904 8003DD54 032DC025 */  or          $t8, $t9, $t5
/* 03D908 8003DD58 AC580000 */  sw          $t8, 0x0($v0)
/* 03D90C 8003DD5C 8FB80014 */  lw          $t8, 0x14($sp)
/* 03D910 8003DD60 00117080 */  sll         $t6, $s1, 2
/* 03D914 8003DD64 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 03D918 8003DD68 000FCB00 */  sll         $t9, $t7, 12
/* 03D91C 8003DD6C 03387025 */  or          $t6, $t9, $t8
/* 03D920 8003DD70 AC4E0004 */  sw          $t6, 0x4($v0)
.L8003DD74:
/* 03D924 8003DD74 8FB00008 */  lw          $s0, 0x8($sp)
.L8003DD78:
/* 03D928 8003DD78 8FB1000C */  lw          $s1, 0xc($sp)
/* 03D92C 8003DD7C 03E00008 */  jr          $ra
/* 03D930 8003DD80 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8003DD84 # 26
/* 03D934 8003DD84 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03D938 8003DD88 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03D93C 8003DD8C 8CAE0004 */  lw          $t6, 0x4($a1)
/* 03D940 8003DD90 00003025 */  move        $a2, $zero
/* 03D944 8003DD94 00003825 */  move        $a3, $zero
/* 03D948 8003DD98 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 03D94C 8003DD9C AFAF0010 */  sw          $t7, 0x10($sp)
/* 03D950 8003DDA0 8CB80008 */  lw          $t8, 0x8($a1)
/* 03D954 8003DDA4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 03D958 8003DDA8 0C00F68F */  jal         func_8003DA3C
/* 03D95C 8003DDAC AFB90014 */   sw         $t9, 0x14($sp)
/* 03D960 8003DDB0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03D964 8003DDB4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03D968 8003DDB8 03E00008 */  jr          $ra
/* 03D96C 8003DDBC 00000000 */   nop

glabel func_8003DDC0 # 27
/* 03D970 8003DDC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D974 8003DDC4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D978 8003DDC8 AFA40018 */  sw          $a0, 0x18($sp)
/* 03D97C 8003DDCC 14C00004 */  bnez        $a2, .L8003DDE0
/* 03D980 8003DDD0 AFA5001C */   sw         $a1, 0x1c($sp)
/* 03D984 8003DDD4 0C00F780 */  jal         func_8003DE00
/* 03D988 8003DDD8 AFA60020 */   sw         $a2, 0x20($sp)
/* 03D98C 8003DDDC 8FA60020 */  lw          $a2, 0x20($sp)
.L8003DDE0:
/* 03D990 8003DDE0 10C00003 */  beqz        $a2, .L8003DDF0
/* 03D994 8003DDE4 8FA40018 */   lw         $a0, 0x18($sp)
/* 03D998 8003DDE8 0C00FA25 */  jal         func_8003E894
/* 03D99C 8003DDEC 8FA5001C */   lw         $a1, 0x1c($sp)
.L8003DDF0:
/* 03D9A0 8003DDF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D9A4 8003DDF4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D9A8 8003DDF8 03E00008 */  jr          $ra
/* 03D9AC 8003DDFC 00000000 */   nop

glabel func_8003DE00 # 28
/* 03D9B0 8003DE00 27BDFF50 */  addiu       $sp, $sp, -0xb0
/* 03D9B4 8003DE04 AFBF003C */  sw          $ra, 0x3c($sp)
/* 03D9B8 8003DE08 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03D9BC 8003DE0C AFA400B0 */  sw          $a0, 0xb0($sp)
/* 03D9C0 8003DE10 240E0010 */  addiu       $t6, $zero, 0x10
/* 03D9C4 8003DE14 00A08825 */  move        $s1, $a1
/* 03D9C8 8003DE18 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03D9CC 8003DE1C AFB70034 */  sw          $s7, 0x34($sp)
/* 03D9D0 8003DE20 AFB60030 */  sw          $s6, 0x30($sp)
/* 03D9D4 8003DE24 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03D9D8 8003DE28 AFB40028 */  sw          $s4, 0x28($sp)
/* 03D9DC 8003DE2C AFB30024 */  sw          $s3, 0x24($sp)
/* 03D9E0 8003DE30 AFB20020 */  sw          $s2, 0x20($sp)
/* 03D9E4 8003DE34 AFB00018 */  sw          $s0, 0x18($sp)
/* 03D9E8 8003DE38 AFA600B8 */  sw          $a2, 0xb8($sp)
/* 03D9EC 8003DE3C AFAE00A8 */  sw          $t6, 0xa8($sp)
/* 03D9F0 8003DE40 0C0126AB */  jal         strlen
/* 03D9F4 8003DE44 00A02025 */   move       $a0, $a1
/* 03D9F8 8003DE48 240F0080 */  addiu       $t7, $zero, 0x80
/* 03D9FC 8003DE4C 28410081 */  slti        $at, $v0, 0x81
/* 03DA00 8003DE50 00401825 */  move        $v1, $v0
/* 03DA04 8003DE54 14200002 */  bnez        $at, .L8003DE60
/* 03DA08 8003DE58 AFAF0094 */   sw         $t7, 0x94($sp)
/* 03DA0C 8003DE5C 24030080 */  addiu       $v1, $zero, 0x80
.L8003DE60:
/* 03DA10 8003DE60 14600004 */  bnez        $v1, .L8003DE74
/* 03DA14 8003DE64 3C12800F */   lui        $s2, %hi(D_800F2960)
/* 03DA18 8003DE68 8FB800B0 */  lw          $t8, 0xb0($sp)
/* 03DA1C 8003DE6C 100000A0 */  b           .L8003E0F0
/* 03DA20 8003DE70 AF000000 */   sw         $zero, 0x0($t8)
.L8003DE74:
/* 03DA24 8003DE74 26522960 */  addiu       $s2, $s2, %lo(D_800F2960)
/* 03DA28 8003DE78 02402025 */  move        $a0, $s2
/* 03DA2C 8003DE7C 24050010 */  addiu       $a1, $zero, 0x10
/* 03DA30 8003DE80 2406027F */  addiu       $a2, $zero, 0x27f
/* 03DA34 8003DE84 0C00E03D */  jal         func_800380F4
/* 03DA38 8003DE88 AFA30098 */   sw         $v1, 0x98($sp)
/* 03DA3C 8003DE8C 8FB00098 */  lw          $s0, 0x98($sp)
/* 03DA40 8003DE90 AFA20060 */  sw          $v0, 0x60($sp)
/* 03DA44 8003DE94 02402025 */  move        $a0, $s2
/* 03DA48 8003DE98 00102980 */  sll         $a1, $s0, 6
/* 03DA4C 8003DE9C 00A08025 */  move        $s0, $a1
/* 03DA50 8003DEA0 0C00E03D */  jal         func_800380F4
/* 03DA54 8003DEA4 24060282 */   addiu      $a2, $zero, 0x282
/* 03DA58 8003DEA8 AFA20074 */  sw          $v0, 0x74($sp)
/* 03DA5C 8003DEAC 00402025 */  move        $a0, $v0
/* 03DA60 8003DEB0 0C014388 */  jal         bzero
/* 03DA64 8003DEB4 02002825 */   move       $a1, $s0
/* 03DA68 8003DEB8 AFB10064 */  sw          $s1, 0x64($sp)
/* 03DA6C 8003DEBC AFA00084 */  sw          $zero, 0x84($sp)
/* 03DA70 8003DEC0 92290000 */  lbu         $t1, 0x0($s1)
/* 03DA74 8003DEC4 241E0007 */  addiu       $fp, $zero, 0x7
/* 03DA78 8003DEC8 2417000C */  addiu       $s7, $zero, 0xc
/* 03DA7C 8003DECC 1120007C */  beqz        $t1, .L8003E0C0
/* 03DA80 8003DED0 312200FF */   andi       $v0, $t1, 0xff
/* 03DA84 8003DED4 AFA00090 */  sw          $zero, 0x90($sp)
/* 03DA88 8003DED8 24160008 */  addiu       $s6, $zero, 0x8
/* 03DA8C 8003DEDC 304B0080 */  andi        $t3, $v0, 0x80
.L8003DEE0:
/* 03DA90 8003DEE0 8FA80090 */  lw          $t0, 0x90($sp)
/* 03DA94 8003DEE4 11600020 */  beqz        $t3, .L8003DF68
/* 03DA98 8003DEE8 00009825 */   move       $s3, $zero
/* 03DA9C 8003DEEC 25080001 */  addiu       $t0, $t0, 0x1
/* 03DAA0 8003DEF0 29010080 */  slti        $at, $t0, 0x80
/* 03DAA4 8003DEF4 10200010 */  beqz        $at, .L8003DF38
/* 03DAA8 8003DEF8 24150004 */   addiu      $s5, $zero, 0x4
/* 03DAAC 8003DEFC 8FA30064 */  lw          $v1, 0x64($sp)
/* 03DAB0 8003DF00 AFA80090 */  sw          $t0, 0x90($sp)
/* 03DAB4 8003DF04 250D0001 */  addiu       $t5, $t0, 0x1
/* 03DAB8 8003DF08 AFAD0090 */  sw          $t5, 0x90($sp)
/* 03DABC 8003DF0C 906F0001 */  lbu         $t7, 0x1($v1)
/* 03DAC0 8003DF10 00027200 */  sll         $t6, $v0, 8
/* 03DAC4 8003DF14 24630001 */  addiu       $v1, $v1, 0x1
/* 03DAC8 8003DF18 02C0A825 */  move        $s5, $s6
/* 03DACC 8003DF1C AFA30064 */  sw          $v1, 0x64($sp)
/* 03DAD0 8003DF20 0C0126F4 */  jal         func_80049BD0
/* 03DAD4 8003DF24 01CF2025 */   or         $a0, $t6, $t7
/* 03DAD8 8003DF28 0C012ABF */  jal         func_8004AAFC
/* 03DADC 8003DF2C 00402025 */   move       $a0, $v0
/* 03DAE0 8003DF30 1000001C */  b           .L8003DFA4
/* 03DAE4 8003DF34 00402025 */   move       $a0, $v0
.L8003DF38:
/* 03DAE8 8003DF38 3C04800F */  lui         $a0, %hi(D_800F2A48)
/* 03DAEC 8003DF3C 8C842A48 */  lw          $a0, %lo(D_800F2A48)($a0)
/* 03DAF0 8003DF40 27A5005C */  addiu       $a1, $sp, 0x5c
/* 03DAF4 8003DF44 27A60058 */  addiu       $a2, $sp, 0x58
/* 03DAF8 8003DF48 0004C080 */  sll         $t8, $a0, 2
/* 03DAFC 8003DF4C 0304C023 */  subu        $t8, $t8, $a0
/* 03DB00 8003DF50 00182180 */  sll         $a0, $t8, 6
/* 03DB04 8003DF54 27A70054 */  addiu       $a3, $sp, 0x54
/* 03DB08 8003DF58 0C012AB0 */  jal         func_8004AAC0
/* 03DB0C 8003DF5C AFA80090 */   sw         $t0, 0x90($sp)
/* 03DB10 8003DF60 10000010 */  b           .L8003DFA4
/* 03DB14 8003DF64 00402025 */   move       $a0, $v0
.L8003DF68:
/* 03DB18 8003DF68 3C19800F */  lui         $t9, %hi(D_800F2A48)
/* 03DB1C 8003DF6C 8F392A48 */  lw          $t9, %lo(D_800F2A48)($t9)
/* 03DB20 8003DF70 25080001 */  addiu       $t0, $t0, 0x1
/* 03DB24 8003DF74 24150004 */  addiu       $s5, $zero, 0x4
/* 03DB28 8003DF78 00194880 */  sll         $t1, $t9, 2
/* 03DB2C 8003DF7C 01394823 */  subu        $t1, $t1, $t9
/* 03DB30 8003DF80 00094980 */  sll         $t1, $t1, 6
/* 03DB34 8003DF84 00492021 */  addu        $a0, $v0, $t1
/* 03DB38 8003DF88 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 03DB3C 8003DF8C AFA80090 */  sw          $t0, 0x90($sp)
/* 03DB40 8003DF90 27A5005C */  addiu       $a1, $sp, 0x5c
/* 03DB44 8003DF94 27A60058 */  addiu       $a2, $sp, 0x58
/* 03DB48 8003DF98 0C012AB0 */  jal         func_8004AAC0
/* 03DB4C 8003DF9C 27A70054 */   addiu      $a3, $sp, 0x54
/* 03DB50 8003DFA0 00402025 */  move        $a0, $v0
.L8003DFA4:
/* 03DB54 8003DFA4 0C00F848 */  jal         func_8003E120
/* 03DB58 8003DFA8 27A5004C */   addiu      $a1, $sp, 0x4c
/* 03DB5C 8003DFAC 8FAA004C */  lw          $t2, 0x4c($sp)
/* 03DB60 8003DFB0 24010004 */  addiu       $at, $zero, 0x4
/* 03DB64 8003DFB4 00408825 */  move        $s1, $v0
/* 03DB68 8003DFB8 55410004 */  bnel        $t2, $at, .L8003DFCC
/* 03DB6C 8003DFBC 8FB40098 */   lw         $s4, 0x98($sp)
/* 03DB70 8003DFC0 0C00FDAE */  jal         func_8003F6B8
/* 03DB74 8003DFC4 00000000 */   nop
/* 03DB78 8003DFC8 8FB40098 */  lw          $s4, 0x98($sp)
.L8003DFCC:
/* 03DB7C 8003DFCC 8FAB0074 */  lw          $t3, 0x74($sp)
/* 03DB80 8003DFD0 8FAC0084 */  lw          $t4, 0x84($sp)
/* 03DB84 8003DFD4 00146880 */  sll         $t5, $s4, 2
/* 03DB88 8003DFD8 01A0A025 */  move        $s4, $t5
/* 03DB8C 8003DFDC 02208025 */  move        $s0, $s1
/* 03DB90 8003DFE0 016C9021 */  addu        $s2, $t3, $t4
.L8003DFE4:
/* 03DB94 8003DFE4 16B60007 */  bne         $s5, $s6, .L8003E004
/* 03DB98 8003DFE8 8FB1005C */   lw         $s1, 0x5c($sp)
/* 03DB9C 8003DFEC 02002025 */  move        $a0, $s0
/* 03DBA0 8003DFF0 02402825 */  move        $a1, $s2
/* 03DBA4 8003DFF4 0C014984 */  jal         bcopy
/* 03DBA8 8003DFF8 02C03025 */   move       $a2, $s6
/* 03DBAC 8003DFFC 1000001E */  b           .L8003E078
/* 03DBB0 8003E000 26100008 */   addiu      $s0, $s0, 0x8
.L8003E004:
/* 03DBB4 8003E004 26310001 */  addiu       $s1, $s1, 0x1
/* 03DBB8 8003E008 06210003 */  bgez        $s1, .L8003E018
/* 03DBBC 8003E00C 00117043 */   sra        $t6, $s1, 1
/* 03DBC0 8003E010 26210001 */  addiu       $at, $s1, 0x1
/* 03DBC4 8003E014 00017043 */  sra         $t6, $at, 1
.L8003E018:
/* 03DBC8 8003E018 01C08825 */  move        $s1, $t6
/* 03DBCC 8003E01C 02402025 */  move        $a0, $s2
/* 03DBD0 8003E020 0C014388 */  jal         bzero
/* 03DBD4 8003E024 24050004 */   addiu      $a1, $zero, 0x4
/* 03DBD8 8003E028 8FA20054 */  lw          $v0, 0x54($sp)
/* 03DBDC 8003E02C 8FB80058 */  lw          $t8, 0x58($sp)
/* 03DBE0 8003E030 02E27823 */  subu        $t7, $s7, $v0
/* 03DBE4 8003E034 026F082A */  slt         $at, $s3, $t7
/* 03DBE8 8003E038 1420000F */  bnez        $at, .L8003E078
/* 03DBEC 8003E03C 0302C823 */   subu       $t9, $t8, $v0
/* 03DBF0 8003E040 2729000C */  addiu       $t1, $t9, 0xc
/* 03DBF4 8003E044 0269082A */  slt         $at, $s3, $t1
/* 03DBF8 8003E048 1020000B */  beqz        $at, .L8003E078
/* 03DBFC 8003E04C 8FAA005C */   lw         $t2, 0x5c($sp)
/* 03DC00 8003E050 03CA5823 */  subu        $t3, $fp, $t2
/* 03DC04 8003E054 02002025 */  move        $a0, $s0
/* 03DC08 8003E058 05610003 */  bgez        $t3, .L8003E068
/* 03DC0C 8003E05C 000B6083 */   sra        $t4, $t3, 2
/* 03DC10 8003E060 25610003 */  addiu       $at, $t3, 0x3
/* 03DC14 8003E064 00016083 */  sra         $t4, $at, 2
.L8003E068:
/* 03DC18 8003E068 01922821 */  addu        $a1, $t4, $s2
/* 03DC1C 8003E06C 0C014984 */  jal         bcopy
/* 03DC20 8003E070 02203025 */   move       $a2, $s1
/* 03DC24 8003E074 02118021 */  addu        $s0, $s0, $s1
.L8003E078:
/* 03DC28 8003E078 8FAD00A8 */  lw          $t5, 0xa8($sp)
/* 03DC2C 8003E07C 26730001 */  addiu       $s3, $s3, 0x1
/* 03DC30 8003E080 02549021 */  addu        $s2, $s2, $s4
/* 03DC34 8003E084 166DFFD7 */  bne         $s3, $t5, .L8003DFE4
/* 03DC38 8003E088 00000000 */   nop
/* 03DC3C 8003E08C 8FAE0064 */  lw          $t6, 0x64($sp)
/* 03DC40 8003E090 8FB80084 */  lw          $t8, 0x84($sp)
/* 03DC44 8003E094 8FA90090 */  lw          $t1, 0x90($sp)
/* 03DC48 8003E098 25CF0001 */  addiu       $t7, $t6, 0x1
/* 03DC4C 8003E09C 0315C821 */  addu        $t9, $t8, $s5
/* 03DC50 8003E0A0 AFB90084 */  sw          $t9, 0x84($sp)
/* 03DC54 8003E0A4 AFAF0064 */  sw          $t7, 0x64($sp)
/* 03DC58 8003E0A8 91E20000 */  lbu         $v0, 0x0($t7)
/* 03DC5C 8003E0AC 8FAA0094 */  lw          $t2, 0x94($sp)
/* 03DC60 8003E0B0 10400003 */  beqz        $v0, .L8003E0C0
/* 03DC64 8003E0B4 012A082A */   slt        $at, $t1, $t2
/* 03DC68 8003E0B8 5420FF89 */  bnel        $at, $zero, .L8003DEE0
/* 03DC6C 8003E0BC 304B0080 */   andi       $t3, $v0, 0x80
.L8003E0C0:
/* 03DC70 8003E0C0 8FA20060 */  lw          $v0, 0x60($sp)
/* 03DC74 8003E0C4 240B0004 */  addiu       $t3, $zero, 0x4
/* 03DC78 8003E0C8 240E0010 */  addiu       $t6, $zero, 0x10
/* 03DC7C 8003E0CC AC4B000C */  sw          $t3, 0xc($v0)
/* 03DC80 8003E0D0 8FAC0098 */  lw          $t4, 0x98($sp)
/* 03DC84 8003E0D4 AC4E0008 */  sw          $t6, 0x8($v0)
/* 03DC88 8003E0D8 000C68C0 */  sll         $t5, $t4, 3
/* 03DC8C 8003E0DC AC4D0004 */  sw          $t5, 0x4($v0)
/* 03DC90 8003E0E0 8FB80074 */  lw          $t8, 0x74($sp)
/* 03DC94 8003E0E4 AC580000 */  sw          $t8, 0x0($v0)
/* 03DC98 8003E0E8 8FB900B0 */  lw          $t9, 0xb0($sp)
/* 03DC9C 8003E0EC AF220000 */  sw          $v0, 0x0($t9)
.L8003E0F0:
/* 03DCA0 8003E0F0 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03DCA4 8003E0F4 8FB00018 */  lw          $s0, 0x18($sp)
/* 03DCA8 8003E0F8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03DCAC 8003E0FC 8FB20020 */  lw          $s2, 0x20($sp)
/* 03DCB0 8003E100 8FB30024 */  lw          $s3, 0x24($sp)
/* 03DCB4 8003E104 8FB40028 */  lw          $s4, 0x28($sp)
/* 03DCB8 8003E108 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03DCBC 8003E10C 8FB60030 */  lw          $s6, 0x30($sp)
/* 03DCC0 8003E110 8FB70034 */  lw          $s7, 0x34($sp)
/* 03DCC4 8003E114 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03DCC8 8003E118 03E00008 */  jr          $ra
/* 03DCCC 8003E11C 27BD00B0 */   addiu      $sp, $sp, 0xb0

glabel func_8003E120 # 29
/* 03DCD0 8003E120 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DCD4 8003E124 AFA40020 */  sw          $a0, 0x20($sp)
/* 03DCD8 8003E128 8FAE0020 */  lw          $t6, 0x20($sp)
/* 03DCDC 8003E12C 3C0F007B */  lui         $t7, 0x7b
/* 03DCE0 8003E130 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DCE4 8003E134 AFA50024 */  sw          $a1, 0x24($sp)
/* 03DCE8 8003E138 25EF7A10 */  addiu       $t7, $t7, 0x7a10
/* 03DCEC 8003E13C 3C04800F */  lui         $a0, %hi(D_800F2A60)
/* 03DCF0 8003E140 AFA0001C */  sw          $zero, 0x1c($sp)
/* 03DCF4 8003E144 24842A60 */  addiu       $a0, $a0, %lo(D_800F2A60)
/* 03DCF8 8003E148 27A7001C */  addiu       $a3, $sp, 0x1c
/* 03DCFC 8003E14C 24060080 */  addiu       $a2, $zero, 0x80
/* 03DD00 8003E150 0C00FE12 */  jal         func_8003F848
/* 03DD04 8003E154 01CF2821 */   addu       $a1, $t6, $t7
/* 03DD08 8003E158 8FA30024 */  lw          $v1, 0x24($sp)
/* 03DD0C 8003E15C 50600003 */  beql        $v1, $zero, .L8003E16C
/* 03DD10 8003E160 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03DD14 8003E164 AC620000 */  sw          $v0, 0x0($v1)
/* 03DD18 8003E168 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003E16C:
/* 03DD1C 8003E16C 8FA2001C */  lw          $v0, 0x1c($sp)
/* 03DD20 8003E170 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DD24 8003E174 03E00008 */  jr          $ra
/* 03DD28 8003E178 00000000 */   nop

glabel func_8003E17C # 30
/* 03DD2C 8003E17C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DD30 8003E180 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DD34 8003E184 0C012ABF */  jal         func_8004AAFC
/* 03DD38 8003E188 00000000 */   nop
/* 03DD3C 8003E18C 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03DD40 8003E190 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03DD44 8003E194 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DD48 8003E198 3C0FFD90 */  lui         $t7, 0xfd90
/* 03DD4C 8003E19C 00402025 */  move        $a0, $v0
/* 03DD50 8003E1A0 246E0008 */  addiu       $t6, $v1, 0x8
/* 03DD54 8003E1A4 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03DD58 8003E1A8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03DD5C 8003E1AC 00002825 */  move        $a1, $zero
/* 03DD60 8003E1B0 0C00F848 */  jal         func_8003E120
/* 03DD64 8003E1B4 AFA30018 */   sw         $v1, 0x18($sp)
/* 03DD68 8003E1B8 8FAD0018 */  lw          $t5, 0x18($sp)
/* 03DD6C 8003E1BC 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03DD70 8003E1C0 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03DD74 8003E1C4 ADA20004 */  sw          $v0, 0x4($t5)
/* 03DD78 8003E1C8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DD7C 8003E1CC 3C19F590 */  lui         $t9, 0xf590
/* 03DD80 8003E1D0 3C0E0700 */  lui         $t6, 0x700
/* 03DD84 8003E1D4 24780008 */  addiu       $t8, $v1, 0x8
/* 03DD88 8003E1D8 ACD80000 */  sw          $t8, 0x0($a2)
/* 03DD8C 8003E1DC AC6E0004 */  sw          $t6, 0x4($v1)
/* 03DD90 8003E1E0 AC790000 */  sw          $t9, 0x0($v1)
/* 03DD94 8003E1E4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DD98 8003E1E8 3C18E600 */  lui         $t8, 0xe600
/* 03DD9C 8003E1EC 3C0EF300 */  lui         $t6, 0xf300
/* 03DDA0 8003E1F0 246F0008 */  addiu       $t7, $v1, 0x8
/* 03DDA4 8003E1F4 ACCF0000 */  sw          $t7, 0x0($a2)
/* 03DDA8 8003E1F8 AC600004 */  sw          $zero, 0x4($v1)
/* 03DDAC 8003E1FC AC780000 */  sw          $t8, 0x0($v1)
/* 03DDB0 8003E200 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DDB4 8003E204 3C0F0703 */  lui         $t7, (0x703F800 >> 16)
/* 03DDB8 8003E208 35EFF800 */  ori         $t7, $t7, (0x703F800 & 0xFFFF)
/* 03DDBC 8003E20C 24790008 */  addiu       $t9, $v1, 0x8
/* 03DDC0 8003E210 ACD90000 */  sw          $t9, 0x0($a2)
/* 03DDC4 8003E214 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03DDC8 8003E218 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03DDCC 8003E21C 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DDD0 8003E220 3C19E700 */  lui         $t9, 0xe700
/* 03DDD4 8003E224 3C0FF580 */  lui         $t7, (0xF5800200 >> 16)
/* 03DDD8 8003E228 24780008 */  addiu       $t8, $v1, 0x8
/* 03DDDC 8003E22C ACD80000 */  sw          $t8, 0x0($a2)
/* 03DDE0 8003E230 AC600004 */  sw          $zero, 0x4($v1)
/* 03DDE4 8003E234 AC790000 */  sw          $t9, 0x0($v1)
/* 03DDE8 8003E238 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DDEC 8003E23C 35EF0200 */  ori         $t7, $t7, (0xF5800200 & 0xFFFF)
/* 03DDF0 8003E240 3C19F200 */  lui         $t9, 0xf200
/* 03DDF4 8003E244 246E0008 */  addiu       $t6, $v1, 0x8
/* 03DDF8 8003E248 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03DDFC 8003E24C AC600004 */  sw          $zero, 0x4($v1)
/* 03DE00 8003E250 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03DE04 8003E254 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DE08 8003E258 3C0E0003 */  lui         $t6, (0x3C03C >> 16)
/* 03DE0C 8003E25C 35CEC03C */  ori         $t6, $t6, (0x3C03C & 0xFFFF)
/* 03DE10 8003E260 24780008 */  addiu       $t8, $v1, 0x8
/* 03DE14 8003E264 ACD80000 */  sw          $t8, 0x0($a2)
/* 03DE18 8003E268 24040010 */  addiu       $a0, $zero, 0x10
/* 03DE1C 8003E26C 24050010 */  addiu       $a1, $zero, 0x10
/* 03DE20 8003E270 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03DE24 8003E274 0C00F478 */  jal         func_8003D1E0
/* 03DE28 8003E278 AC790000 */   sw         $t9, 0x0($v1)
/* 03DE2C 8003E27C 3C013FE0 */  lui         $at, 0x3fe0
/* 03DE30 8003E280 44810800 */  mtc1        $at, $f1
/* 03DE34 8003E284 3C014180 */  lui         $at, 0x4180
/* 03DE38 8003E288 44817000 */  mtc1        $at, $f14
/* 03DE3C 8003E28C 3C0A800F */  lui         $t2, %hi(D_800F2A50)
/* 03DE40 8003E290 254A2A50 */  addiu       $t2, $t2, %lo(D_800F2A50)
/* 03DE44 8003E294 3C014480 */  lui         $at, 0x4480
/* 03DE48 8003E298 44818000 */  mtc1        $at, $f16
/* 03DE4C 8003E29C C5420000 */  lwc1        $f2, 0x0($t2)
/* 03DE50 8003E2A0 3C01800F */  lui         $at, %hi(D_800F2A54)
/* 03DE54 8003E2A4 C42C2A54 */  lwc1        $f12, %lo(D_800F2A54)($at)
/* 03DE58 8003E2A8 46028103 */  div.s       $f4, $f16, $f2
/* 03DE5C 8003E2AC 44800000 */  mtc1        $zero, $f0
/* 03DE60 8003E2B0 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03DE64 8003E2B4 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03DE68 8003E2B8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DE6C 8003E2BC 3C07800F */  lui         $a3, %hi(D_800F2A40)
/* 03DE70 8003E2C0 24E72A40 */  addiu       $a3, $a3, %lo(D_800F2A40)
/* 03DE74 8003E2C4 8CF80000 */  lw          $t8, 0x0($a3)
/* 03DE78 8003E2C8 24790008 */  addiu       $t9, $v1, 0x8
/* 03DE7C 8003E2CC ACD90000 */  sw          $t9, 0x0($a2)
/* 03DE80 8003E2D0 3C0B800F */  lui         $t3, %hi(D_800F2A44)
/* 03DE84 8003E2D4 3C01E400 */  lui         $at, 0xe400
/* 03DE88 8003E2D8 256B2A44 */  addiu       $t3, $t3, %lo(D_800F2A44)
/* 03DE8C 8003E2DC 460C8483 */  div.s       $f18, $f16, $f12
/* 03DE90 8003E2E0 460021A1 */  cvt.d.s     $f6, $f4
/* 03DE94 8003E2E4 46203200 */  add.d       $f8, $f6, $f0
/* 03DE98 8003E2E8 4620428D */  trunc.w.d   $f10, $f8
/* 03DE9C 8003E2EC 46009121 */  cvt.d.s     $f4, $f18
/* 03DEA0 8003E2F0 44085000 */  mfc1        $t0, $f10
/* 03DEA4 8003E2F4 46027282 */  mul.s       $f10, $f14, $f2
/* 03DEA8 8003E2F8 46202180 */  add.d       $f6, $f4, $f0
/* 03DEAC 8003E2FC 460C7102 */  mul.s       $f4, $f14, $f12
/* 03DEB0 8003E300 4600548D */  trunc.w.s   $f18, $f10
/* 03DEB4 8003E304 4620320D */  trunc.w.d   $f8, $f6
/* 03DEB8 8003E308 440F9000 */  mfc1        $t7, $f18
/* 03DEBC 8003E30C 4600218D */  trunc.w.s   $f6, $f4
/* 03DEC0 8003E310 01F8C821 */  addu        $t9, $t7, $t8
/* 03DEC4 8003E314 00197080 */  sll         $t6, $t9, 2
/* 03DEC8 8003E318 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 03DECC 8003E31C 000FC300 */  sll         $t8, $t7, 12
/* 03DED0 8003E320 0301C825 */  or          $t9, $t8, $at
/* 03DED4 8003E324 44183000 */  mfc1        $t8, $f6
/* 03DED8 8003E328 8D6E0000 */  lw          $t6, 0x0($t3)
/* 03DEDC 8003E32C 44094000 */  mfc1        $t1, $f8
/* 03DEE0 8003E330 01D87821 */  addu        $t7, $t6, $t8
/* 03DEE4 8003E334 000F7080 */  sll         $t6, $t7, 2
/* 03DEE8 8003E338 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03DEEC 8003E33C 03387825 */  or          $t7, $t9, $t8
/* 03DEF0 8003E340 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03DEF4 8003E344 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03DEF8 8003E348 000EC880 */  sll         $t9, $t6, 2
/* 03DEFC 8003E34C 8D6E0000 */  lw          $t6, 0x0($t3)
/* 03DF00 8003E350 33380FFF */  andi        $t8, $t9, 0xfff
/* 03DF04 8003E354 00187B00 */  sll         $t7, $t8, 12
/* 03DF08 8003E358 000EC880 */  sll         $t9, $t6, 2
/* 03DF0C 8003E35C 33380FFF */  andi        $t8, $t9, 0xfff
/* 03DF10 8003E360 01F87025 */  or          $t6, $t7, $t8
/* 03DF14 8003E364 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03DF18 8003E368 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DF1C 8003E36C 3C0FE100 */  lui         $t7, 0xe100
/* 03DF20 8003E370 3C0EF100 */  lui         $t6, 0xf100
/* 03DF24 8003E374 24790008 */  addiu       $t9, $v1, 0x8
/* 03DF28 8003E378 ACD90000 */  sw          $t9, 0x0($a2)
/* 03DF2C 8003E37C AC600004 */  sw          $zero, 0x4($v1)
/* 03DF30 8003E380 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03DF34 8003E384 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DF38 8003E388 00087C00 */  sll         $t7, $t0, 16
/* 03DF3C 8003E38C 24780008 */  addiu       $t8, $v1, 0x8
/* 03DF40 8003E390 ACD80000 */  sw          $t8, 0x0($a2)
/* 03DF44 8003E394 3138FFFF */  andi        $t8, $t1, 0xffff
/* 03DF48 8003E398 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03DF4C 8003E39C 01F87025 */  or          $t6, $t7, $t8
/* 03DF50 8003E3A0 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03DF54 8003E3A4 C5480000 */  lwc1        $f8, 0x0($t2)
/* 03DF58 8003E3A8 8CF90000 */  lw          $t9, 0x0($a3)
/* 03DF5C 8003E3AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03DF60 8003E3B0 46087282 */  mul.s       $f10, $f14, $f8
/* 03DF64 8003E3B4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03DF68 8003E3B8 460054A1 */  cvt.d.s     $f18, $f10
/* 03DF6C 8003E3BC 46209100 */  add.d       $f4, $f18, $f0
/* 03DF70 8003E3C0 4620218D */  trunc.w.d   $f6, $f4
/* 03DF74 8003E3C4 44183000 */  mfc1        $t8, $f6
/* 03DF78 8003E3C8 00000000 */  nop
/* 03DF7C 8003E3CC 03387021 */  addu        $t6, $t9, $t8
/* 03DF80 8003E3D0 03E00008 */  jr          $ra
/* 03DF84 8003E3D4 ACEE0000 */   sw         $t6, 0x0($a3)

glabel func_8003E3D8 # 31
/* 03DF88 8003E3D8 3C0F800F */  lui         $t7, %hi(D_800F2A48)
/* 03DF8C 8003E3DC 8DEF2A48 */  lw          $t7, %lo(D_800F2A48)($t7)
/* 03DF90 8003E3E0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 03DF94 8003E3E4 AFA40070 */  sw          $a0, 0x70($sp)
/* 03DF98 8003E3E8 93AE0073 */  lbu         $t6, 0x73($sp)
/* 03DF9C 8003E3EC 000FC080 */  sll         $t8, $t7, 2
/* 03DFA0 8003E3F0 030FC023 */  subu        $t8, $t8, $t7
/* 03DFA4 8003E3F4 0018C180 */  sll         $t8, $t8, 6
/* 03DFA8 8003E3F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DFAC 8003E3FC 01D82021 */  addu        $a0, $t6, $t8
/* 03DFB0 8003E400 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 03DFB4 8003E404 27A50064 */  addiu       $a1, $sp, 0x64
/* 03DFB8 8003E408 27A60060 */  addiu       $a2, $sp, 0x60
/* 03DFBC 8003E40C 0C012AB0 */  jal         func_8004AAC0
/* 03DFC0 8003E410 27A70058 */   addiu      $a3, $sp, 0x58
/* 03DFC4 8003E414 3C19800F */  lui         $t9, %hi(D_800F2A4C)
/* 03DFC8 8003E418 8F392A4C */  lw          $t9, %lo(D_800F2A4C)($t9)
/* 03DFCC 8003E41C 24010001 */  addiu       $at, $zero, 0x1
/* 03DFD0 8003E420 00402025 */  move        $a0, $v0
/* 03DFD4 8003E424 17210003 */  bne         $t9, $at, .L8003E434
/* 03DFD8 8003E428 3C06800F */   lui        $a2, %hi(D_800F2A18)
/* 03DFDC 8003E42C 10000002 */  b           .L8003E438
/* 03DFE0 8003E430 0000F825 */   move       $ra, $zero
.L8003E434:
/* 03DFE4 8003E434 241F0008 */  addiu       $ra, $zero, 0x8
.L8003E438:
/* 03DFE8 8003E438 8FA20064 */  lw          $v0, 0x64($sp)
/* 03DFEC 8003E43C 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03DFF0 8003E440 8CC30000 */  lw          $v1, 0x0($a2)
/* 03DFF4 8003E444 24420001 */  addiu       $v0, $v0, 0x1
/* 03DFF8 8003E448 304F00FE */  andi        $t7, $v0, 0xfe
/* 03DFFC 8003E44C 000FC043 */  sra         $t8, $t7, 1
/* 03E000 8003E450 AFAF0068 */  sw          $t7, 0x68($sp)
/* 03E004 8003E454 2719FFFF */  addiu       $t9, $t8, -0x1
/* 03E008 8003E458 246E0008 */  addiu       $t6, $v1, 0x8
/* 03E00C 8003E45C ACCE0000 */  sw          $t6, 0x0($a2)
/* 03E010 8003E460 332F0FFF */  andi        $t7, $t9, 0xfff
/* 03E014 8003E464 3C01FD88 */  lui         $at, 0xfd88
/* 03E018 8003E468 01E17025 */  or          $t6, $t7, $at
/* 03E01C 8003E46C AC6E0000 */  sw          $t6, 0x0($v1)
/* 03E020 8003E470 AFBF0054 */  sw          $ra, 0x54($sp)
/* 03E024 8003E474 00002825 */  move        $a1, $zero
/* 03E028 8003E478 0C00F848 */  jal         func_8003E120
/* 03E02C 8003E47C AFA30048 */   sw         $v1, 0x48($sp)
/* 03E030 8003E480 8FAD0048 */  lw          $t5, 0x48($sp)
/* 03E034 8003E484 8FBF0054 */  lw          $ra, 0x54($sp)
/* 03E038 8003E488 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03E03C 8003E48C ADA20004 */  sw          $v0, 0x4($t5)
/* 03E040 8003E490 8FA40068 */  lw          $a0, 0x68($sp)
/* 03E044 8003E494 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03E048 8003E498 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E04C 8003E49C 2484FFFF */  addiu       $a0, $a0, -0x1
/* 03E050 8003E4A0 0004C880 */  sll         $t9, $a0, 2
/* 03E054 8003E4A4 27270001 */  addiu       $a3, $t9, 0x1
/* 03E058 8003E4A8 00077843 */  sra         $t7, $a3, 1
/* 03E05C 8003E4AC 25E70007 */  addiu       $a3, $t7, 0x7
/* 03E060 8003E4B0 24780008 */  addiu       $t8, $v1, 0x8
/* 03E064 8003E4B4 ACD80000 */  sw          $t8, 0x0($a2)
/* 03E068 8003E4B8 000770C3 */  sra         $t6, $a3, 3
/* 03E06C 8003E4BC 31D801FF */  andi        $t8, $t6, 0x1ff
/* 03E070 8003E4C0 00183A40 */  sll         $a3, $t8, 9
/* 03E074 8003E4C4 3C01F588 */  lui         $at, 0xf588
/* 03E078 8003E4C8 00E17825 */  or          $t7, $a3, $at
/* 03E07C 8003E4CC 3C0E0700 */  lui         $t6, 0x700
/* 03E080 8003E4D0 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03E084 8003E4D4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03E088 8003E4D8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E08C 8003E4DC 03202025 */  move        $a0, $t9
/* 03E090 8003E4E0 3C19E600 */  lui         $t9, 0xe600
/* 03E094 8003E4E4 24780008 */  addiu       $t8, $v1, 0x8
/* 03E098 8003E4E8 ACD80000 */  sw          $t8, 0x0($a2)
/* 03E09C 8003E4EC AC600004 */  sw          $zero, 0x4($v1)
/* 03E0A0 8003E4F0 AC790000 */  sw          $t9, 0x0($v1)
/* 03E0A4 8003E4F4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E0A8 8003E4F8 0004C040 */  sll         $t8, $a0, 1
/* 03E0AC 8003E4FC 3C0EF400 */  lui         $t6, 0xf400
/* 03E0B0 8003E500 246F0008 */  addiu       $t7, $v1, 0x8
/* 03E0B4 8003E504 ACCF0000 */  sw          $t7, 0x0($a2)
/* 03E0B8 8003E508 33190FFF */  andi        $t9, $t8, 0xfff
/* 03E0BC 8003E50C AC6E0000 */  sw          $t6, 0x0($v1)
/* 03E0C0 8003E510 8FB80060 */  lw          $t8, 0x60($sp)
/* 03E0C4 8003E514 00197B00 */  sll         $t7, $t9, 12
/* 03E0C8 8003E518 3C010700 */  lui         $at, 0x700
/* 03E0CC 8003E51C 01E17025 */  or          $t6, $t7, $at
/* 03E0D0 8003E520 270FFFFF */  addiu       $t7, $t8, -0x1
/* 03E0D4 8003E524 000FC100 */  sll         $t8, $t7, 4
/* 03E0D8 8003E528 33190FFF */  andi        $t9, $t8, 0xfff
/* 03E0DC 8003E52C 01D97825 */  or          $t7, $t6, $t9
/* 03E0E0 8003E530 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03E0E4 8003E534 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E0E8 8003E538 3C0EE700 */  lui         $t6, 0xe700
/* 03E0EC 8003E53C 3C01F580 */  lui         $at, 0xf580
/* 03E0F0 8003E540 24780008 */  addiu       $t8, $v1, 0x8
/* 03E0F4 8003E544 ACD80000 */  sw          $t8, 0x0($a2)
/* 03E0F8 8003E548 AC600004 */  sw          $zero, 0x4($v1)
/* 03E0FC 8003E54C AC6E0000 */  sw          $t6, 0x0($v1)
/* 03E100 8003E550 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E104 8003E554 00E17825 */  or          $t7, $a3, $at
/* 03E108 8003E558 3C0EF200 */  lui         $t6, 0xf200
/* 03E10C 8003E55C 24790008 */  addiu       $t9, $v1, 0x8
/* 03E110 8003E560 ACD90000 */  sw          $t9, 0x0($a2)
/* 03E114 8003E564 AC600004 */  sw          $zero, 0x4($v1)
/* 03E118 8003E568 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03E11C 8003E56C 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E120 8003E570 0004C880 */  sll         $t9, $a0, 2
/* 03E124 8003E574 332F0FFF */  andi        $t7, $t9, 0xfff
/* 03E128 8003E578 24780008 */  addiu       $t8, $v1, 0x8
/* 03E12C 8003E57C ACD80000 */  sw          $t8, 0x0($a2)
/* 03E130 8003E580 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03E134 8003E584 8FAE0060 */  lw          $t6, 0x60($sp)
/* 03E138 8003E588 000FC300 */  sll         $t8, $t7, 12
/* 03E13C 8003E58C 3C02800F */  lui         $v0, %hi(D_800F2A4C)
/* 03E140 8003E590 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 03E144 8003E594 000F7100 */  sll         $t6, $t7, 4
/* 03E148 8003E598 31D90FFF */  andi        $t9, $t6, 0xfff
/* 03E14C 8003E59C 03197825 */  or          $t7, $t8, $t9
/* 03E150 8003E5A0 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03E154 8003E5A4 8C422A4C */  lw          $v0, %lo(D_800F2A4C)($v0)
/* 03E158 8003E5A8 8FAE0064 */  lw          $t6, 0x64($sp)
/* 03E15C 8003E5AC 24030001 */  addiu       $v1, $zero, 0x1
/* 03E160 8003E5B0 14620004 */  bne         $v1, $v0, .L8003E5C4
/* 03E164 8003E5B4 29C10003 */   slti       $at, $t6, 0x3
/* 03E168 8003E5B8 10200002 */  beqz        $at, .L8003E5C4
/* 03E16C 8003E5BC 24180003 */   addiu      $t8, $zero, 0x3
/* 03E170 8003E5C0 AFB80064 */  sw          $t8, 0x64($sp)
.L8003E5C4:
/* 03E174 8003E5C4 14620004 */  bne         $v1, $v0, .L8003E5D8
/* 03E178 8003E5C8 03E02025 */   move       $a0, $ra
/* 03E17C 8003E5CC 8FA40064 */  lw          $a0, 0x64($sp)
/* 03E180 8003E5D0 10000001 */  b           .L8003E5D8
/* 03E184 8003E5D4 24840001 */   addiu      $a0, $a0, 0x1
.L8003E5D8:
/* 03E188 8003E5D8 AFBF0054 */  sw          $ra, 0x54($sp)
/* 03E18C 8003E5DC 0C00F478 */  jal         func_8003D1E0
/* 03E190 8003E5E0 24050010 */   addiu      $a1, $zero, 0x10
/* 03E194 8003E5E4 8FBF0054 */  lw          $ra, 0x54($sp)
/* 03E198 8003E5E8 8FB90064 */  lw          $t9, 0x64($sp)
/* 03E19C 8003E5EC 3C0E800F */  lui         $t6, %hi(D_800F2A4C)
/* 03E1A0 8003E5F0 8DCE2A4C */  lw          $t6, %lo(D_800F2A4C)($t6)
/* 03E1A4 8003E5F4 03F91023 */  subu        $v0, $ra, $t9
/* 03E1A8 8003E5F8 3C06800F */  lui         $a2, %hi(D_800F2A18)
/* 03E1AC 8003E5FC 24C62A18 */  addiu       $a2, $a2, %lo(D_800F2A18)
/* 03E1B0 8003E600 04410003 */  bgez        $v0, .L8003E610
/* 03E1B4 8003E604 00027843 */   sra        $t7, $v0, 1
/* 03E1B8 8003E608 24410001 */  addiu       $at, $v0, 0x1
/* 03E1BC 8003E60C 00017843 */  sra         $t7, $at, 1
.L8003E610:
/* 03E1C0 8003E610 24010001 */  addiu       $at, $zero, 0x1
/* 03E1C4 8003E614 01E01025 */  move        $v0, $t7
/* 03E1C8 8003E618 11C10015 */  beq         $t6, $at, .L8003E670
/* 03E1CC 8003E61C 01E05025 */   move       $t2, $t7
/* 03E1D0 8003E620 44822000 */  mtc1        $v0, $f4
/* 03E1D4 8003E624 3C0B800F */  lui         $t3, %hi(D_800F2A50)
/* 03E1D8 8003E628 256B2A50 */  addiu       $t3, $t3, %lo(D_800F2A50)
/* 03E1DC 8003E62C 468021A0 */  cvt.s.w     $f6, $f4
/* 03E1E0 8003E630 C5680000 */  lwc1        $f8, 0x0($t3)
/* 03E1E4 8003E634 3C013FE0 */  lui         $at, 0x3fe0
/* 03E1E8 8003E638 44810800 */  mtc1        $at, $f1
/* 03E1EC 8003E63C 44800000 */  mtc1        $zero, $f0
/* 03E1F0 8003E640 3C07800F */  lui         $a3, %hi(D_800F2A40)
/* 03E1F4 8003E644 46083282 */  mul.s       $f10, $f6, $f8
/* 03E1F8 8003E648 24E72A40 */  addiu       $a3, $a3, %lo(D_800F2A40)
/* 03E1FC 8003E64C 8CEF0000 */  lw          $t7, 0x0($a3)
/* 03E200 8003E650 3C01800F */  lui         $at, %hi(D_800F2A40)
/* 03E204 8003E654 46005421 */  cvt.d.s     $f16, $f10
/* 03E208 8003E658 46208480 */  add.d       $f18, $f16, $f0
/* 03E20C 8003E65C 4620910D */  trunc.w.d   $f4, $f18
/* 03E210 8003E660 44192000 */  mfc1        $t9, $f4
/* 03E214 8003E664 00000000 */  nop
/* 03E218 8003E668 01F97021 */  addu        $t6, $t7, $t9
/* 03E21C 8003E66C AC2E2A40 */  sw          $t6, %lo(D_800F2A40)($at)
.L8003E670:
/* 03E220 8003E670 3C013FE0 */  lui         $at, 0x3fe0
/* 03E224 8003E674 44810800 */  mtc1        $at, $f1
/* 03E228 8003E678 3C0B800F */  lui         $t3, %hi(D_800F2A50)
/* 03E22C 8003E67C 256B2A50 */  addiu       $t3, $t3, %lo(D_800F2A50)
/* 03E230 8003E680 3C014480 */  lui         $at, 0x4480
/* 03E234 8003E684 44817000 */  mtc1        $at, $f14
/* 03E238 8003E688 C5620000 */  lwc1        $f2, 0x0($t3)
/* 03E23C 8003E68C 3C0C800F */  lui         $t4, %hi(D_800F2A54)
/* 03E240 8003E690 258C2A54 */  addiu       $t4, $t4, %lo(D_800F2A54)
/* 03E244 8003E694 46027183 */  div.s       $f6, $f14, $f2
/* 03E248 8003E698 C58C0000 */  lwc1        $f12, 0x0($t4)
/* 03E24C 8003E69C 44800000 */  mtc1        $zero, $f0
/* 03E250 8003E6A0 8FB80058 */  lw          $t8, 0x58($sp)
/* 03E254 8003E6A4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E258 8003E6A8 3C07800F */  lui         $a3, %hi(D_800F2A40)
/* 03E25C 8003E6AC 270FFFF4 */  addiu       $t7, $t8, -0xc
/* 03E260 8003E6B0 AFAF0058 */  sw          $t7, 0x58($sp)
/* 03E264 8003E6B4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 03E268 8003E6B8 24780008 */  addiu       $t8, $v1, 0x8
/* 03E26C 8003E6BC 24E72A40 */  addiu       $a3, $a3, %lo(D_800F2A40)
/* 03E270 8003E6C0 ACD80000 */  sw          $t8, 0x0($a2)
/* 03E274 8003E6C4 8CF80000 */  lw          $t8, 0x0($a3)
/* 03E278 8003E6C8 3C01E400 */  lui         $at, 0xe400
/* 03E27C 8003E6CC 3C0D800F */  lui         $t5, %hi(D_800F2A44)
/* 03E280 8003E6D0 25AD2A44 */  addiu       $t5, $t5, %lo(D_800F2A44)
/* 03E284 8003E6D4 460C7483 */  div.s       $f18, $f14, $f12
/* 03E288 8003E6D8 46003221 */  cvt.d.s     $f8, $f6
/* 03E28C 8003E6DC 46204280 */  add.d       $f10, $f8, $f0
/* 03E290 8003E6E0 4620540D */  trunc.w.d   $f16, $f10
/* 03E294 8003E6E4 448F5000 */  mtc1        $t7, $f10
/* 03E298 8003E6E8 46009121 */  cvt.d.s     $f4, $f18
/* 03E29C 8003E6EC 44088000 */  mfc1        $t0, $f16
/* 03E2A0 8003E6F0 46805420 */  cvt.s.w     $f16, $f10
/* 03E2A4 8003E6F4 46202180 */  add.d       $f6, $f4, $f0
/* 03E2A8 8003E6F8 46028482 */  mul.s       $f18, $f16, $f2
/* 03E2AC 8003E6FC 4620320D */  trunc.w.d   $f8, $f6
/* 03E2B0 8003E700 46009121 */  cvt.d.s     $f4, $f18
/* 03E2B4 8003E704 44094000 */  mfc1        $t1, $f8
/* 03E2B8 8003E708 46202180 */  add.d       $f6, $f4, $f0
/* 03E2BC 8003E70C 4620320D */  trunc.w.d   $f8, $f6
/* 03E2C0 8003E710 440E4000 */  mfc1        $t6, $f8
/* 03E2C4 8003E714 00000000 */  nop
/* 03E2C8 8003E718 01D87821 */  addu        $t7, $t6, $t8
/* 03E2CC 8003E71C 000FC880 */  sll         $t9, $t7, 2
/* 03E2D0 8003E720 332E0FFF */  andi        $t6, $t9, 0xfff
/* 03E2D4 8003E724 000EC300 */  sll         $t8, $t6, 12
/* 03E2D8 8003E728 8FAE0058 */  lw          $t6, 0x58($sp)
/* 03E2DC 8003E72C 8FB90060 */  lw          $t9, 0x60($sp)
/* 03E2E0 8003E730 03017825 */  or          $t7, $t8, $at
/* 03E2E4 8003E734 24010001 */  addiu       $at, $zero, 0x1
/* 03E2E8 8003E738 032EC023 */  subu        $t8, $t9, $t6
/* 03E2EC 8003E73C 44985000 */  mtc1        $t8, $f10
/* 03E2F0 8003E740 8DB80000 */  lw          $t8, 0x0($t5)
/* 03E2F4 8003E744 46805420 */  cvt.s.w     $f16, $f10
/* 03E2F8 8003E748 460C8482 */  mul.s       $f18, $f16, $f12
/* 03E2FC 8003E74C 46009121 */  cvt.d.s     $f4, $f18
/* 03E300 8003E750 46202180 */  add.d       $f6, $f4, $f0
/* 03E304 8003E754 4620320D */  trunc.w.d   $f8, $f6
/* 03E308 8003E758 440E4000 */  mfc1        $t6, $f8
/* 03E30C 8003E75C 00000000 */  nop
/* 03E310 8003E760 030EC821 */  addu        $t9, $t8, $t6
/* 03E314 8003E764 0019C080 */  sll         $t8, $t9, 2
/* 03E318 8003E768 330E0FFF */  andi        $t6, $t8, 0xfff
/* 03E31C 8003E76C 01EEC825 */  or          $t9, $t7, $t6
/* 03E320 8003E770 AC790000 */  sw          $t9, 0x0($v1)
/* 03E324 8003E774 8FB80058 */  lw          $t8, 0x58($sp)
/* 03E328 8003E778 C5920000 */  lwc1        $f18, 0x0($t4)
/* 03E32C 8003E77C 00187823 */  negu        $t7, $t8
/* 03E330 8003E780 448F5000 */  mtc1        $t7, $f10
/* 03E334 8003E784 8DB80000 */  lw          $t8, 0x0($t5)
/* 03E338 8003E788 46805420 */  cvt.s.w     $f16, $f10
/* 03E33C 8003E78C 46128102 */  mul.s       $f4, $f16, $f18
/* 03E340 8003E790 460021A1 */  cvt.d.s     $f6, $f4
/* 03E344 8003E794 46203200 */  add.d       $f8, $f6, $f0
/* 03E348 8003E798 4620428D */  trunc.w.d   $f10, $f8
/* 03E34C 8003E79C 44195000 */  mfc1        $t9, $f10
/* 03E350 8003E7A0 00000000 */  nop
/* 03E354 8003E7A4 03197821 */  addu        $t7, $t8, $t9
/* 03E358 8003E7A8 8CF90000 */  lw          $t9, 0x0($a3)
/* 03E35C 8003E7AC 000F7080 */  sll         $t6, $t7, 2
/* 03E360 8003E7B0 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03E364 8003E7B4 00197880 */  sll         $t7, $t9, 2
/* 03E368 8003E7B8 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03E36C 8003E7BC 000ECB00 */  sll         $t9, $t6, 12
/* 03E370 8003E7C0 03387825 */  or          $t7, $t9, $t8
/* 03E374 8003E7C4 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03E378 8003E7C8 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E37C 8003E7CC 3C19E100 */  lui         $t9, 0xe100
/* 03E380 8003E7D0 3C0FF100 */  lui         $t7, 0xf100
/* 03E384 8003E7D4 246E0008 */  addiu       $t6, $v1, 0x8
/* 03E388 8003E7D8 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03E38C 8003E7DC AC600004 */  sw          $zero, 0x4($v1)
/* 03E390 8003E7E0 AC790000 */  sw          $t9, 0x0($v1)
/* 03E394 8003E7E4 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E398 8003E7E8 0008CC00 */  sll         $t9, $t0, 16
/* 03E39C 8003E7EC 3C0E800F */  lui         $t6, %hi(D_800F2A4C)
/* 03E3A0 8003E7F0 24780008 */  addiu       $t8, $v1, 0x8
/* 03E3A4 8003E7F4 ACD80000 */  sw          $t8, 0x0($a2)
/* 03E3A8 8003E7F8 3138FFFF */  andi        $t8, $t1, 0xffff
/* 03E3AC 8003E7FC AC6F0000 */  sw          $t7, 0x0($v1)
/* 03E3B0 8003E800 03387825 */  or          $t7, $t9, $t8
/* 03E3B4 8003E804 AC6F0004 */  sw          $t7, 0x4($v1)
/* 03E3B8 8003E808 8DCE2A4C */  lw          $t6, %lo(D_800F2A4C)($t6)
/* 03E3BC 8003E80C 03EAC823 */  subu        $t9, $ra, $t2
/* 03E3C0 8003E810 8FB80064 */  lw          $t8, 0x64($sp)
/* 03E3C4 8003E814 51C1000F */  beql        $t6, $at, .L8003E854
/* 03E3C8 8003E818 270E0001 */   addiu      $t6, $t8, 0x1
/* 03E3CC 8003E81C 44998000 */  mtc1        $t9, $f16
/* 03E3D0 8003E820 C5640000 */  lwc1        $f4, 0x0($t3)
/* 03E3D4 8003E824 8CEE0000 */  lw          $t6, 0x0($a3)
/* 03E3D8 8003E828 468084A0 */  cvt.s.w     $f18, $f16
/* 03E3DC 8003E82C 46049182 */  mul.s       $f6, $f18, $f4
/* 03E3E0 8003E830 46003221 */  cvt.d.s     $f8, $f6
/* 03E3E4 8003E834 46204280 */  add.d       $f10, $f8, $f0
/* 03E3E8 8003E838 4620540D */  trunc.w.d   $f16, $f10
/* 03E3EC 8003E83C 440F8000 */  mfc1        $t7, $f16
/* 03E3F0 8003E840 00000000 */  nop
/* 03E3F4 8003E844 01CFC821 */  addu        $t9, $t6, $t7
/* 03E3F8 8003E848 1000000E */  b           .L8003E884
/* 03E3FC 8003E84C ACF90000 */   sw         $t9, 0x0($a3)
/* 03E400 8003E850 270E0001 */  addiu       $t6, $t8, 0x1
.L8003E854:
/* 03E404 8003E854 448E9000 */  mtc1        $t6, $f18
/* 03E408 8003E858 C5660000 */  lwc1        $f6, 0x0($t3)
/* 03E40C 8003E85C 8CF80000 */  lw          $t8, 0x0($a3)
/* 03E410 8003E860 46809120 */  cvt.s.w     $f4, $f18
/* 03E414 8003E864 46062202 */  mul.s       $f8, $f4, $f6
/* 03E418 8003E868 460042A1 */  cvt.d.s     $f10, $f8
/* 03E41C 8003E86C 46205400 */  add.d       $f16, $f10, $f0
/* 03E420 8003E870 4620848D */  trunc.w.d   $f18, $f16
/* 03E424 8003E874 44199000 */  mfc1        $t9, $f18
/* 03E428 8003E878 00000000 */  nop
/* 03E42C 8003E87C 03197021 */  addu        $t6, $t8, $t9
/* 03E430 8003E880 ACEE0000 */  sw          $t6, 0x0($a3)
.L8003E884:
/* 03E434 8003E884 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E438 8003E888 27BD0070 */  addiu       $sp, $sp, 0x70
/* 03E43C 8003E88C 03E00008 */  jr          $ra
/* 03E440 8003E890 00000000 */   nop

glabel func_8003E894 # 32
/* 03E444 8003E894 27BDFF48 */  addiu       $sp, $sp, -0xb8
/* 03E448 8003E898 AFBF003C */  sw          $ra, 0x3c($sp)
/* 03E44C 8003E89C AFBE0038 */  sw          $fp, 0x38($sp)
/* 03E450 8003E8A0 AFB70034 */  sw          $s7, 0x34($sp)
/* 03E454 8003E8A4 AFB60030 */  sw          $s6, 0x30($sp)
/* 03E458 8003E8A8 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03E45C 8003E8AC AFB40028 */  sw          $s4, 0x28($sp)
/* 03E460 8003E8B0 AFB30024 */  sw          $s3, 0x24($sp)
/* 03E464 8003E8B4 AFB20020 */  sw          $s2, 0x20($sp)
/* 03E468 8003E8B8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03E46C 8003E8BC AFB00018 */  sw          $s0, 0x18($sp)
/* 03E470 8003E8C0 AFA400B8 */  sw          $a0, 0xb8($sp)
/* 03E474 8003E8C4 8CCE0000 */  lw          $t6, 0x0($a2)
/* 03E478 8003E8C8 00A08825 */  move        $s1, $a1
/* 03E47C 8003E8CC 2416000F */  addiu       $s6, $zero, 0xf
/* 03E480 8003E8D0 AFAE00B4 */  sw          $t6, 0xb4($sp)
/* 03E484 8003E8D4 8CCF0004 */  lw          $t7, 0x4($a2)
/* 03E488 8003E8D8 AFA600C0 */  sw          $a2, 0xc0($sp)
/* 03E48C 8003E8DC 00A02025 */  move        $a0, $a1
/* 03E490 8003E8E0 0C0126AB */  jal         strlen
/* 03E494 8003E8E4 AFAF00B0 */   sw         $t7, 0xb0($sp)
/* 03E498 8003E8E8 14400004 */  bnez        $v0, .L8003E8FC
/* 03E49C 8003E8EC 02202025 */   move       $a0, $s1
/* 03E4A0 8003E8F0 8FB800B8 */  lw          $t8, 0xb8($sp)
/* 03E4A4 8003E8F4 100000C6 */  b           .L8003EC10
/* 03E4A8 8003E8F8 AF000000 */   sw         $zero, 0x0($t8)
.L8003E8FC:
/* 03E4AC 8003E8FC 3C06800F */  lui         $a2, %hi(D_800F2A4C)
/* 03E4B0 8003E900 8CC62A4C */  lw          $a2, %lo(D_800F2A4C)($a2)
/* 03E4B4 8003E904 0C00FB36 */  jal         func_8003ECD8
/* 03E4B8 8003E908 8FA500C0 */   lw         $a1, 0xc0($sp)
/* 03E4BC 8003E90C 8FA800B0 */  lw          $t0, 0xb0($sp)
/* 03E4C0 8003E910 04410004 */  bgez        $v0, .L8003E924
/* 03E4C4 8003E914 30590003 */   andi       $t9, $v0, 0x3
/* 03E4C8 8003E918 13200002 */  beqz        $t9, .L8003E924
/* 03E4CC 8003E91C 00000000 */   nop
/* 03E4D0 8003E920 2739FFFC */  addiu       $t9, $t9, -0x4
.L8003E924:
/* 03E4D4 8003E924 03221821 */  addu        $v1, $t9, $v0
/* 03E4D8 8003E928 00680019 */  multu       $v1, $t0
/* 03E4DC 8003E92C AFA3009C */  sw          $v1, 0x9c($sp)
/* 03E4E0 8003E930 2406034D */  addiu       $a2, $zero, 0x34d
/* 03E4E4 8003E934 00002012 */  mflo        $a0
/* 03E4E8 8003E938 00044880 */  sll         $t1, $a0, 2
/* 03E4EC 8003E93C 01202025 */  move        $a0, $t1
/* 03E4F0 8003E940 04810003 */  bgez        $a0, .L8003E950
/* 03E4F4 8003E944 000450C3 */   sra        $t2, $a0, 3
/* 03E4F8 8003E948 24810007 */  addiu       $at, $a0, 0x7
/* 03E4FC 8003E94C 000150C3 */  sra         $t2, $at, 3
.L8003E950:
/* 03E500 8003E950 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03E504 8003E954 01408025 */  move        $s0, $t2
/* 03E508 8003E958 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03E50C 8003E95C 0C00E03D */  jal         func_800380F4
/* 03E510 8003E960 01402825 */   move       $a1, $t2
/* 03E514 8003E964 AFA20088 */  sw          $v0, 0x88($sp)
/* 03E518 8003E968 00402025 */  move        $a0, $v0
/* 03E51C 8003E96C 0C014388 */  jal         bzero
/* 03E520 8003E970 02002825 */   move       $a1, $s0
/* 03E524 8003E974 AFA000A8 */  sw          $zero, 0xa8($sp)
/* 03E528 8003E978 AFB10078 */  sw          $s1, 0x78($sp)
/* 03E52C 8003E97C 922B0000 */  lbu         $t3, 0x0($s1)
/* 03E530 8003E980 11600094 */  beqz        $t3, .L8003EBD4
/* 03E534 8003E984 27A40078 */   addiu      $a0, $sp, 0x78
.L8003E988:
/* 03E538 8003E988 0C00FBB8 */  jal         func_8003EEE0
/* 03E53C 8003E98C 27A5006C */   addiu      $a1, $sp, 0x6c
/* 03E540 8003E990 3401A2A0 */  ori         $at, $zero, 0xa2a0
/* 03E544 8003E994 14410009 */  bne         $v0, $at, .L8003E9BC
/* 03E548 8003E998 00408825 */   move       $s1, $v0
/* 03E54C 8003E99C 8FAC006C */  lw          $t4, 0x6c($sp)
/* 03E550 8003E9A0 000C6880 */  sll         $t5, $t4, 2
/* 03E554 8003E9A4 05A10003 */  bgez        $t5, .L8003E9B4
/* 03E558 8003E9A8 000D70C3 */   sra        $t6, $t5, 3
/* 03E55C 8003E9AC 25A10007 */  addiu       $at, $t5, 0x7
/* 03E560 8003E9B0 000170C3 */  sra         $t6, $at, 3
.L8003E9B4:
/* 03E564 8003E9B4 10000083 */  b           .L8003EBC4
/* 03E568 8003E9B8 AFAE00A8 */   sw         $t6, 0xa8($sp)
.L8003E9BC:
/* 03E56C 8003E9BC 3401A3A0 */  ori         $at, $zero, 0xa3a0
/* 03E570 8003E9C0 14410003 */  bne         $v0, $at, .L8003E9D0
/* 03E574 8003E9C4 02202025 */   move       $a0, $s1
/* 03E578 8003E9C8 1000007E */  b           .L8003EBC4
/* 03E57C 8003E9CC 8FB6006C */   lw         $s6, 0x6c($sp)
.L8003E9D0:
/* 03E580 8003E9D0 8FB200B4 */  lw          $s2, 0xb4($sp)
/* 03E584 8003E9D4 3C06800F */  lui         $a2, %hi(D_800F2A4C)
/* 03E588 8003E9D8 8CC62A4C */  lw          $a2, %lo(D_800F2A4C)($a2)
/* 03E58C 8003E9DC 00127880 */  sll         $t7, $s2, 2
/* 03E590 8003E9E0 01E09025 */  move        $s2, $t7
/* 03E594 8003E9E4 8FA500C0 */  lw          $a1, 0xc0($sp)
/* 03E598 8003E9E8 06410003 */  bgez        $s2, .L8003E9F8
/* 03E59C 8003E9EC 0012C0C3 */   sra        $t8, $s2, 3
/* 03E5A0 8003E9F0 26410007 */  addiu       $at, $s2, 0x7
/* 03E5A4 8003E9F4 0001C0C3 */  sra         $t8, $at, 3
.L8003E9F8:
/* 03E5A8 8003E9F8 03009025 */  move        $s2, $t8
/* 03E5AC 8003E9FC 0C00FD3F */  jal         func_8003F4FC
/* 03E5B0 8003EA00 03008025 */   move       $s0, $t8
/* 03E5B4 8003EA04 3C06800F */  lui         $a2, %hi(D_800F2A4C)
/* 03E5B8 8003EA08 AFA200A0 */  sw          $v0, 0xa0($sp)
/* 03E5BC 8003EA0C 8CC62A4C */  lw          $a2, %lo(D_800F2A4C)($a2)
/* 03E5C0 8003EA10 02202025 */  move        $a0, $s1
/* 03E5C4 8003EA14 0C00FB9D */  jal         func_8003EE74
/* 03E5C8 8003EA18 8FA500C0 */   lw         $a1, 0xc0($sp)
/* 03E5CC 8003EA1C 0002C880 */  sll         $t9, $v0, 2
/* 03E5D0 8003EA20 07210003 */  bgez        $t9, .L8003EA30
/* 03E5D4 8003EA24 001940C3 */   sra        $t0, $t9, 3
/* 03E5D8 8003EA28 27210007 */  addiu       $at, $t9, 0x7
/* 03E5DC 8003EA2C 000140C3 */  sra         $t0, $at, 3
.L8003EA30:
/* 03E5E0 8003EA30 3C06800F */  lui         $a2, %hi(D_800F2A4C)
/* 03E5E4 8003EA34 AFA80090 */  sw          $t0, 0x90($sp)
/* 03E5E8 8003EA38 8CC62A4C */  lw          $a2, %lo(D_800F2A4C)($a2)
/* 03E5EC 8003EA3C 02202025 */  move        $a0, $s1
/* 03E5F0 8003EA40 0C00FB64 */  jal         func_8003ED90
/* 03E5F4 8003EA44 8FA500C0 */   lw         $a1, 0xc0($sp)
/* 03E5F8 8003EA48 00024880 */  sll         $t1, $v0, 2
/* 03E5FC 8003EA4C 05210003 */  bgez        $t1, .L8003EA5C
/* 03E600 8003EA50 000950C3 */   sra        $t2, $t1, 3
/* 03E604 8003EA54 25210007 */  addiu       $at, $t1, 0x7
/* 03E608 8003EA58 000150C3 */  sra         $t2, $at, 3
.L8003EA5C:
/* 03E60C 8003EA5C 3401A1A0 */  ori         $at, $zero, 0xa1a0
/* 03E610 8003EA60 12210054 */  beq         $s1, $at, .L8003EBB4
/* 03E614 8003EA64 AFAA0094 */   sw         $t2, 0x94($sp)
/* 03E618 8003EA68 02202025 */  move        $a0, $s1
/* 03E61C 8003EA6C 8FA500C0 */  lw          $a1, 0xc0($sp)
/* 03E620 8003EA70 0C00FB10 */  jal         func_8003EC40
/* 03E624 8003EA74 00009825 */   move       $s3, $zero
/* 03E628 8003EA78 8FAD00B0 */  lw          $t5, 0xb0($sp)
/* 03E62C 8003EA7C 8FAB0088 */  lw          $t3, 0x88($sp)
/* 03E630 8003EA80 8FAC00A8 */  lw          $t4, 0xa8($sp)
/* 03E634 8003EA84 0040A025 */  move        $s4, $v0
/* 03E638 8003EA88 19A0004A */  blez        $t5, .L8003EBB4
/* 03E63C 8003EA8C 016CA821 */   addu       $s5, $t3, $t4
/* 03E640 8003EA90 8FB700A0 */  lw          $s7, 0xa0($sp)
/* 03E644 8003EA94 8FBE009C */  lw          $fp, 0x9c($sp)
/* 03E648 8003EA98 00177080 */  sll         $t6, $s7, 2
/* 03E64C 8003EA9C 01C0B825 */  move        $s7, $t6
/* 03E650 8003EAA0 001EC080 */  sll         $t8, $fp, 2
/* 03E654 8003EAA4 06E10003 */  bgez        $s7, .L8003EAB4
/* 03E658 8003EAA8 001778C3 */   sra        $t7, $s7, 3
/* 03E65C 8003EAAC 26E10007 */  addiu       $at, $s7, 0x7
/* 03E660 8003EAB0 000178C3 */  sra         $t7, $at, 3
.L8003EAB4:
/* 03E664 8003EAB4 0300F025 */  move        $fp, $t8
/* 03E668 8003EAB8 01E0B825 */  move        $s7, $t7
/* 03E66C 8003EABC 07C10003 */  bgez        $fp, .L8003EACC
/* 03E670 8003EAC0 001EC8C3 */   sra        $t9, $fp, 3
/* 03E674 8003EAC4 27C10007 */  addiu       $at, $fp, 0x7
/* 03E678 8003EAC8 0001C8C3 */  sra         $t9, $at, 3
.L8003EACC:
/* 03E67C 8003EACC 0320F025 */  move        $fp, $t9
.L8003EAD0:
/* 03E680 8003EAD0 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03E684 8003EAD4 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03E688 8003EAD8 02402825 */  move        $a1, $s2
/* 03E68C 8003EADC 0C00E03D */  jal         func_800380F4
/* 03E690 8003EAE0 24060372 */   addiu      $a2, $zero, 0x372
/* 03E694 8003EAE4 00408825 */  move        $s1, $v0
/* 03E698 8003EAE8 02802025 */  move        $a0, $s4
/* 03E69C 8003EAEC 00402825 */  move        $a1, $v0
/* 03E6A0 8003EAF0 0C014984 */  jal         bcopy
/* 03E6A4 8003EAF4 02403025 */   move       $a2, $s2
/* 03E6A8 8003EAF8 2401000F */  addiu       $at, $zero, 0xf
/* 03E6AC 8003EAFC 52C10021 */  beql        $s6, $at, .L8003EB84
/* 03E6B0 8003EB00 02372021 */   addu       $a0, $s1, $s7
/* 03E6B4 8003EB04 1A40001E */  blez        $s2, .L8003EB80
/* 03E6B8 8003EB08 00001825 */   move       $v1, $zero
/* 03E6BC 8003EB0C 00164100 */  sll         $t0, $s6, 4
/* 03E6C0 8003EB10 32460003 */  andi        $a2, $s2, 0x3
/* 03E6C4 8003EB14 10C0000A */  beqz        $a2, .L8003EB40
/* 03E6C8 8003EB18 01162021 */   addu       $a0, $t0, $s6
/* 03E6CC 8003EB1C 00C02825 */  move        $a1, $a2
/* 03E6D0 8003EB20 02201021 */  addu        $v0, $s1, $zero
.L8003EB24:
/* 03E6D4 8003EB24 90490000 */  lbu         $t1, 0x0($v0)
/* 03E6D8 8003EB28 24630001 */  addiu       $v1, $v1, 0x1
/* 03E6DC 8003EB2C 24420001 */  addiu       $v0, $v0, 0x1
/* 03E6E0 8003EB30 01245024 */  and         $t2, $t1, $a0
/* 03E6E4 8003EB34 14A3FFFB */  bne         $a1, $v1, .L8003EB24
/* 03E6E8 8003EB38 A04AFFFF */   sb         $t2, -0x1($v0)
/* 03E6EC 8003EB3C 10720010 */  beq         $v1, $s2, .L8003EB80
.L8003EB40:
/* 03E6F0 8003EB40 02231021 */   addu       $v0, $s1, $v1
.L8003EB44:
/* 03E6F4 8003EB44 904D0001 */  lbu         $t5, 0x1($v0)
/* 03E6F8 8003EB48 904F0002 */  lbu         $t7, 0x2($v0)
/* 03E6FC 8003EB4C 90590003 */  lbu         $t9, 0x3($v0)
/* 03E700 8003EB50 904B0000 */  lbu         $t3, 0x0($v0)
/* 03E704 8003EB54 24630004 */  addiu       $v1, $v1, 0x4
/* 03E708 8003EB58 01A47024 */  and         $t6, $t5, $a0
/* 03E70C 8003EB5C 01E4C024 */  and         $t8, $t7, $a0
/* 03E710 8003EB60 03244024 */  and         $t0, $t9, $a0
/* 03E714 8003EB64 01646024 */  and         $t4, $t3, $a0
/* 03E718 8003EB68 A0480003 */  sb          $t0, 0x3($v0)
/* 03E71C 8003EB6C A0580002 */  sb          $t8, 0x2($v0)
/* 03E720 8003EB70 A04E0001 */  sb          $t6, 0x1($v0)
/* 03E724 8003EB74 24420004 */  addiu       $v0, $v0, 0x4
/* 03E728 8003EB78 1470FFF2 */  bne         $v1, $s0, .L8003EB44
/* 03E72C 8003EB7C A04CFFFC */   sb         $t4, -0x4($v0)
.L8003EB80:
/* 03E730 8003EB80 02372021 */  addu        $a0, $s1, $s7
.L8003EB84:
/* 03E734 8003EB84 02A02825 */  move        $a1, $s5
/* 03E738 8003EB88 0C014984 */  jal         bcopy
/* 03E73C 8003EB8C 8FA60090 */   lw         $a2, 0x90($sp)
/* 03E740 8003EB90 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03E744 8003EB94 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03E748 8003EB98 0C00E152 */  jal         func_80038548
/* 03E74C 8003EB9C 02202825 */   move       $a1, $s1
/* 03E750 8003EBA0 8FA900B0 */  lw          $t1, 0xb0($sp)
/* 03E754 8003EBA4 26730001 */  addiu       $s3, $s3, 0x1
/* 03E758 8003EBA8 02BEA821 */  addu        $s5, $s5, $fp
/* 03E75C 8003EBAC 1669FFC8 */  bne         $s3, $t1, .L8003EAD0
/* 03E760 8003EBB0 0292A021 */   addu       $s4, $s4, $s2
.L8003EBB4:
/* 03E764 8003EBB4 8FAA00A8 */  lw          $t2, 0xa8($sp)
/* 03E768 8003EBB8 8FAB0094 */  lw          $t3, 0x94($sp)
/* 03E76C 8003EBBC 014B6021 */  addu        $t4, $t2, $t3
/* 03E770 8003EBC0 AFAC00A8 */  sw          $t4, 0xa8($sp)
.L8003EBC4:
/* 03E774 8003EBC4 8FAD0078 */  lw          $t5, 0x78($sp)
/* 03E778 8003EBC8 91AE0000 */  lbu         $t6, 0x0($t5)
/* 03E77C 8003EBCC 55C0FF6E */  bnel        $t6, $zero, .L8003E988
/* 03E780 8003EBD0 27A40078 */   addiu      $a0, $sp, 0x78
.L8003EBD4:
/* 03E784 8003EBD4 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03E788 8003EBD8 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03E78C 8003EBDC 24050010 */  addiu       $a1, $zero, 0x10
/* 03E790 8003EBE0 0C00E03D */  jal         func_800380F4
/* 03E794 8003EBE4 24060383 */   addiu      $a2, $zero, 0x383
/* 03E798 8003EBE8 240F0002 */  addiu       $t7, $zero, 0x2
/* 03E79C 8003EBEC AC4F000C */  sw          $t7, 0xc($v0)
/* 03E7A0 8003EBF0 8FB8009C */  lw          $t8, 0x9c($sp)
/* 03E7A4 8003EBF4 AC580004 */  sw          $t8, 0x4($v0)
/* 03E7A8 8003EBF8 8FB900B0 */  lw          $t9, 0xb0($sp)
/* 03E7AC 8003EBFC AC590008 */  sw          $t9, 0x8($v0)
/* 03E7B0 8003EC00 8FA80088 */  lw          $t0, 0x88($sp)
/* 03E7B4 8003EC04 AC480000 */  sw          $t0, 0x0($v0)
/* 03E7B8 8003EC08 8FA900B8 */  lw          $t1, 0xb8($sp)
/* 03E7BC 8003EC0C AD220000 */  sw          $v0, 0x0($t1)
.L8003EC10:
/* 03E7C0 8003EC10 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03E7C4 8003EC14 8FB00018 */  lw          $s0, 0x18($sp)
/* 03E7C8 8003EC18 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03E7CC 8003EC1C 8FB20020 */  lw          $s2, 0x20($sp)
/* 03E7D0 8003EC20 8FB30024 */  lw          $s3, 0x24($sp)
/* 03E7D4 8003EC24 8FB40028 */  lw          $s4, 0x28($sp)
/* 03E7D8 8003EC28 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03E7DC 8003EC2C 8FB60030 */  lw          $s6, 0x30($sp)
/* 03E7E0 8003EC30 8FB70034 */  lw          $s7, 0x34($sp)
/* 03E7E4 8003EC34 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03E7E8 8003EC38 03E00008 */  jr          $ra
/* 03E7EC 8003EC3C 27BD00B8 */   addiu      $sp, $sp, 0xb8

glabel func_8003EC40 # 33
/* 03E7F0 8003EC40 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03E7F4 8003EC44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E7F8 8003EC48 8CAF0004 */  lw          $t7, 0x4($a1)
/* 03E7FC 8003EC4C 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03E800 8003EC50 01CF0019 */  multu       $t6, $t7
/* 03E804 8003EC54 0000C012 */  mflo        $t8
/* 03E808 8003EC58 0018C880 */  sll         $t9, $t8, 2
/* 03E80C 8003EC5C 07210003 */  bgez        $t9, .L8003EC6C
/* 03E810 8003EC60 001940C3 */   sra        $t0, $t9, 3
/* 03E814 8003EC64 27210007 */  addiu       $at, $t9, 0x7
/* 03E818 8003EC68 000140C3 */  sra         $t0, $at, 3
.L8003EC6C:
/* 03E81C 8003EC6C AFA8002C */  sw          $t0, 0x2c($sp)
/* 03E820 8003EC70 8CA90008 */  lw          $t1, 0x8($a1)
/* 03E824 8003EC74 AFA50034 */  sw          $a1, 0x34($sp)
/* 03E828 8003EC78 0C00FD74 */  jal         func_8003F5D0
/* 03E82C 8003EC7C AFA90028 */   sw         $t1, 0x28($sp)
/* 03E830 8003EC80 8FA50034 */  lw          $a1, 0x34($sp)
/* 03E834 8003EC84 000258C0 */  sll         $t3, $v0, 3
/* 03E838 8003EC88 8FAD0028 */  lw          $t5, 0x28($sp)
/* 03E83C 8003EC8C 8CAA000C */  lw          $t2, 0xc($a1)
/* 03E840 8003EC90 3C04800F */  lui         $a0, %hi(D_800F2A60)
/* 03E844 8003EC94 24842A60 */  addiu       $a0, $a0, %lo(D_800F2A60)
/* 03E848 8003EC98 014B6021 */  addu        $t4, $t2, $t3
/* 03E84C 8003EC9C 8D830000 */  lw          $v1, 0x0($t4)
/* 03E850 8003ECA0 8FA6002C */  lw          $a2, 0x2c($sp)
/* 03E854 8003ECA4 27A70020 */  addiu       $a3, $sp, 0x20
/* 03E858 8003ECA8 0C00FE12 */  jal         func_8003F848
/* 03E85C 8003ECAC 01A32821 */   addu       $a1, $t5, $v1
/* 03E860 8003ECB0 24010004 */  addiu       $at, $zero, 0x4
/* 03E864 8003ECB4 54410004 */  bnel        $v0, $at, .L8003ECC8
/* 03E868 8003ECB8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03E86C 8003ECBC 0C00FDAE */  jal         func_8003F6B8
/* 03E870 8003ECC0 00000000 */   nop
/* 03E874 8003ECC4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003ECC8:
/* 03E878 8003ECC8 8FA20020 */  lw          $v0, 0x20($sp)
/* 03E87C 8003ECCC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03E880 8003ECD0 03E00008 */  jr          $ra
/* 03E884 8003ECD4 00000000 */   nop

glabel func_8003ECD8 # 34
/* 03E888 8003ECD8 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 03E88C 8003ECDC AFBF0034 */  sw          $ra, 0x34($sp)
/* 03E890 8003ECE0 AFB60030 */  sw          $s6, 0x30($sp)
/* 03E894 8003ECE4 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03E898 8003ECE8 AFB40028 */  sw          $s4, 0x28($sp)
/* 03E89C 8003ECEC AFB30024 */  sw          $s3, 0x24($sp)
/* 03E8A0 8003ECF0 AFB20020 */  sw          $s2, 0x20($sp)
/* 03E8A4 8003ECF4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03E8A8 8003ECF8 AFB00018 */  sw          $s0, 0x18($sp)
/* 03E8AC 8003ECFC AFA40040 */  sw          $a0, 0x40($sp)
/* 03E8B0 8003ED00 908E0000 */  lbu         $t6, 0x0($a0)
/* 03E8B4 8003ED04 00C08825 */  move        $s1, $a2
/* 03E8B8 8003ED08 00A0B025 */  move        $s6, $a1
/* 03E8BC 8003ED0C 11C00015 */  beqz        $t6, .L8003ED64
/* 03E8C0 8003ED10 00008025 */   move       $s0, $zero
/* 03E8C4 8003ED14 3415A3A0 */  ori         $s5, $zero, 0xa3a0
/* 03E8C8 8003ED18 3414A2A0 */  ori         $s4, $zero, 0xa2a0
/* 03E8CC 8003ED1C 27B3003C */  addiu       $s3, $sp, 0x3c
/* 03E8D0 8003ED20 27B20040 */  addiu       $s2, $sp, 0x40
/* 03E8D4 8003ED24 02402025 */  move        $a0, $s2
.L8003ED28:
/* 03E8D8 8003ED28 0C00FBB8 */  jal         func_8003EEE0
/* 03E8DC 8003ED2C 02602825 */   move       $a1, $s3
/* 03E8E0 8003ED30 14540003 */  bne         $v0, $s4, .L8003ED40
/* 03E8E4 8003ED34 00402025 */   move       $a0, $v0
/* 03E8E8 8003ED38 10000006 */  b           .L8003ED54
/* 03E8EC 8003ED3C 8FB0003C */   lw         $s0, 0x3c($sp)
.L8003ED40:
/* 03E8F0 8003ED40 10550004 */  beq         $v0, $s5, .L8003ED54
/* 03E8F4 8003ED44 02C02825 */   move       $a1, $s6
/* 03E8F8 8003ED48 0C00FB64 */  jal         func_8003ED90
/* 03E8FC 8003ED4C 02203025 */   move       $a2, $s1
/* 03E900 8003ED50 02028021 */  addu        $s0, $s0, $v0
.L8003ED54:
/* 03E904 8003ED54 8FAF0040 */  lw          $t7, 0x40($sp)
/* 03E908 8003ED58 91F80000 */  lbu         $t8, 0x0($t7)
/* 03E90C 8003ED5C 5700FFF2 */  bnel        $t8, $zero, .L8003ED28
/* 03E910 8003ED60 02402025 */   move       $a0, $s2
.L8003ED64:
/* 03E914 8003ED64 8FBF0034 */  lw          $ra, 0x34($sp)
/* 03E918 8003ED68 02001025 */  move        $v0, $s0
/* 03E91C 8003ED6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03E920 8003ED70 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03E924 8003ED74 8FB20020 */  lw          $s2, 0x20($sp)
/* 03E928 8003ED78 8FB30024 */  lw          $s3, 0x24($sp)
/* 03E92C 8003ED7C 8FB40028 */  lw          $s4, 0x28($sp)
/* 03E930 8003ED80 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03E934 8003ED84 8FB60030 */  lw          $s6, 0x30($sp)
/* 03E938 8003ED88 03E00008 */  jr          $ra
/* 03E93C 8003ED8C 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8003ED90 # 35
/* 03E940 8003ED90 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E944 8003ED94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E948 8003ED98 AFA40020 */  sw          $a0, 0x20($sp)
/* 03E94C 8003ED9C AFA60028 */  sw          $a2, 0x28($sp)
/* 03E950 8003EDA0 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03E954 8003EDA4 AFA50024 */  sw          $a1, 0x24($sp)
/* 03E958 8003EDA8 0C00FB81 */  jal         func_8003EE04
/* 03E95C 8003EDAC AFAE001C */   sw         $t6, 0x1c($sp)
/* 03E960 8003EDB0 24030001 */  addiu       $v1, $zero, 0x1
/* 03E964 8003EDB4 8FA50024 */  lw          $a1, 0x24($sp)
/* 03E968 8003EDB8 10430003 */  beq         $v0, $v1, .L8003EDC8
/* 03E96C 8003EDBC 8FA60028 */   lw         $a2, 0x28($sp)
/* 03E970 8003EDC0 14C30003 */  bne         $a2, $v1, .L8003EDD0
/* 03E974 8003EDC4 00003825 */   move       $a3, $zero
.L8003EDC8:
/* 03E978 8003EDC8 10000001 */  b           .L8003EDD0
/* 03E97C 8003EDCC 24070002 */   addiu      $a3, $zero, 0x2
.L8003EDD0:
/* 03E980 8003EDD0 8FA40020 */  lw          $a0, 0x20($sp)
/* 03E984 8003EDD4 0C00FB9D */  jal         func_8003EE74
/* 03E988 8003EDD8 AFA70018 */   sw         $a3, 0x18($sp)
/* 03E98C 8003EDDC 8FA70018 */  lw          $a3, 0x18($sp)
/* 03E990 8003EDE0 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03E994 8003EDE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E998 8003EDE8 00472021 */  addu        $a0, $v0, $a3
/* 03E99C 8003EDEC 00A4082A */  slt         $at, $a1, $a0
/* 03E9A0 8003EDF0 10200002 */  beqz        $at, .L8003EDFC
/* 03E9A4 8003EDF4 27BD0020 */   addiu      $sp, $sp, 0x20
/* 03E9A8 8003EDF8 00A02025 */  move        $a0, $a1
.L8003EDFC:
/* 03E9AC 8003EDFC 03E00008 */  jr          $ra
/* 03E9B0 8003EE00 00801025 */   move       $v0, $a0

glabel func_8003EE04 # 36
/* 03E9B4 8003EE04 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03E9B8 8003EE08 3401A1A0 */  ori         $at, $zero, 0xa1a0
/* 03E9BC 8003EE0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E9C0 8003EE10 14810003 */  bne         $a0, $at, .L8003EE20
/* 03E9C4 8003EE14 AFA5001C */   sw         $a1, 0x1c($sp)
/* 03E9C8 8003EE18 10000012 */  b           .L8003EE64
/* 03E9CC 8003EE1C 00001025 */   move       $v0, $zero
.L8003EE20:
/* 03E9D0 8003EE20 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03E9D4 8003EE24 24060001 */  addiu       $a2, $zero, 0x1
/* 03E9D8 8003EE28 0C00FD3F */  jal         func_8003F4FC
/* 03E9DC 8003EE2C AFA40018 */   sw         $a0, 0x18($sp)
/* 03E9E0 8003EE30 1440000B */  bnez        $v0, .L8003EE60
/* 03E9E4 8003EE34 8FA40018 */   lw         $a0, 0x18($sp)
/* 03E9E8 8003EE38 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03E9EC 8003EE3C 0C00FD55 */  jal         func_8003F554
/* 03E9F0 8003EE40 24060001 */   addiu      $a2, $zero, 0x1
/* 03E9F4 8003EE44 8FAF001C */  lw          $t7, 0x1c($sp)
/* 03E9F8 8003EE48 244E0001 */  addiu       $t6, $v0, 0x1
/* 03E9FC 8003EE4C 8DF80000 */  lw          $t8, 0x0($t7)
/* 03EA00 8003EE50 55D80004 */  bnel        $t6, $t8, .L8003EE64
/* 03EA04 8003EE54 24020001 */   addiu      $v0, $zero, 0x1
/* 03EA08 8003EE58 10000002 */  b           .L8003EE64
/* 03EA0C 8003EE5C 00001025 */   move       $v0, $zero
.L8003EE60:
/* 03EA10 8003EE60 24020001 */  addiu       $v0, $zero, 0x1
.L8003EE64:
/* 03EA14 8003EE64 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03EA18 8003EE68 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03EA1C 8003EE6C 03E00008 */  jr          $ra
/* 03EA20 8003EE70 00000000 */   nop

glabel func_8003EE74 # 37
/* 03EA24 8003EE74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03EA28 8003EE78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03EA2C 8003EE7C AFA40020 */  sw          $a0, 0x20($sp)
/* 03EA30 8003EE80 AFA50024 */  sw          $a1, 0x24($sp)
/* 03EA34 8003EE84 0C00FD3F */  jal         func_8003F4FC
/* 03EA38 8003EE88 AFA60028 */   sw         $a2, 0x28($sp)
/* 03EA3C 8003EE8C 04410003 */  bgez        $v0, .L8003EE9C
/* 03EA40 8003EE90 00027043 */   sra        $t6, $v0, 1
/* 03EA44 8003EE94 24410001 */  addiu       $at, $v0, 0x1
/* 03EA48 8003EE98 00017043 */  sra         $t6, $at, 1
.L8003EE9C:
/* 03EA4C 8003EE9C 000E7840 */  sll         $t7, $t6, 1
/* 03EA50 8003EEA0 AFAF001C */  sw          $t7, 0x1c($sp)
/* 03EA54 8003EEA4 8FA40020 */  lw          $a0, 0x20($sp)
/* 03EA58 8003EEA8 8FA50024 */  lw          $a1, 0x24($sp)
/* 03EA5C 8003EEAC 0C00FD55 */  jal         func_8003F554
/* 03EA60 8003EEB0 8FA60028 */   lw         $a2, 0x28($sp)
/* 03EA64 8003EEB4 8FA8001C */  lw          $t0, 0x1c($sp)
/* 03EA68 8003EEB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03EA6C 8003EEBC 04410003 */  bgez        $v0, .L8003EECC
/* 03EA70 8003EEC0 0002C043 */   sra        $t8, $v0, 1
/* 03EA74 8003EEC4 24410001 */  addiu       $at, $v0, 0x1
/* 03EA78 8003EEC8 0001C043 */  sra         $t8, $at, 1
.L8003EECC:
/* 03EA7C 8003EECC 0018C840 */  sll         $t9, $t8, 1
/* 03EA80 8003EED0 03281023 */  subu        $v0, $t9, $t0
/* 03EA84 8003EED4 24420002 */  addiu       $v0, $v0, 0x2
/* 03EA88 8003EED8 03E00008 */  jr          $ra
/* 03EA8C 8003EEDC 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8003EEE0 # 38
/* 03EA90 8003EEE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03EA94 8003EEE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03EA98 8003EEE8 AFB00018 */  sw          $s0, 0x18($sp)
/* 03EA9C 8003EEEC AFA5002C */  sw          $a1, 0x2c($sp)
/* 03EAA0 8003EEF0 00808025 */  move        $s0, $a0
/* 03EAA4 8003EEF4 AFA00024 */  sw          $zero, 0x24($sp)
/* 03EAA8 8003EEF8 0C00FBE2 */  jal         func_8003EF88
/* 03EAAC 8003EEFC 27A50024 */   addiu      $a1, $sp, 0x24
/* 03EAB0 8003EF00 8FA30024 */  lw          $v1, 0x24($sp)
/* 03EAB4 8003EF04 02002025 */  move        $a0, $s0
/* 03EAB8 8003EF08 54600004 */  bnel        $v1, $zero, .L8003EF1C
/* 03EABC 8003EF0C 8FA30024 */   lw         $v1, 0x24($sp)
/* 03EAC0 8003EF10 0C00FBF3 */  jal         func_8003EFCC
/* 03EAC4 8003EF14 27A50024 */   addiu      $a1, $sp, 0x24
/* 03EAC8 8003EF18 8FA30024 */  lw          $v1, 0x24($sp)
.L8003EF1C:
/* 03EACC 8003EF1C 02002025 */  move        $a0, $s0
/* 03EAD0 8003EF20 54600004 */  bnel        $v1, $zero, .L8003EF34
/* 03EAD4 8003EF24 8FA30024 */   lw         $v1, 0x24($sp)
/* 03EAD8 8003EF28 0C00FC98 */  jal         func_8003F260
/* 03EADC 8003EF2C 27A50024 */   addiu      $a1, $sp, 0x24
/* 03EAE0 8003EF30 8FA30024 */  lw          $v1, 0x24($sp)
.L8003EF34:
/* 03EAE4 8003EF34 02002025 */  move        $a0, $s0
/* 03EAE8 8003EF38 27A50024 */  addiu       $a1, $sp, 0x24
/* 03EAEC 8003EF3C 54600004 */  bnel        $v1, $zero, .L8003EF50
/* 03EAF0 8003EF40 8FA30024 */   lw         $v1, 0x24($sp)
/* 03EAF4 8003EF44 0C00FCCA */  jal         func_8003F328
/* 03EAF8 8003EF48 8FA6002C */   lw         $a2, 0x2c($sp)
/* 03EAFC 8003EF4C 8FA30024 */  lw          $v1, 0x24($sp)
.L8003EF50:
/* 03EB00 8003EF50 02002025 */  move        $a0, $s0
/* 03EB04 8003EF54 27A50024 */  addiu       $a1, $sp, 0x24
/* 03EB08 8003EF58 14600004 */  bnez        $v1, .L8003EF6C
/* 03EB0C 8003EF5C 00000000 */   nop
/* 03EB10 8003EF60 0C00FCF4 */  jal         func_8003F3D0
/* 03EB14 8003EF64 8FA6002C */   lw         $a2, 0x2c($sp)
/* 03EB18 8003EF68 8FA30024 */  lw          $v1, 0x24($sp)
.L8003EF6C:
/* 03EB1C 8003EF6C 14600002 */  bnez        $v1, .L8003EF78
/* 03EB20 8003EF70 8FBF001C */   lw         $ra, 0x1c($sp)
/* 03EB24 8003EF74 3403A1A9 */  ori         $v1, $zero, 0xa1a9
.L8003EF78:
/* 03EB28 8003EF78 8FB00018 */  lw          $s0, 0x18($sp)
/* 03EB2C 8003EF7C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03EB30 8003EF80 03E00008 */  jr          $ra
/* 03EB34 8003EF84 00601025 */   move       $v0, $v1

glabel func_8003EF88 # 39
/* 03EB38 8003EF88 AFA50004 */  sw          $a1, 0x4($sp)
/* 03EB3C 8003EF8C 8C830000 */  lw          $v1, 0x0($a0)
/* 03EB40 8003EF90 00003025 */  move        $a2, $zero
/* 03EB44 8003EF94 8FB80004 */  lw          $t8, 0x4($sp)
/* 03EB48 8003EF98 90620000 */  lbu         $v0, 0x0($v1)
/* 03EB4C 8003EF9C 304E0080 */  andi        $t6, $v0, 0x80
/* 03EB50 8003EFA0 11C00007 */  beqz        $t6, .L8003EFC0
/* 03EB54 8003EFA4 00402825 */   move       $a1, $v0
/* 03EB58 8003EFA8 90620001 */  lbu         $v0, 0x1($v1)
/* 03EB5C 8003EFAC 00057A00 */  sll         $t7, $a1, 8
/* 03EB60 8003EFB0 24630002 */  addiu       $v1, $v1, 0x2
/* 03EB64 8003EFB4 01E22825 */  or          $a1, $t7, $v0
/* 03EB68 8003EFB8 AF050000 */  sw          $a1, 0x0($t8)
/* 03EB6C 8003EFBC 24060001 */  addiu       $a2, $zero, 0x1
.L8003EFC0:
/* 03EB70 8003EFC0 AC830000 */  sw          $v1, 0x0($a0)
/* 03EB74 8003EFC4 03E00008 */  jr          $ra
/* 03EB78 8003EFC8 00C01025 */   move       $v0, $a2

glabel func_8003EFCC # 40
/* 03EB7C 8003EFCC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03EB80 8003EFD0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03EB84 8003EFD4 AFB10018 */  sw          $s1, 0x18($sp)
/* 03EB88 8003EFD8 AFB00014 */  sw          $s0, 0x14($sp)
/* 03EB8C 8003EFDC AFA40020 */  sw          $a0, 0x20($sp)
/* 03EB90 8003EFE0 AFA50024 */  sw          $a1, 0x24($sp)
/* 03EB94 8003EFE4 8C8F0000 */  lw          $t7, 0x0($a0)
/* 03EB98 8003EFE8 00008825 */  move        $s1, $zero
/* 03EB9C 8003EFEC 91F00000 */  lbu         $s0, 0x0($t7)
/* 03EBA0 8003EFF0 0C00FC22 */  jal         func_8003F088
/* 03EBA4 8003EFF4 02002025 */   move       $a0, $s0
/* 03EBA8 8003EFF8 24030001 */  addiu       $v1, $zero, 0x1
/* 03EBAC 8003EFFC 14430003 */  bne         $v0, $v1, .L8003F00C
/* 03EBB0 8003F000 320400FF */   andi       $a0, $s0, 0xff
/* 03EBB4 8003F004 10000015 */  b           .L8003F05C
/* 03EBB8 8003F008 00608825 */   move       $s1, $v1
.L8003F00C:
/* 03EBBC 8003F00C 0C00FC30 */  jal         func_8003F0C0
/* 03EBC0 8003F010 8FA50024 */   lw         $a1, 0x24($sp)
/* 03EBC4 8003F014 24030001 */  addiu       $v1, $zero, 0x1
/* 03EBC8 8003F018 14430003 */  bne         $v0, $v1, .L8003F028
/* 03EBCC 8003F01C 320400FF */   andi       $a0, $s0, 0xff
/* 03EBD0 8003F020 1000000E */  b           .L8003F05C
/* 03EBD4 8003F024 00608825 */   move       $s1, $v1
.L8003F028:
/* 03EBD8 8003F028 0C00FC3E */  jal         func_8003F0F8
/* 03EBDC 8003F02C 8FA50024 */   lw         $a1, 0x24($sp)
/* 03EBE0 8003F030 24030001 */  addiu       $v1, $zero, 0x1
/* 03EBE4 8003F034 14430003 */  bne         $v0, $v1, .L8003F044
/* 03EBE8 8003F038 320400FF */   andi       $a0, $s0, 0xff
/* 03EBEC 8003F03C 10000007 */  b           .L8003F05C
/* 03EBF0 8003F040 00608825 */   move       $s1, $v1
.L8003F044:
/* 03EBF4 8003F044 0C00FC4C */  jal         func_8003F130
/* 03EBF8 8003F048 8FA50024 */   lw         $a1, 0x24($sp)
/* 03EBFC 8003F04C 24030001 */  addiu       $v1, $zero, 0x1
/* 03EC00 8003F050 14430002 */  bne         $v0, $v1, .L8003F05C
/* 03EC04 8003F054 00000000 */   nop
/* 03EC08 8003F058 00608825 */  move        $s1, $v1
.L8003F05C:
/* 03EC0C 8003F05C 16230004 */  bne         $s1, $v1, .L8003F070
/* 03EC10 8003F060 8FA20020 */   lw         $v0, 0x20($sp)
/* 03EC14 8003F064 8C580000 */  lw          $t8, 0x0($v0)
/* 03EC18 8003F068 27190001 */  addiu       $t9, $t8, 0x1
/* 03EC1C 8003F06C AC590000 */  sw          $t9, 0x0($v0)
.L8003F070:
/* 03EC20 8003F070 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03EC24 8003F074 02201025 */  move        $v0, $s1
/* 03EC28 8003F078 8FB10018 */  lw          $s1, 0x18($sp)
/* 03EC2C 8003F07C 8FB00014 */  lw          $s0, 0x14($sp)
/* 03EC30 8003F080 03E00008 */  jr          $ra
/* 03EC34 8003F084 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8003F088 # 41
/* 03EC38 8003F088 308E00FF */  andi        $t6, $a0, 0xff
/* 03EC3C 8003F08C 29C10030 */  slti        $at, $t6, 0x30
/* 03EC40 8003F090 14200008 */  bnez        $at, .L8003F0B4
/* 03EC44 8003F094 AFA40000 */   sw         $a0, 0x0($sp)
/* 03EC48 8003F098 29C1003A */  slti        $at, $t6, 0x3a
/* 03EC4C 8003F09C 10200005 */  beqz        $at, .L8003F0B4
/* 03EC50 8003F0A0 24020001 */   addiu      $v0, $zero, 0x1
/* 03EC54 8003F0A4 3401A380 */  ori         $at, $zero, 0xa380
/* 03EC58 8003F0A8 01C17821 */  addu        $t7, $t6, $at
/* 03EC5C 8003F0AC 03E00008 */  jr          $ra
/* 03EC60 8003F0B0 ACAF0000 */   sw         $t7, 0x0($a1)
.L8003F0B4:
/* 03EC64 8003F0B4 00001025 */  move        $v0, $zero
/* 03EC68 8003F0B8 03E00008 */  jr          $ra
/* 03EC6C 8003F0BC 00000000 */   nop

glabel func_8003F0C0 # 42
/* 03EC70 8003F0C0 308E00FF */  andi        $t6, $a0, 0xff
/* 03EC74 8003F0C4 29C10061 */  slti        $at, $t6, 0x61
/* 03EC78 8003F0C8 14200008 */  bnez        $at, .L8003F0EC
/* 03EC7C 8003F0CC AFA40000 */   sw         $a0, 0x0($sp)
/* 03EC80 8003F0D0 29C1007B */  slti        $at, $t6, 0x7b
/* 03EC84 8003F0D4 10200005 */  beqz        $at, .L8003F0EC
/* 03EC88 8003F0D8 24020001 */   addiu      $v0, $zero, 0x1
/* 03EC8C 8003F0DC 3401A380 */  ori         $at, $zero, 0xa380
/* 03EC90 8003F0E0 01C17821 */  addu        $t7, $t6, $at
/* 03EC94 8003F0E4 03E00008 */  jr          $ra
/* 03EC98 8003F0E8 ACAF0000 */   sw         $t7, 0x0($a1)
.L8003F0EC:
/* 03EC9C 8003F0EC 00001025 */  move        $v0, $zero
/* 03ECA0 8003F0F0 03E00008 */  jr          $ra
/* 03ECA4 8003F0F4 00000000 */   nop

glabel func_8003F0F8 # 43
/* 03ECA8 8003F0F8 308E00FF */  andi        $t6, $a0, 0xff
/* 03ECAC 8003F0FC 29C10041 */  slti        $at, $t6, 0x41
/* 03ECB0 8003F100 14200008 */  bnez        $at, .L8003F124
/* 03ECB4 8003F104 AFA40000 */   sw         $a0, 0x0($sp)
/* 03ECB8 8003F108 29C1005B */  slti        $at, $t6, 0x5b
/* 03ECBC 8003F10C 10200005 */  beqz        $at, .L8003F124
/* 03ECC0 8003F110 24020001 */   addiu      $v0, $zero, 0x1
/* 03ECC4 8003F114 3401A380 */  ori         $at, $zero, 0xa380
/* 03ECC8 8003F118 01C17821 */  addu        $t7, $t6, $at
/* 03ECCC 8003F11C 03E00008 */  jr          $ra
/* 03ECD0 8003F120 ACAF0000 */   sw         $t7, 0x0($a1)
.L8003F124:
/* 03ECD4 8003F124 00001025 */  move        $v0, $zero
/* 03ECD8 8003F128 03E00008 */  jr          $ra
/* 03ECDC 8003F12C 00000000 */   nop

glabel func_8003F130 # 44
/* 03ECE0 8003F130 308E00FF */  andi        $t6, $a0, 0xff
/* 03ECE4 8003F134 25CFFFE0 */  addiu       $t7, $t6, -0x20
/* 03ECE8 8003F138 2DE10020 */  sltiu       $at, $t7, 0x20
/* 03ECEC 8003F13C 10200043 */  beqz        $at, L8003F24C
/* 03ECF0 8003F140 AFA40000 */   sw         $a0, 0x0($sp)
/* 03ECF4 8003F144 000F7880 */  sll         $t7, $t7, 2
/* 03ECF8 8003F148 3C01800A */  lui         $at, %hi(jtbl_800A71A4)
/* 03ECFC 8003F14C 002F0821 */  addu        $at, $at, $t7
/* 03ED00 8003F150 8C2F71A4 */  lw          $t7, %lo(jtbl_800A71A4)($at)
/* 03ED04 8003F154 01E00008 */  jr          $t7
/* 03ED08 8003F158 00000000 */   nop
glabel L8003F15C
/* 03ED0C 8003F15C 3418A1A0 */  ori         $t8, $zero, 0xa1a0
/* 03ED10 8003F160 1000003C */  b           .L8003F254
/* 03ED14 8003F164 ACB80000 */   sw         $t8, 0x0($a1)
glabel L8003F168
/* 03ED18 8003F168 3419A1A4 */  ori         $t9, $zero, 0xa1a4
/* 03ED1C 8003F16C 10000039 */  b           .L8003F254
/* 03ED20 8003F170 ACB90000 */   sw         $t9, 0x0($a1)
glabel L8003F174
/* 03ED24 8003F174 3408A1A5 */  ori         $t0, $zero, 0xa1a5
/* 03ED28 8003F178 10000036 */  b           .L8003F254
/* 03ED2C 8003F17C ACA80000 */   sw         $t0, 0x0($a1)
glabel L8003F180
/* 03ED30 8003F180 3409A1A7 */  ori         $t1, $zero, 0xa1a7
/* 03ED34 8003F184 10000033 */  b           .L8003F254
/* 03ED38 8003F188 ACA90000 */   sw         $t1, 0x0($a1)
glabel L8003F18C
/* 03ED3C 8003F18C 340AA1A8 */  ori         $t2, $zero, 0xa1a8
/* 03ED40 8003F190 10000030 */  b           .L8003F254
/* 03ED44 8003F194 ACAA0000 */   sw         $t2, 0x0($a1)
glabel L8003F198
/* 03ED48 8003F198 340BA1A9 */  ori         $t3, $zero, 0xa1a9
/* 03ED4C 8003F19C 1000002D */  b           .L8003F254
/* 03ED50 8003F1A0 ACAB0000 */   sw         $t3, 0x0($a1)
glabel L8003F1A4
/* 03ED54 8003F1A4 340CA1AA */  ori         $t4, $zero, 0xa1aa
/* 03ED58 8003F1A8 1000002A */  b           .L8003F254
/* 03ED5C 8003F1AC ACAC0000 */   sw         $t4, 0x0($a1)
glabel L8003F1B0
/* 03ED60 8003F1B0 340DA1C7 */  ori         $t5, $zero, 0xa1c7
/* 03ED64 8003F1B4 10000027 */  b           .L8003F254
/* 03ED68 8003F1B8 ACAD0000 */   sw         $t5, 0x0($a1)
glabel L8003F1BC
/* 03ED6C 8003F1BC 340EA1C9 */  ori         $t6, $zero, 0xa1c9
/* 03ED70 8003F1C0 10000024 */  b           .L8003F254
/* 03ED74 8003F1C4 ACAE0000 */   sw         $t6, 0x0($a1)
glabel L8003F1C8
/* 03ED78 8003F1C8 340FA1CA */  ori         $t7, $zero, 0xa1ca
/* 03ED7C 8003F1CC 10000021 */  b           .L8003F254
/* 03ED80 8003F1D0 ACAF0000 */   sw         $t7, 0x0($a1)
glabel L8003F1D4
/* 03ED84 8003F1D4 3418A1CB */  ori         $t8, $zero, 0xa1cb
/* 03ED88 8003F1D8 1000001E */  b           .L8003F254
/* 03ED8C 8003F1DC ACB80000 */   sw         $t8, 0x0($a1)
glabel L8003F1E0
/* 03ED90 8003F1E0 3419A1DC */  ori         $t9, $zero, 0xa1dc
/* 03ED94 8003F1E4 1000001B */  b           .L8003F254
/* 03ED98 8003F1E8 ACB90000 */   sw         $t9, 0x0($a1)
glabel L8003F1EC
/* 03ED9C 8003F1EC 3408A1DD */  ori         $t0, $zero, 0xa1dd
/* 03EDA0 8003F1F0 10000018 */  b           .L8003F254
/* 03EDA4 8003F1F4 ACA80000 */   sw         $t0, 0x0($a1)
glabel L8003F1F8
/* 03EDA8 8003F1F8 3409A1E1 */  ori         $t1, $zero, 0xa1e1
/* 03EDAC 8003F1FC 10000015 */  b           .L8003F254
/* 03EDB0 8003F200 ACA90000 */   sw         $t1, 0x0($a1)
glabel L8003F204
/* 03EDB4 8003F204 340AA1E3 */  ori         $t2, $zero, 0xa1e3
/* 03EDB8 8003F208 10000012 */  b           .L8003F254
/* 03EDBC 8003F20C ACAA0000 */   sw         $t2, 0x0($a1)
glabel L8003F210
/* 03EDC0 8003F210 340BA1E4 */  ori         $t3, $zero, 0xa1e4
/* 03EDC4 8003F214 1000000F */  b           .L8003F254
/* 03EDC8 8003F218 ACAB0000 */   sw         $t3, 0x0($a1)
glabel L8003F21C
/* 03EDCC 8003F21C 340CA1F0 */  ori         $t4, $zero, 0xa1f0
/* 03EDD0 8003F220 1000000C */  b           .L8003F254
/* 03EDD4 8003F224 ACAC0000 */   sw         $t4, 0x0($a1)
glabel L8003F228
/* 03EDD8 8003F228 340DA1F3 */  ori         $t5, $zero, 0xa1f3
/* 03EDDC 8003F22C 10000009 */  b           .L8003F254
/* 03EDE0 8003F230 ACAD0000 */   sw         $t5, 0x0($a1)
glabel L8003F234
/* 03EDE4 8003F234 340EA1F5 */  ori         $t6, $zero, 0xa1f5
/* 03EDE8 8003F238 10000006 */  b           .L8003F254
/* 03EDEC 8003F23C ACAE0000 */   sw         $t6, 0x0($a1)
glabel L8003F240
/* 03EDF0 8003F240 340FA1F6 */  ori         $t7, $zero, 0xa1f6
/* 03EDF4 8003F244 10000003 */  b           .L8003F254
/* 03EDF8 8003F248 ACAF0000 */   sw         $t7, 0x0($a1)
glabel L8003F24C
/* 03EDFC 8003F24C 03E00008 */  jr          $ra
/* 03EE00 8003F250 00001025 */   move       $v0, $zero
.L8003F254:
/* 03EE04 8003F254 24020001 */  addiu       $v0, $zero, 0x1
/* 03EE08 8003F258 03E00008 */  jr          $ra
/* 03EE0C 8003F25C 00000000 */   nop

glabel func_8003F260 # 45
/* 03EE10 8003F260 8C830000 */  lw          $v1, 0x0($a0)
/* 03EE14 8003F264 24080040 */  addiu       $t0, $zero, 0x40
/* 03EE18 8003F268 00A03825 */  move        $a3, $a1
/* 03EE1C 8003F26C 90620000 */  lbu         $v0, 0x0($v1)
/* 03EE20 8003F270 00003025 */  move        $a2, $zero
/* 03EE24 8003F274 5502002A */  bnel        $t0, $v0, .L8003F320
/* 03EE28 8003F278 AC830000 */   sw         $v1, 0x0($a0)
/* 03EE2C 8003F27C 90650001 */  lbu         $a1, 0x1($v1)
/* 03EE30 8003F280 24630001 */  addiu       $v1, $v1, 0x1
/* 03EE34 8003F284 340EA1F7 */  ori         $t6, $zero, 0xa1f7
/* 03EE38 8003F288 15050004 */  bne         $t0, $a1, .L8003F29C
/* 03EE3C 8003F28C 28A10030 */   slti       $at, $a1, 0x30
/* 03EE40 8003F290 ACEE0000 */  sw          $t6, 0x0($a3)
/* 03EE44 8003F294 1000001D */  b           .L8003F30C
/* 03EE48 8003F298 24060001 */   addiu      $a2, $zero, 0x1
.L8003F29C:
/* 03EE4C 8003F29C 14200007 */  bnez        $at, .L8003F2BC
/* 03EE50 8003F2A0 28A1003A */   slti       $at, $a1, 0x3a
/* 03EE54 8003F2A4 10200005 */  beqz        $at, .L8003F2BC
/* 03EE58 8003F2A8 3401A280 */   ori        $at, $zero, 0xa280
/* 03EE5C 8003F2AC 00A17821 */  addu        $t7, $a1, $at
/* 03EE60 8003F2B0 ACEF0000 */  sw          $t7, 0x0($a3)
/* 03EE64 8003F2B4 10000015 */  b           .L8003F30C
/* 03EE68 8003F2B8 24060001 */   addiu      $a2, $zero, 0x1
.L8003F2BC:
/* 03EE6C 8003F2BC 28A10041 */  slti        $at, $a1, 0x41
/* 03EE70 8003F2C0 14200007 */  bnez        $at, .L8003F2E0
/* 03EE74 8003F2C4 28A1005B */   slti       $at, $a1, 0x5b
/* 03EE78 8003F2C8 10200005 */  beqz        $at, .L8003F2E0
/* 03EE7C 8003F2CC 3401A280 */   ori        $at, $zero, 0xa280
/* 03EE80 8003F2D0 00A1C021 */  addu        $t8, $a1, $at
/* 03EE84 8003F2D4 ACF80000 */  sw          $t8, 0x0($a3)
/* 03EE88 8003F2D8 1000000C */  b           .L8003F30C
/* 03EE8C 8003F2DC 24060001 */   addiu      $a2, $zero, 0x1
.L8003F2E0:
/* 03EE90 8003F2E0 28A10061 */  slti        $at, $a1, 0x61
/* 03EE94 8003F2E4 14200008 */  bnez        $at, .L8003F308
/* 03EE98 8003F2E8 3409A1F7 */   ori        $t1, $zero, 0xa1f7
/* 03EE9C 8003F2EC 28A1007B */  slti        $at, $a1, 0x7b
/* 03EEA0 8003F2F0 10200005 */  beqz        $at, .L8003F308
/* 03EEA4 8003F2F4 3401A280 */   ori        $at, $zero, 0xa280
/* 03EEA8 8003F2F8 00A1C821 */  addu        $t9, $a1, $at
/* 03EEAC 8003F2FC ACF90000 */  sw          $t9, 0x0($a3)
/* 03EEB0 8003F300 10000002 */  b           .L8003F30C
/* 03EEB4 8003F304 24060001 */   addiu      $a2, $zero, 0x1
.L8003F308:
/* 03EEB8 8003F308 ACE90000 */  sw          $t1, 0x0($a3)
.L8003F30C:
/* 03EEBC 8003F30C 24010001 */  addiu       $at, $zero, 0x1
/* 03EEC0 8003F310 54C10003 */  bnel        $a2, $at, .L8003F320
/* 03EEC4 8003F314 AC830000 */   sw         $v1, 0x0($a0)
/* 03EEC8 8003F318 24630001 */  addiu       $v1, $v1, 0x1
/* 03EECC 8003F31C AC830000 */  sw          $v1, 0x0($a0)
.L8003F320:
/* 03EED0 8003F320 03E00008 */  jr          $ra
/* 03EED4 8003F324 00C01025 */   move       $v0, $a2

glabel func_8003F328 # 46
/* 03EED8 8003F328 AFA50004 */  sw          $a1, 0x4($sp)
/* 03EEDC 8003F32C AFA60008 */  sw          $a2, 0x8($sp)
/* 03EEE0 8003F330 8C830000 */  lw          $v1, 0x0($a0)
/* 03EEE4 8003F334 24080023 */  addiu       $t0, $zero, 0x23
/* 03EEE8 8003F338 00003825 */  move        $a3, $zero
/* 03EEEC 8003F33C 90620000 */  lbu         $v0, 0x0($v1)
/* 03EEF0 8003F340 55020021 */  bnel        $t0, $v0, .L8003F3C8
/* 03EEF4 8003F344 AC830000 */   sw         $v1, 0x0($a0)
/* 03EEF8 8003F348 90620001 */  lbu         $v0, 0x1($v1)
/* 03EEFC 8003F34C 00003025 */  move        $a2, $zero
/* 03EF00 8003F350 24630001 */  addiu       $v1, $v1, 0x1
/* 03EF04 8003F354 15020006 */  bne         $t0, $v0, .L8003F370
/* 03EF08 8003F358 00003825 */   move       $a3, $zero
/* 03EF0C 8003F35C 340EA1F4 */  ori         $t6, $zero, 0xa1f4
/* 03EF10 8003F360 ACAE0000 */  sw          $t6, 0x0($a1)
/* 03EF14 8003F364 24630001 */  addiu       $v1, $v1, 0x1
/* 03EF18 8003F368 10000016 */  b           .L8003F3C4
/* 03EF1C 8003F36C 24070001 */   addiu      $a3, $zero, 0x1
.L8003F370:
/* 03EF20 8003F370 24090003 */  addiu       $t1, $zero, 0x3
/* 03EF24 8003F374 2408000A */  addiu       $t0, $zero, 0xa
.L8003F378:
/* 03EF28 8003F378 90620000 */  lbu         $v0, 0x0($v1)
/* 03EF2C 8003F37C 28410030 */  slti        $at, $v0, 0x30
/* 03EF30 8003F380 1420000A */  bnez        $at, .L8003F3AC
/* 03EF34 8003F384 2841003A */   slti       $at, $v0, 0x3a
/* 03EF38 8003F388 50200009 */  beql        $at, $zero, .L8003F3B0
/* 03EF3C 8003F38C 8FB90008 */   lw         $t9, 0x8($sp)
/* 03EF40 8003F390 00C80019 */  multu       $a2, $t0
/* 03EF44 8003F394 24E70001 */  addiu       $a3, $a3, 0x1
/* 03EF48 8003F398 24630001 */  addiu       $v1, $v1, 0x1
/* 03EF4C 8003F39C 0000C012 */  mflo        $t8
/* 03EF50 8003F3A0 03023021 */  addu        $a2, $t8, $v0
/* 03EF54 8003F3A4 14E9FFF4 */  bne         $a3, $t1, .L8003F378
/* 03EF58 8003F3A8 24C6FFD0 */   addiu      $a2, $a2, -0x30
.L8003F3AC:
/* 03EF5C 8003F3AC 8FB90008 */  lw          $t9, 0x8($sp)
.L8003F3B0:
/* 03EF60 8003F3B0 340AA2A0 */  ori         $t2, $zero, 0xa2a0
/* 03EF64 8003F3B4 24070001 */  addiu       $a3, $zero, 0x1
/* 03EF68 8003F3B8 AF260000 */  sw          $a2, 0x0($t9)
/* 03EF6C 8003F3BC 8FAB0004 */  lw          $t3, 0x4($sp)
/* 03EF70 8003F3C0 AD6A0000 */  sw          $t2, 0x0($t3)
.L8003F3C4:
/* 03EF74 8003F3C4 AC830000 */  sw          $v1, 0x0($a0)
.L8003F3C8:
/* 03EF78 8003F3C8 03E00008 */  jr          $ra
/* 03EF7C 8003F3CC 00E01025 */   move       $v0, $a3

glabel func_8003F3D0 # 47
/* 03EF80 8003F3D0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03EF84 8003F3D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03EF88 8003F3D8 AFA40028 */  sw          $a0, 0x28($sp)
/* 03EF8C 8003F3DC AFA5002C */  sw          $a1, 0x2c($sp)
/* 03EF90 8003F3E0 AFA60030 */  sw          $a2, 0x30($sp)
/* 03EF94 8003F3E4 8C830000 */  lw          $v1, 0x0($a0)
/* 03EF98 8003F3E8 2402005E */  addiu       $v0, $zero, 0x5e
/* 03EF9C 8003F3EC 00004025 */  move        $t0, $zero
/* 03EFA0 8003F3F0 90670000 */  lbu         $a3, 0x0($v1)
/* 03EFA4 8003F3F4 54470020 */  bnel        $v0, $a3, .L8003F478
/* 03EFA8 8003F3F8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03EFAC 8003F3FC 90670001 */  lbu         $a3, 0x1($v1)
/* 03EFB0 8003F400 24630001 */  addiu       $v1, $v1, 0x1
/* 03EFB4 8003F404 27A5001C */  addiu       $a1, $sp, 0x1c
/* 03EFB8 8003F408 14470005 */  bne         $v0, $a3, .L8003F420
/* 03EFBC 8003F40C 30E400FF */   andi       $a0, $a3, 0xff
/* 03EFC0 8003F410 240F000F */  addiu       $t7, $zero, 0xf
/* 03EFC4 8003F414 AFAF001C */  sw          $t7, 0x1c($sp)
/* 03EFC8 8003F418 1000000B */  b           .L8003F448
/* 03EFCC 8003F41C 24080001 */   addiu      $t0, $zero, 0x1
.L8003F420:
/* 03EFD0 8003F420 AFA30024 */  sw          $v1, 0x24($sp)
/* 03EFD4 8003F424 0C00FD22 */  jal         func_8003F488
/* 03EFD8 8003F428 AFA80018 */   sw         $t0, 0x18($sp)
/* 03EFDC 8003F42C 8FA30024 */  lw          $v1, 0x24($sp)
/* 03EFE0 8003F430 14400004 */  bnez        $v0, .L8003F444
/* 03EFE4 8003F434 8FA80018 */   lw         $t0, 0x18($sp)
/* 03EFE8 8003F438 2418000F */  addiu       $t8, $zero, 0xf
/* 03EFEC 8003F43C 10000002 */  b           .L8003F448
/* 03EFF0 8003F440 AFB8001C */   sw         $t8, 0x1c($sp)
.L8003F444:
/* 03EFF4 8003F444 24080001 */  addiu       $t0, $zero, 0x1
.L8003F448:
/* 03EFF8 8003F448 8FB9001C */  lw          $t9, 0x1c($sp)
/* 03EFFC 8003F44C 8FA90030 */  lw          $t1, 0x30($sp)
/* 03F000 8003F450 340AA3A0 */  ori         $t2, $zero, 0xa3a0
/* 03F004 8003F454 24010001 */  addiu       $at, $zero, 0x1
/* 03F008 8003F458 AD390000 */  sw          $t9, 0x0($t1)
/* 03F00C 8003F45C 8FAB002C */  lw          $t3, 0x2c($sp)
/* 03F010 8003F460 AD6A0000 */  sw          $t2, 0x0($t3)
/* 03F014 8003F464 15010002 */  bne         $t0, $at, .L8003F470
/* 03F018 8003F468 8FAC0028 */   lw         $t4, 0x28($sp)
/* 03F01C 8003F46C 24630001 */  addiu       $v1, $v1, 0x1
.L8003F470:
/* 03F020 8003F470 AD830000 */  sw          $v1, 0x0($t4)
/* 03F024 8003F474 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003F478:
/* 03F028 8003F478 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03F02C 8003F47C 01001025 */  move        $v0, $t0
/* 03F030 8003F480 03E00008 */  jr          $ra
/* 03F034 8003F484 00000000 */   nop

glabel func_8003F488 # 48
/* 03F038 8003F488 308E00FF */  andi        $t6, $a0, 0xff
/* 03F03C 8003F48C 29C10030 */  slti        $at, $t6, 0x30
/* 03F040 8003F490 AFA40000 */  sw          $a0, 0x0($sp)
/* 03F044 8003F494 14200006 */  bnez        $at, .L8003F4B0
/* 03F048 8003F498 01C01025 */   move       $v0, $t6
/* 03F04C 8003F49C 29C1003A */  slti        $at, $t6, 0x3a
/* 03F050 8003F4A0 10200003 */  beqz        $at, .L8003F4B0
/* 03F054 8003F4A4 25CFFFD0 */   addiu      $t7, $t6, -0x30
/* 03F058 8003F4A8 10000011 */  b           .L8003F4F0
/* 03F05C 8003F4AC ACAF0000 */   sw         $t7, 0x0($a1)
.L8003F4B0:
/* 03F060 8003F4B0 28410041 */  slti        $at, $v0, 0x41
/* 03F064 8003F4B4 14200005 */  bnez        $at, .L8003F4CC
/* 03F068 8003F4B8 28410047 */   slti       $at, $v0, 0x47
/* 03F06C 8003F4BC 10200003 */  beqz        $at, .L8003F4CC
/* 03F070 8003F4C0 2458FFC9 */   addiu      $t8, $v0, -0x37
/* 03F074 8003F4C4 1000000A */  b           .L8003F4F0
/* 03F078 8003F4C8 ACB80000 */   sw         $t8, 0x0($a1)
.L8003F4CC:
/* 03F07C 8003F4CC 28410061 */  slti        $at, $v0, 0x61
/* 03F080 8003F4D0 14200005 */  bnez        $at, .L8003F4E8
/* 03F084 8003F4D4 28410067 */   slti       $at, $v0, 0x67
/* 03F088 8003F4D8 10200003 */  beqz        $at, .L8003F4E8
/* 03F08C 8003F4DC 2459FFA9 */   addiu      $t9, $v0, -0x57
/* 03F090 8003F4E0 10000003 */  b           .L8003F4F0
/* 03F094 8003F4E4 ACB90000 */   sw         $t9, 0x0($a1)
.L8003F4E8:
/* 03F098 8003F4E8 03E00008 */  jr          $ra
/* 03F09C 8003F4EC 00001025 */   move       $v0, $zero
.L8003F4F0:
/* 03F0A0 8003F4F0 24020001 */  addiu       $v0, $zero, 0x1
/* 03F0A4 8003F4F4 03E00008 */  jr          $ra
/* 03F0A8 8003F4F8 00000000 */   nop

glabel func_8003F4FC # 49
/* 03F0AC 8003F4FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F0B0 8003F500 3401A1A0 */  ori         $at, $zero, 0xa1a0
/* 03F0B4 8003F504 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F0B8 8003F508 14810003 */  bne         $a0, $at, .L8003F518
/* 03F0BC 8003F50C AFA5001C */   sw         $a1, 0x1c($sp)
/* 03F0C0 8003F510 1000000C */  b           .L8003F544
/* 03F0C4 8003F514 00001025 */   move       $v0, $zero
.L8003F518:
/* 03F0C8 8003F518 24010001 */  addiu       $at, $zero, 0x1
/* 03F0CC 8003F51C 14C10009 */  bne         $a2, $at, .L8003F544
/* 03F0D0 8003F520 00001025 */   move       $v0, $zero
/* 03F0D4 8003F524 0C00FD74 */  jal         func_8003F5D0
/* 03F0D8 8003F528 8FA5001C */   lw         $a1, 0x1c($sp)
/* 03F0DC 8003F52C 8FAE001C */  lw          $t6, 0x1c($sp)
/* 03F0E0 8003F530 0002C0C0 */  sll         $t8, $v0, 3
/* 03F0E4 8003F534 8DCF000C */  lw          $t7, 0xc($t6)
/* 03F0E8 8003F538 01F8C821 */  addu        $t9, $t7, $t8
/* 03F0EC 8003F53C 10000001 */  b           .L8003F544
/* 03F0F0 8003F540 83220004 */   lb         $v0, 0x4($t9)
.L8003F544:
/* 03F0F4 8003F544 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F0F8 8003F548 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F0FC 8003F54C 03E00008 */  jr          $ra
/* 03F100 8003F550 00000000 */   nop

glabel func_8003F554 # 50
/* 03F104 8003F554 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F108 8003F558 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F10C 8003F55C 3401A1A0 */  ori         $at, $zero, 0xa1a0
/* 03F110 8003F560 1481000C */  bne         $a0, $at, .L8003F594
/* 03F114 8003F564 8CA30000 */   lw         $v1, 0x0($a1)
/* 03F118 8003F568 24010001 */  addiu       $at, $zero, 0x1
/* 03F11C 8003F56C 14C10003 */  bne         $a2, $at, .L8003F57C
/* 03F120 8003F570 00000000 */   nop
/* 03F124 8003F574 10000012 */  b           .L8003F5C0
/* 03F128 8003F578 24020001 */   addiu      $v0, $zero, 0x1
.L8003F57C:
/* 03F12C 8003F57C 04610003 */  bgez        $v1, .L8003F58C
/* 03F130 8003F580 00031043 */   sra        $v0, $v1, 1
/* 03F134 8003F584 24610001 */  addiu       $at, $v1, 0x1
/* 03F138 8003F588 00011043 */  sra         $v0, $at, 1
.L8003F58C:
/* 03F13C 8003F58C 1000000C */  b           .L8003F5C0
/* 03F140 8003F590 2442FFFF */   addiu      $v0, $v0, -0x1
.L8003F594:
/* 03F144 8003F594 24010001 */  addiu       $at, $zero, 0x1
/* 03F148 8003F598 14C10009 */  bne         $a2, $at, .L8003F5C0
/* 03F14C 8003F59C 2462FFFF */   addiu      $v0, $v1, -0x1
/* 03F150 8003F5A0 0C00FD74 */  jal         func_8003F5D0
/* 03F154 8003F5A4 AFA5001C */   sw         $a1, 0x1c($sp)
/* 03F158 8003F5A8 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03F15C 8003F5AC 000278C0 */  sll         $t7, $v0, 3
/* 03F160 8003F5B0 8CAE000C */  lw          $t6, 0xc($a1)
/* 03F164 8003F5B4 01CFC021 */  addu        $t8, $t6, $t7
/* 03F168 8003F5B8 10000001 */  b           .L8003F5C0
/* 03F16C 8003F5BC 83020005 */   lb         $v0, 0x5($t8)
.L8003F5C0:
/* 03F170 8003F5C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F174 8003F5C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F178 8003F5C8 03E00008 */  jr          $ra
/* 03F17C 8003F5CC 00000000 */   nop

glabel func_8003F5D0 # 51
/* 03F180 8003F5D0 30827F7F */  andi        $v0, $a0, 0x7f7f
/* 03F184 8003F5D4 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 03F188 8003F5D8 28412580 */  slti        $at, $v0, 0x2580
/* 03F18C 8003F5DC 10200006 */  beqz        $at, .L8003F5F8
/* 03F190 8003F5E0 AFA5000C */   sw         $a1, 0xc($sp)
/* 03F194 8003F5E4 28412520 */  slti        $at, $v0, 0x2520
/* 03F198 8003F5E8 14200003 */  bnez        $at, .L8003F5F8
/* 03F19C 8003F5EC 244EDC50 */   addiu      $t6, $v0, -0x23b0
/* 03F1A0 8003F5F0 10000014 */  b           .L8003F644
/* 03F1A4 8003F5F4 AFAE0000 */   sw         $t6, 0x0($sp)
.L8003F5F8:
/* 03F1A8 8003F5F8 28412420 */  slti        $at, $v0, 0x2420
/* 03F1AC 8003F5FC 14200003 */  bnez        $at, .L8003F60C
/* 03F1B0 8003F600 244FDCF0 */   addiu      $t7, $v0, -0x2310
/* 03F1B4 8003F604 1000000F */  b           .L8003F644
/* 03F1B8 8003F608 AFAF0000 */   sw         $t7, 0x0($sp)
.L8003F60C:
/* 03F1BC 8003F60C 28412330 */  slti        $at, $v0, 0x2330
/* 03F1C0 8003F610 14200003 */  bnez        $at, .L8003F620
/* 03F1C4 8003F614 2458DD90 */   addiu      $t8, $v0, -0x2270
/* 03F1C8 8003F618 1000000A */  b           .L8003F644
/* 03F1CC 8003F61C AFB80000 */   sw         $t8, 0x0($sp)
.L8003F620:
/* 03F1D0 8003F620 28412220 */  slti        $at, $v0, 0x2220
/* 03F1D4 8003F624 14200003 */  bnez        $at, .L8003F634
/* 03F1D8 8003F628 2459DE40 */   addiu      $t9, $v0, -0x21c0
/* 03F1DC 8003F62C 10000005 */  b           .L8003F644
/* 03F1E0 8003F630 AFB90000 */   sw         $t9, 0x0($sp)
.L8003F634:
/* 03F1E4 8003F634 28412120 */  slti        $at, $v0, 0x2120
/* 03F1E8 8003F638 14200002 */  bnez        $at, .L8003F644
/* 03F1EC 8003F63C 2448DEE0 */   addiu      $t0, $v0, -0x2120
/* 03F1F0 8003F640 AFA80000 */  sw          $t0, 0x0($sp)
.L8003F644:
/* 03F1F4 8003F644 8FA20000 */  lw          $v0, 0x0($sp)
/* 03F1F8 8003F648 03E00008 */  jr          $ra
/* 03F1FC 8003F64C 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8003F650 # 52
/* 03F200 8003F650 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F204 8003F654 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F208 8003F658 1080000A */  beqz        $a0, .L8003F684
/* 03F20C 8003F65C 00803025 */   move       $a2, $a0
/* 03F210 8003F660 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03F214 8003F664 8CC50000 */  lw          $a1, 0x0($a2)
/* 03F218 8003F668 AFA60018 */  sw          $a2, 0x18($sp)
/* 03F21C 8003F66C 0C00E152 */  jal         func_80038548
/* 03F220 8003F670 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 03F224 8003F674 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03F228 8003F678 8FA50018 */  lw          $a1, 0x18($sp)
/* 03F22C 8003F67C 0C00E152 */  jal         func_80038548
/* 03F230 8003F680 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
.L8003F684:
/* 03F234 8003F684 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F238 8003F688 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F23C 8003F68C 03E00008 */  jr          $ra
/* 03F240 8003F690 00000000 */   nop

glabel func_8003F694 # 53
/* 03F244 8003F694 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F248 8003F698 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F24C 8003F69C 3C04800F */  lui         $a0, %hi(D_800F2A60)
/* 03F250 8003F6A0 0C00FEDB */  jal         func_8003FB6C
/* 03F254 8003F6A4 24842A60 */   addiu      $a0, $a0, %lo(D_800F2A60)
/* 03F258 8003F6A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F25C 8003F6AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F260 8003F6B0 03E00008 */  jr          $ra
/* 03F264 8003F6B4 00000000 */   nop

glabel func_8003F6B8 # 54
/* 03F268 8003F6B8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F26C 8003F6BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F270 8003F6C0 3C04800F */  lui         $a0, %hi(D_800F2A60)
/* 03F274 8003F6C4 0C00FED3 */  jal         func_8003FB4C
/* 03F278 8003F6C8 24842A60 */   addiu      $a0, $a0, %lo(D_800F2A60)
/* 03F27C 8003F6CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F280 8003F6D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F284 8003F6D4 03E00008 */  jr          $ra
/* 03F288 8003F6D8 00000000 */   nop

glabel func_8003F6DC # 55
/* 03F28C 8003F6DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F290 8003F6E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F294 8003F6E4 0C00FB36 */  jal         func_8003ECD8
/* 03F298 8003F6E8 00000000 */   nop
/* 03F29C 8003F6EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F2A0 8003F6F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F2A4 8003F6F4 03E00008 */  jr          $ra
/* 03F2A8 8003F6F8 00000000 */   nop
/* 03F2AC 8003F6FC 00000000 */  nop
