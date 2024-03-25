# Debugging and Execution Time Measurement Toolkit

This repository contains two scripts, `Dprintf.sh` and `measure.sh`, designed to aid in debugging and measuring the execution time of C code respectively.

## Dprintf.sh

`Dprintf.sh` is a bash script intended for debugging C code by automatically adding `printf()` statements before every curly bracket `{` to help identify where the code gets stuck during execution.

### Usage
1. Place `Dprintf.sh` in the directory containing your C source file.
2. Open a terminal and navigate to the directory containing both `Dprintf.sh` and your C source file.
3. Run the script using the command:
    ```
    ./Dprintf.sh your_source_file.c
    ```
4. This will generate a new file named `debug_your_source_file.c` with `printf()` statements inserted before each `{` in your code.

## measure.sh

`measure.sh` is a bash script used to measure the execution time of C code. It runs the code multiple times and calculates the average execution time.

### Usage
1. Place `measure.sh` in the directory containing your C source file.
2. Open a terminal and navigate to the directory containing both `measure.sh` and your C source file.
3. Run the script using the command:
    ```
    ./measure.sh your_source_file.c
    ```
4. This will compile `your_source_file.c` and execute it multiple times, measuring the execution time each time.
5. Finally, it will display the average execution time of your code.

## Note
- These scripts are intended to be used with C source files.
- Make sure you have appropriate permissions to execute the scripts (`chmod +x Dprintf.sh measure.sh`).
- Always review the modified/debugged code before running it in a production environment.
- For accurate measurement results, it's recommended to compile the C code with optimizations disabled (`-O0` for GCC).
- These scripts can help in debugging and performance tuning, but they should not be solely relied upon for critical applications. Always use proper debugging and profiling tools for comprehensive analysis.
