.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_334", 0

a010_334:
    callfunction 33, 5, 0, 0, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 2038, -117, 8, 2
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    loadspritemaybe 2, 0, 2, 1
    callfunction 83, 2, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    waitstate
    end

.close
