.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_008", 0

a030_008:
    checknostatus BATTLER_DEFENDER, _0040
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x7, _0040
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000003D
    critcalc
    damagecalc
    endscript
_0040:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x3C, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
