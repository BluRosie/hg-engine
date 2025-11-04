.include "asm/include/battle_commands.inc"

.data

_Start:
    CanClearPrimalWeather 0, _CheckDesolateLand, _CheckPrimordialSea, _CheckDeltaStream, _End
    End 

_CheckDesolateLand:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_FAINTED_MON, BMON_DATA_ABILITY, ABILITY_DESOLATE_LAND, _End
    // The harsh sunlight faded.
    PrintMessage 1444, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _ClearWeather

_CheckPrimordialSea:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_FAINTED_MON, BMON_DATA_ABILITY, ABILITY_PRIMORDIAL_SEA, _End
    // The heavy rain has lifted!
    PrintMessage 1448, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _ClearWeather

_CheckDeltaStream:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_FAINTED_MON, BMON_DATA_ABILITY, ABILITY_DELTA_STREAM, _End
    // The mysterious strong winds have dissipated!
    PrintMessage 1452, TAG_NONE
    Wait 
    WaitButtonABTime 30

_ClearWeather:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER

_End:
    End 
