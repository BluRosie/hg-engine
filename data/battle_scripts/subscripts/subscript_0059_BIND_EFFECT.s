.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_MAGIC_GUARD, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_WRAP, _PlayAnimation_Wrap
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_FIRE_SPIN, _PlayAnimation_FireSpin
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_MAGMA_STORM, _PlayAnimation_MagmaStorm
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_CLAMP, _PlayAnimation_Clamp
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_WHIRLPOOL, _PlayAnimation_Whirlpool
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_SAND_TOMB, _PlayAnimation_SandTomb
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_SNAP_TRAP, _PlayAnimation_SnapTrap
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_THUNDER_CAGE, _PlayAnimation_ThunderCage
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_BIND
    GoTo _DealDamage

_PlayAnimation_Wrap:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WRAP
    GoTo _DealDamage

_PlayAnimation_FireSpin:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_FIRE_SPIN
    GoTo _DealDamage

_PlayAnimation_MagmaStorm:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_MAGMA_STORM
    GoTo _DealDamage

_PlayAnimation_Clamp:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_CLAMP
    GoTo _DealDamage

_PlayAnimation_Whirlpool:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WHIRLPOOL
    GoTo _DealDamage

_PlayAnimation_SandTomb:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_SAND_TOMB
    GoTo _DealDamage

_PlayAnimation_SnapTrap:
    // TODO: Implement Snap Trap bind animation.
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WRAP
    GoTo _DealDamage

_PlayAnimation_ThunderCage:
    // TODO: Implement Thunder Cage bind animation.
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_DAMAGE_WRAP

_DealDamage:
    Wait 
    // {0} is hurt by {1}!
    PrintMessage 262, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_End:
    End
