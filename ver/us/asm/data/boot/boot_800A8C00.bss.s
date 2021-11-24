.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel dummyBssVarBootStart
/* 0A87B0 800A8C00 */  .space  0x400

glabel D_800A9000
/* 0A87B4 800A9000 */  .space  0x688

glabel D_800A9688
/* 0A87B8 800A9688 */  .space  0x760

glabel D_800A9DE8
/* 0A87BC 800A9DE8 */  .space  0x1F08

glabel D_800ABCF0
/* 0A87C0 800ABCF0 */  .space  0x08

glabel D_800ABCF8
/* 0A87C4 800ABCF8 */  .space  0x04

glabel D_800ABCFC
/* 0A87C8 800ABCFC */  .space  0x08

glabel D_800ABD04
/* 0A87CC 800ABD04 */  .space  0x10

glabel D_800ABD14
/* 0A87D0 800ABD14 */  .space  0x68

glabel D_800ABD7C
/* 0A87D4 800ABD7C */  .space  0x04

glabel D_800ABD80
/* 0A87D8 800ABD80 */  .space  0x04

glabel D_800ABD84
/* 0A87DC 800ABD84 */  .space  0x04

glabel D_800ABD88
/* 0A87E0 800ABD88 */  .space  0x04

glabel D_800ABD8C
/* 0A87E4 800ABD8C */  .space  0x04

glabel D_800ABD90
/* 0A87E8 800ABD90 */  .space  0x28

glabel D_800ABDB8
/* 0A87EC 800ABDB8 */  .space  0x08

glabel D_800ABDC0
/* 0A87F0 800ABDC0 */  .space  0x04

glabel D_800ABDC4
/* 0A87F4 800ABDC4 */  .space  0x08

glabel D_800ABDCC
/* 0A87F8 800ABDCC */  .space  0x04

glabel D_800ABDD0
/* 0A87FC 800ABDD0 */  .space  0x04

glabel D_800ABDD4
/* 0A8800 800ABDD4 */  .space  0x04

glabel D_800ABDD8
/* 0A8804 800ABDD8 */  .space  0x04

glabel D_800ABDDC
/* 0A8808 800ABDDC */  .space  0x04

glabel D_800ABDE0
/* 0A880C 800ABDE0 */  .space  0x08

glabel D_800ABDE8
/* 0A8810 800ABDE8 */  .space  0x08

glabel D_800ABDF0
/* 0A8814 800ABDF0 */  .space  0xC0

glabel D_800ABEB0
/* 0A8818 800ABEB0 */  .space  0x600

glabel D_800AC4B0
/* 0A881C 800AC4B0 */  .space  0x04

glabel D_800AC4B4
/* 0A8820 800AC4B4 */  .space  0x04

glabel D_800AC4B8
/* 0A8824 800AC4B8 */  .space  0x08

glabel D_800AC4C0
/* 0A8828 800AC4C0 */  .space  0x9B0

glabel D_800ACE70
/* 0A882C 800ACE70 */  .space  0x10

glabel D_800ACE80
/* 0A8830 800ACE80 */  .space  0x01

glabel D_800ACE81
/* 0A8834 800ACE81 */  .space  0x07

glabel D_800ACE88
/* 0A8838 800ACE88 */  .space  0x10

glabel D_800ACE98
/* 0A883C 800ACE98 */  .space  0x1A0

glabel D_800AD038
/* 0A8840 800AD038 */  .space  0x18

glabel D_800AD050
/* 0A8844 800AD050 */  .space  0x28

glabel D_800AD078
/* 0A8848 800AD078 */  .space  0x04

glabel D_800AD07C
/* 0A884C 800AD07C */  .space  0x04

glabel D_800AD080
/* 0A8850 800AD080 */  .space  0x04

glabel D_800AD084
/* 0A8854 800AD084 */  .space  0x04

glabel D_800AD088
/* 0A8858 800AD088 */  .space  0x18

glabel D_800AD0A0
/* 0A885C 800AD0A0 */  .space  0x40

glabel D_800AD0E0
/* 0A8860 800AD0E0 */  .space  0x60

glabel D_800AD140
/* 0A8864 800AD140 */  .space  0xA0

glabel D_800AD1E0
/* 0A8868 800AD1E0 */  .space  0x10

glabel D_800AD1F0
/* 0A886C 800AD1F0 */  .space  0x0C

glabel D_800AD1FC
/* 0A8870 800AD1FC */  .space  0x200

glabel D_800AD3FC
/* 0A8874 800AD3FC */  .space  0x04

glabel D_800AD400
/* 0A8878 800AD400 */  .space  0x20

glabel D_800AD420
/* 0A887C 800AD420 */  .space  0x04

glabel D_800AD424
/* 0A8880 800AD424 */  .space  0x04

glabel D_800AD428
/* 0A8884 800AD428 */  .space  0x04

glabel D_800AD42C
/* 0A8888 800AD42C */  .space  0x04

glabel D_800AD430
/* 0A888C 800AD430 */  .space  0x04

glabel D_800AD434
/* 0A8890 800AD434 */  .space  0x04

