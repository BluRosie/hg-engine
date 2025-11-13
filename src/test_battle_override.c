#include "../include/types.h"
#include "../include/config.h"

#ifdef DEBUG_BATTLE_SCENARIOS

#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

// Store current scenario for battle state application and AI scripting
static const struct TestBattleScenario *g_CurrentScenario = NULL;
static int g_PlayerAIScriptIndex = 0;  // Track which scripted move to use next for player
static int g_EnemyAIScriptIndex = 0;   // Track which scripted move to use next for enemy

struct TestBattleScenario {
    // Player Pokemon
    u16 playerSpecies;
    u8 playerLevel;
    u16 playerAbility;
    u16 playerItem;
    u16 playerMoves[4];
    u16 playerHP;               // 0 = full HP
    u32 playerStatus;           // STATUS_BURN, STATUS_POISON, STATUS_SLEEP, STATUS_FREEZE, STATUS_PARALYSIS, etc.
    u32 playerCondition2;       // STATUS2_RECHARGE, STATUS2_CONFUSION, STATUS2_ATTRACT, etc. (can be OR'd together)
    u32 playerMoveEffectFlags;  // MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE, MOVE_EFFECT_FLAG_INGRAIN, etc.

    // Enemy Pokemon
    u16 enemySpecies;
    u8 enemyLevel;
    u16 enemyAbility;
    u16 enemyItem;
    u16 enemyMoves[4];
    u16 enemyHP;                // 0 = full HP
    u32 enemyStatus;            // STATUS_BURN, STATUS_POISON, STATUS_SLEEP, STATUS_FREEZE, STATUS_PARALYSIS, etc.
    u32 enemyCondition2;        // STATUS2_RECHARGE, STATUS2_CONFUSION, STATUS2_ATTRACT, etc. (can be OR'd together)
    u32 enemyMoveEffectFlags;   // MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE, MOVE_EFFECT_FLAG_INGRAIN, etc.

    // Field conditions
    u32 weather;                // WEATHER_RAIN, WEATHER_SANDSTORM, WEATHER_SUNNY, WEATHER_HAIL, etc.
    u32 fieldCondition;         // FIELD_CONDITION_TRICK_ROOM_INIT, FIELD_CONDITION_GRAVITY_INIT, etc.
    u8 terrain;                 // Terrain type

    // Moves to use in order (0 = end of script, repeats last move)
    u16 playerAIScript[8];  // Up to 8 scripted moves for player
    u16 enemyAIScript[8];   // Up to 8 scripted moves for enemy
};

static const struct TestBattleScenario scenario_HyperBeamRecharge = {
    .playerSpecies = SPECIES_SLOWPOKE,
    .playerLevel = 50,
    .playerAbility = ABILITY_OWN_TEMPO,
    .playerItem = ITEM_CHOICE_BAND,
    .playerMoves = {MOVE_HYPER_BEAM, MOVE_GIGA_IMPACT, MOVE_EARTHQUAKE, MOVE_RETURN},
    .playerHP = 0,                  // Full HP
    .playerStatus = 0,              // No status
    .playerCondition2 = STATUS2_RECHARGE,  // Must recharge!
    .playerMoveEffectFlags = 0,     // No move effects
    .playerAIScript = {MOVE_HYPER_BEAM, 0, 0, 0, 0, 0, 0, 0},  // Let player input handle recharge state

    .enemySpecies = SPECIES_TOXTRICITY,
    .enemyLevel = 50,
    .enemyAbility = ABILITY_PUNK_ROCK,
    .enemyItem = ITEM_LEFTOVERS,
    .enemyMoves = {MOVE_TRICK_ROOM, MOVE_OVERDRIVE, MOVE_SLUDGE_BOMB, MOVE_BOOMBURST},
    .enemyHP = 0,                   // Full HP
    .enemyStatus = 0,               // No status
    .enemyCondition2 = 0,           // No condition2 flags
    .enemyMoveEffectFlags = 0,      // No move effects
    .enemyAIScript = {MOVE_TRICK_ROOM, MOVE_SLUDGE_BOMB, 0, 0, 0, 0, 0, 0},

    // Field
    .weather = 0,
    .fieldCondition = 0,
    .terrain = 0,
};

