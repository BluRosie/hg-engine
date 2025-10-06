.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_LOST_FOCUS, _CheckIfSemiInvulnerable
    PrintBufferedMessage 
    GoTo _DefaultMessage

_CheckIfSemiInvulnerable:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE, _CheckIfProtected
    GoTo _CheckIfMultiTarget

_CheckIfProtected:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_PROTECTED, _CheckIfLevitate
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_SNORE, _CheckIfMoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_NIGHTMARE, _CheckIfMoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_FLING, _CheckIfMoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_LAST_RESORT, _CheckIfMoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_PSYCHO_SHIFT, _CheckIfMoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_FAKE_OUT, _CheckIfMoveFailed
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_NATURAL_GIFT, _ProtectedMessage

_CheckIfMoveFailed:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED, _CheckIfMoveFailedAgain

_ProtectedMessage:
    // {0} protected itself!
    PrintMessage 15, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfLevitate:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_LEVITATE_IMMUNE, _CheckIfMagnetRise
    // {0} makes Ground moves miss by using {1}!
    PrintMessage 21, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    // TODO: Add ability popup
    // It doesn’t affect {0}...
    // PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfMagnetRise:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_MAGNET_RISE_IMMUNE, _CheckIfMoveFailedAgain
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_MAGNET_RISE
    // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfMoveFailedAgain:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED, _CheckIfWonderGuard
    // But it failed!
    PrintMessage 796, TAG_NONE
    GoTo _DefaultMessage

_CheckIfWonderGuard:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_WONDER_GUARD_IMMUNE, _CheckIfNoEffect
    // {0} avoided damage by using {1}!
    PrintMessage 18, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfNoEffect:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_EFFECT, _CheckIfSturdy
    IncrementGameStat BATTLER_CATEGORY_ATTACKER, BATTLER_TYPE_SOLO_PLAYER, 96
    // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfSturdy:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_STURDY, _CheckIfOneHitKOFailed
    // {0} was protected by {1}!
    PrintMessage 625, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfOneHitKOFailed:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ONE_HIT_KO_FAILED, _CheckIfMultiTarget
    // {0} is unaffected!
    PrintMessage 342, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _DefaultMessage

_CheckIfMultiTarget:
    GetCurrentMoveData MOVEATTRIBUTE_RANGE
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ADJACENT_OPPONENTS, _AvoidedMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ALL_ADJACENT, _AvoidedMessage
    // {0}’s attack missed!
    PrintMessage 12, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _DefaultMessage

_AvoidedMessage:
    // {0} avoided the attack!
    PrintMessage 24, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_DefaultMessage:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MISS_MESSAGE, _Cleanup
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE

_Cleanup:
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    End 
