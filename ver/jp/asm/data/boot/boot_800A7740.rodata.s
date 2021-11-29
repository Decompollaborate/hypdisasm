.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A7740
/* 0A72F0 800A7740  */  .asciz  "======== Pikachu Info ========\n"
                        .balign 4
/* 0A7310 800A7760  */  .asciz  "++++++++ Holding Item Info ++++++++\n"
                        .balign 4
/* 0A7338 800A7788  */  .asciz  "hold item id = %d\n"
                        .balign 4
/* 0A734C 800A779C  */  .asciz  "++++++++ haraRot ++++++++\n"
                        .balign 4
/* 0A7368 800A77B8  */  .asciz  "haraRot = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 0A738C 800A77DC  */  .asciz  "\n"
                        .balign 4

glabel D_800A77E0
/* 0A7390 800A77E0 00460002 */  .word  0x00460002
/* 0A7394 800A77E4 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A7398 800A77E8 004B0002 */  .word  0x004B0002
/* 0A739C 800A77EC 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A73A0 800A77F0 00450002 */  .word  0x00450002
/* 0A73A4 800A77F4 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A73A8 800A77F8 004A0002 */  .word  0x004A0002
/* 0A73AC 800A77FC 3EAAAAAB */  .word  0x3EAAAAAB

glabel D_800A7800
/* 0A73B0 800A7800 00000040 */  .word  0x00000040
/* 0A73B4 800A7804 00000041 */  .word  0x00000041
/* 0A73B8 800A7808 00000000 */  .word  0x00000000

glabel D_800A780C
/* 0A73BC 800A780C 00000026 */  .word  0x00000026
/* 0A73C0 800A7810 00000027 */  .word  0x00000027
/* 0A73C4 800A7814 00000000 */  .word  0x00000000

glabel D_800A7818
/* 0A73C8 800A7818 0000003E */  .word  0x0000003E
/* 0A73CC 800A781C 0000003F */  .word  0x0000003F
/* 0A73D0 800A7820 00000000 */  .word  0x00000000

glabel D_800A7824
/* 0A73D4 800A7824 00000028 */  .word  0x00000028
/* 0A73D8 800A7828 00000029 */  .word  0x00000029
/* 0A73DC 800A782C 00000000 */  .word  0x00000000

glabel D_800A7830
/* 0A73E0 800A7830 0000002A */  .word  0x0000002A
/* 0A73E4 800A7834 0000002B */  .word  0x0000002B
/* 0A73E8 800A7838 00000000 */  .word  0x00000000
/* 0A73EC 800A783C 00000000 */  .word  0x00000000

glabel D_800A7840
/* 0A73F0 800A7840 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A7848
/* 0A73F8 800A7848 3E2AAAAB */  .float  0.1666666716337204
/* 0A73FC 800A784C 00000000 */  .float  0.0
