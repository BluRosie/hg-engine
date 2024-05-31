.include "asm/include/battle_commands.inc"

.data

_000:
    CanClearPrimalWeather 1, _006, _020, _034, _050
    End 

_006:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_ABILITY, ABILITY_DESOLATE_LAND, _050
    // The harsh sunlight faded.
    PrintMessage 1444, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _046

_020:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_ABILITY, ABILITY_PRIMORDIAL_SEA, _050
    // The heavy rain has lifted!
    PrintMessage 1448, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _046

_034:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_ABILITY, ABILITY_DELTA_STREAM, _050
    // The mysterious strong winds have dissipated!
    PrintMessage 1452, TAG_NONE
    Wait 
    WaitButtonABTime 30

_046:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER

_050:
    End 
