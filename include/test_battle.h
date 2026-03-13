#include "debug.h"

#ifndef TEST_BATTLE_H
#define TEST_BATTLE_H

#include "types.h"
#include "battle.h"

#define AI_SCRIPT_MAX_MOVES 8

#define TEST_BATTLE_MESSAGE_LEN 128
#define TEST_BATTLE_MESSAGE_FILE_ID 197

#define STATE_SCRIPT_IDX_MASK       0xF
#define STATE_COMPLETE_BIT          (1 << 20)
#define STATE_HAS_MORE_BIT          (1 << 21)
#define STATE_TEST_INDEX_SHIFT      22
#define STATE_TEST_INDEX_MASK       0x3FF

// Battle action for scripted tests
struct PACKED BattleAction {
    u8 action;  // 0-3 = move slot, 4-9 = switch to party slot (action - 4)
    u8 target;  // Battler ID (0-3)
};

// Pokemon definition for test scenarios
struct PACKED TestBattlePokemon {
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

enum ExpectationType {
    EXPECTATION_TYPE_HP_BAR = 1,
    EXPECTATION_TYPE_MESSAGE,
    EXPECTATION_TYPE_ATTACK_MESSAGE,
    EXPECTATION_OVERWORLD_FORM,
};

union ExpectationValue {
    u32 hpTaken[16];
    u32 hpRecovered[16];
    char message[TEST_BATTLE_MESSAGE_LEN];
    u16 formID;
};

struct Expectations {
    enum ExpectationType expectationType;
    u8 battlerIDOrPartySlot;
    union ExpectationValue expectationValue;
};

#define MAX_EXPECTATIONS 8

// Complete test scenario definition
struct PACKED TestBattleScenario {
    u32 battleType;                           // BATTLE_TYPE_SINGLE, BATTLE_TYPE_DOUBLE, etc.
    u32 weather;                              // WEATHER_RAIN, WEATHER_SANDSTORM, etc.
    u32 fieldCondition;                       // FIELD_CONDITION_TRICK_ROOM_INIT, etc.
    u8 terrain;                               // GRASSY_TERRAIN, MISTY_TERRAIN, etc.
    u8 _padding[3];                           // Compiler adds 3 bytes padding to align struct to 4-byte boundary
    struct TestBattlePokemon playerParty[6];  // Player party
    struct TestBattlePokemon enemyParty[6];   // Enemy's party

    struct BattleAction playerScript[2][AI_SCRIPT_MAX_MOVES];
    struct BattleAction enemyScript[2][AI_SCRIPT_MAX_MOVES];

    struct Expectations expectations[MAX_EXPECTATIONS];

    u8 expectationPassCount;
    u8 knownFailing;
};

#define FULL_HP 0

// Action type constants
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
#define ACTION_NONE          0xFF  // Sentinel value to mark end of script

// Battler position constants
#define BATTLER_PLAYER_FIRST  0
#define BATTLER_ENEMY_FIRST   1
#define BATTLER_PLAYER_SECOND 2
#define BATTLER_ENEMY_SECOND  3

#define TEST_CASE_PASS          (-1)
#define TEST_CASE_FAIL          (-2)
#define TEST_CASE_KNOWN_FAILING (-3)

#ifdef DEBUG_BATTLE_SCENARIOS
struct TestBattleScenario *LONG_CALL TestBattle_GetCurrentScenario();
void LONG_CALL SendValueThroughCommunicationSendHole(int value);
BOOL LONG_CALL TestBattle_HasMoreExpectations();
BOOL LONG_CALL TestBattle_HasMoreTests();
BOOL LONG_CALL TestBattle_IsComplete();
void LONG_CALL TestBattle_QueueNextTest();
void LONG_CALL TestBattle_OverrideParties(struct BATTLE_PARAM *bp);
void LONG_CALL TestBattle_ApplyBattleState(struct BattleStruct *sp);
void LONG_CALL TestBattle_autoSelectPlayerMoves(struct BattleSystem *bsys, struct BattleStruct *ctx);

#endif // DEBUG_BATTLE_SCENARIOS
#endif // TEST_BATTLE_H
