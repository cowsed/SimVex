#pragma once

#include <iostream>
#include <stdarg.h>

#define print_unimplimented() sim_printf("UNIMPLEMENTED: %s:%d : %s\n", __FILE__, __LINE__, __PRETTY_FUNCTION__);


void sim_puts(char const *str);
bool sim_printf(const char *format, ...);
