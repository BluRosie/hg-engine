#include "../include/types.h"
#include "../include/config.h"

#ifdef DEBUG_BATTLE_SCENARIOS

#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

#define MAX_BATTLERS_PER_SIDE 2
#define BATTLER_PLAYER_LEFT   0
#define BATTLER_ENEMY_LEFT    1
#define BATTLER_PLAYER_RIGHT  2
#define BATTLER_ENEMY_RIGHT   3

#define AI_SCRIPT_MAX_MOVES   8
#define MOVE_SLOT_1           0
#define MOVE_SLOT_2           1
#define MOVE_SLOT_3           2
#define MOVE_SLOT_4           3

#define ACTIVE_TEST_SCENARIO scenario_DoublesTest

// Store current scenario for battle state application and AI scripting
static const struct TestBattleScenario *g_CurrentScenario = NULL;
// Track script index for each battler (0-3)
static int g_AIScriptIndex[4] = {0, 0, 0, 0};

struct TestBattlePokemon {
    u16 species;
    u8 level;
    u8 form;
    u16 ability;
    u16 item;
    u16 moves[4];
    u16 hp;                            // 0 = full HP
    u32 status;                        // STATUS_BURN, STATUS_POISON, STATUS_SLEEP, etc.
    u32 condition2;                    // STATUS2_RECHARGE, STATUS2_CONFUSION, etc. (can be OR'd)
    u32 moveEffectFlags;               // MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE, etc. (can be OR'd)
    u8 aiScript[AI_SCRIPT_MAX_MOVES];  // Scripted moves. Final move repeats. 0 species = skip this mon
    u8 aiTargets[AI_SCRIPT_MAX_MOVES]; // Target for each scripted move (battler ID: 0-3)
};

struct TestBattleScenario {
    struct TestBattlePokemon playerParty[MAX_BATTLERS_PER_SIDE];  // Player's Pokemon (singles = [0] only)
    struct TestBattlePokemon enemyParty[MAX_BATTLERS_PER_SIDE];   // Enemy's Pokemon (singles = [0] only)

    // Field conditions (shared by all battlers)
    u32 weather;                // WEATHER_RAIN, WEATHER_SANDSTORM, etc.
    u32 fieldCondition;         // FIELD_CONDITION_TRICK_ROOM_INIT, etc.
    u8 terrain;                 // Terrain type
};

static const struct TestBattleScenario scenario_SinglesTest = {
    .playerParty = {
        {
            .species = SPECIES_ONIX,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SNOW_WARNING,
            .item = ITEM_LEFTOVERS,
            .moves = {MOVE_TACKLE, MOVE_FAKE_TEARS, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_2, MOVE_SLOT_2, 
                         MOVE_SLOT_2, MOVE_SLOT_2,
                         MOVE_SLOT_1, MOVE_SLOT_1, 
                         MOVE_SLOT_1, MOVE_SLOT_1},
            .aiTargets = {BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT},
        },
        {
            .species = SPECIES_NONE,
        }
    },
    .enemyParty = {
        {
            .species = SPECIES_STEELIX,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SAND_STREAM,
            .item = ITEM_LEFTOVERS,
            .moves = {MOVE_NASTY_PLOT, MOVE_QUICK_ATTACK, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_1, MOVE_SLOT_1, 
                         MOVE_SLOT_1, MOVE_SLOT_1,
                         MOVE_SLOT_2, MOVE_SLOT_2, 
                         MOVE_SLOT_2, MOVE_SLOT_2},
            .aiTargets = {BATTLER_PLAYER_LEFT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_LEFT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_LEFT},
        },
        {
            .species = SPECIES_NONE,
        }
    },
    // Field
    .weather = 0,
    .fieldCondition = 0,
    .terrain = 0,
};

