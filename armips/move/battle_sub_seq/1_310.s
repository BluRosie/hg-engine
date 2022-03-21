.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_seq/1_310", 0

// handle healer, based on shed skin but with different message

a001_310:
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    printmessage 1321, 0x29, 0xFF, 0x15, 0xFF, "NaN", "NaN", "NaN" // try this out really quickly
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    endscript

.close
