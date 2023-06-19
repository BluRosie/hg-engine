.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_033", 0

a001_033:
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_HEAL_BLOCK_COUNTER, 0x0, _00F0
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_HIT_DAMAGE
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _0098
    damagediv 32, 2
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x7C, _0098
    getitempower BATTLER_ATTACKER, 0x9
    changevar VAR_OP_ADD, VAR_CALCULATION_WORK, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_CALCULATION_WORK
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_0098:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x8B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_00F0:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
