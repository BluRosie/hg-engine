#include "../../include/constants/file.h"
#include "../../include/constants/pokemon.h"
#include "../../include/constants/species.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"

#define OVERWORLD_SIZE_SMALL           0x4E27
#define OVERWORLD_SIZE_SMALL_NO_SHADOW 0x4E26
#define OVERWORLD_SIZE_LARGE           0x5208

/*
 *  if you would like to add new npc overworlds, go to
 *  https://ds-pokemon-hacking.github.io/docs/generation-iv/guides/hgss-new_overworlds/
 */

// this should stay the same
#define NEW_NPC_GFX_START (297)
#define NEW_NPC_TAG_START (7000)

#define NEW_NPC_ENTRY(num) \
    { .tag = NEW_NPC_TAG_START + num, .gfx = NEW_NPC_GFX_START + num, .callback_params = 0 },

// adjust this depending on the amount of new npc's that you have added
#define MON_OVERWORLD_GFX_START (297)

#define MON_FOLLOWER_ENTRY(species, cbparams) \
    { .tag = MON_OVERWORLD_TAG_START + species, .gfx = MON_OVERWORLD_GFX_START + species, .callback_params = cbparams },

struct OVERWORLD_TAG gOWTagToFileNum[] = // skip down a bit to see the parts that are specifically for pokémon
    {
        { .tag = 0, .gfx = 69, .callback_params = 0x1C60 },
        { .tag = 1, .gfx = 0, .callback_params = 0x0000 },
        { .tag = 2, .gfx = 1, .callback_params = 0x0000 },
        { .tag = 3, .gfx = 2, .callback_params = 0x0000 },
        { .tag = 4, .gfx = 3, .callback_params = 0x0000 },
        { .tag = 5, .gfx = 4, .callback_params = 0x0000 },
        { .tag = 6, .gfx = 5, .callback_params = 0x0000 },
        { .tag = 7, .gfx = 6, .callback_params = 0x0000 },
        { .tag = 8, .gfx = 7, .callback_params = 0x0000 },
        { .tag = 9, .gfx = 8, .callback_params = 0x0000 },
        { .tag = 10, .gfx = 9, .callback_params = 0x0000 },
        { .tag = 11, .gfx = 10, .callback_params = 0x0000 },
        { .tag = 12, .gfx = 12, .callback_params = 0x0000 },
        { .tag = 13, .gfx = 13, .callback_params = 0x0000 },
        { .tag = 14, .gfx = 14, .callback_params = 0x0000 },
        { .tag = 15, .gfx = 16, .callback_params = 0x0000 },
        { .tag = 16, .gfx = 17, .callback_params = 0x0000 },
        { .tag = 17, .gfx = 18, .callback_params = 0x0000 },
        { .tag = 18, .gfx = 19, .callback_params = 0x0000 },
        { .tag = 19, .gfx = 34, .callback_params = 0x0000 },
        { .tag = 20, .gfx = 35, .callback_params = 0x0000 },
        { .tag = 21, .gfx = 71, .callback_params = 0x1881 },
        { .tag = 22, .gfx = 31, .callback_params = 0x0000 },
        { .tag = 23, .gfx = 32, .callback_params = 0x0000 },
        { .tag = 24, .gfx = 23, .callback_params = 0x0000 },
        { .tag = 25, .gfx = 24, .callback_params = 0x0000 },
        { .tag = 29, .gfx = 25, .callback_params = 0x0000 },
        { .tag = 30, .gfx = 26, .callback_params = 0x0000 },
        { .tag = 31, .gfx = 36, .callback_params = 0x0000 },
        { .tag = 33, .gfx = 22, .callback_params = 0x0000 },
        { .tag = 34, .gfx = 37, .callback_params = 0x0000 },
        { .tag = 35, .gfx = 38, .callback_params = 0x0000 },
        { .tag = 36, .gfx = 39, .callback_params = 0x0000 },
        { .tag = 37, .gfx = 40, .callback_params = 0x0000 },
        { .tag = 38, .gfx = 20, .callback_params = 0x0001 },
        { .tag = 39, .gfx = 21, .callback_params = 0x0001 },
        { .tag = 40, .gfx = 41, .callback_params = 0x0000 },
        { .tag = 41, .gfx = 42, .callback_params = 0x0000 },
        { .tag = 42, .gfx = 43, .callback_params = 0x0000 },
        { .tag = 43, .gfx = 44, .callback_params = 0x0000 },
        { .tag = 44, .gfx = 45, .callback_params = 0x0000 },
        { .tag = 45, .gfx = 46, .callback_params = 0x0000 },
        { .tag = 50, .gfx = 47, .callback_params = 0x0000 },
        { .tag = 51, .gfx = 48, .callback_params = 0x0000 },
        { .tag = 52, .gfx = 49, .callback_params = 0x0000 },
        { .tag = 53, .gfx = 50, .callback_params = 0x0000 },
        { .tag = 54, .gfx = 51, .callback_params = 0x0000 },
        { .tag = 55, .gfx = 52, .callback_params = 0x0000 },
        { .tag = 56, .gfx = 53, .callback_params = 0x0000 },
        { .tag = 59, .gfx = 29, .callback_params = 0x0000 },
        { .tag = 60, .gfx = 30, .callback_params = 0x0000 },
        { .tag = 62, .gfx = 27, .callback_params = 0x0000 },
        { .tag = 63, .gfx = 28, .callback_params = 0x0000 },
        { .tag = 68, .gfx = 11, .callback_params = 0x0000 },
        { .tag = 69, .gfx = 15, .callback_params = 0x0000 },
        { .tag = 70, .gfx = 33, .callback_params = 0x0000 },
        { .tag = 71, .gfx = 68, .callback_params = 0x0000 },
        { .tag = 84, .gfx = 91, .callback_params = 0x0420 },
        { .tag = 85, .gfx = 92, .callback_params = 0x0820 },
        { .tag = 86, .gfx = 93, .callback_params = 0x0020 },
        { .tag = 87, .gfx = 94, .callback_params = 0x0420 },
        { .tag = 97, .gfx = 70, .callback_params = 0x1C60 },
        { .tag = 98, .gfx = 72, .callback_params = 0x1881 },
        { .tag = 99, .gfx = 54, .callback_params = 0x0000 },
        { .tag = 126, .gfx = 215, .callback_params = 0x0000 },
        { .tag = 127, .gfx = 216, .callback_params = 0x0000 },
        { .tag = 128, .gfx = 217, .callback_params = 0x0000 },
        { .tag = 129, .gfx = 218, .callback_params = 0x0000 },
        { .tag = 130, .gfx = 219, .callback_params = 0x0000 },
        { .tag = 131, .gfx = 220, .callback_params = 0x0000 },
        { .tag = 132, .gfx = 221, .callback_params = 0x0000 },
        { .tag = 133, .gfx = 222, .callback_params = 0x0000 },
        { .tag = 141, .gfx = 62, .callback_params = 0x0000 },
        { .tag = 142, .gfx = 63, .callback_params = 0x0000 },
        { .tag = 143, .gfx = 64, .callback_params = 0x0000 },
        { .tag = 144, .gfx = 65, .callback_params = 0x0000 },
        { .tag = 145, .gfx = 66, .callback_params = 0x0000 },
        { .tag = 146, .gfx = 67, .callback_params = 0x0000 },
        { .tag = 148, .gfx = 58, .callback_params = 0x0000 },
        { .tag = 168, .gfx = 57, .callback_params = 0x0000 },
        { .tag = 169, .gfx = 61, .callback_params = 0x0000 },
        { .tag = 175, .gfx = 55, .callback_params = 0x0000 },
        { .tag = 176, .gfx = 75, .callback_params = 0x20A0 },
        { .tag = 177, .gfx = 76, .callback_params = 0x20A0 },
        { .tag = 180, .gfx = 77, .callback_params = 0x28C0 },
        { .tag = 181, .gfx = 78, .callback_params = 0x28C0 },
        { .tag = 178, .gfx = 73, .callback_params = 0x24E0 },
        { .tag = 179, .gfx = 74, .callback_params = 0x24E0 },
        { .tag = 183, .gfx = 0, .callback_params = 0xFDE2 },
        { .tag = 188, .gfx = 79, .callback_params = 0x2D00 },
        { .tag = 189, .gfx = 80, .callback_params = 0x2D00 },
        { .tag = 248, .gfx = 81, .callback_params = 0x3120 },
        { .tag = 249, .gfx = 82, .callback_params = 0x3120 },
        { .tag = 193, .gfx = 56, .callback_params = 0x0000 },
        { .tag = 8192, .gfx = 0, .callback_params = 0xFC03 },
        { .tag = 196, .gfx = 85, .callback_params = 0x3D60 },
        { .tag = 197, .gfx = 86, .callback_params = 0x3D60 },
        { .tag = 198, .gfx = 87, .callback_params = 0x40A0 },
        { .tag = 199, .gfx = 88, .callback_params = 0x40A0 },
        { .tag = 200, .gfx = 89, .callback_params = 0x3540 },
        { .tag = 201, .gfx = 90, .callback_params = 0x3540 },
        { .tag = 211, .gfx = 170, .callback_params = 0x0000 },
        { .tag = 218, .gfx = 171, .callback_params = 0x0000 },
        { .tag = 219, .gfx = 83, .callback_params = 0x0000 },
        { .tag = 220, .gfx = 172, .callback_params = 0x0000 },
        { .tag = 221, .gfx = 173, .callback_params = 0x0000 },
        { .tag = 222, .gfx = 174, .callback_params = 0x0000 },
        { .tag = 223, .gfx = 175, .callback_params = 0x0000 },
        { .tag = 224, .gfx = 176, .callback_params = 0x0000 },
        { .tag = 293, .gfx = 244, .callback_params = 0x0000 },
        { .tag = 294, .gfx = 245, .callback_params = 0x0000 },
        { .tag = 225, .gfx = 177, .callback_params = 0x0000 },
        { .tag = 227, .gfx = 178, .callback_params = 0x0000 },
        { .tag = 229, .gfx = 179, .callback_params = 0x0000 },
        { .tag = 232, .gfx = 180, .callback_params = 0x0000 },
        { .tag = 233, .gfx = 223, .callback_params = 0x0000 },
        { .tag = 235, .gfx = 181, .callback_params = 0x0000 },
        { .tag = 236, .gfx = 182, .callback_params = 0x0000 },
        { .tag = 237, .gfx = 183, .callback_params = 0x0000 },
        { .tag = 238, .gfx = 213, .callback_params = 0x1C60 },
        { .tag = 239, .gfx = 214, .callback_params = 0x1C60 },
        { .tag = 250, .gfx = 84, .callback_params = 0x0C00 },
        { .tag = 251, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 252, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 253, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 254, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 255, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 256, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 257, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 258, .gfx = 95, .callback_params = 0x1C60 },
        { .tag = 259, .gfx = 96, .callback_params = 0x1C60 },
        { .tag = 260, .gfx = 97, .callback_params = 0x3540 },
        { .tag = 261, .gfx = 98, .callback_params = 0x3540 },
        { .tag = 262, .gfx = 251, .callback_params = 0x5647 },
        { .tag = 263, .gfx = 255, .callback_params = 0x5647 },
        { .tag = 264, .gfx = 258, .callback_params = 0x5647 },
        { .tag = 265, .gfx = 252, .callback_params = 0x5647 },
        { .tag = 266, .gfx = 254, .callback_params = 0x5647 },
        { .tag = 267, .gfx = 257, .callback_params = 0x5647 },
        { .tag = 268, .gfx = 256, .callback_params = 0x5647 },
        { .tag = 269, .gfx = 253, .callback_params = 0x5647 },
        { .tag = 270, .gfx = 262, .callback_params = 0x5826 },
        { .tag = 271, .gfx = 265, .callback_params = 0x5826 },
        { .tag = 272, .gfx = 259, .callback_params = 0x5826 },
        { .tag = 273, .gfx = 261, .callback_params = 0x5826 },
        { .tag = 274, .gfx = 264, .callback_params = 0x5826 },
        { .tag = 275, .gfx = 263, .callback_params = 0x5826 },
        { .tag = 276, .gfx = 260, .callback_params = 0x5826 },
        { .tag = 277, .gfx = 103, .callback_params = 0x0000 },
        { .tag = 278, .gfx = 104, .callback_params = 0x0000 },
        { .tag = 279, .gfx = 105, .callback_params = 0x0000 },
        { .tag = 280, .gfx = 106, .callback_params = 0x0000 },
        { .tag = 281, .gfx = 107, .callback_params = 0x0000 },
        { .tag = 282, .gfx = 108, .callback_params = 0x0000 },
        { .tag = 283, .gfx = 109, .callback_params = 0x0000 },
        { .tag = 284, .gfx = 110, .callback_params = 0x0000 },
        { .tag = 285, .gfx = 101, .callback_params = 0x0000 },
        { .tag = 286, .gfx = 102, .callback_params = 0x0000 },
        { .tag = 287, .gfx = 111, .callback_params = 0x0006 },
        { .tag = 288, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 289, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 290, .gfx = 112, .callback_params = 0x1025 },
        { .tag = 291, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 292, .gfx = 0, .callback_params = 0xFDE4 },
        { .tag = 295, .gfx = 246, .callback_params = 0x1C60 },
        { .tag = 296, .gfx = 247, .callback_params = 0x1C60 },
        { .tag = 297, .gfx = 248, .callback_params = 0x40A0 },
        { .tag = 298, .gfx = 249, .callback_params = 0x40A0 },
        { .tag = 299, .gfx = 250, .callback_params = 0x0000 },
        { .tag = 315, .gfx = 113, .callback_params = 0x0000 },
        { .tag = 316, .gfx = 114, .callback_params = 0x0000 },
        { .tag = 317, .gfx = 115, .callback_params = 0x0000 },
        { .tag = 318, .gfx = 116, .callback_params = 0x0000 },
        { .tag = 319, .gfx = 117, .callback_params = 0x0000 },
        { .tag = 320, .gfx = 118, .callback_params = 0x0000 },
        { .tag = 321, .gfx = 119, .callback_params = 0x0000 },
        { .tag = 322, .gfx = 120, .callback_params = 0x0000 },
        { .tag = 323, .gfx = 121, .callback_params = 0x0000 },
        { .tag = 324, .gfx = 122, .callback_params = 0x0000 },
        { .tag = 325, .gfx = 123, .callback_params = 0x0000 },
        { .tag = 326, .gfx = 124, .callback_params = 0x0000 },
        { .tag = 327, .gfx = 125, .callback_params = 0x0000 },
        { .tag = 328, .gfx = 126, .callback_params = 0x0000 },
        { .tag = 329, .gfx = 127, .callback_params = 0x0000 },
        { .tag = 330, .gfx = 128, .callback_params = 0x0000 },
        { .tag = 331, .gfx = 129, .callback_params = 0x0000 },
        { .tag = 332, .gfx = 130, .callback_params = 0x0000 },
        { .tag = 333, .gfx = 131, .callback_params = 0x0000 },
        { .tag = 334, .gfx = 132, .callback_params = 0x0000 },
        { .tag = 335, .gfx = 133, .callback_params = 0x1580 },
        { .tag = 336, .gfx = 134, .callback_params = 0x0000 },
        { .tag = 337, .gfx = 135, .callback_params = 0x0000 },
        { .tag = 338, .gfx = 136, .callback_params = 0x0000 },
        { .tag = 341, .gfx = 137, .callback_params = 0x0000 },
        { .tag = 342, .gfx = 138, .callback_params = 0x0000 },
        { .tag = 343, .gfx = 139, .callback_params = 0x0000 },
        { .tag = 344, .gfx = 140, .callback_params = 0x0000 },
        { .tag = 345, .gfx = 141, .callback_params = 0x0000 },
        { .tag = 346, .gfx = 142, .callback_params = 0x0000 },
        { .tag = 347, .gfx = 143, .callback_params = 0x0000 },
        { .tag = 348, .gfx = 144, .callback_params = 0x0000 },
        { .tag = 351, .gfx = 145, .callback_params = 0x0000 },
        { .tag = 352, .gfx = 146, .callback_params = 0x0000 },
        { .tag = 353, .gfx = 147, .callback_params = 0x0000 },
        { .tag = 354, .gfx = 148, .callback_params = 0x0000 },
        { .tag = 355, .gfx = 149, .callback_params = 0x0000 },
        { .tag = 356, .gfx = 150, .callback_params = 0x0000 },
        { .tag = 357, .gfx = 151, .callback_params = 0x0000 },
        { .tag = 358, .gfx = 152, .callback_params = 0x0000 },
        { .tag = 359, .gfx = 153, .callback_params = 0x0000 },
        { .tag = 360, .gfx = 154, .callback_params = 0x0000 },
        { .tag = 361, .gfx = 155, .callback_params = 0x0000 },
        { .tag = 362, .gfx = 156, .callback_params = 0x0000 },
        { .tag = 363, .gfx = 157, .callback_params = 0x0000 },
        { .tag = 364, .gfx = 158, .callback_params = 0x0000 },
        { .tag = 365, .gfx = 159, .callback_params = 0x0000 },
        { .tag = 366, .gfx = 160, .callback_params = 0x0000 },
        { .tag = 367, .gfx = 161, .callback_params = 0x0000 },
        { .tag = 368, .gfx = 162, .callback_params = 0x0000 },
        { .tag = 369, .gfx = 163, .callback_params = 0x0000 },
        { .tag = 370, .gfx = 164, .callback_params = 0x0000 },
        { .tag = 371, .gfx = 165, .callback_params = 0x0000 },
        { .tag = 372, .gfx = 166, .callback_params = 0x0000 },
        { .tag = 373, .gfx = 167, .callback_params = 0x0000 },
        { .tag = 374, .gfx = 168, .callback_params = 0x0000 },
        { .tag = 375, .gfx = 169, .callback_params = 0x0000 },
        { .tag = 377, .gfx = 184, .callback_params = 0x0000 },
        { .tag = 378, .gfx = 185, .callback_params = 0x0000 },
        { .tag = 380, .gfx = 224, .callback_params = 0x0000 },
        { .tag = 381, .gfx = 186, .callback_params = 0x0000 },
        { .tag = 382, .gfx = 187, .callback_params = 0x0000 },
        { .tag = 383, .gfx = 188, .callback_params = 0x0000 },
        { .tag = 384, .gfx = 189, .callback_params = 0x0000 },
        { .tag = 385, .gfx = 225, .callback_params = 0x0000 },
        { .tag = 386, .gfx = 226, .callback_params = 0x0000 },
        { .tag = 387, .gfx = 227, .callback_params = 0x0000 },
        { .tag = 389, .gfx = 190, .callback_params = 0x0000 },
        { .tag = 390, .gfx = 228, .callback_params = 0x0000 },
        { .tag = 392, .gfx = 191, .callback_params = 0x0000 },
        { .tag = 393, .gfx = 192, .callback_params = 0x0000 },
        { .tag = 394, .gfx = 193, .callback_params = 0x0000 },
        { .tag = 395, .gfx = 194, .callback_params = 0x5C06 },
        { .tag = 406, .gfx = 195, .callback_params = 0x0006 },
        { .tag = 409, .gfx = 200, .callback_params = 0x0000 },
        { .tag = 410, .gfx = 198, .callback_params = 0x0000 },
        { .tag = 411, .gfx = 197, .callback_params = 0x0000 },
        { .tag = 412, .gfx = 199, .callback_params = 0x0000 },
        { .tag = 413, .gfx = 196, .callback_params = 0x0000 },
        { .tag = 349, .gfx = 243, .callback_params = 0x5C00 },
        { .tag = 234, .gfx = 242, .callback_params = 0x0024 },
        { .tag = 350, .gfx = 229, .callback_params = 0x0024 },
        { .tag = 376, .gfx = 230, .callback_params = 0x0024 },
        { .tag = 379, .gfx = 231, .callback_params = 0x0024 },
        { .tag = 210, .gfx = 239, .callback_params = 0x5C24 },
        { .tag = 396, .gfx = 241, .callback_params = 0x5C24 },
        { .tag = 397, .gfx = 240, .callback_params = 0x0024 },
        { .tag = 398, .gfx = 237, .callback_params = 0x0024 },
        { .tag = 399, .gfx = 234, .callback_params = 0x0024 },
        { .tag = 400, .gfx = 235, .callback_params = 0x5C24 },
        { .tag = 401, .gfx = 236, .callback_params = 0x0024 },
        { .tag = 402, .gfx = 238, .callback_params = 0x0024 },
        { .tag = 403, .gfx = 232, .callback_params = 0x0024 },
        { .tag = 404, .gfx = 233, .callback_params = 0x0024 },
        { .tag = 407, .gfx = 99, .callback_params = 0x1C60 },
        { .tag = 408, .gfx = 100, .callback_params = 0x1C60 },
        { .tag = 414, .gfx = 209, .callback_params = 0x0000 },
        { .tag = 415, .gfx = 201, .callback_params = 0x4E25 },
        { .tag = 416, .gfx = 202, .callback_params = 0x4E25 },
        { .tag = 417, .gfx = 203, .callback_params = 0x4E25 },
        { .tag = 418, .gfx = 204, .callback_params = 0x5225 },
        { .tag = 419, .gfx = 205, .callback_params = 0x5225 },
        { .tag = 420, .gfx = 206, .callback_params = 0x5225 },
        { .tag = 421, .gfx = 59, .callback_params = 0x0000 },
        { .tag = 422, .gfx = 60, .callback_params = 0x0000 },
        { .tag = 423, .gfx = 207, .callback_params = 0x3A60 },
        { .tag = 424, .gfx = 208, .callback_params = 0x3A60 },
        { .tag = 425, .gfx = 210, .callback_params = 0x45A5 },
        { .tag = 426, .gfx = 211, .callback_params = 0x49A5 },
        { .tag = 427, .gfx = 212, .callback_params = 0x0000 },

        // npc mons

        { .tag = 994, .gfx = MON_OVERWORLD_GFX_START + SPECIES_BUTTERFREE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 995, .gfx = MON_OVERWORLD_GFX_START + SPECIES_PIDGEY, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 996, .gfx = MON_OVERWORLD_GFX_START + SPECIES_RATTATA, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 997, .gfx = MON_OVERWORLD_GFX_START + SPECIES_SPEAROW, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 998, .gfx = MON_OVERWORLD_GFX_START + SPECIES_FEAROW, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 999, .gfx = MON_OVERWORLD_GFX_START + SPECIES_PIKACHU, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1000, .gfx = MON_OVERWORLD_GFX_START + SPECIES_NIDORAN_F, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1001, .gfx = MON_OVERWORLD_GFX_START + SPECIES_NIDORAN_M, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1002, .gfx = MON_OVERWORLD_GFX_START + SPECIES_NIDORINO, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1003, .gfx = MON_OVERWORLD_GFX_START + SPECIES_CLEFAIRY, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1004, .gfx = MON_OVERWORLD_GFX_START + SPECIES_JIGGLYPUFF, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1005, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ZUBAT, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1006, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ODDISH, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1007, .gfx = MON_OVERWORLD_GFX_START + SPECIES_DIGLETT, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW },
        { .tag = 1008, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MEOWTH, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1009, .gfx = MON_OVERWORLD_GFX_START + SPECIES_PERSIAN, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1010, .gfx = MON_OVERWORLD_GFX_START + SPECIES_PSYDUCK, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1011, .gfx = MON_OVERWORLD_GFX_START + SPECIES_POLIWRATH, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1012, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ABRA, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1013, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MACHOP, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1014, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MACHOKE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1015, .gfx = MON_OVERWORLD_GFX_START + SPECIES_SLOWPOKE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1016, .gfx = MON_OVERWORLD_GFX_START + SPECIES_SLOWBRO, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1017, .gfx = MON_OVERWORLD_GFX_START + SPECIES_FARFETCHD, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1018, .gfx = MON_OVERWORLD_GFX_START + SPECIES_DODRIO, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1019, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ELECTRODE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1020, .gfx = MON_OVERWORLD_GFX_START + SPECIES_RHYDON, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1021, .gfx = MON_OVERWORLD_GFX_START + SPECIES_CHANSEY, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1022, .gfx = MON_OVERWORLD_GFX_START + SPECIES_KANGASKHAN, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1023, .gfx = MON_OVERWORLD_GFX_START + SPECIES_LAPRAS, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1024, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ARTICUNO, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1025, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ZAPDOS, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1026, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MOLTRES, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1027, .gfx = MON_OVERWORLD_GFX_START + SPECIES_DRATINI, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1028, .gfx = MON_OVERWORLD_GFX_START + SPECIES_DRAGONITE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1029, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MEWTWO, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1030, .gfx = MON_OVERWORLD_GFX_START + SPECIES_BAYLEEF, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1031, .gfx = MON_OVERWORLD_GFX_START + SPECIES_AMPHAROS, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1032, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MARILL, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1033, .gfx = MON_OVERWORLD_GFX_START + SPECIES_AIPOM, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1034, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MURKROW, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1035, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MILTANK, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1036, .gfx = MON_OVERWORLD_GFX_START + SPECIES_BLISSEY, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1037, .gfx = MON_OVERWORLD_GFX_START + SPECIES_RAIKOU, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1038, .gfx = MON_OVERWORLD_GFX_START + SPECIES_ENTEI, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1039, .gfx = MON_OVERWORLD_GFX_START + SPECIES_SUICUNE, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1040, .gfx = MON_OVERWORLD_GFX_START + SPECIES_CELEBI, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1041, .gfx = MON_OVERWORLD_GFX_START + SPECIES_LATIAS, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1042, .gfx = MON_OVERWORLD_GFX_START + SPECIES_LATIOS, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1043, .gfx = MON_OVERWORLD_GFX_START + SPECIES_KYOGRE, .callback_params = OVERWORLD_SIZE_LARGE },
        { .tag = 1044, .gfx = MON_OVERWORLD_GFX_START + SPECIES_GROUDON, .callback_params = OVERWORLD_SIZE_LARGE },
        { .tag = 1045, .gfx = MON_OVERWORLD_GFX_START + SPECIES_RAYQUAZA, .callback_params = OVERWORLD_SIZE_LARGE },
        { .tag = 1046, .gfx = MON_OVERWORLD_GFX_START + SPECIES_PICHU_OVERWORLD_SPIKY_EARED, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1047, .gfx = MON_OVERWORLD_GFX_START + SPECIES_MEGANIUM, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1048, .gfx = MON_OVERWORLD_GFX_START + SPECIES_TYPHLOSION, .callback_params = OVERWORLD_SIZE_SMALL },
        { .tag = 1049, .gfx = MON_OVERWORLD_GFX_START + SPECIES_FERALIGATR, .callback_params = OVERWORLD_SIZE_SMALL },

        // pokémon follower specific overworlds start here... left off on gfx 1451 - galarian stunfisk which was inserted after all the others

        MON_FOLLOWER_ENTRY(SPECIES_BULBASAUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IVYSAUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VENUSAUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VENUSAUR_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHARMANDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHARMELEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHARIZARD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SQUIRTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WARTORTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLASTOISE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CATERPIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_METAPOD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUTTERFREE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WEEDLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KAKUNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BEEDRILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIDGEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIDGEOTTO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIDGEOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RATTATA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RATTATA_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RATICATE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RATICATE_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPEAROW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FEAROW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EKANS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARBOK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_COSPLAY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_ROCK_STAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_BELLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_POP_STAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_PH_D, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_LIBRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_ORIGINAL_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_HOENN_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_SINNOH_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_UNOVA_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_KALOS_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_ALOLA_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_PARTNER_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_WORLD_CAP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKACHU_PARTNER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAICHU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAICHU_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDSHREW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDSHREW_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDSLASH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDSLASH_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDORAN_F, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDORINA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDOQUEEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDORAN_M, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDORINO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIDOKING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLEFAIRY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLEFABLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VULPIX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VULPIX_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NINETALES, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NINETALES_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JIGGLYPUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WIGGLYTUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZUBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ODDISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLOOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VILEPLUME, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PARAS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PARASECT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VENONAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VENOMOTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DIGLETT, OVERWORLD_SIZE_SMALL_NO_SHADOW)
        MON_FOLLOWER_ENTRY(SPECIES_DIGLETT_ALOLAN, OVERWORLD_SIZE_SMALL_NO_SHADOW)
        MON_FOLLOWER_ENTRY(SPECIES_DUGTRIO, OVERWORLD_SIZE_SMALL_NO_SHADOW)
        MON_FOLLOWER_ENTRY(SPECIES_DUGTRIO_ALOLAN, OVERWORLD_SIZE_SMALL_NO_SHADOW)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWTH_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWTH_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PERSIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PERSIAN_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PSYDUCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLDUCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANKEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PRIMEAPE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GROWLITHE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GROWLITHE_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCANINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCANINE_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLIWAG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLIWHIRL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLIWRATH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ABRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KADABRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALAKAZAM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MACHOP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MACHOKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MACHAMP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BELLSPROUT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WEEPINBELL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VICTREEBEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TENTACOOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TENTACRUEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GEODUDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GEODUDE_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRAVELER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRAVELER_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLEM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLEM_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PONYTA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PONYTA_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAPIDASH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAPIDASH_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWPOKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWPOKE_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWBRO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWBRO_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGNEMITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGNETON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FARFETCHD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FARFETCHD_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DODUO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DODRIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEWGONG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRIMER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRIMER_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUK_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHELLDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLOYSTER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GASTLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HAUNTER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENGAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ONIX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DROWZEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HYPNO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KRABBY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KINGLER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VOLTORB, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VOLTORB_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELECTRODE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELECTRODE_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EXEGGCUTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EXEGGUTOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EXEGGUTOR_ALOLAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_CUBONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAROWAK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAROWAK_ALOLAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HITMONLEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HITMONCHAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LICKITUNG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KOFFING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WEEZING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WEEZING_GALARIAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_RHYHORN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RHYDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHANSEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TANGELA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KANGASKHAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HORSEA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEADRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLDEEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEAKING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STARYU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STARMIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MR_MIME, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MR_MIME_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCYTHER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JYNX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELECTABUZZ, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGMAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PINSIR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAUROS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAUROS_COMBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAUROS_BLAZE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAUROS_AQUA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGIKARP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GYARADOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LAPRAS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DITTO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EEVEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EEVEE_PARTNER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VAPOREON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JOLTEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLAREON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PORYGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OMANYTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OMASTAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KABUTO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KABUTOPS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AERODACTYL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNORLAX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARTICUNO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARTICUNO_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZAPDOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZAPDOS_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MOLTRES, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MOLTRES_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRATINI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAGONAIR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAGONITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEWTWO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHIKORITA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BAYLEEF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEGANIUM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEGANIUM_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CYNDAQUIL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUILAVA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYPHLOSION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYPHLOSION_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOTODILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CROCONAW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FERALIGATR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SENTRET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURRET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOOTHOOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NOCTOWL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LEDYBA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LEDIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPINARAK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARIADOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CROBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHINCHOU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LANTURN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PICHU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PICHU_OVERWORLD_SPIKY_EARED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLEFFA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IGGLYBUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOGEPI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOGETIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NATU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_XATU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAREEP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLAAFFY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AMPHAROS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BELLOSSOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MARILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AZUMARILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SUDOWOODO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLITOED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOPPIP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKIPLOOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JUMPLUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AIPOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SUNKERN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SUNFLORA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YANMA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOOPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOOPER_PALDEAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUAGSIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ESPEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UMBREON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MURKROW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWKING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLOWKING_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MISDREAVUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_B, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_C, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_D, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_E, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_F, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_G, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_H, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_I, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_J, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_K, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_L, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_M, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_N, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_O, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_P, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_Q, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_R, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_S, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_T, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_U, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_V, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_W, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_X, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_Y, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_Z, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_EXCLAMATION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNOWN_OVERWORLD_QUESTION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOBBUFFET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOBBUFFET_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GIRAFARIG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PINECO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FORRETRESS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUNSPARCE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLIGAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STEELIX, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_STEELIX_OVERWORLD_FEMALE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_SNUBBULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRANBULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QWILFISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QWILFISH_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCIZOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHUCKLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HERACROSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HERACROSS_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNEASEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNEASEL_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TEDDIURSA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_URSARING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLUGMA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGCARGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWINUB, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PILOSWINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CORSOLA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CORSOLA_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REMORAID, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OCTILLERY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DELIBIRD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANTINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKARMORY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOUNDOUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOUNDOOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KINGDRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PHANPY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DONPHAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PORYGON2, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STANTLER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SMEARGLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYROGUE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HITMONTOP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SMOOCHUM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELEKID, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGBY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MILTANK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLISSEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAIKOU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ENTEI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SUICUNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LARVITAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PUPITAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYRANITAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUGIA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_HO_OH, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_CELEBI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TREECKO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GROVYLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCEPTILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TORCHIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COMBUSKEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLAZIKEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUDKIP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MARSHTOMP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWAMPERT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POOCHYENA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIGHTYENA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZIGZAGOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZIGZAGOON_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LINOONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LINOONE_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WURMPLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILCOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BEAUTIFLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CASCOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUSTOX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LOTAD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LOMBRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUDICOLO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEEDOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NUZLEAF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHIFTRY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAILLOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWELLOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WINGULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PELIPPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RALTS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KIRLIA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GARDEVOIR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SURSKIT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MASQUERAIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHROOMISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRELOOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLAKOTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIGOROTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLAKING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NINCADA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NINJASK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHEDINJA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WHISMUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LOUDRED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EXPLOUD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAKUHITA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HARIYAMA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AZURILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NOSEPASS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKITTY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DELCATTY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SABLEYE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAWILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LAIRON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AGGRON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEDITITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEDICHAM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELECTRIKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANECTRIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PLUSLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINUN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VOLBEAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ILLUMISE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROSELIA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GULPIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWALOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CARVANHA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHARPEDO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WAILMER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WAILORD, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_NUMEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CAMERUPT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TORKOAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPOINK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRUMPIG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPINDA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TRAPINCH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIBRAVA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLYGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CACNEA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CACTURNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWABLU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALTARIA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZANGOOSE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEVIPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUNATONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SOLROCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BARBOACH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WHISCASH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CORPHISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRAWDAUNT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BALTOY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLAYDOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LILEEP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRADILY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ANORITH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARMALDO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FEEBAS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MILOTIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CASTFORM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CASTFORM_SUNNY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CASTFORM_RAINY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CASTFORM_SNOWY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KECLEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHUPPET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BANETTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUSKULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUSCLOPS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TROPIUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHIMECHO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ABSOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WYNAUT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNORUNT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLALIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPHEAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEALEO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WALREIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLAMPERL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HUNTAIL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOREBYSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RELICANTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUVDISC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BAGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHELGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SALAMENCE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BELDUM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_METANG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_METAGROSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGIROCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGICE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGISTEEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LATIAS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LATIOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KYOGRE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_GROUDON, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_RAYQUAZA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_JIRACHI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEOXYS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEOXYS_OVERWORLD_ATTACK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEOXYS_OVERWORLD_DEFENSE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEOXYS_OVERWORLD_SPEED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TURTWIG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GROTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TORTERRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHIMCHAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MONFERNO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INFERNAPE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIPLUP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PRINPLUP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EMPOLEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STARLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STARAVIA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STARAPTOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BIDOOF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BIBAREL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KRICKETOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KRICKETUNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHINX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUXIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUXRAY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUDEW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROSERADE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRANIDOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAMPARDOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHIELDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASTIODON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BURMY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BURMY_OVERWORLD_SANDY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BURMY_OVERWORLD_TRASHY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WORMADAM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WORMADAM_OVERWORLD_SANDY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WORMADAM_OVERWORLD_TRASHY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MOTHIM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COMBEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COMBEE_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VESPIQUEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PACHIRISU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUIZEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOATZEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHERUBI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHERRIM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHELLOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHELLOS_EAST_SEA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GASTRODON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GASTRODON_EAST_SEA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AMBIPOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRIFLOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRIFBLIM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUNEARY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LOPUNNY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MISMAGIUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HONCHKROW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLAMEOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PURUGLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHINGLING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STUNKY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKUNTANK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRONZOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRONZONG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BONSLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIME_JR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HAPPINY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHATOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPIRITOMB, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GIBLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GABITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GARCHOMP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUNCHLAX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RIOLU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUCARIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HIPPOPOTAS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HIPPOPOTAS_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HIPPOWDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HIPPOWDON_OVERWORLD_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKORUPI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAPION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CROAGUNK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOXICROAK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CARNIVINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FINNEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUMINEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANTYKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNOVER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ABOMASNOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WEAVILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGNEZONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LICKILICKY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RHYPERIOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TANGROWTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELECTIVIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGMORTAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOGEKISS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YANMEGA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LEAFEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLACEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLISCOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAMOSWINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PORYGON_Z, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GALLADE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PROBOPASS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUSKNOIR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FROSLASS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM_OVERWORLD_HEAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM_OVERWORLD_WASH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM_OVERWORLD_FROST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM_OVERWORLD_FAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROTOM_OVERWORLD_MOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UXIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MESPRIT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AZELF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DIALGA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_DIALGA_ORIGIN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_PALKIA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_PALKIA_ORIGIN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_HEATRAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGIGIGAS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_GIRATINA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_GIRATINA_OVERWORLD_ORIGIN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_CRESSELIA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PHIONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANAPHY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARKRAI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHAYMIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHAYMIN_OVERWORLD_SKY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_FIGHT, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_FLY, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_POISON, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_GROUND, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_ROCK, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_BUG, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_GHOST, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_STEEL, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_FAIRY, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_FIRE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_WATER, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_GRASS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_ELECTRIC, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_PSYCHIC, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_ICE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_DRAGON, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ARCEUS_OVERWORLD_DARK, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_VICTINI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNIVY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SERVINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SERPERIOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TEPIG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIGNITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EMBOAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OSHAWOTT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEWOTT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAMUROTT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAMUROTT_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PATRAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WATCHOG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LILLIPUP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HERDIER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STOUTLAND, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PURRLOIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LIEPARD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PANSAGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIMISAGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PANSEAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIMISEAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PANPOUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIMIPOUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUNNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUSHARNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIDOVE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TRANQUILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNFEZANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_UNFEZANT_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLITZLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZEBSTRIKA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROGGENROLA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BOLDORE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GIGALITH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOOBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWOOBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRILBUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EXCADRILL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AUDINO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TIMBURR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GURDURR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CONKELDURR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYMPOLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PALPITOAD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEISMITOAD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_THROH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAWK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SEWADDLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWADLOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LEAVANNY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VENIPEDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WHIRLIPEDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCOLIPEDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COTTONEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WHIMSICOTT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PETILIL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LILLIGANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LILLIGANT_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASCULIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASCULIN_BLUE_STRIPED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASCULIN_WHITE_STRIPED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KROKOROK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KROOKODILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARUMAKA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARUMAKA_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARMANITAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARMANITAN_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARMANITAN_ZEN_MODE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARMANITAN_ZEN_MODE_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MARACTUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DWEBBLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRUSTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCRAGGY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCRAFTY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIGILYPH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YAMASK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YAMASK_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COFAGRIGUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TIRTOUGA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CARRACOSTA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCHEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCHEOPS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TRUBBISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GARBODOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZORUA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZORUA_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZOROARK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZOROARK_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINCCINO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CINCCINO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOTHITA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOTHORITA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOTHITELLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SOLOSIS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUOSION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REUNICLUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUCKLETT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWANNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VANILLITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VANILLISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VANILLUXE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEERLING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEERLING_SUMMER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEERLING_AUTUMN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEERLING_WINTER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAWSBUCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAWSBUCK_SUMMER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAWSBUCK_AUTUMN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SAWSBUCK_WINTER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EMOLGA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KARRABLAST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ESCAVALIER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FOONGUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AMOONGUSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FRILLISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FRILLISH_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JELLICENT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JELLICENT_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALOMOMOLA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JOLTIK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GALVANTULA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FERROSEED, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FERROTHORN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLINK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLANG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLINKLANG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYNAMO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EELEKTRIK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EELEKTROSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELGYEM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BEHEEYEM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LITWICK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LAMPENT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHANDELURE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AXEW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FRAXURE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HAXORUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CUBCHOO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BEARTIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRYOGONAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHELMET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ACCELGOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STUNFISK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STUNFISK_GALARIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIENFOO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIENSHAO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRUDDIGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLETT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLURK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PAWNIARD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BISHARP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BOUFFALANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RUFFLET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRAVIARY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRAVIARY_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VULLABY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MANDIBUZZ, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HEATMOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DURANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEINO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZWEILOUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HYDREIGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LARVESTA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VOLCARONA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COBALION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TERRAKION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIRIZION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TORNADUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_TORNADUS_THERIAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_THUNDURUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_THUNDURUS_THERIAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_RESHIRAM, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ZEKROM, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_LANDORUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_LANDORUS_THERIAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KYUREM, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KYUREM_WHITE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KYUREM_BLACK, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KELDEO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KELDEO_RESOLUTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MELOETTA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MELOETTA_PIROUETTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENESECT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENESECT_DOUSE_DRIVE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENESECT_SHOCK_DRIVE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENESECT_BURN_DRIVE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GENESECT_CHILL_DRIVE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHESPIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUILLADIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHESNAUGHT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FENNEKIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRAIXEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DELPHOX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FROAKIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FROGADIER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRENINJA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUNNELBY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DIGGERSBY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLETCHLING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLETCHINDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TALONFLAME, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCATTERBUG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPEWPA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_POLAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_TUNDRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_CONTINENTAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_GARDEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_ELEGANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_MEADOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_MODERN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_MARINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_ARCHIPELAGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_HIGH_PLAINS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_SANDSTORM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_RIVER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_MONSOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_SAVANNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_SUN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_OCEAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_JUNGLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_FANCY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIVILLON_POKE_BALL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LITLEO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PYROAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PYROAR_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLABEBE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLABEBE_YELLOW_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLABEBE_ORANGE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLABEBE_BLUE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLABEBE_WHITE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE_YELLOW_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE_ORANGE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE_BLUE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE_WHITE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLOETTE_ETERNAL_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORGES, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORGES_YELLOW_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORGES_ORANGE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORGES_BLUE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORGES_WHITE_FLOWER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKIDDO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOGOAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PANCHAM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PANGORO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_HEART, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_STAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_DIAMOND, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_DEBUTANTE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_MATRON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_DANDY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_LA_REINE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_KABUKI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FURFROU_PHARAOH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ESPURR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWSTIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWSTIC_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HONEDGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DOUBLADE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AEGISLASH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPRITZEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AROMATISSE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SWIRLIX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLURPUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INKAY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MALAMAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BINACLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BARBARACLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKRELP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAGALGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLAUNCHER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLAWITZER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HELIOPTILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HELIOLISK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYRUNT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYRANTRUM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AMAURA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AURORUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SYLVEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HAWLUCHA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEDENNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CARBINK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOOMY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLIGGOO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLIGGOO_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOODRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOODRA_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLEFKI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PHANTUMP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TREVENANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PUMPKABOO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PUMPKABOO_SMALL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PUMPKABOO_LARGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PUMPKABOO_SUPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOURGEIST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOURGEIST_SMALL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOURGEIST_LARGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOURGEIST_SUPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BERGMITE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AVALUGG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_AVALUGG_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NOIBAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NOIVERN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_XERNEAS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_YVELTAL, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE_10, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE_10_POWER_CONSTRUCT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE_50_POWER_CONSTRUCT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE_10_COMPLETE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZYGARDE_50_COMPLETE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DIANCIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOOPA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOOPA_UNBOUND, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_VOLCANION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROWLET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DARTRIX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DECIDUEYE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DECIDUEYE_HISUIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LITTEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TORRACAT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INCINEROAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POPPLIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRIONNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PRIMARINA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PIKIPEK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TRUMBEAK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOUCANNON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YUNGOOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GUMSHOOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRUBBIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHARJABUG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VIKAVOLT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRABRAWLER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRABOMINABLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORICORIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORICORIO_POM_POM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORICORIO_PAU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORICORIO_SENSU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CUTIEFLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RIBOMBEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROCKRUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROCKRUFF_OWN_TEMPO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LYCANROC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LYCANROC_MIDNIGHT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LYCANROC_DUSK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WISHIWASHI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WISHIWASHI_SCHOOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAREANIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOXAPEX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUDBRAY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUDSDALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DEWPIDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARAQUANID, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FOMANTIS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LURANTIS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MORELULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHIINOTIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SALANDIT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SALAZZLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STUFFUL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BEWEAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BOUNSWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STEENEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TSAREENA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COMFEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORANGURU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PASSIMIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WIMPOD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOLISOPOD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDYGAST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PALOSSAND, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PYUKUMUKU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TYPE_NULL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_FIGHT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_FLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_POISON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_GROUND, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_ROCK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_BUG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_GHOST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_STEEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_FAIRY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_FIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_WATER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_GRASS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_ELECTRIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_PSYCHIC, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_ICE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_DRAGON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILVALLY_OVERWORLD_DARK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_ORANGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_YELLOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_GREEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_BLUE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_INDIGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MINIOR_METEOR_VIOLET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KOMALA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TURTONATOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOGEDEMARU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIMIKYU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRUXISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAMPA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DHELMISE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_JANGMO_O, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HAKAMO_O, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KOMMO_O, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAPU_KOKO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAPU_LELE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAPU_BULU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAPU_FINI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COSMOG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COSMOEM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SOLGALEO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LUNALA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NIHILEGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BUZZWOLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PHEROMOSA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_XURKITREE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CELESTEELA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KARTANA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GUZZLORD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NECROZMA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NECROZMA_DUSK_MANE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NECROZMA_DAWN_WINGS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_MAGEARNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAGEARNA_ORIGINAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MARSHADOW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POIPOLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NAGANADEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STAKATAKA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLACEPHALON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZERAORA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MELTAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MELMETAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GROOKEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_THWACKEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RILLABOOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCORBUNNY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RABOOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CINDERACE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SOBBLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRIZZILE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INTELEON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKWOVET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GREEDENT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROOKIDEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CORVISQUIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CORVIKNIGHT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BLIPBUG, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DOTTLER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORBEETLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NICKIT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_THIEVUL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOSSIFLEUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ELDEGOSS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WOOLOO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUBWOOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHEWTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DREDNAW, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_YAMPER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BOLTUND, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROLYCOLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CARKOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COALOSSAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_APPLIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLAPPLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_APPLETUN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SILICOBRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDACONDA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CRAMORANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARROKUDA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BARRASKEWDA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOXEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOXTRICITY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOXTRICITY_LOW_KEY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIZZLIPEDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CENTISKORCH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLOBBOPUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRAPPLOCT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SINISTEA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SINISTEA_ANTIQUE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLTEAGEIST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLTEAGEIST_ANTIQUE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HATENNA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HATTREM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HATTERENE, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_IMPIDIMP, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MORGREM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRIMMSNARL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OBSTAGOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PERRSERKER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CURSOLA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SIRFETCHD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MR_RIME, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RUNERIGUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MILCERY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_BERRY_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_LOVE_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_STAR_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_CLOVER_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_FLOWER_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_RIBBON_SWEET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_FILLER_1, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ALCREMIE_FILLER_2, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FALINKS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PINCURCHIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FROSMOTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_STONJOURNER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_EISCUE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INDEEDEE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_INDEEDEE_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MORPEKO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CUFANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_COPPERAJAH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRACOZOLT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCTOZOLT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRACOVISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCTOVISH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DURALUDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DREEPY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAKLOAK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DRAGAPULT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZACIAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZAMAZENTA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ETERNATUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KUBFU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_URSHIFU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_URSHIFU_RAPID_STRIKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZARUDE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ZARUDE_DADA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGIELEKI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REGIDRAGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLASTRIER, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_SPECTRIER, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_CALYREX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CALYREX_ICE_RIDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CALYREX_SHADOW_RIDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WYRDEER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLEAVOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_URSALUNA, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_URSALUNA_BLOODMOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASCULEGION, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BASCULEGION_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SNEASLER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OVERQWIL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ENAMORUS, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_ENAMORUS_THERIAN, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_SPRIGATITO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLORAGATO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MEOWSCARADA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FUECOCO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CROCALOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SKELEDIRGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUAXLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUAXWELL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_QUAQUAVAL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LECHONK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OINKOLOGNE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OINKOLOGNE_FEMALE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TAROUNTULA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SPIDOPS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NYMBLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_LOKIX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PAWMI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PAWMO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PAWMOT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TANDEMAUS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAUSHOLD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MAUSHOLD_FAMILY_OF_THREE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FIDOUGH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DACHSBUN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SMOLIV, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DOLLIV, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARBOLIVA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SQUAWKABILLY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SQUAWKABILLY_BLUE_PLUMAGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SQUAWKABILLY_WHITE_PLUMAGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NACLI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_NACLSTACK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GARGANACL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHARCADET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARMAROUGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CERULEDGE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TADBULB, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BELLIBOLT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WATTREL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KILOWATTREL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MASCHIFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MABOSSTIFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SHROODLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GRAFAIAI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRAMBLIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRAMBLEGHAST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOEDSCOOL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TOEDSCRUEL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KLAWF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CAPSAKID, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCOVILLAIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RELLOR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RABSCA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLITTLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ESPATHRA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TINKATINK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TINKATUFF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TINKATON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WIGLETT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WUGTRIO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BOMBIRDIER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FINIZEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PALAFIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VAROOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM_SEGIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM_SCHEDAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM_NAVI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM_RUCHBAH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_REVAVROOM_CAPH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CYCLIZAR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ORTHWORM, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLIMMET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GLIMMORA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GREAVARD, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HOUNDSTONE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLAMIGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CETODDLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CETITAN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_VELUZA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DONDOZO, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_TATSUGIRI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TATSUGIRI_DROOPY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TATSUGIRI_STRETCHY, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ANNIHILAPE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CLODSIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FARIGIRAF, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUDUNSPARCE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DUDUNSPARCE_THREE_SEGMENT, OVERWORLD_SIZE_LARGE)
        MON_FOLLOWER_ENTRY(SPECIES_KINGAMBIT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GREAT_TUSK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SCREAM_TAIL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BRUTE_BONNET, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FLUTTER_MANE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SLITHER_WING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SANDY_SHOCKS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_TREADS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_BUNDLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_HANDS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_JUGULIS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_MOTH, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_THORNS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FRIGIBAX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCTIBAX, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_BAXCALIBUR, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GIMMIGHOUL, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GIMMIGHOUL_ROAMING, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GHOLDENGO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WO_CHIEN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHIEN_PAO, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TING_LU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_CHI_YU, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ROARING_MOON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_VALIANT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_KORAIDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MIRAIDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_WALKING_WAKE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_LEAVES, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_DIPPLIN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_POLTCHAGEIST, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_SINISTCHA, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OKIDOGI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_MUNKIDORI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_FEZANDIPITI, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OGERPON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OGERPON_WELLSPRING_MASK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OGERPON_HEARTHFLAME_MASK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_OGERPON_CORNERSTONE_MASK, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_ARCHALUDON, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_HYDRAPPLE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_GOUGING_FIRE, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_RAGING_BOLT, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_BOULDER, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_IRON_CROWN, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_TERAPAGOS, OVERWORLD_SIZE_SMALL)
        MON_FOLLOWER_ENTRY(SPECIES_PECHARUNT, OVERWORLD_SIZE_SMALL)

        { 0xFFFF, 0, 0 },
    };

// used for HoF/pokeathlon overworlds
struct OVERWORLD_TAG *grab_overworld_ptr(u16 tag)
{
    int i = 0;
    while (gOWTagToFileNum[i].tag != 0xFFFF) {
        if (gOWTagToFileNum[i].tag == tag) {
            return &gOWTagToFileNum[i];
        }
        i++;
    }
    return &gOWTagToFileNum[2]; // default error failure
}

u16 get_a081_index_from_tag(u16 tag)
{
    struct OVERWORLD_TAG *overworldData = grab_overworld_ptr(tag);

    return overworldData->gfx;
}

u32 grab_overworld_a081_index(u16 species, u32 form, u32 isFemale)
{
    u32 ret, tag;

    if (species <= 0 || species > MAX_MON_NUM) { // base species, Enamorus
        ret = 1;
    } else {
        tag = get_mon_ow_tag(species, form, isFemale);

        ret = get_a081_index_from_tag(tag);
    }

    return ret;
}
