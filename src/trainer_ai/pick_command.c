#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *bsys, struct BattleStruct *ctx, int attacker);
int BattleAI_PostKOSwitchIn(struct BattleSystem *battleSystem, int battler);
BOOL TrainerAI_ShouldUseItem(struct BattleSystem *battleSystem, int battler);

BOOL AI_PerishSongKO(struct BattleStruct *ctx, int battler);
BOOL AI_CannotDamageWonderGuard(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler);
BOOL AI_OnlyIneffectiveMoves(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler);
BOOL AI_HasAbsorbAbilityInParty(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler);
BOOL AI_IsAsleepWithNaturalCure(struct BattleSystem *battleSystem,struct BattleStruct *ctx, int battler);
BOOL AI_HasSuperEffectiveMove(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler, BOOL memorizedTypeChart);
BOOL AI_IsHeavilyStatBoosted(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler);
BOOL AI_HasPartyMemberWithSuperEffectiveMove(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler, u32 checkEffectiveness, u8 rand);

int TypeMatchupMultiplier(u8 attackingType, u8 defendingType1, u8 defendingType2, u8 defendingType3);

int TrainerAI_PickCommand(struct BattleSystem *bsys, int attacker)
{
    int i;
    u8 battler1, battler2;
    u32 battleType;
    int end;
    struct PartyPokemon *mon;
    struct BattleStruct *ctx = bsys->sp;
    battleType = BattleTypeGet(bsys);

    if ((battleType & BATTLE_TYPE_TRAINER) || BATTLER_IS_ENEMY(attacker) == 0) {
        if (TrainerAI_ShouldSwitch(bsys, ctx, attacker)) {
            // If this is a switch which should use the post-KO switch logic, then do so.
            // If there is no valid battler, pick the first one in party order.
            if (ctx->aiSwitchedPartySlot[attacker] == 6) {
                if ((i = BattleAI_PostKOSwitchIn(bsys, attacker)) == 6) {
                    battler1 = attacker;
                    if (battleType & BATTLE_TYPE_TAG || battleType & BATTLE_TYPE_MULTI) {
                        battler2 = battler1;
                    } else {
                        battler2 = BATTLER_ALLY(attacker);
                    }
                    end = Battle_GetClientPartySize(bsys, attacker);

                    for (i = 0; i < end; i++) {
                        mon = Battle_GetClientPartyMon(bsys, attacker, i);

                        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
                            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE &&
                            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG 
                            && i != ctx->sel_mons_no[battler1]
                            && i != ctx->sel_mons_no[battler2]
                            && i != ctx->aiSwitchedPartySlot[battler1]
                            && i != ctx->aiSwitchedPartySlot[battler2]) {
                            break;
                        }
                    }
                }

                ctx->aiSwitchedPartySlot[attacker] = i;
            }

            return PLAYER_INPUT_PARTY;
        }

        // Check if the AI determines that it should use an item
        if (TrainerAI_ShouldUseItem(bsys, attacker)) {
            return PLAYER_INPUT_ITEM;
        }
    }
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *bsys, struct BattleStruct *ctx, int attacker)
{
    int i, aliveMons;
    u32 battler1, battler2;
    u32 battleType;
    struct PartyPokemon *mon;
    battleType = BattleTypeGet(bsys);

    if ((battleType & BATTLE_TYPE_TRAINER) || IsClientEnemy(bsys, attacker) == 0) {
        /*Don't try to make illegal switches.
        This includes binding conditions, 
        ingrain, shadow tag, arena trap, and magnet pull*/
        BattleMessage message = {0};
        BattleMessage *msg = &message;
        
        if (CantEscape(bsys, ctx, attacker, msg)) { 
            return FALSE;
        }

        aliveMons = 0;
        battler1 = attacker;
        if (battleType & BATTLE_TYPE_TAG || battleType & BATTLE_TYPE_MULTI) {
            battler2 = battler1;
        } else {
            battler2 = BATTLER_ALLY(battler1);
        }

        for (i = 0; i < Battle_GetClientPartySize(bsys, attacker); i++)
        {
            mon = Battle_GetClientPartyMon(bsys, attacker, i);

            if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE &&
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG 
                && i != ctx->sel_mons_no[battler1]
                && i != ctx->sel_mons_no[battler2]
                && i != ctx->aiSwitchedPartySlot[battler1]
                && i != ctx->aiSwitchedPartySlot[battler2])
            {
                aliveMons++;
            }
        }

        /*If able to switch and the current state of battle is very bad: switch out!*/
        if (aliveMons) {
            if (AI_PerishSongKO(ctx, attacker)) {
                return TRUE;
            }
    
            if (AI_CannotDamageWonderGuard(bsys, ctx, attacker)) {
                return TRUE;
            }
    
            if (AI_OnlyIneffectiveMoves(bsys, ctx, attacker)) {
                return TRUE;
            }
    
            if (AI_HasAbsorbAbilityInParty(bsys, ctx, attacker)) {
                return TRUE;
            }
    
            if (AI_IsAsleepWithNaturalCure(bsys, ctx, attacker)) {
                return TRUE;
            }
    
            // Do not switch if we have a super-effective move.
            // Note that this has a 10% chance of returning FALSE for each of our
            // moves that are super-effective against either opponent.
            if (AI_HasSuperEffectiveMove(bsys, ctx, attacker, FALSE)) {
                return FALSE;
            }
    
            // Never switch if the active battler has 4+ positive stat stages.
            if (AI_IsHeavilyStatBoosted(bsys, ctx, attacker)) {
                return FALSE;
            }
    
            // 33% of the time, switch to a party member with an immunity to the last move that hit
            // this battler which also has a super-effective move against an opposing Pokemon.
            if (AI_HasPartyMemberWithSuperEffectiveMove(bsys, ctx, attacker, MOVE_STATUS_NOT_VERY_EFFECTIVE, 2)) {
                return TRUE;
            }
    
            // 25% of the time, switch to a party member with an immunity to the last move that hit
            // this battler which also has a super-effective move against an opposing Pokemon.
            if (AI_HasPartyMemberWithSuperEffectiveMove(bsys, ctx, attacker, MOVE_STATUS_NO_EFFECT, 3)) {
                return TRUE;
            }
        
        }

        if (ctx->aiSwitchedPartySlot[attacker] != 6) {
            return TRUE;
        }
    }
    return FALSE;
}

