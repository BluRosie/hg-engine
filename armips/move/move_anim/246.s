.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_246", 0

a010_246:
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
    loadparticle 0, 264
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _0198
    playsepan 1965, -117
    addparticle 0, 1, 3
    wait 10
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    wait 20
    playsepanmod 1833, -117, 117, 4, 2
    wait 20
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    playsepan 1993, 117
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_0198:
    playsepan 1965, -117
    addparticle 0, 1, 3
    wait 10
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 3, 2, 0, "NaN", "NaN"
    cmd37 5, 1, 1, -120, -41, 0, "NaN", "NaN", "NaN"
    wait 20
    playsepanmod 1833, -117, 117, 4, 2
    wait 20
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    playsepan 1993, 117
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
