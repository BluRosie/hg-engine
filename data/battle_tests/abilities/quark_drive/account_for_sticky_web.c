// Test: Quark Drive accounts for Sticky Web when determining the boosted stat
{
    .battleType = BATTLE_TYPE_SINGLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_TAPU_KOKO,
            .level = 50,
            .form = 0,
            .ability = ABILITY_ELECTRIC_SURGE,
            .item = ITEM_NONE,
            .moves = {MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_IRON_BUNDLE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_QUARK_DRIVE,
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
            .species = SPECIES_GALVANTULA,
            .level = 50,
            .form = 0,
            .ability = ABILITY_COMPOUND_EYES,
            .item = ITEM_NONE,
            .moves = {MOVE_STICKY_WEB, MOVE_SPLASH, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE}
    },

    .playerScript = {
        {
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
            {ACTION_SWITCH_SLOT_1, 0},
            {ACTION_NONE, 0},
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
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_NONE, 0},
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

    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_ELECTRIC_TERRAIN },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_CAUGHT_IN_STICKY_WEB },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_ELECTRIC_TERRAIN_ACTIVATE_ABILITY },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_HIGHEST_STAT_WAS_HEIGHTENED },
    }
},