#include "../include/types.h"
#include "../include/item.h"
#include "../include/message.h"
#include "../include/script.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"

#define GFX_ITEM_DUMMY_ID ((MAX_TOTAL_ITEM_NUM) * 2 + 2)
#define GFX_ITEM_RETURN_ID ((MAX_TOTAL_ITEM_NUM+1) * 2 + 4)
#define NEW_ITEM_GFX (797)

static const u16 sMachineMoves[] = {
    // vanilla TMs
    MOVE_FOCUS_PUNCH,      // TM001
    MOVE_DRAGON_CLAW,      // TM002
    MOVE_WATER_PULSE,      // TM003
    MOVE_CALM_MIND,        // TM004
    MOVE_ROAR,             // TM005
    MOVE_TOXIC,            // TM006
    MOVE_HAIL,             // TM007
    MOVE_BULK_UP,          // TM008
    MOVE_BULLET_SEED,      // TM009
    MOVE_HIDDEN_POWER,     // TM010
    MOVE_SUNNY_DAY,        // TM011
    MOVE_TAUNT,            // TM012
    MOVE_ICE_BEAM,         // TM013
    MOVE_BLIZZARD,         // TM014
    MOVE_HYPER_BEAM,       // TM015
    MOVE_LIGHT_SCREEN,     // TM016
    MOVE_PROTECT,          // TM017
    MOVE_RAIN_DANCE,       // TM018
    MOVE_GIGA_DRAIN,       // TM019
    MOVE_SAFEGUARD,        // TM020
    MOVE_FRUSTRATION,      // TM021
    MOVE_SOLAR_BEAM,       // TM022
    MOVE_IRON_TAIL,        // TM023
    MOVE_THUNDERBOLT,      // TM024
    MOVE_THUNDER,          // TM025
    MOVE_EARTHQUAKE,       // TM026
    MOVE_RETURN,           // TM027
    MOVE_DIG,              // TM028
    MOVE_PSYCHIC,          // TM029
    MOVE_SHADOW_BALL,      // TM030
    MOVE_BRICK_BREAK,      // TM031
    MOVE_DOUBLE_TEAM,      // TM032
    MOVE_REFLECT,          // TM033
    MOVE_SHOCK_WAVE,       // TM034
    MOVE_FLAMETHROWER,     // TM035
    MOVE_SLUDGE_BOMB,      // TM036
    MOVE_SANDSTORM,        // TM037
    MOVE_FIRE_BLAST,       // TM038
    MOVE_ROCK_TOMB,        // TM039
    MOVE_AERIAL_ACE,       // TM040
    MOVE_TORMENT,          // TM041
    MOVE_FACADE,           // TM042
    MOVE_SECRET_POWER,     // TM043
    MOVE_REST,             // TM044
    MOVE_ATTRACT,          // TM045
    MOVE_THIEF,            // TM046
    MOVE_STEEL_WING,       // TM047
    MOVE_SKILL_SWAP,       // TM048
    MOVE_SNATCH,           // TM049
    MOVE_OVERHEAT,         // TM050
    MOVE_ROOST,            // TM051
    MOVE_FOCUS_BLAST,      // TM052
    MOVE_ENERGY_BALL,      // TM053
    MOVE_FALSE_SWIPE,      // TM054
    MOVE_BRINE,            // TM055
    MOVE_FLING,            // TM056
    MOVE_CHARGE_BEAM,      // TM057
    MOVE_ENDURE,           // TM058
    MOVE_DRAGON_PULSE,     // TM059
    MOVE_DRAIN_PUNCH,      // TM060
    MOVE_WILL_O_WISP,      // TM061
    MOVE_SILVER_WIND,      // TM062
    MOVE_EMBARGO,          // TM063
    MOVE_EXPLOSION,        // TM064
    MOVE_SHADOW_CLAW,      // TM065
    MOVE_PAYBACK,          // TM066
    MOVE_RECYCLE,          // TM067
    MOVE_GIGA_IMPACT,      // TM068
    MOVE_ROCK_POLISH,      // TM069
    MOVE_FLASH,            // TM070
    MOVE_STONE_EDGE,       // TM071
    MOVE_AVALANCHE,        // TM072
    MOVE_THUNDER_WAVE,     // TM073
    MOVE_GYRO_BALL,        // TM074
    MOVE_SWORDS_DANCE,     // TM075
    MOVE_STEALTH_ROCK,     // TM076
    MOVE_PSYCH_UP,         // TM077
    MOVE_CAPTIVATE,        // TM078
    MOVE_DARK_PULSE,       // TM079
    MOVE_ROCK_SLIDE,       // TM080
    MOVE_X_SCISSOR,        // TM081
    MOVE_SLEEP_TALK,       // TM082
    MOVE_NATURAL_GIFT,     // TM083
    MOVE_POISON_JAB,       // TM084
    MOVE_DREAM_EATER,      // TM085
    MOVE_GRASS_KNOT,       // TM086
    MOVE_SWAGGER,          // TM087
    MOVE_PLUCK,            // TM088
    MOVE_U_TURN,           // TM089
    MOVE_SUBSTITUTE,       // TM090
    MOVE_FLASH_CANNON,     // TM091
    MOVE_TRICK_ROOM,       // TM092

    // vanilla HMs
    MOVE_CUT,              // HM01
    MOVE_FLY,              // HM02
    MOVE_SURF,             // HM03
    MOVE_STRENGTH,         // HM04
    MOVE_WHIRLPOOL,        // HM05
    MOVE_ROCK_SMASH,       // HM06
    MOVE_WATERFALL,        // HM07
    MOVE_ROCK_CLIMB,       // HM08

    // HM07 (ORAS)
    MOVE_DIVE,             // HM07_ORAS

    // expansion TMs
    MOVE_MEGA_PUNCH,       // TM00
    MOVE_FLASH_CANNON,     // TM093
    MOVE_DARK_PULSE,       // TM094
    MOVE_LEECH_LIFE,       // TM095
    MOVE_EERIE_IMPULSE,    // TM096
    MOVE_FLY,              // TM097
    MOVE_SKILL_SWAP,       // TM098
    MOVE_IRON_HEAD,        // TM099
    MOVE_CONFIDE,          // TM100
    MOVE_DRAGON_DANCE,     // TM100_SV
    MOVE_POWER_GEM,        // TM101
    MOVE_GUNK_SHOT,        // TM102
    MOVE_SUBSTITUTE,       // TM103
    MOVE_IRON_DEFENSE,     // TM104
    MOVE_X_SCISSOR,        // TM105
    MOVE_DRILL_RUN,        // TM106
    MOVE_WILL_O_WISP,      // TM107
    MOVE_CRUNCH,           // TM108
    MOVE_TRICK,            // TM109
    MOVE_LIQUIDATION,      // TM110
    MOVE_GIGA_DRAIN,       // TM111
    MOVE_AURA_SPHERE,      // TM112
    MOVE_TAILWIND,         // TM113
    MOVE_SHADOW_BALL,      // TM114
    MOVE_DRAGON_PULSE,     // TM115
    MOVE_STEALTH_ROCK,     // TM116
    MOVE_HYPER_VOICE,      // TM117
    MOVE_HEAT_WAVE,        // TM118
    MOVE_ENERGY_BALL,      // TM119
    MOVE_PSYCHIC,          // TM120
    MOVE_HEAVY_SLAM,       // TM121
    MOVE_ENCORE,           // TM122
    MOVE_SURF,             // TM123
    MOVE_ICE_SPINNER,      // TM124
    MOVE_FLAMETHROWER,     // TM125
    MOVE_THUNDERBOLT,      // TM126
    MOVE_PLAY_ROUGH,       // TM127
    MOVE_AMNESIA,          // TM128
    MOVE_CALM_MIND,        // TM129
    MOVE_HELPING_HAND,     // TM130
    MOVE_POLLEN_PUFF,      // TM131
    MOVE_BATON_PASS,       // TM132
    MOVE_EARTH_POWER,      // TM133
    MOVE_REVERSAL,         // TM134
    MOVE_ICE_BEAM,         // TM135
    MOVE_ELECTRIC_TERRAIN, // TM136
    MOVE_GRASSY_TERRAIN,   // TM137
    MOVE_PSYCHIC_TERRAIN,  // TM138
    MOVE_MISTY_TERRAIN,    // TM139
    MOVE_NASTY_PLOT,       // TM140
    MOVE_FIRE_BLAST,       // TM141
    MOVE_HYDRO_PUMP,       // TM142
    MOVE_BLIZZARD,         // TM143
    MOVE_FIRE_PLEDGE,      // TM144
    MOVE_WATER_PLEDGE,     // TM145
    MOVE_GRASS_PLEDGE,     // TM146
    MOVE_WILD_CHARGE,      // TM147
    MOVE_SLUDGE_BOMB,      // TM148
    MOVE_EARTHQUAKE,       // TM149
    MOVE_STONE_EDGE,       // TM150
    MOVE_PHANTOM_FORCE,    // TM151
    MOVE_GIGA_IMPACT,      // TM152
    MOVE_BLAST_BURN,       // TM153
    MOVE_HYDRO_CANNON,     // TM154
    MOVE_FRENZY_PLANT,     // TM155
    MOVE_OUTRAGE,          // TM156
    MOVE_OVERHEAT,         // TM157
    MOVE_FOCUS_BLAST,      // TM158
    MOVE_LEAF_STORM,       // TM159
    MOVE_HURRICANE,        // TM160
    MOVE_TRICK_ROOM,       // TM161
    MOVE_BUG_BUZZ,         // TM162
    MOVE_HYPER_BEAM,       // TM163
    MOVE_BRAVE_BIRD,       // TM164
    MOVE_FLARE_BLITZ,      // TM165
    MOVE_THUNDER,          // TM166
    MOVE_CLOSE_COMBAT,     // TM167
    MOVE_SOLAR_BEAM,       // TM168
    MOVE_DRACO_METEOR,     // TM169
    MOVE_STEEL_BEAM,       // TM170
    MOVE_TERA_BLAST,       // TM171
    MOVE_ROAR,             // TM172
    MOVE_CHARGE,           // TM173
    MOVE_HAZE,             // TM174
    MOVE_TOXIC,            // TM175
    MOVE_SAND_TOMB,        // TM176
    MOVE_SPITE,            // TM177
    MOVE_GRAVITY,          // TM178
    MOVE_SMACK_DOWN,       // TM179
    MOVE_GYRO_BALL,        // TM180
    MOVE_KNOCK_OFF,        // TM181
    MOVE_BUG_BITE,         // TM182
    MOVE_SUPER_FANG,       // TM183
    MOVE_VACUUM_WAVE,      // TM184
    MOVE_LUNGE,            // TM185
    MOVE_HIGH_HORSEPOWER,  // TM186
    MOVE_ICICLE_SPEAR,     // TM187
    MOVE_SCALD,            // TM188
    MOVE_HEAT_CRASH,       // TM189
    MOVE_SOLAR_BLADE,      // TM190
    MOVE_UPROAR,           // TM191
    MOVE_FOCUS_PUNCH,      // TM192
    MOVE_WEATHER_BALL,     // TM193
    MOVE_GRASSY_GLIDE,     // TM194
    MOVE_BURNING_JEALOUSY, // TM195
    MOVE_FLIP_TURN,        // TM196
    MOVE_DUAL_WINGBEAT,    // TM197
    MOVE_POLTERGEIST,      // TM198
    MOVE_LASH_OUT,         // TM199
    MOVE_SCALE_SHOT,       // TM200
    MOVE_MISTY_EXPLOSION,  // TM201
    MOVE_PAIN_SPLIT,       // TM202
    MOVE_PSYCH_UP,         // TM203
    MOVE_DOUBLE_EDGE,      // TM204
    MOVE_ENDEAVOR,         // TM205
    MOVE_PETAL_BLIZZARD,   // TM206
    MOVE_TEMPER_FLARE,     // TM207
    MOVE_WHIRLPOOL,        // TM208
    MOVE_MUDDY_WATER,      // TM209
    MOVE_SUPERCELL_SLAM,   // TM210
    MOVE_ELECTROWEB,       // TM211
    MOVE_TRIPLE_AXEL,      // TM212
    MOVE_COACHING,         // TM213
    MOVE_SLUDGE_WAVE,      // TM214
    MOVE_SCORCHING_SANDS,  // TM215
    MOVE_FEATHER_DANCE,    // TM216
    MOVE_FUTURE_SIGHT,     // TM217
    MOVE_EXPANDING_FORCE,  // TM218
    MOVE_SKITTER_SMACK,    // TM219
    MOVE_METEOR_BEAM,      // TM220
    MOVE_THROAT_CHOP,      // TM221
    MOVE_BREAKING_SWIPE,   // TM222
    MOVE_METAL_SOUND,      // TM223
    MOVE_CURSE,            // TM224
    MOVE_HARD_PRESS,       // TM225
    MOVE_DRAGON_CHEER,     // TM226
    MOVE_ALLURING_VOICE,   // TM227
    MOVE_PSYCHIC_NOISE,    // TM228
    MOVE_UPPER_HAND,       // TM229

    // TRs
    MOVE_SWORDS_DANCE,     // TR00
    MOVE_BODY_SLAM,        // TR01
    MOVE_FLAMETHROWER,     // TR02
    MOVE_HYDRO_PUMP,       // TR03
    MOVE_SURF,             // TR04
    MOVE_ICE_BEAM,         // TR05
    MOVE_BLIZZARD,         // TR06
    MOVE_LOW_KICK,         // TR07
    MOVE_THUNDERBOLT,      // TR08
    MOVE_THUNDER,          // TR09
    MOVE_EARTHQUAKE,       // TR10
    MOVE_PSYCHIC,          // TR11
    MOVE_AGILITY,          // TR12
    MOVE_FOCUS_ENERGY,     // TR13
    MOVE_METRONOME,        // TR14
    MOVE_FIRE_BLAST,       // TR15
    MOVE_WATERFALL,        // TR16
    MOVE_AMNESIA,          // TR17
    MOVE_LEECH_LIFE,       // TR18
    MOVE_TRI_ATTACK,       // TR19
    MOVE_SUBSTITUTE,       // TR20
    MOVE_REVERSAL,         // TR21
    MOVE_SLUDGE_BOMB,      // TR22
    MOVE_SPIKES,           // TR23
    MOVE_OUTRAGE,          // TR24
    MOVE_PSYSHOCK,         // TR25
    MOVE_ENDURE,           // TR26
    MOVE_SLEEP_TALK,       // TR27
    MOVE_MEGAHORN,         // TR28
    MOVE_BATON_PASS,       // TR29
    MOVE_ENCORE,           // TR30
    MOVE_IRON_TAIL,        // TR31
    MOVE_CRUNCH,           // TR32
    MOVE_SHADOW_BALL,      // TR33
    MOVE_FUTURE_SIGHT,     // TR34
    MOVE_UPROAR,           // TR35
    MOVE_HEAT_WAVE,        // TR36
    MOVE_TAUNT,            // TR37
    MOVE_TRICK,            // TR38
    MOVE_SUPERPOWER,       // TR39
    MOVE_SKILL_SWAP,       // TR40
    MOVE_BLAZE_KICK,       // TR41
    MOVE_HYPER_VOICE,      // TR42
    MOVE_OVERHEAT,         // TR43
    MOVE_COSMIC_POWER,     // TR44
    MOVE_MUDDY_WATER,      // TR45
    MOVE_IRON_DEFENSE,     // TR46
    MOVE_DRAGON_CLAW,      // TR47
    MOVE_BULK_UP,          // TR48
    MOVE_CALM_MIND,        // TR49
    MOVE_LEAF_BLADE,       // TR50
    MOVE_DRAGON_DANCE,     // TR51
    MOVE_GYRO_BALL,        // TR52
    MOVE_CLOSE_COMBAT,     // TR53
    MOVE_TOXIC_SPIKES,     // TR54
    MOVE_FLARE_BLITZ,      // TR55
    MOVE_AURA_SPHERE,      // TR56
    MOVE_POISON_JAB,       // TR57
    MOVE_DARK_PULSE,       // TR58
    MOVE_SEED_BOMB,        // TR59
    MOVE_X_SCISSOR,        // TR60
    MOVE_BUG_BUZZ,         // TR61
    MOVE_DRAGON_PULSE,     // TR62
    MOVE_POWER_GEM,        // TR63
    MOVE_FOCUS_BLAST,      // TR64
    MOVE_ENERGY_BALL,      // TR65
    MOVE_BRAVE_BIRD,       // TR66
    MOVE_EARTH_POWER,      // TR67
    MOVE_NASTY_PLOT,       // TR68
    MOVE_ZEN_HEADBUTT,     // TR69
    MOVE_FLASH_CANNON,     // TR70
    MOVE_LEAF_STORM,       // TR71
    MOVE_POWER_WHIP,       // TR72
    MOVE_GUNK_SHOT,        // TR73
    MOVE_IRON_HEAD,        // TR74
    MOVE_STONE_EDGE,       // TR75
    MOVE_STEALTH_ROCK,     // TR76
    MOVE_GRASS_KNOT,       // TR77
    MOVE_SLUDGE_WAVE,      // TR78
    MOVE_HEAVY_SLAM,       // TR79
    MOVE_ELECTRO_BALL,     // TR80
    MOVE_FOUL_PLAY,        // TR81
    MOVE_STORED_POWER,     // TR82
    MOVE_ALLY_SWITCH,      // TR83
    MOVE_SCALD,            // TR84
    MOVE_WORK_UP,          // TR85
    MOVE_WILD_CHARGE,      // TR86
    MOVE_DRILL_RUN,        // TR87
    MOVE_HEAT_CRASH,       // TR88
    MOVE_HURRICANE,        // TR89
    MOVE_PLAY_ROUGH,       // TR90
    MOVE_VENOM_DRENCH,     // TR91
    MOVE_DAZZLING_GLEAM,   // TR92
    MOVE_DARKEST_LARIAT,   // TR93
    MOVE_HIGH_HORSEPOWER,  // TR94
    MOVE_THROAT_CHOP,      // TR95
    MOVE_POLLEN_PUFF,      // TR96
    MOVE_PSYCHIC_FANGS,    // TR97
    MOVE_LIQUIDATION,      // TR98
    MOVE_BODY_PRESS,       // TR99
};

