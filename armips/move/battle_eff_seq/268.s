.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_268", 0

a030_268:
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x83, _0148
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x86, _0160
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x84, _0178
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x85, _0190
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x89, _01A8
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x88, _01C0
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8A, _01D8
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8D, _01F0
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7E, _0208
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7F, _0220
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x81, _0238
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x80, _0250
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x87, _0268
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x82, _0280
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8B, _0298
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8C, _02B0
    goto _02C0
_0148:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x1
    goto _02C0
_0160:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x2
    goto _02C0
_0178:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x3
    goto _02C0
_0190:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x4
    goto _02C0
_01A8:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x5
    goto _02C0
_01C0:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x6
    goto _02C0
_01D8:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x7
    goto _02C0
_01F0:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x8
    goto _02C0
_0208:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xA
    goto _02C0
_0220:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xB
    goto _02C0
_0238:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xC
    goto _02C0
_0250:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xD
    goto _02C0
_0268:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xE
    goto _02C0
_0280:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xF
    goto _02C0
_0298:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x10
    goto _02C0
_02B0:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x11
_02C0:
    critcalc
    damagecalc
    endscript

.close
