.include "asm/include/battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_PUSH_ATTACKER_AND_DEFENDER

    TryPursuit _end
    TryMegaOrUltraBurstDuringPursuit _noMega
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    // Handle cases such as Mega Manectric's Intimidate ability (Switch -> Mega Evolution -> Intimidate -> Pursuit)
    // 處理例如超級雷電獸的威嚇特性 （切換中 -> 超級進化 -> 威嚇 -> 追打）
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
_noMega:

_end:
    // fix bug where pursuit on the rightside client was preventing the next attack message/move animation from playing
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_ATTACK_MESSAGE
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End 
