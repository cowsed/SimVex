#include "sim/terminal.h"
// todo, make this a https://pubs.opengroup.org/onlinepubs/9699919799/functions/open_memstream.html
static std::string terminal_text = "";

void print_to_terminal(char * str){
    terminal_text.append(str);
}

const char * get_terminal_text(){
    return terminal_text.c_str();
}
