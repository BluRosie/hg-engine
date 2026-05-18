CC := gcc
CFLAGS := -std=c11 -O2 -Wall -Wextra -I../../.. -DPOKEDEX_DATAGEN
TARGET := ../../../tools/pokedexdatagen

SRCS := pokedex_data_gen.c
DATA_SRCS := ../../../data/PokedexSort.c ../../../data/PokedexArea.c
DATA_OBJS := PokedexSortDataData.o PokedexAreaDataData.o
OBJS := $(SRCS:%.c=%.o) $(DATA_OBJS)

.PHONY: all clean

all: $(TARGET)
	@:

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d
$(DEPDIR): ; @mkdir -p $@

%.o: %.c
%.o: %.c $(DEPDIR)/%.d | $(DEPDIR)
	$(CC) $(CFLAGS) $(DEPFLAGS) -c -o $@ $<

PokedexSortDataData.o: ../../../data/PokedexSort.c ../../../include/pokedex_archive_data.h
	$(CC) $(CFLAGS) -c -o $@ $<

PokedexAreaDataData.o: ../../../data/PokedexArea.c ../../../include/pokedex_archive_data.h ../../../include/constants/pokedex.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(TARGET) pokedexdatagen.exe $(OBJS)

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
