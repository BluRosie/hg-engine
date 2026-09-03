#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

// matcha gotcha -- handle burn part first
Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLER_TARGET, BATTLER_NONE, NoBurn
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, NoBurn
    CheckEffectActivation NoBurn
    Call BATTLE_SUBSCRIPT_BURN

// with no burn, we just restore our health by half of what we dealt.  attacker will always be proper so we're good there
NoBurn:
    Call BATTLE_SUBSCRIPT_DRAIN_HALF_DAMAGE_DEALT
    End
