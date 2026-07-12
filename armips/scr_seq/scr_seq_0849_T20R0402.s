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

.include "armips/scr_seq/event_T20R0402.inc"


// text archive to grab from: 549.txt

.create "build/a012/2_849", 0


scrdef scr_seq_T20R0402_000
scrdef scr_seq_T20R0402_001
scrdef scr_seq_T20R0402_002
scrdef scr_seq_T20R0402_003
scrdef scr_seq_T20R0402_004
scrdef_end

scr_seq_T20R0402_002:
	goto_if_set FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND, _0025
	get_friend_sprite VAR_OBJ_0
_0025:
	end

scr_seq_T20R0402_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _006D
	buffer_players_name 0
	goto_if_set FLAG_GOT_STARTER, _005C
	gender_msgbox 0, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_005C:
	buffer_mon_species_name 1, VAR_SPECIAL_RESULT
	gender_msgbox 2, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_006D:
	get_party_lead_alive VAR_SPECIAL_x8006
	get_shiny_leaf_count VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	goto_if_set FLAG_SHOWED_FRIEND_A_SHINY_LEAF, _00B1
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _009E
_008F:
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_009E:
	setflag FLAG_SHOWED_FRIEND_A_SHINY_LEAF
	buffer_players_name 0
	gender_msgbox 7, 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B1:
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _00E4
	compare VAR_SPECIAL_x8004, 5
	goto_if_eq _00FC
	compare VAR_SPECIAL_x8004, 1
	goto_if_ge _0137
	goto _008F

_00E4:
	buffer_players_name 0
	get_follow_poke_party_index VAR_SPECIAL_RESULT
	bufferpartymonnick 1, VAR_SPECIAL_RESULT
	gender_msgbox 15, 16
	closemsg
	goto _010D

_00FC:
	try_give_shiny_leaf_crown VAR_SPECIAL_x8006
	setflag FLAG_UNK_184
	buffer_players_name 0
	gender_msgbox 11, 12
	closemsg
_010D:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	show_certificate 2
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	gender_msgbox 13, 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0137:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0150
	setvar VAR_SPECIAL_x8005, 4
	goto _0188

_0150:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _0169
	setvar VAR_SPECIAL_x8005, 3
	goto _0188

_0169:
	compare VAR_SPECIAL_x8004, 3
	goto_if_ne _0182
	setvar VAR_SPECIAL_x8005, 2
	goto _0188

_0182:
	setvar VAR_SPECIAL_x8005, 1
_0188:
	buffer_players_name 0
	buffer_int 1, VAR_SPECIAL_x8004
	buffer_int 2, VAR_SPECIAL_x8005
	gender_msgbox 9, 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	play_cry SPECIES_MARILL, 0
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
