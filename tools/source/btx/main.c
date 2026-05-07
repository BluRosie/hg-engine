/*

author: blurose
btx0 converter written in C to make it faster than the python script that was previously used.
not particularly concerned about generic btx0 compatibility.  mostly concerned about matching the overworlds in a081

i read up on the performance difference between one byte at a time and having a buffer for
the whole file.  i think we are okay to read one byte at a time because the operating system will cover us.

*/

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

// files from nitrogfx!  directly included from there too
#include "../nitrogfx/gfx.h"
#include "../nitrogfx/convert_png.h"
#include "../nitrogfx/jasc_pal.h"

#ifdef DEBUG
#define debug_printf(...) { printf(__VA_ARGS__); }
#else
#define debug_printf(...) { ; }
#endif

// move it to a header or something eventually
#define TRUE 1
#define FALSE 0

#define MAX_STRING_SIZE (256)
// base hero/heroine has 32 frame entries
#define MAX_FRAME_QUANTITY (32)
// apricorn tree (bonguri) has like 7 frames.  round up to 8 i guess
#define MAX_PALETTE_QUANTITY (8)
// offset in btx of TEX header
#define BTX_TEX_OFFSET 0x14
// offset of properties
#define BTX_PROPERTIES_OFFSET 0x50

#define SET_GBA_PAL(r, g, b) (((b) << 10) | ((g) << 5) | (r))
#define DOWNCONVERT_BIT_DEPTH(x) ((x) / 8)
#define STRING_EQUALS_STRING(str1, str2) (strcmp((str1), (str2)) == 0)
#define ERROR(...) { fprintf(stderr, __VA_ARGS__); fprintf(stderr, sUsageString); return 1; }


char sUsageString[] = "USAGE: btx input.png output.btx0 [options]\n\
\n\
this is not meant to be a generic btx0 handler\n\
it is merely an overworld btx0 handler as they appear in hgss\n\
idea is that we can provide an image and this handles it\n\
has a --dump/-d option because of course it does\n\
just dumps the image with a proper palette\n\
input is assumed to be png and output is assumed to be btx0\n\
this holds true for --dump option--same order of png btx0\n\
\n\
options:\n\
-d          dump image from btx0 with proper palette assignment.  also --dump\n\n";

char *pngFileName = NULL;
char *btxFileName = NULL;

struct BTX0_JSON_FRAME {
	char name[MAX_STRING_SIZE]; // name is stored at the front
	int unkBlockUnk0;
	int unkBlockUnk1;
	int unk0;
	int unk1;
	int unk2;
	uint8_t frame;
	uint8_t coordTrans;
	uint8_t color0;
	uint8_t format;
	uint8_t height;
	uint8_t width;
	uint8_t flipY;
	uint8_t flipX;
	uint8_t repeatX;
	uint8_t repeatY;
};

struct BTX0_JSON_PALETTE {
	char fileName[MAX_STRING_SIZE]; // this is just a reference to the actual file
	char name[MAX_STRING_SIZE]; // name is stored at the front
	int offset;
	int unk0;
	int unk1;
};

struct BTX0_JSON {
	struct BTX0_JSON_FRAME frames[MAX_FRAME_QUANTITY];
	struct BTX0_JSON_PALETTE palettes[MAX_PALETTE_QUANTITY];
	int numFrames;
	int numSeparateFrames;
	int numPalettes;
	int width;
	int height;
};

static int dumpBtxToPngAndMappings(void);
static int buildBtxFromPngAndMappings(void);
static int rebuildParameterValues(struct BTX0_JSON_FRAME *frame);
static void writeField(FILE *file, int offset, unsigned int data, int size);
static inline int copyStringToArray(char *arr, char *str);
static inline unsigned int bit_to_num(unsigned int num);

