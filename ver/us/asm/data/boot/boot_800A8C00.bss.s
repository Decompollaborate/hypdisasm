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
/* 0A8BB0 800A9000 */  .space  0x688

glabel D_800A9688
/* 0A9238 800A9688 */  .space  0x760

glabel D_800A9DE8
/* 0A9998 800A9DE8 */  .space  0x1F08

glabel D_800ABCF0
/* 0AB8A0 800ABCF0 */  .space  0x08

glabel D_800ABCF8
/* 0AB8A8 800ABCF8 */  .space  0x04

glabel D_800ABCFC
/* 0AB8AC 800ABCFC */  .space  0x08

glabel D_800ABD04
/* 0AB8B4 800ABD04 */  .space  0x10

glabel D_800ABD14
/* 0AB8C4 800ABD14 */  .space  0x68

glabel D_800ABD7C
/* 0AB92C 800ABD7C */  .space  0x04

glabel D_800ABD80
/* 0AB930 800ABD80 */  .space  0x04

glabel D_800ABD84
/* 0AB934 800ABD84 */  .space  0x04

glabel D_800ABD88
/* 0AB938 800ABD88 */  .space  0x04

glabel D_800ABD8C
/* 0AB93C 800ABD8C */  .space  0x04

glabel D_800ABD90
/* 0AB940 800ABD90 */  .space  0x28

glabel D_800ABDB8
/* 0AB968 800ABDB8 */  .space  0x08

glabel D_800ABDC0
/* 0AB970 800ABDC0 */  .space  0x04

glabel D_800ABDC4
/* 0AB974 800ABDC4 */  .space  0x08

glabel D_800ABDCC
/* 0AB97C 800ABDCC */  .space  0x04

glabel D_800ABDD0
/* 0AB980 800ABDD0 */  .space  0x04

glabel D_800ABDD4
/* 0AB984 800ABDD4 */  .space  0x04

glabel D_800ABDD8
/* 0AB988 800ABDD8 */  .space  0x04

glabel D_800ABDDC
/* 0AB98C 800ABDDC */  .space  0x04

glabel D_800ABDE0
/* 0AB990 800ABDE0 */  .space  0x08

glabel D_800ABDE8
/* 0AB998 800ABDE8 */  .space  0x08

glabel D_800ABDF0
/* 0AB9A0 800ABDF0 */  .space  0xC0

glabel D_800ABEB0
/* 0ABA60 800ABEB0 */  .space  0x600

glabel D_800AC4B0
/* 0AC060 800AC4B0 */  .space  0x04

glabel D_800AC4B4
/* 0AC064 800AC4B4 */  .space  0x04

glabel D_800AC4B8
/* 0AC068 800AC4B8 */  .space  0x08

glabel D_800AC4C0
/* 0AC070 800AC4C0 */  .space  0x9B0

glabel D_800ACE70
/* 0ACA20 800ACE70 */  .space  0x10

glabel D_800ACE80
/* 0ACA30 800ACE80 */  .space  0x01

glabel D_800ACE81
/* 0ACA31 800ACE81 */  .space  0x07

glabel D_800ACE88
/* 0ACA38 800ACE88 */  .space  0x10

glabel D_800ACE98
/* 0ACA48 800ACE98 */  .space  0x1A0

glabel D_800AD038
/* 0ACBE8 800AD038 */  .space  0x18

glabel D_800AD050
/* 0ACC00 800AD050 */  .space  0x28

glabel D_800AD078
/* 0ACC28 800AD078 */  .space  0x04

glabel D_800AD07C
/* 0ACC2C 800AD07C */  .space  0x04

glabel D_800AD080
/* 0ACC30 800AD080 */  .space  0x04

glabel D_800AD084
/* 0ACC34 800AD084 */  .space  0x04

glabel D_800AD088
/* 0ACC38 800AD088 */  .space  0x18

glabel D_800AD0A0
/* 0ACC50 800AD0A0 */  .space  0x40

glabel D_800AD0E0
/* 0ACC90 800AD0E0 */  .space  0x60

glabel D_800AD140
/* 0ACCF0 800AD140 */  .space  0xA0

glabel D_800AD1E0
/* 0ACD90 800AD1E0 */  .space  0x10

glabel D_800AD1F0
/* 0ACDA0 800AD1F0 */  .space  0x0C

glabel D_800AD1FC
/* 0ACDAC 800AD1FC */  .space  0x200

glabel D_800AD3FC
/* 0ACFAC 800AD3FC */  .space  0x04

glabel D_800AD400
/* 0ACFB0 800AD400 */  .space  0x20

glabel D_800AD420
/* 0ACFD0 800AD420 */  .space  0x04

glabel D_800AD424
/* 0ACFD4 800AD424 */  .space  0x04

glabel D_800AD428
/* 0ACFD8 800AD428 */  .space  0x04

glabel D_800AD42C
/* 0ACFDC 800AD42C */  .space  0x04

