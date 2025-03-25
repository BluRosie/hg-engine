.include "asm/include/battle_commands.inc"

.data

_000:
    // {2} is tormented by {0}’s {1}!
    PrintMessage 1121, TAG_NICKNAME_ABILITY_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    End 
