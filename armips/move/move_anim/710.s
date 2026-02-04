.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_710", 0

//Stomping Tantrum

a010_710:
    loadparticlefromspa 0, 54 //Stomp particles
    waitparticle
    loadparticlefromspa 1, 120 //eq
    waitparticle

    addparticle 1, 0, 4
    wait 4
    callfunction 27, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    shaketargetmon 2, 10
    shadetargetmon 150, 75, 0
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    playsepan 1827, 117
    wait 4
    shaketargetmon 2, 10
    shadetargetmon 150, 75, 0
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    waitse 1827, 117, 5
    wait 4
    

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
