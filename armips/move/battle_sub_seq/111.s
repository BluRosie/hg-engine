.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_111", 0

a001_111:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_CALCULATION_WORK
    ifmonstat2 IF_EQUAL, BATTLER_xFF, VAR_ATTACKER_STATUS, 0x9, _0094
    playanimation BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    if IF_NOTMASK, VAR_SERVER_STATUS2, 0x100, _006C
    setstatus2effect BATTLER_xFF, 0xE
    waitmessage
_006C:
    gotosubscript 2
    printmessage 0xB8, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0094:
    wait 0x1E
    printmessage 0xBB, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript

.close
