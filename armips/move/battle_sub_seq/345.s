.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// handle terrain and field effects subscript

GrassFieldGrassBoostMsg equ (1399)
GrassFieldSoftenNerfMsg equ (1400)

ElectricFieldElectricBoostMsg equ (1401)
ElectricFieldElectricNerfMsg equ (1402)

MistyFieldFairyBoostMsg equ (1403)
MistyFieldDragonNerfMsg equ (1404)

PsychicFieldPsychicBoostMsg equ (1405)
PsychicFieldPsychicNerfMsg equ (1406)


GrassFieldFireBoostMsg equ (1504)
GrassFieldWindBoostMsg equ (1505)

CaveFieldSoundBuffMsg equ (1507)
CaveFieldChokeNerfMsg equ (1508)
CaveFieldRockBoostMsg equ (1509)
CaveFieldPiledOnBoostMsg equ (1510)

.create "build/move/battle_sub_seq/1_345", 0x0

HandleTerrainAndFieldEffects:
    ifterrainoverlayistype TERRAIN_NONE, HandleFieldEffects
    goto HandleTerrainOverlay
    
HandleTerrainOverlay:
    ifterrainoverlayistype GRASSY_TERRAIN, IsGrassyTerrain
    ifterrainoverlayistype MISTY_TERRAIN, IsMistyTerrain
    ifterrainoverlayistype ELECTRIC_TERRAIN, IsElectricTerrain
    ifterrainoverlayistype PSYCHIC_TERRAIN, IsPsychicTerrain
    goto DefaultOrEnd

    IsGrassyTerrain:
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_EARTHQUAKE, GrassFieldSoftenNerf
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MAGNITUDE, GrassFieldSoftenNerf
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_BULLDOZE, GrassFieldSoftenNerf
        ifmovepowergreaterthanzero GrassyTerrainTypeCheck
        goto DefaultOrEnd
        endscript
    IsMistyTerrain:
        ifmovepowergreaterthanzero MistyTerrainTypeCheck
        goto DefaultOrEnd
    IsElectricTerrain:
        ifmovepowergreaterthanzero ElectricTerrainTypeCheck
        goto DefaultOrEnd
    IsPsychicTerrain:
        ifmovepowergreaterthanzero PsychicFieldTypeCheck
        goto DefaultOrEnd
    goto DefaultOrEnd

