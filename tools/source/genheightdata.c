#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *monlistname = NULL, *sourcename = NULL;
    char textfromfile[BUFF_SIZE], speciesname[BUFF_SIZE];
    int i, elementnum, monnum = 0, filesize;
    FILE *source, *monlist;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "This generates the mon height data from a formatted narc folder containing all the files.\nDump the text using \nfor file in *: do xxd -p $(basename \"$file\") | tr -d '/n' >>output.txt; done");
        return 1;
    }

    sourcename = argv[1];

    if (strcmp(sourcename, "-") == 0)
    {
        fprintf(stderr, "Please specify the text file.\n");
        fclose(source);
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

    // god damn
    while (monnum <= 493)
    {
        // set up entry
        fgets(speciesname, BUFF_SIZE, monlist);
        strtok(speciesname, "\n");
        printf("heightentry %s, ", speciesname);

        fgets(textfromfile, BUFF_SIZE, source);

        if (strcmp(textfromfile, "\n") != 0) // fback
        {
            printf("%ld, ", strtol(textfromfile, NULL, 0x10));
        }
        else
        {
            printf("\"null\", ");
        }

        fgets(textfromfile, BUFF_SIZE, source);

        if (strcmp(textfromfile, "\n") != 0) // mback
        {
            printf("%ld, ", strtol(textfromfile, NULL, 0x10));
        }
        else
        {
            printf("\"null\", ");
        }

        fgets(textfromfile, BUFF_SIZE, source);

        if (strcmp(textfromfile, "\n") != 0) // ffront
        {
            printf("%ld, ", strtol(textfromfile, NULL, 0x10));
        }
        else
        {
            printf("\"null\", ");
        }

        fgets(textfromfile, BUFF_SIZE, source);

        if (strcmp(textfromfile, "\n") != 0) // mfront
        {
            printf("%ld\n", strtol(textfromfile, NULL, 0x10));
        }
        else
        {
            printf("\"null\"\n");
        }

        monnum++;
    }

    fclose(source);
    fclose(monlist);

    return 0;
}
