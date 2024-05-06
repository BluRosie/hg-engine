.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Heal 100% of damage inflicted effect

.create "build/move/battle_sub_seq/1_358", 0

a001_358:
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_HIT_DAMAGE

    checkitemeffect 0x1, BATTLER_ATTACKER, 0x7C, _0080
    getitempower BATTLER_ATTACKER, 0x9
    changevar VAR_OP_ADD, VAR_CALCULATION_WORK, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_CALCULATION_WORK
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_0080:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    abilitycheck 0x0, BATTLER_DEFENDER, ABILITY_LIQUID_OOZE, _0138
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _0104
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x52, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0104:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0138:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _016C
    gotosubscript 2
    printmessage 0x2D0, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_016C:
    endscript

.close
