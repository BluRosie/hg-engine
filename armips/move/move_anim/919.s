.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_919", 0

//Supercell slam

a010_919:
    loadparticlefromspa 0, 358
    waitparticle
    loadparticlefromspa 1, 116
    waitparticle
    addparticle 0, 1, 3
    addparticle 0, 3, 3
    wait 8
    playsepan 1980, -117
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle

    addparticle 0, 2, 4
    addparticle 1, 2, 4
    wait 5
    addparticle 1, 0, 4
    shaketargetmon 4, 4
    shadetargetmon 255, 255, 0
    shakescreen
    playsepan 2007, 117
    wait 10
    
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
