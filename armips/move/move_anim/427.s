.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_427", 0

a010_427:
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
    loadparticle 0, 445
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1824, -117
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 45
    repeatse 2119, 0, 2, 9
    jumpifside 0, _0184, _0264
    end
_0184:
    jumpifcontest _01F8
    addparticle 0, 2, 3
    callfunction 65, 6, 0, 0, 0, 0, 20, 64, "NaN", "NaN", "NaN", "NaN"
    wait 19
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_01F8:
    addparticle 0, 4, 3
    callfunction 65, 6, 0, 0, 0, 0, 20, 64, "NaN", "NaN", "NaN", "NaN"
    wait 19
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_0264:
    addparticle 0, 3, 3
    callfunction 65, 6, 0, 0, 0, 0, 20, 64, "NaN", "NaN", "NaN", "NaN"
    wait 19
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
