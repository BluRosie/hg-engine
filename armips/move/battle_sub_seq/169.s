.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_169", 0

a001_169:
    printmessage 0x406, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    checkitemeffect 0x1, BATTLER_xFF, 0x7C, _0080
    getitempower BATTLER_xFF, 0x9
    changevar VAR_OP_ADD, VAR_09, 0x64
    changevar2 VAR_OP_MUL, VAR_HP_TEMP, VAR_09
    changevar VAR_OP_DIV, VAR_HP_TEMP, 0x64
_0080:
    setstatus2effect BATTLER_xFF, 0xE
    waitmessage
    gotosubscript 2
    endscript

.close
