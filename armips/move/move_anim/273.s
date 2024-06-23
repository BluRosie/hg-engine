.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_273", 0

a010_273:
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
    loadparticle 0, 291
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg
    playsepanmod 1990, -117, 117, 4, 2
    addparticle 0, 0, 0
    addparticle 0, 1, 0
    wait 30
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    repeatse 2033, 117, 16, 3
    wait 20
    callfunction 34, 6, 2, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    end

.close
