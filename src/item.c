#include "../include/types.h"
#include "../include/item.h"
#include "../include/script.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"

#define ITEM_DATA_MAX (ITEM_ENIGMA_STONE)
#define ITEM_DATA_ENTRIES (513)
#define NEW_ITEM_GFX (807)

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
void ItemMenuUseFunc_LonelyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_AdamantMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_NaughtyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_BraveMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_BoldMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_ImpishMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_LaxMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_RelaxedMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_ModestMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_MildMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_RashMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_QuietMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_CalmMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_GentleMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_CarefulMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_SassyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_TimidMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_HastyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_JollyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_NaiveMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_SeriousMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);

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
    { ItemMenuUseFunc_LonelyMint, NULL, NULL },
    { ItemMenuUseFunc_AdamantMint, NULL, NULL },
    { ItemMenuUseFunc_NaughtyMint, NULL, NULL },
    { ItemMenuUseFunc_BraveMint, NULL, NULL },
    { ItemMenuUseFunc_BoldMint, NULL, NULL },
    { ItemMenuUseFunc_ImpishMint, NULL, NULL },
    { ItemMenuUseFunc_LaxMint, NULL, NULL },
    { ItemMenuUseFunc_RelaxedMint, NULL, NULL },
    { ItemMenuUseFunc_ModestMint, NULL, NULL },
    { ItemMenuUseFunc_MildMint, NULL, NULL },
    { ItemMenuUseFunc_RashMint, NULL, NULL },
    { ItemMenuUseFunc_QuietMint, NULL, NULL },
    { ItemMenuUseFunc_CalmMint, NULL, NULL },
    { ItemMenuUseFunc_GentleMint, NULL, NULL },
    { ItemMenuUseFunc_CarefulMint, NULL, NULL },
    { ItemMenuUseFunc_SassyMint, NULL, NULL },
    { ItemMenuUseFunc_TimidMint, NULL, NULL },
    { ItemMenuUseFunc_HastyMint, NULL, NULL },
    { ItemMenuUseFunc_JollyMint, NULL, NULL },
    { ItemMenuUseFunc_NaiveMint, NULL, NULL },
    { ItemMenuUseFunc_SeriousMint, NULL, NULL },
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
        if (item > ITEM_DATA_MAX)
            ret = ITEM_DATA_ENTRIES + (item - ITEM_DATA_MAX); // each new item gets a new data entry--537 maps to 514 + (537-536) = 515+
        else
            ret = ItemDataIndex[item].arc_data;
        return ret;

    case ITEM_GET_ICON_CGX:
        if (item == ITEM_DUMMY_ID)
        {
            return 793;
        }
        if (item == ITEM_RETURN_ID)
        {
            return 795;
        }
        if (item > ITEM_DATA_MAX)
            ret = NEW_ITEM_GFX + (item - ITEM_DATA_MAX - 1) * 2;
        else
            ret = ItemDataIndex[item].arc_cgx;
        return ret;

    case ITEM_GET_ICON_PAL:
        if (item == ITEM_DUMMY_ID)
        {
            return 794;
        }
        if (item == ITEM_RETURN_ID)
        {
            return 796;
        }
        if (item > ITEM_DATA_MAX)
            ret = NEW_ITEM_GFX+1 + (item - ITEM_DATA_MAX - 1) * 2;
        else
            ret = ItemDataIndex[item].arc_pal;
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

    if (item > ITEM_DATA_MAX)
    {
        dataid = ITEM_DATA_ENTRIES + (item - ITEM_DATA_MAX);
        picid = NEW_ITEM_GFX + (item - ITEM_DATA_MAX - 1) * 2;
        palid = NEW_ITEM_GFX+1 + (item - ITEM_DATA_MAX - 1) * 2;
    }
    else
    {
        dataid = ItemDataIndex[item].arc_data;
        picid = ItemDataIndex[item].arc_cgx;
        palid = ItemDataIndex[item].arc_pal;
    }

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
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

BOOL ItemFieldUseFunc_DNASplicers(struct ItemFieldUseData *data)
{
    RegisteredItem_CreateGoToAppTask(data, (FieldApplicationWorkCtor)_CreateDNASplicersWork, FALSE);
    return TRUE;
}

void *_CreateDNASplicersWork(FieldSystem *fieldSystem)
{
    return sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS);
}

void ItemMenuUseFunc_AbilityCapsule(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ABILITY_CAPSULE);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_LonelyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_LONELY_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_AdamantMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ADAMANT_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_NaughtyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_NAUGHTY_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_BraveMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_BRAVE_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_BoldMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_BOLD_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_ImpishMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_IMPISH_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_LaxMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_LAX_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_RelaxedMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_RELAXED_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_ModestMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_MODEST_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_MildMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_MILD_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_RashMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_RASH_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_QuietMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_QUIET_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_CalmMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_CALM_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_GentleMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_GENTLE_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_CarefulMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_CAREFUL_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_SassyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_SASSY_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_TimidMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_TIMID_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_HastyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_HASTY_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_JollyMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_JOLLY_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_NaiveMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_NAIVE_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_SeriousMint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_SERIOUS_MINT);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}
