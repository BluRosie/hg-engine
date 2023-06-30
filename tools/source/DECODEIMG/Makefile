CC = gcc
LD = gcc

CFLAGS = -Wall -Wextra -Werror -Wno-sign-compare -std=c11 -O2 -DPNG_SKIP_SETJMP_CHECK $(shell pkg-config --cflags libpng)

LIBS = $(shell pkg-config --libs libpng)

SRCS = DECODEIMG.c ENCODEIMG.c
OBJS = $(SRCS:%.c=%.o)

.PHONY: all clean

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

ifneq ($(DEBUG),)
CFLAGS += -DDEBUG
endif

all: DECODE_IMG ENCODE_IMG
	@:

DECODE_IMG: DECODEIMG.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)

ENCODE_IMG: ENCODEIMG.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)

%.o: %.c
%.o: %.c $(DEPDIR)/%.d | $(DEPDIR)
	$(CC) $(CFLAGS) $(DEPFLAGS) -c -o $@ $<

clean:
	$(RM) DECODE_IMG $(OBJS) $(DEPDIR)

$(DEPDIR): ; @mkdir -p $@

DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
