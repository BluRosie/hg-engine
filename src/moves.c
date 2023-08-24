#include "../include/types.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/file.h"

// brackets are there so we can possibly come back and make constants for them
u32 move_effect_to_subscripts[] =
{
    [  0] =   0,
    [  1] =  18, // sleep
    [  2] =  22, // poison
    [  3] =  25, // burn
    [  4] =  27, // frozen
    [  5] =  31, // paralysis
    [  6] =  47, // badly poison
    [  7] =  37, // confuse
    [  8] =  14,
    [  9] =  55,
    [ 10] =  56,
    [ 11] =  48,
    [ 12] =  13,
    [ 13] =  58,
    [ 14] =  63, // recoil 1/4 damage
    [ 15] =  12, // attack +1
    [ 16] =  12, // defense +1
    [ 17] =  12, // speed +1
    [ 18] =  12, // spatk +1
    [ 19] =  12, // spdef +1
    [ 20] =  12, // accuracy +1
    [ 21] =  12, // evasion +1
    [ 22] =  12, // attack -1
    [ 23] =  12, // defense -1
    [ 24] =  12, // speed -1
    [ 25] =  12, // spatk -1
    [ 26] =  12, // spdef -1
    [ 27] =  12, // accuracy -1
    [ 28] =  12, // evasion -1
    [ 29] =  64,
    [ 30] =  66,
    [ 31] =  85,
    [ 32] =  86,
    [ 33] =  93,
    [ 34] = 119,
    [ 35] = 115,
    [ 36] = 130,
    [ 37] = 138,
    [ 38] = 147, // recoil 1/3 damage
    [ 39] =  12, // attack +2
    [ 40] =  12, // defense +2
    [ 41] =  12, // speed +2
    [ 42] =  12, // spatk +2
    [ 43] =  12, // spdef +2
    [ 44] =  12, // accuracy +2
    [ 45] =  12, // evasion +2
    [ 46] =  12, // attack -2
    [ 47] =  12, // defense -2
    [ 48] =  12, // speed -2
    [ 49] =  12, // spatk -2
    [ 50] =  12, // spdef -2
    [ 51] =  12, // accuracy -2
    [ 52] =  12, // evasion -2
    [ 53] =  44,
    [ 54] = 142,
    [ 55] = 149,
    [ 56] = 150,
    [ 57] = 148,
    [ 58] = 151,
    [ 59] = 152,
    [ 60] =  24,
    [ 61] =  33,
    [ 62] =  34,
    [ 63] =  35,
    [ 64] =  43,
    [ 65] =  45,
    [ 66] =  46,
    [ 67] =  49,
    [ 68] =  52,
    [ 69] =  54,
    [ 70] =  62,
    [ 71] =  67,
    [ 72] =  68,
    [ 73] =  70,
    [ 74] =  73,
    [ 75] =  77,
    [ 76] =  78,
    [ 77] =  79,
    [ 78] =  80,
    [ 79] =  81,
    [ 80] =  82,
    [ 81] =  84,
    [ 82] =  87,
    [ 83] =  88,
    [ 84] =  89, // substitute
    [ 85] =  91, // roar
    [ 86] =  92,
    [ 87] =  95,
    [ 88] =  96,
    [ 89] =  97,
    [ 90] = 126,
    [ 91] = 100,
    [ 92] = 101,
    [ 93] = 103,
    [ 94] = 105,
    [ 95] = 106,
    [ 96] = 109,
    [ 97] = 112,
    [ 98] = 113,
    [ 99] = 114,
    [100] = 120,
    [101] = 122,
    [102] = 123, // beat up messages
    [103] = 124,
    [104] = 125,
    [105] = 127,
    [106] = 128,
    [107] = 129,
    [108] = 131,
    [109] = 132,
    [110] = 134,
    [111] = 135,
    [112] = 140,
    [113] = 141, // yawn
    [114] = 143,
    [115] = 145,
    [116] = 154,
    [117] = 155,
    [118] = 156,
    [119] = 158,
    [120] = 159,
    [121] = 160, // tailwind
    [122] = 161,
    [123] = 162,
    [124] = 163,
    [125] = 164,
    [126] = 165,
    [127] = 166,
    [128] = 167,
    [129] = 168,
    [130] = 170, // flare blitz: recoil 1/3 then 10% burn target
    [131] = 171,
    [132] = 173,
    [133] = 175, // u turn
    [134] = 218,
    [135] = 219,
    [136] = 220,
    [137] = 226, // volt tackle: recoil 1/3 then 10% paralyze target
    [138] = 246, // recoil 1/2 damage
    [139] = 247,
    [140] = 248,
    [141] = 249,
    [142] = 260,
    [143] = 261,
    [144] = 118,
    // new effects
    [145] = 311, // hone claws
    [146] = 312, // guard split
    [147] = 313, // power split
    [148] = 314, // quiver dance
    [149] = 315, // soak
    [150] = 316, // coil
    [151] = 317, // shift gear
    [152] = 318, // shell smash
    [153] = 319, // v create
    [154] = 320, // autotomize
    [155] = 331, // new growth subscript
};


void GetMoveDataTable(void *dest)
{
    ArchiveDataLoadOfs(dest, ARC_MOVE_DATA, 0, 0, sizeof(struct BattleMove)*(NUM_OF_MOVES+1));
}


// this also needs to fork from the function that is in the rom already
u32 __attribute__((long_call)) GetMoveData(u16 id, u32 field)
{
    struct BattleMove *bm = sys_AllocMemory(0, sizeof(struct BattleMove));
    ArchiveDataLoad(bm, ARC_MOVE_DATA, id);
    u32 ret = 0;

    switch (field)
    {
    case MOVE_DATA_EFFECT:
        ret = bm->effect;
        break;
    case MOVE_DATA_PSS_SPLIT:
        ret = bm->effect;
        break;
    case MOVE_DATA_BASE_POWER:
        ret = bm->power;
        break;
    case MOVE_DATA_TYPE:
        ret = bm->type;
        break;
    case MOVE_DATA_ACCURACY:
        ret = bm->accuracy;
        break;
    case MOVE_DATA_BASE_PP:
        ret = bm->pp;
        break;
    case MOVE_DATA_SECONDARY_EFFECT_CHANCE:
        ret = bm->secondaryEffectChance;
        break;
    case MOVE_DATA_TARGET:
        ret = bm->target;
        break;
    case MOVE_DATA_PRIORITY:
        ret = bm->priority;
        break;
    case MOVE_DATA_FLAGS:
        ret = bm->flag;
        break;
    }
    
    sys_FreeMemoryEz(bm);
    
    return ret;
}
