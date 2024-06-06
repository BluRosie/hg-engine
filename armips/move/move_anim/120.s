.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_120", 0

a010_120:
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
    loadparticle 0, 145
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 7, 2
    changebg 21, 0x1
    waitforchangebg
    callfunction 68, 5, 8, 8, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1993, -117, 2, 10
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    addparticle 0, 2, 3
    wait 20
    playsepan 1993, -117
    callfunction 36, 5, 4, 0, 1, 2, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd0C 7, 2
    resetbg 21, 0x1
    waitforchangebg
    end

.close
