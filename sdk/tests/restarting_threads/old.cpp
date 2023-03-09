#include <iostream>
#include <thread>
#include <chrono>

std::thread myThread;
std::thread constructionThread;

int i = 0;

void add1(){
	i++;
}

int main(){
	std::cout << "i is "<< i<< std::endl;

	myThread = std::thread(add1);

	std::this_thread::sleep_for(std::chrono::milliseconds(200));

	std::cout << "i is "<< i<< std::endl;

	myThread.join();

	std::cout << "i is "<< i<< std::endl;

}
