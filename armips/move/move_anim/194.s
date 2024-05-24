.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_194", 0

a010_194:
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
    loadparticle 0, 214
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 34, 26, 0, 0, "NaN", "NaN"
    jumpifside 0, _00FC, _021C
    end
_00FC:
    playsepan 1948, 0
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1985, -117, 117, 4, 2
    waitstate
    wait 15
    callfunction 34, 6, 2, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2056, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2064, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 2009, 0
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_021C:
    playsepan 1948, 0
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1985, -117, 117, 4, 2
    waitstate
    wait 15
    callfunction 34, 6, 2, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2050, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2052, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 2009, 0
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
