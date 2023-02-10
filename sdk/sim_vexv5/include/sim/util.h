#pragma once

#include <iostream>
#include <stdarg.h>

#define print_unimplimented()   //sim::printf("UNIMPLEMENTED: %s:%d : %s\n", __FILE__, __LINE__, __PRETTY_FUNCTION__);

namespace sim{
void puts(char const *str);
bool printf(const char *format, ...);
};