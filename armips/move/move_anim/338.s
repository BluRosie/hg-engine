.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_338", 0

a010_338:
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
    loadparticle 0, 356
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    changebg 34, 0x20001
    waitforchangebg
    repeatse 1908, 0, 2, 16
    initresources 0, 8, 1, 1, 1, 1, 0, 0
    loadresources 0, 26
    loadpalette 0, 25, 1
    loadcell 0, 26
    loadcellanm 0, 26
    addsomething 0, 24, 26, 25, 26, 26, 0, 0, 1, 8, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 96
    repeatse 1920, 117, 3, 6
    addparticle 0, 0, 4
    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    resetbg 34, 0x40001
    waitforchangebg
    end

.close
