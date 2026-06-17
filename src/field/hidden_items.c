#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/map_events_internal.h"
#include "../../include/pokemon.h"
#include "../../include/script.h"
#include "../../include/types.h"

typedef struct HiddenItemData {
    u16 itemId;
    u8 quantity;
    u8 unk3;
    u16 unk4;
    u16 index;
} HiddenItemData;

typedef struct HiddenItemResponse {
    s16 x;
    s16 y;
    u8 unk4;
    u8 dummy;
} HiddenItemResponse;

typedef struct ScriptEnvironment ScriptEnvironment;

void *LONG_CALL FieldSysGetAttrAddrInternal(ScriptEnvironment *env, int field);
BOOL LONG_CALL FieldSystem_FlagCheck(FieldSystem *fieldSystem, u16 flagId);
void *LONG_CALL Heap_Alloc(int heapId, u32 size);
const BG_EVENT *LONG_CALL Field_GetBgEvents(FieldSystem *fieldSystem);
u32 LONG_CALL Field_GetNumBgEvents(const FieldSystem *fieldSystem);
u32 LONG_CALL PlayerAvatar_GetXCoord(FIELD_PLAYER_AVATAR *playerAvatar);
u32 LONG_CALL PlayerAvatar_GetZCoord(FIELD_PLAYER_AVATAR *playerAvatar);
u16 LONG_CALL HiddenItemScriptNoToFlagId(u16 script);
u16 LONG_CALL HiddenItemScriptNoToHiddenItemIdx(u16 script);

#define HIDDEN_ITEM_PARAM_COUNT 231

static BOOL HiddenItemFindByIndex(u16 index, HiddenItemData *out)
{
    HiddenItemData hiddenItem;
    u32 i;

    for (i = 0; i < HIDDEN_ITEM_PARAM_COUNT; i++) {
        ArchiveDataLoadOfs(&hiddenItem, ARC_CODE_ADDONS, CODE_ADDON_HIDDEN_ITEM_PARAMS, i * sizeof(HiddenItemData), sizeof(HiddenItemData));
        if (hiddenItem.index == index) {
            *out = hiddenItem;
            return TRUE;
        }
    }

    return FALSE;
}

u8 LONG_CALL HiddenItemGetUnk3(u16 script)
{
    HiddenItemData hiddenItem;

    if (!HiddenItemFindByIndex(HiddenItemScriptNoToHiddenItemIdx(script), &hiddenItem)) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return hiddenItem.unk3;
}

BOOL LONG_CALL GetHiddenItemParams(ScriptEnvironment *env, u16 script)
{
    HiddenItemData hiddenItem;
    u16 *var8000;
    u16 *var8001;
    u16 *var8002;

    if (!HiddenItemFindByIndex(HiddenItemScriptNoToHiddenItemIdx(script), &hiddenItem)) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    var8000 = FieldSysGetAttrAddrInternal(env, SCRIPTENV_SPECIAL_VAR_8000);
    var8001 = FieldSysGetAttrAddrInternal(env, SCRIPTENV_SPECIAL_VAR_8001);
    var8002 = FieldSysGetAttrAddrInternal(env, SCRIPTENV_SPECIAL_VAR_8002);

    *var8000 = hiddenItem.itemId;
    *var8001 = hiddenItem.quantity;
    *var8002 = HiddenItemScriptNoToFlagId(script);
    return TRUE;
}

HiddenItemResponse *LONG_CALL AllocAndFetchNearbyHiddenItems(FieldSystem *fieldSystem, int heapId)
{
    HiddenItemResponse *hiddenItems;
    const BG_EVENT *bgEvents;
    int numBgEvents;
    int playerX;
    int playerZ;
    int left;
    int right;
    int top;
    int bottom;
    int i;
    int count;

    numBgEvents = Field_GetNumBgEvents(fieldSystem);
    hiddenItems = Heap_Alloc(heapId, (numBgEvents + 1) * sizeof(HiddenItemResponse));
    if (numBgEvents == 0) {
        hiddenItems[0].unk4 = 0xFF;
        hiddenItems[0].x = -1;
        hiddenItems[0].y = -1;
        return hiddenItems;
    }

    bgEvents = Field_GetBgEvents(fieldSystem);
    if (bgEvents == NULL) {
        hiddenItems[0].unk4 = 0xFF;
        hiddenItems[0].x = -1;
        hiddenItems[0].y = -1;
        return hiddenItems;
    }

    playerX = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    playerZ = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    left = playerX - 17;
    right = playerX + 17;
    top = playerZ - 17;
    bottom = playerZ + 17;
    if (left < 0) {
        left = 0;
    }
    if (top < 0) {
        top = 0;
    }

    count = 0;
    for (i = 0; i < numBgEvents; i++) {
        if (bgEvents[i].type != 2) {
            continue;
        }
        if (FieldSystem_FlagCheck(fieldSystem, HiddenItemScriptNoToFlagId(bgEvents[i].scr))) {
            continue;
        }
        if (bgEvents[i].x < left || bgEvents[i].x > right || bgEvents[i].z < top || bgEvents[i].z > bottom) {
            continue;
        }

        hiddenItems[count].unk4 = HiddenItemGetUnk3(bgEvents[i].scr);
        hiddenItems[count].x = bgEvents[i].x - playerX;
        hiddenItems[count].y = bgEvents[i].z - playerZ;
        count++;
    }

    hiddenItems[count].unk4 = 0xFF;
    hiddenItems[count].x = -1;
    hiddenItems[count].y = -1;
    return hiddenItems;
}
