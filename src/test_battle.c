#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"

#ifdef DEBUG_BATTLE_SCENARIOS

#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"

#define MAX_BATTLERS_PER_SIDE 2
#define MAX_PARTY_SIZE 6
#define BATTLER_PLAYER_FIRST  0
#define BATTLER_ENEMY_FIRST   1
#define BATTLER_PLAYER_SECOND 2
#define BATTLER_ENEMY_SECOND  3

#define AI_SCRIPT_MAX_MOVES   8
#define ACTION_MOVE_SLOT_1   0
#define ACTION_MOVE_SLOT_2   1
#define ACTION_MOVE_SLOT_3   2
#define ACTION_MOVE_SLOT_4   3
#define ACTION_SWITCH_SLOT_0 4
#define ACTION_SWITCH_SLOT_1 5
#define ACTION_SWITCH_SLOT_2 6
#define ACTION_SWITCH_SLOT_3 7
#define ACTION_SWITCH_SLOT_4 8
#define ACTION_SWITCH_SLOT_5 9

#define ACTIVE_TEST_SCENARIO scenario_SinglesTest

// Store current scenario for battle state application and AI scripting
static const struct TestBattleScenario *g_CurrentScenario = NULL;
// Track script index for each battler (0-3)
static int g_AIScriptIndex[4] = {0, 0, 0, 0};

// Battle action structure
struct BattleAction {
    u8 action;  // 0-3 = move slot, 4-9 = switch to party slot (action - 4)
    u8 target;  // Battler ID (0-3)
};

struct TestBattlePokemon {
    u16 species;
    u8 level;
    u8 form;
    u16 ability;
    u16 item;
    u16 moves[4];
    u16 hp;              // 0 = full HP
    u32 status;          // STATUS_BURN, STATUS_POISON, STATUS_SLEEP, etc.
    u32 condition2;      // STATUS2_RECHARGE, STATUS2_CONFUSION, etc. (can be OR'd)
    u32 moveEffectFlags; // MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE, etc. (can be OR'd)
};

struct TestBattleScenario {
    u32 battleType;                                        // BATTLE_TYPE_SINGLE, BATTLE_TYPE_DOUBLE, etc.
    struct TestBattlePokemon playerParty[MAX_PARTY_SIZE];  // Player party
    struct TestBattlePokemon enemyParty[MAX_PARTY_SIZE];   // Enemy's party

    struct BattleAction playerScript[MAX_BATTLERS_PER_SIDE][AI_SCRIPT_MAX_MOVES];
    struct BattleAction enemyScript[MAX_BATTLERS_PER_SIDE][AI_SCRIPT_MAX_MOVES];

    // Field conditions
    u32 weather;        // WEATHER_RAIN, WEATHER_SANDSTORM, etc.
    u32 fieldCondition; // FIELD_CONDITION_TRICK_ROOM_INIT, etc.
    u8 terrain;         // GRASSY_TERRAIN, MISTY_TERRAIN, etc.
};

