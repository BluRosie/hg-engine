//ENCODE_IMG - pokewalker image encoder
//(c) 2020 DmitryGR
//modifications from BluRose to work with 8bpp PNG files
//newly requires libpng
//GPLv3 license

#include <stdint.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include <setjmp.h>
#include <png.h>


// various from nitrogfx

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
    fprintf(stderr, "USAGE: %s <num bytes> file.png file.pw2bpp\n\tvalues can be hex prefixed with '0x' or decimal\n", me);
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





// png functions from nitrogfx

#define FATAL_ERROR(format, ...)            \
do {                                        \
    fprintf(stderr, format, ##__VA_ARGS__); \
    exit(1);                                \
} while (0)

static FILE *PngReadOpen(char *path, png_structp *pngStruct, png_infop *pngInfo)
{
    FILE *fp = fopen(path, "rb");

    if (fp == NULL)
        FATAL_ERROR("Failed to open \"%s\" for reading.\n", path);

    unsigned char sig[8];

    if (fread(sig, 8, 1, fp) != 1)
        FATAL_ERROR("Failed to read PNG signature from \"%s\".\n", path);

    if (png_sig_cmp(sig, 0, 8))
        FATAL_ERROR("\"%s\" does not have a valid PNG signature.\n", path);

    png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);

    if (!png_ptr)
        FATAL_ERROR("Failed to create PNG read struct.\n");

    png_infop info_ptr = png_create_info_struct(png_ptr);

    if (!info_ptr)
        FATAL_ERROR("Failed to create PNG info struct.\n");

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Failed to init I/O for reading \"%s\".\n", path);

    png_init_io(png_ptr, fp);
    png_set_sig_bytes(png_ptr, 8);
    png_read_info(png_ptr, info_ptr);

    *pngStruct = png_ptr;
    *pngInfo = info_ptr;

    return fp;
}

static unsigned char *ConvertBitDepth(unsigned char *src, int srcBitDepth, int destBitDepth, int numPixels)
{
    // Round the number of bits up to the next 8 and divide by 8 to get the number of bytes.
    int srcSize = ((numPixels * srcBitDepth + 7) & ~7) / 8;
    int destSize = ((numPixels * destBitDepth + 7) & ~7) / 8;
    unsigned char *output = calloc(destSize, 1);
    unsigned char *dest = output;
    int i;
    int j;
    int destBit = 8 - destBitDepth;

    for (i = 0; i < srcSize; i++)
    {
        unsigned char srcByte = src[i];

        for (j = 8 - srcBitDepth; j >= 0; j -= srcBitDepth)
        {
            unsigned char pixel = (srcByte >> j) % (1 << srcBitDepth);

            if (pixel >= (1 << destBitDepth))
                FATAL_ERROR("Image exceeds the maximum color value for a %ibpp image.\n", destBitDepth);
            *dest |= pixel << destBit;
            destBit -= destBitDepth;
            if (destBit < 0)
            {
                dest++;
                destBit = 8 - destBitDepth;
            }
        }
    }

    return output;
}

void ReadPng(char *path, struct Image *image)
{
    png_structp png_ptr;
    png_infop info_ptr;

    FILE *fp = PngReadOpen(path, &png_ptr, &info_ptr);

    int bit_depth = png_get_bit_depth(png_ptr, info_ptr);

    int color_type = png_get_color_type(png_ptr, info_ptr);

    if (color_type != PNG_COLOR_TYPE_GRAY && color_type != PNG_COLOR_TYPE_PALETTE)
        FATAL_ERROR("\"%s\" has an unsupported color type.\n", path);

    // Check if the image has a palette so that we can tell if the colors need to be inverted later.
    // Don't read the palette because it's not needed for now.
    image->hasPalette = (color_type == PNG_COLOR_TYPE_PALETTE);

    image->width = png_get_image_width(png_ptr, info_ptr);
    image->height = png_get_image_height(png_ptr, info_ptr);

    int rowbytes = png_get_rowbytes(png_ptr, info_ptr);

    image->pixels = malloc(image->height * rowbytes);

    if (image->pixels == NULL)
        FATAL_ERROR("Failed to allocate pixel buffer.\n");

    png_bytepp row_pointers = malloc(image->height * sizeof(png_bytep));

    if (row_pointers == NULL)
        FATAL_ERROR("Failed to allocate row pointers.\n");

    for (int i = 0; i < image->height; i++)
        row_pointers[i] = (png_bytep)(image->pixels + (i * rowbytes));

    if (setjmp(png_jmpbuf(png_ptr)))
        FATAL_ERROR("Error reading from \"%s\".\n", path);

    png_read_image(png_ptr, row_pointers);

    png_destroy_read_struct(&png_ptr, &info_ptr, NULL);

    free(row_pointers);
    fclose(fp);

    if (bit_depth != image->bitDepth)
    {
        unsigned char *src = image->pixels;

        if (bit_depth != 1 && bit_depth != 2 && bit_depth != 4 && bit_depth != 8)
            FATAL_ERROR("Bit depth of image must be 1, 2, 4, or 8.\n");
        image->pixels = ConvertBitDepth(image->pixels, bit_depth, image->bitDepth, image->width * image->height);
        free(src);
        image->bitDepth = bit_depth;
    }
}









int main(int argc, char** argv)
{
    int32_t nBytes;
    uint16_t *encoded;
    uint8_t *writtenData;
    FILE *fp;
    int r, c, r2, k=0;

    if (argc != 4) {
        usage(argv[0]);
        return 0;
    }
    nBytes = getInt(argv[1]);

    if (nBytes < 0) {
        usage(argv[0]);
        return 0;
    }

    //read image
    struct Image image;
    image.bitDepth = 8;
    ReadPng(argv[2], &image); // should be 8bpp
    encoded = malloc(2*nBytes * sizeof(uint16_t));
    writtenData = malloc(4*nBytes * sizeof(uint8_t));
    for (int i = 0; i < 2*nBytes; i++)
    {
        encoded[i] = 0;
    }

    // encode
    for (r = 0; r < image.height; r += 8)
    {
        for (c = 0; c < image.width; c++, k++)
        {
            for (r2 = 0; r2 < 8; r2++)
            {
                switch (image.pixels[(r+r2)*image.width + c])
                {
                case 0b00: // white - do nothing
                    break;
                case 0b01: // dark gray
                    encoded[k] |= (0x001 << r2);
                    break;
                case 0b10: // light gray
                    encoded[k] |= (0x100 << r2);
                    break;
                case 0b11: // black
                    encoded[k] |= (0x101 << r2);
                    break;
                default:
                    printf("invalid pixel detected. %02X\n", image.pixels[(r+r2)*image.width + c]);
                    break;
                }
            }
        }
    }

    for (int i = 0; i < nBytes; i+=2)
    {
        writtenData[i+1] =  encoded[i/2]       & 0xFF;
        writtenData[i]   = (encoded[i/2] >> 8) & 0xFF;
    }

    fp = fopen(argv[3], "wb+");
    fwrite(writtenData, nBytes, 1, fp);
    fclose(fp);
    free(encoded);
    free(writtenData);

    FreeImage(&image);

    return 0;
}