glabel D_800AD438
/* 0A8894 800AD438 */  .space  0x04

glabel D_800AD43C
/* 0A8898 800AD43C */  .space  0x04

glabel D_800AD440
/* 0A889C 800AD440 */  .space  0x04

glabel D_800AD444
/* 0A88A0 800AD444 */  .space  0x04

glabel D_800AD448
/* 0A88A4 800AD448 */  .space  0x04

glabel D_800AD44C
/* 0A88A8 800AD44C */  .space  0x04

glabel D_800AD450
/* 0A88AC 800AD450 */  .space  0x04

glabel D_800AD454
/* 0A88B0 800AD454 */  .space  0x04

glabel D_800AD458
/* 0A88B4 800AD458 */  .space  0x04

glabel D_800AD45C
/* 0A88B8 800AD45C */  .space  0x04

glabel D_800AD460
/* 0A88BC 800AD460 */  .space  0x04

glabel D_800AD464
/* 0A88C0 800AD464 */  .space  0x04

glabel D_800AD468
/* 0A88C4 800AD468 */  .space  0x04

glabel D_800AD46C
/* 0A88C8 800AD46C */  .space  0x04

glabel D_800AD470
/* 0A88CC 800AD470 */  .space  0x04

glabel D_800AD474
/* 0A88D0 800AD474 */  .space  0x0C

glabel D_800AD480
/* 0A88D4 800AD480 */  .space  0xC0

glabel D_800AD540
/* 0A88D8 800AD540 */  .space  0x04

glabel D_800AD544
/* 0A88DC 800AD544 */  .space  0x04

glabel D_800AD548
/* 0A88E0 800AD548 */  .space  0x04

glabel D_800AD54C
/* 0A88E4 800AD54C */  .space  0x0C

glabel D_800AD558
/* 0A88E8 800AD558 */  .space  0x48

glabel D_800AD5A0
/* 0A88EC 800AD5A0 */  .space  0x200

glabel D_800AD7A0
/* 0A88F0 800AD7A0 */  .space  0x200

glabel D_800AD9A0
/* 0A88F4 800AD9A0 */  .space  0x10

glabel D_800AD9B0
/* 0A88F8 800AD9B0 */  .space  0x08

glabel D_800AD9B8
/* 0A88FC 800AD9B8 */  .space  0x04

glabel D_800AD9BC
/* 0A8900 800AD9BC */  .space  0x04

glabel D_800AD9C0
/* 0A8904 800AD9C0 */  .space  0x04

glabel D_800AD9C4
/* 0A8908 800AD9C4 */  .space  0x04

glabel D_800AD9C8
/* 0A890C 800AD9C8 */  .space  0x04

glabel D_800AD9CC
/* 0A8910 800AD9CC */  .space  0x04

glabel D_800AD9D0
/* 0A8914 800AD9D0 */  .space  0x04

glabel D_800AD9D4
/* 0A8918 800AD9D4 */  .space  0x04

glabel D_800AD9D8
/* 0A891C 800AD9D8 */  .space  0x08

glabel D_800AD9E0
/* 0A8920 800AD9E0 */  .space  0x30

glabel D_800ADA10
/* 0A8924 800ADA10 */  .space  0x10

glabel D_800ADA20
/* 0A8928 800ADA20 */  .space  0x960

glabel D_800AE380
/* 0A892C 800AE380 */  .space  0x08

glabel D_800AE388
/* 0A8930 800AE388 */  .space  0x18

glabel D_800AE3A0
/* 0A8934 800AE3A0 */  .space  0x08

glabel D_800AE3A8
/* 0A8938 800AE3A8 */  .space  0x18

glabel D_800AE3C0
/* 0A893C 800AE3C0 */  .space  0x04

glabel D_800AE3C4
/* 0A8940 800AE3C4 */  .space  0x0C

glabel D_800AE3D0
/* 0A8944 800AE3D0 */  .space  0x04

glabel D_800AE3D4
/* 0A8948 800AE3D4 */  .space  0x04

glabel D_800AE3D8
/* 0A894C 800AE3D8 */  .space  0x08

glabel D_800AE3E0
/* 0A8950 800AE3E0 */  .space  0x0C

glabel D_800AE3EC
/* 0A8954 800AE3EC */  .space  0x04

glabel D_800AE3F0
/* 0A8958 800AE3F0 */  .space  0x40

glabel D_800AE430
/* 0A895C 800AE430 */  .space  0x10

glabel D_800AE440
/* 0A8960 800AE440 */  .space  0x80

glabel D_800AE4C0
/* 0A8964 800AE4C0 */  .space  0x18

glabel D_800AE4D8
/* 0A8968 800AE4D8 */  .space  0x08

glabel D_800AE4E0
/* 0A896C 800AE4E0 */  .space  0x04

glabel D_800AE4E4
/* 0A8970 800AE4E4 */  .space  0x04

glabel D_800AE4E8
/* 0A8974 800AE4E8 */  .space  0x08

glabel D_800AE4F0
/* 0A8978 800AE4F0 */  .space  0x04

