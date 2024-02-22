.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// spit up effect script

.create "build/move/battle_eff_seq/0_161", 0

a030_161:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x0, _0104

// calculate base power--100 * stockpile count
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, VAR_ABILITY_TEMP
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 100

    iffirsthitofparentalbond _skipStockpileClearing

// reset stockpile count
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x0

// get rid of defense stat stages
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_STOCKPILE_DEF_COUNT, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_DEFENSE, VAR_CALCULATION_WORK

// get rid of sp defense stat stages
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_STOCKPILE_SPDEF_COUNT, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, MON_DATA_STAT_STAGE_SPDEF, VAR_CALCULATION_WORK

// clear stockpile stat stages
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STOCKPILE_DEF_COUNT, 0x0
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_STOCKPILE_SPDEF_COUNT, 0x0
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40000
    preparemessage 0x3E2, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A // subseq that just prints the prepared message.  need to change to lower stats i think


_skipStockpileClearing:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40000
    critcalc
    damagecalc // update to roll for range
    endscript
_0104:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x32E, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript

.close
