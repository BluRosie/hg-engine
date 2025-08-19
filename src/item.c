#include "../include/types.h"
#include "../include/item.h"
#include "../include/message.h"
#include "../include/script.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"

#define ITEM_DATA_MAX (ITEM_BRIARS_BOOK)
#define GFX_ITEM_DUMMY_ID ((MAX_TOTAL_ITEM_NUM+1) * 2 + 2)
#define GFX_ITEM_RETURN_ID ((MAX_TOTAL_ITEM_NUM+2) * 2 + 4)
#define NEW_ITEM_GFX (797)

static const u16 sMachineMoves[] = {
    MOVE_FOCUS_PUNCH,  // TM01
    MOVE_DRAGON_CLAW,  // TM02
    MOVE_WATER_PULSE,  // TM03
    MOVE_CALM_MIND,    // TM04
    MOVE_ROAR,         // TM05
    MOVE_TOXIC,        // TM06
    MOVE_HAIL,         // TM07
    MOVE_BULK_UP,      // TM08
    MOVE_BULLET_SEED,  // TM09
    MOVE_HIDDEN_POWER, // TM10
    MOVE_SUNNY_DAY,    // TM11
    MOVE_TAUNT,        // TM12
    MOVE_ICE_BEAM,     // TM13
    MOVE_BLIZZARD,     // TM14
    MOVE_HYPER_BEAM,   // TM15
    MOVE_LIGHT_SCREEN, // TM16
    MOVE_PROTECT,      // TM17
    MOVE_RAIN_DANCE,   // TM18
    MOVE_GIGA_DRAIN,   // TM19
    MOVE_SAFEGUARD,    // TM20
    MOVE_FRUSTRATION,  // TM21
    MOVE_SOLAR_BEAM,   // TM22
    MOVE_IRON_TAIL,    // TM23
    MOVE_THUNDERBOLT,  // TM24
    MOVE_THUNDER,      // TM25
    MOVE_EARTHQUAKE,   // TM26
    MOVE_RETURN,       // TM27
    MOVE_DIG,          // TM28
    MOVE_PSYCHIC,      // TM29
    MOVE_SHADOW_BALL,  // TM30
    MOVE_BRICK_BREAK,  // TM31
    MOVE_DOUBLE_TEAM,  // TM32
    MOVE_REFLECT,      // TM33
    MOVE_SHOCK_WAVE,   // TM34
    MOVE_FLAMETHROWER, // TM35
    MOVE_SLUDGE_BOMB,  // TM36
    MOVE_SANDSTORM,    // TM37
    MOVE_FIRE_BLAST,   // TM38
    MOVE_ROCK_TOMB,    // TM39
    MOVE_AERIAL_ACE,   // TM40
    MOVE_TORMENT,      // TM41
    MOVE_FACADE,       // TM42
    MOVE_SECRET_POWER, // TM43
    MOVE_REST,         // TM44
    MOVE_ATTRACT,      // TM45
    MOVE_THIEF,        // TM46
    MOVE_STEEL_WING,   // TM47
    MOVE_SKILL_SWAP,   // TM48
    MOVE_SNATCH,       // TM49
    MOVE_OVERHEAT,     // TM50
    MOVE_ROOST,        // TM51
    MOVE_FOCUS_BLAST,  // TM52
    MOVE_ENERGY_BALL,  // TM53
    MOVE_FALSE_SWIPE,  // TM54
    MOVE_BRINE,        // TM55
    MOVE_FLING,        // TM56
    MOVE_CHARGE_BEAM,  // TM57
    MOVE_ENDURE,       // TM58
    MOVE_DRAGON_PULSE, // TM59
    MOVE_DRAIN_PUNCH,  // TM60
    MOVE_WILL_O_WISP,  // TM61
    MOVE_SILVER_WIND,  // TM62
    MOVE_EMBARGO,      // TM63
    MOVE_EXPLOSION,    // TM64
    MOVE_SHADOW_CLAW,  // TM65
    MOVE_PAYBACK,      // TM66
    MOVE_RECYCLE,      // TM67
    MOVE_GIGA_IMPACT,  // TM68
    MOVE_ROCK_POLISH,  // TM69
    MOVE_FLASH,        // TM70
    MOVE_STONE_EDGE,   // TM71
    MOVE_AVALANCHE,    // TM72
    MOVE_THUNDER_WAVE, // TM73
    MOVE_GYRO_BALL,    // TM74
    MOVE_SWORDS_DANCE, // TM75
    MOVE_STEALTH_ROCK, // TM76
    MOVE_PSYCH_UP,     // TM77
    MOVE_CAPTIVATE,    // TM78
    MOVE_DARK_PULSE,   // TM79
    MOVE_ROCK_SLIDE,   // TM80
    MOVE_X_SCISSOR,    // TM81
    MOVE_SLEEP_TALK,   // TM82
    MOVE_NATURAL_GIFT, // TM83
    MOVE_POISON_JAB,   // TM84
    MOVE_DREAM_EATER,  // TM85
    MOVE_GRASS_KNOT,   // TM86
    MOVE_SWAGGER,      // TM87
    MOVE_PLUCK,        // TM88
    MOVE_U_TURN,       // TM89
    MOVE_SUBSTITUTE,   // TM90
    MOVE_FLASH_CANNON, // TM91
    MOVE_TRICK_ROOM,   // TM92

    MOVE_CUT,          // HM01
    MOVE_FLY,          // HM02
    MOVE_SURF,         // HM03
    MOVE_STRENGTH,     // HM04
    MOVE_WHIRLPOOL,    // HM05
    MOVE_ROCK_SMASH,   // HM06
    MOVE_WATERFALL,    // HM07
    MOVE_ROCK_CLIMB,   // HM08

    // custom TMs go here
};

