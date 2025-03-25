.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_851", 0
// Sandsear Storm
a010_851:
    loadparticlefromspa 0, 220 //sandstorm
    waitparticle
    loadparticlefromspa 1, 529 //hurricane, from w2
    waitparticle

    addparticle 0, 1, 0
    addparticle 0, 0, 0
    playsepan 2022, 0  //exactly the sandstorm animation and sound

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
    wait 30

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
