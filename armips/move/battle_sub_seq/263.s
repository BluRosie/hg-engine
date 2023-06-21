.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_263", 0

a001_263:
    changevar VAR_OP_SET, VAR_ATTACKER_TEMP, 0x0
_0010:
    if IF_NOTMASK, VAR_TEMP_WORK, 0x1, _0078
    printmessage 0x461, 0x24, 0xE, 0xE, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_HP, 0x0, _00AC
_0078:
    changevar VAR_OP_ADD, VAR_ATTACKER_TEMP, 0x1
    changevar VAR_OP_RSH, VAR_TEMP_WORK, 0x1
    if IF_NOTEQUAL, VAR_TEMP_WORK, 0x0, _0010
_00AC:
    endscript

.close
