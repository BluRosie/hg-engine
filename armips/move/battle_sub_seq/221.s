.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_221", 0

a001_221:
    printmessage 0x2E4, 0x29, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    if IF_EQUAL, VAR_22, 0x0, _0088
    if IF_EQUAL, VAR_22, 0x5, _00B8
    if IF_EQUAL, VAR_22, 0x6, _00D4
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    goto _00E8
_0088:
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    goto _00E8
_00B8:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x7
    goto _00E8
_00D4:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0xF0000
_00E8:
    endscript

.close
