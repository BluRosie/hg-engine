#include "../include/config.h"
#include "../include/constants/item.h"
#include "../include/constants/file.h"
#include "../include/bag.h"
#include "../include/message.h"
#include "../include/item.h"
#include "../include/map_events_internal.h"
#include "../include/save.h"
#include "../include/script.h"


// file is directly from pokeheartgold but without the bag_cursor stuff + sPocketCounts right here

// straight from src/item.c in pokeheartgold
const u16 sPocketCounts[8] = {
    NUM_BAG_ITEMS,
    NUM_BAG_MEDICINE,
    NUM_BAG_BALLS,
    NUM_BAG_TMS_HMS,
    NUM_BAG_BERRIES,
    NUM_BAG_MAIL,
    NUM_BAG_BATTLE_ITEMS,
    NUM_BAG_KEY_ITEMS,
};

const u8 sPocketCountBytes[8] = {
    NUM_BAG_ITEMS,
    NUM_BAG_MEDICINE,
    NUM_BAG_BALLS,
    NUM_BAG_TMS_HMS,
    NUM_BAG_BERRIES,
    NUM_BAG_MAIL,
    NUM_BAG_BATTLE_ITEMS,
    NUM_BAG_KEY_ITEMS,
};


void SortPocket(ITEM_SLOT *slots, u32 count);
void SortTMHMPocket(ITEM_SLOT *slots, u32 count);
void PocketCompaction(ITEM_SLOT *slots, u32 count);
static u16 GetMachineMoveNumber(u16 itemId);
void LONG_CALL Bag_PrintMachineMoveLabel(BagContext *context, void *window, ITEM_SLOT *slot, u32 baseY);
void LONG_CALL PrintUIntOnWindowWithGlyph(void *msgPrinter, u8 glyphId, u32 num, u32 ndigits, u32 mode, void *window, u32 x, u32 y);
void LONG_CALL ov15_021FE8C4(BagContext *context, u32 packedArgs);
void LONG_CALL PrintUIntOnWindow(void *messagePrinter, u32 num, u32 ndigits, u32 mode, void *window, u32 x, u32 y);
void LONG_CALL Bag_RenderItemSlotIcon(BagContext *context, void *target, u16 y); // overriding param 3 for our sprite index
void LONG_CALL PrintItemSlotQuantity(void *unk2F4, void *unk2F0, void *window, u16 quantity);

u32 Sav2_Bag_sizeof(void) {
    return sizeof(BAG_DATA);
}

BAG_DATA *Sav2_Bag_new(int heap_id) {
    BAG_DATA *bag = (BAG_DATA *) sys_AllocMemory(heap_id, sizeof(BAG_DATA));
    Sav2_Bag_init(bag);
    return bag;
}

void Sav2_Bag_init(BAG_DATA *bag) {
    //MI_CpuClear16(bag, sizeof(BAG_DATA));
    memset(bag, 0, sizeof(BAG_DATA));
}

void Sav2_Bag_copy(BAG_DATA *src, BAG_DATA *dst) {
    //MI_CpuCopy8(src, dst, sizeof(BAG_DATA));
    memcpy(dst, src, sizeof(BAG_DATA));
}

u16 Bag_GetRegisteredItemSlot1(BAG_DATA *bag) {
    return bag->registeredItems[0];
}

u16 Bag_GetRegisteredItemSlot2(BAG_DATA *bag) {
    return bag->registeredItems[1];
}

RegisterItemResult Bag_TryRegisterItem(BAG_DATA *bag, u16 itemId) {
    RegisterItemResult result = REG_ITEM_FAIL;

    if (bag->registeredItems[0] == ITEM_NONE) {
        bag->registeredItems[0] = itemId;
        result = REG_ITEM_SLOT1;
    } else if (bag->registeredItems[1] == ITEM_NONE) {
        bag->registeredItems[1] = itemId;
        result = REG_ITEM_SLOT2;
    }
    return result;
}

void Bag_UnregisterItem(BAG_DATA *bag, u16 itemId) {
    if (bag->registeredItems[1] == itemId) {
        bag->registeredItems[1] = ITEM_NONE;
    } else if (bag->registeredItems[0] == itemId) {
        if (bag->registeredItems[1] != ITEM_NONE) {
            bag->registeredItems[0] = bag->registeredItems[1];
            bag->registeredItems[1] = ITEM_NONE;
        } else {
            bag->registeredItems[0] = ITEM_NONE;
        }
    }
}

