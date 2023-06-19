.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_091", 0

a001_091:
    if IF_MASK, VAR_MOVE_STATUS, 0x10000, _failed
    moldbreakerabilitycheck 0x0, BATTLER_DEFENDER, ABILITY_SUCTION_CUPS, _suctionCupsMessage
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x400, _ingrainMessage
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x4A, _failed
    if IF_LESSTHAN, VAR_FAINTED_BATTLER, 0x4, _failed       // If any Pokemon were fainted by the move, ignore effect (this is needed for Dragon Tail)
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x0, _WildWhirlwind
_TrainerWhirlwind:
    tryswitchinmon BATTLER_DEFENDER, 0x1, _failed           // If only one Pokemon in party, the effect fails (taken from U-turn)
    trywhirlwind _TrainerWhirlwind                          // Keep trying Whirlwind formula over and over until success
    goto _updatedWhirlwind
_WildWhirlwind:
    goto _isWildBattle
_updatedWhirlwind:
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x0, _isWildBattle
    gotosubscript 76
    trynaturalcure BATTLER_DEFENDER, _0084
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x34, 0x0
_0084:
    deletepokemon BATTLER_DEFENDER
    waitmessage
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1, _0110
    preparehpgaugeslide BATTLER_DEFENDER
    waitmessage
    switchindataupdate BATTLER_WHIRLWINDED
    waitmessage
    pokemonappear BATTLER_DEFENDER
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_DEFENDER
    waitmessage
    printmessage 0x25B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_DEFENDER
    gotosubscript 99
    endscript
_0110:
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript
_failed:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript
_suctionCupsMessage:
    preparemessage 0x293, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _016C
_ingrainMessage:
    preparemessage 0x21E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_016C:
    printattackmessage
    waitmessage
    wait 0x1E
    printpreparedmessage
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript
_isWildBattle:
    isuserlowerlevel _failed
    gotosubscript 76
    trynaturalcure BATTLER_DEFENDER, _0084
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x34, 0x0
    goto _0084
    
.close
