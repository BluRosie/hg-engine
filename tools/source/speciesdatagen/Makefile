CC := gcc
CFLAGS := -std=c11 -O2 -Wall -Wextra -I../../..
TARGET := ../../../tools/speciesdatagen

SRCS := species_data_gen.c
DATA_SRC := ../../../data/Species.c
DATA_OBJ := SpeciesDataData.o
OBJS := $(SRCS:%.c=%.o) $(DATA_OBJ)

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

$(DATA_OBJ): $(DATA_SRC) ../../../include/species_data.h ../../../include/config.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(TARGET) speciesdatagen.exe $(OBJS)

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