u32 Bag_GetItemPocket(BAG_DATA *bag, u16 itemId, ITEM_SLOT **ppSlots, u32 *pCount, int heap_id) {
    u32 pocket = GetItemData(itemId, ITEM_PARAM_POCKET, heap_id);
    switch (pocket) {
    case POCKET_KEY_ITEMS:
        *ppSlots = bag->keyItems;
        *pCount = NUM_BAG_KEY_ITEMS;
        break;
    case POCKET_ITEMS:
        *ppSlots = bag->items;
        *pCount = NUM_BAG_ITEMS;
        break;
    case POCKET_BERRIES:
        *ppSlots = bag->berries;
        *pCount = NUM_BAG_BERRIES;
        break;
    case POCKET_MEDICINE:
        *ppSlots = bag->medicine;
        *pCount = NUM_BAG_MEDICINE;
        break;
    case POCKET_BALLS:
        *ppSlots = bag->balls;
        *pCount = NUM_BAG_BALLS;
        break;
    case POCKET_BATTLE_ITEMS:
        *ppSlots = bag->battleItems;
        *pCount = NUM_BAG_BATTLE_ITEMS;
        break;
    case POCKET_MAIL:
        *ppSlots = bag->mail;
        *pCount = NUM_BAG_MAIL;
        break;
    case POCKET_TMHMS:
        *ppSlots = bag->TMsHMs;
        *pCount = NUM_BAG_TMS_HMS;
        break;
    }
    return pocket;
}

ITEM_SLOT *Pocket_GetItemSlotForAdd(ITEM_SLOT *slots, u32 count, u16 itemId, u16 quantity, u16 maxQuantity) {
    u32 i;
    int found = -1;

    for (i = 0; i < count; i++) {
        if (slots[i].id == itemId) {
            // Only one stack allowed per item.
            // If the resulting stack would be too large,
            // pretend there's no room for it.
            if (quantity + slots[i].quantity > maxQuantity) {
                return NULL;
            }
            return &slots[i];
        }
        if (found == -1 && slots[i].id == ITEM_NONE && slots[i].quantity == 0) {
            found = i;
        }
    }
    if (found == -1) {
        return NULL;
    }
    return &slots[found];
}

ITEM_SLOT *Bag_GetItemSlotForAdd(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    ITEM_SLOT *slots;
    u32 count;
    u32 UNUSED pocket_id;

    pocket_id = Bag_GetItemPocket(bag, itemId, &slots, &count, heap_id);
    if (pocket_id == POCKET_TMHMS) {
        u16 max = BAG_TMHM_QUANTITY_MAX;
#ifdef REUSABLE_TMS
        if (IS_ITEM_TM(itemId)) {
            max = 1;
        }
#endif // REUSABLE_TMS
        return Pocket_GetItemSlotForAdd(slots, count, itemId, quantity, max);
    } else {
        return Pocket_GetItemSlotForAdd(slots, count, itemId, quantity, BAG_SLOT_QUANTITY_MAX);
    }
}

BOOL Bag_HasSpaceForItem(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    return Bag_GetItemSlotForAdd(bag, itemId, quantity, heap_id) != NULL;
}

BOOL Bag_AddItem(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    ITEM_SLOT *slot = Bag_GetItemSlotForAdd(bag, itemId, quantity, heap_id);
    if (slot == NULL) {
        return FALSE;
    }
    slot->id = itemId;
    slot->quantity += quantity;
    {
        u32 count;
        u32 pocket_id;

        pocket_id = Bag_GetItemPocket(bag, itemId, &slot, &count, heap_id);
        if (pocket_id == POCKET_BERRIES) {
            SortPocket(slot, count);
        }
        if (pocket_id == POCKET_TMHMS) {
            SortTMHMPocket(slot, count);
        }
    }
    return TRUE;
}

ITEM_SLOT *Pocket_GetItemSlotForRemove(ITEM_SLOT *slots, u32 count, u16 itemId, u16 quantity) {
    u32 i;

    for (i = 0; i < count; i++) {
        if (slots[i].id == itemId) {
            if (slots[i].quantity < quantity) {
                return NULL;
            }
            return &slots[i];
        }
    }
    return NULL;
}

