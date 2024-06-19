.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_247", 0

a010_247:
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
    loadparticle 0, 265
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 4, 0
    addparticle 0, 0, 0
    addparticle 0, 1, 0
    repeatse 1923, 0, 2, 12
    wait 55
    addparticle 0, 2, 0
    callfunction 65, 8, 0, 0, 0, 0, 8, 255, 0, 262144, "NaN", "NaN"
    addparticle 0, 3, 4
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 8296, 14, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1903, 117
    waitparticle
    unloadparticle 0
    end

.close
