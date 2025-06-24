#include "../../include/types.h"
#include "../../include/constants/file.h"
#include "../../include/constants/species.h"
#include "../../include/pokemon.h"

#define OVERWORLD_SIZE_SMALL 0x4E27
#define OVERWORLD_SIZE_SMALL_NO_SHADOW 0x4E26
#define OVERWORLD_SIZE_LARGE 0x5208

/*
 *  if you would like to add new overworlds, go to
 *  https://ds-pokemon-hacking.github.io/docs/generation-iv/guides/hgss-new_overworlds/
 *  this describes how to edit narcs.mk to introduce a custom subfolder to your project
 */

#define NEW_NPC_START 7000
#define NEW_NPC_GFX_START 1553 // exact number may depend--it is the number of the first overworld gfx that is not used in the overworld table
#define NEW_NPC_ENTRY(num) {.tag = NEW_NPC_START + num, .gfx = NEW_NPC_GFX_START + num, .callback_params = 0}

struct OVERWORLD_TAG gOWTagToFileNum[] = // skip down a bit to see the parts that are specifically for pokémon
{
    { .tag =    0, .gfx =  69, .callback_params = 0x1C60},
    { .tag =    1, .gfx =   0, .callback_params = 0x0000},
    { .tag =    2, .gfx =   1, .callback_params = 0x0000},
    { .tag =    3, .gfx =   2, .callback_params = 0x0000},
    { .tag =    4, .gfx =   3, .callback_params = 0x0000},
    { .tag =    5, .gfx =   4, .callback_params = 0x0000},
    { .tag =    6, .gfx =   5, .callback_params = 0x0000},
    { .tag =    7, .gfx =   6, .callback_params = 0x0000},
    { .tag =    8, .gfx =   7, .callback_params = 0x0000},
    { .tag =    9, .gfx =   8, .callback_params = 0x0000},
    { .tag =   10, .gfx =   9, .callback_params = 0x0000},
    { .tag =   11, .gfx =  10, .callback_params = 0x0000},
    { .tag =   12, .gfx =  12, .callback_params = 0x0000},
    { .tag =   13, .gfx =  13, .callback_params = 0x0000},
    { .tag =   14, .gfx =  14, .callback_params = 0x0000},
    { .tag =   15, .gfx =  16, .callback_params = 0x0000},
    { .tag =   16, .gfx =  17, .callback_params = 0x0000},
    { .tag =   17, .gfx =  18, .callback_params = 0x0000},
    { .tag =   18, .gfx =  19, .callback_params = 0x0000},
    { .tag =   19, .gfx =  34, .callback_params = 0x0000},
    { .tag =   20, .gfx =  35, .callback_params = 0x0000},
    { .tag =   21, .gfx =  71, .callback_params = 0x1881},
    { .tag =   22, .gfx =  31, .callback_params = 0x0000},
    { .tag =   23, .gfx =  32, .callback_params = 0x0000},
    { .tag =   24, .gfx =  23, .callback_params = 0x0000},
    { .tag =   25, .gfx =  24, .callback_params = 0x0000},
    { .tag =   29, .gfx =  25, .callback_params = 0x0000},
    { .tag =   30, .gfx =  26, .callback_params = 0x0000},
    { .tag =   31, .gfx =  36, .callback_params = 0x0000},
    { .tag =   33, .gfx =  22, .callback_params = 0x0000},
    { .tag =   34, .gfx =  37, .callback_params = 0x0000},
    { .tag =   35, .gfx =  38, .callback_params = 0x0000},
    { .tag =   36, .gfx =  39, .callback_params = 0x0000},
    { .tag =   37, .gfx =  40, .callback_params = 0x0000},
    { .tag =   38, .gfx =  20, .callback_params = 0x0001},
    { .tag =   39, .gfx =  21, .callback_params = 0x0001},
    { .tag =   40, .gfx =  41, .callback_params = 0x0000},
    { .tag =   41, .gfx =  42, .callback_params = 0x0000},
    { .tag =   42, .gfx =  43, .callback_params = 0x0000},
    { .tag =   43, .gfx =  44, .callback_params = 0x0000},
    { .tag =   44, .gfx =  45, .callback_params = 0x0000},
    { .tag =   45, .gfx =  46, .callback_params = 0x0000},
    { .tag =   50, .gfx =  47, .callback_params = 0x0000},
    { .tag =   51, .gfx =  48, .callback_params = 0x0000},
    { .tag =   52, .gfx =  49, .callback_params = 0x0000},
    { .tag =   53, .gfx =  50, .callback_params = 0x0000},
    { .tag =   54, .gfx =  51, .callback_params = 0x0000},
    { .tag =   55, .gfx =  52, .callback_params = 0x0000},
    { .tag =   56, .gfx =  53, .callback_params = 0x0000},
    { .tag =   59, .gfx =  29, .callback_params = 0x0000},
    { .tag =   60, .gfx =  30, .callback_params = 0x0000},
    { .tag =   62, .gfx =  27, .callback_params = 0x0000},
    { .tag =   63, .gfx =  28, .callback_params = 0x0000},
    { .tag =   68, .gfx =  11, .callback_params = 0x0000},
    { .tag =   69, .gfx =  15, .callback_params = 0x0000},
    { .tag =   70, .gfx =  33, .callback_params = 0x0000},
    { .tag =   71, .gfx =  68, .callback_params = 0x0000},
    { .tag =   84, .gfx =  91, .callback_params = 0x0420},
    { .tag =   85, .gfx =  92, .callback_params = 0x0820},
    { .tag =   86, .gfx =  93, .callback_params = 0x0020},
    { .tag =   87, .gfx =  94, .callback_params = 0x0420},
    { .tag =   97, .gfx =  70, .callback_params = 0x1C60},
    { .tag =   98, .gfx =  72, .callback_params = 0x1881},
    { .tag =   99, .gfx =  54, .callback_params = 0x0000},
    { .tag =  126, .gfx = 215, .callback_params = 0x0000},
    { .tag =  127, .gfx = 216, .callback_params = 0x0000},
    { .tag =  128, .gfx = 217, .callback_params = 0x0000},
    { .tag =  129, .gfx = 218, .callback_params = 0x0000},
    { .tag =  130, .gfx = 219, .callback_params = 0x0000},
    { .tag =  131, .gfx = 220, .callback_params = 0x0000},
    { .tag =  132, .gfx = 221, .callback_params = 0x0000},
    { .tag =  133, .gfx = 222, .callback_params = 0x0000},
    { .tag =  141, .gfx =  62, .callback_params = 0x0000},
    { .tag =  142, .gfx =  63, .callback_params = 0x0000},
    { .tag =  143, .gfx =  64, .callback_params = 0x0000},
    { .tag =  144, .gfx =  65, .callback_params = 0x0000},
    { .tag =  145, .gfx =  66, .callback_params = 0x0000},
    { .tag =  146, .gfx =  67, .callback_params = 0x0000},
    { .tag =  148, .gfx =  58, .callback_params = 0x0000},
    { .tag =  168, .gfx =  57, .callback_params = 0x0000},
    { .tag =  169, .gfx =  61, .callback_params = 0x0000},
    { .tag =  175, .gfx =  55, .callback_params = 0x0000},
    { .tag =  176, .gfx =  75, .callback_params = 0x20A0},
    { .tag =  177, .gfx =  76, .callback_params = 0x20A0},
    { .tag =  180, .gfx =  77, .callback_params = 0x28C0},
    { .tag =  181, .gfx =  78, .callback_params = 0x28C0},
    { .tag =  178, .gfx =  73, .callback_params = 0x24E0},
    { .tag =  179, .gfx =  74, .callback_params = 0x24E0},
    { .tag =  183, .gfx =   0, .callback_params = 0xFDE2},
    { .tag =  188, .gfx =  79, .callback_params = 0x2D00},
    { .tag =  189, .gfx =  80, .callback_params = 0x2D00},
    { .tag =  248, .gfx =  81, .callback_params = 0x3120},
    { .tag =  249, .gfx =  82, .callback_params = 0x3120},
    { .tag =  193, .gfx =  56, .callback_params = 0x0000},
    { .tag = 8192, .gfx =   0, .callback_params = 0xFC03},
    { .tag =  196, .gfx =  85, .callback_params = 0x3D60},
    { .tag =  197, .gfx =  86, .callback_params = 0x3D60},
    { .tag =  198, .gfx =  87, .callback_params = 0x40A0},
    { .tag =  199, .gfx =  88, .callback_params = 0x40A0},
    { .tag =  200, .gfx =  89, .callback_params = 0x3540},
    { .tag =  201, .gfx =  90, .callback_params = 0x3540},
    { .tag =  211, .gfx = 170, .callback_params = 0x0000},
    { .tag =  218, .gfx = 171, .callback_params = 0x0000},
    { .tag =  219, .gfx =  83, .callback_params = 0x0000},
    { .tag =  220, .gfx = 172, .callback_params = 0x0000},
    { .tag =  221, .gfx = 173, .callback_params = 0x0000},
    { .tag =  222, .gfx = 174, .callback_params = 0x0000},
    { .tag =  223, .gfx = 175, .callback_params = 0x0000},
    { .tag =  224, .gfx = 176, .callback_params = 0x0000},
    { .tag =  293, .gfx = 244, .callback_params = 0x0000},
    { .tag =  294, .gfx = 245, .callback_params = 0x0000},
    { .tag =  225, .gfx = 177, .callback_params = 0x0000},
    { .tag =  227, .gfx = 178, .callback_params = 0x0000},
    { .tag =  229, .gfx = 179, .callback_params = 0x0000},
    { .tag =  232, .gfx = 180, .callback_params = 0x0000},
    { .tag =  233, .gfx = 223, .callback_params = 0x0000},
    { .tag =  235, .gfx = 181, .callback_params = 0x0000},
    { .tag =  236, .gfx = 182, .callback_params = 0x0000},
    { .tag =  237, .gfx = 183, .callback_params = 0x0000},
    { .tag =  238, .gfx = 213, .callback_params = 0x1C60},
    { .tag =  239, .gfx = 214, .callback_params = 0x1C60},
    { .tag =  250, .gfx =  84, .callback_params = 0x0C00},
    { .tag =  251, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  252, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  253, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  254, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  255, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  256, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  257, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  258, .gfx =  95, .callback_params = 0x1C60},
    { .tag =  259, .gfx =  96, .callback_params = 0x1C60},
    { .tag =  260, .gfx =  97, .callback_params = 0x3540},
    { .tag =  261, .gfx =  98, .callback_params = 0x3540},
    { .tag =  262, .gfx = 251, .callback_params = 0x5647},
    { .tag =  263, .gfx = 255, .callback_params = 0x5647},
    { .tag =  264, .gfx = 258, .callback_params = 0x5647},
    { .tag =  265, .gfx = 252, .callback_params = 0x5647},
    { .tag =  266, .gfx = 254, .callback_params = 0x5647},
    { .tag =  267, .gfx = 257, .callback_params = 0x5647},
    { .tag =  268, .gfx = 256, .callback_params = 0x5647},
    { .tag =  269, .gfx = 253, .callback_params = 0x5647},
    { .tag =  270, .gfx = 262, .callback_params = 0x5826},
    { .tag =  271, .gfx = 265, .callback_params = 0x5826},
    { .tag =  272, .gfx = 259, .callback_params = 0x5826},
    { .tag =  273, .gfx = 261, .callback_params = 0x5826},
    { .tag =  274, .gfx = 264, .callback_params = 0x5826},
    { .tag =  275, .gfx = 263, .callback_params = 0x5826},
    { .tag =  276, .gfx = 260, .callback_params = 0x5826},
    { .tag =  277, .gfx = 103, .callback_params = 0x0000},
    { .tag =  278, .gfx = 104, .callback_params = 0x0000},
    { .tag =  279, .gfx = 105, .callback_params = 0x0000},
    { .tag =  280, .gfx = 106, .callback_params = 0x0000},
    { .tag =  281, .gfx = 107, .callback_params = 0x0000},
    { .tag =  282, .gfx = 108, .callback_params = 0x0000},
    { .tag =  283, .gfx = 109, .callback_params = 0x0000},
    { .tag =  284, .gfx = 110, .callback_params = 0x0000},
    { .tag =  285, .gfx = 101, .callback_params = 0x0000},
    { .tag =  286, .gfx = 102, .callback_params = 0x0000},
    { .tag =  287, .gfx = 111, .callback_params = 0x0006},
    { .tag =  288, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  289, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  290, .gfx = 112, .callback_params = 0x1025},
    { .tag =  291, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  292, .gfx =   0, .callback_params = 0xFDE4},
    { .tag =  295, .gfx = 246, .callback_params = 0x1C60},
    { .tag =  296, .gfx = 247, .callback_params = 0x1C60},
    { .tag =  297, .gfx = 248, .callback_params = 0x40A0},
    { .tag =  298, .gfx = 249, .callback_params = 0x40A0},
    { .tag =  299, .gfx = 250, .callback_params = 0x0000},
    { .tag =  315, .gfx = 113, .callback_params = 0x0000},
    { .tag =  316, .gfx = 114, .callback_params = 0x0000},
    { .tag =  317, .gfx = 115, .callback_params = 0x0000},
    { .tag =  318, .gfx = 116, .callback_params = 0x0000},
    { .tag =  319, .gfx = 117, .callback_params = 0x0000},
    { .tag =  320, .gfx = 118, .callback_params = 0x0000},
    { .tag =  321, .gfx = 119, .callback_params = 0x0000},
    { .tag =  322, .gfx = 120, .callback_params = 0x0000},
    { .tag =  323, .gfx = 121, .callback_params = 0x0000},
    { .tag =  324, .gfx = 122, .callback_params = 0x0000},
    { .tag =  325, .gfx = 123, .callback_params = 0x0000},
    { .tag =  326, .gfx = 124, .callback_params = 0x0000},
    { .tag =  327, .gfx = 125, .callback_params = 0x0000},
    { .tag =  328, .gfx = 126, .callback_params = 0x0000},
    { .tag =  329, .gfx = 127, .callback_params = 0x0000},
    { .tag =  330, .gfx = 128, .callback_params = 0x0000},
    { .tag =  331, .gfx = 129, .callback_params = 0x0000},
    { .tag =  332, .gfx = 130, .callback_params = 0x0000},
    { .tag =  333, .gfx = 131, .callback_params = 0x0000},
    { .tag =  334, .gfx = 132, .callback_params = 0x0000},
    { .tag =  335, .gfx = 133, .callback_params = 0x1580},
    { .tag =  336, .gfx = 134, .callback_params = 0x0000},
    { .tag =  337, .gfx = 135, .callback_params = 0x0000},
    { .tag =  338, .gfx = 136, .callback_params = 0x0000},
    { .tag =  341, .gfx = 137, .callback_params = 0x0000},
    { .tag =  342, .gfx = 138, .callback_params = 0x0000},
    { .tag =  343, .gfx = 139, .callback_params = 0x0000},
    { .tag =  344, .gfx = 140, .callback_params = 0x0000},
    { .tag =  345, .gfx = 141, .callback_params = 0x0000},
    { .tag =  346, .gfx = 142, .callback_params = 0x0000},
    { .tag =  347, .gfx = 143, .callback_params = 0x0000},
    { .tag =  348, .gfx = 144, .callback_params = 0x0000},
    { .tag =  351, .gfx = 145, .callback_params = 0x0000},
    { .tag =  352, .gfx = 146, .callback_params = 0x0000},
    { .tag =  353, .gfx = 147, .callback_params = 0x0000},
    { .tag =  354, .gfx = 148, .callback_params = 0x0000},
    { .tag =  355, .gfx = 149, .callback_params = 0x0000},
    { .tag =  356, .gfx = 150, .callback_params = 0x0000},
    { .tag =  357, .gfx = 151, .callback_params = 0x0000},
    { .tag =  358, .gfx = 152, .callback_params = 0x0000},
    { .tag =  359, .gfx = 153, .callback_params = 0x0000},
    { .tag =  360, .gfx = 154, .callback_params = 0x0000},
    { .tag =  361, .gfx = 155, .callback_params = 0x0000},
    { .tag =  362, .gfx = 156, .callback_params = 0x0000},
    { .tag =  363, .gfx = 157, .callback_params = 0x0000},
    { .tag =  364, .gfx = 158, .callback_params = 0x0000},
    { .tag =  365, .gfx = 159, .callback_params = 0x0000},
    { .tag =  366, .gfx = 160, .callback_params = 0x0000},
    { .tag =  367, .gfx = 161, .callback_params = 0x0000},
    { .tag =  368, .gfx = 162, .callback_params = 0x0000},
    { .tag =  369, .gfx = 163, .callback_params = 0x0000},
    { .tag =  370, .gfx = 164, .callback_params = 0x0000},
    { .tag =  371, .gfx = 165, .callback_params = 0x0000},
    { .tag =  372, .gfx = 166, .callback_params = 0x0000},
    { .tag =  373, .gfx = 167, .callback_params = 0x0000},
    { .tag =  374, .gfx = 168, .callback_params = 0x0000},
    { .tag =  375, .gfx = 169, .callback_params = 0x0000},
    { .tag =  377, .gfx = 184, .callback_params = 0x0000},
    { .tag =  378, .gfx = 185, .callback_params = 0x0000},
    { .tag =  380, .gfx = 224, .callback_params = 0x0000},
    { .tag =  381, .gfx = 186, .callback_params = 0x0000},
    { .tag =  382, .gfx = 187, .callback_params = 0x0000},
    { .tag =  383, .gfx = 188, .callback_params = 0x0000},
    { .tag =  384, .gfx = 189, .callback_params = 0x0000},
    { .tag =  385, .gfx = 225, .callback_params = 0x0000},
    { .tag =  386, .gfx = 226, .callback_params = 0x0000},
    { .tag =  387, .gfx = 227, .callback_params = 0x0000},
    { .tag =  389, .gfx = 190, .callback_params = 0x0000},
    { .tag =  390, .gfx = 228, .callback_params = 0x0000},
    { .tag =  392, .gfx = 191, .callback_params = 0x0000},
    { .tag =  393, .gfx = 192, .callback_params = 0x0000},
    { .tag =  394, .gfx = 193, .callback_params = 0x0000},
    { .tag =  395, .gfx = 194, .callback_params = 0x5C06},
    { .tag =  406, .gfx = 195, .callback_params = 0x0006},
    { .tag =  409, .gfx = 200, .callback_params = 0x0000},
    { .tag =  410, .gfx = 198, .callback_params = 0x0000},
    { .tag =  411, .gfx = 197, .callback_params = 0x0000},
    { .tag =  412, .gfx = 199, .callback_params = 0x0000},
    { .tag =  413, .gfx = 196, .callback_params = 0x0000},
    { .tag =  349, .gfx = 243, .callback_params = 0x5C00},
    { .tag =  234, .gfx = 242, .callback_params = 0x0024},
    { .tag =  350, .gfx = 229, .callback_params = 0x0024},
    { .tag =  376, .gfx = 230, .callback_params = 0x0024},
    { .tag =  379, .gfx = 231, .callback_params = 0x0024},
    { .tag =  210, .gfx = 239, .callback_params = 0x5C24},
    { .tag =  396, .gfx = 241, .callback_params = 0x5C24},
    { .tag =  397, .gfx = 240, .callback_params = 0x0024},
    { .tag =  398, .gfx = 237, .callback_params = 0x0024},
    { .tag =  399, .gfx = 234, .callback_params = 0x0024},
    { .tag =  400, .gfx = 235, .callback_params = 0x5C24},
    { .tag =  401, .gfx = 236, .callback_params = 0x0024},
    { .tag =  402, .gfx = 238, .callback_params = 0x0024},
    { .tag =  403, .gfx = 232, .callback_params = 0x0024},
    { .tag =  404, .gfx = 233, .callback_params = 0x0024},
    { .tag =  407, .gfx =  99, .callback_params = 0x1C60},
    { .tag =  408, .gfx = 100, .callback_params = 0x1C60},
    { .tag =  414, .gfx = 209, .callback_params = 0x0000},
    { .tag =  415, .gfx = 201, .callback_params = 0x4E25},
    { .tag =  416, .gfx = 202, .callback_params = 0x4E25},
    { .tag =  417, .gfx = 203, .callback_params = 0x4E25},
    { .tag =  418, .gfx = 204, .callback_params = 0x5225},
    { .tag =  419, .gfx = 205, .callback_params = 0x5225},
    { .tag =  420, .gfx = 206, .callback_params = 0x5225},
    { .tag =  421, .gfx =  59, .callback_params = 0x0000},
    { .tag =  422, .gfx =  60, .callback_params = 0x0000},
    { .tag =  423, .gfx = 207, .callback_params = 0x3A60},
    { .tag =  424, .gfx = 208, .callback_params = 0x3A60},
    { .tag =  425, .gfx = 210, .callback_params = 0x45A5},
    { .tag =  426, .gfx = 211, .callback_params = 0x49A5},
    { .tag =  427, .gfx = 212, .callback_params = 0x0000},

// npc mons

