.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP, _CheckIfPoisoned
    Call BATTLE_SUBSCRIPT_FALL_ASLEEP
    GoTo _CureSelf

_CheckIfPoisoned:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_POISON, _CheckIfBurned
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _CureSelf

_CheckIfBurned:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_BURN, _CheckIfParalyzed
    Call BATTLE_SUBSCRIPT_BURN
    GoTo _CureSelf

_CheckIfParalyzed:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_PARALYSIS, _InflictBadPoison
    Call BATTLE_SUBSCRIPT_PARALYZE
    GoTo _CureSelf

// Generation V: Psycho Shift is now capable of inflicting bad poison where appropriate.
_InflictBadPoison:
    Call BATTLE_SUBSCRIPT_BADLY_POISON

// Generation V: Psycho Shift now cures the attacker after inflicting the status effect (rather than before).
_CureSelf:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_ALL, _End
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NONE

_End:
    End 
