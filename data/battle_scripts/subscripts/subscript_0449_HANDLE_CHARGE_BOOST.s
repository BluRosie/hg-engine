.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_CHARGE
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CHARGED_TURNS, 2
    // Being hit by {1} charged\n{0} with power!
    PrintMessage 1559, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    End 
