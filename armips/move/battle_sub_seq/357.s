.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

.create "build/move/battle_sub_seq/1_357", 0

// Quash move effect

a001_357:
    printattackmessage
    waitmessage
    wait 0x1E
    changeexecutionorderpriority BATTLER_DEFENDER, EXECUTION_ORDER_QUASH, Fail
    playanimation BATTLER_ATTACKER
    waitmessage
    printmessage 1433, TAG_NICK, BATTLER_DEFENDER, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s move\nwas postponed!
    waitmessage
    wait 0x1E
    endscript
Fail:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
