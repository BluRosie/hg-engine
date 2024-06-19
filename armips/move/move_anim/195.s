.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_195", 0

a010_195:
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
    loadparticle 0, 215
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 0
    addparticle 0, 3, 0
    addparticle 0, 0, 0
    addparticle 0, 1, 0
    playsepan 2018, 0
    wait 10
    callfunction 33, 5, 0, 1, 0, 16, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 34, 5, 2, 1, 1, 13741, 16, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 4, 1, 1, 13741, 16, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 8, 1, 1, 13741, 16, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 16, 1, 1, 13741, 16, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 16, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
