#include "config.h"
#include "debug.h"
#include "types.h"

#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/species.h"

#include "battle.h"
#include "overlay.h"
#include "pokemon.h"
#include "test_battle.h"

BOOL LONG_CALL AnyPendingSwitches(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int maxBattlers = BattleWorkClientSetMaxGet(bsys);
    for (int i = 0; i < maxBattlers; ++i) {
        if (ctx->client_status[i] & 1) {
            return TRUE;
        }
    }
    return FALSE;
}

int LONG_CALL CountReplacementMons(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, BOOL excludePartner)
{
    int count = 0;
    int partySize = BattleWorkPokeCountGet(bsys, battlerId);

    for (int i = 0; i < partySize; i++) {
        struct PartyPokemon *mon = BattleWorkPokemonParamGet(bsys, battlerId, i);
        int species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, NULL);

        if (species == SPECIES_NONE || species == SPECIES_EGG || GetMonData(mon, MON_DATA_HP, NULL) == 0) {
            continue;
        }
        if (excludePartner && ctx->sel_mons_no[BATTLER_ALLY(battlerId)] == i) {
            continue;
        }
        count++;
    }

    return count;
}

BOOL LONG_CALL EndTurn_CheckIfReplacementsCanBeSendOut(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    BOOL ret = FALSE;
    int maxBattlers = BattleWorkClientSetMaxGet(bsys);
    u32 battleType = BattleTypeGet(bsys);
    int battlerId;

    for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
        ctx->client_status[battlerId] &= ~1;
    }

    for (battlerId = 0; battlerId < maxBattlers; battlerId++) {
        if (ctx->battlemon[battlerId].hp != 0) {
            continue;
        }

        int available;
        if (((battleType & BATTLE_TYPE_DOUBLES) && !(battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)))
            || ((battleType & BATTLE_TYPE_TAG) && IsClientEnemy(bsys, battlerId) == 0)) {
            available = CountReplacementMons(bsys, ctx, battlerId, TRUE);
            if ((battlerId & 2) && (ctx->client_status[BATTLER_ALLY(battlerId)] & 1)) {
                available--;
            }
        } else {
            available = CountReplacementMons(bsys, ctx, battlerId, FALSE);
        }

        if (available <= 0) {
            ctx->no_reshuffle_client |= No2Bit(battlerId);
            ctx->sel_mons_no[battlerId] = 6;
        } else {
            ctx->client_status[battlerId] |= 1;
            ret = TRUE;
        }
    }

    if (ret) {
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;

        // replace with asking player to switch in shift mode
        if (!(battleType & (BATTLE_TYPE_FRONTIER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK))
            && BattleSystem_GetBattleStyle(bsys) == 0
            && (!(ctx->client_status[0] & 1) || !(ctx->client_status[1] & 1))
            && CanSwitchMon(bsys, ctx, 0)) {
            ctx->temp_work = (ctx->client_status[0] & 1) ? 0 : 1;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_REPLACE_FAINTED);
        } else {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, BATTLE_SUBSCRIPT_SHOW_PARTY_LIST);
        }
    }

    return ret;
}

BOOL LONG_CALL SideSharesParty(struct BattleSystem *bsys, int battler)
{
    return (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLES) && !DoesSideHave2Battlers(bsys, battler);
}

BOOL LONG_CALL CanSwitchMonConsideringPendingSwitches(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId)
{
    int partner = BattleWorkPartnerClientNoGet(bsys, battlerId);

    if (!SideSharesParty(bsys, battlerId) || !(ctx->client_status[partner] & 1)) {
        return CanSwitchMon(bsys, ctx, battlerId);
    }

    struct Party *party = BattleWorkPokePartyGet(bsys, battlerId);
    int partySize = Battle_GetClientPartySize(bsys, battlerId);
    int freeMons = 0;

    for (int i = 0; i < partySize; i++) {
        struct PartyPokemon *mon = Party_GetMonByIndex(party, i);
        if (GetMonData(mon, MON_DATA_SPECIES, NULL) && !GetMonData(mon, MON_DATA_IS_EGG, NULL) && GetMonData(mon, MON_DATA_HP, NULL)
            && i != ctx->sel_mons_no[battlerId] && i != ctx->sel_mons_no[partner]) {
            freeMons++;
        }
    }

    return freeMons >= 2;
}

BOOL BtlCmd_SwitchAndUpdateMon(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    u32 side = read_battle_script_param(ctx);

    int battlerId = 0;

    switch (side) {
    case BATTLER_CATEGORY_ATTACKER:
        battlerId = ctx->attack_client;
        break;
    case BATTLER_CATEGORY_SWITCHED_MON:
        battlerId = ctx->reshuffle_client;
        break;
    case BATTLER_CATEGORY_FORCED_OUT:
        battlerId = ctx->defence_client;
        break;
    }

    // check for a replacement after FieldConditionCheck
    ctx->moveConditionsFlags[battlerId].firstTurnOut = ctx->next_server_seq_no == CONTROLLER_COMMAND_TURN_END ? 1 : 2;
    ctx->client_status[battlerId] &= ~1;
    ctx->no_reshuffle_client &= (No2Bit(battlerId) ^ ~0);
    ctx->sel_mons_no[battlerId] = ctx->reshuffle_sel_mons_no[battlerId];
    ctx->reshuffle_sel_mons_no[battlerId] = 6;

    BattleSystem_GetBattleMon(bsys, ctx, battlerId, ctx->sel_mons_no[battlerId]);
    ov12_02256F78(bsys, ctx, battlerId, ctx->sel_mons_no[battlerId]);

    ctx->hp_temp = ctx->battlemon[1].hp;

    InitSwitchWork(bsys, ctx, battlerId);

    return FALSE;
}

