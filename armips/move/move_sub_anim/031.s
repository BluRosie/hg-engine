.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_031", 0

a061_031:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    changebg 24, 0x1
    waitforchangebg2
    callfunction 76, 1, 130, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg
    wait 45
    callfunction 26, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 2009, -117, 2, 4
    wait 15
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    enablemonsprite 0, 0x0
    wait 30
    resetbg 24, 0x1
    waitstate
    waitforchangebg
    resetsprite 0
    unloadspriteresource
    end

.close
