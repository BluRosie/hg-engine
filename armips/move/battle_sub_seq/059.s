.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_059", 0

a001_059:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _014C
    if IF_EQUAL, VAR_MOVE_TEMP2, 0x23, _00A0
    if IF_EQUAL, VAR_MOVE_TEMP2, 0x53, _00B4
    if IF_EQUAL, VAR_MOVE_TEMP2, 0x1CF, _00C8
    if IF_EQUAL, VAR_MOVE_TEMP2, 0x80, _00DC
    if IF_EQUAL, VAR_MOVE_TEMP2, 0xFA, _00F0
    if IF_EQUAL, VAR_MOVE_TEMP2, 0x148, _0104
    setstatus2effect BATTLER_xFF, 0x21
    goto _0110
_00A0:
    setstatus2effect BATTLER_xFF, 0x22
    goto _0110
_00B4:
    setstatus2effect BATTLER_xFF, 0x23
    goto _0110
_00C8:
    setstatus2effect BATTLER_xFF, 0x24
    goto _0110
_00DC:
    setstatus2effect BATTLER_xFF, 0x25
    goto _0110
_00F0:
    setstatus2effect BATTLER_xFF, 0x26
    goto _0110
_0104:
    setstatus2effect BATTLER_xFF, 0x27
_0110:
    waitmessage
    printmessage 0x106, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    jumptosubseq 2
_014C:
    endscript

.close
