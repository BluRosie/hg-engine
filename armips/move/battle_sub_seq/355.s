.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_355", 0

// Shed Tail
// Belly Drum + Substitute + Baton Pass (clear boosts and others) 

a001_355:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000000, _hassub // if it has a sub it will fail the move entirely 
    tryswitchinmon BATTLER_ATTACKER, 0x1, _end // If 1 mon left, fail the move entirely
    if IF_MASK, VAR_SERVER_STATUS1, 0x00080000, _NaturalCureCheck // use 0x00080000 to skip to 50% hp check 

    // 50% hp check/set from Belly Drum
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_MAX_HP, VAR_HP_TEMP
    damagediv 32, 2
    ifmonstat2 IF_LESSTHAN, BATTLER_ATTACKER, VAR_ATTACKER_STATUS, 0x20, _nohp

    // prints attack message/play moveanim 
    gotosubscript 76

    // deal half damage
    changevar VAR_OP_MUL, VAR_HP_TEMP, -1
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2

    // substitute (doesnt use trysubstitute due to the hp check of the battlecommand)
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_MAX_HP, VAR_HP_TEMP
    damagediv VAR_HP_TEMP, 4
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_SUBSTITUTE_HP, VAR_HP_TEMP
    setstatus2effect BATTLER_ATTACKER, 0x19
    waitmessage
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x35, 0x1000000 
    // using VAR_OP_SET instead of VAR_OP_SETMASK to set up a substitute whilst clearing the other condition2 flags

    printmessage 1414, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} shed its tail to\ncreate a decoy!
    waitmessage

    // clear things that shouldnt be passed like stat boosts and leech seed
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_ATTACK, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_DEFENSE, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_SPATK, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_SPDEF, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_SPEED, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_ACCURACY, 6
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_EVASION, 6
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x3B, 0x4  // leech seed move effect flag 
_NaturalCureCheck:
    gotosubscript 76
    trynaturalcure BATTLER_ATTACKER, _Switch 
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0

_Switch:
    deletepokemon BATTLER_ATTACKER 
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER 
    waitmessage
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, 0x1000000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x100
    jumptosubseq 10

_end:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

_hassub:
    printattackmessage
    printmessage 351, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} already\nhas a substitute!
    waitmessage
    endscript

_nohp:
    printattackmessage
    printmessage 819, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN" // It was too weak to make\na substitute!
    waitmessage
    endscript

.close
