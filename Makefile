# Include Makefile

# Compiler Flag
CC=gcc
# Object link
TARGET  = sphcitool
OBJ_LIB = sphcitool.o lib/bluetooth.o lib/hci.o
EXT_LIB = 
# Compiler
all:$(OBJ_LIB)
	$(CC) -o $(TARGET) $(OBJ_LIB) $(EXT_LIB)

	
%: %.o
	$(CC) -o $@ $^
	@$(NM) -n $@ | grep -v '\( [aUw] \)\|\(__crc_\)\|\( \$[adt]\)' > $@.map
	@$(STRIP) $@

%.o: %.c
	$(CC) $(CFLAGS) -c  -o $@ $<
	
clean:
	rm -f $(TARTGET) *.o lib/*.o