int main(int argc, char **argv) {
	// handle arguments
	int ret = 0;
    if (argc == 1) { // only the exe name was provided
		// no arguments?  print help then quit
		fprintf(stderr, sUsageString);
		return 1;
	} else { // argc > 1
		int i = 1;
		int dumpFlag = FALSE;
		char *currArg = NULL;
		// handle dump first because how we interpret pngFileName and btxFileName depends on it
		for (i = 1; i < argc; i++) {
			currArg = argv[i];
			if (STRING_EQUALS_STRING("-d", currArg) || STRING_EQUALS_STRING("--dump", currArg)) {
				dumpFlag = TRUE;
				debug_printf("Dumping...\n");
				break;
			}
		}
		// handle the separate kinds of arguments
		for (i = 1; i < argc; i++) {
			currArg = argv[i];
			if (STRING_EQUALS_STRING("-d", currArg) || STRING_EQUALS_STRING("--dump", currArg)) {
				continue;
			} else if (pngFileName == NULL) {
				// if the file does not exist, we can not assemble the btx
				if (access(currArg, F_OK) != 0 && dumpFlag == FALSE) {
					ERROR("ERROR: %s is not a valid path for input PNG\n\n", currArg);
				}
				pngFileName = currArg;
				debug_printf("PNG file at %s.\n", pngFileName);
			} else if (btxFileName == NULL) {
				if (access(currArg, F_OK) != 0 && dumpFlag == TRUE) {
					ERROR("ERROR: %s is not a valid path for input BTX\n\n", currArg);
				}
				btxFileName = currArg;
				debug_printf("BTX file at %s.\n", btxFileName);
			} else {
				ERROR("ERROR: Not sure what to do with argument \"%s\".\n\n", currArg);
			}
		}
		if (pngFileName == NULL) {
			ERROR("ERROR: png file not specified.\n\n");
		} else if (btxFileName == NULL) {
			ERROR("ERROR: BTX file not specified.\n\n");
		}

		// can now finally do the conversion
		if (dumpFlag) ret = dumpBtxToPngAndMappings();
		else ret = buildBtxFromPngAndMappings();
	}
	return ret;
}

static int dumpBtxToPngAndMappings(void) {
	// will do dumping in a while
	return 0;
}