static const struct TestBattleScenario scenario_NegativeStatChanges = {
    // Player
    .playerSpecies = SPECIES_ONIX,
    .playerLevel = 50,
    .playerAbility = ABILITY_STURDY,
    .playerItem = ITEM_NONE,
    .playerMoves = {MOVE_FAKE_TEARS, MOVE_TACKLE, MOVE_ROCK_THROW, MOVE_BIND},
    .playerHP = 0,             
    .playerStatus = 0,         
    .playerCondition2 = 0,     
    .playerMoveEffectFlags = 0,
    .playerAIScript = {MOVE_FAKE_TEARS, MOVE_FAKE_TEARS, MOVE_FAKE_TEARS, MOVE_FAKE_TEARS, MOVE_TACKLE, 0, 0, 0},

    // Enemy
    .enemySpecies = SPECIES_STEELIX,
    .enemyLevel = 50,
    .enemyAbility = ABILITY_STURDY,
    .enemyItem = ITEM_NONE,
    .enemyMoves = {MOVE_NASTY_PLOT, MOVE_QUICK_ATTACK, MOVE_IRON_TAIL, MOVE_ROCK_SLIDE},
    .enemyHP = 0,             
    .enemyStatus = 0,         
    .enemyCondition2 = 0,     
    .enemyMoveEffectFlags = 0,
    .enemyAIScript = {MOVE_NASTY_PLOT, MOVE_NASTY_PLOT, MOVE_NASTY_PLOT, MOVE_NASTY_PLOT, MOVE_QUICK_ATTACK, 0, 0, 0},

    // Field
    .weather = 0,
    .fieldCondition = 0,
    .terrain = 0,
};

/**
 * @brief Override a single Pokemon with test scenario data
 *
 * @param mon Pokemon to override
 * @param species Species ID
 * @param level Level
 * @param ability Ability ID
 * @param item Held item ID
 * @param moves Array of 4 move IDs
 * @param hp Custom HP (0 = use max)
 * @param status Status condition
 */
