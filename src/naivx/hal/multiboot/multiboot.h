#ifndef __MULTIBOOT_H__
#define __MULTIBOOT_H__

#define			MULTIBOOT_HEADER_MAGIC	0x1BADB002
#define			MULTIBOOT_HEADER_FLAGS	0x00000003
#define			MULTIBOOT_HEADER_CHKSUM	(0- (MULTIBOOT_HEADER_MAGIC + MULTIBOOT_HEADER_FLAGS))

#ifndef __ASM__
typedef struct _multiboot_info_t {
	
} multiboot_info_t, *pmultiboot_info_t;
#endif

#endif /* __MULTIBOOT_H__ */