int BattleAI_PostKOSwitchIn(struct BattleSystem *battleSystem, int battler)
{
    int i, j;
    u16 monSpecies;
    u16 move;
    int moveType;
    u8 score, maxScore; // BUG: Post-KO Switch-In AI Scoring Overflow (see docs/bugs_and_glitches.md)
    u8 picked = 6;
    u8 slot1, slot2;
    u32 moveStatusFlags;
    struct PartyPokemon *mon;
    struct BattleStruct *ctx = battleSystem->sp;

    slot1 = battler;
    if (BattleTypeGet(battleSystem) & (BATTLE_TYPE_TAG | BATTLE_TYPE_MULTI)) {
        slot2 = slot1;
    } else {
        slot2 = BATTLER_ALLY(battler);
    }

    u8 defender = BATTLER_OPPONENT(battler); // BattleSystem_RandomOpponent(battleSystem, ctx, battler);
    int partySize = Battle_GetClientPartySize(battleSystem, battler);
    u8 battlersDisregarded = 0;

    // Stage 1: Loop through all the party slots and find the one with the most favorable
    // offensive type-matchup against the chosen defender which also has a super-effective
    // move against that defender. Choose the Pokemon with the highest such score, breaking
    // ties by party-order. If no such Pokemon exists, proceed to Stage 2.
    //
    // Mono-type Pokemon are regarded as being dual-type of the same type.
    while (battlersDisregarded != 0x3F) {
        maxScore = 0;
        picked = 6;

        for (i = 0; i < partySize; i++) {
            mon = Battle_GetClientPartyMon(battleSystem, battler, i);
            monSpecies = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

            if (monSpecies != SPECIES_NONE
                && monSpecies != SPECIES_EGG
                && GetMonData(mon, MON_DATA_HP, 0)
                && (battlersDisregarded & No2Bit(i)) == FALSE
                && i != ctx->sel_mons_no[slot1]
                && i != ctx->sel_mons_no[slot2]
                && i != ctx->aiSwitchedPartySlot[slot1]
                && i != ctx->aiSwitchedPartySlot[slot2]) {

                u8 defenderType1 = ctx->battlemon[defender].type1; 
                u8 defenderType2 = ctx->battlemon[defender].type2; 
                u8 defenderType3 = TYPE_TYPELESS; // TODO

                score = TypeMatchupMultiplier(GetMonData(mon, MON_DATA_TYPE_1, 0), defenderType1, defenderType2, defenderType3);
                score += TypeMatchupMultiplier(GetMonData(mon, MON_DATA_TYPE_2, 0), defenderType1, defenderType2, defenderType3);
                score += TypeMatchupMultiplier(TYPE_TYPELESS, defenderType1, defenderType2, defenderType3); // TODO

                if (maxScore < score) {
                    maxScore = score;
                    picked = i;
                }
            } else {
                battlersDisregarded |= No2Bit(i);
            }
        }

        if (picked != 6) {
            // Determine if this mon has any super-effective moves against the defender
            mon = Battle_GetClientPartyMon(battleSystem, battler, i);

            for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                moveType = ctx->moveTbl[move].effect;
                if (move) {
                    moveStatusFlags = 0;

                    AITypeCalc(ctx, 
                        move, 
                        moveType, 
                        GetMonData(mon, MON_DATA_ABILITY, 0), 
                        ctx->battlemon[defender].ability, 
                        BattleItemDataGet(ctx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
                        GetMonData(mon, MON_DATA_TYPE_1, 0),
                        GetMonData(mon, MON_DATA_TYPE_2, 0), 
                        &moveStatusFlags);

                    if (moveStatusFlags & MOVE_STATUS_SUPER_EFFECTIVE) {
                        break;
                    }
                }
            }

            // If this mon has no moves which would be super-effective against the
            // defender, mark it as disregarded and move to the next in priority.
            if (i == CLIENT_MAX) {
                battlersDisregarded |= No2Bit(picked);
            } else {
                return picked;
            }
        } else {
            // No valid battlers to further-evaluate, break out
            battlersDisregarded = 0x3F;
        }
    }

    maxScore = 0;
    picked = 6;

    // Stage 2: Loop through all the party slots and score them by how much damage would be done
    // by the maximum non-critical roll of each of their moves if it were used by the battler
    // which just fainted. Choose the Pokemon with the highest such score, breaking ties by
    // party-order.
    for (i = 0; i < partySize; i++) {
        mon = Battle_GetClientPartyMon(battleSystem, battler, i);
        monSpecies = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

        if (monSpecies != SPECIES_NONE
            && monSpecies != SPECIES_EGG
            && GetMonData(mon, MON_DATA_HP, 0)
            && (battlersDisregarded & No2Bit(i)) == FALSE
            && i != ctx->sel_mons_no[slot1]
            && i != ctx->sel_mons_no[slot2]
            && i != ctx->aiSwitchedPartySlot[slot1]
            && i != ctx->aiSwitchedPartySlot[slot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {

                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                moveType = ctx->moveTbl[move].effect;
                 if (move && ctx->moveTbl[move].power != 1) {

                    score = CalcBaseDamage(battleSystem, ctx, move, ctx->side_condition[BATTLER_IS_ENEMY(defender)],
                    ctx->field_condition, ctx->moveTbl[move].power, ctx->moveTbl[move].type, battler, defender, 0);

                    moveStatusFlags = 0;

                    score = ServerDoTypeCalcMod(battleSystem, ctx, move, 0, battler, defender, score, &moveStatusFlags);

                    if (moveStatusFlags & MOVE_STATUS_NO_EFFECT) {
                        score = 0;
                    }
                }

                if (maxScore < score) {
                    maxScore = score;
                    picked = i;
                }
            }
        }
    }

    return picked;
}

/**
 * @brief Determine if the AI should use an item on its active battler.
 *
 * Several buffers will be filled, if an item should be used:
 * 1. The item type (e.g., Full Restore, Potion, etc.)
 * 2. Any parameters for the item, e.g. what status condition it heals
 * 3. What item number is used
 *
 * The trainer's pocket of items will also be updated appropriately.
 *
 * @param battleSystem
 * @param battler   The AI's battler.
 * @return          TRUE if an item should be used, FALSE if not.
 */

BOOL TrainerAI_ShouldUseItem(struct BattleSystem *battleSystem, int battler)
{
    int i;
    u8 aliveMons = 0;
    struct BattleStruct *ctx = battleSystem->sp;
    int battleType = BattleTypeGet(battleSystem);
    ctx->aiWorkTable.usedItemCondition[battler >> 1] = 0;
    BOOL result = FALSE;

    if (battleType & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        return FALSE;
    }
 
    // Don't let the AI partners ever use items in battle against trainers. 
    if (battleType & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
        && battler == BATTLER_PLAYER2) {
        return result;
    }
 
    // Don't try to use items if it's illegal to do so.
    if (ctx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO) {
        return result;
    }
 
    for (i = 0; i < Battle_GetClientPartySize(battleSystem, battler); i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSystem, battler, i);
 
        if (GetMonData(mon, MON_DATA_HP, NULL) != 0
            && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
            aliveMons++;
        }
    }
 
    for (i = 0; i < 4; i++) { // MAX_TRAINER_ITEMS
        if (i == 0 || aliveMons <= ctx->aiWorkTable.trainerItemCounts[battler >> 1] - i + 1) {
            u16 item = ctx->aiWorkTable.trainerItems[battler >> 1][i];
 
            if (item == ITEM_NONE) {
                continue;
            }
 
            if (item == ITEM_FULL_RESTORE) {
                if (ctx->battlemon[battler].hp < (s32)(ctx->battlemon[battler].maxhp / 4)
                    && ctx->battlemon[battler].hp) {
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_FULL_RESTORE;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_HP_RECOVERY)) {
                u8 hpRestore = GetItemVar(ctx, item, ITEM_PARAM_HP_RECOVERY_POINT);
 
                // Use an HP restore item if the battler is at less than 1/4 HP or if the full HP restore
                // value of the item would be used.
                if (hpRestore) {
                    if (ctx->battlemon[battler].hp
                        && (ctx->battlemon[battler].hp < (s32)(ctx->battlemon[battler].maxhp / 4)
                            || (ctx->battlemon[battler].maxhp - ctx->battlemon[battler].hp) > hpRestore)) {
                        ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_HP;
                        result = TRUE;
                    }
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_SLEEP_RECOVERY)) {
                if (ctx->battlemon[battler].condition & STATUS_SLEEP) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(5);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_POISON_RECOVERY)) {
                if ((ctx->battlemon[battler].condition & STATUS_POISON)
                    || (ctx->battlemon[battler].condition & STATUS_BAD_POISON)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(4);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_BURN_RECOVERY)) {
                if (ctx->battlemon[battler].condition & STATUS_BURN) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(3);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_FREEZE_RECOVERY)) {
                if (ctx->battlemon[battler].condition & STATUS_FREEZE) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(2);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_PARALYZE_RECOVERY)) {
                if (ctx->battlemon[battler].condition & STATUS_PARALYSIS) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(1);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (GetItemVar(ctx, item, ITEM_PARAM_CONFUSION_RECOVERY)) {
                if (ctx->battlemon[battler].condition2 & STATUS2_CONFUSION) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] |= No2Bit(0);
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
                // Don't try to use any of these until after the first turn that a mon is in play.
            } else if ((ctx->battlemon[battler].moveeffect.fakeOutCount - ctx->total_turn) >= 0) {
                if (GetItemVar(ctx, item, ITEM_PARAM_ATTACK_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_ATTACK;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_DEFENSE_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_DEFENSE;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_SP_ATTACK_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_SPECIAL_ATTACK;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_SP_DEFENSE_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_SPECIAL_DEFENSE;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_SPEED_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_SPEED;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_ACCURACY_UP)) {
                    ctx->aiWorkTable.usedItemCondition[battler >> 1] = STAT_ACCURACY;
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (GetItemVar(ctx, item, ITEM_PARAM_CRITICAL_UP)
                    && (ctx->side_condition[1] & SIDE_CONDITION_MIST) == FALSE) {
                    ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_GUARD_SPEC;
                    result = TRUE;
                }
            } else {
                // Unrecognized item type
                ctx->aiWorkTable.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_MAX;
            }
 
            if (result == TRUE) {
                ctx->aiWorkTable.usedItem[battler >> 1] = item;
                ctx->aiWorkTable.trainerItems[battler >> 1][i] = 0;
            }
        }
    }
    return result;
}

