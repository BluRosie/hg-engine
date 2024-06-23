.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_826", 0
// Thunderous Kick
a010_826:
    loadparticlefromspa 0, 175 //explosion
    waitparticle

    loadparticlefromspa 1, 56 //mega kick
    waitparticle

    loadparticlefromspa 2, 212 //zap cannon
    waitparticle


    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001

    shadeattackingmon 28, 3, 3 //shade red-ish
    addparticle 0, 2, 3 //user charges with explosion particles
    playsepan 1874, 0
    wait 25
    playsepan 1847, 117

    slideattackingmon 16, -8 //user charges forward
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    
    wait 10

    addparticle 2, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN" //launch the zap cannon



    //do mega kick anim
    wait 5
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    addparticle 1, 0, 4
    addparticle 1, 3, 4
    waitse 1847, 117, 1
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 68, 5, 5, 0, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    slideattackingmon -16, 8 //return user to original position
    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    wait 10

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
