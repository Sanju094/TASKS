1. Unix Internals: Architecture, User Space, Kernel Space
    • Innovative Overview: 
        ◦ Imagine Unix as a city with two distinct zones. "User Space" is the bustling downtown where applications (like web browsers or text editors) operate. "Kernel Space" is the city's control center, managed by the "city council" (the kernel), handling critical infrastructure like traffic (I/O) and security (permissions).
        ◦ Use-Case: 
            ▪ When an application needs to access a file, it sends a "request" to the kernel (a system call). The kernel then handles the actual file access, ensuring security and proper resource management.
        ◦ Recollection Trigger: 
            ▪ "Is this task something my application can directly do, or does it need the OS's 'city council' to handle it?"
    • Hands-on Lab Question: 
        ◦ Write a simple C program that uses the write() system call to write a message to the standard output (stdout).
        ◦ Use the strace command to observe the system calls made by your program.
        ◦ Explain which parts of the program operate in user space and which parts involve the kernel space.
        ◦ Extension: Research and explain the difference between a system call and a library function.

    ![Screenshot from 2025-04-25 19-11-32](https://github.com/user-attachments/assets/87401570-1ed1-4e80-b9d1-cb15116cbf32)
    ![Screenshot from 2025-04-25 19-43-24](https://github.com/user-attachments/assets/45d57c3e-6fc2-4d7e-b327-0c30a62414c0)
   

3. Processor Speed (Instructions Per Second)
    • Innovative Overview: 
        ◦ Think of a processor as a chef in a busy restaurant. The "instructions per second" is like the chef's cooking speed – how many dishes (operations) they can prepare in a second.
        ◦ Use-Case: 
            ▪ When optimizing a program, consider how many operations it performs. A slow processor (chef) means longer execution times, especially for complex tasks.
        ◦ Recollection Trigger: 
            ▪ "How many 'dishes' (operations) am I asking the 'chef' (processor) to prepare? Can I simplify the recipe?"
    • Hands-on Lab Question: 
        ◦ Write a C program that performs a large number of simple arithmetic operations (e.g., addition, multiplication) in a loop.
        ◦ Use the time command to measure the execution time of your program.
        ◦ Modify the program to perform more complex operations or increase the loop iterations.
        ◦ Measure the new execution time and discuss how the processor's speed affects the overall performance.
        ◦ Extension: Research and explain CPU clock cycles, and how that relates to instructions per second.
4. Multi-Core Processors
    • Innovative Overview: 
        ◦ Instead of one chef, imagine a restaurant with multiple chefs (cores). They can work on different dishes simultaneously, dramatically increasing the restaurant's output.
        ◦ Use-Case: 
            ▪ When writing multi-threaded applications, you're essentially utilizing these multiple chefs to perform tasks in parallel, improving performance.
        ◦ Recollection Trigger: 
            ▪ "Can I break down this task into smaller, independent 'dishes' that multiple 'chefs' can work on at the same time?"
    • Hands-on Lab Question: 
        ◦ Write a Python program that performs a time-consuming task (e.g., calculating prime numbers) in a single thread.
        ◦ Modify the program to use the threading module to perform the task in multiple threads.
        ◦ Measure the execution time of both versions and compare the results.
        ◦ Discuss how multi-core processors can improve the performance of parallel tasks.
        ◦ Extension: Use the python multiprocessing module, and compare the results of threading vs multiprocessing.
5. GPU & How It Works
    • Innovative Overview: 
        ◦ Think of a GPU as a specialized artist in a movie studio, focusing on visual effects. Unlike the chefs, this artist excels at parallel tasks, like rendering complex scenes.
        ◦ Use-Case: 
            ▪ When developing graphics-intensive applications or machine learning models, you'd use a GPU to accelerate tasks that involve massive parallel computations.
        ◦ Recollection Trigger: 
            ▪ "Is this task about processing large amounts of visual data or performing many parallel mathematical calculations? If so, the 'artist' (GPU) might be the right tool."
    • Hands-on Lab Question: 
        ◦ Install a simple GPU programming framework (e.g., CUDA or OpenCL).
        ◦ Write a basic GPU program that performs a simple vector addition.
        ◦ Compare the execution time of the GPU version with a CPU version of the same program.
        ◦ Explain the advantages of using a GPU for parallel computations.
        ◦ Extension: Implement a simple matrix multiplication on the GPU, and compare it's speed to the CPU.
6. Processes
    • Innovative Overview: 
        ◦ A process is like an individual play being performed on a stage (the computer). Each play has its own actors (threads), props (data), and script (code).
        ◦ Use-Case: 
            ▪ When you run a program, you're starting a new process. Each process has its own isolated environment, preventing interference with other processes.
        ◦ Recollection Trigger: 
            ▪ "Is this a separate, independent task that needs its own dedicated resources and environment?"
    • Hands-on Lab Question: 
        ◦ Write a shell script that starts multiple instances of a long-running program (e.g., a loop that prints numbers).
        ◦ Use the ps and top commands to observe the running processes and their resource usage.
        ◦ Explain how each instance of the program is a separate process with its own memory and resources.
        ◦ Extension: Use the fork() system call in a C program to create child processes, and observe their behaviour.
7. Memory Layout & Management
    • Innovative Overview: 
        ◦ Imagine memory as a library with different sections. Code is stored in the "script" section, variables in the "props" section, and dynamically allocated memory in the "flexible space" section.
        ◦ Use-Case: 
            ▪ Understanding memory layout helps in debugging memory-related issues like segmentation faults or memory leaks. Efficient memory management is crucial for performance.
        ◦ Recollection Trigger: 
            ▪ "Where in the 'library' (memory) is my data stored? Am I managing the 'flexible space' (heap) efficiently?"
    • Hands-on Lab Question: 
        ◦ Write a C program that dynamically allocates memory using malloc() and forgets to free it (a memory leak).
        ◦ Use the valgrind tool to detect and analyze the memory leak.
        ◦ Modify the program to correctly free the allocated memory.
        ◦ Use pmap to view the memory map of a running process, and explain the different memory segments.
        ◦ Extension: Create a program that causes a segmentation fault by accessing memory out of bounds. Use gdb to debug the issue.
