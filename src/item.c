#include "../include/item.h"

#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/message.h"
#include "../include/script.h"
#include "../include/types.h"

#define GFX_ITEM_DUMMY_ID  ((MAX_TOTAL_ITEM_NUM) * 2 + 2)
#define GFX_ITEM_RETURN_ID ((MAX_TOTAL_ITEM_NUM + 1) * 2 + 4)
#define NEW_ITEM_GFX       (797)

u16 GetItemIndex(u16 item, u16 type);
void *GetItemNarcData(u16 item, u16 type, u32 heap_id);
u16 ItemToMachineMove(u16 itemId);
// void *LONG_CALL ItemDataTableLoad(int heapID);
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

const struct ItemUseFuncDat sNewItemFieldUseFuncs[] = {
    { ItemMenuUseFunc_RevealGlass, ItemFieldUseFunc_RevealGlass, NULL },
    { ItemMenuUseFunc_DNASplicers, ItemFieldUseFunc_DNASplicers, NULL },
    { ItemMenuUseFunc_AbilityCapsule, NULL, NULL },
    { ItemMenuUseFunc_Mint, NULL, NULL },
    { ItemMenuUseFunc_Nectar, NULL, NULL },
    { ItemMenuUseFunc_RotomCatalog, NULL, NULL },
};

extern const struct ItemUseFuncDat sItemFieldUseFuncs[NUM_VANILLA_FIELD_USE_FUNCS];

void *LONG_CALL GetItemFieldUseFunc(int funcType, u16 itemType)
{
    const struct ItemUseFuncDat *useFunc;
    if (itemType >= NUM_VANILLA_FIELD_USE_FUNCS) {
        u16 index = itemType - NUM_VANILLA_FIELD_USE_FUNCS;
        if (index >= NELEMS(sNewItemFieldUseFuncs)) {
            return NULL;
        }
        useFunc = &sNewItemFieldUseFuncs[index];
    } else {
        useFunc = &sItemFieldUseFuncs[itemType];
    }
    if (funcType == USE_ITEM_TASK_MENU) {
        return useFunc->menu;
    } else if (funcType == USE_ITEM_TASK_FIELD) {
        return useFunc->field;
    } else {
        return useFunc->check;
    }
}

u16 GetItemIndex(u16 item, u16 type)
{
    u16 ret = 0;
    switch (type) {
    case ITEM_GET_DATA:
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID) {
            break;
        }
        ret = item;
        return ret;

    case ITEM_GET_ICON_CGX:
        if (item == ITEM_DUMMY_ID) {
            return GFX_ITEM_DUMMY_ID;
        }
        if (item == ITEM_RETURN_ID) {
            return GFX_ITEM_RETURN_ID;
        }
        ret = item * 2 + 2;
        return ret;

    case ITEM_GET_ICON_PAL:
        if (item == ITEM_DUMMY_ID) {
            return GFX_ITEM_DUMMY_ID + 1;
        }
        if (item == ITEM_RETURN_ID) {
            return GFX_ITEM_RETURN_ID + 1;
        }
        ret = item * 2 + 3;
        return ret;

    case ITEM_GET_AGB_NUM: // for pal park purposes
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID) {
            break;
        }
        if (item > MAX_TOTAL_ITEM_NUM) {
            ret = 0;
        } else {
            ret = ItemDataIndex[item].agb_id;
        }
        return ret;
    }
    return 0;
}

void *GetItemNarcData(u16 item, u16 type, u32 heapID)
{
    int dataID, picID, palID;

    dataID = item;
    picID = item * 2 + 2;
    palID = item * 2 + 3;

    switch (type) {
    case ITEM_GET_DATA:
        return AllocAndReadWholeNarcMemberByIdPair(ARC_ITEM_DATA, dataID, heapID);
    case ITEM_GET_ICON_CGX:
        return AllocAndReadWholeNarcMemberByIdPair(ARC_ITEM_GFX_DATA, picID, heapID);
    case ITEM_GET_ICON_PAL:
        return AllocAndReadWholeNarcMemberByIdPair(ARC_ITEM_GFX_DATA, palID, heapID);
    }
    return NULL;
}

void LONG_CALL GetItemDescIntoString(String *dest, u16 itemId, u16 heapId)
{
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
    int max = GetItemIndex(MAX_TOTAL_ITEM_NUM, ITEM_GET_DATA) + 1;

    return AllocAndReadFromNarcMemberByIdPair(ARC_ITEM_DATA, 0, heapID, 0, sizeof(ITEMDATA) * max); // 800757Ch
}

/**
 * @brief converts an item id to its corresponding TM/HM/TR index within sMachineMoves
 * @see   pret/pokeheartgold ItemToTMHMId
 */
u16 ItemToMachineMoveIndex(u16 itemId)
{
    if (itemId >= ITEM_TM001 && itemId <= ITEM_HM08) {
        return itemId - ITEM_TM001;
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
u16 ItemToMachineMove(u16 itemId)
{
    if (itemId < ITEM_TM001) {
        return MOVE_NONE;
    }

    u16 index = ItemToMachineMoveIndex(itemId);
    if (index >= NUM_MACHINE_MOVES) {
        return MOVE_NONE;
    }
    u16 move = 0;
    ReadFromNarcMemberByIdPair(&move, ARC_CODE_ADDONS, CODE_ADDON_MACHINE_MOVES, sizeof(u16) * (index), sizeof(u16));
    return move;
}

BOOL MoveIsHM(u16 moveId)
{
    for (u8 i = 0; i < NUM_HMS; i++) {
        u16 moveTmp;
        u16 index = i + ITEM_HM01 - ITEM_TM001;
        ReadFromNarcMemberByIdPair(&moveTmp, ARC_CODE_ADDONS, CODE_ADDON_MACHINE_MOVES, sizeof(u16) * (index), sizeof(u16));
        if (moveTmp == moveId) {
#if defined(REUSABLE_TMS) && defined(DELETABLE_HMS)
            return FALSE;
#else
            return TRUE;
#endif
        }
    }
    return FALSE;
}

s32 LONG_CALL GetItemAttr_PreloadedItemData(ITEMDATA *itemData, u16 attrno)
{
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
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
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
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
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
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ABILITY_CAPSULE);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Mint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Nectar(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_RotomCatalog(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{

    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; // TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ROTOM_CATALOG);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}
