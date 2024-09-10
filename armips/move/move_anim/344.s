.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_344", 0
//volt tackle
a010_344:
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
    loadparticle 0, 362
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    changebg 27, 0x1
    waitforchangebg
    callfunction 68, 5, 1, 1, 0, 25, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1993, -117, 2, 4
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 10
    playsepanmod 1970, -117, 117, 4, 2
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    wait 10
    playsepanmod 1970, 117, -117, 4, 2
    addparticle 0, 5, 0
    addparticle 0, 6, 0
    wait 10
    playsepanmod 1970, -117, 117, 4, 2
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    wait 40
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    repeatse 1969, 117, 3, 2
    waitparticle
    unloadparticle 0
    resetbg 27, 0x1
    waitforchangebg
    end

.close
