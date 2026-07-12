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

.include "armips/scr_seq/event_D24R0102.inc"


// text archive to grab from: 073.txt

.create "build/a012/2_038", 0


scrdef scr_seq_D24R0102_000
scrdef scr_seq_D24R0102_001
scrdef scr_seq_D24R0102_002
scrdef scr_seq_D24R0102_003
scrdef scr_seq_D24R0102_004
scrdef scr_seq_D24R0102_005
scrdef_end

scr_seq_D24R0102_005:
	clearflag FLAG_UNK_10F
	end

scr_seq_D24R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _0093
	compare VAR_UNK_40EC, 1
	goto_if_ge _008A
	goto_if_set FLAG_UNK_10F, _0081
	npc_msg 0
	setflag FLAG_UNK_10F
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0077
	apply_movement obj_D24R0102_suit, _009C
	goto _007F

_0077:
	apply_movement obj_D24R0102_suit, _00E4
_007F:
	wait_movement
_0081:
	npc_msg 1
	goto _0366

_008A:
	npc_msg 2
	goto _0366

_0093:
	npc_msg 3
	goto _0366

	.align 4
_009C:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 75, 1
	step_end
	.align 4
_00E4:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 75, 1
	step_end
scr_seq_D24R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNOWN_REPORT_LEVEL, 8
	goto_if_eq _033C
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_eq _02C4
	compare VAR_UNOWN_REPORT_LEVEL, 4
	goto_if_ge _0277
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02DB
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0223
	compare VAR_UNK_40EC, 4
	goto_if_eq _01F6
	compare VAR_UNK_40EC, 3
	goto_if_eq _01D6
	compare VAR_UNK_40EC, 2
	goto_if_eq _01C3
	compare VAR_UNK_40EC, 1
	goto_if_eq _01BA
_01B1:
	npc_msg 4
	goto _0366

_01BA:
	npc_msg 5
	goto _0366

_01C3:
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _035D
	goto _02FA

_01D6:
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _035D
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _0303
	goto _02FA

_01F6:
	compare VAR_UNOWN_REPORT_LEVEL, 3
	goto_if_eq _035D
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _030C
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _0303
	goto _02FA

_0223:
	compare VAR_UNK_40EC, 0
	goto_if_eq _01B1
	compare VAR_UNK_40EC, 1
	goto_if_eq _01BA
	compare VAR_UNOWN_REPORT_LEVEL, 4
	goto_if_eq _035D
	compare VAR_UNOWN_REPORT_LEVEL, 3
	goto_if_eq _0315
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _030C
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _0303
	goto _02FA

_0277:
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _035D
	compare VAR_UNK_40F1, 4
	goto_if_eq _02B1
	compare VAR_UNOWN_REPORT_LEVEL, 5
	goto_if_eq _035D
	compare VAR_UNK_40F1, 1
	goto_if_ge _0321
	goto _035D

_02B1:
	compare VAR_UNOWN_REPORT_LEVEL, 5
	goto_if_eq _032A
	goto _0321

_02C4:
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _0333
	goto _035D

_02DB:
	compare VAR_UNK_40EC, 1
	goto_if_eq _02F1
	npc_msg 4
	goto _0366

_02F1:
	npc_msg 9
	goto _0366

_02FA:
	npc_msg 6
	goto _0345

_0303:
	npc_msg 7
	goto _0345

_030C:
	npc_msg 8
	goto _0345

_0315:
	npc_msg 10
	npc_msg 11
	goto _0345

_0321:
	npc_msg 12
	goto _0345

_032A:
	npc_msg 13
	goto _0345

_0333:
	npc_msg 14
	goto _0345

_033C:
	npc_msg 17
	goto _0366

_0345:
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	addvar VAR_UNOWN_REPORT_LEVEL, 1
	goto _0366

_035D:
	npc_msg 15
	goto _0366

_0366:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D24R0102_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03AA
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03A1
	npc_msg 19
	goto _0366

_03A1:
	npc_msg 18
	goto _0366

_03AA:
	npc_msg 20
	goto _0366

scr_seq_D24R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _03EB
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03E2
	npc_msg 21
	goto _0366

_03E2:
	npc_msg 22
	goto _0366

_03EB:
	npc_msg 23
	goto _0366

scr_seq_D24R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	goto _0366
	.align 4


.close
