.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/event_T05R0701.inc"


// text archive to grab from: 482.txt

.data


scrdef scr_seq_T05R0701_000
scrdef scr_seq_T05R0701_001
scrdef scr_seq_T05R0701_002
scrdef scr_seq_T05R0701_003
scrdef scr_seq_T05R0701_004
scrdef scr_seq_T05R0701_005
scrdef scr_seq_T05R0701_006
scrdef_end

scr_seq_T05R0701_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_EXPN_CARD, _0069
	goto_if_set FLAG_RESTORED_POWER, _0047
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0047:
	buffer_players_name 0
	gender_msgbox 4, 5
	npc_msg 6
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	setflag FLAG_GOT_EXPN_CARD
	goto_if_set FLAG_GOT_RADIO_CARD, _0069
	register_pokegear_card 2
_0069:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

scr_seq_T05R0701_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_EXPN_CARD, _0092
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_0092:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_T05R0701_000:
	simple_npc_msg 0
	end

scr_seq_T05R0701_001:
	simple_npc_msg 1
	end

scr_seq_T05R0701_002:
	simple_npc_msg 2
	end

scr_seq_T05R0701_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_T05R0701_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end
	.balign 4
