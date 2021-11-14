#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <assert.h>

typedef enum {
    REGION_INVALID = -1,
    REGION_JP,
    REGION_USA,
} Region;

Region GetRegion(const char *regionParameter) {
    if (strcmp(regionParameter, "jp") == 0) {
        return REGION_JP;
    }
    if (strcmp(regionParameter, "usa") == 0) {
        return REGION_USA;
    }
    return REGION_INVALID;
}

FILE *OpenFilelist(Region region) {
    switch (region) {
    case REGION_JP:
        return fopen("tables/jp/filelist.txt", "r");
        break;

    case REGION_USA:
        return fopen("tables/usa/filelist.txt", "r");
        break;

    case REGION_INVALID:
        assert(!"おおっと！！");
    }

    return NULL;
}

size_t GetFileSize(FILE* file) {
    size_t size;

    fseek(file, 0L, SEEK_END);
    size = ftell(file);
    fseek(file, 0L, SEEK_SET);

    return size;
}

// TODO: rename
void do_stuff(FILE *filelist, uint8_t *rom, size_t romsize, const char *regionName) {
    // Assuming nothing is larger than 200
    char *filename_last = malloc(201*sizeof(char));
    uint32_t offset_last = 0;
    // Assuming nothing is larger than 200
    char *filename = malloc(201*sizeof(char));
    uint32_t offset = 0;

    // Assuming nothing is larger than 300
    char *outputFilepath = malloc(301*sizeof(char));

    fscanf(filelist, "%200s %X\n", filename_last, &offset_last);

    while (true) {
        if (fscanf(filelist, "%200s %X\n", filename, &offset) == EOF) {
            break;
        }

        snprintf(outputFilepath, 300, "baserom/%s/%s.bin", regionName, filename_last);
        printf("Writing '%s'. From offset %06X to %06X\n", outputFilepath, offset_last, offset);

        FILE* outputFile = fopen(outputFilepath, "wb");
        if (outputFile == NULL) {
            fprintf(stderr, "Could not open '%s' to write file\n  Probably an intermediate folder is missing\n", outputFilepath);
            exit(EXIT_FAILURE);
        }
        fwrite(&rom[offset_last], sizeof(uint8_t), offset - offset_last, outputFile);
        fclose(outputFile);

        strncpy(filename_last, filename, 200);
        offset_last = offset;
    }

    if (romsize - offset_last > 0){
        snprintf(outputFilepath, 300, "baserom/%s/%s.bin", regionName, filename_last);
        printf("Writing '%s'. From offset %06X to %06zX\n", outputFilepath, offset_last, romsize);

        FILE* outputFile = fopen(outputFilepath, "wb");
        if (outputFile == NULL) {
            fprintf(stderr, "Could not open '%s' to write file\n  Probably an intermediate folder is missing\n", outputFilepath);
            exit(EXIT_FAILURE);
        }
        fwrite(&rom[offset_last], sizeof(uint8_t), romsize - offset_last, outputFile);
        fclose(outputFile);
    }

    free(outputFilepath);
    free(filename_last);
    free(filename);
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        fprintf(stderr, "Usage: %s region rompath\n", argv[0]);
        fprintf(stderr, " region must be 'usa' or 'jp'\n");
        fprintf(stderr, " rompath is a path to a .z64 ROM\n");
        exit(EXIT_FAILURE);
    }

    Region region = GetRegion(argv[1]);
    if (region == REGION_INVALID) {
        fprintf(stderr, "Invalid region: '%s'\n", argv[1]);
        fprintf(stderr, "region must be 'usa' or 'jp'\n");
        exit(EXIT_FAILURE);
    }

    FILE *filelist = OpenFilelist(region);
    if (filelist == NULL) {
        fprintf(stderr, "Fatal error: Filelist for this region wasn't found.\n");
        exit(EXIT_FAILURE);
    }

    FILE *romfile = fopen(argv[2], "rb");
    if (romfile == NULL) {
        fprintf(stderr, "Could not open ROM '%s'\n", argv[2]);
        exit(EXIT_FAILURE);
    }
    assert(romfile != NULL);

    size_t fileSize = GetFileSize(romfile);

    uint8_t* rom  = malloc(fileSize * sizeof(uint8_t));
    fread(rom, sizeof(uint8_t), fileSize, romfile);

    do_stuff(filelist, rom, fileSize, argv[1]);

    free(rom);

    fclose(romfile);
    fclose(filelist);

    return 0;
}
