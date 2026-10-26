#include "debug.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/weather_numbers.h"

#include "battle.h"
#include "overlay.h"
#include "pokemon.h"

// this file's function declarations
u32 ServerWazaHitAfterCheckAct(void *bw UNUSED, struct BattleStruct *sp);
BOOL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no);
BOOL CheckItemByThief(u16 item);

/**
 *  @brief handle item effects for an attacker's items on move hit.  loads the subscript and returns to parent
 *         this function is for an attacker's held item effect triggering after hitting with a move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return TRUE if a battle subscript has been loaded and should be run; FALSE otherwise
 */
u32 LONG_CALL ServerWazaHitAfterCheckAct(void *bw UNUSED, struct BattleStruct *sp)
{
    // TODO confirm?
    if (CheckIfAnyoneShouldFaint(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

// thanks to Lhea for this function

/**
 *  @brief handle item effects for a defender's items on move hit.  loads into *seq_no
 *         this function is for the defender's held item effect triggering after hitting with a move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param seq_no subscript to load if TRUE is returned
 *  @return TRUE if there's an item effect to run in *seq_no; FALSE otherwise
 */
BOOL LONG_CALL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no)
{
    u32 ovyId, offset;
    BOOL ret;
    // clang-format off
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp, int *seq_no);
    // clang-format on

    ovyId = OVERLAY_CHECKDEFENDERITEMEFFECTONHIT;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp, int *seq_no))(offset);
    ret = internalFunc(bw, sp, seq_no);
    UnloadOverlayByID(ovyId);

    return ret;
}

/**
 *  @brief check if the item can be stolen by thief or not
 *
 *  @param item item index
 *  @return TRUE if the item can not be stolen; FALSE otherwise
 */
BOOL CheckItemByThief(u16 item)
{
    if (item == ITEM_GRISEOUS_ORB || IS_ITEM_MEGA_STONE(item)) {
        return TRUE;
    }
    return FALSE;
}

BOOL LONG_CALL GetHeldItemStatusRecoverySubscript(struct BattleStruct *ctx, int battlerId, int *seq_no)
{
    int itemHeldEffect = HeldItemHoldEffectGet(ctx, battlerId);
    *seq_no = 0;

    switch (itemHeldEffect) {
    case HOLD_EFFECT_PRZ_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_PARALYSIS) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_PRZ_RESTORE;
        }
        break;
    case HOLD_EFFECT_SLP_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_SLEEP) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_SLP_RESTORE;
        }
        break;
    case HOLD_EFFECT_PSN_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_POISON_ALL) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_PSN_RESTORE;
        }
        break;
    case HOLD_EFFECT_BRN_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_BURN) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_BRN_RESTORE;
        }
        break;
    case HOLD_EFFECT_FRZ_RESTORE:
        if (ctx->battlemon[battlerId].condition & STATUS_FREEZE) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_FRZ_RESTORE;
        }
        break;
    case HOLD_EFFECT_CONFUSE_RESTORE:
        if (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION) {
            *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_CNF_RESTORE;
        }
        break;
    case HOLD_EFFECT_STATUS_RESTORE:
        if ((ctx->battlemon[battlerId].condition & STATUS_ALL) || (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION)) {
            if (ctx->battlemon[battlerId].condition & STATUS_PARALYSIS) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_PRZ_RESTORE;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_SLEEP) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_SLP_RESTORE;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_POISON_ALL) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_PSN_RESTORE;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_BURN) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_BRN_RESTORE;
            }
            if (ctx->battlemon[battlerId].condition & STATUS_FREEZE) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_FRZ_RESTORE;
            }
            if (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_CNF_RESTORE;
            }
            if ((ctx->battlemon[battlerId].condition & STATUS_ALL) && (ctx->battlemon[battlerId].condition2 & STATUS2_CONFUSION)) {
                *seq_no = BATTLE_SUBSCRIPT_HELD_ITEM_MULTI_RESTORE;
            }
        }
        break;
    default:
        break;
    }

    return *seq_no != 0;
}

/**
 *  @brief get the HELD_ITEM_USE_* category of a hold effect handled by GetHeldItemUseSubscript
 *
 *  @param itemHeldEffect HOLD_EFFECT_* of the held item
 *  @return HELD_ITEM_USE_* flag of the item; HELD_ITEM_USE_ANY if the item is in no category and only activates without a filter
 */
