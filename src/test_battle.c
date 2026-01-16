#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"

#ifdef DEBUG_BATTLE_SCENARIOS

#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/test_battle.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

#define TEST_BATTLE_TOTAL_TESTS 3 // Adjust as needed
#define TEST_START_INDEX        0

// Store current scenario for battle state application and AI scripting
struct TestBattleScenario *g_CurrentScenario = NULL;
static struct TestBattleScenario g_LoadedScenario = {0};
static int g_AIScriptIndex[4] = {0, 0, 0, 0};
static BOOL g_TestBattleCurrentComplete = FALSE;
static BOOL g_TestBattleHasMoreTests = FALSE;
static int g_CurrentTestIndex = TEST_START_INDEX;
// TODO: there is definitely some better way to do this, so that we don't need to worry if somehow this address is used by something else
int *g_EmulatorCommunicationSendHole = (int*)0x023df15c;

struct TestBattleScenario *LONG_CALL TestBattle_GetCurrentScenario()
{
    return g_CurrentScenario;
}

/**
 * @brief Override a single Pokemon with test scenario data
 *
 * @param mon Pokemon to override
 * @param species Species ID
 * @param level Level
 * @param form Form number (0 = base form)
 * @param ability Ability ID
 * @param item Held item ID
 * @param moves Array of 4 move IDs
 * @param hp Custom HP (0 = use max)
 * @param status Status condition
 */
static void LONG_CALL TestBattle_OverridePokemon(struct PartyPokemon *mon, u16 species, u8 level, u8 form, u16 ability, u16 item, u16 moves[4], u16 hp, u32 status)
{
    PokeParaSet(mon, species, level, 31, FALSE, 0, 0, 0);
    SetMonData(mon, MON_DATA_FORM, &form);
    SetMonData(mon, MON_DATA_ABILITY, &ability);
    SetMonData(mon, MON_DATA_HELD_ITEM, &item);

    // moves
    for (int i = 0; i < 4; i++) {
        if (moves[i] != MOVE_NONE) {
            u16 move = moves[i];
            SetMonData(mon, MON_DATA_MOVE1 + i, &move);
            u32 pp = 40;
            SetMonData(mon, MON_DATA_MOVE1MAXPP + i, &pp);
            SetMonData(mon, MON_DATA_MOVE1PP + i, &pp);
        }
    }

    if (hp == 0) {
        u16 maxHP = (u16)GetMonData(mon, MON_DATA_MAXHP, NULL);
        SetMonData(mon, MON_DATA_HP, &maxHP);
    } else {
        SetMonData(mon, MON_DATA_HP, &hp);
    }

    SetMonData(mon, MON_DATA_STATUS, &status);

    u8 friendship = 255;
    SetMonData(mon, MON_DATA_FRIENDSHIP, &friendship);
}

/**
 * @brief Helper to override a single party member
 *
 * @param bp Battle param structure
 * @param partyIndex Which party (0 = player, 1 = enemy/trainer)
 * @param slot Which slot in the party (0-5)
 * @param species Species ID
 * @param level Level
 * @param form Form number (0 = base form)
 * @param ability Ability ID
 * @param item Held item ID
 * @param moves Array of 4 move IDs
 * @param hp Custom HP (0 = use max)
 * @param status Status condition
 */
static void OverridePartySlot(struct BATTLE_PARAM *bp, int partyIndex, int slot,
                               u16 species, u8 level, u8 form, u16 ability, u16 item,
                               u16 moves[4], u16 hp, u32 status)
{
    if (bp->poke_party[partyIndex] == NULL) {
        return;
    }

    struct PartyPokemon *mon = Party_GetMonByIndex(bp->poke_party[partyIndex], slot);
    if (mon != NULL) {
        TestBattle_OverridePokemon(mon, species, level, form, ability, item, moves, hp, status);
    }
}

/**
 * @brief Overrides battle parties with test scenario
 *
 * This should be called after MakeTrainerPokemonParty creates the trainer's party.
 * It will override both player and trainer parties with test scenario data.
 *
 * @param bp Battle param structure
 */