int GetAutoSelectedReplacement(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx UNUSED, int battler UNUSED)
{
#ifdef DEBUG_BATTLE_SCENARIOS
    if (TestBattle_ShouldAutoSelectKOSwitch(bsys, ctx, battler)) {
        return TestBattle_FindNextLivePartySlot(bsys, ctx, battler);
    }
#endif
    return 6;
}

BOOL IsReplacementAutoSelected(struct BattleSystem *bsys, struct BattleStruct *ctx, int battler)
{
    return GetAutoSelectedReplacement(bsys, ctx, battler) != 6;
}

BOOL IsWaitingForOtherSlot(struct BattleSystem *bsys, struct BattleStruct *ctx, int battler)
{
    int otherSlot = BATTLER_ALLY(battler);
    return (battler & 2) && SideSharesParty(bsys, battler)
        && (ctx->client_status[otherSlot] & 1)
        && !IsReplacementAutoSelected(bsys, ctx, otherSlot)
        && !IsReplacementAutoSelected(bsys, ctx, battler)
        && !(ctx->server_status_flag2 & (MaskOfFlagNo(otherSlot) << BATTLE_STATUS_FAINTED_SHIFT));
}

BOOL LONG_CALL BtlCmd_ShowParty(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int promptedBattlers = 0;
    int maxBattlers = BattleWorkClientSetMaxGet(bsys);

    IncrementBattleScriptPtr(ctx, 1);

    for (int battler = 0; battler < maxBattlers; battler++) {
        if (!(ctx->client_status[battler] & 1)) {
            continue;
        }
        if (!promptedBattlers) {
            ctx->reshuffle_client = battler; // first battler that switches
        }
        promptedBattlers |= MaskOfFlagNo(battler);
        ctx->aiSwitchedPartySlot[battler] = 6; // reset ai
        if (!IsReplacementAutoSelected(bsys, ctx, battler) && !IsWaitingForOtherSlot(bsys, ctx, battler)) {
            BattleController_EmitShowMonList(bsys, ctx, battler, 1, 0, 6);
        }
    }

    for (int battler = 0; battler < maxBattlers; battler++) {
        if (BattleTypeGet(bsys) == (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK)) {
            int partner = BattleWorkPartnerClientNoGet(bsys, battler);
            if (!(promptedBattlers & MaskOfFlagNo(battler)) && !(promptedBattlers & MaskOfFlagNo(partner))) {
                promptedBattlers |= MaskOfFlagNo(battler);
                BattleController_EmitShowWaitMessage(bsys, battler);
            }
        } else if (!(promptedBattlers & MaskOfFlagNo(battler))) {
            BattleController_EmitShowWaitMessage(bsys, battler);
        }
    }

    return FALSE;
}

BOOL LONG_CALL BtlCmd_WaitMonSelection(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    int maxBattlers = BattleWorkClientSetMaxGet(bsys);
    int pending = 0; // battlers that switch
    int chosen = 0; // already picked
    int autoSelected = 0;
    int askedThisTime = 0;

    for (int battler = 0; battler < maxBattlers; battler++) {
        if (!(ctx->client_status[battler] & 1)) {
            continue;
        }
        pending |= MaskOfFlagNo(battler);

        int autoSlot = GetAutoSelectedReplacement(bsys, ctx, battler);
        if (autoSlot != 6) {
            ctx->reshuffle_sel_mons_no[battler] = autoSlot;
            autoSelected |= MaskOfFlagNo(battler);
            chosen |= MaskOfFlagNo(battler);
            continue;
        }

        if (IsWaitingForOtherSlot(bsys, ctx, battler) || (askedThisTime & MaskOfFlagNo(battler))) {
            continue;
        }

        if (BattleBuffer_GetNext(ctx, battler)) {
            ctx->reshuffle_sel_mons_no[battler] = ctx->server_buffer[battler][0] - 1;
            chosen |= MaskOfFlagNo(battler);
            if (!(ctx->server_status_flag2 & (MaskOfFlagNo(battler) << BATTLE_STATUS_FAINTED_SHIFT))) {
                ctx->server_status_flag2 |= MaskOfFlagNo(battler) << BATTLE_STATUS_FAINTED_SHIFT;
                int rightSlot = BATTLER_ALLY(battler);
                if (!(battler & 2) && SideSharesParty(bsys, battler) && (ctx->client_status[rightSlot] & 1)
                    && !IsReplacementAutoSelected(bsys, ctx, rightSlot)) {
                    ctx->aiSwitchedPartySlot[battler] = ctx->reshuffle_sel_mons_no[battler];
                    BattleController_EmitShowMonList(bsys, ctx, rightSlot, 1, 0, ctx->reshuffle_sel_mons_no[battler]);
                    askedThisTime |= MaskOfFlagNo(rightSlot);
                } else {
                    BattleController_EmitShowWaitMessage(bsys, battler);
                }
            }
        }
    }

    if (chosen == pending) {
        for (int battler = 0; battler < maxBattlers; battler++) {
            if (!(pending & MaskOfFlagNo(battler))) {
                continue;
            }
            if (autoSelected & MaskOfFlagNo(battler)) {
                ov12_0223BDDC(bsys, battler, ctx->reshuffle_sel_mons_no[battler] + 1);
            } else if (BattleBuffer_GetNext(ctx, battler)) {
                ov12_0223BDDC(bsys, battler, ctx->server_buffer[battler][0]);
                ctx->aiSwitchedPartySlot[battler] = 6;
            }
        }
        ctx->server_status_flag2 &= 0xf0ffffff;
        IncrementBattleScriptPtr(ctx, 1);
    }

    ctx->battle_progress_flag = 1;

    return FALSE;
}
