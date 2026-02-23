.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_856", 0

//Axe Kick

a010_856:
    loadparticlefromspa 0, 56
    waitparticle
    loadparticlefromspa 1, 317
    waitparticle

    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    playsepan 2010, 117
    addparticle 1, 1, 4
    wait 5
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    addparticle 0, 3, 4
    waitse 1847, 117, 1
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 68, 5, 5, 0, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    waitforchangebg



    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
