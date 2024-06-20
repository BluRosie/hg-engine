.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_091", 0

a010_091:
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
    loadparticle 0, 122
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
    loadparticle 1, 32
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    checkturn _0180, _03D0
    end
_0180:
    callfunction 67, 5, 2, 0, 0, 8, 10, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 2
    wait 10
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 2
    wait 10
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    repeatse 1976, -117, 2, 3
    wait 45
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end
_03D0:
    callfunction 67, 5, 2, 0, 0, -8, 2, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1976, -117
    wait 2
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1976, -117
    wait 2
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -688, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1976, -117
    wait 5
    playsepan 1827, 117
    addparticle 1, 1, 4
    addparticle 1, 0, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
