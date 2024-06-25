.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_834", 0
// Springtide Storm
a010_834:
    loadparticlefromspa 0, 248 //Sweet Scent
    waitparticle
    loadparticlefromspa 1, 529 //hurricane, from w2
    waitparticle
    
    addparticle 0, 0, 0
    addparticle 0, 2, 0
    addparticle 0, 4, 0
    playsepan 2037, 0  //sweet scent anim and sound

    wait 10
    addparticle 1, 0, 4
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    addparticle 1, 3, 4
    addparticle 1, 4, 4 //these are the hurricane particles
    
    wait 10
    playsepan 1837, 117
    shaketargetmon 10, 4
    shadetargetmon 29, 29, 29
    wait 20

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
