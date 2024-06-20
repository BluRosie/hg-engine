.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_827", 0
//Glacial Lance
a010_827:
    loadparticlefromspa 0, 535 //Icicle Crash
    waitparticle
    loadparticlefromspa 1, 351 //Icicle Spear
    waitparticle
    loadparticlefromspa 2, 536 //Glaciate
    waitparticle


    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN" //dark bg
    addparticle 2, 0, 3
    wait 15
    initresources 0, 3, 1, 1, 1, 1, 0, 0
    loadresources 0, 30
    loadpalette 0, 30, 1
    loadcell 0, 30
    loadcellanm 0, 30
    
    addsomething 0, 17, 30, 30, 30, 30, 0, 0, 4, -15, -5, 10, 32, "NaN", "NaN", "NaN", "NaN"
    playsepan 2019, -117
    wait 5
    addsomething 0, 17, 30, 30, 30, 30, 0, 0, 4, -5, -20, 10, 32, "NaN", "NaN", "NaN", "NaN"
    playsepan 2019, -117 //icicle spear 2 times

    wait 20
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4 //icicle crash hit
    //addparticle 2, 5, 4
    repeatse 2052, 0, 4, 12
    shaketargetmon 10, 6
    shadetargetmon 2, 2, 25  //glaciate hit

    wait 50
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN" //dark bg


    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    waitstate
    end
    

.close
