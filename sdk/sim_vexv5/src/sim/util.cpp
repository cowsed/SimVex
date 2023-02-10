#include "include/sim/util.h"

namespace sim
{



    bool printf(const char *format, ...)
    {

        va_list arg;
        int done;
        va_start(arg, format);
        done = vfprintf(stderr, format, arg);
        va_end(arg);
        return done;
    }

    void puts(char const *str)
    {
        fputs(str, stderr);
    }

};
