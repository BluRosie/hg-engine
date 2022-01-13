#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"


u16 SoundproofMoveList[] =
{
    MOVE_GROWL,
    MOVE_ROAR,
    MOVE_SING,
    MOVE_SUPERSONIC,
    MOVE_SCREECH,
    MOVE_SNORE,
    MOVE_UPROAR,
    MOVE_METAL_SOUND,
    MOVE_GRASS_WHISTLE,
    MOVE_HYPER_VOICE,
    MOVE_BUG_BUZZ,
    MOVE_CHATTER,
};

int MoveEndAbilityCheck(struct BattleStruct *sp, int attacker, int defender)
{
    int scriptnum = 0;
    int movetype;

    if (GetBattlerAbility(sp, attacker) == ABILITY_NORMALIZE)
    {
        movetype = TYPE_NORMAL;
    }
    else if (sp->move_type) // 02252EE0
    {
        movetype=sp->move_type;
    }
    else
    {
        movetype=sp->old_moveTbl[sp->current_move_index].type;
    }

    // 02252EF4
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_VOLT_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }
    
    // 02252F24
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_WATER_ABSORB) == TRUE)
    {
        if ((movetype == TYPE_WATER) && ((sp->server_status_flag & (0x00000020)) == 0) && (sp->old_moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }

    // 02252F6A
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FLASH_FIRE) == TRUE)
    {
        if ((movetype == TYPE_FIRE)
         && ((sp->battlemon[defender].condition & STATUS_FLAG_FROZEN) == 0) 
         && ((sp->server_status_flag & (0x00000020)) == 0) 
         && ((sp->old_moveTbl[sp->current_move_index].power) || (sp->current_move_index == MOVE_WILL_O_WISP)))
        {
            scriptnum = SUB_SEQ_HANDLE_FLASH_FIRE;
        }
    }

    // 02252FB0
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SOUNDPROOF) == TRUE)
    {
        {
            u32 i;

            for (i = 0; i < NELEMS(SoundproofMoveList); i++){
                if (SoundproofMoveList[i] == sp->current_move_index)
                {
                    scriptnum = SUB_SEQ_HANDLE_SOUNDPROOF;
                    break;
                }
            }
        }
    }

    // 02252FDC   
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_MOTOR_DRIVE) == TRUE)
    {
        if ((movetype == TYPE_ELECTRIC) && (attacker != defender))
        {
            scriptnum = SUB_SEQ_HANDLE_MOTOR_DRIVE;
        }
    }

    // 02252FF8
    if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_DRY_SKIN) == TRUE)
    {
        if ((movetype == TYPE_WATER)
         && ((sp->server_status_flag & (0x00000020)) == 0)
         && (sp->old_moveTbl[sp->current_move_index].power))
        {
            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[defender].maxhp, 4);
            scriptnum = SUB_SEQ_ABILITY_RECOVERED_HP;
        }
    }

    return scriptnum;
}

/*int SwitchInAbilityCheck(BATTLE_WORK *bw, BattleStruct *sp)
{
    
}

BOOL TurnEndAbilityCheck(BATTLE_WORK *bw, BattleStruct *sp, int client_no)
{
    
}*/
