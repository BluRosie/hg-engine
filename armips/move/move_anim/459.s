.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_459", 0
//Roar of Time
a010_459:
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
    loadparticle 0, 477
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 5, 3
    addparticle 0, 0, 3
    addparticle 0, 6, 3
    playsepan 2100, -117
    wait 20
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 30
    playsepan 1529, -117
    wait 20
    callfunction 33, 5, 0, -2, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, -2, 0, 15, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1938, 117
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 4, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    wait 20
    callfunction 33, 5, 0, -2, 15, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    stopse 1938
    end

.close
