#include <iostream>
#include <stdarg.h>

int pretend_constructor(){
	printf("Who knows where this will go: %d\n", 43);
	return 2;
}
int pretend_class = pretend_constructor();


FILE * arrange_stdouts(){
	freopen("fake_stdout.txt", "w", stdout);
	auto real_stdout = fopen("/dev/tty", "w");
	return real_stdout;
}



static FILE * real_stdout = arrange_stdouts();



bool sim_printf (const char *format, ...){
	va_list arg;
 	int done;
	va_start(arg, format);
	done = vfprintf (real_stdout, format, arg);
	va_end(arg);
	return done;
}



int main(){
	printf ("This sentence is redirected to a file.\n");
	sim_printf("This sentence is still going to stdout.\n");
	std::cout << "going to a file as well" << std::endl;
}
