//Copyright Dan-Dominic Staicu 311CA (dando.ds11@gmail.com) 2023
#ifndef _INPUT_DATA_H_
#define _INPUT_DATA_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include "structs.h"

//read data from the given binary file and save it in the array
sensor *read_data(FILE *data_f, int *sens_cnt);

//compare function used for qsort
int cmp_enum(const void *a, const void *b);

#endif
