.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_352", 0

a010_352:
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
    loadparticle 0, 370
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 370
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 35, 0x20001
    waitforchangebg2
    callfunction 76, 1, 75, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg
    call _0298
    repeatse 1999, 0, 4, 6
    wait 5
    addparticle2 1, 0, 2, 3
    callfunction 65, 6, 0, 0, 0, 0, 12, 64, "NaN", "NaN", "NaN", "NaN"
    wait 10
    repeatse 2023, 117, 2, 3
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32720, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 30
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 35, 0x40001
    waitforchangebg
    end
_0298:
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    wait 1
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    wait 1
    return

.close
