#include "include/sim/util.h"

// things in sim_ are accessible by sim code
bool sim_printf(const char *format, ...)
{
    va_list arg;
    int done;
    va_start(arg, format);
    done = vfprintf(stdout, format, arg);
    va_end(arg);
    return done;
}

void sim_puts(char const *str)
{
    fputs(str, stderr);
}
