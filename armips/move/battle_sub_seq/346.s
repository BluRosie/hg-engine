.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// handle terrain and field effect end of turn

GenericHealMsg equ (1396)

.create "build/move/battle_sub_seq/1_346", 0

a001_346:
    ifterrainoverlayistype GRASSY_TERRAIN, IsGrassyTerrain
    goto DefaultOrEnd
IsGrassyTerrain:
        changevar VAR_OP_SET, VAR_CLIENT_NO_AGI, 0x0
    GrassTerrainHealLoop:
        orderbattlersbyspeed 0x14

        changemondatabyvar VAR_OP_GET_RESULT, BATTLER_xFF, MON_DATA_MAX_HP, VAR_HP_TEMP // store max HP into temp var

        // break if full HP
        ifmonstat2 IF_EQUAL, BATTLER_xFF, MON_DATA_HP, VAR_HP_TEMP, IncreaseCounter
        ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_HP, 0, IncreaseCounter
        ifgrounded BATTLER_xFF, GrassTerrainHealContinue
        goto IncreaseCounter
    GrassTerrainHealContinue:
        damagediv VAR_HP_TEMP, 16 // leftovers recovery
        changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40

        gotosubscript 2
        printmessage GenericHealMsg, TAG_NICK, BATTLER_xFF, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s HP was restored.
        waitmessage
        wait 0x1E
    IncreaseCounter:
        changevar VAR_OP_ADD, VAR_CLIENT_NO_AGI, 0x1
        jumpifvarisvalidbattler VAR_CLIENT_NO_AGI, GrassTerrainHealLoop
DefaultOrEnd:
    endscript

.close
