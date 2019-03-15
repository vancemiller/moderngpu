
ifeq ($(dbg),1)
	hipccFLAGS += -g -G
endif

ifdef hipcc_BITS
	hipccFLAGS += -m $(hipcc_BITS)
endif


INCLUDES := -I ../include

hipccFLAGS	+= $(INCLUDES)
