.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_144", 0

a010_144:
    initspriteresource
    loadspriteresource 0
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadspritemaybe 0, 0, 0, 0
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    waitstate
    playsepan 1980, -117
    callfunction 69, 4, 0, 1, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    transform 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 1, 1
    callfunction 69, 4, 1, -1, 15, 15, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 12
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    cmd53 0
    resetsprite 4
    end

.close
