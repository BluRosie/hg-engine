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

.include "armips/scr_seq/event_T25R0401.inc"


// text archive to grab from: 586.txt

.create "build/a012/2_892", 0


scrdef scr_seq_T25R0401_000
scrdef scr_seq_T25R0401_001
scrdef scr_seq_T25R0401_002
scrdef_end

scr_seq_T25R0401_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_EEVEE_FROM_BILL, _00E9
	buffer_players_name 0
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _004B
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00D3
	end

_004B:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _00DE
	npc_msg 1
	give_mon SPECIES_EEVEE, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag FLAG_GOT_EEVEE_FROM_BILL
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00A0
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _00C6
_00A0:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_00C6:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_00D3:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00DE:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E9:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0401_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_410D, 1
	goto_if_eq _0114
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0114:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0401_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_BILL, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _019C
	compare VAR_UNK_410D, 1
	goto_if_eq _0152
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0152:
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0179
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0191
	end

_0179:
	buffer_players_name 0
	npc_msg 13
	register_gear_number PHONE_CONTACT_BILL
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0191:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019C:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
