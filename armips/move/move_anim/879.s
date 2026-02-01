.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_879", 0

//Hydro Steam

a010_879:
    loadparticlefromspa 0, 87 //hydro pump
    waitparticle
    loadparticlefromspa 1, 84 //flamethrower
    waitparticle
    loadparticlefromspa 2, 364 //water sport
    waitparticle
    loadparticlefromspa 3, 333 //overheat
    waitparticle

    cmd43 //flare blitz bg
    cmd0C 7, 1
    changebg 33, 0x1
    addparticle 0, 0, 3 //water spurts from user
    addparticle 0, 4, 17 //hydro pump beam
    cmd37 6, 0, 2, 10, 6, 0, 0, "NaN", "NaN" //use this and 17 target in line above to have the beam target
    playsepanmod 2109, -117, 117, 4, 2 // pump sound
    wait 10

    addparticle 1, 0, 4 //flamthrower crisps the opponent 
    addparticle 3, 1, 4 //flame burst outward
    addparticle 3, 2, 4 //smoke on opponent
    addparticle 2, 2, 4 //little water shoots out on opponent
    shadetargetmon 31, 0, 0 //make the opponent red
    shaketargetmon 5, 3 //shake 'em a bit
    waitstate
    wait 10

    cmd43
    cmd0C 7, 1
    resetbg 33, 0x1
    waitforchangebg //undo flare blitz bg

    unloadparticle 0
    waitparticle
    unloadparticle 1
    waitparticle
    unloadparticle 2
    waitstate
    unloadparticle 3
    waitstate
    end
    

.close
