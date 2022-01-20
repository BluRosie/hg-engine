#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL, *monlistname = NULL, *typelistname = NULL, *itemlistname = NULL, *growthlistname = NULL, *egggrouplistname = NULL, *abilitylistname = NULL, *colorlistname = NULL;
    char textfromfile[BUFF_SIZE], speciesname[BUFF_SIZE];
    int i, elementnum, monnum = 0;
    long tmdata0, tmdata1, tmdata2, tmdata3;
    FILE *source, *monlist, *typelist, *itemlist, *growthlist, *egggrouplist, *abilitylist, *colorlist, *tmlearnset;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the mon level data from a text file containing all the constants.\n");
        return 1;
    }

    sourcename = argv[1];

    if (strcmp(sourcename, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the raw data.\n");
        return 1;
    }
    else
    {
        source = fopen(sourcename, "r+");

        if (!source)
        {
            fprintf(stderr, "Could not find %s\n", sourcename);
            return 1;
        }
    }

    monlistname = "rawdata/monnums.txt";

    if (strcmp(monlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the mon names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        monlist = fopen(monlistname, "r+");

        if (!monlist)
        {
            fprintf(stderr, "Could not find %s\n", monlistname);
            return 1;
        }
    }

    typelistname = "rawdata/typenums.txt";

    if (strcmp(typelistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the type names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        typelist = fopen(typelistname, "r+");

        if (!typelist)
        {
            fprintf(stderr, "Could not find %s\n", typelistname);
            return 1;
        }
    }

    itemlistname = "rawdata/itemnums.txt";

    if (strcmp(itemlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the item names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        itemlist = fopen(itemlistname, "r+");

        if (!itemlist)
        {
            fprintf(stderr, "Could not find %s\n", itemlistname);
            return 1;
        }
    }

    growthlistname = "rawdata/growthnums.txt";

    if (strcmp(growthlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the growth names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        growthlist = fopen(growthlistname, "r+");

        if (!growthlist)
        {
            fprintf(stderr, "Could not find %s\n", growthlistname);
            return 1;
        }
    }

    egggrouplistname = "rawdata/egggroupnums.txt";

    if (strcmp(egggrouplistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the egg group names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        egggrouplist = fopen(egggrouplistname, "r+");

        if (!egggrouplist)
        {
            fprintf(stderr, "Could not find %s\n", egggrouplistname);
            return 1;
        }
    }

    abilitylistname = "rawdata/abilitynums.txt";

    if (strcmp(abilitylistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the egg group names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        abilitylist = fopen(abilitylistname, "r+");

        if (!abilitylist)
        {
            fprintf(stderr, "Could not find %s\n", abilitylistname);
            return 1;
        }
    }

    colorlistname = "rawdata/bodycolornums.txt";

    if (strcmp(colorlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the egg group names.\n");
        fclose(source);
        return 1;
    }
    else
    {
        colorlist = fopen(colorlistname, "r+");

        if (!colorlist)
        {
            fprintf(stderr, "Could not find %s\n", colorlistname);
            return 1;
        }
    }

    tmlearnset = fopen("tmlearnset.s", "a");

    // god damn
    while (monnum <= 507)
    {
        // set up entry
        fgets(speciesname, BUFF_SIZE, monlist);
        strtok(speciesname, "\n");
        printf("mondata %s\n", speciesname);

        // BASE STATS

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        //printf("elementnum = %x\n", elementnum);

        printf("    basestats %d, ", elementnum);
        for (i = 0; i <= 3; i++)
        {
            fgets(textfromfile, 4, source);
            elementnum = strtol(textfromfile, NULL, 0x10);
            printf("%d, ", elementnum);
        }
        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        printf("%d\n", elementnum);

        // TYPES

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, typelist);
        strtok(textfromfile, "\n");
        fseek(typelist, 0, SEEK_SET);

        printf("    types %s, ", textfromfile);

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, typelist);
        strtok(textfromfile, "\n");
        fseek(typelist, 0, SEEK_SET);

        printf("%s\n", textfromfile);

        // CATCH RATE

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    catchrate %d\n", elementnum);

        // BASE EXP

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    baseexp %d\n", elementnum);

        // EV YIELDS

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

        printf("    evyields %d, %d, %d, %d, %d, %d\n", (elementnum &   0x3) >>  0, (elementnum &   0xC) >>  2,
                                                        (elementnum &  0x30) >>  4, (elementnum &  0xC0) >>  6,
                                                        (elementnum & 0x300) >>  8, (elementnum & 0xC00) >>  10);

        // ITEMS

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, itemlist);
        strtok(textfromfile, "\n");
        fseek(itemlist, 0, SEEK_SET);

        printf("    items %s, ", textfromfile);

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);
        fgets(textfromfile, 4, source);
        elementnum |= strtol(textfromfile, NULL, 0x10) << 8;

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, itemlist);
        strtok(textfromfile, "\n");
        fseek(itemlist, 0, SEEK_SET);

        printf("%s\n", textfromfile);

        // GENDER RATIO

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    genderratio %d\n", elementnum);

        // EGG CYCLES

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    eggcycles %d\n", elementnum);

        // BASE FRIENDSHIP

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    basefriendship %d\n", elementnum);

        // GROWTH RATE

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, growthlist);
        strtok(textfromfile, "\n");
        fseek(growthlist, 0, SEEK_SET);

        printf("    growthrate %s\n", textfromfile);

        // EGG GROUPS

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, egggrouplist);
        strtok(textfromfile, "\n");
        fseek(egggrouplist, 0, SEEK_SET);

        printf("    egggroups %s, ", textfromfile);

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, egggrouplist);
        strtok(textfromfile, "\n");
        fseek(egggrouplist, 0, SEEK_SET);

        printf("%s\n", textfromfile);

        // ABILITIES

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, abilitylist);
        strtok(textfromfile, "\n");
        fseek(abilitylist, 0, SEEK_SET);

        printf("    abilities %s, ", textfromfile);

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, abilitylist);
        strtok(textfromfile, "\n");
        fseek(abilitylist, 0, SEEK_SET);

        printf("%s\n", textfromfile);

        // RUN CHANCE

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        printf("    runchance %d\n", elementnum);

        // BODY COLOR AND FLIP

        fgets(textfromfile, 4, source);
        elementnum = strtol(textfromfile, NULL, 0x10);

        for (i = 0; i <= (elementnum & 0x7F); i++)
            fgets(textfromfile, BUFF_SIZE, colorlist);
        strtok(textfromfile, "\n");
        fseek(colorlist, 0, SEEK_SET);

        printf("    colorflip %s, %d\n", textfromfile, (elementnum & 0x80) >> 7);

        // TM DATA

        fgets(textfromfile, 4, source);
        fgets(textfromfile, 4, source);

        elementnum = 0;
        for (i = 0; i < 4; i++)
        {
            fgets(textfromfile, 4, source);
            elementnum |= (strtol(textfromfile, NULL, 0x10)) << (8 * i);
        }
        tmdata0 = elementnum;

        elementnum = 0;
        for (i = 0; i < 4; i++)
        {
            fgets(textfromfile, 4, source);
            elementnum |= strtol(textfromfile, NULL, 0x10) << (8 * i);
        }
        tmdata1 = elementnum;

        elementnum = 0;
        for (i = 0; i < 4; i++)
        {
            fgets(textfromfile, 4, source);
            elementnum |= strtol(textfromfile, NULL, 0x10) << (8 * i);
        }
        tmdata2 = elementnum;

        elementnum = 0;
        for (i = 0; i < 4; i++)
        {
            fgets(textfromfile, 4, source);
            elementnum |= strtol(textfromfile, NULL, 0x10) << (8 * i);
        }
        tmdata3 = elementnum;

        printf("    tmdata %s_TM_DATA_0, %s_TM_DATA_1, %s_TM_DATA_2, %s_TM_DATA_3\n\n\n", speciesname, speciesname, speciesname, speciesname);

        for (i = 0; i < 128; i++)
        {
            if (i % 32 == 0)
            {
                fprintf(tmlearnset, "%s_TM_DATA_%d equ ", speciesname, i / 32);
            }

            if (i < 32)
            {
                if (tmdata0 & (0x1 << i % 32))
                {
                    fprintf(tmlearnset, "TM%03d | ", i + 1);
                }

                if (i == 31)
                {
                    fprintf(tmlearnset, "0 \n");
                }
            }
            else if (i < 64)
            {
                if (tmdata1 & (0x1 << i % 32))
                {
                    fprintf(tmlearnset, "TM%03d | ", i + 1);
                }

                if (i == 63)
                {
                    fprintf(tmlearnset, "0 \n");
                }
            }
            else if (i < 96)
            {
                if (tmdata2 & (0x1 << i % 32))
                {
                    if (i >= 92)
                        fprintf(tmlearnset, "HM%03d | ", i - 91);
                    else
                        fprintf(tmlearnset, "TM%03d | ", i + 1);
                }

                if (i == 95)
                {
                    fprintf(tmlearnset, "0 \n");
                }
            }
            else
            {
                if (tmdata3 & (0x1 << i % 32))
                {
                    fprintf(tmlearnset, "HM%03d | ", i - 91);
                }

                if (i == 99)
                {
                    fprintf(tmlearnset, "0 \n");
                }
            }
        }

        fprintf(tmlearnset, "\n\n");

        monnum++;

        /*for (i = 0; i <= (elementnum & 0x1FF); i++)
            fgets(textfromfile, BUFF_SIZE, target);
        strtok(textfromfile, "\n");

        printf("    learnset %s, %d \n", textfromfile, elementnum >> 9);*/
    }

    fclose(source);
    fclose(monlist);
    fclose(typelist);
    fclose(itemlist);
    fclose(egggrouplist);
    fclose(growthlist);
    fclose(abilitylist);
    fclose(colorlist);
    fclose(tmlearnset);

    return 0;
}
