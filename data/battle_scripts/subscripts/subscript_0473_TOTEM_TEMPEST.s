.include "asm/include/battle_commands.inc"

.data

_Start:
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_TOTAL_TURNS

_FakeModuloLoop:
    CompareVarToValue OPCODE_LT, BSCRIPT_VAR_TEMP_DATA, 3, _CheckTempestRemainder
    UpdateVarFromVar OPCODE_SUB, BSCRIPT_VAR_TEMP_DATA, 3
    GoTo _FakeModuloLoop

_CheckTempestRemainder:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _HandleTempestMove

_HandleTempestBuildup:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    End

_HandleTempestMove:
    GoToEffectScript
