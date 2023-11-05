.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_575", 0

a010_575:
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
    loadparticle 0, 257
    loadparticle 1, 111
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd3E 0, 0
    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    changebg 34, 0x20001
    waitforchangebg
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    addparticle 1, 3, 4
    addparticle 1, 0, 4
    addparticle 0, 1, 20
    wait 10
    playsepan 1837, 117
    wait 10
    callfunction 36, 5, 3, 0, 1, 15, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 15, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    freeresources 0
    unloadparticle 0
    unloadparticle 1
    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    resetbg 34, 0x40001
    waitforchangebg
    end
    
.close
