.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_093", 0

a010_093:
    changebg 20, 0x1
    waitforchangebg
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    callfunction 36, 5, 2, 0, 1, 2, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 2, 0, 1, 32767, 4, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1903, 117
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 11, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    resetbg 20, 0x1
    waitforchangebg
    end

.close
