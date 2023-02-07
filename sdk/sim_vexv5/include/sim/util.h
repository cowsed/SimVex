#pragma once

#include <stdio.h>
#define print_unimplimented()   sim_puts("NOT IMPLEMENTED");\
                                sim_puts(__FILE__);\
                                sim_puts(":");\
                                sim_putI(__LINE__);\
                                sim_puts("\n");


void sim_puts(char const *str);
void sim_putI(int n);
