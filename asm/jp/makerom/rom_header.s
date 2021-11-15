.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x00001449       /* Revision */
.word 0x3F245305       /* Checksum 1 */
.word 0xFC0B74AA       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "PIKACHU GENKIDECHU  " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "PG"            /* Cartridge ID */
.ascii "J"             /* Country code */
.byte 0x00             /* Version */