    { .tag =  994, .gfx = 309, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag =  995, .gfx = 313, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag =  996, .gfx = 316, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag =  997, .gfx = 318, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag =  998, .gfx = 319, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag =  999, .gfx = 322, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1000, .gfx = 327, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1001, .gfx = 330, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1002, .gfx = 331, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1003, .gfx = 333, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1004, .gfx = 337, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1005, .gfx = 339, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1006, .gfx = 341, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1007, .gfx = 348, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW},
    { .tag = 1008, .gfx = 350, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1009, .gfx = 351, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1010, .gfx = 352, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1011, .gfx = 360, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1012, .gfx = 361, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1013, .gfx = 364, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1014, .gfx = 365, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1015, .gfx = 377, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1016, .gfx = 378, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1017, .gfx = 381, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1018, .gfx = 383, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1019, .gfx = 399, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1020, .gfx = 410, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1021, .gfx = 411, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1022, .gfx = 413, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1023, .gfx = 429, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1024, .gfx = 442, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1025, .gfx = 443, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1026, .gfx = 444, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1027, .gfx = 445, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1028, .gfx = 447, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1029, .gfx = 448, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1030, .gfx = 451, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1031, .gfx = 481, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1032, .gfx = 483, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1033, .gfx = 490, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1034, .gfx = 498, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1035, .gfx = 571, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1036, .gfx = 572, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1037, .gfx = 573, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1038, .gfx = 574, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1039, .gfx = 575, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1040, .gfx = 581, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1041, .gfx = 710, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1042, .gfx = 711, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1043, .gfx = 712, .callback_params = OVERWORLD_SIZE_LARGE},
    { .tag = 1044, .gfx = 713, .callback_params = OVERWORLD_SIZE_LARGE},
    { .tag = 1045, .gfx = 714, .callback_params = OVERWORLD_SIZE_LARGE},
    { .tag = 1046, .gfx = 472, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1047, .gfx = 452, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1048, .gfx = 456, .callback_params = OVERWORLD_SIZE_SMALL},
    { .tag = 1049, .gfx = 459, .callback_params = OVERWORLD_SIZE_SMALL},



// pokémon follower specific overworlds start here... left off on gfx 1451 - galarian stunfisk which was inserted after all the others

