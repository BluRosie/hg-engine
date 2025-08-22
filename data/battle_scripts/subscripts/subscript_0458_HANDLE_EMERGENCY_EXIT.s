.include "asm/include/battle_commands.inc"

.data

_000:
    // if battle is wild, jumps to wild battle code
    TryEmergencyExit _026
    // if nobody to replace, jump to fail
    TryReplaceFaintedMon BATTLER_CATEGORY_ATTACKER, TRUE, _031
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HP, 0, _031
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE
    Call BATTLE_SUBSCRIPT_ATTACK_THEN_SWITCH_OUT
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE
    GoTo _031

_026:
    PlaySound BATTLER_CATEGORY_MSG_TEMP, 1791
    // {1} fled from battle!
    PrintMessage 469, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_TRY_FLEE|BATTLE_RESULT_WIN
    SetLinkBattleResult 

_031:
    End 
