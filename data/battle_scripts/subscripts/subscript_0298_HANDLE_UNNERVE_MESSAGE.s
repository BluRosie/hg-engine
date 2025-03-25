.include "asm/include/battle_commands.inc"

.data

_000:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_AS_ONE_GLASTRIER, _printAsOneMessage
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_AS_ONE_SPECTRIER, _printUnnerveMessage
_printAsOneMessage:
    // {0} has two Abilities!
    PrintMessage 1463, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
_printUnnerveMessage:
    // {0}’s {1} makes the opposing team too nervous to eat Berries!
    PrintMessage 1282, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