/**
 * @brief Check if Perish Song is active on a battler and the battler should
 * faint at the end of the turn. If so, treat the next switch as post-KO switch
 * AI.
 *
 * @param ctx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
BOOL AI_PerishSongKO(struct BattleStruct *ctx, int battler)
{
    if ((ctx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG)
        && ctx->battlemon[battler].moveeffect.perishSongTurns == 1) { // Bugfix: checks the perish count on the correct turn.
        ctx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }
 
    return FALSE;
}

/**
 * @brief Check if an AI's battler cannot damage the opponent's Pokemon due to
 * Wonder Guard. If so, check for any living party member that can deal damage
 * to that Pokemon, and switch to that mon 66% of the time.
 *
 * This routine does NOT apply to double-battles. (Thanks to Lhea for the Pokeplat code structure!)
 *
 * @param bsys
 * @param ctx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
BOOL AI_CannotDamageWonderGuard(struct BattleSystem *bsys, struct BattleStruct *ctx, int battler)
{
    int i, j;
    u16 move;
    int moveType;
    u32 effectiveness;
    struct PartyPokemon *mon;

    if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        return FALSE;
    }

    if (ctx->battlemon[BATTLER_OPPONENT(battler)].ability == ABILITY_WONDER_GUARD) {
        // Check if we have a super-effective move against the opponent.
        for (i = 0; i < GetBattlerLearnedMoveCount(bsys, ctx, battler); i++) {
            move = ctx->battlemon[battler].move[i];
            moveType = ctx->moveTbl[move].type; // TrainerAI_MoveType?

            if (move) {
                effectiveness = 0;
                AITypeCalc(ctx, // BattleSystem_ApplyTypeChart
                    move, 
                    moveType,
                    ctx->battlemon[battler].ability,
                    ctx->battlemon[BATTLER_OPPONENT(battler)].ability,
                    BattleItemDataGet(ctx,ctx->battlemon[BATTLER_OPPONENT(battler)].item, 1),
                    ctx->battlemon[BATTLER_OPPONENT(battler)].type1,
                    ctx->battlemon[BATTLER_OPPONENT(battler)].type2, 
                    &effectiveness);

                if (effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) {
                    return FALSE;
                }
            }
        }

        // If we don't, check if any of our party members have a super-effective move.
        for (i = 0; i < Battle_GetClientPartySize(bsys, battler); i++) {
            mon = Battle_GetClientPartyMon(bsys, battler, i);

            if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG
                && i != ctx->sel_mons_no[battler]) {
                for (j = 0; j < CLIENT_MAX; j++) {
                    move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                    moveType = ctx->moveTbl[move].type; // Move_CalcVariableDamageType?

                    if (move) {
                        effectiveness = 0;

                        AITypeCalc(ctx,
                            move, 
                            moveType,
                            GetMonData(mon, MON_DATA_ABILITY, 0),
                            ctx->battlemon[BATTLER_OPPONENT(battler)].ability,
                            BattleItemDataGet(ctx,ctx->battlemon[BATTLER_OPPONENT(battler)].item, 1),
                            ctx->battlemon[BATTLER_OPPONENT(battler)].type1,
                            ctx->battlemon[BATTLER_OPPONENT(battler)].type2, 
                            &effectiveness);

                        // If this party member has a super-effective move, switch 2/3 of the time
                        if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleRand(bsys) % 3 < 2) {
                            ctx->aiSwitchedPartySlot[battler] = i;
                            return TRUE;
                        }
                    }
                }
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if an AI's battler only has moves which do not deal damage to either
 * of the opponent's Pokemon.
 *
 * @param battleSystem
 * @param ctx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
BOOL AI_OnlyIneffectiveMoves(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler)
{
    int i, j;
    u8 defender1, defender2;
    u8 aiSlot1, aiSlot2;
    u16 move;
    int type;
    u32 effectiveness;
    int start, end;
    int numMoves;
    struct PartyPokemon *mon;

    int battleType = BattleTypeGet(battleSystem);

    // "Player" consts here refer to the AI's perspective.
    if (battleType & (BATTLE_TYPE_DOUBLES)) {
        defender1 = BATTLER_PLAYER;
        defender2 = BATTLER_PLAYER2;
    } else {
        defender1 = BATTLER_PLAYER;
        defender2 = BATTLER_PLAYER;
    }

    // Check all of this mon's attacking moves for immunities. If any of our moves can deal damage to
    // either of the opponents' battlers, do not switch.
    numMoves = 0;
    for (i = 0; i < GetBattlerLearnedMoveCount(battleSystem, ctx, battler); i++) {
        move = ctx->battlemon[battler].move[i];
        type = ctx->moveTbl[move].type; // TrainerAI_MoveType?

        if (move && ctx->moveTbl[move].power) {
            numMoves++;

            effectiveness = 0;
            if (ctx->battlemon[defender1].hp) {
                AITypeCalc(ctx, move, type, ctx->battlemon[battler].ability, ctx->battlemon[defender1].ability, BattleItemDataGet(ctx,ctx->battlemon[defender1].item, 1), ctx->battlemon[defender1].type1, ctx->battlemon[defender1].type2, &effectiveness);
            }

            if ((effectiveness & MOVE_STATUS_NO_EFFECT) == FALSE) {
                return FALSE;
            }

            effectiveness = 0;
            if (ctx->battlemon[defender2].hp) {
                AITypeCalc(ctx, move, type, ctx->battlemon[battler].ability, ctx->battlemon[defender2].ability, BattleItemDataGet(ctx,ctx->battlemon[defender2].item, 1), ctx->battlemon[defender2].type1, ctx->battlemon[defender2].type2, &effectiveness);

            }

            if ((effectiveness & MOVE_STATUS_NO_EFFECT) == FALSE) {
                return FALSE;
            }
        }
    }

    // If we have more than 1 attacking move, do not switch.
    if (numMoves < 2) {
        return FALSE;
    }


    aiSlot1 = battler;
    if (battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BATTLER_ALLY(battler);
    }

    start = 0;
    end = Battle_GetClientPartySize(battleSystem, battler);

    // For each of the AI's active party Pokemon on the bench, check if any of them have a
    // damaging move which is super-effective against either of the player's active Pokemon
    // on the battlefield. If any such Pokemon on the bench exists, switch to it 66% of
    // the time.
    for (i = start; i < end; i++) {
        mon = Battle_GetClientPartyMon(battleSystem, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG 
            && i != ctx->sel_mons_no[aiSlot1]
            && i != ctx->sel_mons_no[aiSlot2]
            && i != ctx->aiSwitchedPartySlot[aiSlot1]
            && i != ctx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                type = ctx->moveTbl[move].type;

                if (move && ctx->moveTbl[move].power) {

                    effectiveness = 0;
                    if (ctx->battlemon[defender1].hp) {
                        AITypeCalc(ctx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL),
                            ctx->battlemon[defender1].ability, 
                            BattleItemDataGet(ctx,ctx->battlemon[defender1].item, 1),
                            ctx->battlemon[defender1].type1, 
                            ctx->battlemon[defender1].type2, 
                            &effectiveness);

                    }
                    if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleRand(battleSystem) % 3 < 2) {
                        ctx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (ctx->battlemon[defender2].hp) {
                        AITypeCalc(ctx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            ctx->battlemon[defender2].ability, 
                            BattleItemDataGet(ctx,ctx->battlemon[defender2].item, 1),
                            ctx->battlemon[defender2].type1, 
                            ctx->battlemon[defender2].type2, 
                            &effectiveness);
                    }
                    if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleRand(battleSystem) % 3 < 2) {
                        ctx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }
                }
            }
        }
    }

    // For each of the AI's active party Pokemon on the bench, check if any of them have a
    // damaging move which is normally-effective against either of the player's active
    // Pokemon on the battlefield. If any such Pokemon on the bench exists, switch to it
    // 50% of the time.
    for (i = start; i < end; i++) {
        mon = Battle_GetClientPartyMon(battleSystem, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG
            && i != ctx->sel_mons_no[aiSlot1]
            && i != ctx->sel_mons_no[aiSlot2]
            && i != ctx->aiSwitchedPartySlot[aiSlot1]
            && i != ctx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                type = ctx->moveTbl[move].type;

                if (move && ctx->moveTbl[move].power) {

                    effectiveness = 0;
                    if (ctx->battlemon[defender1].hp) {
                        AITypeCalc(ctx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            ctx->battlemon[defender1].ability, 
                            BattleItemDataGet(ctx,ctx->battlemon[defender1].item, 1),
                            ctx->battlemon[defender1].type1, 
                            ctx->battlemon[defender1].type2, 
                            &effectiveness);

                    }
                    if ((effectiveness == 0) && BattleRand(battleSystem) % 2 < 1) {
                        ctx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (ctx->battlemon[defender2].hp) {
                        AITypeCalc(ctx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            ctx->battlemon[defender2].ability, 
                            BattleItemDataGet(ctx,ctx->battlemon[defender2].item, 1),
                            ctx->battlemon[defender2].type1, 
                            ctx->battlemon[defender2].type2, 
                            &effectiveness);
                    }
                    if ((effectiveness == 0) && BattleRand(battleSystem) % 2 < 1) {
                        ctx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}

// Helper function to account for the increase in complexity below.
static BOOL AbilityAbsorbsMove(int ability, int move, int adjustedType) {
    switch (adjustedType) {
        case TYPE_FIRE:
            if (ability == ABILITY_FLASH_FIRE 
            || ability == ABILITY_WELL_BAKED_BODY) {
                return TRUE;
            }
            break;
        case TYPE_WATER:
            if (ability == ABILITY_WATER_ABSORB 
            || ability == ABILITY_STORM_DRAIN
            || ability == ABILITY_DRY_SKIN) {
                return TRUE;
            } 
            break;
        case TYPE_ELECTRIC:
            if (ability == ABILITY_VOLT_ABSORB 
            || ability == ABILITY_MOTOR_DRIVE
            || ability == ABILITY_LIGHTNING_ROD) {
                return TRUE;
            }
            break;
        case TYPE_GRASS:
            if (ability == ABILITY_SAP_SIPPER) {
                return TRUE;
            }
            break;
        case TYPE_GROUND:
            if (ability == ABILITY_EARTH_EATER) {
                return TRUE;
            }
            break;
        default:
            if (IsMoveWindMove(move)
            && ability == ABILITY_WIND_RIDER) {
                return TRUE;
            }
            break;
    }
    return FALSE;
}

/**
 * @brief Check if the AI's party has a Pokemon on the bench which has an "absorbing"
 * ability for the move which was last used on it.
 *
 * This routine will skip its checks roughly 33% of the time if the AI's battler has
 * a super-effective move. It will also skip its checks if the AI's active battler
 * is the one with the absorbing ability.
 *
 * @param battleSystem
 * @param ctx
 * @param battler   The AI's battler.
 * @return BOOL
 */
