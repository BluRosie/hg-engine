#include "../../include/types.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/overlay.h"
#include "../../include/pokemon.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"

#ifdef DEBUG_BATTLE_SCENARIOS
#include "../../include/test_battle.h"
#endif // DEBUG_BATTLE_SCENARIOS

// function declarations
//BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no);
void ClientPokemonEncount(void *bw, struct CLIENT_PARAM *cp);
void ClientPokemonEncountAppear(void *bw, struct CLIENT_PARAM *cp);
void ClientPokemonAppear(void *bw, struct CLIENT_PARAM *cp);
int MessageParam_GetNickname(void *bw, struct BattleStruct *sp, int para);
void CT_SwitchInMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct SWITCH_MESSAGE_PARAM *smp, MESSAGE_PARAM *mp);
void CT_EncountSendOutMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct ENCOUNT_SEND_OUT_MESSAGE_PARAM *esomp, MESSAGE_PARAM *mp);
//void BattleFormChange(int client, int form_no, void* bw, struct BattleStruct *sp, bool8 SwitchAbility);
void TryRevertFormChange(struct BattleStruct *sp, void *bw, int client_no);
void BattleEndRevertFormChange(struct BattleSystem *bw);
//void ClearBattleMonFlags(struct BattleStruct *sp, int client);
//u32 GetAdjustedMoveTypeBasics(struct BattleStruct *sp, u32 move, u32 ability, u32 type);
//u32 GetAdjustedMoveType(struct BattleStruct *sp, u32 client, u32 move);

ALIGN4 struct ILLUSION_STRUCT gIllusionStruct =
{
    .illusionClient = {CLIENT_MAX, CLIENT_MAX, CLIENT_MAX, CLIENT_MAX},
    .illusionPos = {6, 6, 6, 6},
};

/**
 *  @brief type effectiveness table
 *         format is move type, defending type, and effectiveness
 *         0 is ineffective, 5 is not very effective, 20 is super effective
 *         every entry after the 0xFE entry is ignored by foresight
 */