u16 GetItemIndex(u16 item, u16 type);
void *GetItemArcData(u16 item, u16 type, u32 heap_id);
u16 ItemToMachineMove(u16 itemId);
//void *LONG_CALL ItemDataTableLoad(int heapID);
void ItemMenuUseFunc_RevealGlass(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL ItemFieldUseFunc_RevealGlass(struct ItemFieldUseData *data);
void *_CreateRevealGlassWork(FieldSystem *fieldSystem);
void ItemMenuUseFunc_DNASplicers(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL ItemFieldUseFunc_DNASplicers(struct ItemFieldUseData *data);
void *_CreateDNASplicersWork(FieldSystem *fieldSystem);
void ItemMenuUseFunc_AbilityCapsule(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void ItemMenuUseFunc_Mint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_Nectar(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_RotomCatalog(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);

const struct ItemUseFuncDat sItemFieldUseFuncs[] = {
    { NULL, ItemFieldUseFunc_Generic, NULL },
    { ItemMenuUseFunc_HealingItem, NULL, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_Bicycle, ItemFieldUseFunc_Bicycle, ItemCheckUseFunc_Bicycle },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_TMHM, NULL, NULL },
    { ItemMenuUseFunc_Mail, NULL, NULL },
    { ItemMenuUseFunc_Berry, NULL, ItemCheckUseFunc_Berry },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_PalPad, ItemFieldUseFunc_PalPad, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_Honey, NULL, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_OldRod, ItemFieldUseFunc_OldRod, ItemCheckUseFunc_FishingRod },
    { ItemMenuUseFunc_GoodRod, ItemFieldUseFunc_GoodRod, ItemCheckUseFunc_FishingRod },
    { ItemMenuUseFunc_SuperRod, ItemFieldUseFunc_SuperRod, ItemCheckUseFunc_FishingRod },
    { NULL, ItemFieldUseFunc_Generic, NULL },
    { ItemMenuUseFunc_EvoStone, NULL, NULL },
    { ItemMenuUseFunc_EscapeRope, NULL, ItemCheckUseFunc_EscapeRope },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_ApricornBox, ItemFieldUseFunc_ApricornBox, NULL },
    { ItemMenuUseFunc_BerryPots, ItemFieldUseFunc_BerryPots, NULL },
    { ItemMenuUseFunc_UnownReport, ItemFieldUseFunc_UnownReport, NULL },
    { ItemMenuUseFunc_DowsingMchn, ItemFieldUseFunc_DowsingMchn, NULL },
    { NULL, ItemFieldUseFunc_GbSounds, NULL },
    { ItemMenuUseFunc_Gracidea, ItemFieldUseFunc_Gracidea, NULL },
    { ItemMenuUseFunc_VSRecorder, ItemFieldUseFunc_VSRecorder, NULL },
    // new item use entries
    { ItemMenuUseFunc_RevealGlass, ItemFieldUseFunc_RevealGlass, NULL },
    { ItemMenuUseFunc_DNASplicers, ItemFieldUseFunc_DNASplicers, NULL },
    { ItemMenuUseFunc_AbilityCapsule, NULL, NULL },
    { ItemMenuUseFunc_Mint, NULL, NULL },
    { ItemMenuUseFunc_Nectar, NULL, NULL },
    { ItemMenuUseFunc_RotomCatalog, NULL, NULL },
};

u16 GetItemIndex(u16 item, u16 type)
{
    u16 ret = 0;
    switch (type)
    {
    case ITEM_GET_DATA:
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID)
        {
            break;
        }
        ret = item;
        return ret;

    case ITEM_GET_ICON_CGX:
        if (item == ITEM_DUMMY_ID)
        {
            return (GFX_ITEM_DUMMY_ID);
        }
        if (item == ITEM_RETURN_ID)
        {
            return (GFX_ITEM_RETURN_ID);
        }
        ret = item * 2 + 2;
        return ret;

    case ITEM_GET_ICON_PAL:
        if (item == ITEM_DUMMY_ID)
        {
            return (GFX_ITEM_DUMMY_ID+1);
        }
        if (item == ITEM_RETURN_ID)
        {
            return (GFX_ITEM_RETURN_ID+1);
        }
        ret = item * 2 + 3;
        return ret;

    case ITEM_GET_AGB_NUM: // for pal park purposes
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID)
        {
            break;
        }
        if (item > MAX_TOTAL_ITEM_NUM)
            ret = 0;
        else
            ret = ItemDataIndex[item].agb_id;
        return ret;
    }
    return 0;
}

