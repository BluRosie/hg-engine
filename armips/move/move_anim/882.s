.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_882", 0
//Electro Drift
a010_882:
    loadparticlefromspa 0, 533 //g5 initial blue electricity
    waitparticle
    loadparticlefromspa 1, 534 //g5 blue electricity hits
    waitparticle
    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    addparticle 0, 3, 3 //user charges blue electricity
    repeatse 2066, -117, 12, 5

    slideattackingmon -16, 8 //slide back and charge

    wait 45
    playsepan 1847, 117
    slideattackingmon 32, -16 //move forward with hit
    waitstate
    addparticle 1, 3, 3 //electricity bursts out
    addparticle 1, 1, 4

    playsepan 1874, 0
    wait 14
    repeatse 2096, -117, 3, 4
    addparticle 1, 6,4
    addparticle 1, 7,4
    addparticle 1, 8,4
    addparticle 1, 9,4

    shaketargetmon 4, 7 // 4 times magnitude 7
    shadetargetmon 30, 30, 30
    wait 30
    slideattackingmon -16, 8 //return to normal position
    waitstate

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg
    end

.close
