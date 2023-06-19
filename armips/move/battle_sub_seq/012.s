.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_012", 0

a001_012:
    statbuffchange _00A8, _00F0, _00F4
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _002C
    printattackmessage
    waitmessage
_002C:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _004C
    playanimation BATTLER_ATTACKER
    waitmessage
_004C:
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_RAPID_SPIN, _doRapidSpin
_return:
    if IF_MASK, VAR_SERVER_STATUS2, 0x2, _0094
    setstatus2effect3 BATTLER_ADDL_EFFECT, 0x2B
    waitmessage
    if IF_NOTMASK, VAR_SERVER_STATUS2, 0x80, _0094
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x2
_0094:
    printpreparedmessage
    waitmessage
    wait 0x1E
    endscript
_00A8:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _00C4
    printattackmessage
    waitmessage
_00C4:
    if IF_MASK, VAR_SERVER_STATUS1, 0x200000, _00F0
    wait 0x1E
    printpreparedmessage
    waitmessage
    wait 0x1E
_00F0:
    endscript
_00F4:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

_doRapidSpin:
    rapidspin
    goto _return

.close
