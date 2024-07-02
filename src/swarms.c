#include "../include/types.h"
#include "../include/constants/maps.h"

#define SWARM_MAP_COUNT 20

#define SWARM_GRASS     0
#define SWARM_SURFING   1
#define SWARM_FISHING   2

const u16 sSwarmMapLUT[SWARM_MAP_COUNT][2] = {
    {MAP_R01,       SWARM_GRASS},
    {MAP_R03,       SWARM_GRASS},
    {MAP_R09,       SWARM_GRASS},
    {MAP_R12,       SWARM_FISHING},
    {MAP_R13,       SWARM_GRASS},
    {MAP_W19,       SWARM_SURFING},
    {MAP_R32,       SWARM_FISHING},
    {MAP_R25,       SWARM_GRASS},
    {MAP_R27,       SWARM_SURFING},
    {MAP_R34,       SWARM_GRASS},
    {MAP_R35,       SWARM_GRASS},
    {MAP_R38,       SWARM_GRASS},
    {MAP_R44,       SWARM_FISHING},
    {MAP_R45,       SWARM_GRASS},
    {MAP_R47,       SWARM_GRASS},
    {MAP_D38R0101,  SWARM_GRASS},
    {MAP_D42R0102,  SWARM_GRASS},
    {MAP_D46R0101,  SWARM_GRASS},
    {MAP_T06,       SWARM_SURFING},
    {MAP_T22,       SWARM_FISHING},
};
