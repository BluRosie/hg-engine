.include "asm/include/battle_commands.inc"

.data

// Called by Aeroblast, Air Cutter, Aqua Cutter, Attack Order, Crabhammer, Cross Chop, Drill Run, Karate Chop, Leaf Blade, Night Slash, Psycho Cut, Razor Leaf, Shadow Claw, Slash, Snipe Shot and Stone Edge.
_Start:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 1
    CalcCrit 
    CalcDamage 
    End 