u8 TypeEffectivenessTable[][3] =
{
    { TYPE_NORMAL, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_NORMAL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_NORMAL, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_FIGHTING, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE },
#endif

    { TYPE_FIGHTING, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIGHTING, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FLYING, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FLYING, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FLYING, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FLYING, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FLYING, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FLYING, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_POISON, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_POISON, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_POISON, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_POISON, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_POISON, TYPE_FAIRY, TYPE_MUL_SUPER_EFFECTIVE },
#endif

    { TYPE_POISON, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GROUND, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GROUND, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GROUND, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GROUND, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GROUND, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GROUND, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GROUND, TYPE_ELECTRIC, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ROCK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ROCK, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ROCK, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ROCK, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ROCK, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ROCK, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ROCK, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_BUG, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_BUG, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_BUG, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_BUG, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_BUG, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_BUG, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE },
#endif

    { TYPE_BUG, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_BUG, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_BUG, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_BUG, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GHOST, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GHOST, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GHOST, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE },
#if TYPE_EFFECTIVENESS_GEN < 6
    { TYPE_GHOST, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
#endif
    { TYPE_STEEL, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_STEEL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_STEEL, TYPE_FAIRY, TYPE_MUL_SUPER_EFFECTIVE },
#endif

    { TYPE_STEEL, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_STEEL, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_STEEL, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_STEEL, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_FAIRY, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FAIRY, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FAIRY, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FAIRY, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FAIRY, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FAIRY, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE },
#endif

    { TYPE_FIRE, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIRE, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIRE, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIRE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIRE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_FIRE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIRE, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_FIRE, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_WATER, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_WATER, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_WATER, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_WATER, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_WATER, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_WATER, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GRASS, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GRASS, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_GRASS, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_GRASS, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ELECTRIC, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ELECTRIC, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ELECTRIC, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ELECTRIC, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ELECTRIC, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_PSYCHIC, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_PSYCHIC, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_PSYCHIC, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_PSYCHIC, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ICE, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ICE, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ICE, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ICE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ICE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ICE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_ICE, TYPE_ICE, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_ICE, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_DRAGON, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },

    { TYPE_DRAGON, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_DARK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE },
    { TYPE_DARK, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE },

#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_DARK, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE },
#endif

    { TYPE_DARK, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE },
    { TYPE_DARK, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE },
#if TYPE_EFFECTIVENESS_GEN < 6
    { TYPE_DARK, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE },
#endif

// AI bugfix: move all of the immune type interactions to the end of the table so that the
// immunities properly unset the super effective move effect flag (and a lanturn with thunderbolt
// isn't switched in on a gliscor over a raichu with ice beam)
    { TYPE_POISON, TYPE_STEEL, TYPE_MUL_NO_EFFECT },
    { TYPE_GROUND, TYPE_FLYING, TYPE_MUL_NO_EFFECT },
    { TYPE_GHOST, TYPE_NORMAL, TYPE_MUL_NO_EFFECT },
    { TYPE_ELECTRIC, TYPE_GROUND, TYPE_MUL_NO_EFFECT },
    { TYPE_PSYCHIC, TYPE_DARK, TYPE_MUL_NO_EFFECT },
#if FAIRY_TYPE_IMPLEMENTED == 1
    { TYPE_DRAGON, TYPE_FAIRY, TYPE_MUL_NO_EFFECT },
#endif

    { TYPE_FORESIGHT, TYPE_FORESIGHT, TYPE_MUL_NO_EFFECT },
    { TYPE_NORMAL, TYPE_GHOST, TYPE_MUL_NO_EFFECT },
    { TYPE_FIGHTING, TYPE_GHOST, TYPE_MUL_NO_EFFECT },
    { TYPE_ENDTABLE, TYPE_ENDTABLE, 0xFF },
};

/**
 *  @brief check if a form change needs to happen.  if so, return TRUE and populate *seq_no with the subscript to run
 *
 *  @see BattleFormChange
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL LONG_CALL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ovyId, offset;
    BOOL ret;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp, int *seq_no);

    UnloadOverlayByID(6); // unload overlay 6 so this can be loaded

    ovyId = OVERLAY_BATTLEFORMCHANGECHECK;
    offset = 0x023C2400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp, int *seq_no))(offset);
    ret = internalFunc(bw, sp, seq_no);
    UnloadOverlayByID(ovyId);

    HandleLoadOverlay(6, 2); // reload 6 so things are okay

    return ret;
}

/**
 *  @brief one of a number of functions that control how a battler appears
 *         this one is for wild encounters
 *
 *  @param bw battle work structure
 *  @param cp client param structure
 */
void ClientPokemonEncount(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_ENCOUNT_PARAM *pep = (struct POKEMON_ENCOUNT_PARAM *)&cp->client_buffer[0];
    u32 side = cp->client_no, newform, newmon, newshiny;
    struct Party *party = BattleWorkPokePartyGet(bw, side);
    u32 count = party->count;

    if (
    // mon's ability is illusion
         GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), 0), MON_DATA_ABILITY, 0) == ABILITY_ILLUSION
    // illusion position is not initialized or has been initialized to the current position
     && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == 0)
    // if a side has 2 battlers, the logic can run regardless--the "last mon" is worst-case the one being sent out so nothing changes
     && ((DoesSideHave2Battlers(bw, side))
    // if the side does not have 2 battlers and the battle type is doubles, then the party count must be greater than 2
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
    // else single battles are fine to pass through here too
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0))
    {
        u16 strbuf[11];

        newmon = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_SPECIES, NULL);
        newform = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_FORM, NULL);
        newshiny = MonIsShiny(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1));

        if (newmon != pep->monsno || newform != pep->form_no)
        {
            pep->monsno = newmon;
            pep->form_no = newform;
            pep->rare = newshiny;

            gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, side)] = side;
            if (!(gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, side))))
            {
                gIllusionStruct.isSideInIllusion |= No2Bit(SanitizeClientForTeamAccess(bw, side));
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_NICKNAME, strbuf);
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), 0), MON_DATA_NICKNAME, gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, side)]);
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] = 0;

                SetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), 0), MON_DATA_NICKNAME, strbuf);
            }
        }
    }

    CT_PokemonEncountSet(bw, cp, pep);
    ClientCommandReset(cp);
}

/**
 *  @brief one of a number of functions that control how a battler appears
 *         this one is for wild encounters when the battler is sent out of its ball
 *
 *  @param bw battle work structure
 *  @param cp client param structure
 */
void ClientPokemonEncountAppear(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_APPEAR_PARAM *pap = (struct POKEMON_APPEAR_PARAM *)&cp->client_buffer[0];
    u32 side = cp->client_no, newform, newmon, newshiny;
    struct Party *party = BattleWorkPokePartyGet(bw, side);
    u32 count = party->count;

    if (
    // mon's ability is illusion
         GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_ABILITY, 0) == ABILITY_ILLUSION
    // illusion position is not initialized or has been initialized to the current position
     && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == pap->sel_mons_no)
    // if a side has 2 battlers, the logic can run regardless--the "last mon" worst-case is the one being sent out so nothing changes
     && ((DoesSideHave2Battlers(bw, side))
    // if the side does not have 2 battlers and the battle type is doubles, then the party count must be greater than 2
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
    // else single battles are fine to pass through here too
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0))
    {
        u16 strbuf[11];

        newmon = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_SPECIES, NULL);
        newform = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_FORM, NULL);
        newshiny = MonIsShiny(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1));

        if (newmon != pap->monsno || newform != pap->form_no)
        {
            pap->monsno = newmon;
            pap->form_no = newform;
            pap->rare = newshiny;

            gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, side)] = side;
            if (!(gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, side))))
            {
                gIllusionStruct.isSideInIllusion |= No2Bit(SanitizeClientForTeamAccess(bw, side));
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_NICKNAME, strbuf);
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_NICKNAME, gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, side)]);
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] = pap->sel_mons_no;

                SetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_NICKNAME, strbuf);
            }
        }
    }

    CT_PokemonEncountAppearSet(bw, cp, pap);
    ClientCommandReset(cp);
}

