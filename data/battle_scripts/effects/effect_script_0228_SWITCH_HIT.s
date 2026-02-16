.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _012

_005:
    CalcCrit 
    CalcDamage 
    End 

_012:
    GotoIfFirstHitOfParentalBond _005
    GoTo _005
