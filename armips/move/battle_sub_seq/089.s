.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_089", 0

a001_089:
    printattackmessage
    waitmessage
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000000, _00B0
    trysubstitute _0094
    setstatus2effect BATTLER_ATTACKER, 0x19
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x1000000
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    gotosubscript 2
    printmessage 0x15C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0094:
    wait 0x1E
    printmessage 0x333, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00C8
_00B0:
    wait 0x1E
    printmessage 0x15F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_00C8:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
