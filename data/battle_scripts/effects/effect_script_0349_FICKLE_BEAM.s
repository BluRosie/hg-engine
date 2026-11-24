#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    GotoIfSecondHitOfParentalBond _damage
    PrintAttackMessage
#ifndef DEBUG_BATTLE_SCENARIOS
    Random 10, 0
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_CALC_TEMP, 6, _boosted
    GoTo _damage
#endif

_boosted:
    SetMoveConditionFlag MOVE_FICKLE_BEAM, BATTLER_CATEGORY_ATTACKER
    Wait
    // {STRVAR_1 1, 0, 0} is going all out for this attack!
    PrintMessage 1545, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30

_damage:
    CalcCrit
    CalcDamage
    End
