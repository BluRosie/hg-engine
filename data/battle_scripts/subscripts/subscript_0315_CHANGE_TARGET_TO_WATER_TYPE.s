.include "asm/include/battle_commands.inc"

.data

_Start:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    HandleSoak
    // {0} transformed into the Water type!
    PrintMessage 1330, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait
    WaitButtonABTime 30
    End
