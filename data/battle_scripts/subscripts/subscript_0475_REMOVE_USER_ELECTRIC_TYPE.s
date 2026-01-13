.include "asm/include/battle_commands.inc"

.data

// Called by Double Shock.
_Start:
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _DoAnimation
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_1, TYPE_ELECTRIC, _CheckType2
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_1, TYPE_TYPELESS

_CheckType2:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_2, TYPE_ELECTRIC, _CheckType3
    // This is one of the rare effects that can allow a Pokemon to become fully typeless.
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_2, TYPE_TYPELESS

_CheckType3:
    GoToIfThirdType BATTLER_CATEGORY_ATTACKER, TYPE_ELECTRIC, _DoAnimation
    AddThirdType TYPE_TYPELESS

_DoAnimation:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _Cleanup

_RemovalMessage:
    // {0} used up all its electricity!
    PrintMessage 1604, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER

_Cleanup:
    Wait 
    WaitButtonABTime 30
    End
