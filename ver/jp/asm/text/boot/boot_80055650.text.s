.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel func_80055650 # 0
/* 055200 80055650 40086000 */  mfc0        $t0, Status
/* 055204 80055654 2401FFFE */  addiu       $at, $zero, -0x2
/* 055208 80055658 01014824 */  and         $t1, $t0, $at
/* 05520C 8005565C 40896000 */  mtc0        $t1, Status
/* 055210 80055660 31020001 */  andi        $v0, $t0, 0x1
/* 055214 80055664 00000000 */  nop
/* 055218 80055668 03E00008 */  jr          $ra
/* 05521C 8005566C 00000000 */   nop

/* Possibly handwritten function */
glabel func_80055670 # 1
/* 055220 80055670 40086000 */  mfc0        $t0, Status
/* 055224 80055674 01044025 */  or          $t0, $t0, $a0
/* 055228 80055678 40886000 */  mtc0        $t0, Status
/* 05522C 8005567C 00000000 */  nop
/* 055230 80055680 00000000 */  nop
/* 055234 80055684 03E00008 */  jr          $ra
/* 055238 80055688 00000000 */   nop
/* 05523C 8005568C 00000000 */  nop
