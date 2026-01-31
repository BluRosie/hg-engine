.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_875", 0

//Aqua Step

a010_875:
    loadparticlefromspa 0, 98
    waitparticle
    loadparticlefromspa 1, 152
    waitparticle

    addparticle 1, 1, 4
    wait 5
    playsepan 1823, 117
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    
    shaketargetmon 4, 4
    shadetargetmon 0, 0, 28

    wait 8

    
    playsepan 1995, 117
    

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
