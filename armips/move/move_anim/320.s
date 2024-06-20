.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_320", 0

a010_320:
    jumpifside 0, _0014, _016C
    end
_0014:
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
    loadparticle 0, 338
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 8, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 24, 18, 0, 0, "NaN", "NaN"
    playsepanmod 2062, -117, 117, 4, 2
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 8, 0, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_016C:
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
    loadparticle 0, 338
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 8, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 24, 18, 0, 0, "NaN", "NaN"
    playsepanmod 2062, -117, 117, 4, 2
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 8, 0, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
