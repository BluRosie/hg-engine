.include "asm/include/battle_commands.inc"

.data

// Called by Burn Up.
_Start:
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _DoAnimation
    HandleBurnUp

_DoAnimation:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _Continue

_RemovalMessage:
    // {0} burned itself out!
    PrintMessage 1601, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER

_Continue:
    Wait
    WaitButtonABTime 30
    End