glabel D_800AE4F4
/* 0A897C 800AE4F4 */  .space  0x04

glabel D_800AE4F8
/* 0A8980 800AE4F8 */  .space  0x04

glabel D_800AE4FC
/* 0A8984 800AE4FC */  .space  0x04

glabel D_800AE500_RomRamTableIndex
/* 0A8988 800AE500 */  .space  0x04

glabel D_800AE504
/* 0A898C 800AE504 */  .space  0x04

glabel D_800AE508
/* 0A8990 800AE508 */  .space  0x04

glabel D_800AE50C
/* 0A8994 800AE50C */  .space  0x04

glabel D_800AE510
/* 0A8998 800AE510 */  .space  0x08

glabel D_800AE518
/* 0A899C 800AE518 */  .space  0x8020

glabel D_800B6538
/* 0A89A0 800B6538 */  .space  0x1B0

glabel D_800B66E8
/* 0A89A4 800B66E8 */  .space  0x04

glabel D_800B66EC
/* 0A89A8 800B66EC */  .space  0x04

glabel D_800B66F0
/* 0A89AC 800B66F0 */  .space  0x04

glabel D_800B66F4
/* 0A89B0 800B66F4 */  .space  0x04

glabel D_800B66F8
/* 0A89B4 800B66F8 */  .space  0x08

glabel D_800B6700
/* 0A89B8 800B6700 */  .space  0x50

glabel D_800B6750
/* 0A89BC 800B6750 */  .space  0x04

glabel D_800B6754
/* 0A89C0 800B6754 */  .space  0x04

glabel D_800B6758
/* 0A89C4 800B6758 */  .space  0x04

glabel D_800B675C
/* 0A89C8 800B675C */  .space  0x04

glabel D_800B6760
/* 0A89CC 800B6760 */  .space  0x04

glabel D_800B6764
/* 0A89D0 800B6764 */  .space  0x04

glabel D_800B6768
/* 0A89D4 800B6768 */  .space  0x04

glabel D_800B676C
/* 0A89D8 800B676C */  .space  0x04

glabel D_800B6770
/* 0A89DC 800B6770 */  .space  0x08

glabel D_800B6778
/* 0A89E0 800B6778 */  .space  0x14

glabel D_800B678C
/* 0A89E4 800B678C */  .space  0x0C

glabel D_800B6798
/* 0A89E8 800B6798 */  .space  0x04

glabel D_800B679C
/* 0A89EC 800B679C */  .space  0x04

glabel D_800B67A0
/* 0A89F0 800B67A0 */  .space  0x10

glabel D_800B67B0
/* 0A89F4 800B67B0 */  .space  0x60

glabel D_800B6810
/* 0A89F8 800B6810 */  .space  0x20

glabel D_800B6830
/* 0A89FC 800B6830 */  .space  0x10

glabel D_800B6840
/* 0A8A00 800B6840 */  .space  0x04

glabel D_800B6844
/* 0A8A04 800B6844 */  .space  0x1C

glabel D_800B6860
/* 0A8A08 800B6860 */  .space  0x1C

glabel D_800B687C
/* 0A8A0C 800B687C */  .space  0x04

glabel D_800B6880
/* 0A8A10 800B6880 */  .space  0x98

glabel D_800B6918
/* 0A8A14 800B6918 */  .space  0x18

glabel D_800B6930
/* 0A8A18 800B6930 */  .space  0x60

glabel D_800B6990
/* 0A8A1C 800B6990 */  .space  0x04

glabel D_800B6994
/* 0A8A20 800B6994 */  .space  0x04

glabel D_800B6998
/* 0A8A24 800B6998 */  .space  0x20

glabel D_800B69B8
/* 0A8A28 800B69B8 */  .space  0x08

glabel D_800B69C0
/* 0A8A2C 800B69C0 */  .space  0xC8

glabel D_800B6A88
/* 0A8A30 800B6A88 */  .space  0xC8

glabel D_800B6B50
/* 0A8A34 800B6B50 */  .space  0x08

glabel D_800B6B58
/* 0A8A38 800B6B58 */  .space  0x10

glabel D_800B6B68
/* 0A8A3C 800B6B68 */  .space  0x28

glabel D_800B6B90
/* 0A8A40 800B6B90 */  .space  0x28

glabel D_800B6BB8
/* 0A8A44 800B6BB8 */  .space  0x90

glabel D_800B6C48
/* 0A8A48 800B6C48 */  .space  0x08

glabel D_800B6C50
/* 0A8A4C 800B6C50 */  .space  0x04

glabel D_800B6C54
/* 0A8A50 800B6C54 */  .space  0x04

glabel D_800B6C58
/* 0A8A54 800B6C58 */  .space  0x04

glabel D_800B6C5C
/* 0A8A58 800B6C5C */  .space  0x04

glabel D_800B6C60
/* 0A8A5C 800B6C60 */  .space  0xD0

glabel D_800B6D30
/* 0A8A60 800B6D30 */  .space  0xD0

glabel D_800B6E00
/* 0A8A64 800B6E00 */  .space  0x35B60