/**
 *  @brief one of a number of functions that control how a battler appears
 *         this one is for trainer battles
 *
 *  @param bw battle work structure
 *  @param cp client param structure
 */
void ClientPokemonAppear(void *bw, struct CLIENT_PARAM *cp)
{
    struct POKEMON_APPEAR_PARAM *pap = (struct POKEMON_APPEAR_PARAM *)&cp->client_buffer[0];
    u32 side = cp->client_no, newform, newmon, newshiny;
    struct Party *party = BattleWorkPokePartyGet(bw, side);
    u32 count = party->count;

    if (
    // mon's ability is illusion
         GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_ABILITY, 0) == ABILITY_ILLUSION
    // illusion position is not initialized or has been initialized to the current position
     && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] == pap->sel_mons_no)
    // if a side has 2 battlers, the logic can run regardless--the "last mon" is worst-case the one being sent out so nothing changes
     && ((DoesSideHave2Battlers(bw, side))
    // if the side does not have 2 battlers and the battle type is doubles, then the party count must be greater than 2
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
    // else single battles are fine to pass through here too
      || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0))
    {
        u16 strbuf[11];

        newmon = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_SPECIES, NULL);
        newform = GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_FORM, NULL);
        newshiny = MonIsShiny(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1));

        if (newmon != pap->monsno || newform != pap->form_no)
        {
            pap->monsno = newmon;
            pap->form_no = newform;
            pap->rare = newshiny;

            gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, side)] = side;
            if (!(gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, side))))
            {
                gIllusionStruct.isSideInIllusion |= No2Bit(SanitizeClientForTeamAccess(bw, side));
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), count - 1), MON_DATA_NICKNAME, strbuf);
                GetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_NICKNAME, gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, side)]);
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, side)] = pap->sel_mons_no;

                SetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, side), pap->sel_mons_no), MON_DATA_NICKNAME, strbuf);
            }
        }
    }

    CT_PokemonAppearSet(bw, cp, pap);
    ClientCommandReset(cp);
}

/**
 *  @brief buffer the nickname for the passed battler
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param para battle script param to resolve to a battler
 *  @return client passed in or'd by switch in party slot << 8
 */
int MessageParam_GetNickname(void *bw, struct BattleStruct *sp, int para)
{
    int ret;
    int client;

    client = GrabClientFromBattleScriptParam(bw, sp, para);

    ret = client;

    if (GetBattlerAbility(sp, client) == ABILITY_ILLUSION
     && (gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, client)))
     && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, client)] == client
     && gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, client)] == sp->sel_mons_no[client])
    {
        struct Party *party;
        u32 count;

        party = BattleWorkPokePartyGet(bw, client);
        count = party->count - 1;

        ret |= count << 8;
    }
    else if (para == 0x16) // switch after the attack?
    {
        ret |= sp->reshuffle_sel_mons_no[client] << 8;
    }
    else
    {
        ret |= sp->sel_mons_no[client] << 8;
    }

    return ret;
}

/**
 *  @brief create the switch in message
 *
 *  @param bw battle work structure
 *  @param cp client param structure
 *  @param smp switchin message param
 *  @param mp message param to construct
 */
void CT_SwitchInMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct SWITCH_MESSAGE_PARAM *smp, MESSAGE_PARAM *mp)
{
    if (cp->client_type & 1)
    {
        struct Party *party;
        u32 ability = 0;

        party = BattleWorkPokePartyGet(bw, cp->client_no);

        ability = GetMonData(Party_GetMonByIndex(party, smp->sel_mons_no), MON_DATA_ABILITY, NULL);

        // switch in we do not need to check for if the client is actually in an illusion
        if (ability == ABILITY_ILLUSION
         && ((DoesSideHave2Battlers(bw, cp->client_no))
          || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
          || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
         && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == smp->sel_mons_no))
        {
            smp->sel_mons_no = party->count - 1;
        }

        if ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0)
        {
            mp->msg_id = BATTLE_MSG_SWITCH_IN_ENEMY_MSG;
            mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME;
            mp->msg_para[0] = cp->client_no;
            mp->msg_para[1] = cp->client_no;
            mp->msg_para[2] = cp->client_no | (smp->sel_mons_no << 8);
        }
        else
        {
            mp->msg_id = BATTLE_MSG_SWITCH_IN_TITLELESS;
            mp->msg_tag = TAG_TRNAME_NICKNAME;
            mp->msg_para[0] = cp->client_no;
            mp->msg_para[1] = cp->client_no | (smp->sel_mons_no << 8);
        }
    }
    else
    {
        struct Party *party;
        u32 ability = 0;

        party = BattleWorkPokePartyGet(bw, cp->client_no);

        ability = GetMonData(Party_GetMonByIndex(party, smp->sel_mons_no), MON_DATA_ABILITY, NULL);
        if (ability == ABILITY_ILLUSION
         && ((DoesSideHave2Battlers(bw, cp->client_no))
          || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
          || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
         && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == smp->sel_mons_no))
        {
            smp->sel_mons_no = party->count - 1;
        }

        if (((BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE) == 0)
         && ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0))
        {
            if (smp->rate < 100)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_3;
            }
            else if (smp->rate < 325)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_4;
            }
            else if (smp->rate < 550)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_2;
            }
            else if (smp->rate < 775)
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_1;
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
            }
        }
        else
        {
            mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
        }
        mp->msg_tag = TAG_NICKNAME;
        mp->msg_para[0] = cp->client_no | (smp->sel_mons_no << 8);
    }
}