glabel D_800AD430
/* 0ACFE0 800AD430 */  .space  0x04

glabel D_800AD434
/* 0ACFE4 800AD434 */  .space  0x04

glabel D_800AD438
/* 0ACFE8 800AD438 */  .space  0x04

glabel D_800AD43C
/* 0ACFEC 800AD43C */  .space  0x04

glabel D_800AD440
/* 0ACFF0 800AD440 */  .space  0x04

glabel D_800AD444
/* 0ACFF4 800AD444 */  .space  0x04

glabel D_800AD448
/* 0ACFF8 800AD448 */  .space  0x04

glabel D_800AD44C
/* 0ACFFC 800AD44C */  .space  0x04

glabel D_800AD450
/* 0AD000 800AD450 */  .space  0x04

glabel D_800AD454
/* 0AD004 800AD454 */  .space  0x04

glabel D_800AD458
/* 0AD008 800AD458 */  .space  0x04

glabel D_800AD45C
/* 0AD00C 800AD45C */  .space  0x04

glabel D_800AD460
/* 0AD010 800AD460 */  .space  0x04

glabel D_800AD464
/* 0AD014 800AD464 */  .space  0x04

glabel D_800AD468
/* 0AD018 800AD468 */  .space  0x04

glabel D_800AD46C
/* 0AD01C 800AD46C */  .space  0x04

glabel D_800AD470
/* 0AD020 800AD470 */  .space  0x04

glabel D_800AD474
/* 0AD024 800AD474 */  .space  0x0C

glabel D_800AD480
/* 0AD030 800AD480 */  .space  0xC0

glabel D_800AD540
/* 0AD0F0 800AD540 */  .space  0x04

glabel D_800AD544
/* 0AD0F4 800AD544 */  .space  0x04

glabel D_800AD548
/* 0AD0F8 800AD548 */  .space  0x04

glabel D_800AD54C
/* 0AD0FC 800AD54C */  .space  0x0C

glabel D_800AD558
/* 0AD108 800AD558 */  .space  0x48

glabel D_800AD5A0
/* 0AD150 800AD5A0 */  .space  0x200

glabel D_800AD7A0
/* 0AD350 800AD7A0 */  .space  0x200

glabel D_800AD9A0
/* 0AD550 800AD9A0 */  .space  0x10

glabel D_800AD9B0
/* 0AD560 800AD9B0 */  .space  0x08

glabel D_800AD9B8
/* 0AD568 800AD9B8 */  .space  0x04

glabel D_800AD9BC
/* 0AD56C 800AD9BC */  .space  0x04

glabel D_800AD9C0
/* 0AD570 800AD9C0 */  .space  0x04

glabel D_800AD9C4
/* 0AD574 800AD9C4 */  .space  0x04

glabel D_800AD9C8
/* 0AD578 800AD9C8 */  .space  0x04

glabel D_800AD9CC
/* 0AD57C 800AD9CC */  .space  0x04

glabel D_800AD9D0
/* 0AD580 800AD9D0 */  .space  0x04

glabel D_800AD9D4
/* 0AD584 800AD9D4 */  .space  0x04

glabel D_800AD9D8
/* 0AD588 800AD9D8 */  .space  0x08

glabel D_800AD9E0
/* 0AD590 800AD9E0 */  .space  0x30

glabel D_800ADA10
/* 0AD5C0 800ADA10 */  .space  0x10

glabel D_800ADA20
/* 0AD5D0 800ADA20 */  .space  0x960

glabel D_800AE380
/* 0ADF30 800AE380 */  .space  0x08

glabel D_800AE388
/* 0ADF38 800AE388 */  .space  0x18

glabel D_800AE3A0
/* 0ADF50 800AE3A0 */  .space  0x08

glabel D_800AE3A8
/* 0ADF58 800AE3A8 */  .space  0x18

glabel D_800AE3C0
/* 0ADF70 800AE3C0 */  .space  0x04

glabel D_800AE3C4
/* 0ADF74 800AE3C4 */  .space  0x0C

glabel D_800AE3D0
/* 0ADF80 800AE3D0 */  .space  0x04

glabel D_800AE3D4
/* 0ADF84 800AE3D4 */  .space  0x04

glabel D_800AE3D8
/* 0ADF88 800AE3D8 */  .space  0x08

glabel D_800AE3E0
/* 0ADF90 800AE3E0 */  .space  0x0C

glabel D_800AE3EC
/* 0ADF9C 800AE3EC */  .space  0x04

glabel D_800AE3F0
/* 0ADFA0 800AE3F0 */  .space  0x40

glabel D_800AE430
/* 0ADFE0 800AE430 */  .space  0x10

glabel D_800AE440
/* 0ADFF0 800AE440 */  .space  0x80

glabel D_800AE4C0
/* 0AE070 800AE4C0 */  .space  0x18

glabel D_800AE4D8
/* 0AE088 800AE4D8 */  .space  0x08

