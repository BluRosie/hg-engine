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

.include "armips/scr_seq/event_R16R0201.inc"


// text archive to grab from: 356.txt

.create "build/a012/2_207", 0


scrdef scr_seq_R16R0201_000
scrdef scr_seq_R16R0201_001
scrdef scr_seq_R16R0201_002
scrdef scr_seq_R16R0201_003
scrdef_end

scr_seq_R16R0201_003:
	goto_if_set FLAG_UNK_149, _001F
	end

_001F:
	scrcmd_186 1
	end

scr_seq_R16R0201_001:
	scrcmd_609
	lockall
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _006A
	apply_movement obj_player, _0084
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _008C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_006A:
	scrcmd_186 1
	setvar VAR_UNK_4129, 1
	setvar VAR_UNK_412A, 1
	setflag FLAG_UNK_149
	releaseall
	end

	.align 4
_0084:

	step 32, 1
	step_end
	.align 4
_008C:

	step 15, 1
	step_end
scr_seq_R16R0201_002:
	scrcmd_186 0
	setvar VAR_UNK_4129, 0
	setvar VAR_UNK_412A, 0
	clearflag FLAG_UNK_149
	end

scr_seq_R16R0201_000:
	simple_npc_msg 0
	end
	.align 4


.close