/**
 *  @brief create the send out message
 *
 *  @param bw battle work structure
 *  @param cp client param structure
 *  @param esomp encounter send out message param
 *  @param mp message param to construct
 */
void CT_EncountSendOutMessageParamMake(void *bw, struct CLIENT_PARAM *cp, struct ENCOUNT_SEND_OUT_MESSAGE_PARAM *esomp, MESSAGE_PARAM *mp)
{
    u32 fight_type;
    int client1 = 0;
    int client2 = 0;

    fight_type = BattleTypeGet(bw);

    if (cp->client_type & 1)
    {
        if (fight_type & BATTLE_TYPE_DOUBLE)
        {
            client1 = cp->client_no;
            client2 = BattleWorkPartnerClientNoGet(bw, cp->client_no);
        }
        else
        {
            client1 = cp->client_no;
            client2 = client1;
        }

        {
            struct Party *party;
            u32 ability = 0;

            party = BattleWorkPokePartyGet(bw, client1);

            ability = GetMonData(Party_GetMonByIndex(party, esomp->sel_mons_no[client1]), MON_DATA_ABILITY, NULL);
            if (ability == ABILITY_ILLUSION
             && ((DoesSideHave2Battlers(bw, cp->client_no))
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
             && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == esomp->sel_mons_no[client1]))
            {
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] = esomp->sel_mons_no[client1];
                esomp->sel_mons_no[client1] = party->count - 1;
            }
        }

        if (client1 != client2)
        {
            struct Party *party;
            u32 ability = 0;

            party = BattleWorkPokePartyGet(bw, client2);

            ability = GetMonData(Party_GetMonByIndex(party, esomp->sel_mons_no[client2]), MON_DATA_ABILITY, NULL);
            if (ability == ABILITY_ILLUSION
             && ((DoesSideHave2Battlers(bw, cp->client_no))
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
             && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == esomp->sel_mons_no[client2]))
            {
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] = esomp->sel_mons_no[client2];
                esomp->sel_mons_no[client2] = party->count - 1;
            }
        }


        if (fight_type & BATTLE_TYPE_WIRELESS)
        {
            if (fight_type & BATTLE_TYPE_BATTLE_TOWER)
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_TOWER_BATTLE_SEND_OUT;
                mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2;
                mp->msg_para[4] = client2;
                mp->msg_para[5] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_SEND_OUT_MESSAGE;
                mp->msg_tag = TAG_TRNAME_NICKNAME_TRNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2;
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_BATTLE_SEND_OUT_WIRELESS;
                mp->msg_tag = TAG_TRNAME_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SWITCH_IN_TITLELESS;
                mp->msg_tag = TAG_TRNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
        else
        {
            if ((fight_type & BATTLE_TYPE_TAG)
             || (fight_type & BATTLE_TYPE_MULTI))
            {
                mp->msg_id = BATTLE_MSG_DOUBLE_TOWER_BATTLE_SEND_OUT;
                mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2;
                mp->msg_para[4] = client2;
                mp->msg_para[5] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_ENEMY_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SWITCH_IN_ENEMY_MSG;
                mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
    }
    else
    {
        if (fight_type & BATTLE_TYPE_WIRELESS)
        {
            u8 sio_id = BattleWorkCommIDGet(bw);

            if (fight_type & BATTLE_TYPE_MULTI)
            {
                switch (BattleWorkCommStandNoGet(bw,sio_id))
                {
                case 0:
                case 3:
                    client1 = BattleWorkClientNoGet(bw, 4);
                    client2 = BattleWorkClientNoGet(bw, 2);
                    break;
                case 1:
                case 2:
                    client1 = BattleWorkClientNoGet(bw, 2);
                    client2 = BattleWorkClientNoGet(bw, 4);
                    break;
                }
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                client1 = BattleWorkClientNoGet(bw, 2);
                client2 = BattleWorkClientNoGet(bw, 4);
            }
            else
            {
                client1 = BattleWorkClientNoGet(bw, 0);
                client2 = client1;
            }
        }
        else if (fight_type & BATTLE_TYPE_MULTI)
        {
            client1 = BattleWorkPartnerClientNoGet(bw, cp->client_no);
            client2 = cp->client_no;
        }
        else if (fight_type & BATTLE_TYPE_DOUBLE)
        {
            client1 = BattleWorkClientNoGet(bw, 2);
            client2 = BattleWorkClientNoGet(bw, 4);
        }
        else
        {
            client1 = cp->client_no;
            client2 = client1;
        }

        {
            struct Party *party;
            u32 ability = 0;

            party = BattleWorkPokePartyGet(bw, client1);

            ability = GetMonData(Party_GetMonByIndex(party, esomp->sel_mons_no[client1]), MON_DATA_ABILITY, NULL);
            if (ability == ABILITY_ILLUSION
             && ((DoesSideHave2Battlers(bw, cp->client_no))
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
             && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == esomp->sel_mons_no[client1]))
            {
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] = esomp->sel_mons_no[client1];
                esomp->sel_mons_no[client1] = party->count - 1;
            }
        }

        if (client1 != client2)
        {
            struct Party *party;
            u32 ability = 0;

            party = BattleWorkPokePartyGet(bw, client2);

            ability = GetMonData(Party_GetMonByIndex(party, esomp->sel_mons_no[client2]), MON_DATA_ABILITY, NULL);
            if (ability == ABILITY_ILLUSION
             && ((DoesSideHave2Battlers(bw, cp->client_no))
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE) && party->count > 2)
              || (BattleTypeGet(bw) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)) == 0)
             && (gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == 6 || gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] == esomp->sel_mons_no[client2]))
            {
                gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, cp->client_no)] = esomp->sel_mons_no[client2];
                esomp->sel_mons_no[client2] = party->count - 1;
            }
        }

        if (fight_type & BATTLE_TYPE_WIRELESS)
        {
            if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_PLAYER_SEND_OUT_MESSAGE;
                mp->msg_tag = TAG_TRNAME_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[2] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[1] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
                mp->msg_tag = TAG_NICKNAME;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
        else
        {
            if (fight_type & BATTLE_TYPE_MULTI)
            {
                mp->msg_id = BATTLE_MSG_MULTI_BATTLE_PLAYER_SIDE_SEND_OUT;
                mp->msg_tag = TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1;
                mp->msg_para[1] = client1;
                mp->msg_para[2] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[3] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else if (fight_type & BATTLE_TYPE_DOUBLE)
            {
                mp->msg_id = BATTLE_MSG_SEND_OUT_DOUBLES;
                mp->msg_tag = TAG_NICKNAME_NICKNAME;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
                mp->msg_para[1] = client2 | (esomp->sel_mons_no[client2] << 8);
            }
            else
            {
                mp->msg_id = BATTLE_MSG_SEND_IN_MON_0;
                mp->msg_tag = TAG_NICKNAME;
                mp->msg_para[0] = client1 | (esomp->sel_mons_no[client1] << 8);
            }
        }
    }
}