glabel D_800AE4E0
/* 0AE090 800AE4E0 */  .space  0x04

glabel D_800AE4E4
/* 0AE094 800AE4E4 */  .space  0x04

glabel D_800AE4E8
/* 0AE098 800AE4E8 */  .space  0x08

glabel D_800AE4F0
/* 0AE0A0 800AE4F0 */  .space  0x04

glabel D_800AE4F4
/* 0AE0A4 800AE4F4 */  .space  0x04

glabel D_800AE4F8
/* 0AE0A8 800AE4F8 */  .space  0x04

glabel D_800AE4FC
/* 0AE0AC 800AE4FC */  .space  0x04

glabel D_800AE500_RomRamTableIndex
/* 0AE0B0 800AE500 */  .space  0x04

glabel D_800AE504
/* 0AE0B4 800AE504 */  .space  0x04

glabel D_800AE508
/* 0AE0B8 800AE508 */  .space  0x04

glabel D_800AE50C
/* 0AE0BC 800AE50C */  .space  0x04

glabel D_800AE510
/* 0AE0C0 800AE510 */  .space  0x08

glabel D_800AE518
/* 0AE0C8 800AE518 */  .space  0x8020

glabel D_800B6538
/* 0B60E8 800B6538 */  .space  0x1B0

glabel D_800B66E8
/* 0B6298 800B66E8 */  .space  0x04

glabel D_800B66EC
/* 0B629C 800B66EC */  .space  0x04

glabel D_800B66F0
/* 0B62A0 800B66F0 */  .space  0x04

glabel D_800B66F4
/* 0B62A4 800B66F4 */  .space  0x04

glabel D_800B66F8
/* 0B62A8 800B66F8 */  .space  0x08

glabel D_800B6700
/* 0B62B0 800B6700 */  .space  0x50

glabel D_800B6750
/* 0B6300 800B6750 */  .space  0x04

glabel D_800B6754
/* 0B6304 800B6754 */  .space  0x04

glabel D_800B6758
/* 0B6308 800B6758 */  .space  0x04

glabel D_800B675C
/* 0B630C 800B675C */  .space  0x04

glabel D_800B6760
/* 0B6310 800B6760 */  .space  0x04

glabel D_800B6764
/* 0B6314 800B6764 */  .space  0x04

glabel D_800B6768
/* 0B6318 800B6768 */  .space  0x04

glabel D_800B676C
/* 0B631C 800B676C */  .space  0x04

glabel D_800B6770
/* 0B6320 800B6770 */  .space  0x08

glabel D_800B6778
/* 0B6328 800B6778 */  .space  0x14

glabel D_800B678C
/* 0B633C 800B678C */  .space  0x0C

glabel D_800B6798
/* 0B6348 800B6798 */  .space  0x04

glabel D_800B679C
/* 0B634C 800B679C */  .space  0x04

glabel D_800B67A0
/* 0B6350 800B67A0 */  .space  0x10

glabel D_800B67B0
/* 0B6360 800B67B0 */  .space  0x60

glabel D_800B6810
/* 0B63C0 800B6810 */  .space  0x20

glabel D_800B6830
/* 0B63E0 800B6830 */  .space  0x10

glabel D_800B6840
/* 0B63F0 800B6840 */  .space  0x04

glabel D_800B6844
/* 0B63F4 800B6844 */  .space  0x1C

glabel D_800B6860
/* 0B6410 800B6860 */  .space  0x1C

glabel D_800B687C
/* 0B642C 800B687C */  .space  0x04

glabel D_800B6880
/* 0B6430 800B6880 */  .space  0x98

glabel D_800B6918
/* 0B64C8 800B6918 */  .space  0x18

glabel D_800B6930
/* 0B64E0 800B6930 */  .space  0x60

glabel D_800B6990
/* 0B6540 800B6990 */  .space  0x04

glabel D_800B6994
/* 0B6544 800B6994 */  .space  0x04

glabel D_800B6998
/* 0B6548 800B6998 */  .space  0x20

glabel D_800B69B8
/* 0B6568 800B69B8 */  .space  0x08

glabel D_800B69C0
/* 0B6570 800B69C0 */  .space  0xC8

glabel D_800B6A88
/* 0B6638 800B6A88 */  .space  0xC8

glabel D_800B6B50
/* 0B6700 800B6B50 */  .space  0x08

glabel D_800B6B58
/* 0B6708 800B6B58 */  .space  0x10

glabel D_800B6B68
/* 0B6718 800B6B68 */  .space  0x28

glabel D_800B6B90
/* 0B6740 800B6B90 */  .space  0x28

glabel D_800B6BB8
/* 0B6768 800B6BB8 */  .space  0x90

glabel D_800B6C48
/* 0B67F8 800B6C48 */  .space  0x08

glabel D_800B6C50
/* 0B6800 800B6C50 */  .space  0x04

