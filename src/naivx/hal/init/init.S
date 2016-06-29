#define			GDT_SELECTOR_CODE	(_gdt_code - _gdt)
#define			GDT_SELECTOR_DATA	(_get_data - _gdt)

.extern			hal_main
.global			_start

.section		.rodata
				
_gdt:			.quad	0x0000000000000000
_gdt_code:		.quad	0x00cf9b000000ffff
_get_data:		.quad	0x00cf93000000ffff
gdt_end:
				
_gdtr:
				.word	(gdt_end - _gdt - 1)
				.long	_gdt
				
.section		.bss
.lcomm			stack, 4 * 1024
_stack_top:

.section		.text
.code32

_start:
				lgdt	_gdtr
				jmp		$GDT_SELECTOR_CODE, $_gdt_refresh
_gdt_refresh:
				mov		$GDT_SELECTOR_DATA, %ecx
				mov		%cx, %ds
				mov		%cx, %ss
				mov		%cx, %es
				mov		%cx, %fs
				mov		%cx, %gs
				
				mov		$_stack_top, %esp
				
				push	%ebx
				push	%eax
				call	hal_main
				
_loop:
				hlt
				jmp		_loop
				
