.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80133DE0
/* 0292F0 80133DE0 */  .space  0x04

glabel D_80133DE4
/* 0292F4 80133DE4 */  .space  0x04

glabel D_80133DE8
/* 0292F8 80133DE8 */  .space  0x0C

glabel D_80133DF4
/* 0292FC 80133DF4 */  .space  0x04

glabel D_80133DF8
/* 029300 80133DF8 */  .space  0x04

glabel D_80133DFC
/* 029304 80133DFC */  .space  0x04

glabel D_80133E00
/* 029308 80133E00 */  .space  0x10

glabel D_80133E10
/* 02930C 80133E10 */  .space  0x100

glabel D_80133F10
/* 029310 80133F10 */  .space  0x04

glabel D_80133F14
/* 029314 80133F14 */  .space  0x04

glabel D_80133F18
/* 029318 80133F18 */  .space  0x08

glabel D_80133F20
/* 02931C 80133F20 */  .space  0x100

glabel D_80134020
/* 029320 80134020 */  .space  0x10

glabel D_80134030
/* 029324 80134030 */  .space  0x04

glabel D_80134034
/* 029328 80134034 */  .space  0x0C

glabel D_80134040
/* 02932C 80134040 */  .space  0x08

glabel D_80134048
/* 029330 80134048 */  .space  0x08

glabel D_80134050
/* 029334 80134050 */  .space  0x10

glabel D_80134060
/* 029338 80134060 */  .space  0x50

glabel D_801340B0
/* 02933C 801340B0 */  .space  0x20

glabel D_801340D0
/* 029340 801340D0 */  .space  0x08

glabel D_801340D8
/* 029344 801340D8 */  .space  0x08

glabel D_801340E0
/* 029348 801340E0 */  .space  0x08

glabel D_801340E8
/* 02934C 801340E8 */  .space  0x14

glabel D_801340FC
/* 029350 801340FC */  .space  0x04

glabel D_80134100
/* 029354 80134100 */  .space  0x04

glabel D_80134104
/* 029358 80134104 */  .space  0x04

glabel D_80134108
/* 02935C 80134108 */  .space  0x04

glabel D_8013410C
/* 029360 8013410C */  .space  0x04

glabel D_80134110
/* 029364 80134110 */  .space  0x04

glabel D_80134114
/* 029368 80134114 */  .space  0x04

glabel D_80134118
/* 02936C 80134118 */  .space  0x30

glabel D_80134148
/* 029370 80134148 */  .space  0x04

glabel D_8013414C
/* 029374 8013414C */  .space  0x04

glabel D_80134150
/* 029378 80134150 */  .space  0x08

glabel D_80134158
/* 02937C 80134158 */  .space  0x28

glabel D_80134180
/* 029380 80134180 */  .space  0x30

glabel D_801341B0
/* 029384 801341B0 */  .space  0x04

glabel D_801341B4
/* 029388 801341B4 */  .space  0x04

glabel D_801341B8
/* 02938C 801341B8 */  .space  0x60

glabel D_80134218
/* 029390 80134218 */  .space  0x08

glabel D_80134220
/* 029394 80134220 */  .space  0x50