static u32 GetHeldItemUseCategory(int itemHeldEffect)
{
    switch (itemHeldEffect) {
    case HOLD_EFFECT_HP_RESTORE: // oran berry, berry juice
    case HOLD_EFFECT_HP_PCT_RESTORE: // sitrus berry
    case HOLD_EFFECT_HP_RESTORE_SPICY: // figy berry
    case HOLD_EFFECT_HP_RESTORE_DRY: // wiki berry
    case HOLD_EFFECT_HP_RESTORE_SWEET: // mago berry
    case HOLD_EFFECT_HP_RESTORE_BITTER: // aguav berry
    case HOLD_EFFECT_HP_RESTORE_SOUR: // iapapa berry
        return HELD_ITEM_USE_CHANGE_HP;
    case HOLD_EFFECT_PP_RESTORE: // leppa berry
        return HELD_ITEM_USE_CHANGE_PP;
    case HOLD_EFFECT_PRZ_RESTORE:
    case HOLD_EFFECT_SLP_RESTORE:
    case HOLD_EFFECT_PSN_RESTORE:
    case HOLD_EFFECT_BRN_RESTORE:
    case HOLD_EFFECT_FRZ_RESTORE:
    case HOLD_EFFECT_CONFUSE_RESTORE:
    case HOLD_EFFECT_STATUS_RESTORE:
    case HOLD_EFFECT_HEAL_MENTAL_CONDITIONS: // Mental Herb
        return HELD_ITEM_USE_REMOVE_CONDITION;
    case HOLD_EFFECT_PINCH_ATK_UP: // liechi berry
    case HOLD_EFFECT_PINCH_DEF_UP: // ganlon berry
    case HOLD_EFFECT_PINCH_SPEED_UP: // salac berry
    case HOLD_EFFECT_PINCH_SPATK_UP: // petaya berry
    case HOLD_EFFECT_PINCH_SPDEF_UP: // apicot berry
    case HOLD_EFFECT_PINCH_CRITRATE_UP: // lansat berry
    case HOLD_EFFECT_PINCH_RANDOM_UP: // starf berry
    case HOLD_EFFECT_PINCH_ACC_UP: // micle berry
        return HELD_ITEM_USE_PINCH_BERRY;
    default:
        return HELD_ITEM_USE_ANY;
    }
}

