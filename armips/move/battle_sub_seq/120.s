.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_120", 0

a001_120:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_ATTACK, 0xC, _00D4
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 2
    ifmonstat2 IF_LESSTHAN, BATTLER_ATTACKER, VAR_47, 0x20, _00D4
    gotosubscript 76
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x13, 0xC
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    setstatus2effect BATTLER_ATTACKER, 0xC
    waitmessage
    printmessage 0x1C1, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_00D4:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
