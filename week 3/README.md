**Inter-Process Communication (IPC) in Unix**

    • Innovative Overview:
        ◦ Imagine processes as individual offices within a company. IPC mechanisms are the various ways these offices communicate and share information. Some offices might use simple memos (pipes), others might have shared bulletin boards (shared memory), and some might use a phone system (sockets).
        ◦ Use-Case: 
            ▪ IPC is essential when you need different programs or parts of a program to work together, share data, or coordinate tasks. Choosing the right IPC mechanism depends on the type of data being shared, the communication pattern, and the performance requirements.
        ◦ Recollection Trigger: 
            ▪ "How do these 'offices' (processes) need to communicate? Is it a one-way message, a shared resource, or a two-way conversation?"

            
    • IPC Mechanisms and Use-Case Scenarios:
        ◦ 1. Pipes: 
            ▪ Overview: Simple, one-way communication channels. Like passing a memo from one office to another.
            ▪ Use-Case: Connecting the output of one process to the input of another (e.g., ls | grep "file").
            ▪ Lab Question: Write two C programs that communicate using a pipe: one to send a message and the other to receive it.
        ◦ 2. Named Pipes (FIFOs): 
            ▪ Overview: Like a public mailbox, allowing unrelated processes to communicate.
            ▪ Use-Case: Sharing data between unrelated processes (e.g., a server and a client).
            ▪ Lab Question: Create a named pipe and write two programs that communicate through it.
        ◦ 3. Shared Memory: 
            ▪ Overview: A shared bulletin board where processes can read and write data.
            ▪ Use-Case: High-speed data sharing between processes (e.g., large data sets, real-time applications).
            ▪ Lab Question: Write two C programs that share data using shared memory.
        ◦ 4. Message Queues: 
            ▪ Overview: Like a message board with different categories, allowing processes to send and receive messages of specific types.
            ▪ Use-Case: Asynchronous communication between processes (e.g., task queues, event notifications).
            ▪ Lab Question: Write two C programs that communicate using message queues.
        ◦ 5. Semaphores: 
            ▪ Overview: Like traffic lights, controlling access to shared resources and preventing race conditions.
            ▪ Use-Case: Synchronization and mutual exclusion in multi-process environments.
            ▪ Lab Question: Write a C program that uses semaphores to synchronize access to a shared resource.
        ◦ 6. Sockets: 
            ▪ Overview: Like a phone system, allowing communication between processes on the same or different machines.
            ▪ Use-Case: Network communication, client-server applications.
            ▪ Lab Question: Write a simple client-server application using sockets.

            
    • Hands-on Lab Questions:
        ◦ 1. Pipe Communication: 
            ▪ Create two C programs. One program should send a string to the other program via a pipe. The second program should receive the string and print it.
        ◦ 2. Named Pipe (FIFO) Data Sharing: 
            ▪ Create a named pipe. Write two separate programs that communicate through this FIFO. One program should write data into the FIFO, and the other should read and display it.
        ◦ 3. Shared Memory Data Exchange: 
            ▪ Write two C programs that share an integer variable using shared memory. One program should increment the value, and the other should read and display it.
        ◦ 4. Message Queue Task Coordination: 
            ▪ Create two C programs that communicate through a message queue. One program should send task requests, and the other should process them.
        ◦ 5. Semaphore Resource Protection: 
            ▪ Write a C program that simulates a shared resource (e.g., a file) and uses semaphores to prevent concurrent access.
        ◦ 6. Socket Client-Server Chat: 
            ▪ Create a simple client-server chat application using sockets. The server should listen for client connections, and clients should be able to send and receive messages.
