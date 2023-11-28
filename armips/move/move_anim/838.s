.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_838", 0

// Chloroblast
// Hyper Beam with Leaf Storm bg

a010_838:
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
    loadparticle 0, 94
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifplayerattack _01C0
    jumpifcontest _02A8
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 38, 0x20001
    waitforchangebg
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addsequentialparticle 0, 0, 1, 2, 3, 4, 5, 0x12
    addsequentialparticle 0, 10, 10, 10, 11, 11, 11, 0x12
    wait 5
    playsepanmod 1949, -117, 117, 4, 2
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 38, 0x40001
    waitforchangebg
    end
_01C0:
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 38, 0x20001
    waitforchangebg
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addparticlebasedonbattler 0, 7, 8, 7, 8, 0x3
    addparticlebasedonbattler 0, 13, 13, 13, 13, 0x3
    wait 5
    playsepanmod 1949, -117, 117, 4, 2
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 38, 0x40001
    waitforchangebg
    end
_02A8:
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 38, 0x20001
    waitforchangebg
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 9, 3
    addparticle 0, 6, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, 11008, -8256, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 12, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, 11008, -8256, 0, "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepanmod 1949, -117, 117, 4, 2
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 38, 0x40001
    waitforchangebg
    end

.close
