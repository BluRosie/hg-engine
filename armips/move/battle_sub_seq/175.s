.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/battle_script_constants.s"

// u-turn script

.create "build/move/battle_sub_seq/1_175", 0

a001_175:
    checkwipeout BATTLER_DEFENDER, _02B4
    tryswitchinmon BATTLER_ATTACKER, 0x1, _02B4

    if IF_MASK, VAR_SERVER_STATUS1, 0x00080000, _003C // use 0x00080000 to skip ability checks and such for u-turn subscript.  it technically is used for hitting shadow force but we repurpose it here

    abilityeffectcheckonhit _002C
    gotosubscript2 43
_002C:
    checkuturnitemeffect _003C
    gotosubscript2 43
_003C:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0140
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x2000000, _0140
    checkonsameteam BATTLER_ATTACKER, BATTLER_DEFENDER, _0140
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _0140
    printmessage 0x187, 0x9, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN"
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN" // fainted message
    waitmessage
    wait 0x1E
    incrementgamestat BATTLER_FAINTED, 0x1, 0x2A
    incrementgamestat BATTLER_FAINTED, 0x0, 0x61
    gotosubscript SUB_SEQ_TRY_CLEAR_PRIMAL_WEATHERS_FAINTING
_0140:
    changevar2 VAR_OP_GET_RESULT, VAR_FAINTED_BATTLER, VAR_ITEM_TEMP
    changevar2 VAR_OP_SET, VAR_FAINTED_BATTLER, VAR_DEFENDER
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _01A0
    trygrudge _01A0
    printmessage 0x238, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 6, 1, 0} lost\nall its PP due to the grudge!
    waitmessage
    wait 0x1E
_01A0:
    changevar2 VAR_OP_SET, VAR_FAINTED_BATTLER, VAR_ITEM_TEMP
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _02B4
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_ATTACKER
    printmessage 0x42B, 0x12, 0x6, 0x6, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} went back\nto {STRVAR_1 3, 1, 0}!
    waitmessage
    wait 0x1E
    gotosubscript 153
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_HP, 0x0, _02B4
    trynaturalcure BATTLER_ATTACKER, _0238
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_0238:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    playanimation BATTLER_ATTACKER
    waitmessage
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x10
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
    changevar VAR_OP_SET, VAR_ATTACKER_STATUS, 0x0
    jumptosubseq 10
_02B4:
    endscript

.close
