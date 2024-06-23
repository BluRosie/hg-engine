.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_366", 0

a010_366:
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
    loadparticle 0, 384
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepanmod 2121, -117, 117, 4, 2
    jumpifside 0, _00F0, _0140
    waitparticle
    unloadparticle 0
    end
_00F0:
    addparticle 0, 0, 3
    addparticle 0, 2, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_0140:
    addparticle 0, 1, 3
    addparticle 0, 3, 17
    cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
