#include <thread>
#include <chrono>
#include <stdio.h>
#include <signal.h>
#include <pthread.h>

static int count = 0;

class d
{

public:
	int i;

	d() : i(1)
	{
		count++;
	}
	d(int n) : i(n)
	{
		count++;
	}
	~d()
	{
		count--;
		printf("this d %p got destructed %d\n", this, i);
		printf("locked out test?\n");
	}
};

volatile bool unsafe_bool = true;

void pause_thread(int signo, siginfo_t *info, void *extra)
{
	for (int i = 0; i < 1; i++)
	{
		printf("signal %d handled on thread %lu\n", signo, std::this_thread::get_id());
		std::this_thread::sleep_for(std::chrono::milliseconds(2));
	}
	while (unsafe_bool)
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(1));
	}
}

pthread_t thread_name;

void stop_thread(int signo, siginfo_t *info, void *extra)
{
	printf("signal %d handled on thread %lu\n", signo, std::this_thread::get_id());
	std::this_thread::sleep_for(std::chrono::milliseconds(2));

	printf("SToping\n");
	pthread_cancel(thread_name);
	// printf("finished pthread_Cancel");
	//_exit(0);
}

int do_thread()
{
	d b(2);
	d a(-1);

	while (true)
	{
		printf("im doing driver control %d %d\n", a.i, b.i);
		std::this_thread::sleep_for(std::chrono::milliseconds(20));
	}
	printf("goodye\n");
}

int main()
{

	struct sigaction action;

	action.sa_flags = SA_SIGINFO;
	action.sa_sigaction = pause_thread;

	if (sigaction(SIGUSR1, &action, NULL) == -1)
	{
		perror("sigusr: sigaction");
		_exit(1);
	}

	action.sa_flags = SA_SIGINFO;
	action.sa_sigaction = stop_thread;

	if (sigaction(SIGUSR2, &action, NULL) == -1)
	{
		perror("sigusr: sigaction");
		_exit(1);
	}

	std::thread worker_thread(do_thread);

	thread_name = worker_thread.native_handle();

	std::this_thread::sleep_for(std::chrono::milliseconds(500));

	printf("Pausing: sending %d from thread %lu\n", SIGUSR1, std::this_thread::get_id());
	auto native_handle = worker_thread.native_handle();
	printf("native handle is %lu\n", native_handle);
	pthread_kill(native_handle, SIGUSR1);
	printf("sent\n");

	std::this_thread::sleep_for(std::chrono::milliseconds(1000));
	printf("resuming\n");
	unsafe_bool = false;
	std::this_thread::sleep_for(std::chrono::milliseconds(1000));

	printf("stopping thread: count = %d \n", count);

	pthread_kill(native_handle, SIGUSR2);

	// printf("joining\n");

	std::this_thread::sleep_for(std::chrono::milliseconds(200));

	// worker_thread.detach();
	while (true)
	{
		printf("spinning count = %d\n", count);
		std::this_thread::sleep_for(std::chrono::milliseconds(200));
	}
}
