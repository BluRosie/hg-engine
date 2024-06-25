.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_745", 0
// Double Iron Bash
a010_745:
    loadparticlefromspa 0, 460 //Iron Head
    waitparticle
    

    addparticle 0, 1, 4
    addparticle 0, 2, 4 
    playsepan 1972, 117
    shaketargetmon 4, 4
    shadetargetmon 5, 5, 5
    waitparticle
    addparticle 0, 1, 4
    addparticle 0, 2, 4 
    playsepan 1972, 117
    shaketargetmon 4, 4
    shadetargetmon 5, 5, 5
    wait 25
    unloadparticle 0
    waitstate
    end
    

.close