static const struct TestBattleScenario scenario_DoublesTest = {
    .playerParty = {
        {
            .species = SPECIES_ABOMASNOW,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SNOW_WARNING,
            .item = ITEM_LEFTOVERS,
            .moves = {MOVE_BLIZZARD, MOVE_GIGA_DRAIN, MOVE_ICE_SHARD, MOVE_PROTECT},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_3, MOVE_SLOT_3, 
                         MOVE_SLOT_4, MOVE_SLOT_3, 
                         MOVE_SLOT_3, MOVE_SLOT_3, 
                         MOVE_SLOT_3, MOVE_SLOT_3},
            .aiTargets = {BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_RIGHT},
        },
        {
            .species = SPECIES_ROTOM,
            .level = 50,
            .form = 0,
            .ability = ABILITY_LEVITATE,
            .item = ITEM_SITRUS_BERRY,
            .moves = {MOVE_WILL_O_WISP, MOVE_HYDRO_PUMP, MOVE_THUNDERBOLT, MOVE_VOLT_SWITCH},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_1, MOVE_SLOT_2, 
                         MOVE_SLOT_3, MOVE_SLOT_3,
                         MOVE_SLOT_3, MOVE_SLOT_3,
                         MOVE_SLOT_3, MOVE_SLOT_3},
            .aiTargets = {BATTLER_ENEMY_LEFT, BATTLER_ENEMY_LEFT,
                          BATTLER_ENEMY_RIGHT, BATTLER_ENEMY_LEFT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_LEFT,
                          BATTLER_ENEMY_LEFT, BATTLER_ENEMY_LEFT},
        }
    },
    .enemyParty = {
        {
            .species = SPECIES_TYRANITAR,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SAND_STREAM,
            .item = ITEM_CHOICE_BAND,
            .moves = {MOVE_ROCK_SLIDE, MOVE_CRUNCH, MOVE_EARTHQUAKE, MOVE_STONE_EDGE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_1, MOVE_SLOT_2, 
                         MOVE_SLOT_3, MOVE_SLOT_4,
                         MOVE_SLOT_3, MOVE_SLOT_3, 
                         MOVE_SLOT_3, MOVE_SLOT_3},
            .aiTargets = {BATTLER_PLAYER_LEFT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_LEFT,
                          BATTLER_PLAYER_LEFT, BATTLER_PLAYER_LEFT},
        },
        {
            .species = SPECIES_EXCADRILL,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SAND_RUSH,
            .item = ITEM_FOCUS_SASH,
            .moves = {MOVE_SWORDS_DANCE, MOVE_EARTHQUAKE, MOVE_ROCK_SLIDE, MOVE_IRON_HEAD},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .aiScript = {MOVE_SLOT_1, MOVE_SLOT_2, 
                         MOVE_SLOT_2, MOVE_SLOT_4, 
                         MOVE_SLOT_3, MOVE_SLOT_3,
                         MOVE_SLOT_3, MOVE_SLOT_3},
            .aiTargets = {BATTLER_ENEMY_RIGHT, BATTLER_PLAYER_LEFT, 
                          BATTLER_PLAYER_RIGHT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_RIGHT, BATTLER_PLAYER_RIGHT,
                          BATTLER_PLAYER_RIGHT, BATTLER_PLAYER_RIGHT},
        }
    },
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
 * @brief Hook to override battle parties with test scenario
 *
 * This should be called after MakeTrainerPokemonParty creates the trainer's party.
 * It will override both player and trainer parties with test scenario data.
 *
 * @param bp Battle param structure
 */
