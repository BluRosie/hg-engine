.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_174", 0

a010_174:
    checkturn _0010, _0188
    end
_0010:
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
    loadparticle 0, 194
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 1, 3
    loop 1
    playsepan 2016, -117
    callfunction 34, 6, 2, 0, 1, 31, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 10, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    callfunction 52, 3, 20, -20, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20
    callfunction 52, 3, 10, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    doloop
    waitstate
    waitparticle
    unloadparticle 0
    end
_0188:
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
    loadparticle 0, 194
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 1830, -117, 12, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 0, 3
    callfunction 36, 5, 2, 0, 1, 6, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
