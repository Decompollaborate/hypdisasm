.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x0000144B       /* Revision */
.word 0xD3F10E5D       /* Checksum 1 */
.word 0x052EA579       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "hey you, pikachu    " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "PG"            /* Cartridge ID */
.ascii "E"             /* Country code */
.byte 0x00             /* Version */