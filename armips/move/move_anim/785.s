.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_785", 0
// Behemoth Bash
a010_785:

    loadparticlefromspa 0, 175 //explosion
    waitparticle

    loadparticlefromspa 1, 483 //seed flare
    waitparticle
    //use draco meteor bg
    
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 3 //user charges with explosion particles
    
    shadeattackingmon 28, 3, 3 //shade red-ish
    playsepan 1874, 0
    wait 5
    
    wait 10
    //undo draco bg
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 10
    cmd43
    cmd0C 7, 1
    changebg 5, 0x800001 //giga impact bg
    
    playsepan 1847, 117
    slideattackingmon 16, -8 //user charges forward
    repeatse 2096, -117, 3, 4
    addparticle 1, 1, 4     //seed flare particles explode outward on target

    wait 9
    
    wait 8
    shakescreen
    wait 7
    
    wait 7
    shaketargetmon 3, 8
    playsepan 1874, 117
    wait 14

    slideattackingmon -16, 8 //return user to original position
    cmd43
    cmd0C 7, 1
    resetbg 5, 0x1000001
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate

    end
    

.close
