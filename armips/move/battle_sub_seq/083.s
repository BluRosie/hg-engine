.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_083", 0

a001_083:
    ifmonstat IF_NOTMASK, BATTLER_FAINTED, MON_DATA_STATUS_2, 0x2000000, _010C
    checkonsameteam BATTLER_ATTACKER, BATTLER_FAINTED, _010C
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _010C
    printmessage 0x187, 0x9, 0x5, 0x1, "NaN", "NaN", "NaN", "NaN"
    changevar2 VAR_OP_GET_RESULT, VAR_FAINTED_BATTLER, VAR_ITEM_TEMP
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    incrementgamestat BATTLER_FAINTED, 0x1, 0x2A
    incrementgamestat BATTLER_FAINTED, 0x0, 0x61
    changevar2 VAR_OP_GET_RESULT, VAR_ITEM_TEMP, VAR_FAINTED_BATTLER
_010C:
    trygrudge _0134
    printmessage 0x238, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0134:
    changevar VAR_OP_SETMASK, VAR_60, 0x1
    gotosubscript 6
    changevar VAR_OP_CLEARMASK, VAR_60, 0x1
    endscript

.close
