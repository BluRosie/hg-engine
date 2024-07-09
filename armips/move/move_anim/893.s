.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_893", 0
//Armor Cannon
a010_893:
    loadparticlefromspa 0, 414//aura sphere
    waitparticle
    loadparticlefromspa 1, 143//focus energy
    waitparticle
    loadparticlefromspa 2, 333 //overheat
    waitparticle
    
    cmd43
    cmd0C 7, 1
    changebg 2, 0x800001//MEGAHORN bg
    waitforchangebg


    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"//aura sphere shot (delayed)


    addparticle 1, 1, 3
    callfunction 36, 5, 1, 0, 1, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 2, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1965, -117    //focus energy


    waitparticle
    addparticle 2, 1, 4
    addparticle 2, 2, 4//overheat hit
    playsepan 1907, 0
    shaketargetmon 4, 4
    shadetargetmon 31, 1, 1



    cmd43
    cmd0C 7, 1
    resetbg 2, 0x1000001
    waitforchangebg

    unloadparticle 0
    waitstate
    end
    

.close
