.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_353", 0

a010_353:
    checkturn _0010, _009C
    end
_0010:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 34, 6, 8, 0, 1, 13741, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 13, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1948, -117
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_009C:
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
    loadparticle 0, 371
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 0, 0, 16, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 2107, 0
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    wait 30
    repeatse 1993, 117, 6, 5
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 0, 16, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
