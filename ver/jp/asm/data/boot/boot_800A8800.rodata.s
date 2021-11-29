.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A8800
/* 0A83B0 800A8800  */  .asciz  "door object was made, (%3.2f, %3.2f, %3.2f), type = %d, area = %d, entrance = %d\n, lock = %s \n"
                        .balign 4
/* 0A8410 800A8860  */  .asciz  "TRUE"
                        .balign 4
/* 0A8418 800A8868  */  .asciz  "FALSE"
                        .balign 4

glabel D_800A8870
/* 0A8420 800A8870  */  .asciz  "ドア\nここから %s に\nいける"
                        .balign 4

glabel D_800A888C
/* 0A843C 800A888C  */  .asciz  "かんばん\nこのさき %s と\nかいてある"
                        .balign 4

glabel D_800A88B0
/* 0A8460 800A88B0  */  .asciz  "もん\nここからほかのところへ\nあそびにいける"
                        .balign 4

glabel D_800A88DC
/* 0A848C 800A88DC  */  .asciz  "まど\nここからほかのところへ\nあそびにいける"
                        .balign 4

glabel D_800A8908
/* 0A84B8 800A8908  */  .asciz  "\n［］ボタンで さきへ いける"
                        .balign 4

glabel D_800A8924
/* 0A84D4 800A8924  */  .asciz  "\nかぎが かかっている"
                        .balign 4

glabel D_800A893C
/* 0A84EC 800A893C  */  .asciz  "\nまだ とおれない"
                        .balign 4

glabel D_800A8950
/* 0A8500 800A8950  */  .asciz  "\n^6ピカチュウ^^ が ちかくに いると\nとおることが できる"
                        .balign 4

glabel D_800A8988
/* 0A8538 800A8988  */  .asciz  "\n^4ゼニガメ^^ が とおせんぼしている"
                        .balign 4
/* 0A855C 800A89AC  */  .asciz  "\nなんでか とおれない"
                        .balign 4

glabel jtbl_800A89C4
/* 0A8574 800A89C4 8001A7AC */  .word  L8001A7AC
/* 0A8578 800A89C8 8001A7C8 */  .word  L8001A7C8
/* 0A857C 800A89CC 8001A7E4 */  .word  L8001A7E4
/* 0A8580 800A89D0 8001A800 */  .word  L8001A800
/* 0A8584 800A89D4 8001A81C */  .word  L8001A81C
/* 0A8588 800A89D8 00000000 */  .word  0x00000000
/* 0A858C 800A89DC 00000000 */  .word  0x00000000
