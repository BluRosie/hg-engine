.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_145", 0

a010_145:
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
    loadparticle 0, 168
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
    loadparticle 1, 168
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _0250
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 31, 24, 0, 4, "NaN", "NaN"
    repeatse 1997, 0, 2, 5
    wait 10
    addparticle 1, 1, 20
    wait 10
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1999, 117, 2, 2
    wait 10
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end
_0250:
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 28, 22, 0, 4, "NaN", "NaN"
    repeatse 1997, 0, 2, 5
    wait 10
    addparticle 1, 1, 20
    wait 10
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1999, 117, 2, 2
    wait 10
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
