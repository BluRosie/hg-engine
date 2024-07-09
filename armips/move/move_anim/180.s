.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_180", 0

a010_180:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 2
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    cmd52 1, 1, 0
    callfunction 34, 5, 2, 0, 3, 32767, 10, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd1F 0x1, 0
    playsepan 1948, -117
    waitstate
    cmd20 0
    unloadspriteresource
    cmd53 1
    resetsprite 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