glabel D_800B6C54
/* 0B6804 800B6C54 */  .space  0x04

glabel D_800B6C58
/* 0B6808 800B6C58 */  .space  0x04

glabel D_800B6C5C
/* 0B680C 800B6C5C */  .space  0x04

glabel D_800B6C60
/* 0B6810 800B6C60 */  .space  0xD0

glabel D_800B6D30
/* 0B68E0 800B6D30 */  .space  0xD0

glabel D_800B6E00
/* 0B69B0 800B6E00 */  .space  0x35B60

glabel D_800EC960
/* 0EC510 800EC960 */  .space  0x08

glabel D_800EC968
/* 0EC518 800EC968 */  .space  0x18

glabel D_800EC980
/* 0EC530 800EC980 */  .space  0x48

glabel D_800EC9C8
/* 0EC578 800EC9C8 */  .space  0x28

glabel D_800EC9F0
/* 0EC5A0 800EC9F0 */  .space  0x200

glabel D_800ECBF0
/* 0EC7A0 800ECBF0 */  .space  0x5DC

glabel D_800ED1CC
/* 0ECD7C 800ED1CC */  .space  0x17E4

glabel D_800EE9B0
/* 0EE560 800EE9B0 */  .space  0x68

glabel D_800EEA18
/* 0EE5C8 800EEA18 */  .space  0x198

glabel D_800EEBB0
/* 0EE760 800EEBB0 */  .space  0x5DC

glabel D_800EF18C
/* 0EED3C 800EF18C */  .space  0x514

glabel D_800EF6A0
/* 0EF250 800EF6A0 */  .space  0x04

glabel D_800EF6A4
/* 0EF254 800EF6A4 */  .space  0x04

glabel D_800EF6A8
/* 0EF258 800EF6A8 */  .space  0x04

glabel D_800EF6AC
/* 0EF25C 800EF6AC */  .space  0x04

glabel D_800EF6B0
/* 0EF260 800EF6B0 */  .space  0x04

glabel D_800EF6B4
/* 0EF264 800EF6B4 */  .space  0x04

glabel D_800EF6B8
/* 0EF268 800EF6B8 */  .space  0x04

glabel D_800EF6BC
/* 0EF26C 800EF6BC */  .space  0x34

glabel D_800EF6F0
/* 0EF2A0 800EF6F0 */  .space  0x34

glabel D_800EF724
/* 0EF2D4 800EF724 */  .space  0x04

glabel D_800EF728
/* 0EF2D8 800EF728 */  .space  0x58

glabel D_800EF780
/* 0EF330 800EF780 */  .space  0x10

glabel D_800EF790
/* 0EF340 800EF790 */  .space  0x06

glabel D_800EF796
/* 0EF346 800EF796 */  .space  0x02

glabel D_800EF798
/* 0EF348 800EF798 */  .space  0x04

glabel D_800EF79C
/* 0EF34C 800EF79C */  .space  0x04

glabel D_800EF7A0
/* 0EF350 800EF7A0 */  .space  0x9C8

glabel D_800F0168
/* 0EFD18 800F0168 */  .space  0x68

glabel D_800F01D0
/* 0EFD80 800F01D0 */  .space  0x08

glabel D_800F01D8
/* 0EFD88 800F01D8 */  .space  0x04

glabel D_800F01DC
/* 0EFD8C 800F01DC */  .space  0x04

glabel D_800F01E0
/* 0EFD90 800F01E0 */  .space  0x0C

glabel D_800F01EC
/* 0EFD9C 800F01EC */  .space  0x04

glabel D_800F01F0
/* 0EFDA0 800F01F0 */  .space  0x04

glabel D_800F01F4
/* 0EFDA4 800F01F4 */  .space  0x04

glabel D_800F01F8
/* 0EFDA8 800F01F8 */  .space  0x08

glabel D_800F0200
/* 0EFDB0 800F0200 */  .space  0x0C

glabel D_800F020C
/* 0EFDBC 800F020C */  .space  0x0C

glabel D_800F0218
/* 0EFDC8 800F0218 */  .space  0x0C

glabel D_800F0224
/* 0EFDD4 800F0224 */  .space  0x0C

glabel D_800F0230
/* 0EFDE0 800F0230 */  .space  0x0C

glabel D_800F023C
/* 0EFDEC 800F023C */  .space  0x0C

glabel D_800F0248
/* 0EFDF8 800F0248 */  .space  0x10

glabel D_800F0258
/* 0EFE08 800F0258 */  .space  0x0C

glabel D_800F0264
/* 0EFE14 800F0264 */  .space  0x04

glabel D_800F0268
/* 0EFE18 800F0268 */  .space  0x0C

glabel D_800F0274
/* 0EFE24 800F0274 */  .space  0x04

glabel D_800F0278
/* 0EFE28 800F0278 */  .space  0x04

glabel D_800F027C
/* 0EFE2C 800F027C */  .space  0x04

