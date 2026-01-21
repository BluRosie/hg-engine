.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_BURN_DRIVE, _SetFire
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_DOUSE_DRIVE, _SetWater
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_SHOCK_DRIVE, _SetElectric
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_CHILL_DRIVE, _SetIce
    GoTo _CalcDamage

_SetFire:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FIRE
    GoTo _CalcDamage

_SetWater:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_WATER
    GoTo _CalcDamage

_SetElectric:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ELECTRIC
    GoTo _CalcDamage

_SetIce:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ICE
    GoTo _CalcDamage

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
