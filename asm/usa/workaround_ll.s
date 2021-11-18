.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __ull_rshift
.incbin "baserom/usa/boot.bin", 0x51F00, 0x2C

glabel __ull_rem
.incbin "baserom/usa/boot.bin", 0x51F2C, 0x3C

glabel __ull_div
.incbin "baserom/usa/boot.bin", 0x51F68, 0x3C

glabel __ll_lshift
.incbin "baserom/usa/boot.bin", 0x51FA4, 0x2C

glabel __ll_rem
.incbin "baserom/usa/boot.bin", 0x51FD0, 0x3C

glabel __ll_div
.incbin "baserom/usa/boot.bin", 0x5200C, 0x5C

glabel __ll_mul
.incbin "baserom/usa/boot.bin", 0x52068, 0x30

glabel __ull_divremi
.incbin "baserom/usa/boot.bin", 0x52098, 0x60

glabel __ll_mod
.incbin "baserom/usa/boot.bin", 0x520F8, 0x9C

glabel __ll_rshift
.incbin "baserom/usa/boot.bin", 0x52194, 0x2C
