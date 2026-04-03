.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_863", 0

// Population Bomb

a010_863:
    loadparticlefromspa 0, 420 //seedbomb
    waitparticle

    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 6
    shaketargetmon 4, 4
    waitse 1993, 117, 12
    waitse 1993, 117, 24
    waitstate
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
