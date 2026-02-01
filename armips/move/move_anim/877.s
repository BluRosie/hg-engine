.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_877", 0

//Make it Rain

a010_877:
    loadparticlefromspa 0, 37
    waitparticle

    callfunction 33, 5, 0, 1, 0, 15, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 53, 5, 70, 120, 8, 5, 15, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20
    playsepan 1906, 117
    addparticle 0, 1, 3
    wait 6
    addparticle 0, 1, 3
    wait 6
    addparticle 0, 1, 3
    wait 6

    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 1, 3
    waitse 2055, 117, 5
    shaketargetmon 8, 4
    shadetargetmon 255, 255, 0
    waitparticle
    unloadparticle 0
    waitstate
    callfunction 33, 5, 0, 1, 15, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
    
.close
