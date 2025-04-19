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
//#include "../../src/battle/other_battle_calculators.c"
//#include "../../src/battle/ai.c"

#define BATTLER_OPP(battler) (battler ^ 1)
#define BATTLER_SIDE(battler) ((battler) & 1)
#define BATTLER_PLAYER_1 0
#define BATTLER_ENEMY_1  1
#define BATTLER_PLAYER_2 2
#define BATTLER_ENEMY_2  3
#define FlagIndex(n) (1 << (n))

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *bsys, int attacker);
/*Helper Functions (ported from Pokeplatinum)*/
BOOL AI_PerishSongKO(struct BattleStruct *battleCtx, int battler);
BOOL AI_CannotDamageWonderGuard(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler);
BOOL AI_OnlyIneffectiveMoves(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler);
BOOL AI_HasSuperEffectiveMove(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler, BOOL alwaysSwitch);
BOOL AI_HasAbsorbAbilityInParty(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler);
BOOL AI_HasPartyMemberWithSuperEffectiveMove(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler, u32 checkEffectiveness, u8 rand);
BOOL AI_IsAsleepWithNaturalCure(struct BattleSystem *battleSys,struct BattleStruct *battleCtx, int battler);
BOOL AI_IsHeavilyStatBoosted(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler);
BOOL TrainerAI_ShouldUseItem(struct BattleSystem *battleSys, int battler);

int BattleAI_PostKOSwitchIn(struct BattleSystem *battleSys, int battler);
int TypeMatchupMultiplier(u8 attackingType, u8 defendingType1, u8 defendingType2);