glabel D_800F0280
/* 0EFE30 800F0280 */  .space  0x04

glabel D_800F0284
/* 0EFE34 800F0284 */  .space  0x0C

glabel D_800F0290
/* 0EFE40 800F0290 */  .space  0x430

glabel D_800F06C0
/* 0F0270 800F06C0 */  .space  0x0C

glabel D_800F06CC
/* 0F027C 800F06CC */  .space  0x450

glabel D_800F0B1C
/* 0F06CC 800F0B1C */  .space  0x04

glabel D_800F0B20
/* 0F06D0 800F0B20 */  .space  0x0C

glabel D_800F0B2C
/* 0F06DC 800F0B2C */  .space  0x44

glabel D_800F0B70
/* 0F0720 800F0B70 */  .space  0x04

glabel D_800F0B74
/* 0F0724 800F0B74 */  .space  0x04

glabel D_800F0B78
/* 0F0728 800F0B78 */  .space  0x28

glabel D_800F0BA0
/* 0F0750 800F0BA0 */  .space  0x04

glabel D_800F0BA4
/* 0F0754 800F0BA4 */  .space  0x04

glabel D_800F0BA8
/* 0F0758 800F0BA8 */  .space  0x30

glabel D_800F0BD8
/* 0F0788 800F0BD8 */  .space  0x04

glabel D_800F0BDC
/* 0F078C 800F0BDC */  .space  0x04

glabel D_800F0BE0
/* 0F0790 800F0BE0 */  .space  0x04

glabel D_800F0BE4
/* 0F0794 800F0BE4 */  .space  0x04

glabel D_800F0BE8
/* 0F0798 800F0BE8 */  .space  0x08

glabel D_800F0BF0
/* 0F07A0 800F0BF0 */  .space  0x08

glabel D_800F0BF8
/* 0F07A8 800F0BF8 */  .space  0x08

glabel D_800F0C00
/* 0F07B0 800F0C00 */  .space  0x60

glabel D_800F0C60
/* 0F0810 800F0C60 */  .space  0x18

glabel D_800F0C78
/* 0F0828 800F0C78 */  .space  0x3F0

glabel D_800F1068
/* 0F0C18 800F1068 */  .space  0x04

glabel D_800F106C
/* 0F0C1C 800F106C */  .space  0x04

glabel D_800F1070
/* 0F0C20 800F1070 */  .space  0x10

glabel D_800F1080
/* 0F0C30 800F1080 */  .space  0x28

glabel D_800F10A8
/* 0F0C58 800F10A8 */  .space  0x08

glabel D_800F10B0
/* 0F0C60 800F10B0 */  .space  0x9C4

glabel D_800F1A74
/* 0F1624 800F1A74 */  .space  0x04

glabel D_800F1A78
/* 0F1628 800F1A78 */  .space  0x04

glabel D_800F1A7C
/* 0F162C 800F1A7C */  .space  0x04

glabel D_800F1A80
/* 0F1630 800F1A80 */  .space  0x08

glabel D_800F1A88
/* 0F1638 800F1A88 */  .space  0x2C

glabel D_800F1AB4
/* 0F1664 800F1AB4 */  .space  0x04

glabel D_800F1AB8
/* 0F1668 800F1AB8 */  .space  0x04

glabel D_800F1ABC
/* 0F166C 800F1ABC */  .space  0x04

glabel D_800F1AC0
/* 0F1670 800F1AC0 */  .space  0x04

glabel D_800F1AC4
/* 0F1674 800F1AC4 */  .space  0x04

glabel D_800F1AC8
/* 0F1678 800F1AC8 */  .space  0x0C

glabel D_800F1AD4
/* 0F1684 800F1AD4 */  .space  0x4C

glabel D_800F1B20
/* 0F16D0 800F1B20 */  .space  0x20

glabel D_800F1B40
/* 0F16F0 800F1B40 */  .space  0x04

glabel D_800F1B44
/* 0F16F4 800F1B44 */  .space  0x2C

glabel D_800F1B70
/* 0F1720 800F1B70 */  .space  0x04

glabel D_800F1B74
/* 0F1724 800F1B74 */  .space  0x04

glabel D_800F1B78
/* 0F1728 800F1B78 */  .space  0x30

glabel D_800F1BA8
/* 0F1758 800F1BA8 */  .space  0x08

glabel D_800F1BB0
/* 0F1760 800F1BB0 */  .space  0x10

glabel D_800F1BC0
/* 0F1770 800F1BC0 */  .space  0x10

glabel D_800F1BD0
/* 0F1780 800F1BD0 */  .space  0x0C

glabel D_800F1BDC
/* 0F178C 800F1BDC */  .space  0x04

glabel D_800F1BE0
/* 0F1790 800F1BE0 */  .space  0x04

glabel D_800F1BE4
/* 0F1794 800F1BE4 */  .space  0x04

glabel D_800F1BE8
/* 0F1798 800F1BE8 */  .space  0x04

