.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_272", 0

a010_272:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 2006, -117
    jumpifcontest _01B8
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspritemaybe 0, 0, 1, 1
    loadspritemaybe 1, 0, 2, 2
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    loadspriteresource 3
    loadspritemaybe 3, 0, 3, 3
    cmd52 3, 1, 3
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    transform 0
    loadspritemaybe 0, 0, 0, 0
    callfunction 70, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 2006, -117, 20
    wait 15
    copymonsprite 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    cmd53 0
    resetsprite 4
    cmd53 1
    resetsprite 3
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_01B8:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspritemaybe 0, 0, 1, 1
    loadspritemaybe 1, 0, 2, 2
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    transform 0
    loadspritemaybe 0, 0, 0, 0
    callfunction 70, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 2006, -117, 20
    wait 15
    copymonsprite 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
