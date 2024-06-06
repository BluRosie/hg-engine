.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_262", 0

a010_262:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 1, 0, 1, 1
    loadspriteresource 2
    loadspritemaybe 2, 0, 2, 2
    cmd52 2, 1, 2
    loadspriteresource 3
    loadspritemaybe 3, 0, 3, 3
    cmd52 3, 1, 3
    callfunction 32, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1948, -117
    wait 24
    playsepan 1950, 117
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    cmd53 1
    resetsprite 2
    cmd53 1
    resetsprite 3
    end

.close