glabel D_800EC960
/* 0A8A68 800EC960 */  .space  0x08

glabel D_800EC968
/* 0A8A6C 800EC968 */  .space  0x18

glabel D_800EC980
/* 0A8A70 800EC980 */  .space  0x48

glabel D_800EC9C8
/* 0A8A74 800EC9C8 */  .space  0x28

glabel D_800EC9F0
/* 0A8A78 800EC9F0 */  .space  0x200

glabel D_800ECBF0
/* 0A8A7C 800ECBF0 */  .space  0x5DC

glabel D_800ED1CC
/* 0A8A80 800ED1CC */  .space  0x17E4

glabel D_800EE9B0
/* 0A8A84 800EE9B0 */  .space  0x68

glabel D_800EEA18
/* 0A8A88 800EEA18 */  .space  0x198

glabel D_800EEBB0
/* 0A8A8C 800EEBB0 */  .space  0x5DC

glabel D_800EF18C
/* 0A8A90 800EF18C */  .space  0x514

glabel D_800EF6A0
/* 0A8A94 800EF6A0 */  .space  0x04

glabel D_800EF6A4
/* 0A8A98 800EF6A4 */  .space  0x04

glabel D_800EF6A8
/* 0A8A9C 800EF6A8 */  .space  0x04

glabel D_800EF6AC
/* 0A8AA0 800EF6AC */  .space  0x04

glabel D_800EF6B0
/* 0A8AA4 800EF6B0 */  .space  0x04

glabel D_800EF6B4
/* 0A8AA8 800EF6B4 */  .space  0x04

glabel D_800EF6B8
/* 0A8AAC 800EF6B8 */  .space  0x04

glabel D_800EF6BC
/* 0A8AB0 800EF6BC */  .space  0x34

glabel D_800EF6F0
/* 0A8AB4 800EF6F0 */  .space  0x34

glabel D_800EF724
/* 0A8AB8 800EF724 */  .space  0x04

glabel D_800EF728
/* 0A8ABC 800EF728 */  .space  0x58

glabel D_800EF780
/* 0A8AC0 800EF780 */  .space  0x10

glabel D_800EF790
/* 0A8AC4 800EF790 */  .space  0x06

glabel D_800EF796
/* 0A8AC8 800EF796 */  .space  0x02

glabel D_800EF798
/* 0A8ACC 800EF798 */  .space  0x04

glabel D_800EF79C
/* 0A8AD0 800EF79C */  .space  0x04

glabel D_800EF7A0
/* 0A8AD4 800EF7A0 */  .space  0x9C8

glabel D_800F0168
/* 0A8AD8 800F0168 */  .space  0x68

glabel D_800F01D0
/* 0A8ADC 800F01D0 */  .space  0x08

glabel D_800F01D8
/* 0A8AE0 800F01D8 */  .space  0x04

glabel D_800F01DC
/* 0A8AE4 800F01DC */  .space  0x04

glabel D_800F01E0
/* 0A8AE8 800F01E0 */  .space  0x0C

glabel D_800F01EC
/* 0A8AEC 800F01EC */  .space  0x04

glabel D_800F01F0
/* 0A8AF0 800F01F0 */  .space  0x04

glabel D_800F01F4
/* 0A8AF4 800F01F4 */  .space  0x04

glabel D_800F01F8
/* 0A8AF8 800F01F8 */  .space  0x08

glabel D_800F0200
/* 0A8AFC 800F0200 */  .space  0x0C

glabel D_800F020C
/* 0A8B00 800F020C */  .space  0x0C

glabel D_800F0218
/* 0A8B04 800F0218 */  .space  0x0C

glabel D_800F0224
/* 0A8B08 800F0224 */  .space  0x0C

glabel D_800F0230
/* 0A8B0C 800F0230 */  .space  0x0C

glabel D_800F023C
/* 0A8B10 800F023C */  .space  0x0C

glabel D_800F0248
/* 0A8B14 800F0248 */  .space  0x10

glabel D_800F0258
/* 0A8B18 800F0258 */  .space  0x0C

glabel D_800F0264
/* 0A8B1C 800F0264 */  .space  0x04

glabel D_800F0268
/* 0A8B20 800F0268 */  .space  0x0C

glabel D_800F0274
/* 0A8B24 800F0274 */  .space  0x04

glabel D_800F0278
/* 0A8B28 800F0278 */  .space  0x04

glabel D_800F027C
/* 0A8B2C 800F027C */  .space  0x04

glabel D_800F0280
/* 0A8B30 800F0280 */  .space  0x04

glabel D_800F0284
/* 0A8B34 800F0284 */  .space  0x0C

glabel D_800F0290
/* 0A8B38 800F0290 */  .space  0x430

glabel D_800F06C0
/* 0A8B3C 800F06C0 */  .space  0x0C

glabel D_800F06CC
/* 0A8B40 800F06CC */  .space  0x450

glabel D_800F0B1C
/* 0A8B44 800F0B1C */  .space  0x04

glabel D_800F0B20
/* 0A8B48 800F0B20 */  .space  0x0C

