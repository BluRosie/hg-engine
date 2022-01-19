#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    int filenum = 11, elementnum, i;
    FILE *entry, *monlist;
    char filename[25], textfromfile[BUFF_SIZE];
    const char *monlistname = "rawdata/monnums.txt";

    if (argc != 1) // the simple error handling part
    {
        fprintf(stderr, "This generates mon constant files from a decompressed narc a214.\n");
        return 1;
    }

    monlist = fopen(monlistname, "r");

    _workaround:

    sprintf(filename, "a214/a214_%03d", filenum);

    entry = fopen(filename, "rb");

    if (!entry || !monlist)
    {
        fprintf(stderr, "error");
        return 1;
    }

    printf(".nds\n.thumb\n\n.create \"a214/%03d.bin\", 0x0\n\n", filenum);

    while ((elementnum = fgetc(entry)) != EOF)
    {
        //elementnum = fgetc(entry);
        elementnum |= fgetc(entry) << 8;

        for (i = 0; i <= elementnum; i++)
            fgets(textfromfile, BUFF_SIZE, monlist);
        fseek(monlist, 0, SEEK_SET);

        printf(".halfword %s", textfromfile);
    }

    printf("\n\n.close\n");

    fclose(entry);

    if (filenum < 101)
    {
        filenum++;
        goto _workaround;
    }

    return 0;
}
