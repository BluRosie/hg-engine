.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

.include "armips/scr_seq/event_D50R0101.inc"


// text archive to grab from: 144.txt

.create "build/a012/2_129", 0


scrdef scr_seq_D50R0101_000
scrdef scr_seq_D50R0101_001
scrdef_end

scr_seq_D50R0101_001:
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0064
	move_person_facing obj_D50R0101_breakrock, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_2, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_3, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_4, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_5, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_6, 30, 1, 30, DIR_NORTH
_0064:
	end

scr_seq_D50R0101_000:
	simple_npc_msg 0
	end
	.align 4


.close
