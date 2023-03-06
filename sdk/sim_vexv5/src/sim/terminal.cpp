#include "sim/terminal.h"

static std::string terminal_text = "Terminal Start\n";

void print_to_terminal(char * str){
    terminal_text.append(str);
}

const char * get_terminal_text(){
    return terminal_text.c_str();
}
