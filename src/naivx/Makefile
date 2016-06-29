.PHONY : all

CURRENT_DIR						=	$(shell pwd)/

INCLUDE							=	-I$(CURRENT_DIR)

export AS						=	gcc
export ASFLAGS					=	$(INCLUDE) -m32 -D__ASM__

export CC						=	gcc
export CFLAGS					=	-std=c99 -m32 -Wall -Wextra -fno-builtin -fno-stack-protector
export CPPFLAGS					=	$(INCLUDE)

export LD						=	ld
export LDFLAGS					=	-m elf_i386

ifndef RELEASE
CFLAGS							+=	-g
CPPFLAGS						+=	-DDEBUG
else
LDFLAGS							+=	-s
endif

TEXT_SEG						=	0x00100000
DEBUG_MAP						=	kernel.map

OBJECT_FILE_NAME				=	$(CURRENT_DIR)hal.o

all : $(OBJECT_FILE_NAME)
	@echo "linking $(TARGET)..."
	@$(LD) $^ -o $(TARGET) $(LDFLAGS) -Ttext-seg=$(TEXT_SEG) -Map $(DEBUG_MAP)
	
%.o : %/Makefile
	@$(MAKE) $* TARGET=$@
