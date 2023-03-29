#include<stdio.h>
#include<unistd.h>
#include<pthread.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <sys/prctl.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>

void handler1(int signo, siginfo_t *info, void *extra) 
{
	int i;
	for(i=0;i<5;i++)
	{
		puts("signal on 1");
	}
}
void handler2(int signo, siginfo_t *info, void *extra) 
{
	int i;
	for(i=0;i<5;i++)
	{
		puts("signal on 2");
	}
}



void set_sig_handler(int i )
{
        struct sigaction action;


        action.sa_flags = SA_SIGINFO; 
        if (i == 1){
			action.sa_sigaction = handler1;
		} else {
			action.sa_sigaction = handler2;
		}
        if (sigaction(SIGUSR1, &action, NULL) == -1) { 
            perror("sigusr: sigaction");
            _exit(1);
        }

}

void *threadfn1(void *p)
{
	set_sig_handler(1);


	while(1){
		printf("thread1\n");
		sleep(2);
	}
	return 0;
}

void *threadfn2(void *p)
{
	set_sig_handler(2);

	while(1){
		printf("thread2\n");
		sleep(2);
	}
	return 0;
}

void *threadfn3(void *p)
{
	while(1){
		printf("thread3\n");
		sleep(2);
	}
	return 0;
}




int main()
{
	pthread_t t1,t2,t3;

	pthread_create(&t1,NULL,threadfn1,NULL);
	pthread_create(&t2,NULL,threadfn2,NULL);
	pthread_create(&t3,NULL,threadfn3,NULL);
	sleep(3);
	pthread_kill(t1,SIGUSR1);
	sleep(4);
	pthread_kill(t2,SIGUSR1);
	pthread_kill(t3,SIGUSR1);
	pthread_exit(NULL);
	return 0;
}
