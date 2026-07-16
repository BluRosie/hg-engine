#include "../../include/config.h"
#include "../../include/constants/file.h"
#include "../../include/constants/maps.h"
#include "../../include/debug.h"
#include "../../include/map_events_internal.h"
#include "../../include/save.h"
#include "../../include/types.h"

static u16 LCRandRange(const u16 maximum)
{
    GF_ASSERT(maximum != 0);
    if (maximum <= 1) {
        return 0;
    } else {
        u16 result = gf_rand() % maximum;
        return result;
    }
}

u8 LONG_CALL EncounterSlot_WildMonSlotRoll_Land(void)
{
    u8 rnd = LCRandRange(100);

    if (rnd < 20) {
        return 0;
    } else if (rnd >= 20 && rnd < 40) {
        return 1;
    } else if (rnd >= 40 && rnd < 50) {
        return 2;
    } else if (rnd >= 50 && rnd < 60) {
        return 3;
    } else if (rnd >= 60 && rnd < 70) {
        return 4;
    } else if (rnd >= 70 && rnd < 80) {
        return 5;
    } else if (rnd >= 80 && rnd < 85) {
        return 6;
    } else if (rnd >= 85 && rnd < 90) {
        return 7;
    } else if (rnd >= 90 && rnd < 94) {
        return 8;
    } else if (rnd >= 94 && rnd < 98) {
        return 9;
    } else if (rnd == 98) {
        return 10;
    } else {
        return 11;
    }
}

u8 LONG_CALL EncounterSlot_WildMonSlotRoll_Surfing(void)
{
    u8 rnd = LCRandRange(100);

    if (rnd < 60) {
        return 0;
    } else if (rnd >= 60 && rnd < 90) {
        return 1;
    } else if (rnd >= 90 && rnd < 95) {
        return 2;
    } else if (rnd >= 95 && rnd < 99) {
        return 3;
    } else {
        return 4;
    }
}

u8 LONG_CALL EncounterSlot_WildMonSlotRoll_Fishing(int rodType UNUSED)
{
    u8 rnd = LCRandRange(100);

    if (rnd < 40) {
        return 0;
    } else if (rnd < 70) {
        return 1;
    } else if (rnd < 85) {
        return 2;
    } else if (rnd < 95) {
        return 3;
    } else {
        return 4;
    }
}

u8 LONG_CALL EncounterSlot_WildMonSlotRoll_RockSmash(void)
{
    u8 rnd = LCRandRange(100);

    return rnd >= 80 ? 1 : 0;
}

u8 LONG_CALL EncounterSlot_WildMonSlotRoll_Headbutt(void)
{
    u8 rnd = LCRandRange(100);

    if (rnd < 50) {
        return 0;
    } else if (rnd < 65) {
        return 1;
    } else if (rnd < 80) {
        return 2;
    } else if (rnd < 90) {
        return 3;
    } else if (rnd < 95) {
        return 4;
    } else {
        return 5;
    }
}