/**
 *  @brief changes the form of the battler passed in.  updates all of the stats and possibly updates the ability if necessary
 *
 *  @param client battler to change form
 *  @param form_no target form id
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param SwitchAbility whether the ability should be updated from the base stats in personal
 */
void LONG_CALL BattleFormChange(int client, int form_no, void* bw, struct BattleStruct *sp, bool8 SwitchAbility)
{
    void *pp2;

    pp2 = BattleWorkPokemonParamGet(bw, client, sp->sel_mons_no[client]);
    SetMonData(pp2, MON_DATA_FORM, &form_no);

    RecalcPartyPokemonStats(pp2);
    if (SwitchAbility)
    {
        ResetPartyPokemonAbility(pp2);
        sp->battlemon[client].ability = GetMonData(pp2, MON_DATA_ABILITY, NULL);
    }


    sp->battlemon[client].attack = GetMonData(pp2, MON_DATA_ATTACK, NULL);
    sp->battlemon[client].defense = GetMonData(pp2, MON_DATA_DEFENSE, NULL);
    sp->battlemon[client].speed = GetMonData(pp2, MON_DATA_SPEED, NULL);
    sp->battlemon[client].spatk = GetMonData(pp2, MON_DATA_SPECIAL_ATTACK, NULL);
    sp->battlemon[client].spdef = GetMonData(pp2, MON_DATA_SPECIAL_DEFENSE, NULL);

    sp->battlemon[client].type1 = GetMonData(pp2, MON_DATA_TYPE_1, NULL);
    sp->battlemon[client].type2 = GetMonData(pp2, MON_DATA_TYPE_2, NULL);
    sp->battlemon[client].type3 = TYPE_TYPELESS;
    sp->moveConditionsFlags[client].soakFlag = FALSE;
    sp->moveConditionsFlags[client].magicPowderFlag = FALSE;
    sp->moveConditionsFlags[client].forestsCurseFlag = FALSE;
    sp->moveConditionsFlags[client].trickOrTreatFlag = FALSE;
    sp->moveConditionsFlags[client].burnUpFlag = FALSE;
    sp->moveConditionsFlags[client].doubleShockFlag = FALSE;
    sp->battlemon[client].ability_activated_flag = FALSE;

    // need to update weight as well
    // read s32's from a214 file 1, resets autotomize lightening
    ArchiveDataLoadOfs(&sp->battlemon[client].weight, ARC_DEX_LISTS, 1, PokeOtherFormMonsNoGet(sp->battlemon[client].species, form_no) * sizeof(s32), sizeof(s32));
}

