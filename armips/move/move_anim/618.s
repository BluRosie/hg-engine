.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_618", 0
//Thousand Waves
a010_618:
    loadparticlefromspa 0, 386 //power gem for the hexagons
    waitparticle
    loadparticlefromspa 1, 255//hidden power waves
    waitparticle

    //green bg
    callfunction 33, 5, 0, 1, 0, 12, 6912, "NaN", "NaN", "NaN", "NaN", "NaN"
    shadeattackingmon 29, 29, 29
    addparticle 0, 2, 3 //hexagons on user
    addparticle 0, 3, 3 //whooshing outward, timed with particle 2 already
    playsepan 2088, -117
    waitparticle
    wait 5

    shakescreen

    loop 4
    addparticle 1, 4, 3 //wave bursts outward
    shaketargetmon 2, 6
    shadetargetmon 29, 29, 29
    repeatse 1968, -117, 1, 2
    wait 10
    doloop
    //addparticle 1, 4, 3 //wave bursts outward
    //shaketargetmon 2, 6
    //shadetargetmon 29, 29, 29
    //repeatse 1968, -117, 1, 2
    //wait 10
    //addparticle 1, 4, 3 //wave bursts outward
    //shaketargetmon 2, 6
    //shadetargetmon 29, 29, 29
    //repeatse 1968, -117, 1, 2
    //wait 10
    //addparticle 1, 4, 3 //wave bursts outward
    //shaketargetmon 2, 6
    //shadetargetmon 29, 29, 29
    //repeatse 1968, -117, 1, 2
    //wait 10
    //addparticle 1, 4, 3 //wave bursts outward
    //shaketargetmon 2, 6
    //shadetargetmon 29, 29, 29
    //wait 10

    playsepan 1874, 117
    addparticle 0, 2, 4 //hexagons on opponent
    addparticle 0, 1, 4 //hitmarkers on opponent

    callfunction 33, 5, 0, 1, 12, 0, 6912, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end


.close