BOOL AI_HasAbsorbAbilityInParty(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler)
{
    u8 aiSlot1, aiSlot2;

    // If we have a super-effective move against either opponent, do not switch ~33% of the time.
    if (AI_HasSuperEffectiveMove(battleSystem, ctx, battler, TRUE) && BattleRand(battleSystem) % 3 != 0) {
        return FALSE;
    }
 
    // If we have not been hit by a move by this battler, do not switch.
    if (ctx->waza_no_hit[battler] == MOVE_NONE) {
        return FALSE;
    }
 
    // If the last move that hit us does not deal damage, do not switch.
    if (ctx->moveTbl[ctx->waza_no_hit[battler]].power == 0) {
        return FALSE;
    }

    // TODO: Pass adjusted move type to prevent issues with moves like Secret Power or abilities like Normalize.
    if (MoldBreakerAbilityCheckInternal(battler, BATTLER_OPPONENT(battler), ctx->battlemon[battler].ability, ctx->battlemon[BATTLER_OPPONENT(battler)].ability, ctx->waza_no_hit[battler], ctx->moveTbl[ctx->waza_no_hit[battler]].split, ctx->battlemon[battler].ability)
    && AbilityAbsorbsMove(ctx->battlemon[battler].ability, ctx->waza_no_hit[battler], ctx->moveTbl[ctx->waza_no_hit[battler]].type)) {
        return FALSE;
    }
 
    // The idea with this logic is that we double-check our own slot twice if multi battle, but for regular double battles with 1 trainer on either side, we need to check both slots
    aiSlot1 = battler;
    if (BattleTypeGet(battleSystem) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BATTLER_ALLY(battler);
    }

    // Check each Pokemon on the bench for one which has an ability that absorbs
    // the last move that was used.
    for (int i = 0; i < Battle_GetClientPartySize(battleSystem, battler); i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSystem, battler, i);
 
        if (GetMonData(mon, MON_DATA_HP, 0) != 0
        && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE
        && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG 
        && i != ctx->sel_mons_no[aiSlot1]
        && i != ctx->sel_mons_no[aiSlot2]
        && i != ctx->aiSwitchedPartySlot[aiSlot1]
        && i != ctx->aiSwitchedPartySlot[aiSlot2]) {
            // Switch to a matching Pokemon 50% of the time.
            int ability = GetMonData(mon, MON_DATA_ABILITY, NULL);
            if (MoldBreakerAbilityCheckInternal(battler, BATTLER_OPPONENT(battler), ability, ctx->battlemon[BATTLER_OPPONENT(battler)].ability, ctx->waza_no_hit[battler], ctx->moveTbl[ctx->waza_no_hit[battler]].split, ability)
            && AbilityAbsorbsMove(ability, ctx->waza_no_hit[battler], ctx->moveTbl[ctx->waza_no_hit[battler]].type)
            && (BattleRand(battleSystem) & 1)) {
                ctx->aiSwitchedPartySlot[battler] = i;
                return TRUE;
            }
        }
    }
 
    return FALSE;
}

