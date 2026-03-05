// Test: Trick doesn't work on Paradox Pokémon with Booster Energy, besides Raging Bolt, Gouging Fire, Iron Boulder and Iron Crown.
// https://x.com/DaWoblefet/status/1737659599480565762
{
    .battleType = BATTLE_TYPE_DOUBLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_MEOWSCARADA,
            .level = 50,
            .form = 0,
            .ability = ABILITY_OVERGROW,
            .item = ITEM_NONE,
            .moves = {MOVE_TRICK, MOVE_NONE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_RAGING_BOLT,
            .level = 50,
            .form = 0,
            .ability = ABILITY_PROTOSYNTHESIS,
            .item = ITEM_NONE,
            .moves = {MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
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
            .species = SPECIES_CHARIZARD,
            .level = 50,
            .form = 0,
            .ability = ABILITY_BLAZE,
            .item = ITEM_BOOSTER_ENERGY,
            .moves = {MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_FLUTTER_MANE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_PROTOSYNTHESIS,
            .item = ITEM_NONE,
            .moves = {MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
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
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_SECOND},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        },
        {
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        }
    },

    .enemyScript = {
        {
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        },
        {
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        }
    },

    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Meowscarada switched items with its target!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Meowscarada obtained one Booster Energy." },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Meowscarada switched items with its target!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Raging Bolt used the Booster Energy to activate Protosynthesis!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Raging Bolt's Sp. Atk was heightened!" },
    }
},
