#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/maps.h"
#include "../include/constants/roamer.h"
#include "../include/constants/species.h"
#include "../include/debug.h"
#include "../include/map_events_internal.h"
#include "../include/message.h"
#include "../include/roamer.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/types.h"

/* In order to change the adjacent routes we would need to hook
 * https://github.com/pret/pokeheartgold/blob/d72700a52ad27ddf47847009a85b4bc9c85fa283/src/field_roamer.c#L256
 */

static const u32 sRoamerLocations[ROAMER_LOC_COUNT] = {
    // Johto
    MAP_R29,
    MAP_R30,
    MAP_R31,
    MAP_R32,
    MAP_R33,
    MAP_R34,
    MAP_R35,
    MAP_R36,
    MAP_R37,
    MAP_R38,
    MAP_R39,
    MAP_R42,
    MAP_R43,
    MAP_R44,
    MAP_R45,
    MAP_R46,

    // Kanto
    MAP_R01,
    MAP_R02,
    MAP_R03,
    MAP_R04,
    MAP_R05,
    MAP_R06,
    MAP_R07,
    MAP_R08,
    MAP_R09,
    MAP_R10,
    MAP_R11,
    MAP_R12,
    MAP_R13,
    MAP_R14,
    MAP_R15,
    MAP_R16,
    MAP_R17,
    MAP_R18,
    MAP_W19,
    MAP_W20,
    MAP_W21,
    MAP_R22,
    MAP_R24,
    MAP_R26,
    MAP_R28,
};

void LONG_CALL RoamerLocationSetRandom(void *roamerSave, u8 roamer_idx, u32 last_loc)
{
    u32 roamer_cur_loc, roamer_test_loc;
    u8 loc_min, loc_num;
    u8 loc_cur_rand;

    roamer_cur_loc = sRoamerLocations[Roamer_GetLocation(roamerSave, roamer_idx)];
    if (roamer_idx == ROAMER_RAIKOU || roamer_idx == ROAMER_ENTEI) {
        loc_num = ROAMER_LOC_JOHTO_COUNT;
        loc_min = ROAMER_LOC_JOHTO_START;
    } else {
        loc_num = ROAMER_LOC_KANTO_COUNT;
        loc_min = ROAMER_LOC_KANTO_START;
    }
    do {
        loc_cur_rand = (gf_rand() % loc_num) + loc_min;
        roamer_test_loc = sRoamerLocations[loc_cur_rand];
    } while (roamer_test_loc == last_loc || roamer_test_loc == roamer_cur_loc);
    ApplyRoamerLocation(roamerSave, roamer_idx, loc_cur_rand, roamer_test_loc);
}

void LONG_CALL Save_CreateRoamerByID(SaveData *saveData, u8 idx)
{
    void *profile;
    void *roamerSave = EncDataSave_GetSaveDataPtr(saveData);
    Roamer *roamerStats = Roamers_GetRoamMonStats(roamerSave, idx);
    struct PartyPokemon *mon;
    u16 species;
    u8 level;

    switch (idx) {
    case ROAMER_RAIKOU:
        species = SPECIES_RAIKOU;
        level = 40;
        break;
    case ROAMER_ENTEI:
        species = SPECIES_ENTEI;
        level = 40;
        break;
    case ROAMER_LATIAS:
        species = SPECIES_LATIAS;
        level = 35;
        break;
    case ROAMER_LATIOS:
        species = SPECIES_LATIOS;
        level = 35;
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }

    SetRoamerData(roamerStats, ROAMER_DATA_SPECIES, species);
    SetRoamerData(roamerStats, ROAMER_DATA_LEVEL, level);

    profile = Sav2_PlayerData_GetProfileAddr(saveData);
    mon = AllocMonZeroed(4);
    ZeroMonData(mon);
    PokeParaSet(mon, species, level, 32, FALSE, 0, OT_ID_PRESET, PlayerProfile_GetTrainerID_VisibleHalf(profile));
    SetRoamerData(roamerStats, ROAMER_DATA_STATUS, 0);
    SetRoamerData(roamerStats, ROAMER_DATA_ACTIVE, TRUE);
    SetRoamerData(roamerStats, ROAMER_DATA_IVS, GetMonData(mon, MON_DATA_IVS_WORD, NULL));
    SetRoamerData(roamerStats, ROAMER_DATA_PERSONALITY, GetMonData(mon, MON_DATA_PERSONALITY, NULL));
    SetRoamerData(roamerStats, ROAMER_DATA_HP, GetMonData(mon, MON_DATA_MAXHP, NULL));
    sys_FreeMemoryEz(mon);
    RoamerLocationSetRandom(roamerSave, idx, PlayerLocationHistoryGetBack(roamerSave));
}

u8 LONG_CALL SpeciesToRoamerIdx(u16 species)
{
    switch (species) {
    case SPECIES_RAIKOU:
        return ROAMER_RAIKOU;
    case SPECIES_ENTEI:
        return ROAMER_ENTEI;
    case SPECIES_LATIOS:
        return ROAMER_LATIOS;
    case SPECIES_LATIAS:
        return ROAMER_LATIAS;
    default:
        GF_ASSERT(FALSE);
        return ROAMER_MAX;
    }
}
