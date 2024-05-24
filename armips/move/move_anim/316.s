.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_316", 0

a010_316:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 1, 0, 1, 0
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 36, 5, -20, 0, 1, 10, 514, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 20, 0, 1, 10, 516, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 2026, 117, 2, 3
    wait 10
    playsepan 1930, -117
    callfunction 36, 5, 4, 0, 1, 2, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd53 0
    resetsprite 4
    end

.close
