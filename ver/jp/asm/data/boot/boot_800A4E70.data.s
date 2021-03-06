.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_800A4E70
/* 0A4A20 800A4E70 */ .word 0x7FFF7FFC
/* 0A4A24 800A4E74 */ .word 0x7FF57FE8
/* 0A4A28 800A4E78 */ .word 0x7FD77FC0
/* 0A4A2C 800A4E7C */ .word 0x7FA57F84
/* 0A4A30 800A4E80 */ .word 0x7F5F7F34
/* 0A4A34 800A4E84 */ .word 0x7F057ED0
/* 0A4A38 800A4E88 */ .word 0x7E977E58
/* 0A4A3C 800A4E8C */ .word 0x7E157DCD
/* 0A4A40 800A4E90 */ .word 0x7D7F7D2D
/* 0A4A44 800A4E94 */ .word 0x7CD67C7A
/* 0A4A48 800A4E98 */ .word 0x7C1A7BB4
/* 0A4A4C 800A4E9C */ .word 0x7B497ADA
/* 0A4A50 800A4EA0 */ .word 0x7A6679ED
/* 0A4A54 800A4EA4 */ .word 0x796F78ED
/* 0A4A58 800A4EA8 */ .word 0x786677DA
/* 0A4A5C 800A4EAC */ .word 0x774976B4
/* 0A4A60 800A4EB0 */ .word 0x761A757B
/* 0A4A64 800A4EB4 */ .word 0x74D87430
/* 0A4A68 800A4EB8 */ .word 0x738472D3
/* 0A4A6C 800A4EBC */ .word 0x721E7164
/* 0A4A70 800A4EC0 */ .word 0x70A66FE3
/* 0A4A74 800A4EC4 */ .word 0x6F1C6E51
/* 0A4A78 800A4EC8 */ .word 0x6D816CAD
/* 0A4A7C 800A4ECC */ .word 0x6BD56AF9
/* 0A4A80 800A4ED0 */ .word 0x6A186933
/* 0A4A84 800A4ED4 */ .word 0x684A675D
/* 0A4A88 800A4ED8 */ .word 0x666C6577
/* 0A4A8C 800A4EDC */ .word 0x647E6381
/* 0A4A90 800A4EE0 */ .word 0x6280617C
/* 0A4A94 800A4EE4 */ .word 0x60735F67
/* 0A4A98 800A4EE8 */ .word 0x5E575D43
/* 0A4A9C 800A4EEC */ .word 0x5C2C5B11
/* 0A4AA0 800A4EF0 */ .word 0x59F258D0
/* 0A4AA4 800A4EF4 */ .word 0x57AA5681
/* 0A4AA8 800A4EF8 */ .word 0x55555425
/* 0A4AAC 800A4EFC */ .word 0x52F251BC
/* 0A4AB0 800A4F00 */ .word 0x50824F46
/* 0A4AB4 800A4F04 */ .word 0x4E064CC3
/* 0A4AB8 800A4F08 */ .word 0x4B7D4A35
/* 0A4ABC 800A4F0C */ .word 0x48E9479B
/* 0A4AC0 800A4F10 */ .word 0x464944F5
/* 0A4AC4 800A4F14 */ .word 0x439E4245
/* 0A4AC8 800A4F18 */ .word 0x40E93F8A
/* 0A4ACC 800A4F1C */ .word 0x3E293CC6
/* 0A4AD0 800A4F20 */ .word 0x3B6039F8
/* 0A4AD4 800A4F24 */ .word 0x388D3721
/* 0A4AD8 800A4F28 */ .word 0x35B23441
/* 0A4ADC 800A4F2C */ .word 0x32CE3159
/* 0A4AE0 800A4F30 */ .word 0x2FE22E69
/* 0A4AE4 800A4F34 */ .word 0x2CEF2B72
/* 0A4AE8 800A4F38 */ .word 0x29F42875
/* 0A4AEC 800A4F3C */ .word 0x26F32570
/* 0A4AF0 800A4F40 */ .word 0x23EC2266
/* 0A4AF4 800A4F44 */ .word 0x20DF1F57
/* 0A4AF8 800A4F48 */ .word 0x1DCE1C43
/* 0A4AFC 800A4F4C */ .word 0x1AB7192A
/* 0A4B00 800A4F50 */ .word 0x179C160E
/* 0A4B04 800A4F54 */ .word 0x147E12ED
/* 0A4B08 800A4F58 */ .word 0x115C0FCA
/* 0A4B0C 800A4F5C */ .word 0x0E380CA5
/* 0A4B10 800A4F60 */ .word 0x0B11097D
/* 0A4B14 800A4F64 */ .word 0x07E90654
/* 0A4B18 800A4F68 */ .word 0x04C0032A
/* 0A4B1C 800A4F6C */ .word 0x01950000

