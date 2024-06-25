.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_881", 0
// Collision Course
a010_881:
    loadparticlefromspa 0, 143 //focus energy
    waitparticle
    loadparticlefromspa 1, 192 //flame wheel
    waitparticle
    loadparticlefromspa 2, 175 //explosion
    waitparticle
    cmd43
    cmd0C 7, 1
    changebg 5, 0x800001
    addparticle 1, 0, 3 //flame wheel
    addparticle 0, 1, 3 //focus energy
    slideattackingmon -16, 8 //slide back and charge

    wait 15
    addparticle 2, 0, 4
    wait 20
    addparticle 2, 1, 4
    playsepan 1847, 117
    slideattackingmon 32, -16 //move forward with hit
    waitstate

    playsepan 1874, 0
    wait 14
    repeatse 2096, -117, 3, 4

    shaketargetmon 4, 7 // 4 times magnitude 7
    shadetargetmon 31, 1, 1
    wait 40
    slideattackingmon -16, 8 //return to normal position
    waitstate

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    unloadparticle 2
    waitstate
    cmd43
    cmd0C 7, 1
    resetbg 5, 0x1000001
    waitforchangebg
    end
    

.close
