.include "asm/include/battle_commands.inc"

.data

// TODO: Modernise confusion damage
_000:
    // {0} is confused!
    PrintMessage 150, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_CONFUSED
    Wait 
    // It hurt itself in its confusion!
    PrintMessage 797, TAG_NONE
    Wait 
    WaitButtonABTime 30
    CalcConfusionDamage _breakIceFace
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    CheckHoldOnWith1HP BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    End 

_breakIceFace:
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    Call BATTLE_SUBSCRIPT_HANDLE_DISGUISE_ICE_FACE
    End 