void *GetItemArcData(u16 item, u16 type, u32 heap_id)
{
    int dataid, picid,palid;

    dataid = item;
    picid = item * 2 + 2;
    palid = item * 2 + 3;

    switch (type)
    {
    case ITEM_GET_DATA:
        return ArchiveDataLoadMalloc(ARC_ITEM_DATA, dataid, heap_id);
    case ITEM_GET_ICON_CGX:
        return ArchiveDataLoadMalloc(ARC_ITEM_GFX_DATA, picid, heap_id);
    case ITEM_GET_ICON_PAL:
        return ArchiveDataLoadMalloc(ARC_ITEM_GFX_DATA, palid, heap_id);
    }
    return NULL;
}

void LONG_CALL GetItemDescIntoString(String *dest, u16 itemId, u16 heapId) {
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    u32 fileId = (gen == CUSTOM)
        ? MSG_DATA_ITEM_DESCRIPTION_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_DESCRIPTION_GEN4, gen);
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, fileId, heapId);
    u32 offset = ITEM_MSG_OFFSET(itemId);
    ReadMsgDataIntoString(msgData, offset, dest);
    DestroyMsgData(msgData);
}

void *LONG_CALL ItemDataTableLoad(int heapID)
{
    int max;

    max = GetItemIndex(MAX_TOTAL_ITEM_NUM, ITEM_GET_DATA);

    return ArchiveDataLoadMallocOfs(ARC_ITEM_DATA, 0, heapID, 0, sizeof(ITEMDATA) * max);//800757Ch
}