int TrainerAI_PickCommand(struct BattleSystem *bsys, int attacker)
{

    // must declare C89-style to match
    int i;
    u8 battler1, battler2;
    u32 battleType;
    int end;
    struct PartyPokemon *mon;
    struct BattleStruct *ctx = bsys->sp;
    battleType = BattleTypeGet(bsys);

    
    if ((battleType & BATTLE_TYPE_TRAINER) || BATTLER_SIDE(attacker) == 0) { //w
        if (TrainerAI_ShouldSwitch(bsys, attacker)) {
            // If this is a switch which should use the post-KO switch logic, then do so.
            // If there is no valid battler, pick the first one in party order.
            if (ctx->aiSwitchedPartySlot[attacker] == 6) {
                if ((i = BattleAI_PostKOSwitchIn(bsys, attacker)) == 6) {
                    battler1 = attacker;
                    if (battleType & BATTLE_TYPE_TAG
                        || battleType & BATTLE_TYPE_MULTI) {
                        battler2 = battler1;
                    } else {
                        battler2 = BATTLER_ALLY(attacker);
                    }
                    end = Battle_GetClientPartySize(bsys, attacker);

                    for (i = 0; i < end; i++) {


                        mon = Battle_GetClientPartyMon(bsys, attacker, i);

                        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
                            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
                            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
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
        /*
        if (TrainerAI_ShouldUseItem(bsys, attacker)) {
            return PLAYER_INPUT_ITEM;
        }
        */
    }

    
    return PLAYER_INPUT_FIGHT;
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
 * @param battleSys
 * @param battler   The AI's battler.
 * @return          TRUE if an item should be used, FALSE if not.
 */

 /*
 BOOL TrainerAI_ShouldUseItem(struct BattleSystem *battleSys, int battler)
 {
     int i;
     u8 aliveMons = 0;
     u16 item;
     u8 hpRestore;
     BOOL result;
     struct Party *party;
     struct PartyPokemon *mon;
     struct BattleStruct *battleCtx = battleSys->sp;
     int battleType = BattleTypeGet(battleSys);
     battleCtx->aiWorkTable.ai_item_condition[battler >> 1] = 0; //not sure if this is correct
     result = FALSE;

     if (battleType & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
         return FALSE;
     }

 
     // Don't let the AI partners ever use items in battle against trainers. 
     if (battleType & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
         && battler == BATTLER_PLAYER_2) {
         return result;
     }
 
     // Don't try to use items if it's illegal to do so.
     if (battleCtx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO) {
         return result;
     }
 
     party = BattleSystem_Party(battleSys, battler);
     for (i = 0; i < Party_GetCurrentCount(party); i++) {
         mon = Party_GetPokemonBySlotIndex(party, i);
 
         if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
             && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
             && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG) {
             aliveMons++;
         }
     }
 
     for (i = 0; i < MAX_TRAINER_ITEMS; i++) {
         if (i == 0 || aliveMons <= AI_CONTEXT.trainerItemCounts[battler >> 1] - i + 1) {
             item = AI_CONTEXT.trainerItems[battler >> 1][i];
 
             if (item == ITEM_NONE) {
                 continue;
             }
 
             if (item == ITEM_FULL_RESTORE) {
                 if (battleCtx->battleMons[battler].curHP < (battleCtx->battleMons[battler].maxHP / 4)
                     && battleCtx->battleMons[battler].curHP) {
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_FULL_RESTORE;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HP_RESTORE)) {
                 hpRestore = BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HP_RESTORED);
 
                 // Use an HP restore item if the battler is at less than 1/4 HP or if the full HP restore
                 // value of the item would be used.
                 if (hpRestore) {
                     if (battleCtx->battleMons[battler].curHP
                         && (battleCtx->battleMons[battler].curHP < (battleCtx->battleMons[battler].maxHP / 4)
                             || (battleCtx->battleMons[battler].maxHP - battleCtx->battleMons[battler].curHP) > hpRestore)) {
                         AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_HP;
                         result = TRUE;
                     }
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_SLEEP)) {
                 if (battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(5);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_POISON)) {
                 if ((battleCtx->battleMons[battler].status & MON_CONDITION_POISON)
                     || (battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(4);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_BURN)) {
                 if (battleCtx->battleMons[battler].status & MON_CONDITION_BURN) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(3);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_FREEZE)) {
                 if (battleCtx->battleMons[battler].status & MON_CONDITION_FREEZE) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(2);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_PARALYSIS)) {
                 if (battleCtx->battleMons[battler].status & MON_CONDITION_PARALYSIS) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(1);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
             } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_CONFUSION)) {
                 if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(0);
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                     result = TRUE;
                 }
                 // Don't try to use any of these until after the first turn that a mon is in play.
             } else if ((battleCtx->battleMons[battler].moveEffectsData.fakeOutTurnNumber - battleCtx->totalTurns) >= 0) {
                 if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_ATK_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_ATTACK;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_DEF_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_DEFENSE;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPATK_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SP_ATTACK;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPDEF_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SP_DEFENSE;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPEED_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SPEED;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_ACC_STAGES)) {
                     AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_ACCURACY;
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                     result = TRUE;
                 } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_GUARD_SPEC)
                     && (battleCtx->sideConditionsMask[1] & SIDE_CONDITION_MIST) == FALSE) {
                     AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_GUARD_SPEC;
                     result = TRUE;
                 }
             } else {
                 // Unrecognized item type
                 AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_MAX;
             }
 
             if (result == TRUE) {
                 AI_CONTEXT.usedItem[battler >> 1] = item;
                 AI_CONTEXT.trainerItems[battler >> 1][i] = 0;
             }
         }
     }
 
     return result;
 }
 */

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *bsys, int attacker)
{
    int i, aliveMons;
    u32 battler1, battler2, maxHP = 0;
    u32 battleType;
    int start;
    int end;
    struct PartyPokemon *mon;
    struct BattleStruct *ctx = bsys->sp;
    battleType = BattleTypeGet(bsys);

    if ((battleType & BATTLE_TYPE_TRAINER) || IsClientEnemy(bsys, attacker) == 0) {

        /*Don't try to make illegal switches.
        This includes binding conditions, 
        ingrain, shadow tag, arena trap, and magnet pull*/
        MESSAGE_PARAM message = {0};
        MESSAGE_PARAM *msg = &message;
        
        if(CantEscape(bsys, ctx, attacker, msg)){ 
            return FALSE;
        }

        start = 0;
        end = Battle_GetClientPartySize(bsys, attacker);
        battler1 = attacker;
        if (battleType & BATTLE_TYPE_TAG
            || battleType & BATTLE_TYPE_MULTI)
        {
            battler2 = battler1;
        } else {
            battler2 = BATTLER_ALLY(battler1);
        }

        for (int i = start; i < end; i++)
        {
            u32 currHP = 0;
            mon = Battle_GetClientPartyMon(bsys, attacker, i);

            /* save this for later
            currHP = GetMonData(mon, MON_DATA_HP, NULL);
            maxHP = currHP;
            ctx->aiSwitchedPartySlot[attacker] = i;
            */
            if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
                && i != ctx->sel_mons_no[battler1]
                && i != ctx->sel_mons_no[battler2]
                && i != ctx->aiSwitchedPartySlot[battler1]
                && i != ctx->aiSwitchedPartySlot[battler2])
            {
                aliveMons++;
            }
        }
        /*If able to switch and the current state of battle is very bad: switch out!*/
        if(aliveMons){
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
            if (AI_HasPartyMemberWithSuperEffectiveMove(bsys, ctx, attacker, MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE, 2)) {
                return TRUE;
            }
    
            // 25% of the time, switch to a party member with an immunity to the last move that hit
            // this battler which also has a super-effective move against an opposing Pokemon.
            if (AI_HasPartyMemberWithSuperEffectiveMove(bsys, ctx, attacker, MOVE_STATUS_FLAG_NOT_EFFECTIVE, 3)) {
                return TRUE;
            }
            


        }

        if (ctx->aiSwitchedPartySlot[attacker] != 6)
            return TRUE;
        
    }
    return FALSE;
}
/*
BOOL AI_CannotDamageWonderGuard(struct BattleSystem *bsys, int attacker){

    struct BattleStruct *ctx = bsys->sp;

    BOOL hasSuperEffectiveMove = FALSE;
    int attackerMovesKnown = GetBattlerLearnedMoveCount(bsys, ctx, attacker);
    int attackerMoveCheck, attackerMoveTypeCheck;
    for (int i = 0; i < attackerMovesKnown; i++){
        attackerMoveCheck = ctx->battlemon[attacker].move[i];
        attackerMoveTypeCheck = ctx->moveTbl[attackerMoveCheck].effect;
        AITypeCalc(ctx, attackerMoveCheck, attackerMoveTypeCheck, ctx->battlemon[attacker].ability, ctx->battlemon[defender].ability, ai->hold_effect, ai->defender_type_1, ai->defender_type_2, & ai->attacker_move_effectiveness);
        if(ai->attacker_move_effectiveness == MOVE_STATUS_FLAG_SUPER_EFFECTIVE){
            ai->attacker_has_super_effective_move = 1;
        }
    }
}
*/


/**
 * @brief Check if an AI's battler cannot damage the opponent's Pokemon due to
 * Wonder Guard. If so, check for any living party member that can deal damage
 * to that Pokemon, and switch to that mon 66% of the time.
 *
 * This routine does NOT apply to double-battles. (Thanks to Lhea for the Pokeplat code structure!)
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
BOOL AI_CannotDamageWonderGuard(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler)
{
    int i, j;
    u16 move;
    int moveType;
    u32 effectiveness;
    struct PartyPokemon *mon;
    int battleType = BattleTypeGet(battleSys);


    if (battleType & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        return FALSE;
    }

    if (battleCtx->battlemon[BATTLER_OPP(battler)].ability == ABILITY_WONDER_GUARD) {
        // Check if we have a super-effective move against the opponent
        for (i = 0; i < GetBattlerLearnedMoveCount(battleSys, battleCtx, battler); i++) {
            move = battleCtx->battlemon[battler].move[i];
            moveType = battleCtx->moveTbl[move].type;

            if (move) {
                effectiveness = 0;
                AITypeCalc(battleCtx,
                     move, 
                     moveType,
                      battleCtx->battlemon[battler].ability,
                       battleCtx->battlemon[BATTLER_OPP(battler)].ability,
                        BattleItemDataGet(battleCtx,battleCtx->battlemon[BATTLER_OPP(battler)].item, 1),
                         battleCtx->battlemon[BATTLER_OPP(battler)].type1,
                          battleCtx->battlemon[BATTLER_OPP(battler)].type2, 
                          &effectiveness);

                if (effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
                    return FALSE;
                }
            }
        }

        // If we don't, check if any of our party members have a super-effective move
        for (i = 0; i < Battle_GetClientPartySize(battleSys, battler); i++) {
            mon = Battle_GetClientPartyMon(battleSys, battler, i);

            if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494
                && i != battleCtx->sel_mons_no[battler]) {
                for (j = 0; j < CLIENT_MAX; j++) {
                    move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                    moveType = battleCtx->moveTbl[move].effect; 

                    if (move) {
                        effectiveness = 0;

                        AITypeCalc(battleCtx,
                            move, 
                            moveType,
                            GetMonData(mon, MON_DATA_ABILITY, 0),
                              battleCtx->battlemon[BATTLER_OPP(battler)].ability,
                               BattleItemDataGet(battleCtx,battleCtx->battlemon[BATTLER_OPP(battler)].item, 1),
                                battleCtx->battlemon[BATTLER_OPP(battler)].type1,
                                 battleCtx->battlemon[BATTLER_OPP(battler)].type2, 
                                 &effectiveness);

                        // If this party member has a super-effective move, switch 2/3 of the time
                        if ((effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && BattleRand(battleSys) % 3 < 2) {
                            battleCtx->aiSwitchedPartySlot[battler] = i;
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
 * @brief Check if Perish Song is active on a battler and the battler should
 * faint at the end of the turn. If so, treat the next switch as post-KO switch
 * AI.
 *
 * This routine is bugged; it functionally does nothing. The Perish Song turn
 * count decrements at the end of the turn, so the AI never sees that it WILL
 * die to Perish Song.
 *
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
 BOOL AI_PerishSongKO(struct BattleStruct *battleCtx, int battler)
 {
     if ((battleCtx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE)
         && battleCtx->battlemon[battler].moveeffect.perishSongTurns == 1) { //adjusted to 1 so the above mentioned bug is fixed.
         battleCtx->aiSwitchedPartySlot[battler] = 6;
         return TRUE;
     }
 
     return FALSE;
 }


 
/**
 * @brief Check if an AI's battler only has moves which do not deal damage to either
 * of the opponent's Pokemon.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
BOOL AI_OnlyIneffectiveMoves(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler)
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



    int battleType = BattleTypeGet(battleSys);



    // "Player" consts here refer to the AI's perspective.
    if (battleType & (BATTLE_TYPE_DOUBLE)) {
        defender1 = BATTLER_PLAYER_1;
        defender2 = BATTLER_PLAYER_2;
    } else {
        defender1 = BATTLER_PLAYER_1;
        defender2 = BATTLER_PLAYER_1;
    }

    // Check all of this mon's attacking moves for immunities. If any of our moves can deal damage to
    // either of the opponents' battlers, do not switch.
    numMoves = 0;
    for (i = 0; i < GetBattlerLearnedMoveCount(battleSys, battleCtx, battler); i++) {
        move = battleCtx->battlemon[battler].move[i];
        type = battleCtx->moveTbl[move].type;

        if (move && battleCtx->moveTbl[move].power) {
            numMoves++;

            effectiveness = 0;
            if (battleCtx->battlemon[defender1].hp) {
                AITypeCalc(battleCtx, move, type, battleCtx->battlemon[battler].ability, battleCtx->battlemon[defender1].ability, BattleItemDataGet(battleCtx,battleCtx->battlemon[defender1].item, 1), battleCtx->battlemon[defender1].type1, battleCtx->battlemon[defender1].type2, &effectiveness);
            }

            if ((effectiveness & MOVE_STATUS_FLAG_NOT_EFFECTIVE) == FALSE) {
                return FALSE;
            }

            effectiveness = 0;
            if (battleCtx->battlemon[defender2].hp) {
                AITypeCalc(battleCtx, move, type, battleCtx->battlemon[battler].ability, battleCtx->battlemon[defender2].ability, BattleItemDataGet(battleCtx,battleCtx->battlemon[defender2].item, 1), battleCtx->battlemon[defender2].type1, battleCtx->battlemon[defender2].type2, &effectiveness);

            }

            if ((effectiveness & MOVE_STATUS_FLAG_NOT_EFFECTIVE) == FALSE) {
                return FALSE;
            }
        }
    }

    // If we have more than 1 attacking move, do not switch.
    if (numMoves < 2) {
        return FALSE;
    }


    aiSlot1 = battler;
    if ( battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BATTLER_ALLY(battler);
    }

    

    start = 0;
    end = Battle_GetClientPartySize(battleSys, battler);

    // For each of the AI's active party Pokemon on the bench, check if any of them have a
    // damaging move which is super-effective against either of the player's active Pokemon
    // on the battlefield. If any such Pokemon on the bench exists, switch to it 66% of
    // the time.
    for (i = start; i < end; i++) {
        mon = Battle_GetClientPartyMon(battleSys, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
            && i != battleCtx->sel_mons_no[aiSlot1]
            && i != battleCtx->sel_mons_no[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                type = battleCtx->moveTbl[move].effect; 

                if (move && battleCtx->moveTbl[move].power) {

                    effectiveness = 0;
                    if (battleCtx->battlemon[defender1].hp) {
                        AITypeCalc(battleCtx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            battleCtx->battlemon[defender1].ability, 
                            BattleItemDataGet(battleCtx,battleCtx->battlemon[defender1].item, 1),
                             battleCtx->battlemon[defender1].type1, 
                             battleCtx->battlemon[defender1].type2, 
                             &effectiveness);

                    }
                    if ((effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && BattleRand(battleSys) % 3 < 2) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (battleCtx->battlemon[defender2].hp) {
                        AITypeCalc(battleCtx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            battleCtx->battlemon[defender2].ability, 
                            BattleItemDataGet(battleCtx,battleCtx->battlemon[defender2].item, 1),
                             battleCtx->battlemon[defender2].type1, 
                             battleCtx->battlemon[defender2].type2, 
                             &effectiveness);
                    }
                    if ((effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && BattleRand(battleSys) % 3 < 2) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
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
        mon = Battle_GetClientPartyMon(battleSys, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
            && i != battleCtx->sel_mons_no[aiSlot1]
            && i != battleCtx->sel_mons_no[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                type = battleCtx->moveTbl[move].effect; 

                if (move && battleCtx->moveTbl[move].power) {

                    effectiveness = 0;
                    if (battleCtx->battlemon[defender1].hp) {
                        AITypeCalc(battleCtx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            battleCtx->battlemon[defender1].ability, 
                            BattleItemDataGet(battleCtx,battleCtx->battlemon[defender1].item, 1),
                             battleCtx->battlemon[defender1].type1, 
                             battleCtx->battlemon[defender1].type2, 
                             &effectiveness);

                    }
                    if ((effectiveness == 0) && BattleRand(battleSys) % 2 < 1) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (battleCtx->battlemon[defender2].hp) {
                        AITypeCalc(battleCtx, 
                            move, 
                            type, 
                            GetMonData(mon, MON_DATA_ABILITY, NULL), 
                            battleCtx->battlemon[defender2].ability, 
                            BattleItemDataGet(battleCtx,battleCtx->battlemon[defender2].item, 1),
                             battleCtx->battlemon[defender2].type1, 
                             battleCtx->battlemon[defender2].type2, 
                             &effectiveness);
                    }
                    if ((effectiveness == 0) && BattleRand(battleSys) % 2 < 1) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}



/**
 * @brief Check if the AI's party has a Pokemon on the bench which has an "absorbing"
 * ability for the move which was last used on it (specifically, Volt Absorb, Water
 * Absorb, and Flash Fire).
 *
 * This routine will skip its checks roughly 33% of the time if the AI's battler has
 * a super-effective move. It will also skip its checks if the AI's active battler
 * is the one with the absorbing ability.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return BOOL
 */
 BOOL AI_HasAbsorbAbilityInParty(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler)
 {
     int i;
     u8 aiSlot1, aiSlot2;
     u8 moveType;
     u8 ability;
     u8 checkAbility;
     int start, end;
     struct PartyPokemon *mon;
 
     int battleType = BattleTypeGet(battleSys);

     // If we have a super-effective move against either opponent, do not switch ~33% of the time.
     if (AI_HasSuperEffectiveMove(battleSys, battleCtx, battler, TRUE) && BattleRand(battleSys) % 3 != 0) {
         return FALSE;
     }
 
     // If we have not been hit by a move by this battler, do not switch.
     if (battleCtx->waza_no_hit[battler] == MOVE_NONE) { //no idea if I am supposed to use waza_no_hit or waza_no_hit_client since they are both undocumented 
                                                         // (I think waza_no_hit stores the last move that a battler, and waza_no_hit_client is the one who did the hitting)
         return FALSE;
     }
 
     // If the last move that hit us does not deal damage, do not switch.
     if (battleCtx->moveTbl[battleCtx->waza_no_hit[battler]].power == 0) {
         return FALSE;
     }
 
     moveType = battleCtx->moveTbl[battleCtx->waza_no_hit[battler]].type;
     if (moveType == TYPE_FIRE) { 
         checkAbility = ABILITY_FLASH_FIRE;
     } else if (moveType == TYPE_WATER) {
         checkAbility = ABILITY_WATER_ABSORB;
     } else if (moveType == TYPE_ELECTRIC) {
         checkAbility = ABILITY_VOLT_ABSORB;
     } else {
         return ABILITY_NONE;
     } //Really should also check lightningrod, storm drain, earth eat, and dry skin -- TODO I guess.
 
     // If our ability absorbs the type of the last move that hit us, do not switch.
     if (battleCtx->battlemon[battler].ability == checkAbility) {
         return FALSE;
     }
 

 
     aiSlot1 = battler;
     if ( battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
         aiSlot2 = aiSlot1;
     } else {
         aiSlot2 = BATTLER_ALLY(battler);
     }      //the idea with this logic is that we double-check our own slot twice if multi battle, but for regular double battles with 1 trainer on either side, we need to check both slots


     start = 0;
     end = Battle_GetClientPartySize(battleSys, battler);
 
     // Check each Pokemon on the bench for one which has an ability that absorbs
     // the last move that was used.
     for (i = start; i < end; i++) {
         mon = Battle_GetClientPartyMon(battleSys, battler, i);
 
         if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
         GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
         GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
         && i != battleCtx->sel_mons_no[aiSlot1]
         && i != battleCtx->sel_mons_no[aiSlot2]
         && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
         && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
             ability = GetMonData(mon, MON_DATA_ABILITY, NULL);
 
             // Switch to a matching Pokemon 50% of the time.
             if (checkAbility == ability && (BattleRand(battleSys) & 1)) {
                 battleCtx->aiSwitchedPartySlot[battler] = i;
                 return TRUE;
             }
         }
     }
 
     return FALSE;
 }


 
/**
 * @brief Check if an AI's battler has a super-effective move against either of the
 * opponent's Pokemon.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @param flag      If TRUE, will always return TRUE if the AI's battler has a super-
 *                  effective move. If FALSE, returns TRUE 90% of the time for either
 *                  target against which the battler has a super-effective move.
 * @return TRUE if the AI's battler has a super-effective move.
 */
BOOL AI_HasSuperEffectiveMove(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler, BOOL flag)
{
    int i;
    u32 effectiveness;
    u8 defender;
    u8 oppositeSlot;
    u16 move;
    int type;
    int battleType = BattleTypeGet(battleSys);
    // Look at the slot directly across from us on the opposite side. i.e.,
    // AI slot 1 looks at player slot 1, AI slot 2 looks at player slot 2
    //oppositeSlot = BattleSystem_BattlerSlot(battleSys, battler) ^ 1;
    //defender = BattleSystem_BattlerOfType(battleSys, oppositeSlot);

    defender = BATTLER_OPP(battler);
    
    //if ((battleCtx->battlersSwitchingMask & FlagIndex(defender)) == FALSE) { 
    // Check if the player's battler is weak to any of our moves
    for (i = 0; i < CLIENT_MAX; i++) {
        move = battleCtx->battlemon[battler].move[i];
        type = battleCtx->moveTbl[move].type;

        if (move) {
            effectiveness = 0;

            AITypeCalc(battleCtx, 
                move, 
                type, 
                battleCtx->battlemon[battler].ability, 
                battleCtx->battlemon[defender].ability, 
                BattleItemDataGet(battleCtx,battleCtx->battlemon[defender].item, 1),
                 battleCtx->battlemon[defender].type1, 
                 battleCtx->battlemon[defender].type2, 
                 &effectiveness);

            // If the defending mon is weak to our move, return TRUE 90-100% of the time.
            if (effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
                if (flag) {
                    return TRUE;
                } else if (BattleRand(battleSys) % 10 != 0) {
                    return TRUE;
                }
            }
        }
    }
    //}

    // Check the defender's partner the same way as above.
    if ((battleType & BATTLE_TYPE_DOUBLE) == FALSE) {
        return FALSE;
    }
    defender = BATTLER_ALLY(defender);

    //if ((battleCtx->battlersSwitchingMask & FlagIndex(defender)) == FALSE) {
    for (i = 0; i < CLIENT_MAX; i++) {
        move = battleCtx->battlemon[battler].move[i];
        type = battleCtx->moveTbl[move].type;

        if (move) {
            effectiveness = 0;

            AITypeCalc(battleCtx, 
                move, 
                type, 
                battleCtx->battlemon[battler].ability, 
                battleCtx->battlemon[defender].ability, 
                BattleItemDataGet(battleCtx,battleCtx->battlemon[defender].item, 1),
                 battleCtx->battlemon[defender].type1, 
                 battleCtx->battlemon[defender].type2, 
                 &effectiveness);

            // If the defending mon is weak to our move, return TRUE 90-100% of the time.
            if (effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
                if (flag) {
                    return TRUE;
                } else if (BattleRand(battleSys) % 10 != 0) {
                    return TRUE;
                }
            }
        }
    }
    //}

    return FALSE;
}

/**
* @brief Check if the AI has a party member with a super-effective move, constrained
* to mons with a certain effectiveness matchup against the move that last hit us.
*
* @param battleSys
* @param battleCtx
* @param battler               The AI's battler.
* @param checkEffectiveness    The desired effectiveness mask against the last move.
* @param rand                  Random odds to switch, if conditions are met.
* @return TRUE if the AI should switch, FALSE if not.
*/
BOOL AI_HasPartyMemberWithSuperEffectiveMove(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler, u32 checkEffectiveness, u8 rand)
{
   int i, j;
   u8 aiSlot1, aiSlot2;
   u16 move;
   int moveType;
   u32 effectiveness;
   int start, end;
   struct PartyPokemon *mon;
   int battleType = BattleTypeGet(battleSys);

   if (battleCtx->waza_no_hit[battler] == MOVE_NONE || battleCtx->waza_no_hit_client[battler] == BATTLER_NONE) {
       return FALSE;
   }

   // If the last move that hit us is a status move, do not switch.
   if (battleCtx->moveTbl[battleCtx->waza_no_hit[battler]].power == 0) {
       return FALSE;
   }

   aiSlot1 = battler;
   if ( battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
       aiSlot2 = aiSlot1;
   } else {
       aiSlot2 = BATTLER_ALLY(battler);
   }      

   start = 0;
   end = Battle_GetClientPartySize(battleSys, battler);

   for (i = start; i < end; i++) {
        mon = Battle_GetClientPartyMon(battleSys, battler, i);

        if (GetMonData(mon, MON_DATA_HP, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 0 &&
            GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) != 494 
            && i != battleCtx->sel_mons_no[aiSlot1]
            && i != battleCtx->sel_mons_no[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
           effectiveness = 0;
           moveType = battleCtx->moveTbl[battleCtx->waza_no_hit[battler]].type;



           AITypeCalc(battleCtx, 
            battleCtx->waza_no_hit[battler], 
            moveType, 
            GetMonData(mon, MON_DATA_ABILITY, 0), 
            battleCtx->battlemon[battleCtx->waza_no_hit_client[battler]].ability, 
            BattleItemDataGet(battleCtx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
            GetMonData(mon, MON_DATA_TYPE_1, 0),
             GetMonData(mon, MON_DATA_TYPE_2, 0), 
             &effectiveness);



           if (effectiveness & checkEffectiveness) {
               for (j = 0; j < CLIENT_MAX; j++) {
                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                moveType = battleCtx->moveTbl[move].effect; 

                   if (move) {
                       effectiveness = 0;

                           AITypeCalc(battleCtx, 
                            move, 
                            moveType, 
                            GetMonData(mon, MON_DATA_ABILITY, 0), 
                            battleCtx->battlemon[battleCtx->waza_no_hit_client[battler]].ability, 
                            BattleItemDataGet(battleCtx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
                            GetMonData(mon, MON_DATA_TYPE_1, 0),
                             GetMonData(mon, MON_DATA_TYPE_2, 0), 
                             &effectiveness);


                       if ((effectiveness & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && BattleRand(battleSys) % rand == 0) {
                           battleCtx->aiSwitchedPartySlot[battler] = i;
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
 * @brief Check if the AI's battler is asleep and has Natural Cure + an eligible switch.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI should switch, FALSE otherwise.
 */
 BOOL AI_IsAsleepWithNaturalCure(struct BattleSystem *battleSys, struct BattleStruct *battleCtx, int battler)
 {
     // Don't switch if we aren't asleep, don't have Natural Cure, or are below 50% HP.
     if ((battleCtx->battlemon[battler].condition & STATUS_SLEEP) == FALSE
         || battleCtx->battlemon[battler].ability != ABILITY_NATURAL_CURE
         || battleCtx->battlemon[battler].hp < (battleCtx->battlemon[battler].maxhp / 2)) {
         return FALSE;
     }
 
     // Check for the move that last hit you; i.e., don't switch on your first turn.
     // Switch 50% of the time, and use post-KO switch logic.
     if (battleCtx->waza_no_hit[battler] == MOVE_NONE && (BattleRand(battleSys) & 1)) {
         battleCtx->aiSwitchedPartySlot[battler] = 6;
         return TRUE;
     }
 
     // If the last move that hit you is a status move, switch 50% of the time, following
     // post-KO switch logic.
     if (battleCtx->moveTbl[battleCtx->waza_no_hit[battler]].power == 0 && (BattleRand(battleSys) & 1)) {
         battleCtx->aiSwitchedPartySlot[battler] = 6;
         return TRUE;
     }
 
     // If we have a party member with an immunity to the last move that also has a super-effective
     // move, switch 50% of the time.
     if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, MOVE_STATUS_FLAG_NOT_EFFECTIVE, 1)) {
         return TRUE;
     }
 
     // If we have a party member with a resistance to the last move that also has a super-effective
     // move, switch 50% of the time.
     if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE, 1)) {
         return TRUE;
     }
 
     // Randomly switch 50% of the time, following post-KO switch logic.
     if (BattleRand(battleSys) & 1) {
         battleCtx->aiSwitchedPartySlot[battler] = 6;
         return TRUE;
     }
 
     return FALSE;
 }

 
 
/**
 * @brief Check if the AI's current battler is heavily stat-boosted (that is,
 * if the sum of its total positive stat stage changes is greater than or
 * equal to 4.)
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's current battler.
 * @return          TRUE if the AI has a high number of positive stat stages;
 *                  FALSE otherwise.
 */
BOOL AI_IsHeavilyStatBoosted(struct BattleSystem *battleSys, struct  BattleStruct *battleCtx, int battler)
{
    int stat;
    u8 numBoosts = 0;

    for (stat = STAT_HP; stat < STAT_MAX; stat++) {
        if (battleCtx->battlemon[battler].states[stat] > 6) {
            numBoosts += battleCtx->battlemon[battler].states[stat] - 6;
        }
    }

    return numBoosts >= 4;
}

int TypeMatchupMultiplier(u8 attackingType, u8 defendingType1, u8 defendingType2)
{
    int i = 0;
    int mul = 40;

    while (TypeEffectivenessTable[i][0] != 0xFF) {
        if (TypeEffectivenessTable[i][0] == attackingType) {
            if (TypeEffectivenessTable[i][1] == defendingType1) {
                mul = mul * TypeEffectivenessTable[i][2] / 10;
            }

            if (TypeEffectivenessTable[i][1] == defendingType2
                && defendingType1 != defendingType2) {
                mul = mul * TypeEffectivenessTable[i][2] / 10;
            }
        }

        i++;
    }

    return mul;
}

int BattleAI_PostKOSwitchIn(struct BattleSystem *battleSys, int battler)
{
    // Must keep C89-style declaration to match
    int i, j;
    u8 defender, defenderType1, defenderType2;
    u8 monType1, monType2;
    u16 monSpecies;
    u16 move;
    int moveType;
    u8 battlersDisregarded;
    u8 score, maxScore; // BUG: Post-KO Switch-In AI Scoring Overflow (see docs/bugs_and_glitches.md)
    u8 picked = 6;
    u8 slot1, slot2;
    u32 moveStatusFlags;
    int partySize;
    struct PartyPokemon *mon;
    struct BattleStruct *battleCtx = battleSys->sp;
    int battleType = BattleTypeGet(battleSys);

    slot1 = battler;
    if (battleType & (BATTLE_TYPE_TAG | BATTLE_TYPE_MULTI)) {
        slot2 = slot1;
    } else {
        slot2 = BATTLER_ALLY(battler);
    }

    defender = BATTLER_OPP(battler); //BattleSystem_RandomOpponent(battleSys, battleCtx, battler); was random opponent in pokeplat
    partySize = Battle_GetClientPartySize(battleSys, battler);
    battlersDisregarded = 0;

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
            mon = Battle_GetClientPartyMon(battleSys, battler, i);
            monSpecies = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

            if (monSpecies != SPECIES_NONE
                && monSpecies != SPECIES_EGG
                && GetMonData(mon, MON_DATA_HP, 0)
                && (battlersDisregarded & FlagIndex(i)) == FALSE
                && i != battleCtx->sel_mons_no[slot1]
                && i != battleCtx->sel_mons_no[slot2]
                && i != battleCtx->aiSwitchedPartySlot[slot1]
                && i != battleCtx->aiSwitchedPartySlot[slot2]) {

                defenderType1 = battleCtx->battlemon[defender].type1; 
                defenderType2 = battleCtx->battlemon[defender].type2; 
                monType1 = GetMonData(mon, MON_DATA_TYPE_1, 0);
                monType2 = GetMonData(mon, MON_DATA_TYPE_2, 0);

                score = TypeMatchupMultiplier(monType1, defenderType1, defenderType2);
                score += TypeMatchupMultiplier(monType2, defenderType1, defenderType2);

                if (maxScore < score) {
                    maxScore = score;
                    picked = i;
                }
            } else {
                battlersDisregarded |= FlagIndex(i);
            }
        }

        if (picked != 6) {
            // Determine if this mon has any super-effective moves against the defender
            mon = Battle_GetClientPartyMon(battleSys, battler, i);

            for (j = 0; j < CLIENT_MAX; j++) {

                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                moveType = battleCtx->moveTbl[move].effect; 

                if (move) {
                    moveStatusFlags = 0;

                    AITypeCalc(battleCtx, 
                        move, 
                        moveType, 
                        GetMonData(mon, MON_DATA_ABILITY, 0), 
                        battleCtx->battlemon[defender].ability, 
                        BattleItemDataGet(battleCtx,GetMonData(mon, MON_DATA_HELD_ITEM, 0), 1),
                        GetMonData(mon, MON_DATA_TYPE_1, 0),
                         GetMonData(mon, MON_DATA_TYPE_2, 0), 
                         &moveStatusFlags);

                    if (moveStatusFlags & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
                        break;
                    }
                }
            }

            // If this mon has no moves which would be super-effective against the
            // defender, mark it as disregarded and move to the next in priority.
            if (i == CLIENT_MAX) {
                battlersDisregarded |= FlagIndex(picked);
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
        mon = Battle_GetClientPartyMon(battleSys, battler, i);
        monSpecies = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

        if (monSpecies != SPECIES_NONE
            && monSpecies != SPECIES_EGG
            && GetMonData(mon, MON_DATA_HP, 0)
            && (battlersDisregarded & FlagIndex(i)) == FALSE
            && i != battleCtx->sel_mons_no[slot1]
            && i != battleCtx->sel_mons_no[slot2]
            && i != battleCtx->aiSwitchedPartySlot[slot1]
            && i != battleCtx->aiSwitchedPartySlot[slot2]) {
            for (j = 0; j < CLIENT_MAX; j++) {

                move = GetMonData(mon, MON_DATA_MOVE1 + j, NULL); 
                moveType = battleCtx->moveTbl[move].effect; 

                if (move && battleCtx->moveTbl[move].power != 1) {

                    score = CalcBaseDamage(battleSys, battleCtx, move, battleCtx->side_condition[BATTLER_SIDE(defender)],
                    battleCtx->field_condition, battleCtx->moveTbl[move].power, battleCtx->moveTbl[move].type, battler, defender, 0);


                    moveStatusFlags = 0;

                    score = ServerDoTypeCalcMod(battleSys, battleCtx, move, 0, battler, defender, score, &moveStatusFlags);


                    if (moveStatusFlags & MOVE_STATUS_FLAG_NOT_EFFECTIVE) {
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


