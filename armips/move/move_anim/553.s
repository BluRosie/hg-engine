.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_553", 0
//bolt strike
a010_553:
    loadparticlefromspa 0, 500 //heavy slam
    waitparticle
    loadparticlefromspa 1, 502 //electric particle effects
    waitparticle
    loadparticlefromspa 2, 118 //thunder
    waitparticle
    loadparticlefromspa 3, 286 //charge
    waitparticle


    addparticle 3, 0, 3
    addparticle 3, 1, 3
    wait 2
    addparticle 1, 5, 3 //user charges electricity
    changebg 27, 0x1
    waitforchangebg
    callfunction 68, 5, 1, 1, 0, 25, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1993, -117, 2, 4 //change bg to volt tackle bg and turn user yellow
    
    //playsepan 1925, -117
    wait 4
    slideattackingmon -16, 8
    
    wait 15
    addparticle 2, 4, 4 //initial lightning target
    playsepan 1970, 117
    wait 18
    playsepan 1847, 117
    slideattackingmon 32, -16


    addparticle 2, 2, 4
    addparticle 2, 1, 4
    playsepan 2007, 117
    shaketargetmon 4, 7 // 4 times magnitude 7
    wait 10
    
    slideattackingmon -16, 8
    waitstate

    resetbg 27, 0x1
    waitforchangebg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    unloadparticle 2
    waitstate
    unloadparticle 3
    waitstate
    end
    

.close