glabel D_800A4F70
/* 0A4B20 800A4F70 */ .word 0xBFED3380
/* 0A4B24 800A4F74 */ .word 0xCB6C7A7D
/* 0A4B28 800A4F78 */ .word 0xBFE810F9
/* 0A4B2C 800A4F7C */ .word 0x4C87980F
/* 0A4B30 800A4F80 */ .word 0xBFE37223
/* 0A4B34 800A4F84 */ .word 0x9E6AB9B2
/* 0A4B38 800A4F88 */ .word 0xBFDE7DF5
/* 0A4B3C 800A4F8C */ .word 0xCF2495E1
/* 0A4B40 800A4F90 */ .word 0xBFD6CB10
/* 0A4B44 800A4F94 */ .word 0x342AA9F8
/* 0A4B48 800A4F98 */ .word 0xBFCF5FD4
/* 0A4B4C 800A4F9C */ .word 0x7BEDB728
/* 0A4B50 800A4FA0 */ .word 0xBFC22DAD
/* 0A4B54 800A4FA4 */ .word 0xB8348F54
/* 0A4B58 800A4FA8 */ .word 0xBFA7739F
/* 0A4B5C 800A4FAC */ .word 0x340D4DC6

glabel D_800A4FB0
/* 0A4B60 800A4FB0 */ .word 0x10000000
/* 0A4B64 800A4FB4 */ .word 0x0000311E
/* 0A4B68 800A4FB8 */ .word 0x00000140
/* 0A4B6C 800A4FBC */ .word 0x04541E3A
/* 0A4B70 800A4FC0 */ .word 0x00000271
/* 0A4B74 800A4FC4 */ .word 0x00170C69
/* 0A4B78 800A4FC8 */ .word 0x0C6F0C6D
/* 0A4B7C 800A4FCC */ .word 0x00800300
/* 0A4B80 800A4FD0 */ .word 0x00000200
/* 0A4B84 800A4FD4 */ .word 0x00000000
/* 0A4B88 800A4FD8 */ .word 0x00000280
/* 0A4B8C 800A4FDC */ .word 0x00000400
/* 0A4B90 800A4FE0 */ .word 0x005F0239
/* 0A4B94 800A4FE4 */ .word 0x0009026B
/* 0A4B98 800A4FE8 */ .word 0x00000002
/* 0A4B9C 800A4FEC */ .word 0x00000280
/* 0A4BA0 800A4FF0 */ .word 0x00000400
/* 0A4BA4 800A4FF4 */ .word 0x005F0239
/* 0A4BA8 800A4FF8 */ .word 0x0009026B
/* 0A4BAC 800A4FFC */ .word 0x00000002

glabel D_800A5000
/* 0A4BB0 800A5000 */ .word 0x1E000000
/* 0A4BB4 800A5004 */ .word 0x0000311E
/* 0A4BB8 800A5008 */ .word 0x00000140
/* 0A4BBC 800A500C */ .word 0x04651E39
/* 0A4BC0 800A5010 */ .word 0x0000020D
/* 0A4BC4 800A5014 */ .word 0x00040C11
/* 0A4BC8 800A5018 */ .word 0x0C190C1A
/* 0A4BCC 800A501C */ .word 0x006C02EC
/* 0A4BD0 800A5020 */ .word 0x00000200
/* 0A4BD4 800A5024 */ .word 0x00000000
/* 0A4BD8 800A5028 */ .word 0x00000280
/* 0A4BDC 800A502C */ .word 0x00000400
/* 0A4BE0 800A5030 */ .word 0x002501FF
/* 0A4BE4 800A5034 */ .word 0x000E0204
/* 0A4BE8 800A5038 */ .word 0x00000002
/* 0A4BEC 800A503C */ .word 0x00000280
/* 0A4BF0 800A5040 */ .word 0x00000400
/* 0A4BF4 800A5044 */ .word 0x002501FF
/* 0A4BF8 800A5048 */ .word 0x000E0204
/* 0A4BFC 800A504C */ .word 0x00000002

glabel D_800A5050
/* 0A4C00 800A5050 */ .word 0x02000000
/* 0A4C04 800A5054 */ .word 0x0000311E
/* 0A4C08 800A5058 */ .word 0x00000140
/* 0A4C0C 800A505C */ .word 0x03E52239
/* 0A4C10 800A5060 */ .word 0x0000020D
/* 0A4C14 800A5064 */ .word 0x00000C15
/* 0A4C18 800A5068 */ .word 0x0C150C15
/* 0A4C1C 800A506C */ .word 0x006C02EC
/* 0A4C20 800A5070 */ .word 0x00000200
/* 0A4C24 800A5074 */ .word 0x00000000
/* 0A4C28 800A5078 */ .word 0x00000280
/* 0A4C2C 800A507C */ .word 0x00000400
/* 0A4C30 800A5080 */ .word 0x002501FF
/* 0A4C34 800A5084 */ .word 0x000E0204
/* 0A4C38 800A5088 */ .word 0x00000002
/* 0A4C3C 800A508C */ .word 0x00000280
/* 0A4C40 800A5090 */ .word 0x00000400
/* 0A4C44 800A5094 */ .word 0x002501FF
/* 0A4C48 800A5098 */ .word 0x000E0204
/* 0A4C4C 800A509C */ .word 0x00000002