glabel D_800F0B2C
/* 0A8B4C 800F0B2C */  .space  0x44

glabel D_800F0B70
/* 0A8B50 800F0B70 */  .space  0x04

glabel D_800F0B74
/* 0A8B54 800F0B74 */  .space  0x04

glabel D_800F0B78
/* 0A8B58 800F0B78 */  .space  0x28

glabel D_800F0BA0
/* 0A8B5C 800F0BA0 */  .space  0x04

glabel D_800F0BA4
/* 0A8B60 800F0BA4 */  .space  0x04

glabel D_800F0BA8
/* 0A8B64 800F0BA8 */  .space  0x30

glabel D_800F0BD8
/* 0A8B68 800F0BD8 */  .space  0x04

glabel D_800F0BDC
/* 0A8B6C 800F0BDC */  .space  0x04

glabel D_800F0BE0
/* 0A8B70 800F0BE0 */  .space  0x04

glabel D_800F0BE4
/* 0A8B74 800F0BE4 */  .space  0x04

glabel D_800F0BE8
/* 0A8B78 800F0BE8 */  .space  0x08

glabel D_800F0BF0
/* 0A8B7C 800F0BF0 */  .space  0x08

glabel D_800F0BF8
/* 0A8B80 800F0BF8 */  .space  0x08

glabel D_800F0C00
/* 0A8B84 800F0C00 */  .space  0x60

glabel D_800F0C60
/* 0A8B88 800F0C60 */  .space  0x18

glabel D_800F0C78
/* 0A8B8C 800F0C78 */  .space  0x3F0

glabel D_800F1068
/* 0A8B90 800F1068 */  .space  0x04

glabel D_800F106C
/* 0A8B94 800F106C */  .space  0x04

glabel D_800F1070
/* 0A8B98 800F1070 */  .space  0x10

glabel D_800F1080
/* 0A8B9C 800F1080 */  .space  0x28

glabel D_800F10A8
/* 0A8BA0 800F10A8 */  .space  0x08

glabel D_800F10B0
/* 0A8BA4 800F10B0 */  .space  0x9C4

glabel D_800F1A74
/* 0A8BA8 800F1A74 */  .space  0x04

glabel D_800F1A78
/* 0A8BAC 800F1A78 */  .space  0x04

glabel D_800F1A7C
/* 0A8BB0 800F1A7C */  .space  0x04

glabel D_800F1A80
/* 0A8BB4 800F1A80 */  .space  0x08

glabel D_800F1A88
/* 0A8BB8 800F1A88 */  .space  0x2C

glabel D_800F1AB4
/* 0A8BBC 800F1AB4 */  .space  0x04

glabel D_800F1AB8
/* 0A8BC0 800F1AB8 */  .space  0x04

glabel D_800F1ABC
/* 0A8BC4 800F1ABC */  .space  0x04

glabel D_800F1AC0
/* 0A8BC8 800F1AC0 */  .space  0x04

glabel D_800F1AC4
/* 0A8BCC 800F1AC4 */  .space  0x04

glabel D_800F1AC8
/* 0A8BD0 800F1AC8 */  .space  0x0C

glabel D_800F1AD4
/* 0A8BD4 800F1AD4 */  .space  0x4C

glabel D_800F1B20
/* 0A8BD8 800F1B20 */  .space  0x20

glabel D_800F1B40
/* 0A8BDC 800F1B40 */  .space  0x04

glabel D_800F1B44
/* 0A8BE0 800F1B44 */  .space  0x2C

glabel D_800F1B70
/* 0A8BE4 800F1B70 */  .space  0x04

glabel D_800F1B74
/* 0A8BE8 800F1B74 */  .space  0x04

glabel D_800F1B78
/* 0A8BEC 800F1B78 */  .space  0x30

glabel D_800F1BA8
/* 0A8BF0 800F1BA8 */  .space  0x08

glabel D_800F1BB0
/* 0A8BF4 800F1BB0 */  .space  0x10

glabel D_800F1BC0
/* 0A8BF8 800F1BC0 */  .space  0x10

glabel D_800F1BD0
/* 0A8BFC 800F1BD0 */  .space  0x0C

glabel D_800F1BDC
/* 0A8C00 800F1BDC */  .space  0x04

glabel D_800F1BE0
/* 0A8C04 800F1BE0 */  .space  0x04

glabel D_800F1BE4
/* 0A8C08 800F1BE4 */  .space  0x04

glabel D_800F1BE8
/* 0A8C0C 800F1BE8 */  .space  0x04

glabel D_800F1BEC
/* 0A8C10 800F1BEC */  .space  0x04

glabel D_800F1BF0
/* 0A8C14 800F1BF0 */  .space  0x04

glabel D_800F1BF4
/* 0A8C18 800F1BF4 */  .space  0x04

glabel D_800F1BF8
/* 0A8C1C 800F1BF8 */  .space  0x08

glabel D_800F1C00
/* 0A8C20 800F1C00 */  .space  0x04

glabel D_800F1C04
/* 0A8C24 800F1C04 */  .space  0x04

