CC := gcc
CFLAGS := -std=c11 -O2 -Wall -Wextra -I../../..
TARGET := ../../../tools/trainerdatagen

SRCS := trainer_data_gen.c
DATA_SRC := ../../../data/Trainers.c
DATA_OBJ := TrainersData.o
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

$(DATA_OBJ): $(DATA_SRC) ../../../include/trainer_data.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(TARGET) trainerdatagen.exe $(OBJS)

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
