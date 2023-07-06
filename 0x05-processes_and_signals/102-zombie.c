#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int infinite_while(void);

/**
 * main - a program that creates 5 zombie processes
 *
 * Return: return 0 on success
 */
int main(void)
{
	pid_t child_pid;

	child_pid = fork();
	if (child_pid > 0)
	{
		printf("Zombie process created, PID: %d\n", child_pid);
		child_pid = fork();
		if (child_pid > 0)
		{
			printf("Zombie process created, PID: %d\n", child_pid);
			child_pid = fork();
			if (child_pid > 0)
			{
				printf("Zombie process created, PID: %d\n", child_pid);
				child_pid = fork();
				if (child_pid > 0)
				{
					printf("Zombie process created, PID: %d\n", child_pid);
					child_pid = fork();
					if (child_pid > 0)
					{
						printf("Zombie process created, PID: %d\n", child_pid);
						child_pid = fork();
						infinite_while();
					}
					else
					{
						return (0);
					}
				}
				else
				{
					return (0);
				}
			}
			else
			{
				return (0);
			}

		}
		else
		{
			return (0);
		}
	}
	else
	{
		return (0);
	}
	return (0);
}

/**
 * infinite_while - a function that loop infinitly
 *
 * Return: 0 on success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