glabel D_800F1C08
/* 0A8C28 800F1C08 */  .space  0x04

glabel D_800F1C0C
/* 0A8C2C 800F1C0C */  .space  0x4C

glabel D_800F1C58
/* 0A8C30 800F1C58 */  .space  0x28

glabel D_800F1C80
/* 0A8C34 800F1C80 */  .space  0x28

glabel D_800F1CA8
/* 0A8C38 800F1CA8 */  .space  0x28

glabel D_800F1CD0
/* 0A8C3C 800F1CD0 */  .space  0x04

glabel D_800F1CD4
/* 0A8C40 800F1CD4 */  .space  0x04

glabel D_800F1CD8
/* 0A8C44 800F1CD8 */  .space  0x04

glabel D_800F1CDC
/* 0A8C48 800F1CDC */  .space  0x04

glabel D_800F1CE0
/* 0A8C4C 800F1CE0 */  .space  0x08

glabel D_800F1CE8
/* 0A8C50 800F1CE8 */  .space  0x30

glabel D_800F1D18
/* 0A8C54 800F1D18 */  .space  0x04

glabel D_800F1D1C
/* 0A8C58 800F1D1C */  .space  0x04

glabel D_800F1D20
/* 0A8C5C 800F1D20 */  .space  0x08

glabel D_800F1D28
/* 0A8C60 800F1D28 */  .space  0x08

glabel D_800F1D30
/* 0A8C64 800F1D30 */  .space  0x7A0

glabel D_800F24D0
/* 0A8C68 800F24D0 */  .space  0x74

glabel D_800F2544
/* 0A8C6C 800F2544 */  .space  0x0C

glabel D_800F2550
/* 0A8C70 800F2550 */  .space  0x10

glabel D_800F2560
/* 0A8C74 800F2560 */  .space  0x04

glabel D_800F2564
/* 0A8C78 800F2564 */  .space  0x04

glabel D_800F2568
/* 0A8C7C 800F2568 */  .space  0x08

glabel D_800F2570
/* 0A8C80 800F2570 */  .space  0x20

glabel D_800F2590
/* 0A8C84 800F2590 */  .space  0x10

glabel D_800F25A0
/* 0A8C88 800F25A0 */  .space  0x04

glabel D_800F25A4
/* 0A8C8C 800F25A4 */  .space  0x04

glabel D_800F25A8
/* 0A8C90 800F25A8 */  .space  0x04

glabel D_800F25AC
/* 0A8C94 800F25AC */  .space  0x02

glabel D_800F25AE
/* 0A8C98 800F25AE */  .space  0x02

glabel D_800F25B0
/* 0A8C9C 800F25B0 */  .space  0x08

glabel D_800F25B8
/* 0A8CA0 800F25B8 */  .space  0x14

glabel D_800F25CC
/* 0A8CA4 800F25CC */  .space  0x0C

glabel D_800F25D8
/* 0A8CA8 800F25D8 */  .space  0x0C

glabel D_800F25E4
/* 0A8CAC 800F25E4 */  .space  0x04

glabel D_800F25E8
/* 0A8CB0 800F25E8 */  .space  0x08

glabel D_800F25F0
/* 0A8CB4 800F25F0 */  .space  0x04

glabel D_800F25F4
/* 0A8CB8 800F25F4 */  .space  0x04

glabel D_800F25F8
/* 0A8CBC 800F25F8 */  .space  0x04

glabel D_800F25FC
/* 0A8CC0 800F25FC */  .space  0x04

glabel D_800F2600
/* 0A8CC4 800F2600 */  .space  0x04

glabel D_800F2604
/* 0A8CC8 800F2604 */  .space  0x04

glabel D_800F2608
/* 0A8CCC 800F2608 */  .space  0x04

glabel D_800F260C
/* 0A8CD0 800F260C */  .space  0x04

glabel D_800F2610
/* 0A8CD4 800F2610 */  .space  0x04

glabel D_800F2614
/* 0A8CD8 800F2614 */  .space  0x04

glabel D_800F2618
/* 0A8CDC 800F2618 */  .space  0x08

glabel D_800F2620
/* 0A8CE0 800F2620 */  .space  0x18

glabel D_800F2638
/* 0A8CE4 800F2638 */  .space  0x328

glabel D_800F2960
/* 0A8CE8 800F2960 */  .space  0x10

glabel D_800F2970
/* 0A8CEC 800F2970 */  .space  0x10

glabel D_800F2980
/* 0A8CF0 800F2980 */  .space  0x04

glabel D_800F2984
/* 0A8CF4 800F2984 */  .space  0x04

glabel D_800F2988
/* 0A8CF8 800F2988 */  .space  0x04

glabel D_800F298C
/* 0A8CFC 800F298C */  .space  0x04

glabel D_800F2990
/* 0A8D00 800F2990 */  .space  0x08

glabel D_800F2998
/* 0A8D04 800F2998 */  .space  0x08

glabel D_800F29A0
/* 0A8D08 800F29A0 */  .space  0x04

glabel D_800F29A4
/* 0A8D0C 800F29A4 */  .space  0x04

