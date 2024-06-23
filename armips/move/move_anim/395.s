.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_395", 0

a010_395:
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
    loadparticle 0, 413
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifside 0, _00CC, _01AC
    end
_00CC:
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 20
    playsepan 1884, 117
    playsepan 1910, 117
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_01AC:
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 20
    playsepan 1884, 117
    playsepan 1910, 117
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
