SDCC=sdcc-sdcc
SDCCFLAGS=--std-sdcc99 --verbose

UNAME=$(shell uname -n)
ifeq ($(UNAME), ubuntu)
    SDCC=sdcc
endif

default: sdcc

sdcc: main.c
	@echo "Building for $@"
	@rm -f *.hex *.ihx
	@$(SDCC) $(SDCCFLAGS) $^