glabel D_800F29A8
/* 0A8D10 800F29A8 */  .space  0x04

glabel D_800F29AC
/* 0A8D14 800F29AC */  .space  0x04

glabel D_800F29B0
/* 0A8D18 800F29B0 */  .space  0x08

glabel D_800F29B8
/* 0A8D1C 800F29B8 */  .space  0x18

glabel D_800F29D0
/* 0A8D20 800F29D0 */  .space  0x30

glabel D_800F2A00
/* 0A8D24 800F2A00 */  .space  0x04

glabel D_800F2A04
/* 0A8D28 800F2A04 */  .space  0x04

glabel D_800F2A08
/* 0A8D2C 800F2A08 */  .space  0x04

glabel D_800F2A0C
/* 0A8D30 800F2A0C */  .space  0x04

glabel D_800F2A10
/* 0A8D34 800F2A10 */  .space  0x04

glabel D_800F2A14
/* 0A8D38 800F2A14 */  .space  0x04

glabel D_800F2A18
/* 0A8D3C 800F2A18 */  .space  0x08

glabel D_800F2A20
/* 0A8D40 800F2A20 */  .space  0x04

glabel D_800F2A24
/* 0A8D44 800F2A24 */  .space  0x04

glabel D_800F2A28
/* 0A8D48 800F2A28 */  .space  0x04

glabel D_800F2A2C
/* 0A8D4C 800F2A2C */  .space  0x04

glabel D_800F2A30
/* 0A8D50 800F2A30 */  .space  0x04

glabel D_800F2A34
/* 0A8D54 800F2A34 */  .space  0x04

glabel D_800F2A38
/* 0A8D58 800F2A38 */  .space  0x04

glabel D_800F2A3C
/* 0A8D5C 800F2A3C */  .space  0x04

glabel D_800F2A40
/* 0A8D60 800F2A40 */  .space  0x04

glabel D_800F2A44
/* 0A8D64 800F2A44 */  .space  0x04

glabel D_800F2A48
/* 0A8D68 800F2A48 */  .space  0x04

glabel D_800F2A4C
/* 0A8D6C 800F2A4C */  .space  0x04

glabel D_800F2A50
/* 0A8D70 800F2A50 */  .space  0x04

glabel D_800F2A54
/* 0A8D74 800F2A54 */  .space  0x04

glabel D_800F2A58
/* 0A8D78 800F2A58 */  .space  0x08

glabel D_800F2A60
/* 0A8D7C 800F2A60 */  .space  0x2060

glabel D_800F4AC0
/* 0A8D80 800F4AC0 */  .space  0x2000

glabel D_800F6AC0
/* 0A8D84 800F6AC0 */  .space  0x2000

glabel D_800F8AC0
/* 0A8D88 800F8AC0 */  .space  0x04

glabel D_800F8AC4
/* 0A8D8C 800F8AC4 */  .space  0x04

glabel D_800F8AC8
/* 0A8D90 800F8AC8 */  .space  0x04

glabel D_800F8ACC
/* 0A8D94 800F8ACC */  .space  0x04

glabel D_800F8AD0
/* 0A8D98 800F8AD0 */  .space  0x04

glabel D_800F8AD4
/* 0A8D9C 800F8AD4 */  .space  0x04

glabel D_800F8AD8
/* 0A8DA0 800F8AD8 */  .space  0x0A

glabel D_800F8AE2
/* 0A8DA4 800F8AE2 */  .space  0x16

glabel D_800F8AF8
/* 0A8DA8 800F8AF8 */  .space  0x10

glabel D_800F8B08
/* 0A8DAC 800F8B08 */  .space  0x04

glabel D_800F8B0C
/* 0A8DB0 800F8B0C */  .space  0x04

glabel D_800F8B10
/* 0A8DB4 800F8B10 */  .space  0x10

glabel D_800F8B20
/* 0A8DB8 800F8B20 */  .space  0x3B0

glabel D_800F8ED0
/* 0A8DBC 800F8ED0 */  .space  0x18

glabel D_800F8EE8
/* 0A8DC0 800F8EE8 */  .space  0x08

glabel D_800F8EF0
/* 0A8DC4 800F8EF0 */  .space  0x04

glabel D_800F8EF4
/* 0A8DC8 800F8EF4 */  .space  0x04

glabel D_800F8EF8
/* 0A8DCC 800F8EF8 */  .space  0x04

glabel D_800F8EFC
/* 0A8DD0 800F8EFC */  .space  0x04

glabel D_800F8F00
/* 0A8DD4 800F8F00 */  .space  0x08

glabel D_800F8F08
/* 0A8DD8 800F8F08 */  .space  0x18

glabel D_800F8F20
/* 0A8DDC 800F8F20 */  .space  0x04

glabel D_800F8F24
/* 0A8DE0 800F8F24 */  .space  0x04

glabel D_800F8F28
/* 0A8DE4 800F8F28 */  .space  0x08

glabel D_800F8F30
/* 0A8DE8 800F8F30 */  .space  0x08

