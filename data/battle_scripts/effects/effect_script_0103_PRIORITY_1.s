.include "asm/include/battle_commands.inc"

.data

// Called by Accelerock, Aqua Jet, Bullet Punch, Grassy Glide, Ice Shard, Jet Punch, Mach Punch, Quick Attack, Shadow Sneak and Vacuum Wave.
_Start:
    CalcCrit 
    CalcDamage 
    End 
