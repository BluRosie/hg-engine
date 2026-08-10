#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/generated/learnsets.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/sndseq.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/party_menu.h"
#include "../../include/pokemon.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/sound.h"
#include "../../include/types.h"

struct EggMoveSearch {
    int dad_moves[4];
    int shared_moves[4];
    int mom_moves[4];
    u16 baby_learnset[MAX_LEVELUP_MOVES];
    u16 baby_egg_moves[MAX_EGG_MOVES];
};

void __attribute__((section(".init"))) InheritMoves_Internal(struct PartyPokemon *egg, struct BoxPokemon *father, struct BoxPokemon *mother)
{
    u16 sp1C;
    u16 egg_species;
    u16 learnset_size;
    u16 egg_form;
    u16 i, j;
    u16 r5;
    struct EggMoveSearch *search;

    search = sys_AllocMemory(HEAPID_FIELD1, sizeof(struct EggMoveSearch));
    sp1C = 0;
    MI_CpuClearFast(search, sizeof(struct EggMoveSearch));

    egg_species = GetMonData(egg, MON_DATA_SPECIES, NULL);
    egg_form = GetMonData(egg, MON_DATA_FORM, NULL);
    learnset_size = Species_LoadLearnsetTable(egg_species, egg_form, search->baby_learnset);
    for (i = 0; i < MAX_MON_MOVES; i++) {
        search->dad_moves[i] = GetBoxMonData(father, MON_DATA_MOVE1 + i, NULL);
        search->mom_moves[i] = GetBoxMonData(mother, MON_DATA_MOVE1 + i, NULL);
    }
    r5 = LoadEggMoves(egg, search->baby_egg_moves);
    for (i = 0; i < MAX_MON_MOVES; i++) {
        if (search->dad_moves[i] != MOVE_NONE) {
            for (j = 0; j < r5; j++) {
                if (search->dad_moves[i] == search->baby_egg_moves[j]) {
                    if (TryAppendMonMove(egg, search->dad_moves[i]) == MOVE_APPEND_FULL) {
                        DeleteMonFirstMoveAndAppend(egg, search->dad_moves[i]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }
    for (i = 0; i < MAX_MON_MOVES; i++) {
        if (search->dad_moves[i] != MOVE_NONE) {
            for (j = 0; j < 100; j++) {
                if (search->dad_moves[i] == ItemToMachineMove(j + ITEM_TM001)) {
                    if (GetTMHMCompatBySpeciesAndForm(egg_species, egg_form, j)) {
                        if (TryAppendMonMove(egg, search->dad_moves[i]) == MOVE_APPEND_FULL) {
                            DeleteMonFirstMoveAndAppend(egg, search->dad_moves[i]);
                        }
                    }
                }
            }
        }
    }
    for (i = 0; i < MAX_MON_MOVES; i++) {
        if (search->dad_moves[i] == MOVE_NONE) {
            break;
        }
        for (j = 0; j < MAX_MON_MOVES; j++) {
            if (search->dad_moves[i] == search->mom_moves[j] && search->dad_moves[i] != MOVE_NONE) {
                search->shared_moves[sp1C++] = search->dad_moves[i];
            }
        }
    }
    for (i = 0; i < MAX_MON_MOVES; i++) {
        if (search->shared_moves[i] == MOVE_NONE) {
            break;
        }
        for (j = 0; j < learnset_size; j++) {
            if (search->baby_learnset[j] != MOVE_NONE) {
                if (search->shared_moves[i] == search->baby_learnset[j]) {
                    if (TryAppendMonMove(egg, search->shared_moves[i]) == MOVE_APPEND_FULL) {
                        DeleteMonFirstMoveAndAppend(egg, search->shared_moves[i]);
                    }
                    break;
                }
            }
        }
    }
    sys_FreeMemoryEz(search);
}
