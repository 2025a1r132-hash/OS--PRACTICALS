# Experiment 9: Process Creation and Termination Using C

## Aim
To study process creation using `fork()`, identify processes using `getpid()`
and `getppid()`, and synchronize the parent process with its child using
`wait()`.

## Files
- `main.c` — Complete C program demonstrating process creation and child
  synchronization.

## Requirements
- Linux or Ubuntu
- GCC compiler

## Compile
Open a terminal in this folder and run:

```bash
gcc main.c -o exp9
```

## Run

```bash
./exp9
```

## Concepts Demonstrated

- **Process:** A running instance of a program.
- **PID:** A unique process ID assigned by the operating system.
- **`fork()`:** Creates a child process. It returns `0` in the child and the
  child's PID in the parent. A negative value indicates failure.
- **`getpid()`:** Returns the PID of the calling process.
- **`getppid()`:** Returns the PID of the parent process.
- **`wait(NULL)`:** Makes the parent wait for a child to terminate and collects
  the child's termination status.

## Expected Output

The exact PID values will differ each time you run the program. The output
order is controlled so that the parent reports the child's termination after
the child has finished.

```text
Parent Waiting for child to terminate...
Child Running with PID: <child_pid>
Child Exiting...
Parent Terminated Child PID: <child_pid>
```

The first two lines may appear in a different order because the operating
system schedules the parent and child independently.

## Note
This program follows the complete classroom implementation in the supplied
Experiment 9 PDF, with an additional check for `fork()` and `wait()` errors.
