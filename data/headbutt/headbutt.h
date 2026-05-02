#ifndef HEADBUTT_DATA_H
#define HEADBUTT_DATA_H

#include "../../include/types.h"
#include "../../include/constants/species.h"

typedef struct PACKED HeadbuttEncounterSlot {
    u16 species;
    u8 minLevel;
    u8 maxLevel;
} HeadbuttEncounterSlot;

typedef struct PACKED HeadbuttTreeCoord {
    s16 x;
    s16 y;
} HeadbuttTreeCoord;

#define HEADBUTT_DECLARE_FILE(name, row_count) \
    typedef struct PACKED name { \
        u16 normalTreeCount; \
        u16 specialTreeCount; \
        HeadbuttEncounterSlot normalSlots[12]; \
        HeadbuttEncounterSlot specialSlots[6]; \
        HeadbuttTreeCoord treeCoords[(row_count)][6]; \
    } name

#define HEADBUTT_DECLARE_EMPTY_FILE(name) \
    typedef struct PACKED name { \
        u16 normalTreeCount; \
        u16 specialTreeCount; \
    } name

#endif
