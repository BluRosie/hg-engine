.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT, _015
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HEAVY_RAIN, _020
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS, _025
    End

_015:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_SUNNY_DAY
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // The extremely harsh sunlight was not lessened at all!
    PrintMessage 1442, TAG_NONE
    GoTo _028

_020:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_RAIN_DANCE
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // There is no relief from this heavy rain!
    PrintMessage 1446, TAG_NONE
    GoTo _028

_025:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitTime 30
    // The mysterious strong winds blow on regardless!
    PrintMessage 1450, TAG_NONE

_028:
    Wait
    WaitButtonABTime 30
    End