glabel D_800F1BEC
/* 0F179C 800F1BEC */  .space  0x04

glabel D_800F1BF0
/* 0F17A0 800F1BF0 */  .space  0x04

glabel D_800F1BF4
/* 0F17A4 800F1BF4 */  .space  0x04

glabel D_800F1BF8
/* 0F17A8 800F1BF8 */  .space  0x08

glabel D_800F1C00
/* 0F17B0 800F1C00 */  .space  0x04

glabel D_800F1C04
/* 0F17B4 800F1C04 */  .space  0x04

glabel D_800F1C08
/* 0F17B8 800F1C08 */  .space  0x04

glabel D_800F1C0C
/* 0F17BC 800F1C0C */  .space  0x4C

glabel D_800F1C58
/* 0F1808 800F1C58 */  .space  0x28

glabel D_800F1C80
/* 0F1830 800F1C80 */  .space  0x28

glabel D_800F1CA8
/* 0F1858 800F1CA8 */  .space  0x28

glabel D_800F1CD0
/* 0F1880 800F1CD0 */  .space  0x04

glabel D_800F1CD4
/* 0F1884 800F1CD4 */  .space  0x04

glabel D_800F1CD8
/* 0F1888 800F1CD8 */  .space  0x04

glabel D_800F1CDC
/* 0F188C 800F1CDC */  .space  0x04

glabel D_800F1CE0
/* 0F1890 800F1CE0 */  .space  0x08

glabel D_800F1CE8
/* 0F1898 800F1CE8 */  .space  0x30

glabel D_800F1D18
/* 0F18C8 800F1D18 */  .space  0x04

glabel D_800F1D1C
/* 0F18CC 800F1D1C */  .space  0x04

glabel D_800F1D20
/* 0F18D0 800F1D20 */  .space  0x08

glabel D_800F1D28
/* 0F18D8 800F1D28 */  .space  0x08

glabel D_800F1D30
/* 0F18E0 800F1D30 */  .space  0x7A0

glabel D_800F24D0
/* 0F2080 800F24D0 */  .space  0x74

glabel D_800F2544
/* 0F20F4 800F2544 */  .space  0x0C

glabel D_800F2550
/* 0F2100 800F2550 */  .space  0x10

glabel D_800F2560
/* 0F2110 800F2560 */  .space  0x04

glabel D_800F2564
/* 0F2114 800F2564 */  .space  0x04

glabel D_800F2568
/* 0F2118 800F2568 */  .space  0x08

glabel D_800F2570
/* 0F2120 800F2570 */  .space  0x20

glabel D_800F2590
/* 0F2140 800F2590 */  .space  0x10

glabel D_800F25A0
/* 0F2150 800F25A0 */  .space  0x04

glabel D_800F25A4
/* 0F2154 800F25A4 */  .space  0x04

glabel D_800F25A8
/* 0F2158 800F25A8 */  .space  0x04

glabel D_800F25AC
/* 0F215C 800F25AC */  .space  0x02

glabel D_800F25AE
/* 0F215E 800F25AE */  .space  0x02

glabel D_800F25B0
/* 0F2160 800F25B0 */  .space  0x08

glabel D_800F25B8
/* 0F2168 800F25B8 */  .space  0x14

glabel D_800F25CC
/* 0F217C 800F25CC */  .space  0x0C

glabel D_800F25D8
/* 0F2188 800F25D8 */  .space  0x0C

glabel D_800F25E4
/* 0F2194 800F25E4 */  .space  0x04

glabel D_800F25E8
/* 0F2198 800F25E8 */  .space  0x08

glabel D_800F25F0
/* 0F21A0 800F25F0 */  .space  0x04

glabel D_800F25F4
/* 0F21A4 800F25F4 */  .space  0x04

glabel D_800F25F8
/* 0F21A8 800F25F8 */  .space  0x04

glabel D_800F25FC
/* 0F21AC 800F25FC */  .space  0x04

glabel D_800F2600
/* 0F21B0 800F2600 */  .space  0x04

glabel D_800F2604
/* 0F21B4 800F2604 */  .space  0x04

glabel D_800F2608
/* 0F21B8 800F2608 */  .space  0x04

glabel D_800F260C
/* 0F21BC 800F260C */  .space  0x04

glabel D_800F2610
/* 0F21C0 800F2610 */  .space  0x04

glabel D_800F2614
/* 0F21C4 800F2614 */  .space  0x04

glabel D_800F2618
/* 0F21C8 800F2618 */  .space  0x08

glabel D_800F2620
/* 0F21D0 800F2620 */  .space  0x18

glabel D_800F2638
/* 0F21E8 800F2638 */  .space  0x328

glabel D_800F2960
/* 0F2510 800F2960 */  .space  0x10

glabel D_800F2970
/* 0F2520 800F2970 */  .space  0x10

glabel D_800F2980
/* 0F2530 800F2980 */  .space  0x04

