.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_820", 0

a010_820: //wicked blow
    loadparticlefromspa 0, 478 //0 is particles coming in, 1 is darkness out,3 spirals out,5 darkness in
    waitparticle
    loadparticlefromspa 1, 36 //emitter 2 is big red fist
    waitparticle


    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" //user winds up
    addparticle 0, 0, 4
    addparticle 0, 5, 4
    wait 10
    cmd43
    cmd0C 7, 1
    changebg 5, 0x800001 //giga impact bg
    playsepan 1847, -117
    waitstate



    callfunction 57, 4, 4, 32, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    
    addparticle 1, 2, 4
    shaketargetmon 8, 8
    playsepan 1833, 117
    wait 3
    addparticle 0, 1, 4
    playsepan 1859, 117
    wait 6

    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    cmd43
    cmd0C 7, 1
    resetbg 5, 0x1000001 //revert bg to normal

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
