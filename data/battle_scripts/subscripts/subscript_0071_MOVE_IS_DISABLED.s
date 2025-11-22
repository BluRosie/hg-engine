.include "asm/include/battle_commands.inc"

.data

_Start:
    // This (vanilla) check appears to do nothing.
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_LOCKED_INTO_MOVE, _MoveIsDisabled

_MoveIsDisabled:
    // {0}’s {1} is disabled!
    PrintMessage 609, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End 