ITEM_SLOT *Bag_GetItemSlotForRemove(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    ITEM_SLOT *slots;
    u32 count;
    u32 UNUSED pocket_id;

    pocket_id = Bag_GetItemPocket(bag, itemId, &slots, &count, heap_id);
    return Pocket_GetItemSlotForRemove(slots, count, itemId, quantity);
}

BOOL Bag_TakeItem(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    ITEM_SLOT *slot = Bag_GetItemSlotForRemove(bag, itemId, quantity, heap_id);
    if (slot == NULL) {
        return FALSE;
    }
    slot->quantity -= quantity;
    if (slot->quantity == 0) {
        slot->id = ITEM_NONE;
    }
    {
        u32 count;
        u32 UNUSED pocket_id;

        pocket_id = Bag_GetItemPocket(bag, itemId, &slot, &count, heap_id);
        PocketCompaction(slot, count);
    }
    return TRUE;
}

BOOL Pocket_TakeItem(ITEM_SLOT *slots, u32 count, u16 itemId, u16 quantity) {
    ITEM_SLOT *slot = Pocket_GetItemSlotForRemove(slots, count, itemId, quantity);
    if (slot == NULL) {
        return FALSE;
    }
    slot->quantity -= quantity;
    if (slot->quantity == 0) {
        slot->id = ITEM_NONE;
    }
    PocketCompaction(slots, count);
    return TRUE;
}

BOOL Bag_HasItem(BAG_DATA *bag, u16 itemId, u16 quantity, int heap_id) {
    return Bag_GetItemSlotForRemove(bag, itemId, quantity, heap_id) != NULL;
}

BOOL Bag_PocketNotEmpty(BAG_DATA *bag, int pocket) {
    ITEM_SLOT *slots;
    u32 count;
    u32 i;

    switch (pocket) {
    case POCKET_KEY_ITEMS:
        slots = bag->keyItems;
        count = NUM_BAG_KEY_ITEMS;
        break;
    case POCKET_ITEMS:
        slots = bag->items;
        count = NUM_BAG_ITEMS;
        break;
    case POCKET_BERRIES:
        slots = bag->berries;
        count = NUM_BAG_BERRIES;
        break;
    case POCKET_MEDICINE:
        slots = bag->medicine;
        count = NUM_BAG_MEDICINE;
        break;
    case POCKET_BALLS:
        slots = bag->balls;
        count = NUM_BAG_BALLS;
        break;
    case POCKET_BATTLE_ITEMS:
        slots = bag->battleItems;
        count = NUM_BAG_BATTLE_ITEMS;
        break;
    case POCKET_MAIL:
        slots = bag->mail;
        count = NUM_BAG_MAIL;
        break;
    case POCKET_TMHMS:
        slots = bag->TMsHMs;
        count = NUM_BAG_TMS_HMS;
        break;
    default:
        return FALSE;
    }

    for (i = 0; i < count; i++) {
        if (slots[i].id != ITEM_NONE) {
            return TRUE;
        }
    }
    return FALSE;
}

u16 Bag_GetQuantity(BAG_DATA *bag, u16 itemId, int heap_id) {
    ITEM_SLOT *slot = Bag_GetItemSlotForRemove(bag, itemId, 1, heap_id);
    if (slot == NULL) {
        return 0;
    }
    return slot->quantity;
}

u16 Pocket_GetQuantity(ITEM_SLOT *slots, u32 count, u16 itemId) {
    ITEM_SLOT *slot = Pocket_GetItemSlotForRemove(slots, count, itemId, 1);
    if (slot == NULL) {
        return 0;
    }
    return slot->quantity;
}

void SwapItemSlots(ITEM_SLOT *a, ITEM_SLOT *b) {
    ITEM_SLOT c = *a;
    *a = *b;
    *b = c;
}

void PocketCompaction(ITEM_SLOT *slots, u32 count) {
    u32 i, j;
    for (i = 0; i < count - 1; i++) {
        for (j = i + 1; j < count; j++) {
            if (slots[i].quantity == 0) {
                SwapItemSlots(&slots[i], &slots[j]);
            }
        }
    }
}

