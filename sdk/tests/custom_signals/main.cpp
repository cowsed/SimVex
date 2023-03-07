#include <thread>
#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <chrono>

pid_t my_pid = getpid();
bool sent = true;


void handler(int signum){
	if (signum==SIGUSR1){
		std::cout << "got sigusr1" << std::endl;
		sent = false;
	}
	std::cout << "end of handler" << std::endl;
}

int sender(){
	pid_t sender_pid = getpid();
	std::cout << "sender pid is "<< sender_pid << std::endl;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	kill(my_pid, SIGUSR1);
	std::cout << "sent kill command "<< std::endl;
	return 0;
}

int main(){
	signal(SIGUSR1, handler);
	std::cout << "My pid is "<< my_pid << std::endl;
	std::thread sender_thread(sender);

	while (sent){


	}
	std::cout << "Finished :)" << std::endl;
	sender_thread.join();
	return 0;
}