glabel D_800F2984
/* 0F2534 800F2984 */  .space  0x04

glabel D_800F2988
/* 0F2538 800F2988 */  .space  0x04

glabel D_800F298C
/* 0F253C 800F298C */  .space  0x04

glabel D_800F2990
/* 0F2540 800F2990 */  .space  0x08

glabel D_800F2998
/* 0F2548 800F2998 */  .space  0x08

glabel D_800F29A0
/* 0F2550 800F29A0 */  .space  0x04

glabel D_800F29A4
/* 0F2554 800F29A4 */  .space  0x04

glabel D_800F29A8
/* 0F2558 800F29A8 */  .space  0x04

glabel D_800F29AC
/* 0F255C 800F29AC */  .space  0x04

glabel D_800F29B0
/* 0F2560 800F29B0 */  .space  0x08

glabel D_800F29B8
/* 0F2568 800F29B8 */  .space  0x18

glabel D_800F29D0
/* 0F2580 800F29D0 */  .space  0x30

glabel D_800F2A00
/* 0F25B0 800F2A00 */  .space  0x04

glabel D_800F2A04
/* 0F25B4 800F2A04 */  .space  0x04

glabel D_800F2A08
/* 0F25B8 800F2A08 */  .space  0x04

glabel D_800F2A0C
/* 0F25BC 800F2A0C */  .space  0x04

glabel D_800F2A10
/* 0F25C0 800F2A10 */  .space  0x04

glabel D_800F2A14
/* 0F25C4 800F2A14 */  .space  0x04

glabel D_800F2A18
/* 0F25C8 800F2A18 */  .space  0x08

glabel D_800F2A20
/* 0F25D0 800F2A20 */  .space  0x04

glabel D_800F2A24
/* 0F25D4 800F2A24 */  .space  0x04

glabel D_800F2A28
/* 0F25D8 800F2A28 */  .space  0x04

glabel D_800F2A2C
/* 0F25DC 800F2A2C */  .space  0x04

glabel D_800F2A30
/* 0F25E0 800F2A30 */  .space  0x04

glabel D_800F2A34
/* 0F25E4 800F2A34 */  .space  0x04

glabel D_800F2A38
/* 0F25E8 800F2A38 */  .space  0x04

glabel D_800F2A3C
/* 0F25EC 800F2A3C */  .space  0x04

glabel D_800F2A40
/* 0F25F0 800F2A40 */  .space  0x04

glabel D_800F2A44
/* 0F25F4 800F2A44 */  .space  0x04

glabel D_800F2A48
/* 0F25F8 800F2A48 */  .space  0x04

glabel D_800F2A4C
/* 0F25FC 800F2A4C */  .space  0x04

glabel D_800F2A50
/* 0F2600 800F2A50 */  .space  0x04

glabel D_800F2A54
/* 0F2604 800F2A54 */  .space  0x04

glabel D_800F2A58
/* 0F2608 800F2A58 */  .space  0x08

glabel D_800F2A60
/* 0F2610 800F2A60 */  .space  0x2060

glabel D_800F4AC0
/* 0F4670 800F4AC0 */  .space  0x2000

glabel D_800F6AC0
/* 0F6670 800F6AC0 */  .space  0x2000

glabel D_800F8AC0
/* 0F8670 800F8AC0 */  .space  0x04

glabel D_800F8AC4
/* 0F8674 800F8AC4 */  .space  0x04

glabel D_800F8AC8
/* 0F8678 800F8AC8 */  .space  0x04

glabel D_800F8ACC
/* 0F867C 800F8ACC */  .space  0x04

glabel D_800F8AD0
/* 0F8680 800F8AD0 */  .space  0x04

glabel D_800F8AD4
/* 0F8684 800F8AD4 */  .space  0x04

glabel D_800F8AD8
/* 0F8688 800F8AD8 */  .space  0x0A

glabel D_800F8AE2
/* 0F8692 800F8AE2 */  .space  0x16

glabel D_800F8AF8
/* 0F86A8 800F8AF8 */  .space  0x10

glabel D_800F8B08
/* 0F86B8 800F8B08 */  .space  0x04

glabel D_800F8B0C
/* 0F86BC 800F8B0C */  .space  0x04

glabel D_800F8B10
/* 0F86C0 800F8B10 */  .space  0x10

glabel D_800F8B20
/* 0F86D0 800F8B20 */  .space  0x3B0

glabel D_800F8ED0
/* 0F8A80 800F8ED0 */  .space  0x18

glabel D_800F8EE8
/* 0F8A98 800F8EE8 */  .space  0x08

glabel D_800F8EF0
/* 0F8AA0 800F8EF0 */  .space  0x04

glabel D_800F8EF4
/* 0F8AA4 800F8EF4 */  .space  0x04

glabel D_800F8EF8
/* 0F8AA8 800F8EF8 */  .space  0x04

glabel D_800F8EFC
/* 0F8AAC 800F8EFC */  .space  0x04

