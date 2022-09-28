.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_159", 0

a001_159:
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x2F, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    gotosubscript 76
    tryfaintmon BATTLER_ATTACKER
    changevar VAR_OP_CLEARMASK, VAR_06, 0xF000000
    gotosubscript 6
    changevar VAR_OP_CLEARMASK, VAR_60, 0xF0000000
    gotosubscript 276
_006C:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0160
    showmonlist
    waitformonselection
    switchindataupdate BATTLER_REPLACE
    sentoutmessage BATTLER_REPLACE
    waitmessage
    pokemonappear BATTLER_REPLACE
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_NOTMASK, VAR_06, 0xF000000, _0108
    gotosubscript 6
    changevar VAR_OP_CLEARMASK, VAR_60, 0xF0000000
    gotosubscript 276
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0160
    goto _006C
_0108:
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
    setstatusicon BATTLER_ATTACKER, 0x0
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    preparemessage 0x3ED, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    gotosubscript 136
_0160:
    endscript

.close
