.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_MAGIC_GUARD, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_WRAP, _WrapAnimation
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_FIRE_SPIN, _FireSpinAnimation
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_MAGMA_STORM, _MagmaStormAnimation
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_CLAMP, _ClampAnimation
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_WHIRLPOOL, _WhirlpoolAnimation
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_SAND_TOMB, _SandTombAnimation
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_BIND
    GoTo _BindEffect

_WrapAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WRAP
    GoTo _BindEffect

_FireSpinAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_FIRE_SPIN
    GoTo _BindEffect

_MagmaStormAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_MAGMA_STORM
    GoTo _BindEffect

_ClampAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_CLAMP
    GoTo _BindEffect

_WhirlpoolAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WHIRLPOOL
    GoTo _BindEffect

_SandTombAnimation:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_SAND_TOMB

_BindEffect:
    Wait 
    // {0} is hurt by {1}!
    PrintMessage 262, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_End:
    End 
