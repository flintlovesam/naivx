#this is for x86
.PHONY : all clean

CURRENT_DIR						=	$(shell pwd)/
export ROOT						=	$(CURRENT_DIR)

export MAKE						=	make -C

TARGET_NAME						=	$(CURRENT_DIR)naivx.out

all : $(TARGET_NAME)
	
clean :
	-@find ./ -name "*.o"  | xargs rm -f
	-@rm -f $(TARGET_NAME)
	
%.out : %/Makefile
	@$(MAKE) $* TARGET=$@
	
