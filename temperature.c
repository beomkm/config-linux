#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
	while(1) {
		printf("-------------------------------\n");
		system("sensors | grep high");
		sleep(2);
	}
	return 0;
}

