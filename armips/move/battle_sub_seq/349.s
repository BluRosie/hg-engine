.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

.create "build/move/battle_sub_seq/1_349", 0

a001_349:
    // use item flag?
    setstatus2effect BATTLER_ADDL_EFFECT, 0xA
    waitmessage
    wait 0xF

    // begin doing stat boost stuff
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_ITEM, ITEM_ELECTRIC_SEED, ElectricSeedBoost
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_ITEM, ITEM_GRASSY_SEED, GrassySeedBoost
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_ITEM, ITEM_MISTY_SEED, MistySeedBoost
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_ITEM, ITEM_PSYCHIC_SEED, PsychicSeedBoost
    
AfterBoost:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    // end doing stat boost stuff

    removeitem BATTLER_ADDL_EFFECT
DefaultOrEnd:
    endscript

ElectricSeedBoost:
GrassySeedBoost:
    //Def up
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, DEFENSE_UP
    gotosubscript 12
    goto AfterBoost
MistySeedBoost:
PsychicSeedBoost:
    //Sp Def up
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPDEF_UP
    gotosubscript 12
    goto AfterBoost

.close
