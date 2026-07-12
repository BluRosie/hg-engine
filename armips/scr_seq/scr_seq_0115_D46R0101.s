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

.include "armips/scr_seq/event_D46R0101.inc"


// text archive to grab from: 132.txt

.create "build/a012/2_115", 0


scrdef scr_seq_D46R0101_000
scrdef scr_seq_D46R0101_001
scrdef_end

scr_seq_D46R0101_001:
	check_registered_phone_number PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0047
	goto_if_set FLAG_GAME_CLEAR, _0030
	goto _0047

_0030:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0047
	clearflag FLAG_UNK_263
	end

_0047:
	setflag FLAG_UNK_263
	end

scr_seq_D46R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4002, 1
	goto_if_ge _00DD
	npc_msg 0
_0065:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0089
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _00CC
	end

_0089:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BUGSY
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_263
	hide_person obj_D46R0101_gsleader2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_00CC:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00DD:
	npc_msg 4
	goto _0065

	.align 4


.close