void LONG_CALL TestBattle_OverrideParties(struct BATTLE_PARAM *bp)
{
    g_TestBattleCurrentComplete = FALSE;
    g_TestBattleHasMoreTests = (g_CurrentTestIndex + 1) < TEST_BATTLE_TOTAL_TESTS;
    *g_EmulatorCommunicationSendHole = g_CurrentTestIndex;
    debug_printf("TestBattle: Loading scenario %d of %d (more=%d)\n", g_CurrentTestIndex, TEST_BATTLE_TOTAL_TESTS, g_TestBattleHasMoreTests);

    ArchiveDataLoadOfs(&g_LoadedScenario, ARC_CODE_ADDONS, CODE_ADDON_BATTLE_TESTS, g_CurrentTestIndex * sizeof(struct TestBattleScenario), sizeof(struct TestBattleScenario));

    // Point current scenario to the loaded buffer
    g_CurrentScenario = &g_LoadedScenario;

    const struct TestBattleScenario *scenario = g_CurrentScenario;

    for (int i = 0; i < 4; i++) {
        g_AIScriptIndex[i] = 0;
    }

    int enemyCount = 0;
    for (int i = 0; i < 2; i++) {
        if (scenario->enemyParty[i].species != 0) {
            enemyCount++;
        }
    }

    if (scenario->battleType & BATTLE_TYPE_DOUBLE) {
        bp->fight_type = BATTLE_TYPE_TRAINER | scenario->battleType;
    }

    // Override player's Pokemon (party 0)
    int playerCount = 0;
    for (int slot = 0; slot < 6; slot++) {
        const struct TestBattlePokemon *mon = &scenario->playerParty[slot];

        if (mon->species == 0) {
            break;  // Stop at first empty slot
        }

        OverridePartySlot(bp, 0, slot,
                          mon->species,
                          mon->level,
                          mon->form,
                          mon->ability,
                          mon->item,
                          (u16*)mon->moves,
                          mon->hp,
                          mon->status);
        playerCount++;
    }
    if (bp->poke_party[0] != NULL) {
        bp->poke_party[0]->count = playerCount;
    }

    // Override enemy's Pokemon (party 1)
    if (enemyCount > 0) {
        bp->trainer_data[1].poke_count = enemyCount;

        if (bp->poke_party[1] != NULL) {
            bp->poke_party[1]->count = enemyCount;
            for (int i = 0; i < enemyCount; i++) {
                struct PartyPokemon *mon = Party_GetMonByIndex(bp->poke_party[1], i);
                if (mon == NULL) {
                    // Slot doesn't exist, add a dummy that we'll override later
                    struct PartyPokemon tempMon;
                    PokeParaSet(&tempMon, SPECIES_BULBASAUR, 5, 0, FALSE, 0, 0, 0);
                    PokeParty_Add(bp->poke_party[1], &tempMon);
                }
            }
        }
    }
    for (int slot = 0; slot < 6; slot++) {
        const struct TestBattlePokemon *mon = &scenario->enemyParty[slot];

        if (mon->species == 0) {
            break;
        }

        OverridePartySlot(bp, 1, slot,
                          mon->species,
                          mon->level,
                          mon->form,
                          mon->ability,
                          mon->item,
                          (u16*)mon->moves,
                          mon->hp,
                          mon->status);
    }
}

/**
 * @brief Apply battle state from scenario to battlers and field
 *
 * This should be called after battle initialization but before the first turn.
 * It applies all status, condition, and field flags from the test scenario.
 *
 * @param bw Battle system pointer
 * @param sp Battle struct pointer
 */
