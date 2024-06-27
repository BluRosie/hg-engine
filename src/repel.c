#include "../include/repel.h"
#include "../include/item.h"
#include "../include/constants/item.h"
#include "../include/bag.h"
#include "../include/constants/file.h"

extern u16 CurrentRepelType;

bool32 PlayerStepEvent_RepelCounterDecrement(SaveData *saveData, FieldSystem *fieldSystem) {
    void *roamerSaveData = EncDataSave_GetSaveDataPtr(saveData);
    u8* repel_addr = SaveData_GetRepelPtr(roamerSaveData);

    if (*repel_addr != 0) {
        (*repel_addr)--;

        if (*repel_addr == 0) {
            BAG_DATA *bag = Sav2_Bag_get(saveData);

            if (Bag_HasItem(bag, CurrentRepelType, 1, HEAPID_WORLD)) {
                EventSet_Script(fieldSystem, 2072, NULL);
            } else {
                EventSet_Script(fieldSystem, 2022, NULL);
            }
            
            return TRUE;
        }
    }

    return FALSE;
}

BOOL Repel_UseMostRecent(u32 heap_id) {
    return Repel_Use(CurrentRepelType, heap_id);
}

BOOL Repel_Use(u16 item_id, u32 heap_id) {
    SaveData *saveData = SaveBlock2_get();
    void *roamerSaveData = EncDataSave_GetSaveDataPtr(saveData);
    u8* repel_addr = SaveData_GetRepelPtr(roamerSaveData);

    BAG_DATA *bag = Sav2_Bag_get(saveData);

    if (Bag_TakeItem(bag, item_id, 1, heap_id)) {
        *repel_addr = Repel_GetSteps(item_id, heap_id);
        return TRUE;
    }

    return FALSE;
}

u8 Repel_GetSteps(u16 item_id, u32 heap_id) {
    return GetItemData(item_id, ITEM_PARAM_ATTACK, heap_id);
}
