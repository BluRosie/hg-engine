// Test: Protosynthesis either Attack or Special Attack only, not both.
{
    .battleType = BATTLE_TYPE_SINGLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_ROARING_MOON,
            .level = 50,
            .form = 0,
            .ability = ABILITY_PROTOSYNTHESIS,
            .item = ITEM_NONE,
            .moves = {MOVE_SUNNY_DAY, MOVE_SCRATCH, MOVE_ROUND, MOVE_NONE},
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

    .enemyParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SHADOW_TAG,
            .item = ITEM_NONE,
            .moves = {MOVE_SUNNY_DAY, MOVE_SPLASH, MOVE_NONE, MOVE_NONE},
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
            {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},
            {ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST},
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
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
            {ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST},
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
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 31, 31, 32, 32, 32, 33, 33, 34, 34, 34, 35, 35, 35, 36, 36, 37 } }, // Scratch no Sun
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 22, 23, 23, 23, 24, 24, 24, 24, 25, 25, 25, 25, 26, 26, 26, 27 } }, // Round no Sun
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 40, 41, 41, 42, 42, 43, 43, 44, 44, 45, 45, 46, 46, 47, 47, 48 } }, // Scratch with Sun
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 22, 23, 23, 23, 24, 24, 24, 24, 25, 25, 25, 25, 26, 26, 26, 27 } }, // Round with Sun
    }
},