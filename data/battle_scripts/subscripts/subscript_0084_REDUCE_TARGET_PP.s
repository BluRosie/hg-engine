.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _moveFailed
	Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    TrySpite _justDamage
    // It reduced the PP of {0}’s {1} by {2}!
    PrintMessage 398, TAG_NICKNAME_MOVE_NUMBER, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
_justDamage:
    End 

_moveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 