/**
 * @brief Check if the AI's battler is asleep and has Natural Cure + an eligible switch.
 *
 * @param battleSystem
 * @param ctx
 * @param battler   The AI's battler.
 * @return TRUE if the AI should switch, FALSE otherwise.
 */
BOOL AI_IsAsleepWithNaturalCure(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler)
{
    // Don't switch if we aren't asleep, don't have Natural Cure, or are below 50% HP.
    if ((ctx->battlemon[battler].condition & STATUS_SLEEP) == FALSE
    || ctx->battlemon[battler].ability != ABILITY_NATURAL_CURE
    || ctx->battlemon[battler].hp < (s32)(ctx->battlemon[battler].maxhp / 2)) {
        return FALSE;
    }
 
    // Check for the move that last hit you; i.e., don't switch on your first turn.
    // Switch 50% of the time, and use post-KO switch logic.
    if (ctx->waza_no_hit[battler] == MOVE_NONE && (BattleRand(battleSystem) & 1)) {
        ctx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }
 
    // If the last move that hit you is a status move, switch 50% of the time, following
    // post-KO switch logic.
    if (ctx->moveTbl[ctx->waza_no_hit[battler]].split == SPLIT_STATUS && (BattleRand(battleSystem) & 1)) {
        ctx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }
 
    // If we have a party member with an immunity to the last move that also has a super-effective
    // move, switch 50% of the time.
    if (AI_HasPartyMemberWithSuperEffectiveMove(battleSystem, ctx, battler, MOVE_STATUS_NO_EFFECT, 1)) {
        return TRUE;
    }
 
    // If we have a party member with a resistance to the last move that also has a super-effective
    // move, switch 50% of the time.
    if (AI_HasPartyMemberWithSuperEffectiveMove(battleSystem, ctx, battler, MOVE_STATUS_NOT_VERY_EFFECTIVE, 1)) {
        return TRUE;
    }
 
    // Randomly switch 50% of the time, following post-KO switch logic.
    if (BattleRand(battleSystem) & 1) {
        ctx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }
 
    return FALSE;
}

