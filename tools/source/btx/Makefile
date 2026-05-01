CC = gcc

HAVE_LIBPNG := $(shell pkg-config libpng; echo $?)

ifeq ($(HAVE_LIBPNG),1)
$(error No package 'libpng' found)
endif

CFLAGS = -Wall -Wextra -Werror -Wno-sign-compare -Wno-unused-result -Wno-format-security -Wno-format-truncation -std=gnu17 -DPNG_SKIP_SETJMP_CHECK $(shell pkg-config --cflags libpng) -D_GNU_SOURCE=1

LIBS = $(shell pkg-config --libs libpng)

# maybe eventually rewrite to use cJSON because we have to fucking use it anyway
SRCS = main.c ../nitrogfx/convert_png.c ../nitrogfx/gfx.c ../nitrogfx/jasc_pal.c ../nitrogfx/util.c ../nitrogfx/json.c ../nitrogfx/cJSON.c
OBJS = $(SRCS:%.c=%.o)

.PHONY: all clean

all: btx
	@:

btx: $(SRCS)
	$(CC) $(CFLAGS) -O2 $(SRCS) -o $@ $(LIBS)

clean:
	$(RM) -r btx btx.exe $(OBJS)
