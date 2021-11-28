.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80137EE0
/* 029B80 80137EE0 */  .space  0x04

glabel D_80137EE4
/* 029B84 80137EE4 */  .space  0x04

glabel D_80137EE8
/* 029B88 80137EE8 */  .space  0x0C

glabel D_80137EF4
/* 029B94 80137EF4 */  .space  0x04

glabel D_80137EF8
/* 029B98 80137EF8 */  .space  0x04

glabel D_80137EFC
/* 029B9C 80137EFC */  .space  0x04

glabel D_80137F00
/* 029BA0 80137F00 */  .space  0x10

glabel D_80137F10
/* 029BB0 80137F10 */  .space  0x100

glabel D_80138010
/* 029CB0 80138010 */  .space  0x04

glabel D_80138014
/* 029CB4 80138014 */  .space  0x04

glabel D_80138018
/* 029CB8 80138018 */  .space  0x08

glabel D_80138020
/* 029CC0 80138020 */  .space  0x100

glabel D_80138120
/* 029DC0 80138120 */  .space  0x10

glabel D_80138130
/* 029DD0 80138130 */  .space  0x04

glabel D_80138134
/* 029DD4 80138134 */  .space  0x0C

glabel D_80138140
/* 029DE0 80138140 */  .space  0x08

glabel D_80138148
/* 029DE8 80138148 */  .space  0x08

glabel D_80138150
/* 029DF0 80138150 */  .space  0x10

glabel D_80138160
/* 029E00 80138160 */  .space  0x50

glabel D_801381B0
/* 029E50 801381B0 */  .space  0x20

glabel D_801381D0
/* 029E70 801381D0 */  .space  0x08

glabel D_801381D8
/* 029E78 801381D8 */  .space  0x08

glabel D_801381E0
/* 029E80 801381E0 */  .space  0x08

glabel D_801381E8
/* 029E88 801381E8 */  .space  0x14

glabel D_801381FC
/* 029E9C 801381FC */  .space  0x04

glabel D_80138200
/* 029EA0 80138200 */  .space  0x04

glabel D_80138204
/* 029EA4 80138204 */  .space  0x04

glabel D_80138208
/* 029EA8 80138208 */  .space  0x04

glabel D_8013820C
/* 029EAC 8013820C */  .space  0x04

glabel D_80138210
/* 029EB0 80138210 */  .space  0x04

glabel D_80138214
/* 029EB4 80138214 */  .space  0x04

glabel D_80138218
/* 029EB8 80138218 */  .space  0x30

glabel D_80138248
/* 029EE8 80138248 */  .space  0x04

glabel D_8013824C
/* 029EEC 8013824C */  .space  0x04

glabel D_80138250
/* 029EF0 80138250 */  .space  0x08

glabel D_80138258
/* 029EF8 80138258 */  .space  0x28

glabel D_80138280
/* 029F20 80138280 */  .space  0x30

glabel D_801382B0
/* 029F50 801382B0 */  .space  0x04

glabel D_801382B4
/* 029F54 801382B4 */  .space  0x04

glabel D_801382B8
/* 029F58 801382B8 */  .space  0x60

glabel D_80138318
/* 029FB8 80138318 */  .space  0x08

glabel D_80138320
/* 029FC0 80138320 */  .space  0x50
