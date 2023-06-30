//DECODE_IMG - pokewalker image decoder
//(c) 2020 DmitryGR
//modifications from BluRose to save to 8bpp PNG
//newly requires libpng
//GPLv3 license

#include <stdint.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include <setjmp.h>
#include <png.h>



struct Color {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
};

struct Palette {
    struct Color colors[256];
    int numColors;
    int bitDepth;
};

struct Image {
    int width;
    int height;
    int bitDepth;
    unsigned char *pixels;
    uint32_t hasPalette;
    struct Palette palette;
    uint32_t hasTransparency;
};


void FreeImage(struct Image *image)
{
    free(image->pixels);
    image->pixels = NULL;
}

static void usage(const char *me)
{
    fprintf(stderr, "USAGE: %s <offset> <num bytes> <img width> <offset to map file to> output.png < file.2bpp\n\tvalues can be hex prefixed with '0x' or decimal\n", me);
}

static int32_t getInt(const char *str)
{
    if (!str || !*str)
        return -1;

    if (str[0] == '0' && str[1] == 'x')
        return strtoul(str + 2, NULL, 16);
    else
        return strtoul(str, NULL, 10);
}





// png functions

#define FATAL_ERROR(format, ...)            \
do {                                        \
    fprintf(stderr, format, ##__VA_ARGS__); \
    exit(1);                                \
} while (0)

void SetPngPalette(png_structp png_ptr, png_infop info_ptr, struct Palette *palette)
{
    png_colorp colors = malloc(palette->numColors * sizeof(png_color));

    if (colors == NULL)
        FATAL_ERROR("Failed to allocate PNG palette.\n");

    for (int i = 0; i < palette->numColors; i++) {
        colors[i].red = palette->colors[i].red;
        colors[i].green = palette->colors[i].green;
        colors[i].blue = palette->colors[i].blue;
    }

    png_set_PLTE(png_ptr, info_ptr, colors, palette->numColors);

    free(colors);
}

void WritePng(char *path, struct Image *image)
{
    FILE *fp = fopen(path, "wb");

    if (fp == NULL)
        FATAL_ERROR("Failed to open \"%s\" for writing.\n", path);

    png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);

    if (!png_ptr)
        FATAL_ERROR("Failed to create PNG write struct.\n");

    png_infop info_ptr = png_create_info_struct(png_ptr);

    if (!info_ptr)
        FATAL_ERROR("Failed to create PNG info struct.\n");

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Failed to init I/O for writing \"%s\".\n", path);

    png_init_io(png_ptr, fp);

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Error writing header for \"%s\".\n", path);

    int color_type = image->hasPalette ? PNG_COLOR_TYPE_PALETTE : PNG_COLOR_TYPE_GRAY;

    png_set_IHDR(png_ptr, info_ptr, image->width, image->height,
        image->bitDepth, color_type, PNG_INTERLACE_NONE,
        PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

    if (image->hasPalette) {
        SetPngPalette(png_ptr, info_ptr, &image->palette);

        if (image->hasTransparency) {
            png_byte trans = 0;
            png_set_tRNS(png_ptr, info_ptr, &trans, 1, 0);
        }
    }

    png_write_info(png_ptr, info_ptr);

    png_bytepp row_pointers = malloc(image->height * sizeof(png_bytep));

    if (row_pointers == NULL)
        FATAL_ERROR("Failed to allocate row pointers.\n");

    int rowbytes = png_get_rowbytes(png_ptr, info_ptr);

    for (int i = 0; i < image->height; i++)
        row_pointers[i] = (png_bytep)(image->pixels + (i * rowbytes));

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Error writing \"%s\".\n", path);

    png_write_image(png_ptr, row_pointers);

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Error ending write of \"%s\".\n", path);

    png_write_end(png_ptr, NULL);

    fclose(fp);

    png_destroy_write_struct(&png_ptr, &info_ptr);
    free(row_pointers);
}









int main(int argc, char** argv)
{
    int32_t ofst, nBytes, width, i, nWords, height;
    uint16_t *inputData;
    int r, r2, c, c2;

    if (argc != 6) {
        usage(argv[0]);
        return 0;
    }

    ofst = getInt(argv[1]);
    nBytes = getInt(argv[2]);
    width = getInt(argv[3]);

    ofst = ofst - getInt(argv[4]);

    if (ofst < 0 || nBytes < 0 || width < 0) {
        usage(argv[0]);
        return 0;
    }

    if ((nBytes % 2) || ((nBytes / 2)% width)) {
        fprintf(stderr, "provided width %u does not mesh with provided byte length %u\n", width, nBytes);
        usage(argv[0]);
        return 0;
    }

    //skip start
    while (ofst-- && (c = getchar()) != EOF);
    if (c == EOF) {
        fprintf(stderr, "input file too short for the given offset\n");
        usage(argv[0]);
        return 0;
    }

    //alloc space for and read the data
    nWords = nBytes / 2;
    inputData = malloc(nBytes * sizeof(uint16_t));
    for (i = 0; i < nWords; i++) {

        if ((c = getchar()) == EOF || (c2 = getchar()) == EOF) {
            fprintf(stderr, "input file too short for the given length\n");
            usage(argv[0]);
            return 0;
        }
        inputData[i] = (c << 8) + c2;
    }

    //alloc space for the image
    height = nWords * 8 / width;
    struct Image image;
    image.pixels = malloc(10*width * height * sizeof(uint8_t));


    //decode
    for (r = 0; r < height; r += 8) {
        for (c = 0; c < width; c++, inputData++) {
            for (r2 = 0; r2 < 8; r2++) {
                switch ((*inputData >> r2) & 0x0101) {
                    case 0x000: //white
                        image.pixels[(r + r2) * width + c] = 0b00;
                        break;
                    case 0x001: //dark grey
                        image.pixels[(r + r2) * width + c] = 0b01;
                        break;
                    case 0x100: //light grey
                        image.pixels[(r + r2) * width + c] = 0b10;
                        break;
                    case 0x101: //black
                        image.pixels[(r + r2) * width + c] = 0b11;
                        break;
                }
            }
        }
    }

    fprintf(stderr, "image %u x %u: %s\n", width, height, argv[5]);

    struct Palette palette = {
        .colors = {{255, 255, 255}, {168, 168, 168}, {80, 80, 80}, {0, 0, 0}},
        .numColors = 4,
        .bitDepth = 8,
    };


    image.width = width;
    image.height = height;
    image.bitDepth = 8;
    image.hasPalette = 1;
    image.palette = palette;
    image.hasTransparency = 0;

    WritePng(argv[5], &image);

    FreeImage(&image);

    return 0;
}