/**
 * @brief converts an item id to its corresponding TM/HM/TR index within sMachineMoves
 * @see   pret/pokeheartgold ItemToTMHMId
 */
u16 ItemToMachineMoveIndex(u16 itemId) {
    if (itemId >= ITEM_TM001 && itemId <= ITEM_HM08) {
        return (itemId - ITEM_TM001);
    }
    if (itemId == ITEM_HM07_ORAS) {
        return 100;
    }
    if (itemId == ITEM_TM00) {
        return 101;
    }
    if (itemId >= ITEM_TM093 && itemId <= ITEM_TM095) {
        return itemId - ITEM_TM093 + 102;
    }
    if (itemId >= ITEM_TM096 && itemId <= ITEM_TM100) {
        return itemId - ITEM_TM096 + 105;
    }
    if (itemId >= ITEM_TM100_SV && itemId <= ITEM_TM229) {
        return itemId - ITEM_TM100_SV + 110;
    }
    if (itemId >= ITEM_TR00 && itemId <= ITEM_TR99) {
        return itemId - ITEM_TR00 + 240;
    }

    return 0;
}

/**
 * @brief converts an item id to its corresponding TM/HM/TR move id
 * @see   pret/pokeheartgold TMHMGetMove
 */
u16 ItemToMachineMove(u16 itemId) {
    if (itemId < ITEM_TM001) {
        return MOVE_NONE;
    }

    u16 index = ItemToMachineMoveIndex(itemId);
    if (index >= sizeof(sMachineMoves) + 1) {
        return MOVE_NONE;
    }
    return sMachineMoves[index];
}

