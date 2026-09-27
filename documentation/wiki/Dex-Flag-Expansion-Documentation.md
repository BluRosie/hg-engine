## Dex Flag Expansion Documentation

I originally did this completely in assembly.  This makes it a little cumbersome to fix if for whatever reason things are broken.  Luckily, it seems that nothing is broken.  I even expanded from 1024 to 2048 still.

Currently, the game supports up to quadruple the original amount of dex flags (up to 2048).  The dex structure as we care about it looked something like this:

```c
struct DexSaveData
{
    u32 magic; // 0xBEEFCAFE
    u8 CaughtMons[0x40]; // 1 bit per mon, 0x40 * 8 = 0x200 = 512
    u8 SeenMons[0x40];
    u8 SeenMaleMons[0x40];
    u8 SeenFemaleMons[0x40];
    u8 otherthings[0x23C]; // the dex has other structures that result in an original total size of 0x340
}
```

With 512 bits at our command, we were able to have up to 512 Pokémon originally.  This is obviously an issue: with over 900 Pokémon implemented in this expansion, we need to reserve more space for this.

Many structures in the game used to rely on there only being 1024 Pokémon possible, with only 10 bits for the species field and the remaining 6 used for form.  All of these edge cases (specifically Trainer Data and Wild Pokémon) have been modified such that only the 5 most significant bits are the form field.  This leaves 11 bits for the species field in all cases, allowing for 2048 Pokémon.

That being said, the structure is reorganized as such:

```c
struct DexSaveData
{
    u32 magic; // 0xBEEFCAFE
    u8 CaughtMons[0x100]; // 1 bit per mon, 0x100 * 8 = 0x800 = 2048
    u8 otherthings[0x23C]; // the dex has other structures that result in an original total size of 0x340
    u8 spaceforlanguageoverflow[0xC0] // 0x340-0x400
    u8 SeenMons[0x100]; // 0x400
    u8 SeenMaleMon[0x100]; // 0x500
    u8 SeenFemaleMon[0x100]; // 0x600 - new size: 0x700
}
```

This allows for 2048 Pokémon to be seen, caught, and male/female comparisons.

All of Dex Flag Expansion is disabled with the `ALLOW_SAVE_CHANGES` config in [`armips/include/config.s`](https://github.com/BluRosie/hg-engine/blob/main/armips/include/config.s).  This is done to maintain PKHeX compatibility in hacks that desire to do so.  See more details in [`CONFIG.md`](https://github.com/BluRosie/hg-engine/blob/main/CONFIG.md).
