.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TAUNTED_TURNS, 0, _Taunt
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ENCORED_TURNS, 0, _Encore
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_TORMENT, _Torment
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_HEAL_BLOCK, _HealBlock
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_DISABLED_TURNS, 0, _Disable
_Attract:
    // {0} cured its {2} status using its {1}!
    PrintMessage 893, TAG_NICKNAME_ITEM_STATUS, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_ATTRACT
	GoTo _End

_Taunt:
    Call BATTLE_SUBSCRIPT_TAUNT_END
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TAUNTED_TURNS, 0
	GoTo _End

_Encore:
    Call BATTLE_SUBSCRIPT_ENCORE_END
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ENCORED_MOVE_NO, 0
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ENCORED_TURNS, 0
	GoTo _End

_Torment:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TORMENT
    // {0}’s {1} wore off!
    PrintMessage 1257, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_TORMENT
	GoTo _End
	
_HealBlock:
    Call BATTLE_SUBSCRIPT_HEAL_BLOCK_END
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_HEAL_BLOCK
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HEAL_BLOCK_TURNS, 0

_Disable:
    Call BATTLE_SUBSCRIPT_DISABLE_END
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_DISABLED_MOVE_NO, 0
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_DISABLED_TURNS, 0
_End:
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End
