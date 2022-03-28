.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_231", 0

a001_231:
    if IF_EQUAL, VAR_43, 0x1, _009C
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _005C
    changevar VAR_OP_SET, VAR_ATTACKER, 0x0
    printmessage 0xB, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    yesnobox 0x3
    yesnowait _005C, _0074
_005C:
    showmonlist
    waitformonselection
    switchindataupdate BATTLER_REPLACE
    goto _0114
_0074:
    tryescape BATTLER_PLAYER, _0090
    gotosubscript 8
    goto _005C
_0090:
    gotosubscript 3
    endscript
_009C:
    showmonlist
    waitformonselection
_00A4:
    switchindataupdate BATTLER_REPLACE
    printmessage 0x343, 0x3A, 0x6, 0x6, 0x6, 0x3, "NaN", "NaN"
    waitmessage
    yesnobox 0x4
    yesnowait _00E0, _0114
_00E0:
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER_TEMP, VAR_SWITCHED_BATTLER
    monlist
    monlistwait _0104
    gotosubscript 9
_0104:
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_SWITCHED_BATTLER_TEMP
_0114:
    loadballgfx
    initballguage BATTLER_REPLACE
    waitmessage
    sentoutmessage BATTLER_REPLACE
    waitmessage
    deleteballguage BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_NOTMASK, VAR_06, 0xF000000, _0180
    gotosubscript 6
_0180:
    jumpifcantswitch _00A4
    endscript

.close