/**
 *  @brief try to revert a battler to its base form
 *
 *  @param sp global battle structure
 *  @param bw battle work structure
 *  @param client_no battler to revert to base form
 */
void TryRevertFormChange(struct BattleStruct *sp, void *bw, int client_no)
{
    u32 species = sp->battlemon[client_no].species;
    u32 form_no = sp->battlemon[client_no].form_no;

    void *pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);

    RevertFormChange(pp, species, form_no);
}

/**
 *  @brief clean up illusion and revert battle-specific forms (megas) to their base forms
 *
 *  @param bw battle work structure
 */
void BattleEndRevertFormChange(struct BattleSystem *bw)
{
    int i, j;
    struct PartyPokemon *pp;
    u16 monsno;
    u16 form;
    u16 newItems[6] = {0, 0, 0, 0, 0, 0};

    newBS.SideMega[0] = 0;
    newBS.SideMega[1] = 0;
    newBS.SideMega[2] = 0;
    newBS.SideMega[3] = 0;
    newBS.playerWantMega = 0;
    newBS.PlayerMegaed = 0;

    newBS.CanMega = 0;
    newBS.ChangeBgFlag = 0;
    newBS.MegaIconLight = 0;

    for (i = 0; i < 2; i++)
    {
        // revert illusion
        if (gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, i))
         && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, i)] == i)
        {
            pp = BattleWorkPokemonParamGet(bw, 0, gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, i)]);
            SetMonData(pp, MON_DATA_NICKNAME, gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, i)]);
        }

        // clear the illusion structure
        gIllusionStruct.isSideInIllusion &= ~No2Bit(SanitizeClientForTeamAccess(bw, i));
        gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, i)] = CLIENT_MAX;
        gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, i)] = 6;
        for (j = 0; j < 11; j++)
            gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, i)][j] = 0;
    }

    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        pp = BattleWorkPokemonParamGet(bw, 0, i);
        monsno = GetMonData(pp, MON_DATA_SPECIES, NULL);
        form = GetMonData(pp, MON_DATA_FORM, NULL);

        RevertFormChange(pp, monsno, form);
    }

#ifdef RESTORE_ITEMS_AT_BATTLE_END
    // grab newItems array for use later
    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        newItems[i] = GetMonData(BattleWorkPokemonParamGet(bw, 0, i), MON_DATA_HELD_ITEM, NULL);
    }

    // add the items that the mons have stolen to the bag
    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        u32 battleItem = newItems[i];
        u32 originalQuantity = 0;
        u32 newQuantity = 0;

        // count up both old and new quantities of an item
        if (battleItem)
        {
            for (j = 0; j < BattleWorkPokeCountGet(bw, 0); j++)
            {
                if (battleItem == newItems[j])
                {
                    // current item is identical to an item that we've previously handled, move to the next one
                    if (i > j)
                    {
                        continue;
                    }
                    else
                    {
                        newQuantity++;
                    }
                }
            }
            for (j = 0; j < BattleWorkPokeCountGet(bw, 0); j++)
            {
                if (battleItem == newBS.itemsToRestore[j])
                {
                    originalQuantity++;
                }
            }
        } else continue;

        // if mon i has a held item that has a bigger quantity across the party than was started with, add the extra quantity to the bag
        if (newQuantity > originalQuantity && (BattleTypeGet(bw) & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_NO_EXPERIENCE)) == 0)
        {
            Bag_AddItem(bw->bag, battleItem, newQuantity - originalQuantity, 5);
        }
    }

    // restore items regardless of if it's a trainer battle--this will also overwrite items gained from trainers
    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        u32 battleItem = newBS.itemsToRestore[i];
        pp = BattleWorkPokemonParamGet(bw, 0, i);
        if (!IS_ITEM_BERRY(newBS.itemsToRestore[i]))
        {
            SetMonData(pp, MON_DATA_HELD_ITEM, &battleItem);
        }
    }

    // set to zero after the items have already been restored to maybe prevent observed byte loss
    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        newBS.itemsToRestore[i] = 0;
    }
#endif // RESTORE_ITEMS_AT_BATTLE_END

#ifdef DEBUG_BATTLE_SCENARIOS

struct TestBattleScenario *currentScenario = TestBattle_GetCurrentScenario();

while (currentScenario != NULL && TestBattle_HasMoreExpectations()) {
    // debug_printf("Has more expectations\n");
    // debug_printf("expectation: %d\n", currentScenario->expectations[currentScenario->expectationPassCount].expectationType);
    if (currentScenario->expectations[currentScenario->expectationPassCount].expectationType == EXPECTATION_OVERWORLD_FORM) {
        // debug_printf("Checking form\n");
        struct Party *party = SaveData_GetPlayerPartyPtr(SaveBlock2_get());
        struct PartyPokemon partyPokemon = party->members[currentScenario->expectations[currentScenario->expectationPassCount].battlerIDOrPartySlot];
        int expectedForm = currentScenario->expectations[currentScenario->expectationPassCount].expectationValue.formID;
        // debug_printf("expected form %d\n", expectedForm);
        if (GetMonData(&partyPokemon, MON_DATA_FORM, NULL) == expectedForm) {
            // debug_printf("Form matches expectation\n");
            currentScenario->expectationPassCount++;
        }
    } else {
        // debug_printf("Break\n");
        break;
    }
}