void LONG_CALL TestBattle_OverrideParties(struct BATTLE_PARAM *bp)
{
    // Get active test scenario (defined at top of file)
    const struct TestBattleScenario *scenario = &ACTIVE_TEST_SCENARIO;

    // Store for battle state application and AI scripting
    g_CurrentScenario = scenario;

    // Reset all AI script indices
    for (int i = 0; i < 4; i++) {
        g_AIScriptIndex[i] = 0;
    }

    // Detect if this is a doubles battle (both slots have Pokémon)
    int isDoubles = (scenario->playerParty[1].species != 0 || scenario->enemyParty[1].species != 0);

    // Count enemy Pokemon for this scenario
    int enemyCount = 0;
    for (int i = 0; i < MAX_BATTLERS_PER_SIDE; i++) {
        if (scenario->enemyParty[i].species != 0) {
            enemyCount++;
        }
    }

    // Set battle type: Trainer battle, and doubles if applicable
    if (isDoubles) {
        bp->fight_type = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLE; // no partner
    } else {
        bp->fight_type = BATTLE_TYPE_TRAINER;
    }

    // Set enemy trainer Pokemon count and ensure party has enough slots
    if (enemyCount > 0) {
        bp->trainer_data[1].poke_count = enemyCount;
        // Pre-populate all needed slots with dummy mons
        if (bp->poke_party[1] != NULL) {
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

    // Override player's Pokemon (party 0)
    for (int slot = 0; slot < MAX_BATTLERS_PER_SIDE; slot++) {
        const struct TestBattlePokemon *mon = &scenario->playerParty[slot];

        // If species is 0, skip this slot (no Pokemon)
        if (mon->species == 0) {
            continue;
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
    }

    // Override enemy's Pokemon (party 1)
    for (int slot = 0; slot < MAX_BATTLERS_PER_SIDE; slot++) {
        const struct TestBattlePokemon *mon = &scenario->enemyParty[slot];

        // If species is 0, skip this slot (no Pokemon)
        if (mon->species == 0) {
            continue;
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
void LONG_CALL TestBattle_ApplyBattleState(void *bw, struct BattleStruct *sp)
{
    if (g_CurrentScenario == NULL) {
        return;
    }

    // Apply player Pokemon status and conditions (battlers 0-1 in doubles, 0 in singles)
    for (int slot = 0; slot < MAX_BATTLERS_PER_SIDE; slot++) {
        const struct TestBattlePokemon *mon = &g_CurrentScenario->playerParty[slot];
        int battlerId = (slot == 0) ? BATTLER_PLAYER_LEFT : BATTLER_PLAYER_RIGHT;

        // Skip if no Pokemon in this slot
        if (mon->species == 0) {
            continue;
        }

        // Apply status
        if (mon->status) {
            sp->battlemon[battlerId].condition |= mon->status;
        }

        // Apply condition2
        if (mon->condition2) {
            sp->battlemon[battlerId].condition2 |= mon->condition2;

            // Special handling for STATUS2_RECHARGE
            if (mon->condition2 & STATUS2_RECHARGE) {
                sp->battlemon[battlerId].moveeffect.rechargeCount = 2;  // Skip 1 turn

                // If Pokemon has a Choice item, lock it into the first move
                if (mon->item == ITEM_CHOICE_BAND ||
                    mon->item == ITEM_CHOICE_SPECS ||
                    mon->item == ITEM_CHOICE_SCARF) {
                    sp->battlemon[battlerId].moveeffect.moveNoChoice = mon->moves[0];
                }
            }
        }

        // Apply move effect flags
        if (mon->moveEffectFlags) {
            sp->battlemon[battlerId].effect_of_moves |= mon->moveEffectFlags;
        }
    }

    // Apply enemy Pokemon status and conditions (battlers 2-3 in doubles, 1 in singles)
    for (int slot = 0; slot < MAX_BATTLERS_PER_SIDE; slot++) {
        const struct TestBattlePokemon *mon = &g_CurrentScenario->enemyParty[slot];
        int battlerId = (slot == 0) ? BATTLER_ENEMY_LEFT : BATTLER_ENEMY_RIGHT;

        // Skip if no Pokemon in this slot
        if (mon->species == 0) {
            continue;
        }

        // Apply status
        if (mon->status) {
            sp->battlemon[battlerId].condition |= mon->status;
        }

        // Apply condition2
        if (mon->condition2) {
            sp->battlemon[battlerId].condition2 |= mon->condition2;

            // Special handling for STATUS2_RECHARGE
            if (mon->condition2 & STATUS2_RECHARGE) {
                sp->battlemon[battlerId].moveeffect.rechargeCount = 2;  // Skip 1 turn

                // If Pokemon has a Choice item, lock it into the first move
                if (mon->item == ITEM_CHOICE_BAND ||
                    mon->item == ITEM_CHOICE_SPECS ||
                    mon->item == ITEM_CHOICE_SCARF) {
                    sp->battlemon[battlerId].moveeffect.moveNoChoice = mon->moves[0];
                }
            }
        }

        // Apply move effect flags
        if (mon->moveEffectFlags) {
            sp->battlemon[battlerId].effect_of_moves |= mon->moveEffectFlags;
        }
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
    debug_printf("[TestBattle_GetAIScriptedMove] battler=%d\n", battlerId);
    // Default
    *moveSlot = (u8)0;
    *target = (u8)0;

    // No scenario loaded
    if (g_CurrentScenario == NULL) {
        return;
    }

    // Validate battler ID
    if (battlerId < 0 || battlerId >= 4) {
        return;
    }

    const struct TestBattlePokemon *mon = NULL;

    // Map battler ID (0–3) to scenario party + slot
    switch (battlerId) {
    case BATTLER_PLAYER_LEFT:   // 0
        mon = &g_CurrentScenario->playerParty[0];
        break;
    case BATTLER_ENEMY_LEFT:    // 1
        mon = &g_CurrentScenario->enemyParty[0];
        break;
    case BATTLER_PLAYER_RIGHT:  // 2
        mon = &g_CurrentScenario->playerParty[1];
        break;
    case BATTLER_ENEMY_RIGHT:   // 3
        mon = &g_CurrentScenario->enemyParty[1];
        break;
    default:
        return;
    }

    const u16 *moveScript = mon->aiScript;
    const u8 *targetScript = mon->aiTargets;
    const u16 *moveset = mon->moves;

    int *scriptIndex = &g_AIScriptIndex[battlerId];

    if (*scriptIndex >= AI_SCRIPT_MAX_MOVES) {
        return;
    }

    u8 scriptedMove = moveScript[*scriptIndex];
    u8 scriptedTarget = targetScript[*scriptIndex];
    debug_printf("[TestBattle_GetAIScriptedMove] battler=%d, scriptIndex=%d, scriptedMove=%d, scriptedTarget=%d\n", battlerId, *scriptIndex, scriptedMove, scriptedTarget);

    *moveSlot = scriptedMove;
    *target = scriptedTarget;
    (*scriptIndex)++;

}

u8 LONG_CALL TestBattle_AISelectMove(struct BattleSystem *bsys, int battler) {
    int moveSlot = 0;
    int target = 0;
    TestBattle_GetAIScriptedMove(battler, &moveSlot, &target);
    bsys->sp->aiWorkTable.ai_dir_select_client[battler] = target;
    return (u8)moveSlot;
}

#endif // DEBUG_BATTLE_SCENARIOS
