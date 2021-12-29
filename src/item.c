#include "../include/types.h"
#include "../include/item.h"
#include "../include/config.h"
#include "../include/constants/item.h"

#define ITEM_DATA_MAX 536
#define NEW_ITEM_MAX ITEM_MEGA_STONE_DIANCIE
// the pixie plate takes up slot 803, so in the case it is implemented, the items need to be offset.
#define ITEM_DATA_ENTRIES 514 + FAIRY_TYPE_IMPLEMENTED
#define NEW_ITEM_GFX 803 + FAIRY_TYPE_IMPLEMENTED

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
        return ArchiveDataLoadMalloc(0x11, dataid, heap_id);
    case ITEM_GET_ICON_CGX:
        return ArchiveDataLoadMalloc(0x12, picid, heap_id);
    case ITEM_GET_ICON_PAL:
        return ArchiveDataLoadMalloc(0x12, palid, heap_id);
    }
    return NULL;
}

void *ItemDataTableLoad(int heapID)
{
    int max;

    max = GetItemIndex(NEW_ITEM_MAX, ITEM_GET_DATA);

    return ArchiveDataLoadMallocOfs(0x11, 0, heapID, 0, 36 * max);//800757Ch
}

bool8 CheckItemByThief(u16 item)
{
    if (item == ITEM_GRISEOUS_ORB || IS_ITEM_MEGA_STONE(item))
        return TRUE;
    return FALSE;
}
