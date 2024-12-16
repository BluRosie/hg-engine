#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"

// TODO: https://bulbapedia.bulbagarden.net/wiki/Ignoring_Abilities#Ignorable_Abilities
/*

Abilities are only ignored while the move is being executed. They take effect again immediately after its execution.

    Abilities that prevent status conditions (such as Immunity and Oblivious) will not protect the Pokémon from receiving the status condition. However, many of these Abilities also have effects to cure the Pokémon of the status condition if afflicted, which will activate immediately after being inflicted with the status condition, even if it was inflicted while the Ability was being ignored.
    If a Pokémon with Own Tempo consumes a held Berry that may cause confusion in response to the move that ignores Abilities, it will become confused if it dislikes the flavor. However, Own Tempo will then activate and cure it of confusion.

*/


void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove5(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove5\n")
#endif

    switch (ctx->wb_seq_no) {
        default:;
    }
}
