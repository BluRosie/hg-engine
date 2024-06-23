.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_217", 0

a010_217:
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
    loadparticle 0, 235
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 3
    callfunction 66, 6, 0, 0, 0, 0, 19, 64, "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1928, -117, 117, 4, 2
    wait 20
    checkturn _011C, _0180
    end
_011C:
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1847, 117, 3, 3
    waitparticle
    unloadparticle 0
    end
_0180:
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
    loadparticle 1, 27
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 1, 4
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 1, 0, 1, 0
    loadspritemaybe 3, 0, 2, 1
    callfunction 82, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1956, 117
    wait 5
    addparticle 1, 4, 4
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    waitparticle
    unloadparticle 1
    end

.close