glabel D_800F8F38
/* 0A8DEC 800F8F38 */  .space  0x1FF8

glabel D_800FAF30
/* 0A8DF0 800FAF30 */  .space  0x1B0

glabel D_800FB0E0
/* 0A8DF4 800FB0E0 */  .space  0x18

glabel D_800FB0F8
/* 0A8DF8 800FB0F8 */  .space  0x04

glabel D_800FB0FC
/* 0A8DFC 800FB0FC */  .space  0x18

glabel D_800FB114
/* 0A8E00 800FB114 */  .space  0x04

glabel D_800FB118
/* 0A8E04 800FB118 */  .space  0x18

glabel D_800FB130
/* 0A8E08 800FB130 */  .space  0x04

glabel D_800FB134
/* 0A8E0C 800FB134 */  .space  0x3C

glabel D_800FB170
/* 0A8E10 800FB170 */  .space  0x400

glabel D_800FB570
/* 0A8E14 800FB570 */  .space  0x200

glabel D_800FB770
/* 0A8E18 800FB770 */  .space  0x200

glabel D_800FB970
/* 0A8E1C 800FB970 */  .space  0x2200

glabel D_800FDB70
/* 0A8E20 800FDB70 */  .space  0x10

glabel D_800FDB80
/* 0A8E24 800FDB80 */  .space  0x10

glabel __osEventStateTab
/* 0A8E28 800FDB90 */  .space  0x80

glabel __osContPifRam
/* 0A8E2C 800FDC10 */  .space  0x40

glabel __osContLastPoll
/* 0A8E30 800FDC50 */  .space  0x01

glabel __osMaxControllers
/* 0A8E34 800FDC51 */  .space  0x27

glabel D_800FDC78
/* 0A8E38 800FDC78 */  .space  0x18

glabel D_800FDC90
/* 0A8E3C 800FDC90 */  .space  0x10

glabel osPifBuffers
/* 0A8E40 800FDCA0 */  .space  0x100

glabel D_800FDDA0
/* 0A8E44 800FDDA0 */  .space  0x04

glabel D_800FDDA4
/* 0A8E48 800FDDA4 */  .space  0x3C

glabel D_800FDDE0
/* 0A8E4C 800FDDE0 */  .space  0x04

glabel D_800FDDE4
/* 0A8E50 800FDDE4 */  .space  0x04

glabel D_800FDDE8
/* 0A8E54 800FDDE8 */  .space  0x74

glabel D_800FDE5C
/* 0A8E58 800FDE5C */  .space  0x04

glabel D_800FDE60
/* 0A8E5C 800FDE60 */  .space  0x70

glabel D_800FDED0
/* 0A8E60 800FDED0 */  .space  0x11B0

glabel D_800FF080
/* 0A8E64 800FF080 */  .space  0x18

glabel D_800FF098
/* 0A8E68 800FF098 */  .space  0x08

glabel D_800FF0A0
/* 0A8E6C 800FF0A0 */  .space  0x11B0

glabel D_80100250
/* 0A8E70 80100250 */  .space  0x18

glabel D_80100268
/* 0A8E74 80100268 */  .space  0x18

glabel D_80100280
/* 0A8E78 80100280 */  .space  0x18

glabel D_80100298
/* 0A8E7C 80100298 */  .space  0x18

glabel D_801002B0
/* 0A8E80 801002B0 */  .space  0x10

glabel D_801002C0
/* 0A8E84 801002C0 */  .space  0x10

glabel D_801002D0
/* 0A8E88 801002D0 */  .space  0x08

glabel D_801002D8
/* 0A8E8C 801002D8 */  .space  0x08

glabel D_801002E0
/* 0A8E90 801002E0 */  .space  0x08

glabel D_801002E8
/* 0A8E94 801002E8 */  .space  0x04

glabel D_801002EC
/* 0A8E98 801002EC */  .space  0x04

glabel D_801002F0
/* 0A8E9C 801002F0 */  .space  0x08

glabel D_801002F8
/* 0A8EA0 801002F8 */  .space  0x08

glabel D_80100300
/* 0A8EA4 80100300 */  .space  0x10

glabel siAccessBuf
/* 0A8EA8 80100310 */  .space  0x08

glabel __osSiAccessQueue
/* 0A8EAC 80100318 */  .space  0x38

glabel __osCurrentTime
/* 0A8EB0 80100350 */  .space  0x08

glabel __osBaseCounter
/* 0A8EB4 80100358 */  .space  0x04

glabel __osViIntrCount
/* 0A8EB8 8010035C */  .space  0x04

glabel __osTimerCounter
/* 0A8EBC 80100360 */  .space  0x10

glabel D_80100370
/* 0A8EC0 80100370 */  .space  0x08

glabel D_80100378
/* 0A8EC4 80100378 */  .space  0x18

glabel __osPfsPifRam
/* 0A8EC8 80100390 */  .space  0x40

glabel __osThreadSave
/* 0A8ECC 801003D0 */  .space  0x1B0

glabel __osPfsInodeCache
/* 0A8ED0 80100580 */  .space  0x100