/**
 * @brief Check if an AI's battler has a super-effective move against either of the
 * opponent's Pokemon.
 *
 * @param battleSystem
 * @param ctx
 * @param battler The AI's battler.
 * @param memorizedTypeChart    If TRUE, will always return TRUE if the AI's battler has a super-
 *                              effective move. If FALSE, returns TRUE 90% of the time for either
 *                              target against which the battler has a super-effective move.
 * @return TRUE if the AI's battler has a super-effective move.
 */
BOOL AI_HasSuperEffectiveMove(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler, BOOL memorizedTypeChart)
{
    int i;
    u32 effectiveness;
    u16 move;
    int type;

    // Look at the slot directly across from us on the opposite side. i.e.,
    // AI slot 1 looks at player slot 1, AI slot 2 looks at player slot 2.
    u8 defender = BATTLER_OPPONENT(battler);
    
    // Check if the player's battler is weak to any of our moves.
    for (i = 0; i < CLIENT_MAX; i++) {
        move = ctx->battlemon[battler].move[i];
        type = ctx->moveTbl[move].type; // TrainerAI_MoveType?

        if (move) {
            effectiveness = 0;

            AITypeCalc(ctx, 
                move, 
                type, 
                ctx->battlemon[battler].ability, 
                ctx->battlemon[defender].ability, 
                BattleItemDataGet(ctx,ctx->battlemon[defender].item, 1),
                ctx->battlemon[defender].type1, 
                ctx->battlemon[defender].type2, 
                &effectiveness);

            // If the defending mon is weak to our move, return TRUE 90-100% of the time.
            if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE)
            && (memorizedTypeChart || BattleRand(battleSystem) % 10 != 0)) {
                return TRUE;
            }
        }
    }

    // Check the defender's partner the same way as above.
    if ((BattleTypeGet(battleSystem) & BATTLE_TYPE_DOUBLES) == FALSE) {
        return FALSE;
    }
    defender = BATTLER_ALLY(defender);

    for (i = 0; i < CLIENT_MAX; i++) {
        move = ctx->battlemon[battler].move[i];
        type = ctx->moveTbl[move].type;

        if (move) {
            effectiveness = 0;

            AITypeCalc(ctx, 
                move, 
                type, 
                ctx->battlemon[battler].ability, 
                ctx->battlemon[defender].ability, 
                BattleItemDataGet(ctx,ctx->battlemon[defender].item, 1),
                ctx->battlemon[defender].type1, 
                ctx->battlemon[defender].type2, 
                &effectiveness);

            // If the defending mon is weak to our move, return TRUE 90-100% of the time.
            if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE)
            && (memorizedTypeChart || BattleRand(battleSystem) % 10 != 0)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if the AI's current battler is heavily stat-boosted (that is,
 * if the sum of its total positive stat stage changes is greater than or
 * equal to 4.)
 *
 * @param battleSystem
 * @param ctx
 * @param battler   The AI's current battler.
 * @return          TRUE if the AI has a high number of positive stat stages;
 *                  FALSE otherwise.
 */
