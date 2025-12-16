.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT, _ExtremelyHarshSunlight
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HEAVY_RAIN, _HeavyRain
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS, _StrongWinds
    End

_ExtremelyHarshSunlight:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_SUNNY_DAY
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // The extremely harsh sunlight was not lessened at all!
    PrintMessage 1442, TAG_NONE
    GoTo _End

_HeavyRain:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_RAIN_DANCE
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // There is no relief from this heavy rain!
    PrintMessage 1446, TAG_NONE
    GoTo _End

_StrongWinds:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // The mysterious strong winds blow on regardless!
    PrintMessage 1450, TAG_NONE

_End:
    Wait
    WaitButtonABTime 30
    End
