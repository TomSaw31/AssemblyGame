ASM = as
LD = ld
ASM_FLAGS = 
LD_FLAGS = 

SOURCES = constants.s functions.s display.s main.s
OBJECTS = $(SOURCES:.s=.o)

EXEC = game

all: $(EXEC)

$(EXEC): $(OBJECTS)
	$(LD) $(LD_FLAGS) -o $(EXEC) $(OBJECTS)

%.o: %.s
	$(ASM) $(ASM_FLAGS) -o $@ $<

clean:
	rm -f $(OBJECTS) $(EXEC)

.PHONY: all clean
