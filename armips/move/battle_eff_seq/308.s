.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/hold_item_effects.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Multi-Attack

.create "build/move/battle_eff_seq/0_308", 0

a030_308:
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_FIGHTING_MEMORY, _setFighting   // TYPE_FIGHTING
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_FLYING_MEMORY, _setFlying     // TYPE_FLYING  
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_POISON_MEMORY, _setPoison     // TYPE_POISON  
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_GROUND_MEMORY, _setGround     // TYPE_GROUND  
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_ROCK_MEMORY, _setRock       // TYPE_ROCK    
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_BUG_MEMORY, _setBug        // TYPE_BUG     
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_GHOST_MEMORY, _setGhost      // TYPE_GHOST   
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_STEEL_MEMORY, _setSteel      // TYPE_STEEL  
.if FAIRY_TYPE_IMPLEMENTED == 1
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_FAIRY_MEMORY, _setFairy      // TYPE_FAIRY
.endif
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_FIRE_MEMORY, _setFire       // TYPE_FIRE    
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_WATER_MEMORY, _setWater      // TYPE_WATER   
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_GRASS_MEMORY, _setGrass      // TYPE_GRASS   
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_ELECTRIC_MEMORY, _setElectric   // TYPE_ELECTRIC
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_PSYCHIC_MEMORY, _setPsychic    // TYPE_PSYCHIC 
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_ICE_MEMORY, _setIce        // TYPE_ICE     
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_DRAGON_MEMORY, _setDragon     // TYPE_DRAGON  
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_DARK_MEMORY, _setDark       // TYPE_DARK    
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
