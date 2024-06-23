.include "asm/include/battle_commands.inc"

.data

_000:
    TryEncore _010
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} received an encore!
    PrintMessage 372, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30

_010:
    End 
