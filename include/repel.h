#ifndef REPEL_H
#define REPEL_H

#include "types.h"
#include "save.h"
#include "script.h"

bool32 PlayerStepEvent_RepelCounterDecrement(SaveData *saveData, FieldSystem *fieldSystem);

BOOL Repel_UseMostRecent(u32 heap_id);
BOOL Repel_Use(u16 item_id, u32 heap_id);
u8 Repel_GetSteps(u16 item_id, u32 heap_id);

#endif
