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

.include "armips/scr_seq/event_T27PC0101.inc"


// text archive to grab from: 615.txt

.create "build/a012/2_923", 0


scrdef scr_seq_T27PC0101_000
scrdef scr_seq_T27PC0101_001
scrdef scr_seq_T27PC0101_002
scrdef scr_seq_T27PC0101_003
scrdef scr_seq_T27PC0101_004
scrdef_end

scr_seq_T27PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T27PC0101_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T27PC0101_masaki, _0084
	apply_movement obj_player, _00A0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	npc_msg 1
	closemsg
	apply_movement obj_T27PC0101_masaki, _00AC
	apply_movement obj_player, _00C0
	wait_movement
	hide_person obj_T27PC0101_masaki
	setflag FLAG_UNK_1C5
	clearflag FLAG_HIDE_GOLDENROD_BILL
	setflag FLAG_SYS_MET_BILL
	setvar VAR_UNK_410D, 1
	releaseall
	end

	.align 4
_0084:

	step 13, 4
	step 15, 6
	step 12, 2
	step 62, 12
	step 1, 1
	step 62, 4
	step_end
	.align 4
_00A0:

	step 62, 20
	step 12, 4
	step_end
	.align 4
_00AC:

	step 15, 1
	step 13, 4
	step 14, 1
	step 13, 2
	step_end
	.align 4
_00C0:

	step 62, 6
	step 1, 1
	step_end
scr_seq_T27PC0101_002:
	simple_npc_msg 2
	end

scr_seq_T27PC0101_003:
	simple_npc_msg 3
	end

scr_seq_T27PC0101_004:
	simple_npc_msg 4
	end
	.align 4


.close