BOOL LONG_CALL GetHeldItemUseSubscript(void *bw, struct BattleStruct *ctx, int battlerId, int *seq_no, u32 filter)
{
    BOOL ret = FALSE;
    int script = 0;
    int itemHeldEffect;
    int boost;

    *seq_no = 0;
    if (battlerId == BATTLER_NONE) {
        return FALSE;
    }

    itemHeldEffect = HeldItemHoldEffectGet(ctx, battlerId);
    if (filter != HELD_ITEM_USE_ANY && !(filter & GetHeldItemUseCategory(itemHeldEffect))) {
        return FALSE;
    }
    boost = HeldItemAtkGet(ctx, battlerId, ATK_CHECK_NORMAL);
    BOOL hpLowerThan50 = (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / 2);

    if (ctx->battlemon[battlerId].hp) {
        switch (itemHeldEffect) {
        case HOLD_EFFECT_HP_RESTORE: // oran berry, berry juice
            if (hpLowerThan50) {
                ctx->hp_calc_work = boost;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_PCT_RESTORE: // sitrus berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp * boost, 100);
                script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PP_RESTORE: // leppa berry
        {
            int index;
            for (index = 0; index < CLIENT_MAX; index++) {
                if (ctx->battlemon[battlerId].move[index] && !ctx->battlemon[battlerId].pp[index]) {
                    break;
                }
            }
            if (index != CLIENT_MAX) {
                BattleMon_AddVar(&ctx->battlemon[battlerId], MON_DATA_MOVE1PP + index, boost);
                CopyBattleMonToPartyMon(bw, ctx, battlerId);
                ctx->waza_work = ctx->battlemon[battlerId].move[index];
                script = BATTLE_SUBSCRIPT_HELD_ITEM_PP_RESTORE;
                ret = TRUE;
            }
            break;
        }
        case HOLD_EFFECT_PRZ_RESTORE:
        case HOLD_EFFECT_SLP_RESTORE:
        case HOLD_EFFECT_PSN_RESTORE:
        case HOLD_EFFECT_BRN_RESTORE:
        case HOLD_EFFECT_FRZ_RESTORE:
        case HOLD_EFFECT_CONFUSE_RESTORE:
        case HOLD_EFFECT_STATUS_RESTORE:
            ret = GetHeldItemStatusRecoverySubscript(ctx, battlerId, &script);
            break;
        case HOLD_EFFECT_HP_RESTORE_SPICY: // figy berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 0;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SPICY) == -1) {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
                } else {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_DRY: // wiki berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 1;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_DRY) == -1) {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
                } else {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_SWEET: // mago berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 2;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SWEET) == -1) {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
                } else {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_BITTER: // aguav berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 3;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_BITTER) == -1) {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
                } else {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_HP_RESTORE_SOUR: // iapapa berry
            if (hpLowerThan50) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, boost);
                ctx->msg_work = 4;
                if (GetFlavorPreferenceFromPID(ctx->battlemon[battlerId].personal_rnd, FLAVOR_SOUR) == -1) {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
                } else {
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
                }
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_ATK_UP: // liechi berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[STAT_ATTACK] < 12) {
                ctx->msg_work = STAT_ATTACK;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_DEF_UP: // ganlon berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[STAT_DEFENSE] < 12) {
                ctx->msg_work = STAT_DEFENSE;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPEED_UP: // salac berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[STAT_SPEED] < 12) {
                ctx->msg_work = STAT_SPEED;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPATK_UP: // petaya berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[STAT_SPECIAL_ATTACK] < 12) {
                ctx->msg_work = STAT_SPECIAL_ATTACK;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_SPDEF_UP: // apicot berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && ctx->battlemon[battlerId].states[STAT_SPECIAL_DEFENSE] < 12) {
                ctx->msg_work = STAT_SPECIAL_DEFENSE;
                script = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_CRITRATE_UP: // lansat berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost && !(ctx->battlemon[battlerId].condition2 & STATUS2_FOCUS_ENERGY)) {
                script = BATTLE_SUBSCRIPT_HELD_ITEM_SHARPLY_RAISE_STAT;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_RANDOM_UP: // starf berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            if (ctx->battlemon[battlerId].hp <= (s32)(ctx->battlemon[battlerId].maxhp) / boost) {
                int stat;
                for (stat = 0; stat < 5; stat++) {
                    if (ctx->battlemon[battlerId].states[1 + stat] < BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE) {
                        break;
                    }
                }
                if (stat != 5) {
                    do {
                        stat = BattleRand(bw) % 5;
                    } while (ctx->battlemon[battlerId].states[1 + stat] == BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE);
                    ctx->msg_work = stat + 1;
                    script = BATTLE_SUBSCRIPT_HELD_ITEM_SHARPLY_RAISE_STAT;
                    ret = TRUE;
                }
            }
            break;
        case HOLD_EFFECT_HEAL_MENTAL_CONDITIONS: // Mental Herb
            if (ctx->battlemon[battlerId].condition2 & STATUS2_ATTRACT
                || ctx->battlemon[battlerId].condition2 & STATUS2_TORMENT
                || ctx->battlemon[battlerId].moveeffect.tauntTurns
                || ctx->battlemon[battlerId].moveeffect.encoredTurns
                || ctx->battlemon[battlerId].moveeffect.healBlockTurns
                || ctx->battlemon[battlerId].moveeffect.disabledTurns) {
                ctx->msg_work = 6; // infatuation status name for the cure message, same as GetFlingOrPluckItemEffect
                script = BATTLE_SUBSCRIPT_HELD_ITEM_HEAL_MENTAL_CONDITIONS;
                ret = TRUE;
            }
            break;
        case HOLD_EFFECT_PINCH_ACC_UP: // micle berry
            if (GetBattlerAbility(ctx, battlerId) == ABILITY_GLUTTONY) {
                boost /= 2;
            }
            // a Micle Berry obtained while the boost of the last one is still pending is only used after the holder's next action
            if (ctx->battlemon[battlerId].hp <= ((s32)(ctx->battlemon[battlerId].maxhp) / boost)
                && !ctx->battlemon[battlerId].moveeffect.boostedAccuracy) {
                script = BATTLE_SUBSCRIPT_HELD_ITEM_TEMP_ACC_UP;
                ret = TRUE;
            }
            break;
        default:
            break;
        }
    }
    *seq_no = script;
    return ret;
}