void SortPocket(ITEM_SLOT *slots, u32 count) {
    u32 i, j;
    for (i = 0; i < count - 1; i++) {
        for (j = i + 1; j < count; j++) {
            if (slots[i].quantity == 0 || (slots[j].quantity != 0 && slots[i].id > slots[j].id)) {
                SwapItemSlots(&slots[i], &slots[j]);
            }
        }
    }
}

u8 GetTMHMPocketSortPrecedence(u16 itemId) {
    if (IS_ITEM_HM(itemId)) {
        return SORT_ORDER_HM;
    }
    if (IS_ITEM_TR(itemId)) {
        return SORT_ORDER_TR;
    }
    return SORT_ORDER_TM;
}

void SortTMHMPocket(ITEM_SLOT *slots, u32 count) {
    u32 i, j;
    for (i = 0; i < count - 1; i++) {
        for (j = i + 1; j < count; j++) {
            u8 iSortOrder = GetTMHMPocketSortPrecedence(slots[i].id);
            u8 jSortOrder = GetTMHMPocketSortPrecedence(slots[j].id);
            if (slots[i].quantity == 0 || (slots[j].quantity != 0 &&
                (iSortOrder > jSortOrder || (iSortOrder == jSortOrder && slots[i].id > slots[j].id)))) {
                SwapItemSlots(&slots[i], &slots[j]);
            }
        }
    }
}

// returns a BAG_VIEW but we don't have to care about that
void *CreateBagView(BAG_DATA *bag, const u8 *pockets, int heap_id) {
    int i;
    void *ret = BagView_New(heap_id);
    for (i = 0; pockets[i] != 0xFF; i++) {
        switch (pockets[i]) {
        case POCKET_KEY_ITEMS:
            BagView_SetItem(ret, bag->keyItems, POCKET_KEY_ITEMS, i);
            break;
        case POCKET_ITEMS:
            BagView_SetItem(ret, bag->items, POCKET_ITEMS, i);
            break;
        case POCKET_BERRIES:
            BagView_SetItem(ret, bag->berries, POCKET_BERRIES, i);
            break;
        case POCKET_MEDICINE:
            BagView_SetItem(ret, bag->medicine, POCKET_MEDICINE, i);
            break;
        case POCKET_BALLS:
            BagView_SetItem(ret, bag->balls, POCKET_BALLS, i);
            break;
        case POCKET_BATTLE_ITEMS:
            BagView_SetItem(ret, bag->battleItems, POCKET_BATTLE_ITEMS, i);
            break;
        case POCKET_MAIL:
            BagView_SetItem(ret, bag->mail, POCKET_MAIL, i);
            break;
        case POCKET_TMHMS:
            BagView_SetItem(ret, bag->TMsHMs, POCKET_TMHMS, i);
            break;
        }
    }
    return ret;
}

ITEM_SLOT *Bag_GetPocketSlotN(BAG_DATA *bag, u8 pocket, int n) {
    ITEM_SLOT *slots;
    int count;

    switch (pocket) {
    case POCKET_KEY_ITEMS:
        slots = bag->keyItems;
        count = NUM_BAG_KEY_ITEMS;
        break;
    case POCKET_ITEMS:
        slots = bag->items;
        count = NUM_BAG_ITEMS;
        break;
    case POCKET_BERRIES:
        slots = bag->berries;
        count = NUM_BAG_BERRIES;
        break;
    case POCKET_MEDICINE:
        slots = bag->medicine;
        count = NUM_BAG_MEDICINE;
        break;
    case POCKET_BALLS:
        slots = bag->balls;
        count = NUM_BAG_BALLS;
        break;
    case POCKET_BATTLE_ITEMS:
        slots = bag->battleItems;
        count = NUM_BAG_BATTLE_ITEMS;
        break;
    case POCKET_MAIL:
        slots = bag->mail;
        count = NUM_BAG_MAIL;
        break;
    case POCKET_TMHMS:
        slots = bag->TMsHMs;
        count = NUM_BAG_TMS_HMS;
        break;
    default:
        return 0;
    }
    // UB: If pocket invalid, count and slot are uninitialized
    if (n >= count) {
        return 0;
    }
    return &slots[n];
}


/**
 * @brief Gets the machine move number for a given item id
 */
