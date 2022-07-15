.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_268", 0

a030_268:
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x83, _setFighting   // TYPE_FIGHTING
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x86, _setFlying     // TYPE_FLYING  
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x84, _setPoison     // TYPE_POISON  
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x85, _setGround     // TYPE_GROUND  
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x89, _setRock       // TYPE_ROCK    
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x88, _setBug        // TYPE_BUG     
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8A, _setGhost      // TYPE_GHOST   
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8D, _setSteel      // TYPE_STEEL  
.if FAIRY_TYPE_IMPLEMENTED == 1
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x93, _setFairy      // TYPE_FAIRY
.endif
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7E, _setFire       // TYPE_FIRE    
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7F, _setWater      // TYPE_WATER   
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x81, _setGrass      // TYPE_GRASS   
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x80, _setElectric   // TYPE_ELECTRIC
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x87, _setPsychic    // TYPE_PSYCHIC 
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x82, _setIce        // TYPE_ICE     
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8B, _setDragon     // TYPE_DRAGON  
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8C, _setDark       // TYPE_DARK    
    goto _return
_setFighting:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FIGHTING
    goto _return
_setFlying:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FLYING
    goto _return
_setPoison:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_POISON
    goto _return
_setGround:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_GROUND
    goto _return
_setRock:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ROCK
    goto _return
_setBug:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_BUG
    goto _return
_setGhost:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_GHOST
    goto _return
_setSteel:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_STEEL
    goto _return
.if FAIRY_TYPE_IMPLEMENTED == 1
_setFairy:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FAIRY
    goto _return
.endif
_setFire:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FIRE
    goto _return
_setWater:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_WATER
    goto _return
_setGrass:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_GRASS
    goto _return
_setElectric:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ELECTRIC
    goto _return
_setPsychic:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_PSYCHIC
    goto _return
_setIce:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ICE
    goto _return
_setDragon:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_DRAGON
    goto _return
_setDark:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_DARK
_return:
    critcalc
    damagecalc
    endscript

.close
