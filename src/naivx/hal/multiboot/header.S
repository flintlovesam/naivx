#include		<hal/multiboot/multiboot.h>

.section		.rodata
.align			8

_multiboot_header:
				.long	MULTIBOOT_HEADER_MAGIC
				.long	MULTIBOOT_HEADER_FLAGS
				.long	MULTIBOOT_HEADER_CHKSUM
