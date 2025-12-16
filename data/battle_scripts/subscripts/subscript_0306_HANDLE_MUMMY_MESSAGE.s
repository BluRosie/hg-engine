.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ABILITY, ABILITY_MUMMY, _MummyMessage
    // Also handle the Lingering Aroma message here, since they're called under the same conditions.
    // A lingering aroma clings to {0}!
    PrintMessage 1453, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    GoTo _Cleanup

_MummyMessage:
    // {0}’s ability became Mummy!
    PrintMessage 1306, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 

_Cleanup:
    WaitButtonABTime 30
    End 
