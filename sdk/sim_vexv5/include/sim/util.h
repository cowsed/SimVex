#pragma once

#include <iostream>
#include <stdarg.h>
//"\033[1;32mOPENGL:\033[0m\t";
#define print_unimplimented() printf("\033[1;33mUNIMPLEMENTED\033[0m: %s:%d : %s\n", __FILE__, __LINE__, __PRETTY_FUNCTION__);


