.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_784", 0
// Behemoth Blade
a010_784:
    loadparticlefromspa 0, 526 //sacred sword particles, emitter 3 is slashing motion
    waitparticle
    loadparticlefromspa 1, 527 //secret sword particles,
    waitparticle
    loadparticlefromspa 2, 483 //seed flare
    waitparticle

    //use draco meteor bg
    
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1877, -117
    shadeattackingmon 29, 29, 29 //shade almost white
    addparticle 2, 0, 3 //seedflare charge anim (white light)
    wait 10
    //undo draco bg
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    cmd43
    cmd0C 7, 1
    changebg 5, 0x800001 //giga impact bg
    
    playsepan 1847, 117
    slideattackingmon 16, -8 //user charges forward
    addparticle 1, 3, 4 //sword comes down
    wait 9
    addparticle 1, 7, 4 //slash 1
    wait 8
    playsepan 1910, 117 
    addparticle 2, 1, 4     //seed flare particles explode outward on target
    wait 7
    addparticle 0, 3, 4 //slash 2
    wait 7
    shaketargetmon 3, 8
    playsepan 1910, 117 
    wait 14
    shakescreen
    shadetargetmon 29, 29, 29
    playsepan 1874, 117
    waitparticle            //slice and dice

    slideattackingmon -16, 8 //return user to original position
    cmd43
    cmd0C 7, 1
    resetbg 5, 0x1000001

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    unloadparticle 2
    waitstate
    end
    

.close