    { .tag =  428, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BULBASAUR
    { .tag =  429, .gfx =  298, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IVYSAUR
    { .tag =  430, .gfx =  299, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VENUSAUR
    { .tag =  431, .gfx =  300, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  432, .gfx =  301, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHARMANDER
    { .tag =  433, .gfx =  302, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHARMELEON
    { .tag =  434, .gfx =  303, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHARIZARD
    { .tag =  435, .gfx =  304, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SQUIRTLE
    { .tag =  436, .gfx =  305, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WARTORTLE
    { .tag =  437, .gfx =  306, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLASTOISE
    { .tag =  438, .gfx =  307, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CATERPIE
    { .tag =  439, .gfx =  308, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_METAPOD
    { .tag =  440, .gfx =  309, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUTTERFREE
    { .tag =  441, .gfx =  310, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WEEDLE
    { .tag =  442, .gfx =  311, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KAKUNA
    { .tag =  443, .gfx =  312, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BEEDRILL
    { .tag =  444, .gfx =  313, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIDGEY
    { .tag =  445, .gfx =  314, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIDGEOTTO
    { .tag =  446, .gfx =  315, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIDGEOT
    { .tag =  447, .gfx =  316, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RATTATA
    { .tag =  448, .gfx = 1293, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  449, .gfx =  317, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RATICATE
    { .tag =  450, .gfx = 1294, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  451, .gfx =  318, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPEAROW
    { .tag =  452, .gfx =  319, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FEAROW
    { .tag =  453, .gfx =  320, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EKANS
    { .tag =  454, .gfx =  321, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARBOK
    { .tag =  455, .gfx =  322, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIKACHU
    { .tag =  456, .gfx =  323, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  457, .gfx = 1295, .callback_params = OVERWORLD_SIZE_SMALL}, // cosplay
    { .tag =  458, .gfx = 1296, .callback_params = OVERWORLD_SIZE_SMALL}, // rock star
    { .tag =  459, .gfx = 1297, .callback_params = OVERWORLD_SIZE_SMALL}, // belle
    { .tag =  460, .gfx = 1298, .callback_params = OVERWORLD_SIZE_SMALL}, // pop star
    { .tag =  461, .gfx = 1299, .callback_params = OVERWORLD_SIZE_SMALL}, // ph. d
    { .tag =  462, .gfx = 1300, .callback_params = OVERWORLD_SIZE_SMALL}, // libre
    { .tag =  463, .gfx = 1301, .callback_params = OVERWORLD_SIZE_SMALL}, // original cap
    { .tag =  464, .gfx = 1302, .callback_params = OVERWORLD_SIZE_SMALL}, // hoenn cap
    { .tag =  465, .gfx = 1303, .callback_params = OVERWORLD_SIZE_SMALL}, // sinnoh cap
    { .tag =  466, .gfx = 1304, .callback_params = OVERWORLD_SIZE_SMALL}, // unova cap
    { .tag =  467, .gfx = 1305, .callback_params = OVERWORLD_SIZE_SMALL}, // kalos cap
    { .tag =  468, .gfx = 1306, .callback_params = OVERWORLD_SIZE_SMALL}, // alola cap
    { .tag =  469, .gfx = 1307, .callback_params = OVERWORLD_SIZE_SMALL}, // partner cap
    { .tag =  470, .gfx = 1308, .callback_params = OVERWORLD_SIZE_SMALL}, // world cap
    { .tag =  471, .gfx =  322, .callback_params = OVERWORLD_SIZE_SMALL}, // partner pikachu
    { .tag =  472, .gfx =  324, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RAICHU
    { .tag =  473, .gfx = 1309, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  474, .gfx =  325, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDSHREW
    { .tag =  475, .gfx = 1310, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  476, .gfx =  326, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDSLASH
    { .tag =  477, .gfx = 1311, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  478, .gfx =  327, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDORAN_F
    { .tag =  479, .gfx =  328, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDORINA
    { .tag =  480, .gfx =  329, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDOQUEEN
    { .tag =  481, .gfx =  330, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDORAN_M
    { .tag =  482, .gfx =  331, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDORINO
    { .tag =  483, .gfx =  332, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIDOKING
    { .tag =  484, .gfx =  333, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLEFAIRY
    { .tag =  485, .gfx =  334, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLEFABLE
    { .tag =  486, .gfx =  335, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VULPIX
    { .tag =  487, .gfx = 1312, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  488, .gfx =  336, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NINETALES
    { .tag =  489, .gfx = 1313, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  490, .gfx =  337, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JIGGLYPUFF
    { .tag =  491, .gfx =  338, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WIGGLYTUFF
    { .tag =  492, .gfx =  339, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZUBAT
    { .tag =  493, .gfx =  340, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLBAT
    { .tag =  494, .gfx =  341, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ODDISH
    { .tag =  495, .gfx =  342, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLOOM
    { .tag =  496, .gfx =  343, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VILEPLUME
    { .tag =  497, .gfx =  344, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PARAS
    { .tag =  498, .gfx =  345, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PARASECT
    { .tag =  499, .gfx =  346, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VENONAT
    { .tag =  500, .gfx =  347, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VENOMOTH
    { .tag =  501, .gfx =  348, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW}, // SPECIES_DIGLETT
    { .tag =  502, .gfx = 1314, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW}, // alola
    { .tag =  503, .gfx =  349, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW}, // SPECIES_DUGTRIO
    { .tag =  504, .gfx = 1315, .callback_params = OVERWORLD_SIZE_SMALL_NO_SHADOW}, // alola
    { .tag =  505, .gfx =  350, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEOWTH
    { .tag =  506, .gfx = 1316, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  507, .gfx = 1317, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  508, .gfx =  351, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PERSIAN
    { .tag =  509, .gfx = 1318, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  510, .gfx =  352, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PSYDUCK
    { .tag =  511, .gfx =  353, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLDUCK
    { .tag =  512, .gfx =  354, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANKEY
    { .tag =  513, .gfx =  355, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PRIMEAPE
    { .tag =  514, .gfx =  356, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GROWLITHE
    { .tag =  515, .gfx = 1319, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  516, .gfx =  357, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCANINE
    { .tag =  517, .gfx = 1320, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  518, .gfx =  358, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLIWAG
    { .tag =  519, .gfx =  359, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLIWHIRL
    { .tag =  520, .gfx =  360, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLIWRATH
    { .tag =  521, .gfx =  361, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ABRA
    { .tag =  522, .gfx =  362, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KADABRA
    { .tag =  523, .gfx =  363, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ALAKAZAM
    { .tag =  524, .gfx =  364, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MACHOP
    { .tag =  525, .gfx =  365, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MACHOKE
    { .tag =  526, .gfx =  366, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MACHAMP
    { .tag =  527, .gfx =  367, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BELLSPROUT
    { .tag =  528, .gfx =  368, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WEEPINBELL
    { .tag =  529, .gfx =  369, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VICTREEBEL
    { .tag =  530, .gfx =  370, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TENTACOOL
    { .tag =  531, .gfx =  371, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TENTACRUEL
    { .tag =  532, .gfx =  372, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GEODUDE
    { .tag =  533, .gfx = 1321, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  534, .gfx =  373, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRAVELER
    { .tag =  535, .gfx = 1322, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  536, .gfx =  374, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLEM
    { .tag =  537, .gfx = 1323, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  538, .gfx =  375, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PONYTA
    { .tag =  539, .gfx = 1324, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  540, .gfx =  376, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RAPIDASH
    { .tag =  541, .gfx = 1325, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  542, .gfx =  377, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLOWPOKE
    { .tag =  543, .gfx = 1326, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  544, .gfx =  378, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLOWBRO
    { .tag =  545, .gfx = 1327, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  546, .gfx =  379, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGNEMITE
    { .tag =  547, .gfx =  380, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGNETON
    { .tag =  548, .gfx =  381, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FARFETCHD
    { .tag =  549, .gfx = 1328, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  550, .gfx =  382, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DODUO
    { .tag =  551, .gfx =  383, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DODRIO
    { .tag =  552, .gfx =  384, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEEL
    { .tag =  553, .gfx =  385, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEWGONG
    { .tag =  554, .gfx =  386, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRIMER
    { .tag =  555, .gfx = 1329, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  556, .gfx =  387, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUK
    { .tag =  557, .gfx = 1330, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  558, .gfx =  388, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHELLDER
    { .tag =  559, .gfx =  389, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLOYSTER
    { .tag =  560, .gfx =  390, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GASTLY
    { .tag =  561, .gfx =  391, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HAUNTER
    { .tag =  562, .gfx =  392, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GENGAR
    { .tag =  563, .gfx =  393, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ONIX
    { .tag =  564, .gfx =  394, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DROWZEE
    { .tag =  565, .gfx =  395, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HYPNO
    { .tag =  566, .gfx =  396, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KRABBY
    { .tag =  567, .gfx =  397, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KINGLER
    { .tag =  568, .gfx =  398, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VOLTORB
    { .tag =  569, .gfx = 1331, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  570, .gfx =  399, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELECTRODE
    { .tag =  571, .gfx = 1332, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  572, .gfx =  400, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EXEGGCUTE
    { .tag =  573, .gfx =  401, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EXEGGUTOR
    { .tag =  574, .gfx = 1333, .callback_params = OVERWORLD_SIZE_LARGE}, // alola
    { .tag =  575, .gfx =  402, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CUBONE
    { .tag =  576, .gfx =  403, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAROWAK
    { .tag =  577, .gfx = 1334, .callback_params = OVERWORLD_SIZE_SMALL}, // alola
    { .tag =  578, .gfx =  404, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HITMONLEE
    { .tag =  579, .gfx =  405, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HITMONCHAN
    { .tag =  580, .gfx =  406, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LICKITUNG
    { .tag =  581, .gfx =  407, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KOFFING
    { .tag =  582, .gfx =  408, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WEEZING
    { .tag =  583, .gfx = 1335, .callback_params = OVERWORLD_SIZE_LARGE}, // galar
    { .tag =  584, .gfx =  409, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RHYHORN
    { .tag =  585, .gfx =  410, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RHYDON
    { .tag =  586, .gfx =  411, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHANSEY
    { .tag =  587, .gfx =  412, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TANGELA
    { .tag =  588, .gfx =  413, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KANGASKHAN
    { .tag =  589, .gfx =  414, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HORSEA
    { .tag =  590, .gfx =  415, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEADRA
    { .tag =  591, .gfx =  416, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLDEEN
    { .tag =  592, .gfx =  417, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEAKING
    { .tag =  593, .gfx =  418, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STARYU
    { .tag =  594, .gfx =  419, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STARMIE
    { .tag =  595, .gfx =  420, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MR_MIME
    { .tag =  596, .gfx = 1336, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  597, .gfx =  421, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCYTHER
    { .tag =  598, .gfx =  422, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JYNX
    { .tag =  599, .gfx =  423, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELECTABUZZ
    { .tag =  600, .gfx =  424, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGMAR
    { .tag =  601, .gfx =  425, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PINSIR
    { .tag =  602, .gfx =  426, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAUROS
    { .tag =  603, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // combat
    { .tag =  604, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // blaze
    { .tag =  605, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // aqua
    { .tag =  606, .gfx =  427, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGIKARP
    { .tag =  607, .gfx =  428, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GYARADOS
    { .tag =  608, .gfx =  429, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LAPRAS
    { .tag =  609, .gfx =  430, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DITTO
    { .tag =  610, .gfx =  431, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EEVEE
    { .tag =  611, .gfx =  431, .callback_params = OVERWORLD_SIZE_SMALL}, // partner 
    { .tag =  612, .gfx =  432, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VAPOREON
    { .tag =  613, .gfx =  433, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JOLTEON
    { .tag =  614, .gfx =  434, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLAREON
    { .tag =  615, .gfx =  435, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PORYGON
    { .tag =  616, .gfx =  436, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OMANYTE
    { .tag =  617, .gfx =  437, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OMASTAR
    { .tag =  618, .gfx =  438, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KABUTO
    { .tag =  619, .gfx =  439, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KABUTOPS
    { .tag =  620, .gfx =  440, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AERODACTYL
    { .tag =  621, .gfx =  441, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNORLAX
    { .tag =  622, .gfx =  442, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARTICUNO
    { .tag =  623, .gfx = 1337, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  624, .gfx =  443, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZAPDOS
    { .tag =  625, .gfx = 1338, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  626, .gfx =  444, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MOLTRES
    { .tag =  627, .gfx = 1339, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  628, .gfx =  445, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRATINI
    { .tag =  629, .gfx =  446, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAGONAIR
    { .tag =  630, .gfx =  447, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAGONITE
    { .tag =  631, .gfx =  448, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEWTWO
    { .tag =  632, .gfx =  449, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEW
    { .tag =  633, .gfx =  450, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHIKORITA
    { .tag =  634, .gfx =  451, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BAYLEEF
    { .tag =  635, .gfx =  452, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEGANIUM
    { .tag =  636, .gfx =  453, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  637, .gfx =  454, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CYNDAQUIL
    { .tag =  638, .gfx =  455, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUILAVA
    { .tag =  639, .gfx =  456, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYPHLOSION
    { .tag =  640, .gfx = 1340, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  641, .gfx =  457, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOTODILE
    { .tag =  642, .gfx =  458, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CROCONAW
    { .tag =  643, .gfx =  459, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FERALIGATR
    { .tag =  644, .gfx =  460, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SENTRET
    { .tag =  645, .gfx =  461, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FURRET
    { .tag =  646, .gfx =  462, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOOTHOOT
    { .tag =  647, .gfx =  463, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NOCTOWL
    { .tag =  648, .gfx =  464, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LEDYBA
    { .tag =  649, .gfx =  465, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LEDIAN
    { .tag =  650, .gfx =  466, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPINARAK
    { .tag =  651, .gfx =  467, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARIADOS
    { .tag =  652, .gfx =  468, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CROBAT
    { .tag =  653, .gfx =  469, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHINCHOU
    { .tag =  654, .gfx =  470, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LANTURN
    { .tag =  655, .gfx =  471, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PICHU
    { .tag =  656, .gfx =  472, .callback_params = OVERWORLD_SIZE_SMALL}, // spiky-eared
    { .tag =  657, .gfx =  473, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLEFFA
    { .tag =  658, .gfx =  474, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IGGLYBUFF
    { .tag =  659, .gfx =  475, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOGEPI
    { .tag =  660, .gfx =  476, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOGETIC
    { .tag =  661, .gfx =  477, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NATU
    { .tag =  662, .gfx =  478, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_XATU
    { .tag =  663, .gfx =  479, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAREEP
    { .tag =  664, .gfx =  480, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLAAFFY
    { .tag =  665, .gfx =  481, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AMPHAROS
    { .tag =  666, .gfx =  482, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BELLOSSOM
    { .tag =  667, .gfx =  483, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MARILL
    { .tag =  668, .gfx =  484, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AZUMARILL
    { .tag =  669, .gfx =  485, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SUDOWOODO
    { .tag =  670, .gfx =  486, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLITOED
    { .tag =  671, .gfx =  487, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOPPIP
    { .tag =  672, .gfx =  488, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKIPLOOM
    { .tag =  673, .gfx =  489, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JUMPLUFF
    { .tag =  674, .gfx =  490, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AIPOM
    { .tag =  675, .gfx =  491, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SUNKERN
    { .tag =  676, .gfx =  492, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SUNFLORA
    { .tag =  677, .gfx =  493, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_YANMA
    { .tag =  678, .gfx =  494, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WOOPER
    { .tag =  679, .gfx = 1548, .callback_params = OVERWORLD_SIZE_SMALL}, // paldean
    { .tag =  680, .gfx =  495, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUAGSIRE
    { .tag =  681, .gfx =  496, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ESPEON
    { .tag =  682, .gfx =  497, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_UMBREON
    { .tag =  683, .gfx =  498, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MURKROW
    { .tag =  684, .gfx =  499, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLOWKING
    { .tag =  685, .gfx = 1341, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  686, .gfx =  500, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MISDREAVUS
    { .tag =  687, .gfx =  501, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_UNOWN
    { .tag =  688, .gfx =  502, .callback_params = OVERWORLD_SIZE_SMALL}, // b
    { .tag =  689, .gfx =  503, .callback_params = OVERWORLD_SIZE_SMALL}, // c
    { .tag =  690, .gfx =  504, .callback_params = OVERWORLD_SIZE_SMALL}, // d
    { .tag =  691, .gfx =  505, .callback_params = OVERWORLD_SIZE_SMALL}, // e
    { .tag =  692, .gfx =  506, .callback_params = OVERWORLD_SIZE_SMALL}, // f
    { .tag =  693, .gfx =  507, .callback_params = OVERWORLD_SIZE_SMALL}, // g
    { .tag =  694, .gfx =  508, .callback_params = OVERWORLD_SIZE_SMALL}, // h
    { .tag =  695, .gfx =  509, .callback_params = OVERWORLD_SIZE_SMALL}, // i
    { .tag =  696, .gfx =  510, .callback_params = OVERWORLD_SIZE_SMALL}, // j
    { .tag =  697, .gfx =  511, .callback_params = OVERWORLD_SIZE_SMALL}, // k
    { .tag =  698, .gfx =  512, .callback_params = OVERWORLD_SIZE_SMALL}, // l
    { .tag =  699, .gfx =  513, .callback_params = OVERWORLD_SIZE_SMALL}, // m
    { .tag =  700, .gfx =  514, .callback_params = OVERWORLD_SIZE_SMALL}, // n
    { .tag =  701, .gfx =  515, .callback_params = OVERWORLD_SIZE_SMALL}, // o
    { .tag =  702, .gfx =  516, .callback_params = OVERWORLD_SIZE_SMALL}, // p
    { .tag =  703, .gfx =  517, .callback_params = OVERWORLD_SIZE_SMALL}, // q
    { .tag =  704, .gfx =  518, .callback_params = OVERWORLD_SIZE_SMALL}, // r
    { .tag =  705, .gfx =  519, .callback_params = OVERWORLD_SIZE_SMALL}, // s
    { .tag =  706, .gfx =  520, .callback_params = OVERWORLD_SIZE_SMALL}, // t
    { .tag =  707, .gfx =  521, .callback_params = OVERWORLD_SIZE_SMALL}, // u
    { .tag =  708, .gfx =  522, .callback_params = OVERWORLD_SIZE_SMALL}, // v
    { .tag =  709, .gfx =  523, .callback_params = OVERWORLD_SIZE_SMALL}, // w
    { .tag =  710, .gfx =  524, .callback_params = OVERWORLD_SIZE_SMALL}, // x
    { .tag =  711, .gfx =  525, .callback_params = OVERWORLD_SIZE_SMALL}, // y
    { .tag =  712, .gfx =  526, .callback_params = OVERWORLD_SIZE_SMALL}, // z
    { .tag =  713, .gfx =  527, .callback_params = OVERWORLD_SIZE_SMALL}, // !
    { .tag =  714, .gfx =  528, .callback_params = OVERWORLD_SIZE_SMALL}, // ?
    { .tag =  715, .gfx =  529, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WOBBUFFET
    { .tag =  716, .gfx =  530, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  717, .gfx =  531, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GIRAFARIG
    { .tag =  718, .gfx =  532, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PINECO
    { .tag =  719, .gfx =  533, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FORRETRESS
    { .tag =  720, .gfx =  534, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUNSPARCE
    { .tag =  721, .gfx =  535, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLIGAR
    { .tag =  722, .gfx =  536, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_STEELIX
    { .tag =  723, .gfx =  537, .callback_params = OVERWORLD_SIZE_LARGE}, // female
    { .tag =  724, .gfx =  538, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNUBBULL
    { .tag =  725, .gfx =  539, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRANBULL
    { .tag =  726, .gfx =  540, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QWILFISH
    { .tag =  727, .gfx = 1342, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  728, .gfx =  541, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCIZOR
    { .tag =  729, .gfx =  542, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHUCKLE
    { .tag =  730, .gfx =  543, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HERACROSS
    { .tag =  731, .gfx =  544, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  732, .gfx =  545, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNEASEL
    { .tag =  733, .gfx = 1343, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag =  734, .gfx =  546, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TEDDIURSA
    { .tag =  735, .gfx =  547, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_URSARING
    { .tag =  736, .gfx =  548, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLUGMA
    { .tag =  737, .gfx =  549, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGCARGO
    { .tag =  738, .gfx =  550, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWINUB
    { .tag =  739, .gfx =  551, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PILOSWINE
    { .tag =  740, .gfx =  552, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CORSOLA
    { .tag =  741, .gfx = 1292, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  742, .gfx =  553, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REMORAID
    { .tag =  743, .gfx =  554, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OCTILLERY
    { .tag =  744, .gfx =  555, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DELIBIRD
    { .tag =  745, .gfx =  556, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANTINE
    { .tag =  746, .gfx =  557, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKARMORY
    { .tag =  747, .gfx =  558, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOUNDOUR
    { .tag =  748, .gfx =  559, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOUNDOOM
    { .tag =  749, .gfx =  560, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KINGDRA
    { .tag =  750, .gfx =  561, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PHANPY
    { .tag =  751, .gfx =  562, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DONPHAN
    { .tag =  752, .gfx =  563, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PORYGON2
    { .tag =  753, .gfx =  564, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STANTLER
    { .tag =  754, .gfx =  565, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SMEARGLE
    { .tag =  755, .gfx =  566, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYROGUE
    { .tag =  756, .gfx =  567, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HITMONTOP
    { .tag =  757, .gfx =  568, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SMOOCHUM
    { .tag =  758, .gfx =  569, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELEKID
    { .tag =  759, .gfx =  570, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGBY
    { .tag =  760, .gfx =  571, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MILTANK
    { .tag =  761, .gfx =  572, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLISSEY
    { .tag =  762, .gfx =  573, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RAIKOU
    { .tag =  763, .gfx =  574, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ENTEI
    { .tag =  764, .gfx =  575, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SUICUNE
    { .tag =  765, .gfx =  576, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LARVITAR
    { .tag =  766, .gfx =  577, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PUPITAR
    { .tag =  767, .gfx =  578, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYRANITAR
    { .tag =  768, .gfx =  579, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_LUGIA
    { .tag =  769, .gfx =  580, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_HO_OH
    { .tag =  770, .gfx =  581, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CELEBI
    { .tag =  771, .gfx =  582, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TREECKO
    { .tag =  772, .gfx =  583, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GROVYLE
    { .tag =  773, .gfx =  584, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCEPTILE
    { .tag =  774, .gfx =  585, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TORCHIC
    { .tag =  775, .gfx =  586, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COMBUSKEN
    { .tag =  776, .gfx =  587, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLAZIKEN
    { .tag =  777, .gfx =  588, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUDKIP
    { .tag =  778, .gfx =  589, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MARSHTOMP
    { .tag =  779, .gfx =  590, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWAMPERT
    { .tag =  780, .gfx =  591, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POOCHYENA
    { .tag =  781, .gfx =  592, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIGHTYENA
    { .tag =  782, .gfx =  593, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZIGZAGOON
    { .tag =  783, .gfx = 1344, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  784, .gfx =  594, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LINOONE
    { .tag =  785, .gfx = 1345, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag =  786, .gfx =  595, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WURMPLE
    { .tag =  787, .gfx =  596, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SILCOON
    { .tag =  788, .gfx =  597, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BEAUTIFLY
    { .tag =  789, .gfx =  598, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CASCOON
    { .tag =  790, .gfx =  599, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUSTOX
    { .tag =  791, .gfx =  600, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LOTAD
    { .tag =  792, .gfx =  601, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LOMBRE
    { .tag =  793, .gfx =  602, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUDICOLO
    { .tag =  794, .gfx =  603, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEEDOT
    { .tag =  795, .gfx =  604, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NUZLEAF
    { .tag =  796, .gfx =  605, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHIFTRY
    { .tag =  797, .gfx =  606, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAILLOW
    { .tag =  798, .gfx =  607, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWELLOW
    { .tag =  799, .gfx =  608, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WINGULL
    { .tag =  800, .gfx =  609, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PELIPPER
    { .tag =  801, .gfx =  610, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RALTS
    { .tag =  802, .gfx =  611, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KIRLIA
    { .tag =  803, .gfx =  612, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GARDEVOIR
    { .tag =  804, .gfx =  613, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SURSKIT
    { .tag =  805, .gfx =  614, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MASQUERAIN
    { .tag =  806, .gfx =  615, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHROOMISH
    { .tag =  807, .gfx =  616, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRELOOM
    { .tag =  808, .gfx =  617, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLAKOTH
    { .tag =  809, .gfx =  618, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VIGOROTH
    { .tag =  810, .gfx =  619, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLAKING
    { .tag =  811, .gfx =  620, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NINCADA
    { .tag =  812, .gfx =  621, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NINJASK
    { .tag =  813, .gfx =  622, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHEDINJA
    { .tag =  814, .gfx =  623, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WHISMUR
    { .tag =  815, .gfx =  624, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LOUDRED
    { .tag =  816, .gfx =  625, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EXPLOUD
    { .tag =  817, .gfx =  626, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAKUHITA
    { .tag =  818, .gfx =  627, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HARIYAMA
    { .tag =  819, .gfx =  628, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AZURILL
    { .tag =  820, .gfx =  629, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NOSEPASS
    { .tag =  821, .gfx =  630, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKITTY
    { .tag =  822, .gfx =  631, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DELCATTY
    { .tag =  823, .gfx =  632, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SABLEYE
    { .tag =  824, .gfx =  633, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAWILE
    { .tag =  825, .gfx =  634, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARON
    { .tag =  826, .gfx =  635, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LAIRON
    { .tag =  827, .gfx =  636, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AGGRON
    { .tag =  828, .gfx =  637, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEDITITE
    { .tag =  829, .gfx =  638, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEDICHAM
    { .tag =  830, .gfx =  639, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELECTRIKE
    { .tag =  831, .gfx =  640, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANECTRIC
    { .tag =  832, .gfx =  641, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PLUSLE
    { .tag =  833, .gfx =  642, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MINUN
    { .tag =  834, .gfx =  643, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VOLBEAT
    { .tag =  835, .gfx =  644, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ILLUMISE
    { .tag =  836, .gfx =  645, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROSELIA
    { .tag =  837, .gfx =  646, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GULPIN
    { .tag =  838, .gfx =  647, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWALOT
    { .tag =  839, .gfx =  648, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CARVANHA
    { .tag =  840, .gfx =  649, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHARPEDO
    { .tag =  841, .gfx =  650, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WAILMER
    { .tag =  842, .gfx =  651, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_WAILORD
    { .tag =  843, .gfx =  652, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NUMEL
    { .tag =  844, .gfx =  653, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CAMERUPT
    { .tag =  845, .gfx =  654, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TORKOAL
    { .tag =  846, .gfx =  655, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPOINK
    { .tag =  847, .gfx =  656, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRUMPIG
    { .tag =  848, .gfx =  657, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPINDA
    { .tag =  849, .gfx =  658, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TRAPINCH
    { .tag =  850, .gfx =  659, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VIBRAVA
    { .tag =  851, .gfx =  660, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLYGON
    { .tag =  852, .gfx =  661, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CACNEA
    { .tag =  853, .gfx =  662, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CACTURNE
    { .tag =  854, .gfx =  663, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWABLU
    { .tag =  855, .gfx =  664, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ALTARIA
    { .tag =  856, .gfx =  665, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZANGOOSE
    { .tag =  857, .gfx =  666, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEVIPER
    { .tag =  858, .gfx =  667, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUNATONE
    { .tag =  859, .gfx =  668, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SOLROCK
    { .tag =  860, .gfx =  669, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BARBOACH
    { .tag =  861, .gfx =  670, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WHISCASH
    { .tag =  862, .gfx =  671, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CORPHISH
    { .tag =  863, .gfx =  672, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRAWDAUNT
    { .tag =  864, .gfx =  673, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BALTOY
    { .tag =  865, .gfx =  674, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLAYDOL
    { .tag =  866, .gfx =  675, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LILEEP
    { .tag =  867, .gfx =  676, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRADILY
    { .tag =  868, .gfx =  677, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ANORITH
    { .tag =  869, .gfx =  678, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARMALDO
    { .tag =  870, .gfx =  679, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FEEBAS
    { .tag =  871, .gfx =  680, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MILOTIC
    { .tag =  872, .gfx =  681, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CASTFORM
    { .tag =  873, .gfx = 1448, .callback_params = OVERWORLD_SIZE_SMALL}, // sunny
    { .tag =  874, .gfx = 1449, .callback_params = OVERWORLD_SIZE_SMALL}, // rainy
    { .tag =  875, .gfx = 1450, .callback_params = OVERWORLD_SIZE_SMALL}, // snowy
    { .tag =  876, .gfx =  682, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KECLEON
    { .tag =  877, .gfx =  683, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHUPPET
    { .tag =  878, .gfx =  684, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BANETTE
    { .tag =  879, .gfx =  685, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUSKULL
    { .tag =  880, .gfx =  686, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUSCLOPS
    { .tag =  881, .gfx =  687, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TROPIUS
    { .tag =  882, .gfx =  688, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHIMECHO
    { .tag =  883, .gfx =  689, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ABSOL
    { .tag =  884, .gfx =  690, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WYNAUT
    { .tag =  885, .gfx =  691, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNORUNT
    { .tag =  886, .gfx =  692, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLALIE
    { .tag =  887, .gfx =  693, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPHEAL
    { .tag =  888, .gfx =  694, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEALEO
    { .tag =  889, .gfx =  695, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WALREIN
    { .tag =  890, .gfx =  696, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLAMPERL
    { .tag =  891, .gfx =  697, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HUNTAIL
    { .tag =  892, .gfx =  698, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOREBYSS
    { .tag =  893, .gfx =  699, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RELICANTH
    { .tag =  894, .gfx =  700, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUVDISC
    { .tag =  895, .gfx =  701, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BAGON
    { .tag =  896, .gfx =  702, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHELGON
    { .tag =  897, .gfx =  703, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SALAMENCE
    { .tag =  898, .gfx =  704, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BELDUM
    { .tag =  899, .gfx =  705, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_METANG
    { .tag =  900, .gfx =  706, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_METAGROSS
    { .tag =  901, .gfx =  707, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REGIROCK
    { .tag =  902, .gfx =  708, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REGICE
    { .tag =  903, .gfx =  709, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REGISTEEL
    { .tag =  904, .gfx =  710, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LATIAS
    { .tag =  905, .gfx =  711, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LATIOS
    { .tag =  906, .gfx =  712, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_KYOGRE
    { .tag =  907, .gfx =  713, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_GROUDON
    { .tag =  908, .gfx =  714, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_RAYQUAZA
    { .tag =  909, .gfx =  715, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JIRACHI
    { .tag =  910, .gfx =  716, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEOXYS
    { .tag =  911, .gfx =  717, .callback_params = OVERWORLD_SIZE_SMALL}, // attack
    { .tag =  912, .gfx =  718, .callback_params = OVERWORLD_SIZE_SMALL}, // defense
    { .tag =  913, .gfx =  719, .callback_params = OVERWORLD_SIZE_SMALL}, // speed
    { .tag =  914, .gfx =  720, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TURTWIG
    { .tag =  915, .gfx =  721, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GROTLE
    { .tag =  916, .gfx =  722, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TORTERRA
    { .tag =  917, .gfx =  723, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHIMCHAR
    { .tag =  918, .gfx =  724, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MONFERNO
    { .tag =  919, .gfx =  725, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_INFERNAPE
    { .tag =  920, .gfx =  726, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIPLUP
    { .tag =  921, .gfx =  727, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PRINPLUP
    { .tag =  922, .gfx =  728, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EMPOLEON
    { .tag =  923, .gfx =  729, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STARLY
    { .tag =  924, .gfx =  730, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STARAVIA
    { .tag =  925, .gfx =  731, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STARAPTOR
    { .tag =  926, .gfx =  732, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BIDOOF
    { .tag =  927, .gfx =  733, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BIBAREL
    { .tag =  928, .gfx =  734, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KRICKETOT
    { .tag =  929, .gfx =  735, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KRICKETUNE
    { .tag =  930, .gfx =  736, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHINX
    { .tag =  931, .gfx =  737, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUXIO
    { .tag =  932, .gfx =  738, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUXRAY
    { .tag =  933, .gfx =  739, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUDEW
    { .tag =  934, .gfx =  740, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROSERADE
    { .tag =  935, .gfx =  741, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRANIDOS
    { .tag =  936, .gfx =  742, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RAMPARDOS
    { .tag =  937, .gfx =  743, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHIELDON
    { .tag =  938, .gfx =  744, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BASTIODON
    { .tag =  939, .gfx =  745, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BURMY
    { .tag =  940, .gfx =  746, .callback_params = OVERWORLD_SIZE_SMALL}, // sandy
    { .tag =  941, .gfx =  747, .callback_params = OVERWORLD_SIZE_SMALL}, // trash
    { .tag =  942, .gfx =  748, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WORMADAM
    { .tag =  943, .gfx =  749, .callback_params = OVERWORLD_SIZE_SMALL}, // sandy
    { .tag =  944, .gfx =  750, .callback_params = OVERWORLD_SIZE_SMALL}, // trash
    { .tag =  945, .gfx =  751, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MOTHIM
    { .tag =  946, .gfx =  752, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COMBEE
    { .tag =  947, .gfx =  753, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  948, .gfx =  754, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VESPIQUEN
    { .tag =  949, .gfx =  755, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PACHIRISU
    { .tag =  950, .gfx =  756, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUIZEL
    { .tag =  951, .gfx =  757, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLOATZEL
    { .tag =  952, .gfx =  758, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHERUBI
    { .tag =  953, .gfx =  759, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHERRIM
    { .tag =  954, .gfx =  760, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHELLOS
    { .tag =  955, .gfx =  761, .callback_params = OVERWORLD_SIZE_SMALL}, // east sea
    { .tag =  956, .gfx =  762, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GASTRODON
    { .tag =  957, .gfx =  763, .callback_params = OVERWORLD_SIZE_SMALL}, // east sea
    { .tag =  958, .gfx =  764, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AMBIPOM
    { .tag =  959, .gfx =  765, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRIFLOON
    { .tag =  960, .gfx =  766, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRIFBLIM
    { .tag =  961, .gfx =  767, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUNEARY
    { .tag =  962, .gfx =  768, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LOPUNNY
    { .tag =  963, .gfx =  769, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MISMAGIUS
    { .tag =  964, .gfx =  770, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HONCHKROW
    { .tag =  965, .gfx =  771, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLAMEOW
    { .tag =  966, .gfx =  772, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PURUGLY
    { .tag =  967, .gfx =  773, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHINGLING
    { .tag =  968, .gfx =  774, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STUNKY
    { .tag =  969, .gfx =  775, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKUNTANK
    { .tag =  970, .gfx =  776, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRONZOR
    { .tag =  971, .gfx =  777, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRONZONG
    { .tag =  972, .gfx =  778, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BONSLY
    { .tag =  973, .gfx =  779, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIMEJR
    { .tag =  974, .gfx =  780, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HAPPINY
    { .tag =  975, .gfx =  781, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHATOT
    { .tag =  976, .gfx =  782, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPIRITOMB
    { .tag =  977, .gfx =  783, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GIBLE
    { .tag =  978, .gfx =  785, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GABITE
    { .tag =  979, .gfx =  787, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GARCHOMP
    { .tag =  980, .gfx =  789, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUNCHLAX
    { .tag =  981, .gfx =  790, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RIOLU
    { .tag =  982, .gfx =  791, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUCARIO
    { .tag =  983, .gfx =  792, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HIPPOPOTAS
    { .tag =  984, .gfx =  793, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  985, .gfx =  794, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HIPPOWDON
    { .tag =  986, .gfx =  795, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag =  987, .gfx =  796, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKORUPI
    { .tag =  988, .gfx =  797, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAPION
    { .tag =  989, .gfx =  798, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CROAGUNK
    { .tag =  990, .gfx =  799, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOXICROAK
    { .tag =  991, .gfx =  800, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CARNIVINE
    { .tag =  992, .gfx =  801, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FINNEON
    { .tag =  993, .gfx =  802, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUMINEON
    { .tag = 1050, .gfx =  803, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANTYKE
    { .tag = 1051, .gfx =  804, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNOVER
    { .tag = 1052, .gfx =  805, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ABOMASNOW
    { .tag = 1053, .gfx =  806, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WEAVILE
    { .tag = 1054, .gfx =  807, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGNEZONE
    { .tag = 1055, .gfx =  808, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LICKILICKY
    { .tag = 1056, .gfx =  809, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RHYPERIOR
    { .tag = 1057, .gfx =  810, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TANGROWTH
    { .tag = 1058, .gfx =  811, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELECTIVIRE
    { .tag = 1059, .gfx =  812, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGMORTAR
    { .tag = 1060, .gfx =  813, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOGEKISS
    { .tag = 1061, .gfx =  814, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_YANMEGA
    { .tag = 1062, .gfx =  815, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LEAFEON
    { .tag = 1063, .gfx =  816, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLACEON
    { .tag = 1064, .gfx =  817, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLISCOR
    { .tag = 1065, .gfx =  818, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAMOSWINE
    { .tag = 1066, .gfx =  819, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PORYGON_Z
    { .tag = 1067, .gfx =  820, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GALLADE
    { .tag = 1068, .gfx =  821, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PROBOPASS
    { .tag = 1069, .gfx =  822, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUSKNOIR
    { .tag = 1070, .gfx =  823, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FROSLASS
    { .tag = 1071, .gfx =  824, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROTOM
    { .tag = 1072, .gfx =  825, .callback_params = OVERWORLD_SIZE_SMALL}, // heat
    { .tag = 1073, .gfx =  826, .callback_params = OVERWORLD_SIZE_SMALL}, // wash
    { .tag = 1074, .gfx =  827, .callback_params = OVERWORLD_SIZE_SMALL}, // fridge
    { .tag = 1075, .gfx =  828, .callback_params = OVERWORLD_SIZE_SMALL}, // fan
    { .tag = 1076, .gfx =  829, .callback_params = OVERWORLD_SIZE_SMALL}, // lawn mower
    { .tag = 1077, .gfx =  830, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_UXIE
    { .tag = 1078, .gfx =  831, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MESPRIT
    { .tag = 1079, .gfx =  832, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AZELF
    { .tag = 1080, .gfx =  833, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_DIALGA
    { .tag = 1081, .gfx = 1346, .callback_params = OVERWORLD_SIZE_LARGE}, // origin
    { .tag = 1082, .gfx =  834, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_PALKIA
    { .tag = 1083, .gfx = 1347, .callback_params = OVERWORLD_SIZE_LARGE}, // origin
    { .tag = 1084, .gfx =  835, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HEATRAN
    { .tag = 1085, .gfx =  836, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_REGIGIGAS
    { .tag = 1086, .gfx =  837, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_GIRATINA
    { .tag = 1087, .gfx =  838, .callback_params = OVERWORLD_SIZE_LARGE}, // origin
    { .tag = 1088, .gfx =  839, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRESSELIA
    { .tag = 1089, .gfx =  840, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PHIONE
    { .tag = 1090, .gfx =  841, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANAPHY
    { .tag = 1091, .gfx =  842, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DARKRAI
    { .tag = 1092, .gfx =  843, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHAYMIN
    { .tag = 1093, .gfx =  844, .callback_params = OVERWORLD_SIZE_SMALL}, // sky
    { .tag = 1094, .gfx =  845, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_ARCEUS
    { .tag = 1095, .gfx =  846, .callback_params = OVERWORLD_SIZE_LARGE}, // fight
    { .tag = 1096, .gfx =  847, .callback_params = OVERWORLD_SIZE_LARGE}, // fly
    { .tag = 1097, .gfx =  848, .callback_params = OVERWORLD_SIZE_LARGE}, // poison
    { .tag = 1098, .gfx =  849, .callback_params = OVERWORLD_SIZE_LARGE}, // ground
    { .tag = 1099, .gfx =  850, .callback_params = OVERWORLD_SIZE_LARGE}, // rock
    { .tag = 1100, .gfx =  851, .callback_params = OVERWORLD_SIZE_LARGE}, // bug
    { .tag = 1101, .gfx =  852, .callback_params = OVERWORLD_SIZE_LARGE}, // ghost
    { .tag = 1102, .gfx =  853, .callback_params = OVERWORLD_SIZE_LARGE}, // steel
    { .tag = 1103, .gfx =  854, .callback_params = OVERWORLD_SIZE_LARGE}, // fairy
    { .tag = 1104, .gfx =  855, .callback_params = OVERWORLD_SIZE_LARGE}, // fire
    { .tag = 1105, .gfx =  856, .callback_params = OVERWORLD_SIZE_LARGE}, // water
    { .tag = 1106, .gfx =  857, .callback_params = OVERWORLD_SIZE_LARGE}, // grass
    { .tag = 1107, .gfx =  858, .callback_params = OVERWORLD_SIZE_LARGE}, // electric
    { .tag = 1108, .gfx =  859, .callback_params = OVERWORLD_SIZE_LARGE}, // psychic
    { .tag = 1109, .gfx =  860, .callback_params = OVERWORLD_SIZE_LARGE}, // ice
    { .tag = 1110, .gfx =  861, .callback_params = OVERWORLD_SIZE_LARGE}, // dragon
    { .tag = 1111, .gfx =  862, .callback_params = OVERWORLD_SIZE_LARGE}, // dark
    { .tag = 1112, .gfx =  863, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VICTINI
    { .tag = 1113, .gfx =  864, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNIVY
    { .tag = 1114, .gfx =  865, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SERVINE
    { .tag = 1115, .gfx =  866, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SERPERIOR
    { .tag = 1116, .gfx =  867, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TEPIG
    { .tag = 1117, .gfx =  868, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIGNITE
    { .tag = 1118, .gfx =  869, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EMBOAR
    { .tag = 1119, .gfx =  870, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OSHAWOTT
    { .tag = 1120, .gfx =  871, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEWOTT
    { .tag = 1121, .gfx =  872, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SAMUROTT
    { .tag = 1122, .gfx = 1348, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1123, .gfx =  873, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PATRAT
    { .tag = 1124, .gfx =  874, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WATCHOG
    { .tag = 1125, .gfx =  875, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LILLIPUP
    { .tag = 1126, .gfx =  876, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HERDIER
    { .tag = 1127, .gfx =  877, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STOUTLAND
    { .tag = 1128, .gfx =  878, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PURRLOIN
    { .tag = 1129, .gfx =  879, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LIEPARD
    { .tag = 1130, .gfx =  880, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PANSAGE
    { .tag = 1131, .gfx =  881, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIMISAGE
    { .tag = 1132, .gfx =  882, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PANSEAR
    { .tag = 1133, .gfx =  883, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIMISEAR
    { .tag = 1134, .gfx =  884, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PANPOUR
    { .tag = 1135, .gfx =  885, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIMIPOUR
    { .tag = 1136, .gfx =  886, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUNNA
    { .tag = 1137, .gfx =  887, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUSHARNA
    { .tag = 1138, .gfx =  888, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIDOVE
    { .tag = 1139, .gfx =  889, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TRANQUILL
    { .tag = 1140, .gfx =  890, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_UNFEZANT
    { .tag = 1141, .gfx =  891, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1142, .gfx =  892, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLITZLE
    { .tag = 1143, .gfx =  893, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZEBSTRIKA
    { .tag = 1144, .gfx =  894, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROGGENROLA
    { .tag = 1145, .gfx =  895, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BOLDORE
    { .tag = 1146, .gfx =  896, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GIGALITH
    { .tag = 1147, .gfx =  897, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WOOBAT
    { .tag = 1148, .gfx =  898, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWOOBAT
    { .tag = 1149, .gfx =  899, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRILBUR
    { .tag = 1150, .gfx =  900, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EXCADRILL
    { .tag = 1151, .gfx =  901, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AUDINO
    { .tag = 1152, .gfx =  902, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TIMBURR
    { .tag = 1153, .gfx =  903, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GURDURR
    { .tag = 1154, .gfx =  904, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CONKELDURR
    { .tag = 1155, .gfx =  905, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYMPOLE
    { .tag = 1156, .gfx =  906, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PALPITOAD
    { .tag = 1157, .gfx =  907, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEISMITOAD
    { .tag = 1158, .gfx =  908, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_THROH
    { .tag = 1159, .gfx =  909, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SAWK
    { .tag = 1160, .gfx =  910, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SEWADDLE
    { .tag = 1161, .gfx =  911, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWADLOON
    { .tag = 1162, .gfx =  912, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LEAVANNY
    { .tag = 1163, .gfx =  913, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VENIPEDE
    { .tag = 1164, .gfx =  914, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WHIRLIPEDE
    { .tag = 1165, .gfx =  915, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCOLIPEDE
    { .tag = 1166, .gfx =  916, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COTTONEE
    { .tag = 1167, .gfx =  917, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WHIMSICOTT
    { .tag = 1168, .gfx =  918, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PETILIL
    { .tag = 1169, .gfx =  919, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LILLIGANT
    { .tag = 1170, .gfx = 1349, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1171, .gfx =  921, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BASCULIN
    { .tag = 1172, .gfx = 1350, .callback_params = OVERWORLD_SIZE_SMALL}, // blue stripe
    { .tag = 1173, .gfx =  920, .callback_params = OVERWORLD_SIZE_SMALL}, // white stripe
    { .tag = 1174, .gfx =  922, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDILE
    { .tag = 1175, .gfx =  923, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KROKOROK
    { .tag = 1176, .gfx =  924, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KROOKODILE
    { .tag = 1177, .gfx =  925, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DARUMAKA
    { .tag = 1178, .gfx = 1351, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag = 1179, .gfx =  926, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DARMANITAN
    { .tag = 1180, .gfx = 1352, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag = 1181, .gfx =  927, .callback_params = OVERWORLD_SIZE_SMALL}, // zen mode
    { .tag = 1182, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // galar zen
    { .tag = 1183, .gfx =  928, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MARACTUS
    { .tag = 1184, .gfx =  929, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DWEBBLE
    { .tag = 1185, .gfx =  930, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRUSTLE
    { .tag = 1186, .gfx =  931, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCRAGGY
    { .tag = 1187, .gfx =  932, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCRAFTY
    { .tag = 1188, .gfx =  933, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIGILYPH
    { .tag = 1189, .gfx =  934, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_YAMASK
    { .tag = 1190, .gfx = 1353, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag = 1191, .gfx =  935, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COFAGRIGUS
    { .tag = 1192, .gfx =  936, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TIRTOUGA
    { .tag = 1193, .gfx =  937, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CARRACOSTA
    { .tag = 1194, .gfx =  938, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCHEN
    { .tag = 1195, .gfx =  939, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCHEOPS
    { .tag = 1196, .gfx =  940, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TRUBBISH
    { .tag = 1197, .gfx =  941, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GARBODOR
    { .tag = 1198, .gfx =  942, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZORUA
    { .tag = 1199, .gfx = 1354, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1200, .gfx =  943, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZOROARK
    { .tag = 1201, .gfx = 1355, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1202, .gfx =  944, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MINCCINO
    { .tag = 1203, .gfx =  945, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CINCCINO
    { .tag = 1204, .gfx =  946, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOTHITA
    { .tag = 1205, .gfx =  947, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOTHORITA
    { .tag = 1206, .gfx =  948, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOTHITELLE
    { .tag = 1207, .gfx =  949, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SOLOSIS
    { .tag = 1208, .gfx =  950, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUOSION
    { .tag = 1209, .gfx =  951, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REUNICLUS
    { .tag = 1210, .gfx =  952, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUCKLETT
    { .tag = 1211, .gfx =  953, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWANNA
    { .tag = 1212, .gfx =  954, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VANILLITE
    { .tag = 1213, .gfx =  955, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VANILLISH
    { .tag = 1214, .gfx =  956, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VANILLUXE
    { .tag = 1215, .gfx =  957, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEERLING
    { .tag = 1216, .gfx =  958, .callback_params = OVERWORLD_SIZE_SMALL}, // summer
    { .tag = 1217, .gfx =  959, .callback_params = OVERWORLD_SIZE_SMALL}, // fall
    { .tag = 1218, .gfx =  960, .callback_params = OVERWORLD_SIZE_SMALL}, // winter
    { .tag = 1219, .gfx =  961, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SAWSBUCK
    { .tag = 1220, .gfx =  962, .callback_params = OVERWORLD_SIZE_SMALL}, // summer
    { .tag = 1221, .gfx =  963, .callback_params = OVERWORLD_SIZE_SMALL}, // fall
    { .tag = 1222, .gfx =  964, .callback_params = OVERWORLD_SIZE_SMALL}, // winter
    { .tag = 1223, .gfx =  965, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EMOLGA
    { .tag = 1224, .gfx =  966, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KARRABLAST
    { .tag = 1225, .gfx =  967, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ESCAVALIER
    { .tag = 1226, .gfx =  968, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FOONGUS
    { .tag = 1227, .gfx =  969, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AMOONGUSS
    { .tag = 1228, .gfx =  970, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FRILLISH
    { .tag = 1229, .gfx =  971, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1230, .gfx =  972, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JELLICENT
    { .tag = 1231, .gfx =  973, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1232, .gfx =  974, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ALOMOMOLA
    { .tag = 1233, .gfx =  975, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JOLTIK
    { .tag = 1234, .gfx =  976, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GALVANTULA
    { .tag = 1235, .gfx =  977, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FERROSEED
    { .tag = 1236, .gfx =  978, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FERROTHORN
    { .tag = 1237, .gfx =  979, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLINK
    { .tag = 1238, .gfx =  980, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLANG
    { .tag = 1239, .gfx =  981, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLINKLANG
    { .tag = 1240, .gfx =  982, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYNAMO
    { .tag = 1241, .gfx =  983, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EELEKTRIK
    { .tag = 1242, .gfx =  984, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EELEKTROSS
    { .tag = 1243, .gfx =  985, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELGYEM
    { .tag = 1244, .gfx =  986, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BEHEEYEM
    { .tag = 1245, .gfx =  987, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LITWICK
    { .tag = 1246, .gfx =  988, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LAMPENT
    { .tag = 1247, .gfx =  989, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHANDELURE
    { .tag = 1248, .gfx =  990, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AXEW
    { .tag = 1249, .gfx =  991, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FRAXURE
    { .tag = 1250, .gfx =  992, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HAXORUS
    { .tag = 1251, .gfx =  993, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CUBCHOO
    { .tag = 1252, .gfx =  994, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BEARTIC
    { .tag = 1253, .gfx =  995, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRYOGONAL
    { .tag = 1254, .gfx =  996, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHELMET
    { .tag = 1255, .gfx =  997, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ACCELGOR
    { .tag = 1256, .gfx =  998, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STUNFISK
    { .tag = 1257, .gfx = 1447, .callback_params = OVERWORLD_SIZE_SMALL}, // galar
    { .tag = 1258, .gfx =  999, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIENFOO
    { .tag = 1259, .gfx = 1000, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIENSHAO
    { .tag = 1260, .gfx = 1001, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRUDDIGON
    { .tag = 1261, .gfx = 1002, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLETT
    { .tag = 1262, .gfx = 1003, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLURK
    { .tag = 1263, .gfx = 1004, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PAWNIARD
    { .tag = 1264, .gfx = 1005, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BISHARP
    { .tag = 1265, .gfx = 1006, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BOUFFALANT
    { .tag = 1266, .gfx = 1007, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RUFFLET
    { .tag = 1267, .gfx = 1008, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRAVIARY
    { .tag = 1268, .gfx = 1356, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1269, .gfx = 1009, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VULLABY
    { .tag = 1270, .gfx = 1010, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MANDIBUZZ
    { .tag = 1271, .gfx = 1011, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HEATMOR
    { .tag = 1272, .gfx = 1012, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DURANT
    { .tag = 1273, .gfx = 1013, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEINO
    { .tag = 1274, .gfx = 1014, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZWEILOUS
    { .tag = 1275, .gfx = 1015, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HYDREIGON
    { .tag = 1276, .gfx = 1016, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LARVESTA
    { .tag = 1277, .gfx = 1017, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VOLCARONA
    { .tag = 1278, .gfx = 1018, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COBALION
    { .tag = 1279, .gfx = 1019, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TERRAKION
    { .tag = 1280, .gfx = 1020, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VIRIZION
    { .tag = 1281, .gfx = 1021, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_TORNADUS
    { .tag = 1282, .gfx = 1022, .callback_params = OVERWORLD_SIZE_LARGE}, // therian
    { .tag = 1283, .gfx = 1023, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_THUNDURUS
    { .tag = 1284, .gfx = 1024, .callback_params = OVERWORLD_SIZE_LARGE}, // therian
    { .tag = 1285, .gfx = 1025, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_RESHIRAM
    { .tag = 1286, .gfx = 1026, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_ZEKROM
    { .tag = 1287, .gfx = 1027, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_LANDORUS
    { .tag = 1288, .gfx = 1028, .callback_params = OVERWORLD_SIZE_LARGE}, // therian
    { .tag = 1289, .gfx = 1029, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_KYUREM
    { .tag = 1290, .gfx = 1290, .callback_params = OVERWORLD_SIZE_LARGE}, // white
    { .tag = 1291, .gfx = 1291, .callback_params = OVERWORLD_SIZE_LARGE}, // black
    { .tag = 1292, .gfx = 1030, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KELDEO
    { .tag = 1293, .gfx = 1357, .callback_params = OVERWORLD_SIZE_SMALL}, // resolute
    { .tag = 1294, .gfx = 1031, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MELOETTA
    { .tag = 1295, .gfx = 1032, .callback_params = OVERWORLD_SIZE_SMALL}, // pirouette
    { .tag = 1296, .gfx = 1033, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GENESECT
    { .tag = 1297, .gfx = 1034, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHESPIN
    { .tag = 1298, .gfx = 1035, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUILLADIN
    { .tag = 1299, .gfx = 1036, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHESNAUGHT
    { .tag = 1300, .gfx = 1037, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FENNEKIN
    { .tag = 1301, .gfx = 1038, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRAIXEN
    { .tag = 1302, .gfx = 1039, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DELPHOX
    { .tag = 1303, .gfx = 1040, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FROAKIE
    { .tag = 1304, .gfx = 1041, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FROGADIER
    { .tag = 1305, .gfx = 1042, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRENINJA
    { .tag = 1306, .gfx = 1043, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUNNELBY
    { .tag = 1307, .gfx = 1044, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DIGGERSBY
    { .tag = 1308, .gfx = 1045, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLETCHLING
    { .tag = 1309, .gfx = 1046, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLETCHINDER
    { .tag = 1310, .gfx = 1047, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TALONFLAME
    { .tag = 1311, .gfx = 1048, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCATTERBUG
    { .tag = 1312, .gfx = 1049, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPEWPA
    { .tag = 1313, .gfx = 1050, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VIVILLON
    { .tag = 1314, .gfx = 1358, .callback_params = OVERWORLD_SIZE_SMALL}, // polar
    { .tag = 1315, .gfx = 1359, .callback_params = OVERWORLD_SIZE_SMALL}, // tundra
    { .tag = 1316, .gfx = 1360, .callback_params = OVERWORLD_SIZE_SMALL}, // continental
    { .tag = 1317, .gfx = 1361, .callback_params = OVERWORLD_SIZE_SMALL}, // garden
    { .tag = 1318, .gfx = 1362, .callback_params = OVERWORLD_SIZE_SMALL}, // elegant
    { .tag = 1319, .gfx = 1363, .callback_params = OVERWORLD_SIZE_SMALL}, // meadow
    { .tag = 1320, .gfx = 1364, .callback_params = OVERWORLD_SIZE_SMALL}, // modern
    { .tag = 1321, .gfx = 1365, .callback_params = OVERWORLD_SIZE_SMALL}, // marine
    { .tag = 1322, .gfx = 1366, .callback_params = OVERWORLD_SIZE_SMALL}, // archipelago
    { .tag = 1323, .gfx = 1367, .callback_params = OVERWORLD_SIZE_SMALL}, // high plains
    { .tag = 1324, .gfx = 1368, .callback_params = OVERWORLD_SIZE_SMALL}, // sandstorm
    { .tag = 1325, .gfx = 1369, .callback_params = OVERWORLD_SIZE_SMALL}, // river
    { .tag = 1326, .gfx = 1370, .callback_params = OVERWORLD_SIZE_SMALL}, // monsoon
    { .tag = 1327, .gfx = 1371, .callback_params = OVERWORLD_SIZE_SMALL}, // savanna
    { .tag = 1328, .gfx = 1372, .callback_params = OVERWORLD_SIZE_SMALL}, // sun
    { .tag = 1329, .gfx = 1373, .callback_params = OVERWORLD_SIZE_SMALL}, // ocean
    { .tag = 1330, .gfx = 1374, .callback_params = OVERWORLD_SIZE_SMALL}, // jungle
    { .tag = 1331, .gfx = 1375, .callback_params = OVERWORLD_SIZE_SMALL}, // fancy
    { .tag = 1332, .gfx = 1376, .callback_params = OVERWORLD_SIZE_SMALL}, // poké ball
    { .tag = 1333, .gfx = 1051, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LITLEO
    { .tag = 1334, .gfx = 1052, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PYROAR
    { .tag = 1335, .gfx = 1377, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1336, .gfx = 1053, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLABEBE
    { .tag = 1337, .gfx = 1378, .callback_params = OVERWORLD_SIZE_SMALL}, // yellow
    { .tag = 1338, .gfx = 1379, .callback_params = OVERWORLD_SIZE_SMALL}, // orange
    { .tag = 1339, .gfx = 1380, .callback_params = OVERWORLD_SIZE_SMALL}, // blue
    { .tag = 1340, .gfx = 1381, .callback_params = OVERWORLD_SIZE_SMALL}, // white
    { .tag = 1341, .gfx = 1054, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLOETTE
    { .tag = 1342, .gfx = 1382, .callback_params = OVERWORLD_SIZE_SMALL}, // yellow
    { .tag = 1343, .gfx = 1383, .callback_params = OVERWORLD_SIZE_SMALL}, // orange
    { .tag = 1344, .gfx = 1384, .callback_params = OVERWORLD_SIZE_SMALL}, // blue
    { .tag = 1345, .gfx = 1385, .callback_params = OVERWORLD_SIZE_SMALL}, // white
    { .tag = 1346, .gfx = 1451, .callback_params = OVERWORLD_SIZE_SMALL}, // eternal
    { .tag = 1347, .gfx = 1055, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLORGES
    { .tag = 1348, .gfx = 1386, .callback_params = OVERWORLD_SIZE_SMALL}, // yellow
    { .tag = 1349, .gfx = 1387, .callback_params = OVERWORLD_SIZE_SMALL}, // orange
    { .tag = 1350, .gfx = 1388, .callback_params = OVERWORLD_SIZE_SMALL}, // blue
    { .tag = 1351, .gfx = 1389, .callback_params = OVERWORLD_SIZE_SMALL}, // white
    { .tag = 1352, .gfx = 1056, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKIDDO
    { .tag = 1353, .gfx = 1057, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOGOAT
    { .tag = 1354, .gfx = 1058, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PANCHAM
    { .tag = 1355, .gfx = 1059, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PANGORO
    { .tag = 1356, .gfx = 1060, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FURFROU
    { .tag = 1357, .gfx = 1390, .callback_params = OVERWORLD_SIZE_SMALL}, // heart
    { .tag = 1358, .gfx = 1391, .callback_params = OVERWORLD_SIZE_SMALL}, // star
    { .tag = 1359, .gfx = 1392, .callback_params = OVERWORLD_SIZE_SMALL}, // diamond
    { .tag = 1360, .gfx = 1393, .callback_params = OVERWORLD_SIZE_SMALL}, // debutante
    { .tag = 1361, .gfx = 1394, .callback_params = OVERWORLD_SIZE_SMALL}, // matron
    { .tag = 1362, .gfx = 1395, .callback_params = OVERWORLD_SIZE_SMALL}, // dandy
    { .tag = 1363, .gfx = 1396, .callback_params = OVERWORLD_SIZE_SMALL}, // la reine
    { .tag = 1364, .gfx = 1397, .callback_params = OVERWORLD_SIZE_SMALL}, // kabuki
    { .tag = 1365, .gfx = 1398, .callback_params = OVERWORLD_SIZE_SMALL}, // pharaoh
    { .tag = 1366, .gfx = 1061, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ESPURR
    { .tag = 1367, .gfx = 1062, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEOWSTIC
    { .tag = 1368, .gfx = 1399, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1369, .gfx = 1063, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HONEDGE
    { .tag = 1370, .gfx = 1064, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DOUBLADE
    { .tag = 1371, .gfx = 1065, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AEGISLASH
    { .tag = 1372, .gfx = 1066, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPRITZEE
    { .tag = 1373, .gfx = 1067, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AROMATISSE
    { .tag = 1374, .gfx = 1068, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SWIRLIX
    { .tag = 1375, .gfx = 1069, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLURPUFF
    { .tag = 1376, .gfx = 1070, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_INKAY
    { .tag = 1377, .gfx = 1071, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MALAMAR
    { .tag = 1378, .gfx = 1072, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BINACLE
    { .tag = 1379, .gfx = 1073, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BARBARACLE
    { .tag = 1380, .gfx = 1074, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKRELP
    { .tag = 1381, .gfx = 1075, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAGALGE
    { .tag = 1382, .gfx = 1076, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLAUNCHER
    { .tag = 1383, .gfx = 1077, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLAWITZER
    { .tag = 1384, .gfx = 1078, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HELIOPTILE
    { .tag = 1385, .gfx = 1079, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HELIOLISK
    { .tag = 1386, .gfx = 1080, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYRUNT
    { .tag = 1387, .gfx = 1081, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYRANTRUM
    { .tag = 1388, .gfx = 1082, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AMAURA
    { .tag = 1389, .gfx = 1083, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AURORUS
    { .tag = 1390, .gfx = 1084, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SYLVEON
    { .tag = 1391, .gfx = 1085, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HAWLUCHA
    { .tag = 1392, .gfx = 1086, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEDENNE
    { .tag = 1393, .gfx = 1087, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CARBINK
    { .tag = 1394, .gfx = 1088, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOOMY
    { .tag = 1395, .gfx = 1089, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLIGGOO
    { .tag = 1396, .gfx = 1400, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1397, .gfx = 1090, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOODRA
    { .tag = 1398, .gfx = 1401, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1399, .gfx = 1091, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLEFKI
    { .tag = 1400, .gfx = 1092, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PHANTUMP
    { .tag = 1401, .gfx = 1093, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TREVENANT
    { .tag = 1402, .gfx = 1094, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PUMPKABOO
    { .tag = 1403, .gfx = 1094, .callback_params = OVERWORLD_SIZE_SMALL}, // small - currently not changed
    { .tag = 1404, .gfx = 1094, .callback_params = OVERWORLD_SIZE_SMALL}, // large - currently not changed
    { .tag = 1405, .gfx = 1094, .callback_params = OVERWORLD_SIZE_SMALL}, // super - currently not changed
    { .tag = 1406, .gfx = 1095, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOURGEIST
    { .tag = 1407, .gfx = 1095, .callback_params = OVERWORLD_SIZE_SMALL}, // small - currently not changed
    { .tag = 1408, .gfx = 1095, .callback_params = OVERWORLD_SIZE_SMALL}, // large - currently not changed
    { .tag = 1409, .gfx = 1095, .callback_params = OVERWORLD_SIZE_SMALL}, // super - currently not changed
    { .tag = 1410, .gfx = 1096, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BERGMITE
    { .tag = 1411, .gfx = 1097, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_AVALUGG
    { .tag = 1412, .gfx = 1402, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1413, .gfx = 1098, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NOIBAT
    { .tag = 1414, .gfx = 1099, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NOIVERN
    { .tag = 1415, .gfx = 1100, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_XERNEAS
    { .tag = 1416, .gfx = 1101, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_YVELTAL
    { .tag = 1417, .gfx = 1102, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZYGARDE
    { .tag = 1418, .gfx = 1403, .callback_params = OVERWORLD_SIZE_SMALL}, // 10
    { .tag = 1419, .gfx = 1404, .callback_params = OVERWORLD_SIZE_SMALL}, // 10 power construct?
    { .tag = 1420, .gfx = 1102, .callback_params = OVERWORLD_SIZE_SMALL}, // 50 power construct?
    { .tag = 1421, .gfx = 1405, .callback_params = OVERWORLD_SIZE_SMALL}, // 10 complete?
    { .tag = 1422, .gfx = 1405, .callback_params = OVERWORLD_SIZE_SMALL}, // 50 complete?
    { .tag = 1423, .gfx = 1103, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DIANCIE
    { .tag = 1424, .gfx = 1104, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOOPA
    { .tag = 1425, .gfx = 1406, .callback_params = OVERWORLD_SIZE_LARGE}, // unbound
    { .tag = 1426, .gfx = 1105, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VOLCANION
    { .tag = 1427, .gfx = 1106, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROWLET
    { .tag = 1428, .gfx = 1107, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DARTRIX
    { .tag = 1429, .gfx = 1108, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DECIDUEYE
    { .tag = 1430, .gfx = 1407, .callback_params = OVERWORLD_SIZE_SMALL}, // hisui
    { .tag = 1431, .gfx = 1109, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LITTEN
    { .tag = 1432, .gfx = 1110, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TORRACAT
    { .tag = 1433, .gfx = 1111, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_INCINEROAR
    { .tag = 1434, .gfx = 1112, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POPPLIO
    { .tag = 1435, .gfx = 1113, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRIONNE
    { .tag = 1436, .gfx = 1114, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PRIMARINA
    { .tag = 1437, .gfx = 1115, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PIKIPEK
    { .tag = 1438, .gfx = 1116, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TRUMBEAK
    { .tag = 1439, .gfx = 1117, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOUCANNON
    { .tag = 1440, .gfx = 1118, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_YUNGOOS
    { .tag = 1441, .gfx = 1119, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GUMSHOOS
    { .tag = 1442, .gfx = 1120, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRUBBIN
    { .tag = 1443, .gfx = 1121, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHARJABUG
    { .tag = 1444, .gfx = 1122, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VIKAVOLT
    { .tag = 1445, .gfx = 1123, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRABRAWLER
    { .tag = 1446, .gfx = 1124, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRABOMINABLE
    { .tag = 1447, .gfx = 1125, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ORICORIO
    { .tag = 1448, .gfx = 1408, .callback_params = OVERWORLD_SIZE_SMALL}, // pom pom
    { .tag = 1449, .gfx = 1409, .callback_params = OVERWORLD_SIZE_SMALL}, // psu
    { .tag = 1450, .gfx = 1410, .callback_params = OVERWORLD_SIZE_SMALL}, // sensu
    { .tag = 1451, .gfx = 1126, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CUTIEFLY
    { .tag = 1452, .gfx = 1127, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RIBOMBEE
    { .tag = 1453, .gfx = 1128, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROCKRUFF
    { .tag = 1454, .gfx = 1128, .callback_params = OVERWORLD_SIZE_SMALL}, // own tempo
    { .tag = 1455, .gfx = 1129, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LYCANROC
    { .tag = 1456, .gfx = 1411, .callback_params = OVERWORLD_SIZE_SMALL}, // midnight
    { .tag = 1457, .gfx = 1412, .callback_params = OVERWORLD_SIZE_SMALL}, // dusk
    { .tag = 1458, .gfx = 1130, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WISHIWASHI
    { .tag = 1459, .gfx = 1131, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAREANIE
    { .tag = 1460, .gfx = 1132, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOXAPEX
    { .tag = 1461, .gfx = 1133, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUDBRAY
    { .tag = 1462, .gfx = 1134, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUDSDALE
    { .tag = 1463, .gfx = 1135, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DEWPIDER
    { .tag = 1464, .gfx = 1136, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARAQUANID
    { .tag = 1465, .gfx = 1137, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FOMANTIS
    { .tag = 1466, .gfx = 1138, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LURANTIS
    { .tag = 1467, .gfx = 1139, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MORELULL
    { .tag = 1468, .gfx = 1140, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHIINOTIC
    { .tag = 1469, .gfx = 1141, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SALANDIT
    { .tag = 1470, .gfx = 1142, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SALAZZLE
    { .tag = 1471, .gfx = 1143, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STUFFUL
    { .tag = 1472, .gfx = 1144, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BEWEAR
    { .tag = 1473, .gfx = 1145, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BOUNSWEET
    { .tag = 1474, .gfx = 1146, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STEENEE
    { .tag = 1475, .gfx = 1147, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TSAREENA
    { .tag = 1476, .gfx = 1148, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COMFEY
    { .tag = 1477, .gfx = 1149, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ORANGURU
    { .tag = 1478, .gfx = 1150, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PASSIMIAN
    { .tag = 1479, .gfx = 1151, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WIMPOD
    { .tag = 1480, .gfx = 1152, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOLISOPOD
    { .tag = 1481, .gfx = 1153, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDYGAST
    { .tag = 1482, .gfx = 1154, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PALOSSAND
    { .tag = 1483, .gfx = 1155, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PYUKUMUKU
    { .tag = 1484, .gfx = 1156, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TYPE_NULL
    { .tag = 1485, .gfx = 1157, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SILVALLY
    { .tag = 1486, .gfx = 1413, .callback_params = OVERWORLD_SIZE_SMALL}, // fighting
    { .tag = 1487, .gfx = 1414, .callback_params = OVERWORLD_SIZE_SMALL}, // flying
    { .tag = 1488, .gfx = 1415, .callback_params = OVERWORLD_SIZE_SMALL}, // poison
    { .tag = 1489, .gfx = 1416, .callback_params = OVERWORLD_SIZE_SMALL}, // ground
    { .tag = 1490, .gfx = 1417, .callback_params = OVERWORLD_SIZE_SMALL}, // rock
    { .tag = 1491, .gfx = 1418, .callback_params = OVERWORLD_SIZE_SMALL}, // bug
    { .tag = 1492, .gfx = 1419, .callback_params = OVERWORLD_SIZE_SMALL}, // ghost
    { .tag = 1493, .gfx = 1420, .callback_params = OVERWORLD_SIZE_SMALL}, // steel
    { .tag = 1494, .gfx = 1421, .callback_params = OVERWORLD_SIZE_SMALL}, // fairy
    { .tag = 1495, .gfx = 1422, .callback_params = OVERWORLD_SIZE_SMALL}, // fire
    { .tag = 1496, .gfx = 1423, .callback_params = OVERWORLD_SIZE_SMALL}, // water
    { .tag = 1497, .gfx = 1424, .callback_params = OVERWORLD_SIZE_SMALL}, // grass
    { .tag = 1498, .gfx = 1425, .callback_params = OVERWORLD_SIZE_SMALL}, // electric
    { .tag = 1499, .gfx = 1426, .callback_params = OVERWORLD_SIZE_SMALL}, // psychic
    { .tag = 1500, .gfx = 1427, .callback_params = OVERWORLD_SIZE_SMALL}, // ice
    { .tag = 1501, .gfx = 1428, .callback_params = OVERWORLD_SIZE_SMALL}, // dragon
    { .tag = 1502, .gfx = 1429, .callback_params = OVERWORLD_SIZE_SMALL}, // dark
    { .tag = 1503, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MINIOR
    { .tag = 1504, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // orange - only in battle
    { .tag = 1505, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // yellow - only in battle
    { .tag = 1506, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // green - only in battle
    { .tag = 1507, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // blue - only in battle
    { .tag = 1508, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // indigo - only in battle
    { .tag = 1509, .gfx = 1158, .callback_params = OVERWORLD_SIZE_SMALL}, // violet - only in battle
    { .tag = 1510, .gfx = 1159, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KOMALA
    { .tag = 1511, .gfx = 1160, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TURTONATOR
    { .tag = 1512, .gfx = 1161, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOGEDEMARU
    { .tag = 1513, .gfx = 1162, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIMIKYU
    { .tag = 1514, .gfx = 1163, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRUXISH
    { .tag = 1515, .gfx = 1164, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAMPA
    { .tag = 1516, .gfx = 1165, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DHELMISE
    { .tag = 1517, .gfx = 1166, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_JANGMO_O
    { .tag = 1518, .gfx = 1167, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HAKAMO_O
    { .tag = 1519, .gfx = 1168, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KOMMO_O
    { .tag = 1520, .gfx = 1169, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAPU_KOKO
    { .tag = 1521, .gfx = 1170, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAPU_LELE
    { .tag = 1522, .gfx = 1171, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAPU_BULU
    { .tag = 1523, .gfx = 1172, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAPU_FINI
    { .tag = 1524, .gfx = 1173, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COSMOG
    { .tag = 1525, .gfx = 1174, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COSMOEM
    { .tag = 1526, .gfx = 1175, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SOLGALEO
    { .tag = 1527, .gfx = 1176, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LUNALA
    { .tag = 1528, .gfx = 1177, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NIHILEGO
    { .tag = 1529, .gfx = 1178, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BUZZWOLE
    { .tag = 1530, .gfx = 1179, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PHEROMOSA
    { .tag = 1531, .gfx = 1180, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_XURKITREE
    { .tag = 1532, .gfx = 1181, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CELESTEELA
    { .tag = 1533, .gfx = 1182, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KARTANA
    { .tag = 1534, .gfx = 1183, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GUZZLORD
    { .tag = 1535, .gfx = 1184, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NECROZMA
    { .tag = 1536, .gfx = 1430, .callback_params = OVERWORLD_SIZE_SMALL}, // dusk mane
    { .tag = 1537, .gfx = 1431, .callback_params = OVERWORLD_SIZE_LARGE}, // dawn wings
    { .tag = 1538, .gfx = 1185, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAGEARNA
    { .tag = 1539, .gfx = 1432, .callback_params = OVERWORLD_SIZE_SMALL}, // original color
    { .tag = 1540, .gfx = 1186, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MARSHADOW
    { .tag = 1541, .gfx = 1187, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POIPOLE
    { .tag = 1542, .gfx = 1188, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NAGANADEL
    { .tag = 1543, .gfx = 1189, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STAKATAKA
    { .tag = 1544, .gfx = 1190, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLACEPHALON
    { .tag = 1545, .gfx = 1191, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZERAORA
    { .tag = 1546, .gfx = 1192, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MELTAN
    { .tag = 1547, .gfx = 1193, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MELMETAL
    { .tag = 1548, .gfx = 1194, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GROOKEY
    { .tag = 1549, .gfx = 1195, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_THWACKEY
    { .tag = 1550, .gfx = 1196, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RILLABOOM
    { .tag = 1551, .gfx = 1197, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCORBUNNY
    { .tag = 1552, .gfx = 1198, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RABOOT
    { .tag = 1553, .gfx = 1199, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CINDERACE
    { .tag = 1554, .gfx = 1200, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SOBBLE
    { .tag = 1555, .gfx = 1201, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRIZZILE
    { .tag = 1556, .gfx = 1202, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_INTELEON
    { .tag = 1557, .gfx = 1203, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKWOVET
    { .tag = 1558, .gfx = 1204, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GREEDENT
    { .tag = 1559, .gfx = 1205, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROOKIDEE
    { .tag = 1560, .gfx = 1206, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CORVISQUIRE
    { .tag = 1561, .gfx = 1207, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CORVIKNIGHT
    { .tag = 1562, .gfx = 1208, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BLIPBUG
    { .tag = 1563, .gfx = 1209, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DOTTLER
    { .tag = 1564, .gfx = 1210, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ORBEETLE
    { .tag = 1565, .gfx = 1211, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NICKIT
    { .tag = 1566, .gfx = 1212, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_THIEVUL
    { .tag = 1567, .gfx = 1213, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOSSIFLEUR
    { .tag = 1568, .gfx = 1214, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ELDEGOSS
    { .tag = 1569, .gfx = 1215, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WOOLOO
    { .tag = 1570, .gfx = 1216, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUBWOOL
    { .tag = 1571, .gfx = 1217, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHEWTLE
    { .tag = 1572, .gfx = 1218, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DREDNAW
    { .tag = 1573, .gfx = 1219, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_YAMPER
    { .tag = 1574, .gfx = 1220, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BOLTUND
    { .tag = 1575, .gfx = 1221, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROLYCOLY
    { .tag = 1576, .gfx = 1222, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CARKOL
    { .tag = 1577, .gfx = 1223, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COALOSSAL
    { .tag = 1578, .gfx = 1224, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_APPLIN
    { .tag = 1579, .gfx = 1225, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLAPPLE
    { .tag = 1580, .gfx = 1226, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_APPLETUN
    { .tag = 1581, .gfx = 1227, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SILICOBRA
    { .tag = 1582, .gfx = 1228, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDACONDA
    { .tag = 1583, .gfx = 1229, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CRAMORANT
    { .tag = 1584, .gfx = 1230, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARROKUDA
    { .tag = 1585, .gfx = 1231, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BARRASKEWDA
    { .tag = 1586, .gfx = 1232, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOXEL
    { .tag = 1587, .gfx = 1233, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOXTRICITY
    { .tag = 1588, .gfx = 1433, .callback_params = OVERWORLD_SIZE_SMALL}, // low key
    { .tag = 1589, .gfx = 1234, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIZZLIPEDE
    { .tag = 1590, .gfx = 1235, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CENTISKORCH
    { .tag = 1591, .gfx = 1236, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLOBBOPUS
    { .tag = 1592, .gfx = 1237, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRAPPLOCT
    { .tag = 1593, .gfx = 1238, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SINISTEA
    { .tag = 1594, .gfx = 1238, .callback_params = OVERWORLD_SIZE_SMALL}, // antique
    { .tag = 1595, .gfx = 1239, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLTEAGEIST
    { .tag = 1596, .gfx = 1239, .callback_params = OVERWORLD_SIZE_SMALL}, // antique
    { .tag = 1597, .gfx = 1240, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HATENNA
    { .tag = 1598, .gfx = 1241, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HATTREM
    { .tag = 1599, .gfx = 1242, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_HATTERENE
    { .tag = 1600, .gfx = 1243, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IMPIDIMP
    { .tag = 1601, .gfx = 1244, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MORGREM
    { .tag = 1602, .gfx = 1245, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRIMMSNARL
    { .tag = 1603, .gfx = 1246, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OBSTAGOON
    { .tag = 1604, .gfx = 1247, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PERRSERKER
    { .tag = 1605, .gfx = 1248, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CURSOLA
    { .tag = 1606, .gfx = 1249, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SIRFETCHD
    { .tag = 1607, .gfx = 1250, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MR_RIME
    { .tag = 1608, .gfx = 1251, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RUNERIGUS
    { .tag = 1609, .gfx = 1252, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MILCERY
    { .tag = 1610, .gfx = 1253, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ALCREMIE
    { .tag = 1611, .gfx = 1434, .callback_params = OVERWORLD_SIZE_SMALL}, // berry sweet
    { .tag = 1612, .gfx = 1435, .callback_params = OVERWORLD_SIZE_SMALL}, // love sweet
    { .tag = 1613, .gfx = 1436, .callback_params = OVERWORLD_SIZE_SMALL}, // star sweet
    { .tag = 1614, .gfx = 1437, .callback_params = OVERWORLD_SIZE_SMALL}, // clover sweet
    { .tag = 1615, .gfx = 1438, .callback_params = OVERWORLD_SIZE_SMALL}, // flower sweet
    { .tag = 1616, .gfx = 1439, .callback_params = OVERWORLD_SIZE_SMALL}, // ribbon sweet
    { .tag = 1617, .gfx = 1254, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FALINKS
    { .tag = 1618, .gfx = 1255, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PINCURCHIN
    { .tag = 1619, .gfx = 1256, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNOM
    { .tag = 1620, .gfx = 1257, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FROSMOTH
    { .tag = 1621, .gfx = 1258, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_STONJOURNER
    { .tag = 1622, .gfx = 1259, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_EISCUE
    { .tag = 1623, .gfx = 1260, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_INDEEDEE
    { .tag = 1624, .gfx = 1440, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1625, .gfx = 1261, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MORPEKO
    { .tag = 1626, .gfx = 1262, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CUFANT
    { .tag = 1627, .gfx = 1263, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_COPPERAJAH
    { .tag = 1628, .gfx = 1264, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRACOZOLT
    { .tag = 1629, .gfx = 1265, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCTOZOLT
    { .tag = 1630, .gfx = 1266, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRACOVISH
    { .tag = 1631, .gfx = 1267, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCTOVISH
    { .tag = 1632, .gfx = 1268, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DURALUDON
    { .tag = 1633, .gfx = 1269, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DREEPY
    { .tag = 1634, .gfx = 1270, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAKLOAK
    { .tag = 1635, .gfx = 1271, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DRAGAPULT
    { .tag = 1636, .gfx = 1272, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZACIAN
    { .tag = 1637, .gfx = 1273, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZAMAZENTA
    { .tag = 1638, .gfx = 1274, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_ETERNATUS
    { .tag = 1639, .gfx = 1275, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KUBFU
    { .tag = 1640, .gfx = 1276, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_URSHIFU
    { .tag = 1641, .gfx = 1441, .callback_params = OVERWORLD_SIZE_SMALL}, // rapid strike
    { .tag = 1642, .gfx = 1277, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ZARUDE
    { .tag = 1643, .gfx = 1442, .callback_params = OVERWORLD_SIZE_SMALL}, // dada
    { .tag = 1644, .gfx = 1278, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REGIELEKI
    { .tag = 1645, .gfx = 1279, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REGIDRAGO
    { .tag = 1646, .gfx = 1280, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_GLASTRIER
    { .tag = 1647, .gfx = 1281, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_SPECTRIER
    { .tag = 1648, .gfx = 1282, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CALYREX
    { .tag = 1649, .gfx = 1443, .callback_params = OVERWORLD_SIZE_SMALL}, // ice rider
    { .tag = 1650, .gfx = 1444, .callback_params = OVERWORLD_SIZE_SMALL}, // shadow rider
    { .tag = 1651, .gfx = 1283, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WYRDEER
    { .tag = 1652, .gfx = 1284, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLEAVOR
    { .tag = 1653, .gfx = 1285, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_URSALUNA
    { .tag = 1654, .gfx = 1549, .callback_params = OVERWORLD_SIZE_SMALL}, // bloodmoon
    { .tag = 1655, .gfx = 1286, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BASCULEGION
    { .tag = 1656, .gfx = 1445, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1657, .gfx = 1287, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SNEASLER
    { .tag = 1658, .gfx = 1288, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OVERQWIL
    { .tag = 1659, .gfx = 1289, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_ENAMORUS
    { .tag = 1660, .gfx = 1446, .callback_params = OVERWORLD_SIZE_LARGE}, // therian
    { .tag = 1661, .gfx = 1452, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPRIGATITO
    { .tag = 1662, .gfx = 1453, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLORAGATO
    { .tag = 1663, .gfx = 1454, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MEOWSCARADA
    { .tag = 1664, .gfx = 1455, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FUECOCO
    { .tag = 1665, .gfx = 1456, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CROCALOR
    { .tag = 1666, .gfx = 1457, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SKELEDIRGE
    { .tag = 1667, .gfx = 1458, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUAXLY
    { .tag = 1668, .gfx = 1459, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUAXWELL
    { .tag = 1669, .gfx = 1460, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_QUAQUAVAL
    { .tag = 1670, .gfx = 1461, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LECHONK
    { .tag = 1671, .gfx = 1462, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OINKOLOGNE
    { .tag = 1672, .gfx = 1463, .callback_params = OVERWORLD_SIZE_SMALL}, // female
    { .tag = 1673, .gfx = 1464, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TAROUNTULA
    { .tag = 1674, .gfx = 1465, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SPIDOPS
    { .tag = 1675, .gfx = 1466, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NYMBLE
    { .tag = 1676, .gfx = 1467, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_LOKIX
    { .tag = 1677, .gfx = 1468, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PAWMI
    { .tag = 1678, .gfx = 1469, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PAWMO
    { .tag = 1679, .gfx = 1470, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PAWMOT
    { .tag = 1680, .gfx = 1471, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TANDEMAUS
    { .tag = 1681, .gfx = 1472, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MAUSHOLD
    { .tag = 1682, .gfx = 1473, .callback_params = OVERWORLD_SIZE_SMALL}, // family of three
    { .tag = 1683, .gfx = 1474, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FIDOUGH
    { .tag = 1684, .gfx = 1475, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DACHSBUN
    { .tag = 1685, .gfx = 1476, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SMOLIV
    { .tag = 1686, .gfx = 1477, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DOLLIV
    { .tag = 1687, .gfx = 1478, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARBOLIVA
    { .tag = 1688, .gfx = 1479, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SQUAWKABILLY
    { .tag = 1689, .gfx = 1480, .callback_params = OVERWORLD_SIZE_SMALL}, // blue
    { .tag = 1690, .gfx = 1481, .callback_params = OVERWORLD_SIZE_SMALL}, // yellow
    { .tag = 1691, .gfx = 1482, .callback_params = OVERWORLD_SIZE_SMALL}, // white
    { .tag = 1692, .gfx = 1483, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NACLI
    { .tag = 1693, .gfx = 1484, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_NACLSTACK
    { .tag = 1694, .gfx = 1485, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GARGANACL
    { .tag = 1695, .gfx = 1486, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHARCADET
    { .tag = 1696, .gfx = 1487, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARMAROUGE
    { .tag = 1697, .gfx = 1488, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CERULEDGE
    { .tag = 1698, .gfx = 1489, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TADBULB
    { .tag = 1699, .gfx = 1490, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BELLIBOLT
    { .tag = 1700, .gfx = 1491, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WATTREL
    { .tag = 1701, .gfx = 1492, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KILOWATTREL
    { .tag = 1702, .gfx = 1493, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MASCHIFF
    { .tag = 1703, .gfx = 1494, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MABOSSTIFF
    { .tag = 1704, .gfx = 1495, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SHROODLE
    { .tag = 1705, .gfx = 1496, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GRAFAIAI
    { .tag = 1706, .gfx = 1497, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRAMBLIN
    { .tag = 1707, .gfx = 1498, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRAMBLEGHAST
    { .tag = 1708, .gfx = 1499, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOEDSCOOL
    { .tag = 1709, .gfx = 1500, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TOEDSCRUEL
    { .tag = 1710, .gfx = 1501, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KLAWF
    { .tag = 1711, .gfx = 1502, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CAPSAKID
    { .tag = 1712, .gfx = 1503, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCOVILLAIN
    { .tag = 1713, .gfx = 1504, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RELLOR
    { .tag = 1714, .gfx = 1505, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RABSCA
    { .tag = 1715, .gfx = 1506, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLITTLE
    { .tag = 1716, .gfx = 1507, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ESPATHRA
    { .tag = 1717, .gfx = 1508, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TINKATINK
    { .tag = 1718, .gfx = 1509, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TINKATUFF
    { .tag = 1719, .gfx = 1510, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TINKATON
    { .tag = 1720, .gfx = 1511, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WIGLETT
    { .tag = 1721, .gfx = 1512, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WUGTRIO
    { .tag = 1722, .gfx = 1513, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BOMBIRDIER
    { .tag = 1723, .gfx = 1514, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FINIZEN
    { .tag = 1724, .gfx = 1515, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PALAFIN
    { .tag = 1725, .gfx = 1516, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VAROOM
    { .tag = 1726, .gfx = 1517, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_REVAVROOM
    { .tag = 1727, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // segin
    { .tag = 1728, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // schedar
    { .tag = 1729, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // navi
    { .tag = 1730, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // ruchbah
    { .tag = 1731, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // caph
    { .tag = 1732, .gfx = 1518, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CYCLIZAR
    { .tag = 1733, .gfx = 1519, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ORTHWORM
    { .tag = 1734, .gfx = 1520, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLIMMET
    { .tag = 1735, .gfx = 1521, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GLIMMORA
    { .tag = 1736, .gfx = 1522, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GREAVARD
    { .tag = 1737, .gfx = 1523, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_HOUNDSTONE
    { .tag = 1738, .gfx = 1524, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLAMIGO
    { .tag = 1739, .gfx = 1525, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CETODDLE
    { .tag = 1740, .gfx = 1526, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CETITAN
    { .tag = 1741, .gfx = 1527, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_VELUZA
    { .tag = 1742, .gfx = 1528, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DONDOZO
    { .tag = 1743, .gfx = 1529, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TATSUGIRI
    { .tag = 1744, .gfx = 1530, .callback_params = OVERWORLD_SIZE_SMALL}, // droopy
    { .tag = 1745, .gfx = 1531, .callback_params = OVERWORLD_SIZE_SMALL}, // stretchy
    { .tag = 1746, .gfx = 1532, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ANNIHILAPE
    { .tag = 1747, .gfx = 1533, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CLODSIRE
    { .tag = 1748, .gfx = 1534, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FARIGIRAF
    { .tag = 1749, .gfx = 1535, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DUDUNSPARCE
    { .tag = 1750, .gfx = 1536, .callback_params = OVERWORLD_SIZE_LARGE}, // three segment
    { .tag = 1751, .gfx = 1537, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KINGAMBIT
    { .tag = 1752, .gfx = 1538, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GREAT_TUSK
    { .tag = 1753, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SCREAM_TAIL
    { .tag = 1754, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BRUTE_BONNET
    { .tag = 1755, .gfx = 1539, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FLUTTER_MANE
    { .tag = 1756, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SLITHER_WING
    { .tag = 1757, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SANDY_SHOCKS
    { .tag = 1758, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_TREADS
    { .tag = 1759, .gfx = 1540, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_BUNDLE
    { .tag = 1760, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_HANDS
    { .tag = 1761, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_JUGULIS
    { .tag = 1762, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_MOTH
    { .tag = 1763, .gfx = 1541, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_THORNS
    { .tag = 1764, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FRIGIBAX
    { .tag = 1765, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCTIBAX
    { .tag = 1766, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_BAXCALIBUR
    { .tag = 1767, .gfx = 1550, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GIMMIGHOUL
    { .tag = 1768, .gfx = 1551, .callback_params = OVERWORLD_SIZE_SMALL}, // roaming
    { .tag = 1769, .gfx = 1552, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GHOLDENGO
    { .tag = 1770, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WO_CHIEN
    { .tag = 1771, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHIEN_PAO
    { .tag = 1772, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TING_LU
    { .tag = 1773, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_CHI_YU
    { .tag = 1774, .gfx = 1542, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ROARING_MOON
    { .tag = 1775, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_VALIANT
    { .tag = 1776, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_KORAIDON
    { .tag = 1777, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MIRAIDON
    { .tag = 1778, .gfx = 1543, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_WALKING_WAKE
    { .tag = 1779, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_LEAVES
    { .tag = 1780, .gfx = 1544, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_DIPPLIN
    { .tag = 1781, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_POLTCHAGEIST
    { .tag = 1782, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_SINISTCHA
    { .tag = 1783, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OKIDOGI
    { .tag = 1784, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_MUNKIDORI
    { .tag = 1785, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_FEZANDIPITI
    { .tag = 1786, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_OGERPON
    { .tag = 1787, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // wellspring
    { .tag = 1788, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // hearthflame
    { .tag = 1789, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // cornerstone
    { .tag = 1790, .gfx = 1545, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_ARCHALUDON
    { .tag = 1791, .gfx = 1546, .callback_params = OVERWORLD_SIZE_LARGE}, // SPECIES_HYDRAPPLE
    { .tag = 1792, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_GOUGING_FIRE
    { .tag = 1793, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_RAGING_BOLT
    { .tag = 1794, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_BOULDER
    { .tag = 1795, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_IRON_CROWN
    { .tag = 1796, .gfx =  297, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_TERAPAGOS
    { .tag = 1797, .gfx = 1547, .callback_params = OVERWORLD_SIZE_SMALL}, // SPECIES_PECHARUNT
    { 0xFFFF, 0, 0},
};


// used for HoF/pokeathlon overworlds
struct OVERWORLD_TAG *grab_overworld_ptr(u16 tag)
{
    int i = 0;
    while (gOWTagToFileNum[i].tag != 0xFFFF)
    {
        if (gOWTagToFileNum[i].tag == tag)
            return &gOWTagToFileNum[i];
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

    if (species <= 0 || species > MAX_MON_NUM) // base species, Enamorus
        ret = 1;
    else
    {
        // get the mon ow tag
        if (species == SPECIES_GENESECT)
            form = 0; // fuck genesect forme overworlds
        tag = get_mon_ow_tag(species, form, isFemale);

        ret = get_a081_index_from_tag(tag);
    }

    return ret;
}