BOOL AI_IsHeavilyStatBoosted(struct BattleSystem *battleSystem UNUSED, struct BattleStruct *ctx, int battler)
{
    int stat;
    u8 numBoosts = 0;

    for (stat = STAT_HP; stat < STAT_MAX; stat++) {
        if (ctx->battlemon[battler].states[stat] > 6) {
            numBoosts += ctx->battlemon[battler].states[stat] - 6;
        }
    }

    return numBoosts >= 4;
}

/**
* @brief Check if the AI has a party member with a super-effective move, constrained
* to mons with a certain effectiveness matchup against the move that last hit us.
*
* @param battleSystem
* @param ctx
* @param battler               The AI's battler.
* @param checkEffectiveness    The desired effectiveness mask against the last move.
* @param rand                  Random odds to switch, if conditions are met.
* @return TRUE if the AI should switch, FALSE if not.
*/
BOOL AI_HasPartyMemberWithSuperEffectiveMove(struct BattleSystem *battleSystem, struct BattleStruct *ctx, int battler, u32 checkEffectiveness, u8 rand)
{
    u8 aiSlot1, aiSlot2;
    u16 move;
    u32 effectiveness;

    if (ctx->waza_no_hit[battler] == MOVE_NONE || ctx->waza_no_hit_client[battler] == BATTLER_NONE) {
        return FALSE;
    }

    // If the last move that hit us is a status move, do not switch.
    if (ctx->moveTbl[ctx->waza_no_hit[battler]].split == SPLIT_STATUS) {
        return FALSE;
    }

    aiSlot1 = battler;
    if (BattleTypeGet(battleSystem) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BATTLER_ALLY(battler);
    }

    for (int i = 0; i < Battle_GetClientPartySize(battleSystem, battler); i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSystem, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0
        && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_NONE
        && GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != SPECIES_EGG 
        && i != ctx->sel_mons_no[aiSlot1]
        && i != ctx->sel_mons_no[aiSlot2]
        && i != ctx->aiSwitchedPartySlot[aiSlot1]
        && i != ctx->aiSwitchedPartySlot[aiSlot2]) {
            effectiveness = 0;

            AITypeCalc(ctx, 
                ctx->waza_no_hit[battler], 
                ctx->moveTbl[ctx->waza_no_hit[battler]].type, 
                GetMonData(mon, MON_DATA_ABILITY, 0), 
                ctx->battlemon[ctx->waza_no_hit_client[battler]].ability, 
                BattleItemDataGet(ctx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
                GetMonData(mon, MON_DATA_TYPE_1, 0),
                GetMonData(mon, MON_DATA_TYPE_2, 0), 
                &effectiveness);

            if (effectiveness & checkEffectiveness) {
                for (int j = 0; j < CLIENT_MAX; j++) {
                    move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 

                    if (move) {
                        effectiveness = 0;

                        AITypeCalc(ctx, 
                            move, 
                            ctx->moveTbl[move].type, 
                            GetMonData(mon, MON_DATA_ABILITY, 0), 
                            ctx->battlemon[ctx->waza_no_hit_client[battler]].ability, 
                            BattleItemDataGet(ctx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
                            GetMonData(mon, MON_DATA_TYPE_1, 0),
                            GetMonData(mon, MON_DATA_TYPE_2, 0), 
                            &effectiveness);

                        if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE)
                        && BattleRand(battleSystem) % rand == 0) {
                            ctx->aiSwitchedPartySlot[battler] = i;
                            return TRUE;
                        }
                    }
                }
            }
        }
    }
    return FALSE;
}

int TypeMatchupMultiplier(u8 attackingType, u8 defendingType1, u8 defendingType2, u8 defendingType3)
{
    int i = 0;
    int mul = 40;

    // TODO: Add field consts for TypeEffectivenessTable.
    while (TypeEffectivenessTable[i][0] != TYPE_ENDTABLE) {
        if (TypeEffectivenessTable[i][0] == attackingType) {
            if (TypeEffectivenessTable[i][1] == defendingType1
            || TypeEffectivenessTable[i][1] == defendingType2
            || TypeEffectivenessTable[i][1] == defendingType3) {
                mul = mul * TypeEffectivenessTable[i][2] / 10;
            }
        }

        i++;
    }

    return mul;
}
