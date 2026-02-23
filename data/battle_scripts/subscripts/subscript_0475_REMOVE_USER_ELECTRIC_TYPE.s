.include "asm/include/battle_commands.inc"

.data

// Called by Double Shock.
_Start:
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _DoAnimation
    HandleDoubleShock

_DoAnimation:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _Continue

_RemovalMessage:
    // {0} used up all its electricity!
    PrintMessage 1604, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER

_Continue:
    Wait
    WaitButtonABTime 30
    End
