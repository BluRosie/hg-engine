#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/file.h"
#include "../../include/pokepic.h"
#include "../../include/task.h"
#include "../../include/types.h"

typedef struct FaintingSequenceData {
    struct BattleSystem *battleSys;
    void *battlerData;
    void *monSprite;
    u8 padding_0C[0x58]; // moveAnim ?
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    u16 species;
    u8 gender;
    u8 form;
    u32 personality;
    u16 isSubstitute;
    u16 isTransformed;
} FaintingSequenceData;

void Task_PlayFaintingSequence_WithVictoryPose(SysTask *task, void *data)
{
    FaintingSequenceData *faintingSequenceData = data;

#ifdef PLAY_MON_VICTORY_POSE
    // hijack the normal clean-up state to play the victory dance
    if (faintingSequenceData->state == 10) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
        void *monAnimMan = ov12_0223B750(battleSystem); // unk1C8 getter

        void *narc = NARC_ctor(114, HEAPID_BATTLE_HEAP); // NARC_poketool_pokegra_otherpoke

        if (IsClientEnemy(battleSystem, faintingSequenceData->battler)) {
            // victory pose for player side mons
            for (u32 i = BATTLER_PLAYER; i <= BATTLER_PLAYER2; i += 2) {
                if (!(battleCtx->no_reshuffle_client & No2Bit(i))) {
                    Pokepic *pokepic = &monSpriteMan->pics[i];
                    Pokepic_StartAnim(pokepic);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        pokepic,
                        battleCtx->battlemon[i].species,
                        0,
                        FALSE,
                        i);
                }
            }
        } else {
            // victory pose for enemy side mons
            for (u32 i = BATTLER_ENEMY; i <= BATTLER_ENEMY2; i += 2) {
                if (!(battleCtx->no_reshuffle_client & No2Bit(i))) {
                    Pokepic *pokepic = &monSpriteMan->pics[i];
                    Pokepic_StartAnim(pokepic);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        pokepic,
                        battleCtx->battlemon[i].species,
                        1,
                        FALSE,
                        i);
                }
            }
        }

        NARC_Delete(narc); // NARC_dtor
        faintingSequenceData->state++;
        // early return to avoid running the original task til the next frame
        return;
    }

    // if we reach our fake "11" state, decrement back to 10 before calling the original task
    if (faintingSequenceData->state == 11) {
        faintingSequenceData->state--;
    }
#endif // PLAY_MON_VICTORY_POSE

    // run the original task
    ov12_022600F0(task, data);
}
