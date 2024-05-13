.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Switch Mon

.create "build/move/battle_sub_seq/1_009", 0

a001_009:
    // Check if Primal Weathers need to be cleared
    trynaturalcure BATTLER_REPLACE, _0020
    changemondatabyvalue VAR_OP_SET, BATTLER_REPLACE, 0x34, 0x0
_0020:
    returnmessage BATTLER_REPLACE
    waitmessage
    gotosubscript 153
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, MON_DATA_HP, 0x0, _0054
    goto _006C
_0054:
    returnpokemon BATTLER_REPLACE
    waitmessage
    preparehpgaugeslide BATTLER_REPLACE
    waitmessage
_006C:
    switchindataupdate BATTLER_REPLACE
    loadballgfx
    initballgauge BATTLER_REPLACE
    waitmessage
    if IF_EQUAL, VAR_TEMP_WORK, 0x1, _00A8
    sentoutmessage BATTLER_REPLACE
    goto _00B8
_00A8:
    printmessage 0x3D3, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
_00B8:
    waitmessage
    deleteballgauge BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_GREATER, VAR_FAINTED_BATTLER, 0x3, _0140
    changevar2 VAR_OP_TO_BIT, VAR_TEMP_WORK, VAR_FAINTED_BATTLER
    changevar VAR_OP_LSH, VAR_TEMP_WORK, 0x18
    if2 IF_NOTMASK, VAR_SERVER_STATUS1, 0x2B, _0140
    gotosubscript 6
_0140:
    endscript

.close