u16 GetItemIndex(u16 item, u16 type);
void *GetItemArcData(u16 item, u16 type, u32 heap_id);
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
        //if (item > ITEM_DATA_MAX)
        //    ret = ITEM_DATA_ENTRIES + (item - ITEM_DATA_MAX); // each new item gets a new data entry--537 maps to 514 + (537-536) = 515+
        //else
        //    ret = ItemDataIndex[item].arc_data;
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
        //if (item > ITEM_DATA_MAX)
        //    ret = NEW_ITEM_GFX + (item - ITEM_DATA_MAX - 1) * 2;
        //else
        //    ret = ItemDataIndex[item].arc_cgx;
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
        //if (item > ITEM_DATA_MAX)
        //    ret = NEW_ITEM_GFX+1 + (item - ITEM_DATA_MAX - 1) * 2;
        //else
        //    ret = ItemDataIndex[item].arc_pal;
        return ret;

    case ITEM_GET_AGB_NUM: // for pal park purposes
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID)
        {
            break;
        }
        if (item > ITEM_DATA_MAX)
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

    //if (item > ITEM_DATA_MAX)
    //{
        dataid = item;
        picid = item * 2 + 2;
        palid = item * 2 + 3;
    //}
    //else
    //{
    //    dataid = ItemDataIndex[item].arc_data;
    //    picid = ItemDataIndex[item].arc_cgx;
    //    palid = ItemDataIndex[item].arc_pal;
    //}

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

    max = GetItemIndex(NEW_ITEM_MAX, ITEM_GET_DATA);

    return ArchiveDataLoadMallocOfs(ARC_ITEM_DATA, 0, heapID, 0, sizeof(ITEMDATA) * max);//800757Ch
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

/**
 * @brief converts an item id to its corresponding TM/HM/TR index
 * @see   pret/pokeheartgold ItemToTMHMId
 */
u16 ItemToMachineMoveIndex(u16 itemId) {
    if (itemId >= ITEM_TM001 && itemId <= ITEM_HM08) {
        return itemId - ITEM_TM001;
    }
    // TODO zebben think of a better way to organize this

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

    u16 tmHmId = ItemToMachineMoveIndex(itemId);
    if (tmHmId >= sizeof(sMachineMoves) + 1) {
        return MOVE_NONE;
    }
    return sMachineMoves[tmHmId];
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
