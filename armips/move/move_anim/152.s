.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_152", 0

//Crabhammer

a010_152:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 174
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2040, 117
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    callfunction 33, 5, 0, 0, 0, 8, 49930, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 8, 0, 49930, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2003, 117
    callfunction 36, 5, 0, 4, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
