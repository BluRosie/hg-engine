.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_036", 0

a001_036:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x300, _009C
    printmessage 0x14F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x1000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200
    if IF_EQUAL, VAR_DAMAGE, 0x0, _0080
    endscript
_0080:
    gotosubscript 75
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript
_009C:
    printmessage 0x14C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