void LONG_CALL TestBattle_ApplyBattleState(struct BattleStruct *sp)
{
    if (g_CurrentScenario == NULL) {
        return;
    }

    // In doubles, we need to ensure both battlers are properly linked to party slots
    if (g_CurrentScenario->battleType & BATTLE_TYPE_DOUBLE) {
        // Player
        sp->sel_mons_no[BATTLER_PLAYER_FIRST] = 0;
        if (g_CurrentScenario->playerParty[1].species != 0) {
            sp->sel_mons_no[BATTLER_PLAYER_SECOND] = 1;
        }

        // Enemy
        sp->sel_mons_no[BATTLER_ENEMY_FIRST] = 0;
        if (g_CurrentScenario->enemyParty[1].species != 0) {
            sp->sel_mons_no[BATTLER_ENEMY_SECOND] = 1;
        }
    }

    // Apply player Pokemon status and conditions (battlers 0-1 in doubles, 0 in singles)
    for (int slot = 0; slot < 2; slot++) {
        const struct TestBattlePokemon *mon = &g_CurrentScenario->playerParty[slot];
        int battlerId = (slot == 0) ? BATTLER_PLAYER_FIRST : BATTLER_PLAYER_SECOND;

        if (mon->species == 0) {
            continue;
        }

        if (mon->status) {
            sp->battlemon[battlerId].condition |= mon->status;
        }

        if (mon->condition2) {
            sp->battlemon[battlerId].condition2 |= mon->condition2;

            if (mon->condition2 & STATUS2_RECHARGE) {
                sp->battlemon[battlerId].moveeffect.rechargeCount = 2;  // Skip 1 turn

                // lock choice item to first move
                if (mon->item == ITEM_CHOICE_BAND || mon->item == ITEM_CHOICE_SPECS || mon->item == ITEM_CHOICE_SCARF)
                {
                    sp->battlemon[battlerId].moveeffect.moveNoChoice = mon->moves[0];
                }
            }
        }

        if (mon->moveEffectFlags) {
            sp->battlemon[battlerId].effect_of_moves |= mon->moveEffectFlags;
        }
    }

    // Apply enemy Pokemon status and conditions (battlers 2-3 in doubles, 1 in singles)
    for (int slot = 0; slot < 2; slot++) {
        const struct TestBattlePokemon *mon = &g_CurrentScenario->enemyParty[slot];
        int battlerId = (slot == 0) ? BATTLER_ENEMY_FIRST : BATTLER_ENEMY_SECOND;

        if (mon->species == 0) {
            continue;
        }

        if (mon->status) {
            sp->battlemon[battlerId].condition |= mon->status;
        }

        if (mon->condition2) {
            sp->battlemon[battlerId].condition2 |= mon->condition2;

            if (mon->condition2 & STATUS2_RECHARGE) {
                sp->battlemon[battlerId].moveeffect.rechargeCount = 2;  // Skip 1 turn

                // lock choice item to first move
                if (mon->item == ITEM_CHOICE_BAND || mon->item == ITEM_CHOICE_SPECS || mon->item == ITEM_CHOICE_SCARF)
                {
                    sp->battlemon[battlerId].moveeffect.moveNoChoice = mon->moves[0];
                }
            }
        }

        if (mon->moveEffectFlags) {
            sp->battlemon[battlerId].effect_of_moves |= mon->moveEffectFlags;
        }
    }

    if (g_CurrentScenario->weather) {
        sp->field_condition |= g_CurrentScenario->weather;
    }

    if (g_CurrentScenario->fieldCondition) {
        sp->field_condition |= g_CurrentScenario->fieldCondition;
    }

    sp->terrainOverlay.type = TERRAIN_NONE;
    sp->terrainOverlay.numberOfTurnsLeft = 0;

    if (g_CurrentScenario->terrain != TERRAIN_NONE) {
        sp->terrainOverlay.type = g_CurrentScenario->terrain;
        sp->terrainOverlay.numberOfTurnsLeft = 255;
    }
}

/**
 * @brief Check if all battler scripts have been exhausted
 *
 * @return TRUE if all active battlers have completed their scripts, FALSE otherwise
 */
static BOOL LONG_CALL TestBattle_TestComplete()
{
    if (g_CurrentScenario == NULL) {
        return FALSE;
    }

    int maxBattlers = (g_CurrentScenario->battleType & BATTLE_TYPE_DOUBLE) ? 4 : 2;
    for (int i = 0; i < maxBattlers; i++) {
        const struct BattleAction *script;
        int battlerIndex = (i == BATTLER_PLAYER_FIRST || i == BATTLER_ENEMY_FIRST) ? 0 : 1;

        if (i == BATTLER_PLAYER_FIRST || i == BATTLER_PLAYER_SECOND) {
            script = g_CurrentScenario->playerScript[battlerIndex];
        } else {
            script = g_CurrentScenario->enemyScript[battlerIndex];
        }

        int scriptIndex = g_AIScriptIndex[i];
        if (scriptIndex < AI_SCRIPT_MAX_MOVES && script[scriptIndex].action != ACTION_NONE) {
            return FALSE;
        }
    }

    return TRUE;
}

/**
 * @brief Check if test battle scripts are complete and update completion flag
 *
 * This should be called after each turn or after all battlers act.
 * When scripts are complete, it sets the completion flag and logs TEST_END.
 */
static void LONG_CALL TestBattle_CheckScriptCompletion()
{
    if (g_CurrentScenario == NULL || g_TestBattleCurrentComplete) {
        return;
    }

    if (TestBattle_TestComplete()) {
        g_TestBattleCurrentComplete = TRUE;
    }
}

/**
 * @brief Check if test battle is marked as complete
 *
 * @return TRUE if test battle should end
 */
