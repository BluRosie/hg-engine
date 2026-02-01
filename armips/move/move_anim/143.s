.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_143", 0

//Sky attack

a010_143:
    checkturn _0010, _0460
    end
_0010:
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
    loadparticle 0, 167
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 3
    jumpifplayerattack _0204
    callfunction 33, 5, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    repeatse 2066, -117, 12, 2
    wait 25
    callfunction 34, 6, 2, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 6, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 1, 10, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    end
_0204:
    jumpifside 0, _0218, _033C
    end
_0218:
    callfunction 33, 5, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2056, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2064, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    repeatse 2066, -117, 12, 2
    wait 25
    callfunction 34, 6, 2, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 6, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 1, 10, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    end
_033C:
    callfunction 33, 5, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2050, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2052, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    repeatse 2066, -117, 12, 2
    wait 25
    callfunction 34, 6, 2, 0, 1, 32767, 12, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 6, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 1, 10, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    end
_0460:
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
    loadparticle 0, 167
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    changebg 18, 0x20001
    waitforchangebg
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 38, 6, 1, 16, 0, 0, 16, 8, "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    enablemonsprite 0, 0x0
    enablemonsprite 4, 0x0
    playsepanmod 2068, -117, 117, 4, 2
    jumpifcontest _07A4
    jumpifside 0, _0640, _0908
    end
_0640:
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    wait 5
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 6, 4
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_07A4:
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    wait 5
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 6, 4
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_0908:
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    wait 5
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 6, 4
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end

.close
