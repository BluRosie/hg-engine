.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    // {0} transformed into {1}!
    PrintMessage 345, TAG_NICKNAME_POKE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End