BOOL LONG_CALL TestBattle_IsComplete()
{
    return g_TestBattleCurrentComplete;
}

void LONG_CALL TestBattle_QueueNextTest()
{
    if (g_TestBattleCurrentComplete) {
        g_CurrentTestIndex++;
        g_TestBattleCurrentComplete = FALSE;
    }
    g_TestBattleHasMoreTests = FALSE; // set this to false temporarily so the script only loads once
}

/**
 * @brief Check if there are more tests to run after the current one
 *
 * @return TRUE if more tests are available and the current one is done, FALSE otherwise
 */
BOOL LONG_CALL TestBattle_HasMoreTests()
{
    return g_TestBattleCurrentComplete && g_TestBattleHasMoreTests;
}

/**
 * @brief Get the next scripted move for player or enemy
 *
 * This function is called before move decision. If there's a scripted
 * move available, it returns that move and advances the script. Otherwise returns 0
 * to let normal input/AI decide.
 *
 * @param battlerId The battler making the decision (0-3)
 * @param moveSlot Output parameter - which move slot (0-3) contains the scripted move
 * @param target Output parameter - which battler to target (0-3)
 * @return Move ID to use, or 0 if no override
 */
void LONG_CALL TestBattle_GetAIScriptedMove(int battlerId, u8 *moveSlot, u8 *target)
{
    *moveSlot = (u8)0;
    *target = (u8)0;

    if (g_CurrentScenario == NULL) {
        return;
    }

    if (battlerId < 0 || battlerId >= 4) {
        return;
    }

    const struct BattleAction *script;
    int battlerIndex = (battlerId == BATTLER_PLAYER_FIRST || battlerId == BATTLER_ENEMY_FIRST) ? 0 : 1;

    if (battlerId == BATTLER_PLAYER_FIRST || battlerId == BATTLER_PLAYER_SECOND) {
        script = g_CurrentScenario->playerScript[battlerIndex];
    } else {
        script = g_CurrentScenario->enemyScript[battlerIndex];
    }

    int *scriptIndex = &g_AIScriptIndex[battlerId];

    if (*scriptIndex >= AI_SCRIPT_MAX_MOVES) {
        return;
    }

    struct BattleAction action = script[*scriptIndex];

    if (action.action == ACTION_NONE) {
        return;
    }

    if (action.action <= ACTION_MOVE_SLOT_4) {
        *moveSlot = action.action;
        *target = action.target;
    }
    (*scriptIndex)++;
}


/**
 * @brief AI move selection for test battles
  *
 * @param bsys Battle system pointer
 * @param battler The battler making the decision (1 or 3 for enemies in doubles)
 * @return The move slot (0-3) to use
 */
u8 LONG_CALL TestBattle_AISelectMove(struct BattleSystem *bsys, int battler) {
    u8 moveSlot = 0;
    u8 target = 0;
    TestBattle_GetAIScriptedMove(battler, &moveSlot, &target);
    bsys->sp->waza_no_pos[battler] = moveSlot;
    bsys->sp->aiWorkTable.ai_dir_select_client[battler] = target;
    return moveSlot;
}

/**
 * @brief AI command picking for test battles - decides whether to fight or switch
 *
 * @param bsys Battle system pointer
 * @param battler The battler making the decision
 * @return 1 for FIGHT, 2 for ITEM, 3 for SWITCH (matches original AI function)
 */
int LONG_CALL TestBattle_AIPickCommand(struct BattleSystem *bsys, int battler)
{
    if (battler == BATTLER_PLAYER_FIRST || battler == BATTLER_PLAYER_SECOND) {
        return 1;  // FIGHT
    }

    if (g_CurrentScenario == NULL) {
        return 1;  // FIGHT
    }

    // Add safety check for bsys and sp
    if (bsys == NULL || bsys->sp == NULL) {
        return 1;  // FIGHT
    }

    // Determine which script array and index to use
    const struct BattleAction *script;
    int battlerIndex = (battler == BATTLER_PLAYER_FIRST || battler == BATTLER_ENEMY_FIRST) ? 0 : 1;

    if (battler == BATTLER_PLAYER_FIRST || battler == BATTLER_PLAYER_SECOND) {
        script = g_CurrentScenario->playerScript[battlerIndex];
    } else {
        script = g_CurrentScenario->enemyScript[battlerIndex];
    }

    TestBattle_CheckScriptCompletion();

    if (g_TestBattleCurrentComplete) {
        return 1;  // will be ignored as battle ends
    }

    int scriptIndex = g_AIScriptIndex[battler];

    if (scriptIndex >= AI_SCRIPT_MAX_MOVES) {
        return 1;  // FIGHT
    }

    struct BattleAction action = script[scriptIndex];

    if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
        u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
        bsys->sp->ai_reshuffle_sel_mons_no[battler] = partySlot;
        g_AIScriptIndex[battler]++;
        return 3;  // SWITCH
    }

    return 1;  // FIGHT
}