HandleFieldEffects:
    ifcurrentfieldistype TERRAIN_GRASS, IsGrassField
    ifcurrentfieldistype TERRAIN_CAVE, IsCaveField
    goto DefaultOrEnd
    IsGrassField:
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_FAIRY_WIND, GrassFieldWindBoost
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_SILVER_WIND, GrassFieldWindBoost
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MUDDY_WATER, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_SURF, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_EARTHQUAKE, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MAGNITUDE, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_BULLDOZE, GrassFieldSoftenNerf
            ifmovepowergreaterthanzero GrassFieldTypeCheck
            goto DefaultOrEnd
        GrassFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_FIRE, GrassFieldDefenderGroundedCheck
        GrassyTerrainTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_GRASS, GrassFieldAttackerGroundedCheck
            goto DefaultOrEnd
        GrassFieldDefenderGroundedCheck:
            ifgrounded BATTLER_DEFENDER, GrassFieldFireBoost
            goto DefaultOrEnd
        GrassFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, GrassFieldGrassBoost
            goto DefaultOrEnd
        GrassFieldFireBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage GrassFieldFireBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The grass below caught flame!
            waitmessage
            wait 0x1E
            endscript
        GrassFieldGrassBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage GrassFieldGrassBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Grassy Terrain strengthened the attack!
            wait 0x1E
            endscript
        GrassFieldWindBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage GrassFieldWindBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The wind picked up strength from the field!
            waitmessage
            wait 0x1E
            endscript
        GrassFieldSoftenNerf:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x5 // 0.5 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage GrassFieldSoftenNerfMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The grass softened the attack...
            waitmessage
            wait 0x1E
            endscript
    IsElectricField:
            ifmovepowergreaterthanzero ElectricFieldTypeCheck
            goto DefaultOrEnd
        ElectricTerrainTypeCheck:
        ElectricFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_ELECTRIC, ElectricFieldAttackerGroundedCheck
            goto DefaultOrEnd
        ElectricFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, ElectricFieldElectricBoost
            goto DefaultOrEnd
        ElectricFieldElectricBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage ElectricFieldElectricBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Grassy Terrain strengthened the attack!
            wait 0x1E
            endscript
    IsMistyField:
            ifmovepowergreaterthanzero MistyFieldTypeCheck
            goto DefaultOrEnd
        MistyTerrainTypeCheck:
        MistyFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_FAIRY, MistyFieldAttackerGroundedCheck
            checkifcurrentadjustedmoveistype TYPE_DRAGON, MistyFieldDefenderGroundedCheck
            goto DefaultOrEnd
        MistyFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, MistyFieldFairyBoost
            goto DefaultOrEnd
        MistyFieldDefenderGroundedCheck:
            ifgrounded BATTLER_DEFENDER, MistyFieldDragonNerf
            goto DefaultOrEnd
        MistyFieldFairyBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage MistyFieldFairyBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Grassy Terrain strengthened the attack!
            wait 0x1E
            endscript
        MistyFieldDragonNerf:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x5 // 0.5 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage MistyFieldDragonNerfMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The grass softened the attack...
            waitmessage
            wait 0x1E
            endscript
    IsPsychicField:
            ifmovepowergreaterthanzero PsychicFieldTypeCheck
            goto DefaultOrEnd
        PsychicTerrainTypeCheck:
        PsychicFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_PSYCHIC, PsychicFieldAttackerGroundedCheck
            goto DefaultOrEnd
        PsychicFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, PsychicFieldElectricBoost
            goto DefaultOrEnd
        PsychicFieldElectricBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage PsychicFieldPsychicBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The Psychic Terrain strengthened the attack!
            wait 0x1E
            endscript
    IsCaveField:
        // Ground type attacks can hit airborne Pokemon
            // changevar VAR_OP_SET, VAR_CLIENT_NO_AGI, 0x0
        // CaveFieldGroundBattlersLoop:
            // orderbattlersbyspeed 0x14
            // setoneturnflag BATTLER_xFF, OTF_ROOST, 0x1
            // changevar VAR_OP_ADD, VAR_CLIENT_NO_AGI, 0x1
            // jumpifvarisvalidbattler VAR_CLIENT_NO_AGI, CaveFieldGroundBattlersLoop
            ifmovepowergreaterthanzero CaveFieldTypeCheck
            goto DefaultOrEnd
        CaveFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_ROCK, CaveFieldRockBoost
            checkifcurrentadjustedmoveistype TYPE_FLYING, CaveFieldCheckContactMove
            goto CaveFieldOtherChecks
        CaveFieldCheckContactMove:
            ifcontactmove CaveFieldOtherChecks
            // Non-contact Flying moves decrease in base power x0.5
            goto CaveFieldChokeNerf
        CaveFieldChokeNerf:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x5 // 0.5 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage CaveFieldChokeNerfMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The cave choked out the air!
            waitmessage
            wait 0x1E
            goto CaveFieldOtherChecks
        CaveFieldRockBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage CaveFieldRockBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The cavern strengthened the attack!
            waitmessage
            wait 0x1E
            goto CaveFieldOtherChecks
        CaveFieldOtherChecks:
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_ROCK_TOMB, CaveFieldPiledOnBoost
            ifsoundmove CaveFieldSoundBuff
            goto DefaultOrEnd
        CaveFieldSoundBuff:
            changevar VAR_OP_MUL, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            printmessage CaveFieldSoundBuffMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // ECHO-Echo-echo!
            waitmessage
            wait 0x1E
            endscript
        CaveFieldPiledOnBoost:
            changevar VAR_OP_MUL, VAR_DAMAGE_MULT, 0xD // 1.3 * 1.3 = 1.7 multiplier
            printmessage CaveFieldPiledOnBoostMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // ...Piled on!
            waitmessage
            wait 0x1E
            endscript

DefaultOrEnd:
    endscript

.close
