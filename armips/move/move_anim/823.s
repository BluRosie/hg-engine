.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_823", 0
//Dragon Energy
a010_823:
    loadparticlefromspa 0, 477 //roar of time
    waitparticle
    loadparticlefromspa 1, 424 //dragon pulse
    waitparticle

    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2100, -117
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 5, 3
    addparticle 0, 6, 3//roar of time charge

    wait 35
    playsepanmod 2080, -117, 117, 4, 2
    addparticle 1, 3, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    wait 10
    shaketargetmon 6, 12
    shadetargetmon 10, 10, 10
    waitparticle

    
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate




    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
