.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_383", 0

a010_383:
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
    loadparticle 0, 401
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2113, 117
    jumpifcontest _01A8
    addparticle 0, 0, 4
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 3
    wait 35
    playsepanmod 2083, 117, -117, 4, 2
    wait 10
    callfunction 34, 6, 2, 0, 1, 4328, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_01A8:
    addparticle 0, 0, 4
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 3
    wait 35
    playsepanmod 2083, 117, -117, 4, 2
    wait 10
    callfunction 34, 6, 2, 0, 1, 4328, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
