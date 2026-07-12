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

.include "armips/scr_seq/event_T02R0302.inc"


// text archive to grab from: 458.txt

.create "build/a012/2_748", 0


scrdef scr_seq_T02R0302_000
scrdef scr_seq_T02R0302_001
scrdef scr_seq_T02R0302_002
scrdef scr_seq_T02R0302_003
scrdef_end

scr_seq_T02R0302_002:
	scrcmd_609
	lockall
	setvar VAR_UNK_412E, 2
	npc_msg 7
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0070
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 8
	goto_if_set FLAG_UNK_176, _0063
	npc_msg 9
	setflag FLAG_UNK_25B
	dummy_486
	setvar VAR_UNK_40E5, 2
	npc_msg 11
	setflag FLAG_UNK_176
_0063:
	npc_msg 12
	goto _0091

	.align 4
_0070:

	step 14, 2
	step 13, 1
	step 14, 2
	step_end
scr_seq_T02R0302_000:
scr_seq_T02R0302_003:
	scrcmd_609
	lockall
	apply_movement obj_player, _0120
	wait_movement
	npc_msg 0
_0091:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00ED
	set_follow_poke_inhibit_state 1
	setvar VAR_UNK_412E, 5
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00ED
	touchscreen_menu_show
	scrcmd_600
	heal_party
	npc_msg 2
	closemsg
	apply_movement obj_player, _017C
	wait_movement
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_412E, 4
	releaseall
	end

_00ED:
	set_follow_poke_inhibit_state 0
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0184
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_412E, 3
	releaseall
	end

	.align 4
_0120:

	step 34, 1
	step_end
scr_seq_T02R0302_001:
	scrcmd_609
	lockall
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0168
	npc_msg 5
	closemsg
	apply_movement obj_player, _0184
	wait_movement
	set_follow_poke_inhibit_state 0
	scrcmd_606
	scrcmd_109 253, 48
	setvar VAR_UNK_412E, 3
	releaseall
	end

_0168:
	npc_msg 6
	closemsg
	apply_movement obj_player, _017C
	wait_movement
	releaseall
	end

	.align 4
_017C:

	step 13, 3
	step_end
	.align 4
_0184:

	step 15, 1
	step_end
	.align 4


.close