static void LONG_CALL TestBattle_OverridePokemon(struct PartyPokemon *mon, u16 species, u8 level, u16 ability, u16 item, u16 moves[4], u16 hp, u32 status)
{
    PokeParaSet(mon, species, level, 31, FALSE, 0, 0, 0);
    SetMonData(mon, MON_DATA_ABILITY, &ability);
    SetMonData(mon, MON_DATA_HELD_ITEM, &item);

    // moves
    for (int i = 0; i < 4; i++) {
        if (moves[i] != MOVE_NONE) {
            u16 move = moves[i];
            SetMonData(mon, MON_DATA_MOVE1 + i, &move);

            // Set PP to max (40 is good default for testing)
            u8 pp = 40;
            SetMonData(mon, MON_DATA_MOVE1PP + i, &pp);

            // Set PP Up to 0
            u8 ppUp = 0;
            SetMonData(mon, MON_DATA_MOVE1PPUP + i, &ppUp);
        }
    }

    if (hp == 0) {
        // Use max HP
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
 * @brief Hook to override battle parties with test scenario
 *
 * This should be called after MakeTrainerPokemonParty creates the trainer's party.
 * It will override both player and trainer parties with test scenario data.
 *
 * @param bp Battle param structure
 */
void LONG_CALL TestBattle_OverrideParties(struct BATTLE_PARAM *bp)
{
    // Get test scenario - CHANGE THIS LINE to use different scenarios
    const struct TestBattleScenario *scenario = &scenario_HyperBeamRecharge;

    // Store for battle state application and AI scripting
    g_CurrentScenario = scenario;
    g_PlayerAIScriptIndex = 0;  // Reset player AI script to start from beginning
    g_EnemyAIScriptIndex = 0;   // Reset enemy AI script to start from beginning

    // Override player's first Pokemon (party[0], slot 0)
    if (bp->poke_party[0] != NULL) {
        struct PartyPokemon *playerMon = Party_GetMonByIndex(bp->poke_party[0], 0);
        if (playerMon != NULL) {
            TestBattle_OverridePokemon(playerMon,
                          scenario->playerSpecies,
                          scenario->playerLevel,
                          scenario->playerAbility,
                          scenario->playerItem,
                          (u16*)scenario->playerMoves,
                          scenario->playerHP,
                          scenario->playerStatus);
        }
    }

    // Override trainer's first Pokemon (party[1], slot 0)
    if (bp->poke_party[1] != NULL) {
        struct PartyPokemon *enemyMon = Party_GetMonByIndex(bp->poke_party[1], 0);
        if (enemyMon != NULL) {
            TestBattle_OverridePokemon(enemyMon,
                          scenario->enemySpecies,
                          scenario->enemyLevel,
                          scenario->enemyAbility,
                          scenario->enemyItem,
                          (u16*)scenario->enemyMoves,
                          scenario->enemyHP,
                          scenario->enemyStatus);
        }
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
void LONG_CALL TestBattle_ApplyBattleState(void *bw, struct BattleStruct *sp)
{
    if (g_CurrentScenario == NULL) {
        return;
    }

    // Apply player status and conditions (battler 0)
    if (g_CurrentScenario->playerStatus) {
        sp->battlemon[0].condition |= g_CurrentScenario->playerStatus;
    }

    if (g_CurrentScenario->playerCondition2) {
        sp->battlemon[0].condition2 |= g_CurrentScenario->playerCondition2;

        // Special handling for STATUS2_RECHARGE
        if (g_CurrentScenario->playerCondition2 & STATUS2_RECHARGE) {
            sp->battlemon[0].moveeffect.rechargeCount = 2;  // Skip 1 turn

            // If Pokemon has a Choice item, lock it into the first move
            if (g_CurrentScenario->playerItem == ITEM_CHOICE_BAND ||
                g_CurrentScenario->playerItem == ITEM_CHOICE_SPECS ||
                g_CurrentScenario->playerItem == ITEM_CHOICE_SCARF) {
                sp->battlemon[0].moveeffect.moveNoChoice = g_CurrentScenario->playerMoves[0];
            }
        }
    }

    if (g_CurrentScenario->playerMoveEffectFlags) {
        sp->battlemon[0].effect_of_moves |= g_CurrentScenario->playerMoveEffectFlags;
    }

    // Apply enemy status and conditions (battler 1)
    if (g_CurrentScenario->enemyStatus) {
        sp->battlemon[1].condition |= g_CurrentScenario->enemyStatus;
    }

    if (g_CurrentScenario->enemyCondition2) {
        sp->battlemon[1].condition2 |= g_CurrentScenario->enemyCondition2;

        // Special handling for STATUS2_RECHARGE
        if (g_CurrentScenario->enemyCondition2 & STATUS2_RECHARGE) {
            sp->battlemon[1].moveeffect.rechargeCount = 2;  // Skip 1 turn

            // If Pokemon has a Choice item, lock it into the first move
            if (g_CurrentScenario->enemyItem == ITEM_CHOICE_BAND ||
                g_CurrentScenario->enemyItem == ITEM_CHOICE_SPECS ||
                g_CurrentScenario->enemyItem == ITEM_CHOICE_SCARF) {
                sp->battlemon[1].moveeffect.moveNoChoice = g_CurrentScenario->enemyMoves[0];
            }
        }
    }

    if (g_CurrentScenario->enemyMoveEffectFlags) {
        sp->battlemon[1].effect_of_moves |= g_CurrentScenario->enemyMoveEffectFlags;
    }

    // Apply field conditions
    if (g_CurrentScenario->weather) {
        sp->field_condition |= g_CurrentScenario->weather;
    }

    if (g_CurrentScenario->fieldCondition) {
        sp->field_condition |= g_CurrentScenario->fieldCondition;
    }
}

/**
 * @brief AI move selection for test scenarios
 *
 * This function completely replaces the AI's move selection (ov10_0221BEF4)
 * for test battles. It always returns a scripted move from the test scenario.
 *
 * For test scenarios, we ALWAYS provide complete AI scripts, so there's no
 * need to fall back to the original AI logic.
 *
 * @param bsys BattleSystem pointer
 * @param battlerId The battler making the decision
 * @return Move slot (0-3)
 */
u8 LONG_CALL TestBattle_AISelectMove(void *bsys, u8 battlerId)
{
    int moveSlot;
    u16 scriptedMove;
    scriptedMove = TestBattle_GetAIScriptedMove(battlerId, &moveSlot);
    return moveSlot;
}

/**
 * @brief Get the next scripted move for player or enemy
 *
 * This function is called before move decision. If there's a scripted
 * move available, it returns that move and advances the script. Otherwise returns 0
 * to let normal input/AI decide.
 *
 * @param battlerId The battler making the decision (0 = player, 1 = enemy in singles)
 * @param moveSlot Output parameter - which move slot (0-3) contains the scripted move
 * @return Move ID to use, or 0 if no override
 */
u16 LONG_CALL TestBattle_GetAIScriptedMove(int battlerId, int *moveSlot)
{
    // No scenario loaded
    if (g_CurrentScenario == NULL) {
        return 0;
    }

    // Select the appropriate script and index based on battler
    const u16 *script;
    int *scriptIndex;
    const u16 *moveset;

    if (battlerId == 0) {
        // Player
        script = g_CurrentScenario->playerAIScript;
        scriptIndex = &g_PlayerAIScriptIndex;
        moveset = g_CurrentScenario->playerMoves;
    } else if (battlerId == 1) {
        // Enemy
        script = g_CurrentScenario->enemyAIScript;
        scriptIndex = &g_EnemyAIScriptIndex;
        moveset = g_CurrentScenario->enemyMoves;
    } else {
        // Doubles battles or invalid battler ID - not supported yet
        return 0;
    }

    // Script index out of bounds
    if (*scriptIndex >= 8) {
        return 0;
    }

    u16 scriptedMove = script[*scriptIndex];

    // 0 means we've reached the end of the script
    if (scriptedMove == 0) {
        // If we're past the first move, repeat the last scripted move
        if (*scriptIndex > 0) {
            scriptedMove = script[*scriptIndex - 1];
            // Don't increment - keep using this move
        } else {
            return 0;
        }
    } else {
        // Advance to next scripted move for next turn
        (*scriptIndex)++;
    }

    // Find which slot this move is in (0-3)
    for (int i = 0; i < 4; i++) {
        if (moveset[i] == scriptedMove) {
            *moveSlot = i;
            return scriptedMove;
        }
    }

    return 0;
}

#endif // DEBUG_BATTLE_SCENARIOS
