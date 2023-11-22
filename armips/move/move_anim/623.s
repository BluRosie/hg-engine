.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_623", 0

a010_623:
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
    loadparticle 0, 431
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

    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    wait 15
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 8, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 9, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 6, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 7, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"



    cmd43
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    resetbg 56, 0x40001
    waitforchangebg
    end
    

.close
