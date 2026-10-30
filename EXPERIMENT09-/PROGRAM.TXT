#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
    pid_t p = fork();

    if (p < 0) {
        perror("fork failed");
        return 1;
    }

    if (p == 0) {
        printf("Child Running with PID: %d\n", getpid());
        sleep(2); // Simulate work
        printf("Child Exiting...\n");
        exit(0);
    } else {
        printf("Parent Waiting for child to terminate...\n");
        pid_t terminated_pid = wait(NULL);

        if (terminated_pid < 0) {
            perror("wait failed");
            return 1;
        }

        printf("Parent Terminated Child PID: %d\n", terminated_pid);
    }

    return 0;
}
