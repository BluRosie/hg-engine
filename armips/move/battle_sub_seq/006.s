.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/battle_script_constants.s"

.create "build/move/battle_sub_seq/1_006", 0

a001_006:
    incrementgamestat BATTLER_FAINTED, 0x1, 0x2A
    incrementgamestat BATTLER_FAINTED, 0x0, 0x61
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    gotosubscript SUB_SEQ_TRY_CLEAR_PRIMAL_WEATHERS_FAINTING
    if IF_MASK, VAR_SERVER_STATUS2, 0x1, _0060
_0060:
    endscript

.close