if (TestBattle_HasMoreExpectations()) {
    if (currentScenario->knownFailing) {
        SendValueThroughCommunicationSendHole(TEST_CASE_KNOWN_FAILING);
    } else {
        SendValueThroughCommunicationSendHole(TEST_CASE_FAIL);
    }
} else {
    SendValueThroughCommunicationSendHole(TEST_CASE_PASS);
}

#endif // DEBUG_BATTLE_SCENARIOS

}

/**
 *  @brief clear the newly introduced battle mon flags in various scenarios, i.e. switching
 *         recently expanded to include immediately when fainting
 *
 *  @param sp global battle structure
 *  @param client battler whose flags to clear
 */
void LONG_CALL ClearBattleMonFlags(struct BattleStruct *sp, int client)
{
    int i;
    // code from aero's pr
    sp->battlemon[client].slow_start_flag = 0;
    sp->battlemon[client].slow_start_end_flag = 0;

    sp->battlemon[client].sheer_force_flag = 0;
    sp->battlemon[client].imposter_flag = 0;
    sp->battlemon[client].critical_hits = 0;
    sp->battlemon[client].air_balloon_flag = 0;
    sp->battlemon[client].potentially_affected_by_psychic_terrain_move_used_flag = 0;
    sp->battlemon[client].ability_activated_flag = 0;
    sp->battlemon[client].tera_type = 0;
    sp->battlemon[client].is_currently_terastallized = 0;
    sp->battlemon[client].is_currently_dynamaxed = 0;
    sp->battlemon[client].has_dynamaxed_before = 0;
    sp->battlemon[client].type3 = TYPE_TYPELESS;
    sp->moveConditionsFlags[client].soakFlag = FALSE;
    sp->moveConditionsFlags[client].magicPowderFlag = FALSE;
    sp->moveConditionsFlags[client].forestsCurseFlag = FALSE;
    sp->moveConditionsFlags[client].trickOrTreatFlag = FALSE;
    sp->moveConditionsFlags[client].burnUpFlag = FALSE;
    sp->moveConditionsFlags[client].doubleShockFlag = FALSE;
    sp->oneTurnFlag[client].parental_bond_flag = 0;
    sp->oneTurnFlag[client].parental_bond_is_active = 0;
    sp->moveConditionsFlags[client].endTurnMoveEffectActivated = 0;
    sp->moveConditionsFlags[client].moveFailureThisTurn = 0;
    sp->moveConditionsFlags[client].moveFailureLastTurn = 0;

    sp->log_hail_for_ice_face &= ~(1 << client); // unset log_hail_for_ice_face for client
    sp->binding_turns[client] = 0;
    sp->protectSuccessTurns[client] = 0;

    if (gBattleSystem != NULL)
    {
        int maxBattlers = BattleWorkClientSetMaxGet(gBattleSystem);
        for (i = 0; i < maxBattlers; i++) // will be run multiple times per client but whatever
        {
            if (sp->battlemon[i].moveeffect.battlerIdBinding == client)
            {
                sp->binding_turns[i] = 0;
            }
        }
    }

    // TODO: set forms when loading them into the party instead when sending out
    // Xerneas should be in Active Mode when in battle
    if (sp->battlemon[client].species == SPECIES_XERNEAS) {
        sp->battlemon[client].form_no = 1;
    }
}

/**
 *  @brief moves that soundproof blocks
 */
u16 SoundProofMovesList[] = {
    MOVE_ALLURING_VOICE,
    MOVE_BOOMBURST,
    MOVE_BUG_BUZZ,
    MOVE_CHATTER,
    MOVE_CLANGING_SCALES,
    MOVE_CLANGOROUS_SOUL,
    MOVE_CLANGOROUS_SOULBLAZE,
    MOVE_CONFIDE,
    MOVE_DISARMING_VOICE,
    MOVE_ECHOED_VOICE,
    MOVE_EERIE_SPELL,
    MOVE_GRASS_WHISTLE,
    MOVE_GROWL,
    MOVE_HEAL_BELL,
    MOVE_HOWL,
    MOVE_HYPER_VOICE,
    MOVE_METAL_SOUND,
    MOVE_NOBLE_ROAR,
    MOVE_OVERDRIVE,
    MOVE_PARTING_SHOT,
    MOVE_PERISH_SONG,
    MOVE_PSYCHIC_NOISE,
    MOVE_RELIC_SONG,
    MOVE_ROAR,
    MOVE_ROUND,
    MOVE_SCREECH,
    //MOVE_SHADOW_PANIC,
    MOVE_SING,
    MOVE_SNARL,
    MOVE_SNORE,
    MOVE_SPARKLING_ARIA,
    MOVE_SUPERSONIC,
    MOVE_TORCH_SONG,
    MOVE_UPROAR
};