BOOL MoveIsHM(u16 moveId) {
    for (u8 i = 0; i < NUM_HMS; i++) {
        if (sMachineMoves[i + ITEM_HM01 - ITEM_TM001] == moveId) {
#if defined(REUSABLE_TMS) && defined(DELETABLE_HMS)
            return FALSE;
#else
            return TRUE;
#endif
        }
    }
    return FALSE;
}

s32 LONG_CALL GetItemAttr_PreloadedItemData(ITEMDATA *itemData, u16 attrno) {
    switch (attrno) {
    case ITEM_PARAM_PRICE:
        return (u32)((itemData)->price) | ((u32)((itemData)->price_high) << 16);
    case ITEM_PARAM_HOLD_EFFECT:
        return itemData->holdEffect;
    case ITEM_PARAM_HOLD_EFFECT_PARAM:
        return itemData->holdEffectParam;
    case ITEM_PARAM_PREVENT_TOSS:
        return itemData->prevent_toss;
    case ITEM_PARAM_SELECTABLE:
        return itemData->selectable;
    case ITEM_PARAM_FIELD_POCKET:
        return itemData->fieldPocket;
    case ITEM_PARAM_FIELD:
        return itemData->fieldUseFunc;
    case ITEM_PARAM_BATTLE:
        return itemData->battleUseFunc;
    case ITEM_PARAM_PLUCK_EFFECT:
        return itemData->pluckEffect;
    case ITEM_PARAM_FLING_EFFECT:
        return itemData->flingEffect;
    case ITEM_PARAM_FLING_POWER:
        return itemData->flingPower;
    case ITEM_PARAM_NATURAL_GIFT_POWER:
        return itemData->naturalGiftPower;
    case ITEM_PARAM_NATURAL_GIFT_TYPE:
        return itemData->naturalGiftType;
    case ITEM_PARAM_BATTLE_POCKET:
        return itemData->battlePocket;
    case ITEM_PARAM_PARTY:
        return itemData->partyUse;
    default:
        switch (itemData->partyUse) {
        case 0:
            return itemData->dummy;
        case 1:
            return GetItemAttrSub(&itemData->partyUseParam, attrno);
        }
    }

    return 0;
}

void ItemMenuUseFunc_RevealGlass(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_REVEAL_GLASS);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

BOOL ItemFieldUseFunc_RevealGlass(struct ItemFieldUseData *data)
{
    RegisteredItem_CreateGoToAppTask(data, (FieldApplicationWorkCtor)_CreateRevealGlassWork, FALSE);
    return TRUE;
}

void *_CreateRevealGlassWork(FieldSystem *fieldSystem)
{
    return sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_REVEAL_GLASS);
}

void ItemMenuUseFunc_DNASplicers(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS_FUSE); // TODO: handle correct item
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

BOOL ItemFieldUseFunc_DNASplicers(struct ItemFieldUseData *data)
{
    RegisteredItem_CreateGoToAppTask(data, (FieldApplicationWorkCtor)_CreateDNASplicersWork, FALSE);
    return TRUE;
}

void *_CreateDNASplicersWork(FieldSystem *fieldSystem)
{
    return sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS_FUSE); // TODO: handle correct item
}

void ItemMenuUseFunc_AbilityCapsule(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ABILITY_CAPSULE);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Mint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Nectar(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_RotomCatalog(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{

    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ROTOM_CATALOG);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}