static int buildBtxFromPngAndMappings(void) {
	FILE *btxFile = fopen(btxFileName, "wb"), *jsonFile = NULL;
	struct Image image = {0};
	struct Palette palettes[MAX_PALETTE_QUANTITY] = {0};
	char metadataStr[MAX_STRING_SIZE] = {0}; // 256-char file name limit
	char jsonStr[MAX_STRING_SIZE] = {0}; // 256-char file name limit
	char tempStr[MAX_STRING_SIZE] = {0};
	char *subStr = NULL;
	struct BTX0_JSON json = {0}; // stack yay
	int strLen = 0, i = 0, j = 0, suffix = 0;
	int frameDumping = FALSE, palDumping = FALSE, currIndex = -1;

	if (btxFile == NULL) {
		ERROR("btxFile (%s) can not be opened to dump to.\n\n", btxFileName);
	}

	strLen = copyStringToArray(metadataStr, pngFileName);
	subStr = strstr(metadataStr, ".png");
	if (subStr != NULL) {
		subStr[0] = '\0';
		strLen -= 4; // len(".png")
	}
	copyStringToArray(jsonStr, metadataStr);
	copyStringToArray(&jsonStr[strLen], ".json");

	jsonFile = fopen(jsonStr, "r");
	if (jsonFile == NULL) {
		fclose(btxFile);
		ERROR("jsonFile (%s) can not be opened for reading.\n\n", jsonStr);
	}

	// parse the json line by line until EOF
	while (fgets(tempStr, MAX_STRING_SIZE, jsonFile) != NULL) {
		if (strstr(tempStr, "\"frames\"")) {
			frameDumping = TRUE;
			palDumping = FALSE;
			currIndex = -1;
		} else if (strstr(tempStr, "\"palettes\"")) {
			frameDumping = FALSE;
			palDumping = TRUE;
			json.numFrames = currIndex + 1;
			json.numSeparateFrames++;
			currIndex = -1;
		} else if (frameDumping == TRUE) {
			if ((subStr = strstr(tempStr, "\"frame\":")) != NULL) {
				json.frames[currIndex].frame = atoi(&subStr[8]);
				if (json.frames[currIndex].frame > json.numSeparateFrames)
					json.numSeparateFrames = json.frames[currIndex].frame;
			} else if ((subStr = strstr(tempStr, "\"coordTrans\":")) != NULL) {
				json.frames[currIndex].coordTrans = atoi(&subStr[13]);
			} else if ((subStr = strstr(tempStr, "\"color0\":")) != NULL) {
				json.frames[currIndex].color0 = atoi(&subStr[9]);
			} else if ((subStr = strstr(tempStr, "\"format\":")) != NULL) {
				json.frames[currIndex].format = atoi(&subStr[9]);
			} else if ((subStr = strstr(tempStr, "\"height\":")) != NULL) {
				json.frames[currIndex].height = atoi(&subStr[9]);
				if (json.height == 0) json.height = json.frames[currIndex].height;
			} else if ((subStr = strstr(tempStr, "\"width\":")) != NULL) {
				json.frames[currIndex].width = atoi(&subStr[8]);
				if (json.width == 0) json.width = json.frames[currIndex].width;
			} else if ((subStr = strstr(tempStr, "\"flipY\":")) != NULL) {
				json.frames[currIndex].flipY = atoi(&subStr[8]);
			} else if ((subStr = strstr(tempStr, "\"flipX\":")) != NULL) {
				json.frames[currIndex].flipX = atoi(&subStr[8]);
			} else if ((subStr = strstr(tempStr, "\"repeatY\":")) != NULL) {
				json.frames[currIndex].repeatY = atoi(&subStr[10]);
			} else if ((subStr = strstr(tempStr, "\"repeatX\":")) != NULL) {
				json.frames[currIndex].repeatX = atoi(&subStr[10]);
			} else if ((subStr = strstr(tempStr, "\"unkBlockUnk0\":")) != NULL) {
				json.frames[currIndex].unkBlockUnk0 = atoi(&subStr[15]);
			} else if ((subStr = strstr(tempStr, "\"unkBlockUnk1\":")) != NULL) {
				json.frames[currIndex].unkBlockUnk1 = atoi(&subStr[15]);
			} else if ((subStr = strstr(tempStr, "\"unk0\":")) != NULL) {
				json.frames[currIndex].unk0 = atoi(&subStr[7]);
			} else if ((subStr = strstr(tempStr, "\"unk1\":")) != NULL) {
				json.frames[currIndex].unk1 = atoi(&subStr[7]);
			} else if ((subStr = strstr(tempStr, "\"unk2\":")) != NULL) {
				json.frames[currIndex].unk2 = atoi(&subStr[7]);
			} else if ((subStr = strstr(tempStr, "\"")) != NULL) {
				// store frame name to structure, increment current number
				currIndex++;
				copyStringToArray(json.frames[currIndex].name, &subStr[1]);
				subStr = strstr(json.frames[currIndex].name, "\":");
				*subStr = '\0';
			}
		} else if (palDumping == TRUE) {
			if ((subStr = strstr(tempStr, "\"offset\":")) != NULL) {
				json.palettes[currIndex].offset = atoi(&subStr[9]);
			} else if ((subStr = strstr(tempStr, "\"unk0\":")) != NULL) {
				json.palettes[currIndex].unk0 = atoi(&subStr[7]);
			} else if ((subStr = strstr(tempStr, "\"unk1\":")) != NULL) {
				json.palettes[currIndex].unk1 = atoi(&subStr[7]);
			} else if ((subStr = strstr(tempStr, "\"fileName\":")) != NULL) {
				copyStringToArray(json.palettes[currIndex].fileName, &subStr[13]); // len("\"fileName\": \"")
				subStr = strstr(json.palettes[currIndex].fileName, "\"");
				*subStr = '\0';
			} else if ((subStr = strstr(tempStr, "\"")) != NULL) {
				// store palette name to structure, increment current number
				currIndex++;
				copyStringToArray(json.palettes[currIndex].name, &subStr[1]);
				subStr = strstr(json.palettes[currIndex].name, "\":");
				*subStr = '\0';
			}
		}
	}
	json.numPalettes = currIndex + 1;

	debug_printf("%d frame(s):\n", json.numFrames);
	for (i = 0; i < json.numFrames; i++) {
		debug_printf("    %d: name %s, unkBlockUnk0 %d, unkBlockUnk1 %d\n", i, json.frames[i].name, json.frames[i].unkBlockUnk0, json.frames[i].unkBlockUnk1);
	}

	debug_printf("%d palette(s):\n", json.numPalettes);
	for (i = 0; i < json.numPalettes; i++) {
		debug_printf("    %d: name %s, fileName %s, unk0 %d, unk1 %d\n", i, json.palettes[i].name, json.palettes[i].fileName, json.palettes[i].unk0, json.palettes[i].unk1);
	}

	// convert everything
	{
		int numPixels;

		image.bitDepth = 4; // this ideally triggers a conversion every time
		ReadPng(pngFileName, &image);
		// image.pixels already has a good idea at this point of what the output buffer will be
		numPixels = image.width * image.height / 2;
		for (i = 0; i < numPixels; i++) {
			// bit depth is always 4
			unsigned char currentPixel = image.pixels[i];
			image.pixels[i] = (unsigned char)((currentPixel << 4) | (currentPixel >> 4));
		}
		for (i = 0; i < json.numPalettes; i++) {
			snprintf(tempStr, MAX_STRING_SIZE, "%s-%s", metadataStr, json.palettes[i].fileName);
			ReadJascPalette(tempStr, &palettes[i]);
		}
	}

	{ // write BTX to binary
		int textureDataSize = json.numSeparateFrames * json.height * json.width / 16;
		int paletteInfoOffset = BTX_PROPERTIES_OFFSET + 0x10 + json.numFrames * 0x1C;
		int textureOffset = (paletteInfoOffset + 0x10 + (0x18 * json.numPalettes));
		int paletteOffset = textureOffset + 8 * textureDataSize;
		int newBaseOffset;
		FILE *source;

		writeField(btxFile, paletteInfoOffset + 1, json.numPalettes, 1);
		writeField(btxFile, paletteInfoOffset + 2, 0x10 + json.numPalettes * 0x18, 2);
		writeField(btxFile, paletteInfoOffset + 4, 8, 2);
		writeField(btxFile, paletteInfoOffset + 6, 0xC + json.numPalettes*4, 2);
		writeField(btxFile, paletteInfoOffset + 8, 0x17F, 4);
		writeField(btxFile, paletteInfoOffset + 0xC + (0x4 * json.numPalettes), 4, 2);
		writeField(btxFile, paletteInfoOffset + 0xC + (0x4 * json.numPalettes) + 2, 4 + 4*json.numPalettes, 2);
		for (i = 0; i < json.numPalettes; i++) {
			writeField(btxFile, paletteInfoOffset + 0xC + (0x4 * i), json.palettes[i].unk0, 2);
			writeField(btxFile, paletteInfoOffset + 0xE + (0x4 * i), json.palettes[i].unk1, 2);
			writeField(btxFile, paletteInfoOffset + 0x10 + (0x4 * json.numPalettes) + (0x4 * i), json.palettes[i].offset * 4, 4);
			for (j = 0; j < 16 && json.palettes[i].name[j] != '\0'; j++) {
				writeField(btxFile, (paletteInfoOffset + 0x10 + (0x8 * json.numPalettes) + (16 * i) + j), json.palettes[i].name[j], 1);
			}
		}

		// texture header
		writeField(btxFile, BTX_TEX_OFFSET, 0x30584554, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 8, 0, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0xC, textureDataSize, 2);
		writeField(btxFile, BTX_TEX_OFFSET + 0xE, BTX_PROPERTIES_OFFSET - BTX_TEX_OFFSET, 2);
		writeField(btxFile, BTX_TEX_OFFSET + 0x10, 0, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x14, textureOffset - BTX_TEX_OFFSET, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x18, 0, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x1C, 0, 2);
		writeField(btxFile, BTX_TEX_OFFSET + 0x1E, BTX_PROPERTIES_OFFSET - BTX_TEX_OFFSET, 2);
		writeField(btxFile, BTX_TEX_OFFSET + 0x20, 0, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x24, paletteOffset - BTX_TEX_OFFSET, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x28, paletteOffset - BTX_TEX_OFFSET, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x2C, 0, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x34, paletteInfoOffset - BTX_TEX_OFFSET, 4);
		writeField(btxFile, BTX_TEX_OFFSET + 0x38, paletteOffset - BTX_TEX_OFFSET, 4);

		// now we take a look at the properties of each frame
		writeField(btxFile, BTX_PROPERTIES_OFFSET + 1, json.numFrames, 1);
		writeField(btxFile, BTX_PROPERTIES_OFFSET + 2, 0x10 + json.numFrames*0x1C, 2);
		writeField(btxFile, BTX_PROPERTIES_OFFSET + 4, 8, 2);
		writeField(btxFile, BTX_PROPERTIES_OFFSET + 6, 0xC + json.numFrames*4, 2);
		writeField(btxFile, BTX_PROPERTIES_OFFSET + 8, 0x17F, 4);
		for (i = 0; i < json.numFrames; i++) {
			writeField(btxFile, BTX_PROPERTIES_OFFSET + 0xC + i*4, json.frames[i].unkBlockUnk0, 2);
			writeField(btxFile, BTX_PROPERTIES_OFFSET + 0xE + i*4, json.frames[i].unkBlockUnk1, 2);
		}
		newBaseOffset = BTX_PROPERTIES_OFFSET + 0xC + json.numFrames*4;
		writeField(btxFile, newBaseOffset, 8, 2);
		writeField(btxFile, newBaseOffset + 2, 4 + json.numFrames * 8, 2);
		for (i = 0; i < json.numFrames; i++) {
			writeField(btxFile, newBaseOffset + 4 + 8*i, json.frames[i].frame * json.frames[i].width * json.frames[i].height / 16, 2);
			writeField(btxFile, newBaseOffset + 6 + 8*i, rebuildParameterValues(&json.frames[i]), 2);
			writeField(btxFile, newBaseOffset + 8 + 8*i, json.frames[i].width, 1);
			writeField(btxFile, newBaseOffset + 9 + 8*i, json.frames[i].unk0, 1);
			writeField(btxFile, newBaseOffset + 0xA + 8*i, json.frames[i].unk1, 1);
			writeField(btxFile, newBaseOffset + 0xB + 8*i, json.frames[i].unk2, 1);
		}
		newBaseOffset = newBaseOffset + 0x4 + 8*json.numFrames;
		for (i = 0; i < json.numFrames; i++) {
			for (j = 0; j < 16 && json.frames[i].name[j] != '\0'; j++) {
				writeField(btxFile, newBaseOffset + i * 16 + j, json.frames[i].name[j], 1);
			}
		}

		// end with writing the overall header
		writeField(btxFile, 0, 0x30585442, 4);
		writeField(btxFile, 4, 0x0001FEFF, 4);
		writeField(btxFile, 0xC, 0x10, 2);
		writeField(btxFile, 0xE, 1, 2);
		writeField(btxFile, 0x10, BTX_TEX_OFFSET, 4);

		newBaseOffset = image.width * image.height / 2;
		for (i = 0; i < newBaseOffset; i++) {
			writeField(btxFile, textureOffset + i, image.pixels[i], 1);
		}

		for (i = 0; i < json.numPalettes; i++) {
			for (j = 0; j < palettes[i].numColors; j++) {
				unsigned char red = DOWNCONVERT_BIT_DEPTH(palettes[i].colors[j].red);
				unsigned char green = DOWNCONVERT_BIT_DEPTH(palettes[i].colors[j].green);
				unsigned char blue = DOWNCONVERT_BIT_DEPTH(palettes[i].colors[j].blue);

				uint16_t paletteEntry = SET_GBA_PAL(red, green, blue);

				writeField(btxFile, paletteOffset + json.palettes[i].offset*0x20 + 2*j, paletteEntry, 2);
			}
		}

		FreeImage(&image);

		fseek(btxFile, 0, SEEK_END);
		newBaseOffset = ftell(btxFile); // total size
		writeField(btxFile, BTX_TEX_OFFSET + 4, newBaseOffset - BTX_TEX_OFFSET, 4);
		// size of palette info in 8-byte blocks it seems
		writeField(btxFile, BTX_TEX_OFFSET + 0x30, (newBaseOffset - paletteOffset) / 8, 4);
		writeField(btxFile, 8, newBaseOffset, 4);
	}

	fclose(btxFile);
	fclose(jsonFile);

	return 0;
}