/**
 * @brief Auto-select moves/switches for player battlers in test scenarios
 *
 * Called from BattleContext_Main during the input phase to automatically
 * select actions for player-controlled battlers based on the test script.
 *
 * @param bsys Battle system pointer
 * @param ctx Battle struct pointer
 */
void LONG_CALL TestBattle_autoSelectPlayerMoves(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    if (ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT)
    {
        return;  // Not in input phase
    }

    if (ctx->com_seq_no[0] != SSI_STATE_SELECT_COMMAND_INIT)
    {
        return;  // Already processed or not ready
    }

    if (g_CurrentScenario == NULL) {
        return;
    }

    TestBattle_CheckScriptCompletion();

    const struct BattleAction *script0 = g_CurrentScenario->playerScript[0];
    int scriptIndex0 = g_AIScriptIndex[0];

    if (scriptIndex0 < AI_SCRIPT_MAX_MOVES) {
        struct BattleAction action = script0[scriptIndex0];
        if (action.action == ACTION_NONE) {
            return;
        }

        if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
            // switch
            u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
            ctx->playerActions[0][0] = CONTROLLER_COMMAND_POKEMON_INPUT;
            ctx->playerActions[0][1] = partySlot;
            ctx->playerActions[0][2] = 0;
            ctx->playerActions[0][3] = SELECT_POKEMON_COMMAND;
            ctx->reshuffle_sel_mons_no[0] = partySlot;
            ctx->com_seq_no[0] = SSI_STATE_END;
            ctx->ret_seq_no[0] = SSI_STATE_13;
            g_AIScriptIndex[0]++;
        } else {
            // fight
            u8 moveSlot = action.action;
            u8 target = action.target;
            ctx->playerActions[0][0] = CONTROLLER_COMMAND_FIGHT_INPUT;
            ctx->playerActions[0][1] = target;
            ctx->playerActions[0][2] = moveSlot + 1;
            ctx->playerActions[0][3] = SELECT_FIGHT_COMMAND;
            ctx->waza_no_pos[0] = moveSlot;
            ctx->waza_no_select[0] = ctx->battlemon[0].move[moveSlot];
            ctx->com_seq_no[0] = SSI_STATE_END;
            ctx->ret_seq_no[0] = SSI_STATE_13;
            g_AIScriptIndex[0]++;
        }
    }

    if (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLE) {
        const struct BattleAction *script1 = g_CurrentScenario->playerScript[1];
        int scriptIndex2 = g_AIScriptIndex[2];

        if (scriptIndex2 < AI_SCRIPT_MAX_MOVES) {
            struct BattleAction action = script1[scriptIndex2];
            if (action.action == ACTION_NONE) {
                return;
            }

            if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
                // switch
                u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
                ctx->playerActions[2][0] = CONTROLLER_COMMAND_POKEMON_INPUT;
                ctx->playerActions[2][1] = partySlot;
                ctx->playerActions[2][2] = 0;
                ctx->playerActions[2][3] = SELECT_POKEMON_COMMAND;
                ctx->reshuffle_sel_mons_no[2] = partySlot;
                ctx->com_seq_no[2] = SSI_STATE_END;
                ctx->ret_seq_no[2] = SSI_STATE_13;
                g_AIScriptIndex[2]++;
            } else {
                // fight
                u8 moveSlot = action.action;
                u8 target = action.target;
                ctx->playerActions[2][0] = CONTROLLER_COMMAND_FIGHT_INPUT;
                ctx->playerActions[2][1] = target;
                ctx->playerActions[2][2] = moveSlot + 1;
                ctx->playerActions[2][3] = SELECT_FIGHT_COMMAND;
                ctx->waza_no_pos[2] = moveSlot;
                ctx->waza_no_select[2] = ctx->battlemon[2].move[moveSlot];
                ctx->com_seq_no[2] = SSI_STATE_END;
                ctx->ret_seq_no[2] = SSI_STATE_13;
                g_AIScriptIndex[2]++;
            }
        }
    }
}

#endif // DEBUG_BATTLE_SCENARIOS