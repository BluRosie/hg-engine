.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_257", 0

a010_257:
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
    loadparticle 0, 275
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _00D4
    jumpifside 0, _0118, _0204
    end
_00D4:
    addparticle 0, 0, 0
    playsepanmod 2051, -117, 117, 4, 2
    waitstate
    wait 35
    waitparticle
    unloadparticle 0
    end
_0118:
    addparticle 0, 0, 0
    playsepanmod 2051, -117, 117, 4, 2
    callfunction 36, 5, 3, 0, 1, 3, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 3, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 52, 3, 4, -20, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 4, -20, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 35
    callfunction 52, 3, 5, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 5, 20, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_0204:
    addparticle 0, 1, 0
    playsepanmod 2051, -117, 117, 4, 2
    callfunction 36, 5, 3, 0, 1, 3, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 3, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 52, 3, 4, -20, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 4, -20, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 35
    callfunction 52, 3, 5, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 5, 20, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
