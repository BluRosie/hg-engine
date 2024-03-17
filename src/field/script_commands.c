#include "../../include/types.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

/**
 *  @brief script command to give an egg adapted to set the hidden ability
 *
 *  @param ctx script context structure
 *  @return FALSE
 */
BOOL ScrCmd_GiveEgg(SCRIPTCONTEXT *ctx)
{
    FieldSystem *fsys = ctx->fsys;
    void *profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);

    u16 species = ScriptGetVar(ctx);

    u32 form = (species & 0xF800) >> 11; // extract form from egg
    species = species & 0x7FF;

    u16 offset = ScriptGetVar(ctx);

    struct Party *party = SaveData_GetPlayerPartyPtr(fsys->savedata);
    u8 partyCount = party->count;
    if (partyCount < 6)
    {
        struct PartyPokemon *pokemon = AllocMonZeroed(11);
        ZeroMonData(pokemon);
        int val = sub_02017FE4(1, offset);

        SetEggStats(pokemon, species, 1, profile, 3, val);

        SetMonData(pokemon, MON_DATA_FORM, &form); // add form capability

        ClearMonMoves(pokemon);
        InitBoxMonMoveset(&pokemon->box);

        if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
        {
            SET_MON_HIDDEN_ABILITY_BIT(pokemon)
            ResetPartyPokemonAbility(pokemon);
            ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        }

        PokeParty_Add(party, pokemon);
        sys_FreeMemoryEz(pokemon);
    }

    return FALSE;
}

/**
 *  @brief script command to give the togepi egg
 *
 *  @param ctx script context structure
 *  @return FALSE
 */
BOOL ScrCmd_GiveTogepiEgg(SCRIPTCONTEXT *ctx) {
    s32 i;
    u8 pp;
    u16 moveData;
    struct PartyPokemon *togepi;
    void *profile;
    struct Party *party;
    FieldSystem *fsys = ctx->fsys;

    profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);
    party = SaveData_GetPlayerPartyPtr(fsys->savedata);

    if (party->count >= 6) {
        return FALSE;
    }

    togepi = AllocMonZeroed(11);
    ZeroMonData(togepi);

    SetEggStats(togepi, SPECIES_TOGEPI, 1, profile, 3, sub_02017FE4(1, 13));

    //SetMonData(togepi, MON_DATA_FORM, &form); // add form capability

    //ClearMonMoves(pokemon);
    //InitBoxMonMoveset(&pokemon->box);

    for (i = 0; i < 4; i++) {
        if (!GetMonData(togepi, MON_DATA_MOVE1 + i, 0)) {
            break;
        }
    }

    if (i == 4) {
        i = 3;
    }

    moveData = MOVE_EXTRASENSORY; // add extrasensory to the togepi
    SetMonData(togepi, MON_DATA_MOVE1 + i, &moveData);

    pp = GetMonData(togepi, MON_DATA_MOVE1MAXPP + i, 0);
    SetMonData(togepi, MON_DATA_MOVE1PP + i, &pp);

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
    {
        SET_MON_HIDDEN_ABILITY_BIT(togepi)
        ResetPartyPokemonAbility(togepi);
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }


    PokeParty_Add(party, togepi);

    sys_FreeMemoryEz(togepi);

    SaveMisc_SetTogepiPersonalityGender(Sav2_Misc_get(fsys->savedata), GetMonData(togepi, MON_DATA_PERSONALITY, 0), GetMonData(togepi, MON_DATA_GENDER, 0));

    return FALSE;
}

BOOL ScrCmd_DaycareSanitizeMon(SCRIPTCONTEXT *ctx) {
    struct PartyPokemon *mon;

    FieldSystem *fieldSystem = ctx->fsys;
    u16 party_slot = ScriptGetVar(ctx);
    u16 *ret_ptr = ScriptGetVarPointer(ctx);
    void *party = SaveData_GetPlayerPartyPtr(fieldSystem->savedata);
    mon = Party_GetMonByIndex(party, party_slot);

    *ret_ptr = 0;

    if (party_slot == 0xFF) {
        return FALSE;
    }

    u32 held_item = GetMonData(mon, MON_DATA_HELD_ITEM, NULL);
    if (held_item == ITEM_GRISEOUS_ORB) {
        BAG_DATA *bag = Sav2_Bag_get(fieldSystem->savedata);
        if (!Bag_AddItem(bag, ITEM_GRISEOUS_ORB, 1, 11)) {
            *ret_ptr = 0xFF;
            return FALSE;
        }

        u32 no_item = ITEM_NONE;
        SetMonData(mon, MON_DATA_HELD_ITEM, &no_item);
    }

    s32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    if (form > 0) {
        u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
        switch (species) {
            case SPECIES_GIRATINA:
                PokeParaGiratinaFormChange(mon);
                break;
            case SPECIES_ROTOM:
                Mon_UpdateRotomForm(mon, 0, 0);
                break;
            case SPECIES_SHAYMIN:
                Mon_UpdateShayminForm(mon, 0);
                break;
        }
    }

    // Begin custom logic for Mirror Herb
    if (GetMonData(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_MIRROR_HERB) {
        // Get the other mon in the Daycare
        Daycare *daycare = Save_Daycare_Get(SaveBlock2_get());
        struct BoxPokemon *boxmon;

        boxmon = Daycare_GetBoxMonI(daycare, 0);

        // Check if there is an empty moveslot
        u8 potentialOverrideMoveSlot;
        for (potentialOverrideMoveSlot = 0; potentialOverrideMoveSlot < 4; potentialOverrideMoveSlot++) {
            if (GetMonData(mon, MON_DATA_MOVE1 + potentialOverrideMoveSlot, NULL) == MOVE_NONE) {
                break;
            }
        }

        if (potentialOverrideMoveSlot != 4 && GetBoxMonData(boxmon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            u16 baby_egg_moves[16];
            u8 numEggMoves = LoadEggMoves(mon, baby_egg_moves);

            u32 move1 = GetBoxMonData(boxmon, MON_DATA_MOVE1, NULL);
            u32 move2 = GetBoxMonData(boxmon, MON_DATA_MOVE2, NULL);
            u32 move3 = GetBoxMonData(boxmon, MON_DATA_MOVE3, NULL);
            u32 move4 = GetBoxMonData(boxmon, MON_DATA_MOVE4, NULL);

            for (u8 i = 0; i < numEggMoves; i++) {
                if (move1 == baby_egg_moves[i] || move2 == baby_egg_moves[i] || move3 == baby_egg_moves[i] || move4 == baby_egg_moves[i]) {
                    u32 newMove = baby_egg_moves[i];
                    SetMonData(mon, MON_DATA_MOVE1 + potentialOverrideMoveSlot, &newMove);
                    u32 pp = GetMonData(mon, MON_DATA_MOVE1MAXPP + potentialOverrideMoveSlot, NULL);
                    SetMonData(mon, MON_DATA_MOVE1PP + potentialOverrideMoveSlot, &pp);
                    break;
                }
            }
        }
    }
    return FALSE;
}
