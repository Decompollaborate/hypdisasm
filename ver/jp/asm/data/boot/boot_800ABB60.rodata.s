.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800ABB60
/* 0AB710 800ABB60 3F800000 */  .float  1.0
/* 0AB714 800ABB64 00000000 */  .float  0.0
/* 0AB718 800ABB68 00000000 */  .float  0.0
/* 0AB71C 800ABB6C 00000000 */  .float  0.0
/* 0AB720 800ABB70 00000000 */  .float  0.0
/* 0AB724 800ABB74 3F800000 */  .float  1.0
/* 0AB728 800ABB78 00000000 */  .float  0.0
/* 0AB72C 800ABB7C 00000000 */  .float  0.0
/* 0AB730 800ABB80 00000000 */  .float  0.0
/* 0AB734 800ABB84 00000000 */  .float  0.0
/* 0AB738 800ABB88 3F800000 */  .float  1.0
/* 0AB73C 800ABB8C 00000000 */  .float  0.0
/* 0AB740 800ABB90 00000000 */  .float  0.0
/* 0AB744 800ABB94 00000000 */  .float  0.0
/* 0AB748 800ABB98 00000000 */  .float  0.0
/* 0AB74C 800ABB9C 3F800000 */  .float  1.0

glabel D_800ABBA0
/* 0AB750 800ABBA0 3F800000 */  .float  1.0
/* 0AB754 800ABBA4 00000000 */  .float  0.0
/* 0AB758 800ABBA8 00000000 */  .float  0.0
/* 0AB75C 800ABBAC 00000000 */  .float  0.0
/* 0AB760 800ABBB0 3F800000 */  .float  1.0
/* 0AB764 800ABBB4 00000000 */  .float  0.0
/* 0AB768 800ABBB8 00000000 */  .float  0.0
/* 0AB76C 800ABBBC 00000000 */  .float  0.0
/* 0AB770 800ABBC0 3F800000 */  .float  1.0
/* 0AB774 800ABBC4 00000000 */  .float  0.0
/* 0AB778 800ABBC8 00000000 */  .float  0.0
/* 0AB77C 800ABBCC 00000000 */  .float  0.0

glabel D_800ABBD0
/* 0AB780 800ABBD0 00000001 */  .word  0x00000001
/* 0AB784 800ABBD4 00000001 */  .word  0x00000001
/* 0AB788 800ABBD8 00000000 */  .word  0x00000000
/* 0AB78C 800ABBDC 00000001 */  .word  0x00000001
/* 0AB790 800ABBE0 00000001 */  .word  0x00000001
/* 0AB794 800ABBE4 00000001 */  .word  0x00000001
/* 0AB798 800ABBE8 00000000 */  .word  0x00000000
/* 0AB79C 800ABBEC 00000001 */  .word  0x00000001
/* 0AB7A0 800ABBF0 00000001 */  .word  0x00000001

glabel _string_800ABBF4
/* 0AB7A4 800ABBF4  */  .asciz  "Matrix34 %p\n"
                        .balign 4
/* 0AB7B4 800ABC04  */  .asciz  "%5.3f "
                        .balign 4
/* 0AB7BC 800ABC0C  */  .asciz  "\n"
                        .balign 4
/* 0AB7C0 800ABC10  */  .asciz  "Matrix %p\n"
                        .balign 4
/* 0AB7CC 800ABC1C  */  .asciz  "%5.3f "
                        .balign 4
/* 0AB7D4 800ABC24  */  .asciz  "\n"
                        .balign 4
/* 0AB7D8 800ABC28  */  .asciz  "Mtx %p\n"
                        .balign 4
/* 0AB7E0 800ABC30  */  .asciz  "%5.3f "
                        .balign 4
/* 0AB7E8 800ABC38  */  .asciz  "\n"
                        .balign 4

glabel D_800ABC3C
/* 0AB7EC 800ABC3C BDDD6712 */  .float  -0.10810674726963043

glabel D_800ABC40
/* 0AB7F0 800ABC40 C23249A5 */  .float  -44.57191848754883

glabel D_800ABC44
/* 0AB7F4 800ABC44 BE25CB3D */  .float  -0.1619081050157547

glabel D_800ABC48
/* 0AB7F8 800ABC48 C17C6261 */  .float  -15.774018287658691

