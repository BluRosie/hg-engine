.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_ROCK_HEAD, _End
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_MAGIC_GUARD, _End
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_HIT_DAMAGE
    GotoIfParentalBondIsActive _CheckStoredRecoilDamage

_CheckIfDamageDealt:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_HP_CALC, 0, _End
    DivideVarByValue BSCRIPT_VAR_HP_CALC, 4

_DealRecoil:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} is hit with recoil!
    PrintMessage 279, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_End:
    End

_CheckStoredRecoilDamage:
    GotoIfSecondHitOfParentalBond _StoreRecoilDamage
    // Recoil damage is only dealt after the second hit of Parental Bond.
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_ATTACKER_STORED_DAMAGE
    GoTo _CheckIfDamageDealt

_StoreRecoilDamage:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_STORED_DAMAGE, BSCRIPT_VAR_HP_CALC
    GoTo _End
