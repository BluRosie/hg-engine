.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_007", 0

a001_007:
    printattackmessage
    waitmessage
    wait 0x1E
    if IF_NOTMASK, VAR_10, 0x20000, _0030
    printpreparedmessage
    goto _02D0
_0030:
    if IF_NOTMASK, VAR_10, 0x10000, _004C
    goto _0278
_004C:
    if IF_NOTMASK, VAR_10, 0x8000, _0118
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xAD, _00EC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xAB, _00EC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x176, _00EC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x183, _00EC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x177, _00EC
    if IF_EQUAL, VAR_CURRENT_MOVE, 0xFC, _00EC
    if IF_NOTEQUAL, VAR_CURRENT_MOVE, 0x16B, _0100
_00EC:
    if IF_MASK, VAR_10, 0x40, _0188
_0100:
    printmessage 0xF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_0118:
    if IF_NOTMASK, VAR_10, 0x800, _0148
    printmessage 0x15, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_0148:
    if IF_NOTMASK, VAR_10, 0x100000, _0188
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x189
    printmessage 0x40C, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_0188:
    if IF_NOTMASK, VAR_10, 0x40, _01B0
    printmessage 0x31C, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_01B0:
    if IF_NOTMASK, VAR_10, 0x40000, _01E0
    printmessage 0x12, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_01E0:
    if IF_NOTMASK, VAR_10, 0x8, _021C
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x60
    printmessage 0x1B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_021C:
    if IF_NOTMASK, VAR_10, 0x80000, _024C
    printmessage 0x271, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_024C:
    if IF_NOTMASK, VAR_10, 0x1000, _0278
    printmessage 0x156, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_0278:
    getmoveparameter 0x7
    if IF_EQUAL, VAR_09, 0x4, _02C0
    if IF_EQUAL, VAR_09, 0x8, _02C0
    printmessage 0xC, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02D0
_02C0:
    printmessage 0x18, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_02D0:
    waitmessage
    wait 0x1E
    if IF_NOTMASK, VAR_06, 0x40000, _02F8
    gotosubscript 57
_02F8:
    clearsomeflag BATTLER_ATTACKER
    gotosubscript 61
    endscript

.close
