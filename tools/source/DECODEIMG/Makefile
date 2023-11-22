CC = gcc

HAVE_LIBPNG := $(shell pkg-config libpng; echo $?)

ifeq ($(HAVE_LIBPNG),1)
$(error No package 'libpng' found)
endif

MAC = $(shell uname -s | grep -i -q 'darwin'; echo $$?)

ifeq ($(MAC), 0)
LIBS = -L$(shell brew --prefix libpng)/lib -lpng16
LIBFLAGS = -I$(shell brew --prefix libpng)/include
else
LIBS = $(shell pkg-config --libs libpng zlib)
LIBFLAGS = $(shell pkg-config --cflags libpng zlib)
endif

CFLAGS = -Wall -Wextra -Werror -Wno-sign-compare -std=c11 -O2 -DPNG_SKIP_SETJMP_CHECK $(LIBFLAGS)

SRCS_DECODE = DECODEIMG.c
SRCS_ENCODE = ENCODEIMG.c
OBJS = $(SRCS_DECODE:%.c=%.o) $(SRCS_ENCODE:%.c=%.o)

.PHONY: all clean

all: ENCODE_IMG
	@:

DECODE_IMG: DECODEIMG.o
	$(CC) $(CFLAGS) $(SRCS_DECODE) -o $@ $(LDFLAGS) $(LIBS)

ENCODE_IMG: ENCODEIMG.o
	$(CC) $(CFLAGS) $(SRCS_ENCODE) -o $@ $(LDFLAGS) $(LIBS)

clean:
	$(RM) DECODE_IMG $(OBJS) $(DEPDIR)
