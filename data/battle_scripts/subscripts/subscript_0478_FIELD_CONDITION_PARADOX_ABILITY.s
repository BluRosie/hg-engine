.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_BATTLER_TEMP, ABILITY_QUARK_DRIVE, _HandleQuarkDriveMsg
    // The harsh sunlight activated {0}'s {1}!
    PrintMessage 1615, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    GoTo _StatMsg

_HandleQuarkDriveMsg:
    // The Electric Terrain activated {0}'s {1}!
    PrintMessage 1618, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BSCRIPT_VAR_CALC_TEMP
    Wait
    WaitButtonABTime 30

_StatMsg:
    // {0}'s {1} was heightened!
    PrintMessage 1621, TAG_NICKNAME_STAT, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
