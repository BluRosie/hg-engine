.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_092", 0

a010_092:
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
    loadparticle 0, 123
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 123
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 3, 0, 1, 1
    callfunction 75, 5, 0, 81, 3, 0, 1, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 75, 5, 1, 80, 3, 0, 3, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 8, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 16, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 1859, 117
    callfunction 63, 6, 8, 0, 1, 0, 10, 31764, "NaN", "NaN", "NaN", "NaN"
    wait 8
    repeatse 1979, 117, 2, 7
    wait 12
    callfunction 63, 6, 8, 0, 1, 10, 0, 31764, "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 16, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    waitstate
    callfunction 40, 2, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 16, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    end

.close
