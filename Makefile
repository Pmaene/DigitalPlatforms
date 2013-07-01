SDCC=sdcc-sdcc
SDCCFLAGS=--std-sdcc99 --verbose

default: sdcc

sdcc: main.c
	@echo "Building for $@"
	@rm -f *.hex *.ihx
	@$(SDCC) $(SDCCFLAGS) $^
