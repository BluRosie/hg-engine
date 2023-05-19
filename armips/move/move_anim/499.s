.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_499", 0

// round move animation

red equ 30
blue equ 10
green equ 10

a010_499:
    loadparticlefromspa 0, 510
    waitparticle

// place circles around user
    addparticle 0, 6, 3
    addparticle 0, 5, 3
    wait 10
    
    jumpifside 0, playerPart, enemyPart
    end

playerPart:
// shoot off blue
    addparticle 0, 7, 3
    wait 8
// shoot off notes
    addparticle 0, 4, 3

    wait 60
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
	
	wait 5
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    
    wait 55
    unloadparticle 0
    waitstate
    end

// may have to duplicate, not sure there is a goto command for these

enemyPart:
// shoot off blue
    addparticle 0, 8, 3
    wait 8
// shoot off notes
    addparticle 0, 9, 3

    wait 60
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
	
	wait 5
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    
    wait 55
    unloadparticle 0
    waitstate
    end
    

.close
