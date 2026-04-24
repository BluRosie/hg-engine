CC = gcc

HAVE_LIBPNG := $(shell pkg-config libpng; echo $?)

ifeq ($(HAVE_LIBPNG),1)
$(error No package 'libpng' found)
endif

CFLAGS = -Wno-format-security -Wno-format-truncation -Wno-unused-result -DPNG_SKIP_SETJMP_CHECK $(shell pkg-config --cflags libpng zlib)

LIBS = $(shell pkg-config --libs libpng zlib)

SRCS = main.c ../nitrogfx/convert_png.c ../nitrogfx/gfx.c ../nitrogfx/jasc_pal.c ../nitrogfx/util.c
OBJS = $(SRCS:%.c=%.o)

.PHONY: all clean

all: btx
	@:

btx: $(SRCS)
	$(CC) $(CFLAGS) -O2 $(SRCS) -o $@ $(LIBS)

clean:
	$(RM) -r btx btx.exe $(OBJS)