static u16 GetMachineMoveNumber(u16 itemId) {
    // HMs
    if (itemId == ITEM_HM07_ORAS) {
        return 7;
    }
    if (itemId >= ITEM_HM01 && itemId <= ITEM_HM08) {
        return itemId - ITEM_HM01 + 1;
    }

    // TMs
    if (itemId >= ITEM_TM001 && itemId <= ITEM_TM092) {
        return itemId - ITEM_TM001 + 1;
    }
    if (itemId == ITEM_TM00) {
        return 0;
    }
    if (itemId >= ITEM_TM093 && itemId <= ITEM_TM095) {
        return itemId - ITEM_TM093 + 93;
    }
    if (itemId >= ITEM_TM096 && itemId <= ITEM_TM100) {
        return itemId - ITEM_TM096 + 96;
    }
    if (itemId >= ITEM_TM100_SV && itemId <= ITEM_TM229) {
        return itemId - ITEM_TM100_SV + 100;
    }

    // TRs
    if (itemId >= ITEM_TR00 && itemId <= ITEM_TR99) {
        return itemId - ITEM_TR00;
    }

    return 0;
}

/**
 * @brief handles drawing machine move item slots in the bag and decides if we should draw the quantity numbers or not on TMs
 */
void LONG_CALL Bag_RenderMachineMoveSlot(BagContext *context, void *window, void *msg, void *lst, int index) {
    void *items = *(void **)lst;
    ITEM_SLOT *slot = (ITEM_SLOT *)items + index;
    AddTextPrinterParameterizedWithColor(window, 0, msg, 0, 0, 0xFF, 0x00010200, NULL);
    Bag_PrintMachineMoveLabel(context, window, slot, 0x10);
#ifdef REUSABLE_TMS
    BOOL showQuant = IS_ITEM_TR(slot->id);
#else
    BOOL showQuant = IS_ITEM_TM(slot->id) || IS_ITEM_TR(slot->id);
#endif // REUSABLE_TMS
    if (showQuant) {
        PrintItemSlotQuantity(context->unk2F4, context->unk2F0, window, slot->quantity);
    }
}

/**
 * @brief render the label and number for a TM/HM/TR item in the bag
 */
void LONG_CALL Bag_PrintMachineMoveLabel(BagContext *context, void *window, ITEM_SLOT *slot, u32 baseY) {
    u16 itemId = slot->id;
    u16 machineMoveNumber = GetMachineMoveNumber(itemId);
    void *msgPrinter = context->msgPrinter;

#ifdef UPDATE_MACHINE_MOVE_LABELS
    int numDigits = 2;
    int icon = BAG_HM_ICON;

    if (IS_ITEM_TM(itemId)) {
        icon = BAG_TM_ICON;
        numDigits = 3;
    } else if (IS_ITEM_TR(itemId)) {
        icon = BAG_TR_ICON;
    }

    PrintUIntOnWindow(msgPrinter, machineMoveNumber, numDigits, 2, window, 24, baseY + 5);
    Bag_RenderItemSlotIcon(context, window, icon);
#else
    if (IS_ITEM_HM(itemId)) {
        PrintUIntOnWindow(msgPrinter, machineMoveNumber, 2, 1, window, 0x10, baseY + 5);
        Bag_RenderItemSlotIcon(context, window, BAG_HM_ICON);
    } else {
        PrintUIntOnWindowWithGlyph(msgPrinter, 2, machineMoveNumber, 2, 2, window, 0x0, baseY + 5); // No. XX
        ov15_021FE8C4(context, ((u32)slot->quantity << 16) | (baseY & 0xFFFF)); // honestly idk what this is even doing
    }
#endif // UPDATE_MACHINE_MOVE_LABELS
}


// move these here so gFieldSysPtr works

u32 IsPlayerOnIce(u32 collision) // run to determine if the player is on ice
{
    if (collision == 32)
        return TRUE;

    return FALSE;
}

BOOL IsPlayerOnLadder(void)
{
    if (gFieldSysPtr == NULL)
        return TRUE;
    u32 collision = GetMetatileBehaviorAt(gFieldSysPtr, gFieldSysPtr->location->x, gFieldSysPtr->location->z);
    u32 mapId = gFieldSysPtr->location->mapId;
    return (collision == 0x3C || collision == 0x3D || collision == 0x3E || mapId == 114 || mapId == 180);
}