/**
 *  @brief get the adjusted move type accounting for normalize without relying on a client
 *
 *  @param sp global battle structure
 *  @param move index of the move to grab type for
 *  @param ability index of the ability to account for
 *  @param type if relevant, the type that is already set to overwrite the base move type
 */
u32 LONG_CALL GetAdjustedMoveTypeBasics(struct BattleStruct *sp, u32 move, u32 ability, u32 type)
{
    u32 typeLocal;

    if (ability == ABILITY_NORMALIZE)
    {
        typeLocal = TYPE_NORMAL;
    }
    else if (sp->moveTbl[move].type == TYPE_NORMAL && MoveIsAffectedByNormalizeVariants(sp->current_move_index))
    {
        if (ability == ABILITY_PIXILATE)
        {
            typeLocal = TYPE_FAIRY;
        }
        else if (ability == ABILITY_REFRIGERATE)
        {
            typeLocal = TYPE_ICE;
        }
        else if (ability == ABILITY_AERILATE)
        {
            typeLocal = TYPE_FLYING;
        }
        else if (ability == ABILITY_GALVANIZE)
        {
            typeLocal = TYPE_ELECTRIC;
        }
        else // needs to be for sure initialized
        {
            typeLocal = TYPE_NORMAL;
        }
    }
    else if (type)
    {
        typeLocal = type;
    }
    else
    {
        typeLocal = sp->moveTbl[move].type;
    }

    // So all of that happens, but we still need to handle Liquid Voice in a way that lets the type != 0 happen and that the type from the move table is grabbed.
    if (ability == ABILITY_LIQUID_VOICE && IsMoveSoundBased(sp->current_move_index))
    {
        typeLocal = TYPE_WATER;
    }

    // Ion Deluge's effect is applied after all type-modifying abilities have activated.
    if (typeLocal == TYPE_NORMAL && (sp->field_condition & FIELD_STATUS_ION_DELUGE) == FIELD_STATUS_ION_DELUGE)
    {
        typeLocal = TYPE_ELECTRIC;
    }

    return typeLocal;
}

/**
 *  @brief get the adjusted move type accounting for normalize and friends
 *
 *  @see GetAdjustedMoveTypeBasics
 *  @param sp global battle structure
 *  @param client battler to read data from
 *  @param move index of the move to grab type for
 */
u32 LONG_CALL GetAdjustedMoveType(struct BattleStruct *sp, u32 client, u32 move)
{
    return GetAdjustedMoveTypeBasics(sp, move, GetBattlerAbility(sp, client), GetDynamicMoveType(gBattleSystem, sp, client, move));
}

/**
 *  @brief check if a move is a sound-based move
 *
 *  @param move move index to check for sound property
 *  @return TRUE if is a sound move; FALSE otherwise
 */
BOOL LONG_CALL IsMoveSoundBased(u32 move)
{
    return IsElementInArray(SoundProofMovesList, (u16 *)(&move), NELEMS(SoundProofMovesList), sizeof(SoundProofMovesList[0]));
}


struct PartyPokemon *TargetSelectGrabIllusionPartyPokemon(void *bw, u32 client, u32 pos)
{
    struct PartyPokemon *pp;

    if (gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, client))
     && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, client)] == client) {
        pp = BattleWorkPokemonParamGet(bw, client, BattleWorkPokePartyGet(bw, client)->count - 1);
    } else {
        pp = BattleWorkPokemonParamGet(bw, client, pos);
    }
    return pp;
}


/**
 *  @brief dumbs client parameter down into its team in proper scenarios
 *
 *  @param bw battle work structure
 *  @param client client to sanitize
 *  @return team of client
 */
u32 LONG_CALL SanitizeClientForTeamAccess(void *bw, u32 client)
{
    if (DoesSideHave2Battlers(bw, client))
    {
        return client;
    }
    else
    {
        return client & 1;
    }
}


/**
 *  @brief checks if the client's side has 2 battlers
 *
 *  @param bw battle work structure
 *  @param client client whose side to check for 2 battlers
 *  @return TRUE if the client's side has 2 battlers
 */
BOOL LONG_CALL DoesSideHave2Battlers(void *bw, u32 client)
{
    if ((BattleTypeGet(bw) & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI)) && (BattleWork_GetTrainerIndex(bw, client) != BattleWork_GetTrainerIndex(bw, BATTLER_ALLY(client))))
    {
        return TRUE;
    }
    return FALSE;
}

BOOL LONG_CALL ClientBelongsToPlayer(struct BattleSystem *bsys, int client) {
    return BattleWork_GetTrainerIndex(bsys, client) == 0;
}

BOOL LONG_CALL IsMonValidAndHealthy(struct PartyPokemon *mon) {
    return (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
        GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
        GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG &&
        GetMonData(mon, MON_DATA_STATUS, 0) == 0);
}