glabel D_800F8F00
/* 0F8AB0 800F8F00 */  .space  0x08

glabel D_800F8F08
/* 0F8AB8 800F8F08 */  .space  0x18

glabel D_800F8F20
/* 0F8AD0 800F8F20 */  .space  0x04

glabel D_800F8F24
/* 0F8AD4 800F8F24 */  .space  0x04

glabel D_800F8F28
/* 0F8AD8 800F8F28 */  .space  0x08

glabel D_800F8F30
/* 0F8AE0 800F8F30 */  .space  0x08

glabel D_800F8F38
/* 0F8AE8 800F8F38 */  .space  0x1FF8

glabel D_800FAF30
/* 0FAAE0 800FAF30 */  .space  0x1B0

glabel D_800FB0E0
/* 0FAC90 800FB0E0 */  .space  0x18

glabel D_800FB0F8
/* 0FACA8 800FB0F8 */  .space  0x04

glabel D_800FB0FC
/* 0FACAC 800FB0FC */  .space  0x18

glabel D_800FB114
/* 0FACC4 800FB114 */  .space  0x04

glabel D_800FB118
/* 0FACC8 800FB118 */  .space  0x18

glabel D_800FB130
/* 0FACE0 800FB130 */  .space  0x04

glabel D_800FB134
/* 0FACE4 800FB134 */  .space  0x3C

glabel D_800FB170
/* 0FAD20 800FB170 */  .space  0x400

glabel D_800FB570
/* 0FB120 800FB570 */  .space  0x200

glabel D_800FB770
/* 0FB320 800FB770 */  .space  0x200

glabel D_800FB970
/* 0FB520 800FB970 */  .space  0x2200

glabel D_800FDB70
/* 0FD720 800FDB70 */  .space  0x10

glabel D_800FDB80
/* 0FD730 800FDB80 */  .space  0x10

glabel __osEventStateTab
/* 0FD740 800FDB90 */  .space  0x80

glabel __osContPifRam
/* 0FD7C0 800FDC10 */  .space  0x40

glabel __osContLastPoll
/* 0FD800 800FDC50 */  .space  0x01

glabel __osMaxControllers
/* 0FD801 800FDC51 */  .space  0x27

glabel D_800FDC78
/* 0FD828 800FDC78 */  .space  0x18

glabel D_800FDC90
/* 0FD840 800FDC90 */  .space  0x10

glabel osPifBuffers
/* 0FD850 800FDCA0 */  .space  0x100

glabel D_800FDDA0
/* 0FD950 800FDDA0 */  .space  0x04

glabel D_800FDDA4
/* 0FD954 800FDDA4 */  .space  0x3C

glabel D_800FDDE0
/* 0FD990 800FDDE0 */  .space  0x04

glabel D_800FDDE4
/* 0FD994 800FDDE4 */  .space  0x04

glabel D_800FDDE8
/* 0FD998 800FDDE8 */  .space  0x74

glabel D_800FDE5C
/* 0FDA0C 800FDE5C */  .space  0x04

glabel D_800FDE60
/* 0FDA10 800FDE60 */  .space  0x70

glabel D_800FDED0
/* 0FDA80 800FDED0 */  .space  0x11B0

glabel D_800FF080
/* 0FEC30 800FF080 */  .space  0x18

glabel D_800FF098
/* 0FEC48 800FF098 */  .space  0x08

glabel viThread
/* 0FEC50 800FF0A0 */  .space  0x11B0

glabel viEventQueue
/* 0FFE00 80100250 */  .space  0x18

glabel viEventBuf
/* 0FFE18 80100268 */  .space  0x18

glabel viRetraceMsg
/* 0FFE30 80100280 */  .space  0x18

glabel viCounterMsg
/* 0FFE48 80100298 */  .space  0x28

glabel tmpTask
/* 0FFE70 801002C0 */  .space  0x40

glabel D_80100300
/* 0FFEB0 80100300 */  .space  0x10

glabel siAccessBuf
/* 0FFEC0 80100310 */  .space  0x08

glabel __osSiAccessQueue
/* 0FFEC8 80100318 */  .space  0x38

glabel __osCurrentTime
/* 0FFF00 80100350 */  .space  0x08

glabel __osBaseCounter
/* 0FFF08 80100358 */  .space  0x04

glabel __osViIntrCount
/* 0FFF0C 8010035C */  .space  0x04

glabel __osTimerCounter
/* 0FFF10 80100360 */  .space  0x10

glabel D_80100370
/* 0FFF20 80100370 */  .space  0x08

glabel __osPiAccessQueue
/* 0FFF28 80100378 */  .space  0x18

glabel __osPfsPifRam
/* 0FFF40 80100390 */  .space  0x40

glabel __osThreadSave
/* 0FFF80 801003D0 */  .space  0x1B0

glabel __osPfsInodeCache
/* 100130 80100580 */  .space  0x100
