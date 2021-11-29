.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0A94A0 800A98F0  */  .asciz  "micStateChange: %d -> %d\n"
                        .balign 4

glabel D_800A990C
/* 0A94BC 800A990C 3F333333 */  .float  0.699999988079071

glabel D_800A9910
/* 0A94C0 800A9910 3F4CCCCD */  .float  0.800000011920929

glabel D_800A9914
/* 0A94C4 800A9914 3F59999A */  .float  0.8500000238418579

glabel D_800A9918
/* 0A94C8 800A9918 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A9920
/* 0A94D0 800A9920 3FEE666660000000 */  .double  0.949999988079071

glabel D_800A9928
/* 0A94D8 800A9928 3EA3D70A */  .float  0.3199999928474426

glabel D_800A992C
/* 0A94DC 800A992C 3F430C31 */  .float  0.761904776096344

glabel _string_800A9930
/* 0A94E0 800A9930  */  .asciz  "Unknown throw_dir:%d\n"
                        .balign 4

glabel D_800A9948
/* 0A94F8 800A9948 C1F00000 */  .float  -30.0
/* 0A94FC 800A994C C1F00000 */  .float  -30.0
/* 0A9500 800A9950 C2700000 */  .float  -60.0
/* 0A9504 800A9954 C4160000 */  .float  -600.0
/* 0A9508 800A9958 43960000 */  .float  300.0
/* 0A950C 800A995C C1F00000 */  .float  -30.0
/* 0A9510 800A9960 C2700000 */  .float  -60.0

glabel D_800A9964
/* 0A9514 800A9964 00000000 */  .float  0.0
/* 0A9518 800A9968 00000000 */  .float  0.0
/* 0A951C 800A996C 43700000 */  .float  240.0
/* 0A9520 800A9970 00000000 */  .float  0.0
/* 0A9524 800A9974 00000000 */  .float  0.0
/* 0A9528 800A9978 00000000 */  .float  0.0
/* 0A952C 800A997C 43480000 */  .float  200.0

glabel _string_800A9980
/* 0A9530 800A9980  */  .asciz  "ERROR: Illegal posType(%d)\n"
                        .balign 4
/* 0A954C 800A999C  */  .asciz  "ERROR: Illegal posType(%d)\n"
                        .balign 4
/* 0A9568 800A99B8  */  .asciz  "vec:%f,%f,%f len:%f  stunRange:%f\n"
                        .balign 4
/* 0A958C 800A99DC  */  .asciz  "Warning: Tried to change non_item_goal_obj\n"
                        .balign 4

glabel jtbl_800A9A08
/* 0A95B8 800A9A08 80021918 */  .word  L80021918
/* 0A95BC 800A9A0C 800219C0 */  .word  L800219C0
/* 0A95C0 800A9A10 800219C0 */  .word  L800219C0
/* 0A95C4 800A9A14 800219C0 */  .word  L800219C0
/* 0A95C8 800A9A18 800219C0 */  .word  L800219C0
/* 0A95CC 800A9A1C 80021B4C */  .word  L80021B4C
/* 0A95D0 800A9A20 80021A28 */  .word  L80021A28
/* 0A95D4 800A9A24 00000000 */  .word  0x00000000

glabel D_800A9A28
/* 0A95D8 800A9A28 4056800000000000 */  .double  90.0

glabel D_800A9A30
/* 0A95E0 800A9A30 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A9A38
/* 0A95E8 800A9A38 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A9A40
/* 0A95F0 800A9A40 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A9A48
/* 0A95F8 800A9A48 BA83126F */  .float  -0.0010000000474974513

glabel D_800A9A4C
/* 0A95FC 800A9A4C 3A83126F */  .float  0.0010000000474974513

glabel _string_800A9A50
/* 0A9600 800A9A50  */  .asciz  "sbdInit(%p, %d, %d)\n"
                        .balign 4
/* 0A9618 800A9A68  */  .asciz  "sbd->line:%d\n"
                        .balign 4
/* 0A9628 800A9A78  */  .asciz  "vtxIdx:%d  vtxMax:%d  vtxLeft:%d\n"
                        .balign 4
/* 0A964C 800A9A9C  */  .asciz  "ERROR: gpSize over:%d\n"
                        .balign 4
/* 0A9664 800A9AB4  */  .asciz  "drawIdx:%d\n"
                        .balign 4
/* 0A9670 800A9AC0  */  .asciz  "workIdx:%d\n"
                        .balign 4
/* 0A967C 800A9ACC  */  .asciz  "ERROR: gpSize over:%d\n"
                        .balign 4
/* 0A9694 800A9AE4  */  .asciz  "sbdApply(%p, %p, %d)\n"
                        .balign 4
/* 0A96AC 800A9AFC  */  .asciz  " Apply:(%s)\n"
                        .balign 4
/* 0A96BC 800A9B0C  */  .asciz  "newTextIdx:%d\n"
                        .balign 4
/* 0A96CC 800A9B1C  */  .asciz  "Error: textData_lines:%d < %d\n"
                        .balign 4
/* 0A96EC 800A9B3C  */  .asciz  "sbdScrollBoardNew(%d, %d)\n"
                        .balign 4
/* 0A9708 800A9B58  */  .asciz  ""
                        .balign 4
/* 0A970C 800A9B5C  */  .asciz  ""
                        .balign 4