static const struct TestBattleScenario scenario_SinglesTest = {
    .battleType = BATTLE_TYPE_SINGLE,
    .playerParty = {
        {
            .species = SPECIES_ONIX,
            .level = 50,
            .form = 0,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = {MOVE_TACKLE, MOVE_FAKE_TEARS, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_GEODUDE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_ROCK_HEAD,
            .item = ITEM_NONE,
            .moves = {MOVE_ROCK_THROW, MOVE_EARTHQUAKE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_GRAVELER,
            .level = 50,
            .form = 0,
            .ability = ABILITY_ROCK_HEAD,
            .item = ITEM_NONE,
            .moves = {MOVE_ROCK_SLIDE, MOVE_MAGNITUDE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_GOLEM,
            .level = 50,
            .form = 0,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = {MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_NONE,
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
            .ability = ABILITY_STURDY,
            .item = ITEM_LEFTOVERS,
            .moves = {MOVE_NASTY_PLOT, MOVE_QUICK_ATTACK, MOVE_WILL_O_WISP, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_MACHOP,
            .level = 50,
            .form = 0,
            .ability = ABILITY_GUTS,
            .item = ITEM_NONE,
            .moves = {MOVE_KARATE_CHOP, MOVE_SEISMIC_TOSS, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_MACHOKE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_GUTS,
            .item = ITEM_NONE,
            .moves = {MOVE_CROSS_CHOP, MOVE_DYNAMIC_PUNCH, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_MACHAMP,
            .level = 50,
            .form = 0,
            .ability = ABILITY_NO_GUARD,
            .item = ITEM_NONE,
            .moves = {MOVE_DYNAMIC_PUNCH, MOVE_STONE_EDGE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        }
    },
    .playerScript = {
        { // Battler 0 (PLAYER_FIRST)
            {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},
            {ACTION_SWITCH_SLOT_2, 0},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
        },
        { // Battler 1 (PLAYER_SECOND)
        }
    },
    .enemyScript = {
        { // Battler 0 (ENEMY_FIRST)
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_SWITCH_SLOT_1, 0},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
        },
        { // Battler 1 (ENEMY_SECOND)
        }
    },
    // Field
    .weather = WEATHER_SANDSTORM,
    .fieldCondition = 0,
    .terrain = MISTY_TERRAIN,
};

static const struct TestBattleScenario scenario_DoublesTest = {
    .battleType = BATTLE_TYPE_DOUBLE,
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
        },
        {
            .species = SPECIES_ROTOM,
            .level = 50,
            .form = 2,
            .ability = ABILITY_LEVITATE,
            .item = ITEM_SITRUS_BERRY,
            .moves = {MOVE_WILL_O_WISP, MOVE_HYDRO_PUMP, MOVE_THUNDERBOLT, MOVE_VOLT_SWITCH},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        }
    },
    .enemyParty = {
        {
            .species = SPECIES_TYRANITAR,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SAND_STREAM,
            .item = ITEM_SITRUS_BERRY,
            .moves = {MOVE_ROCK_SLIDE, MOVE_CRUNCH, MOVE_EARTHQUAKE, MOVE_STONE_EDGE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
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
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        },
        {
            .species = SPECIES_NONE,
        }
    },
    // Player script: (action, target)
    .playerScript = {
        { // Battler 0 (PLAYER_FIRST) - Abomasnow
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
        },
        { // Battler 1 (PLAYER_SECOND) - Rotom
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_SECOND},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
        }
    },
    // Enemy script: (action, target)
    .enemyScript = {
        { // Battler 0 (ENEMY_FIRST) - Tyranitar
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_SECOND},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
        },
        { // Battler 1 (ENEMY_SECOND) - Excadrill
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_4, BATTLER_PLAYER_SECOND},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
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
    // Get active test scenario (defined at top of file)
    const struct TestBattleScenario *scenario = &ACTIVE_TEST_SCENARIO;
    g_CurrentScenario = scenario;

    for (int i = 0; i < 4; i++) {
        g_AIScriptIndex[i] = 0;
    }

    int enemyCount = 0;
    for (int i = 0; i < MAX_BATTLERS_PER_SIDE; i++) {
        if (scenario->enemyParty[i].species != 0) {
            enemyCount++;
        }
    }

    // Set battle type from scenario
    bp->fight_type = BATTLE_TYPE_TRAINER | scenario->battleType;

    // Override player's Pokemon (party 0)
    int playerCount = 0;
    for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
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
    // Set party count to match scenario
    if (bp->poke_party[0] != NULL) {
        bp->poke_party[0]->count = playerCount;
    }

    // Override enemy's Pokemon (party 1)
    if (enemyCount > 0) {
        bp->trainer_data[1].poke_count = enemyCount;

        // Pre-populate all needed slots with dummy mons
        if (bp->poke_party[1] != NULL) {
            // Directly set party count to ensure it matches
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
    for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        const struct TestBattlePokemon *mon = &scenario->enemyParty[slot];

        if (mon->species == 0) {
            break;  // Stop at first empty slot
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

    // In doubles, we need to ensure both battlers are properly linked to party slots
    int isDoubles = (g_CurrentScenario->battleType & BATTLE_TYPE_DOUBLE);
    if (isDoubles) {
        // Player battlers
        sp->sel_mons_no[BATTLER_PLAYER_FIRST] = 0;
        if (g_CurrentScenario->playerParty[1].species != 0) {
            sp->sel_mons_no[BATTLER_PLAYER_SECOND] = 1;
        }

        // Enemy battlers
        sp->sel_mons_no[BATTLER_ENEMY_FIRST] = 0;
        if (g_CurrentScenario->enemyParty[1].species != 0) {
            sp->sel_mons_no[BATTLER_ENEMY_SECOND] = 1;
        }
    }

    // Apply player Pokemon status and conditions (battlers 0-1 in doubles, 0 in singles)
    for (int slot = 0; slot < MAX_BATTLERS_PER_SIDE; slot++) {
        const struct TestBattlePokemon *mon = &g_CurrentScenario->playerParty[slot];
        int battlerId = (slot == 0) ? BATTLER_PLAYER_FIRST : BATTLER_PLAYER_SECOND;

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
        int battlerId = (slot == 0) ? BATTLER_ENEMY_FIRST : BATTLER_ENEMY_SECOND;

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
    debug_printf("[TestBattle_GetAIScriptedMove] CALLED for battler=%d\n", battlerId);
    // Default
    *moveSlot = (u8)0;
    *target = (u8)0;

    // No scenario loaded
    if (g_CurrentScenario == NULL) {
        debug_printf("[TestBattle_GetAIScriptedMove] No scenario loaded\n");
        return;
    }

    // Validate battler ID
    if (battlerId < 0 || battlerId >= 4) {
        debug_printf("[TestBattle_GetAIScriptedMove] Invalid battler ID: %d\n", battlerId);
        return;
    }

    // Determine which script array and index to use
    const struct BattleAction *script;
    int battlerIndex = (battlerId == BATTLER_PLAYER_FIRST || battlerId == BATTLER_ENEMY_FIRST) ? 0 : 1;

    if (battlerId == BATTLER_PLAYER_FIRST || battlerId == BATTLER_PLAYER_SECOND) {
        script = g_CurrentScenario->playerScript[battlerIndex];
    } else {
        script = g_CurrentScenario->enemyScript[battlerIndex];
    }

    int *scriptIndex = &g_AIScriptIndex[battlerId];

    if (*scriptIndex >= AI_SCRIPT_MAX_MOVES) {
        debug_printf("[TestBattle_GetAIScriptedMove] Script index %d >= max %d\n", *scriptIndex, AI_SCRIPT_MAX_MOVES);
        return;
    }

    struct BattleAction action = script[*scriptIndex];
    debug_printf("[TestBattle_GetAIScriptedMove] battler=%d, scriptIndex=%d, action=%d, target=%d\n", battlerId, *scriptIndex, action.action, action.target);

    if (action.action <= ACTION_MOVE_SLOT_4) {
        // Move action
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
    int moveSlot = 0;
    int target = 0;
    TestBattle_GetAIScriptedMove(battler, &moveSlot, &target);
    bsys->sp->waza_no_pos[battler] = moveSlot;
    bsys->sp->aiWorkTable.ai_dir_select_client[battler] = target;

    debug_printf("[TestBattle_AISelectMove] Set moveSlot=%d, target=%d for battler=%d\n", moveSlot, target, battler);
    return (u8)moveSlot;
}

/**
 * @brief AI command picking for test battles - decides whether to fight or switch
 *
 * @param bsys Battle system pointer
 * @param battler The battler making the decision
 * @return 1 for FIGHT, 2 for ITEM, 3 for SWITCH (matches original AI function)
 */
int LONG_CALL TestBattle_AIPickCommand(struct BattleSystem *bsys, int battler) {
    debug_printf("[TestBattle_AIPickCommand] *** ENTRY *** battler=%d bsys=%p\n", battler, bsys);

    // Only handle enemy AI, not player
    if (battler == BATTLER_PLAYER_FIRST || battler == BATTLER_PLAYER_SECOND) {
        debug_printf("[TestBattle_AIPickCommand] Player battler, returning FIGHT\n");
        return 1;  // FIGHT
    }

    if (g_CurrentScenario == NULL) {
        debug_printf("[TestBattle_AIPickCommand] No scenario, returning FIGHT\n");
        return 1;  // FIGHT
    }

    // Add safety check for bsys and sp
    if (bsys == NULL || bsys->sp == NULL) {
        debug_printf("[TestBattle_AIPickCommand] Invalid bsys or sp pointer!\n");
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

    int scriptIndex = g_AIScriptIndex[battler];

    if (scriptIndex >= AI_SCRIPT_MAX_MOVES) {
        debug_printf("[TestBattle_AIPickCommand] Script exhausted, returning FIGHT\n");
        return 1;  // FIGHT
    }

    // Peek at the next action without consuming it
    struct BattleAction action = script[scriptIndex];

    if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
        // This is a switch action
        u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
        bsys->sp->ai_reshuffle_sel_mons_no[battler] = partySlot;

        // Consume the switch action by incrementing the script index
        g_AIScriptIndex[battler]++;

        debug_printf("[TestBattle_AIPickCommand] Switching battler %d to party slot %d\n", battler, partySlot);
        debug_printf("[TestBattle_AIPickCommand] *** RETURNING 3 (SWITCH) ***\n");
        return 3;  // SWITCH
    }

    // Not a switch action - just return FIGHT and let TestBattle_AISelectMove handle the move
    debug_printf("[TestBattle_AIPickCommand] Move action, returning FIGHT\n");
    debug_printf("[TestBattle_AIPickCommand] *** RETURNING 1 (FIGHT) ***\n");
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
    // At SELECTION_SCREEN_INPUT (during input phase)
    if (ctx->server_seq_no != CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT)
    {
        return;  // Not in input phase
    }

    // Only run once per turn - check if com_seq_no is at the start
    if (ctx->com_seq_no[0] != SSI_STATE_SELECT_COMMAND_INIT)
    {
        return;  // Already processed or not ready
    }

    if (g_CurrentScenario == NULL) {
        return;
    }

    // Handle battler 0 (PLAYER_FIRST)
    const struct BattleAction *script0 = g_CurrentScenario->playerScript[0];
    int scriptIndex0 = g_AIScriptIndex[0];

    if (scriptIndex0 < AI_SCRIPT_MAX_MOVES) {
        struct BattleAction action = script0[scriptIndex0];

        if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
            // Switch action
            u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
            ctx->playerActions[0][0] = CONTROLLER_COMMAND_POKEMON_INPUT;
            ctx->playerActions[0][1] = partySlot;
            ctx->playerActions[0][2] = 0;
            ctx->playerActions[0][3] = SELECT_POKEMON_COMMAND;
            ctx->reshuffle_sel_mons_no[0] = partySlot;
            ctx->com_seq_no[0] = SSI_STATE_END;
            ctx->ret_seq_no[0] = SSI_STATE_13;
            g_AIScriptIndex[0]++;
            debug_printf("[TestBattle_autoSelectPlayerMoves] Battler 0: SWITCH to party slot %d\n", partySlot);
        } else {
            // Move action
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
            debug_printf("[TestBattle_autoSelectPlayerMoves] Battler 0: moveSlot=%d, target=%d\n", moveSlot, target);
        }
    }

    if (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLE) {
        // Handle battler 2 (PLAYER_SECOND)
        const struct BattleAction *script1 = g_CurrentScenario->playerScript[1];
        int scriptIndex2 = g_AIScriptIndex[2];

        if (scriptIndex2 < AI_SCRIPT_MAX_MOVES) {
            struct BattleAction action = script1[scriptIndex2];

            if (action.action >= ACTION_SWITCH_SLOT_0 && action.action <= ACTION_SWITCH_SLOT_5) {
                // Switch action
                u8 partySlot = action.action - ACTION_SWITCH_SLOT_0;
                ctx->playerActions[2][0] = CONTROLLER_COMMAND_POKEMON_INPUT;
                ctx->playerActions[2][1] = partySlot;
                ctx->playerActions[2][2] = 0;
                ctx->playerActions[2][3] = SELECT_POKEMON_COMMAND;
                ctx->reshuffle_sel_mons_no[2] = partySlot;
                ctx->com_seq_no[2] = SSI_STATE_END;
                ctx->ret_seq_no[2] = SSI_STATE_13;
                g_AIScriptIndex[2]++;
                debug_printf("[TestBattle_autoSelectPlayerMoves] Battler 2: SWITCH to party slot %d\n", partySlot);
            } else {
                // Move action
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
                debug_printf("[TestBattle_autoSelectPlayerMoves] Battler 2: moveSlot=%d, target=%d\n", moveSlot, target);
            }
        }
    }
}

#endif // DEBUG_BATTLE_SCENARIOS