BOOL LONG_CALL TryUseHeldItem(void *bw, struct BattleStruct *ctx, int battlerId, u32 filter)
{
    int script = 0;

    if (GetHeldItemUseSubscript(bw, ctx, battlerId, &script, filter) == TRUE) {
        ctx->battlerIdTemp = battlerId;
        ctx->item_work = GetBattleMonItem(ctx, battlerId);
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, script);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;

        if (IS_ITEM_BERRY(ctx->item_work)) {
            ctx->onceOnlyMoveConditionFlags[SanitizeClientForTeamAccess(bw, battlerId)][ctx->sel_mons_no[battlerId]].berryEatenAndCanBelch = TRUE;
        }
        return TRUE;
    }
    return FALSE;
}

BOOL LONG_CALL TryUseHeldItem_Vanilla(void *bw, struct BattleStruct *ctx, int battlerId)
{
    return TryUseHeldItem(bw, ctx, battlerId, HELD_ITEM_USE_ANY);
}

void GetFlingOrPluckItemEffect(struct BattleSystem *bsys, struct BattleStruct *sp, int target, int effect, int mod)
{
    sp->flingScript = 0;
    sp->flingData = 0;

    switch (effect) {
    case STEAL_EFFECT_RESTORE_HP:
    case STEAL_EFFECT_RESTORE_HP_PERCENT:
    case STEAL_EFFECT_RESTORE_SPICY:
    case STEAL_EFFECT_RESTORE_DRY:
    case STEAL_EFFECT_RESTORE_SWEET:
    case STEAL_EFFECT_RESTORE_BITTER:
    case STEAL_EFFECT_RESTORE_SOUR:
        if (sp->battlemon[target].hp == (s32)sp->battlemon[target].maxhp) {
            return;
        }
        break;
    default:
        break;
    }

    switch (effect) {
    case STEAL_EFFECT_RESTORE_HP: // Oran Berry
        sp->flingData = mod;
        sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        break;
    case STEAL_EFFECT_RESTORE_HP_PERCENT: // Sitrus Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp * mod, 100);
        sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        break;
    case STEAL_EFFECT_CURE_PARALYSIS: // Cheri Berry
        if (sp->battlemon[target].condition & STATUS_PARALYSIS) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_PRZ_RESTORE;
        }
        break;
    case STEAL_EFFECT_CURE_SLEEP: // Chesto Berry
        if (sp->battlemon[target].condition & STATUS_SLEEP) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_SLP_RESTORE;
        }
        break;
    case STEAL_EFFECT_CURE_POISON: // Pecha Berry
        if (sp->battlemon[target].condition & STATUS_POISON_ALL) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_PSN_RESTORE;
        }
        break;
    case STEAL_EFFECT_CURE_BURN: // Rawst Berry
        if (sp->battlemon[target].condition & STATUS_BURN) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_BRN_RESTORE;
        }
        break;
    case STEAL_EFFECT_CURE_FREEZE: // Aspear Berry
        if (sp->battlemon[target].condition & STATUS_FREEZE) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_FRZ_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_PP: // Leppa Berry
    {
        int index;
        int missingPP = 0;
        // Gen 5+ restored first missing PP
        for (index = 0; index < 4; index++) { // 4 == MAX_MON_MOVES
            if (sp->battlemon[target].move[index]) {
                missingPP = GetMoveMaxPP(sp->battlemon[target].move[index], sp->battlemon[target].pp_count[index]) - sp->battlemon[target].pp[index];
                if (missingPP > 0) {
                    break;
                }
            }
        }
        if (index < 4) {
            if (mod > missingPP) {
                mod = missingPP;
            }
            sp->battlemon[target].pp[index] += mod;
            CopyBattleMonToPartyMon(bsys, sp, target);
            sp->waza_work = sp->battlemon[target].move[index];
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_PP_RESTORE;
        }
        break;
    }
    case STEAL_EFFECT_CURE_CONFUSION: // Persim Berry
        if (sp->battlemon[target].condition2 & STATUS2_CONFUSION) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_CNF_RESTORE;
        }
        break;
    case STEAL_EFFECT_CURE_ALL: // Lum Berry
        if ((sp->battlemon[target].condition & STATUS_ALL) || (sp->battlemon[target].condition2 & STATUS2_CONFUSION)) {
            if (sp->battlemon[target].condition & STATUS_PARALYSIS) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_PRZ_RESTORE;
            }
            if (sp->battlemon[target].condition & STATUS_SLEEP) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_SLP_RESTORE;
            }
            if (sp->battlemon[target].condition & STATUS_POISON_ALL) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_PSN_RESTORE;
            }
            if (sp->battlemon[target].condition & STATUS_BURN) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_BRN_RESTORE;
            }
            if (sp->battlemon[target].condition & STATUS_FREEZE) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_FRZ_RESTORE;
            }
            if (sp->battlemon[target].condition2 & STATUS2_CONFUSION) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_CNF_RESTORE;
            }
            if ((sp->battlemon[target].condition & STATUS_ALL) && (sp->battlemon[target].condition2 & STATUS2_CONFUSION)) {
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_MULTI_RESTORE;
            }
        }
        break;
    case STEAL_EFFECT_RESTORE_SPICY: // Figy Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp, mod);
        sp->msg_work = FLAVOR_SPICY;
        if (GetFlavorPreferenceFromPID(sp->battlemon[target].personal_rnd, FLAVOR_SPICY) == -1) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
        } else {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_DRY: // Wiki Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp, mod);
        sp->msg_work = FLAVOR_DRY;
        if (GetFlavorPreferenceFromPID(sp->battlemon[target].personal_rnd, FLAVOR_DRY) == -1) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
        } else {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_SWEET: // Mago Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp, mod);
        sp->msg_work = FLAVOR_SWEET;
        if (GetFlavorPreferenceFromPID(sp->battlemon[target].personal_rnd, FLAVOR_SWEET) == -1) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
        } else {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_BITTER: // Aguav Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp, mod);
        sp->msg_work = FLAVOR_BITTER;
        if (GetFlavorPreferenceFromPID(sp->battlemon[target].personal_rnd, FLAVOR_BITTER) == -1) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
        } else {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESTORE_SOUR: // Iapapa Berry
        sp->flingData = BattleDamageDivide(sp->battlemon[target].maxhp, mod);
        sp->msg_work = FLAVOR_SOUR;
        if (GetFlavorPreferenceFromPID(sp->battlemon[target].personal_rnd, FLAVOR_SOUR) == -1) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_DISLIKE_FLAVOR;
        } else {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HP_RESTORE;
        }
        break;
    case STEAL_EFFECT_RESET_STATS: // White Herb
    {
        int stat;
        for (stat = 0; stat < 8; stat++) {
            if (sp->battlemon[target].states[stat] < 6) {
                sp->battlemon[target].states[stat] = 6;
                sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_STATDOWN_RESTORE;
            }
        }
    } break;
    case STEAL_EFFECT_CURE_MENTAL_CONDITIONS: // Mental Herb
        if (sp->battlemon[target].condition2 & STATUS2_ATTRACT
            || sp->battlemon[target].condition2 & STATUS2_TORMENT
            || sp->battlemon[target].moveeffect.tauntTurns
            || sp->battlemon[target].moveeffect.encoredTurns
            || sp->battlemon[target].moveeffect.healBlockTurns
            || sp->battlemon[target].moveeffect.disabledTurns) {
            sp->msg_work = 6; // TODO: Check if this msg_work should have an infatuate const.
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_HEAL_MENTAL_CONDITIONS;
        }
        break;
    case STEAL_EFFECT_FLINCH: // King's Rock, Razor Fang
        sp->state_client = target;
        sp->addeffect_type = SIDE_EFFECT_TYPE_INDIRECT;
        sp->flingScript = BATTLE_SUBSCRIPT_FLINCH_MON;
        break;
    case STEAL_EFFECT_PARALYZE: // Light Ball
        sp->state_client = target;
        sp->addeffect_type = SIDE_EFFECT_TYPE_INDIRECT;
        sp->flingScript = BATTLE_SUBSCRIPT_PARALYZE;
        break;
    case STEAL_EFFECT_POISON: // Poison Barb
        sp->state_client = target;
        sp->addeffect_type = SIDE_EFFECT_TYPE_INDIRECT;
        sp->flingScript = BATTLE_SUBSCRIPT_POISON;
        break;
    case STEAL_EFFECT_BAD_POISON: // Toxic Orb
        sp->state_client = target;
        sp->addeffect_type = SIDE_EFFECT_TYPE_INDIRECT;
        sp->flingScript = BATTLE_SUBSCRIPT_BADLY_POISON;
        break;
    case STEAL_EFFECT_BURN: // Flame Orb
        sp->state_client = target;
        sp->addeffect_type = SIDE_EFFECT_TYPE_INDIRECT;
        sp->flingScript = BATTLE_SUBSCRIPT_BURN;
        break;
    case STEAL_EFFECT_ATK_UP: // Liechi Berry
        if (sp->battlemon[target].states[STAT_ATTACK] < 12) {
            sp->msg_work = STAT_ATTACK;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
        }
        break;
    case STEAL_EFFECT_DEF_UP: // Ganlon Berry, Kee Berry
        if (sp->battlemon[target].states[STAT_DEFENSE] < 12) {
            sp->msg_work = STAT_DEFENSE;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
        }
        break;
    case STEAL_EFFECT_SPEED_UP: // Salac Berry
        if (sp->battlemon[target].states[STAT_SPEED] < 12) {
            sp->msg_work = STAT_SPEED;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
        }
        break;
    case STEAL_EFFECT_SPATK_UP: // Petaya Berry
        if (sp->battlemon[target].states[STAT_SPECIAL_ATTACK] < 12) {
            sp->msg_work = STAT_SPECIAL_ATTACK;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
        }
        break;
    case STEAL_EFFECT_SPDEF_UP: // Apicot Berry, Maranga Berry
        if (sp->battlemon[target].states[STAT_SPECIAL_DEFENSE] < 12) {
            sp->msg_work = STAT_SPECIAL_DEFENSE;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_STAT;
        }
        break;
    case STEAL_EFFECT_RANDOM_UP: // Starf Berry
    {
        int stat;
        for (stat = 0; stat < 5; stat++) {
            if (sp->battlemon[target].states[1 + stat] < 12) {
                break;
            }
        }
        if (stat != 5) {
            do {
                stat = BattleRand(bsys) % 5;
            } while (sp->battlemon[target].states[1 + stat] == 12);
            sp->msg_work = stat + 1;
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_SHARPLY_RAISE_STAT;
        }
        break;
    }
    case STEAL_EFFECT_CRITRATE_UP: // Lansat Berry
        if (!(sp->battlemon[target].condition2 & STATUS2_FOCUS_ENERGY)) {
            sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_RAISE_CRIT;
        }
        break;
    case STEAL_EFFECT_ACC_UP: // Micle Berry
        sp->flingScript = BATTLE_SUBSCRIPT_HELD_ITEM_TEMP_ACC_UP;
        break;
    default:
        break;
    }
}
// TODO: ripen
BOOL LONG_CALL TryFling(struct BattleSystem *bsys, struct BattleStruct *sp, int battlerId)
{
    int item = GetHeldItemFlingEffect(sp, battlerId);
    int mod = GetHeldItemModifier(sp, battlerId, 2);

    sp->damage_power = GetHeldItemFlingPower(sp, battlerId);
    sp->flingScript = 0;
    sp->addeffect_type = 0;

    if (!sp->damage_power) {
        return FALSE;
    }

    GetFlingOrPluckItemEffect(bsys, sp, sp->defence_client, item, mod);

    if (sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO) {
        sp->flingScript = 0;
    } else {
        sp->item_work = sp->battlemon[battlerId].item;
        if (!sp->addeffect_type && sp->flingScript) {
            sp->oneSelfFlag[sp->attack_client].status_flag |= SELF_TURN_FLAG_PLUCK_BERRY;
        }
        sp->battlerIdTemp = sp->defence_client;
    }

    return TRUE;
}

// TODO: ripen
// since Pluck and Fling are basically identical we can use the fling variables here as helpers
BOOL LONG_CALL TryPluckBerry(struct BattleSystem *bsys, struct BattleStruct *sp, int battlerId)
{
    u16 item = sp->battlemon[battlerId].item;

    GetFlingOrPluckItemEffect(bsys, sp, sp->attack_client, GetItemData(item, ITEM_PARAM_PLUCK_EFFECT, 5), GetHeldItemModifier(sp, battlerId, 1));

    sp->hp_calc_work = sp->flingData;
    sp->temp_work = sp->flingScript;
    sp->item_work = item;
    sp->oneSelfFlag[sp->attack_client].status_flag |= SELF_TURN_FLAG_PLUCK_BERRY;
    sp->flingScript = 0;
    sp->flingData = 0;

    return TRUE;
}