glabel D_800ABC4C
/* 0AB7FC 800ABC4C BF0E39D2 */  .float  -0.5555697679519653

glabel D_800ABC50
/* 0AB800 800ABC50 C040000D */  .float  -3.0000030994415283
/* 0AB804 800ABC54 00000000 */  .float  0.0

glabel D_800ABC58
/* 0AB808 800ABC58 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABC60
/* 0AB810 800ABC60 BFF921FB54442D18 */  .double  -1.5707963267948966

glabel D_800ABC68
/* 0AB818 800ABC68 400921FB54442D18 */  .double  3.141592653589793

glabel D_800ABC70
/* 0AB820 800ABC70 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABC78
/* 0AB828 800ABC78 3FEFFFEB074A771D */  .double  0.99999

glabel D_800ABC80
/* 0AB830 800ABC80 3FC90FDB */  .float  1.5707963705062866
/* 0AB834 800ABC84 00000000 */  .float  0.0

glabel D_800ABC88
/* 0AB838 800ABC88 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800ABC90
/* 0AB840 800ABC90 BFC90FDB */  .float  -1.5707963705062866
/* 0AB844 800ABC94 00000000 */  .float  0.0

glabel D_800ABC98
/* 0AB848 800ABC98 3FEFFFEB074A771D */  .double  0.99999

glabel D_800ABCA0
/* 0AB850 800ABCA0 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800ABCA8
/* 0AB858 800ABCA8 40490FDB */  .float  3.1415927410125732
/* 0AB85C 800ABCAC 00000000 */  .float  0.0

glabel D_800ABCB0
/* 0AB860 800ABCB0 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABCB8
/* 0AB868 800ABCB8 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800ABCC0
/* 0AB870 800ABCC0 38000100 */  .float  3.0518509447574615e-05
/* 0AB874 800ABCC4 00000000 */  .float  0.0

glabel D_800ABCC8
/* 0AB878 800ABCC8 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800ABCD0
/* 0AB880 800ABCD0 38000100 */  .float  3.0518509447574615e-05

glabel D_800ABCD4
/* 0AB884 800ABCD4 3C010204 */  .float  0.007874015718698502

glabel D_800ABCD8
/* 0AB888 800ABCD8 3A83126F */  .float  0.0010000000474974513

glabel jtbl_800ABCDC
/* 0AB88C 800ABCDC 80039568 */  .word  L80039568
/* 0AB890 800ABCE0 800395C4 */  .word  L800395C4
/* 0AB894 800ABCE4 80039620 */  .word  L80039620
/* 0AB898 800ABCE8 80039680 */  .word  L80039680
/* 0AB89C 800ABCEC 800396E0 */  .word  L800396E0
/* 0AB8A0 800ABCF0 8003973C */  .word  L8003973C

glabel D_800ABCF4
/* 0AB8A4 800ABCF4 40233333 */  .float  2.549999952316284

glabel D_800ABCF8
/* 0AB8A8 800ABCF8 3BA3D70A */  .float  0.004999999888241291

glabel D_800ABCFC
/* 0AB8AC 800ABCFC 40233333 */  .float  2.549999952316284

glabel D_800ABD00
/* 0AB8B0 800ABD00 3F350529 */  .float  0.7071099877357483

glabel D_800ABD04
/* 0AB8B4 800ABD04 44B504BD */  .float  1448.1480712890625
/* 0AB8B8 800ABD08 44B504BD */  .float  1448.1480712890625

glabel D_800ABD0C
/* 0AB8BC 800ABD0C 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD10
/* 0AB8C0 800ABD10 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD14
/* 0AB8C4 800ABD14 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD18
/* 0AB8C8 800ABD18 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD1C
/* 0AB8CC 800ABD1C 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD20
/* 0AB8D0 800ABD20 3F7FBE77 */  .float  0.9990000128746033

glabel D_800ABD24
/* 0AB8D4 800ABD24 BF7FBE77 */  .float  -0.9990000128746033

glabel D_800ABD28
/* 0AB8D8 800ABD28 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD2C
/* 0AB8DC 800ABD2C BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD30
/* 0AB8E0 800ABD30 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD34
/* 0AB8E4 800ABD34 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD38
/* 0AB8E8 800ABD38 40B60B61 */  .float  5.688889026641846
/* 0AB8EC 800ABD3C 00000000 */  .float  0.0