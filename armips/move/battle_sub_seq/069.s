.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_069", 0

a001_069:
    setstatus2effect2 BATTLER_ATTACKER2, BATTLER_DEFENDER2, 0x20
    waitmessage
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER2, 0x30, VAR_HP_TEMP
    damagediv 32, 8
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER_TEMP
    gotosubscript 2
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_54
    checkitemeffect 0x1, BATTLER_ATTACKER2, 0x7C, _00CC
    getitempower BATTLER_ATTACKER2, 0x9
    changevar VAR_OP_ADD, VAR_09, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_09
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_00CC:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER_TEMP
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    abilitycheck 0x0, BATTLER_DEFENDER2, ABILITY_LIQUID_OOZE, _0184
    ifmonstat IF_NOTEQUAL, BATTLER_xFF, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _0150
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x128, 0x2, 0xF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0150:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0184:
    abilitycheck 0x0, BATTLER_ATTACKER2, ABILITY_MAGIC_GUARD, _01BC
    gotosubscript 2
    printmessage 0x2D0, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_01BC:
    printmessage 0x2D0, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    printmessage 0x2D7, 0x35, 0xE, 0xE, 0xF, 0xF, "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