static int rebuildParameterValues(struct BTX0_JSON_FRAME *frame) {
	int params = frame->coordTrans & 0x14;
    params |= (frame->color0 & 1) << 13;
    params |= (frame->format & 7) << 10;
    params |= ((bit_to_num(frame->height) - 3) & 7) << 7;
    params |= ((bit_to_num(frame->width) - 3) & 7) << 4;
    params |= (frame->flipY & 1) << 3;
    params |= (frame->flipX & 1) << 2;
    params |= (frame->repeatY & 1) << 1;
    params |= (frame->repeatX & 1);
	return params;
}

// write up to 4 bytes to a file.  no error checking because i don't need to
static void writeField(FILE *file, int offset, unsigned int data, int size) {
	fseek(file, offset, SEEK_SET);
	if (offset == 0xB4) debug_printf("A quick write to the wrong place\n");
	for (int i = 0; i < size; i++) {
		fputc((data & (0xFF << (i*8))) >> (i*8), file);
	}
}

// copy NULL-terminated string to another, max size MAX_STRING_SIZE.
// automatically terminates target too
static inline int copyStringToArray(char *arr, char *str) {
	int i;
	for (i = 0; str[i] != '\0' && i < MAX_STRING_SIZE; i++) {
		arr[i] = str[i];
	}
	// make sure that it is still NULL terminated
	if (i != MAX_STRING_SIZE) arr[i] = '\0';
	return i;
}

static inline unsigned int bit_to_num(unsigned int num) {
	int i;
	for (i = 0; i < 32; i++) {
		if (num == (1 << i)) {
			return i;
		}
	}
}
