#include "../include/battle.h"
#include "../include/test_battle_scenario.h"
#include "../include/constants/species.h"
#include "../include/constants/moves.h"
#include "../include/constants/item.h"
#include "../include/constants/ability.h"

const struct TestBattleScenario BattleTests[] = {
#ifdef DEBUG_BATTLE_SCENARIOS
    [0] = {
        .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_SANDSTORM,
        .fieldCondition = 0,
        .terrain = MISTY_TERRAIN,
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
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE}
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
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE}
        },
        .playerScript = {
            {
                {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},
                {ACTION_SWITCH_SLOT_1, 0},
                {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            },
            {
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            }
        },
        .enemyScript = {
            {
                {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
                {ACTION_SWITCH_SLOT_1, 0},
                {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            },
            {
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            }
        }
    },
    [1] = {
        .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_RAIN,
        .fieldCondition = 0,
        .terrain = ELECTRIC_TERRAIN,
        .playerParty = {
            {
                .species = SPECIES_RAICHU,
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
                .species = SPECIES_SHUCKLE,
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
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE}
        },
        .enemyParty = {
            {
                .species = SPECIES_GYARADOS,
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
                .species = SPECIES_LUNALA,
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
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE},
            {.species = SPECIES_NONE}
        },
        .playerScript = {
            {
                {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},
                {ACTION_SWITCH_SLOT_1, 0},
                {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            },
            {
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            }
        },
        .enemyScript = {
            {
                {ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST},
                {ACTION_SWITCH_SLOT_1, 0},
                {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            },
            {
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
                {ACTION_NONE, 0},
            }
        }
    }
#endif // DEBUG_BATTLE_SCENARIOS
};
