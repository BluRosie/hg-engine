.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_076", 0
// solar beam
a010_076:
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
    loadparticle 0, 107
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    checkturn _00C8, _0174
    end
_00C8:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 19, 3
    wait 10
    playsepan 2113, -117
    wait 20
    callfunction 34, 6, 2, 0, 2, 13311, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0174:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 3
    addparticle 0, 8, 3
    addparticle 0, 9, 3
    wait 5
    playsepanmod 1958, -117, 117, 4, 2
    wait 15
    addparticle 0, 10, 4
    addparticle 0, 11, 4
    addparticle 0, 1, 4
    wait 5
    callfunction 34, 6, 8, 0, 2, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
