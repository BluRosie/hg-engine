// Test: Orichalcum Pulse does not boost physical moves if holder has Utility Umbrella
{
    .battleType = BATTLE_TYPE_SINGLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_TORKOAL,
            .level = 50,
            .form = 0,
            .ability = ABILITY_DROUGHT,
            .item = ITEM_NONE,
            .moves = {MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_KORAIDON,
            .level = 50,
            .form = 0,
            .ability = ABILITY_ORICHALCUM_PULSE,
            .item = ITEM_UTILITY_UMBRELLA,
            .moves = {MOVE_SCRATCH, MOVE_NONE, MOVE_NONE, MOVE_NONE},
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
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = {MOVE_SPLASH, MOVE_RECOVER, MOVE_NONE, MOVE_NONE},
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
            {ACTION_SWITCH_SLOT_1, 0},
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},
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
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_ORICHALCUM_PULSE_SUN_ALREADY_UP },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 30, 30, 31, 31, 32, 32, 32, 33, 33, 33, 34, 34, 34, 35, 35, 36 } },
    }
},