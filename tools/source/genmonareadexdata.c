#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *dirname = NULL, *monlistname = NULL, *dexlist1name = NULL, *dexlist2name = NULL, *dexareaname = NULL;
    char speciesname[BUFF_SIZE], textfromfile[BUFF_SIZE];
    int monnum = 0, i, elementnum, filenum = 2;
    FILE *monlist, *dexlist1, *dexlist2, *dexarea;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the mon dex area data from a directory of an uncompressed narc a133.\n");
        return 1;
    }

    monlistname = "rawdata/monnums.txt";

    if (strcmp(monlistname, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the mon names.\n");
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

    dexlist1name = "rawdata/dexlist1.txt";

    if (strcmp(dexlist1name, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the special area names.\n");
        return 1;
    }
    else
    {
        dexlist1 = fopen(dexlist1name, "r+");

        if (!dexlist1)
        {
            fprintf(stderr, "Could not find %s\n", dexlist1name);
            return 1;
        }
    }

    dexlist2name = "rawdata/dexlist2.txt";

    if (strcmp(dexlist2name, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the normal area names (cities/routes).\n");
        return 1;
    }
    else
    {
        dexlist2 = fopen(dexlist2name, "r+");

        if (!dexlist2)
        {
            fprintf(stderr, "Could not find %s\n", dexlist2name);
            return 1;
        }
    }

    dexareaname = "rawdata/dexarea.bin";

    if (strcmp(dexareaname, "-") == 0)
    {
        fprintf(stderr, "Please specify a binary file of files 2-3961 from narc a133.\n");
        return 1;
    }
    else
    {
        dexarea = fopen(dexareaname, "rb+");

        if (!dexarea)
        {
            fprintf(stderr, "Could not find %s\n", dexareaname);
            return 1;
        }
    }

    while (filenum <= 3961) // amount of files in a133
    {
        int routesandcities = 1; // default to using dexlist2
        int timeofday;
        char *timeofdaystring;

        if (filenum < 1487
         || (filenum >= 2972 && filenum < 3467))
            routesandcities = 0;

        elementnum = fgetc(dexarea);
        elementnum |= fgetc(dexarea) << 8;
        elementnum |= fgetc(dexarea) << 16;
        elementnum |= fgetc(dexarea) << 24;

        if (routesandcities == 0)
        {
            for (i = 0; i <= elementnum; i++)
                fgets(textfromfile, BUFF_SIZE, dexlist1);
            fseek(dexlist1, 0, SEEK_SET);
        }
        else
        {
            for (i = 0; i <= elementnum; i++)
                fgets(textfromfile, BUFF_SIZE, dexlist2);
            fseek(dexlist2, 0, SEEK_SET);
        }
        strtok(textfromfile, "\n");

        printf("    .word %s\n", textfromfile);

        if (elementnum == 0)
        {
            filenum++;

            switch (filenum)
            {
            case 2 ... 496:
            case 1487 ... 1981:
                timeofday = 0;
                timeofdaystring = "DEX_MORNING";
                break;
            case 497 ... 991:
            case 1982 ... 2476:
                timeofday = 1;
                timeofdaystring = "DEX_DAY";
                break;
            case 992 ... 1486:
            case 2477 ... 2971:
                timeofday = 2;
                timeofdaystring = "DEX_NIGHT";
                break;
            default:
                timeofday = 3;
                timeofdaystring = "DEX_SPECIAL";
                break;
            }

            monnum = (filenum - 2) % 0x1EF; // convert file number into mon number

            for (i = 0; i <= monnum; i++)
                fgets(textfromfile, BUFF_SIZE, monlist);
            strtok(textfromfile, "\n");

            fseek(monlist, 0, SEEK_SET);

            printf("\n// //\n");

            if (filenum < 1487
             || (filenum >= 2972 && filenum < 3467))
                routesandcities = 0;

            if (routesandcities == 0)
                printf("specialareas %s, %s\n", textfromfile, timeofdaystring);
            else
                printf("routesandcities %s, %s\n", textfromfile, timeofdaystring);
        }
    }



    /*for (i = 0; i <= (elementnum & 0x1FF); i++)
        fgets(textfromfile, BUFF_SIZE, target);
    strtok(textfromfile, "\n");

    printf("    learnset %s, %d \n", textfromfile, elementnum >> 9);*/

    fclose(monlist);
    fclose(dexlist1);
    fclose(dexlist2);

    return 0;
}
