.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_010", 0

a001_010:
    showmonlist
    waitformonselection
_0008:
    switchindataupdate BATTLER_REPLACE
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
    if IF_NOTMASK, VAR_06, 0xF000000, _007C
    gotosubscript 6
_007C:
    jumpifcantswitch _0008
    endscript

.close
