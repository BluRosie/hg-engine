.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Defog

.create "build/move/battle_sub_seq/1_171", 0

a001_171:
    checksidecondition BATTLER_DEFENDER, 0x1, 0x0, _00A8
    checksidecondition BATTLER_DEFENDER, 0x1, 0x1, _00A8
    checksidecondition BATTLER_DEFENDER, 0x1, 0x2, _00A8
    checksidecondition BATTLER_DEFENDER, 0x1, 0x3, _00A8
    checksidecondition BATTLER_DEFENDER, 0x1, 0x4, _00A8
    checksidecondition BATTLER_DEFENDER, 0x1, 0x5, _00A8
    if IF_MASK, VAR_SIDE_EFFECT_OPPONENT, 0x80, _00A8
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_FOG, _00A8
    goto _00B0
_00A8:
    gotosubscript 76
_00B0:
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x1C
    gotosubscript 12
    checksidecondition BATTLER_DEFENDER, 0x0, 0x0, _0108
    checksidecondition BATTLER_DEFENDER, 0x2, 0x0, _0108
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x73
    gotosubscript 172
_0108:
    checksidecondition BATTLER_DEFENDER, 0x0, 0x1, _0148
    checksidecondition BATTLER_DEFENDER, 0x2, 0x1, _0148
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x71
    gotosubscript 172
_0148:
    checksidecondition BATTLER_DEFENDER, 0x0, 0x2, _0188
    checksidecondition BATTLER_DEFENDER, 0x2, 0x2, _0188
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x36
    gotosubscript 172
_0188:
    checksidecondition BATTLER_DEFENDER, 0x0, 0x3, _01C8
    checksidecondition BATTLER_DEFENDER, 0x2, 0x3, _01C8
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0xDB
    gotosubscript 172
_01C8:
    checksidecondition BATTLER_DEFENDER, 0x0, 0x4, _0218
    checksidecondition BATTLER_DEFENDER, 0x2, 0x4, _0218
    changevar VAR_OP_CLEARMASK, VAR_SIDE_EFFECT_OPPONENT, 0x4
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0xBF
    gotosubscript 172
_0218:
    checksidecondition BATTLER_DEFENDER, 0x0, 0x5, _0258
    checksidecondition BATTLER_DEFENDER, 0x2, 0x5, _0258
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x186
    gotosubscript 172
_0258:
    if IF_NOTMASK, VAR_SIDE_EFFECT_OPPONENT, 0x80, _0294
    changevar VAR_OP_CLEARMASK, VAR_SIDE_EFFECT_OPPONENT, 0x80
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x1BE
    gotosubscript 172
_0294:
    if IF_NOTMASK, VAR_FIELD_EFFECT, FIELD_STATUS_FOG, _02D8
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_STATUS_FOG
    printmessage 0x415, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_02D8:
    endscript

.close
