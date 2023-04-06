# x86 (32bit) Assembly - Hello World
# Goals:
#   1. Create an exit System Call
#   2. Write a string from the stack to stdout

.global _start  # Defines the entrypoint of our program
.intel_syntax   # Defines the Assembly syntax to be used
.section .text  # Anything inside .section .text is r+x only, it's used for the instructions to be executed by the processor
_start:

# mov => Moves or writes data to a registry
# lea => Load effective address
# int => Interruption

# Write a string to stdout
    mov %eax, 0x04      # Moves number 4 to %eax registry (write syscall)
    mov %ebx, 0x01      # Moves number 1 to %ebx registry (0 => stdin, 1 => stdout, 2 => stderr)
    lea %ecx, [message] # Loads into %ecx the address of message
    mov %edx, 0x0e      # Moves number 14 to %edx registry (Length of the message)
    int 0x80            # Interruption for System call => view syscalls table in https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md

# Sets an exit code and terminates the program
    mov %eax, 0x01  # Moves number 1 to %eax registry (exit syscall)
    mov %ebx, 0x00  # Moves number 0 to %ebx registry (exit code)
    int 0x80        # Interruption for System call

.section .data  # Anything inside .section .data is r+w only, it's used for the data the program needs to execute properly
    message:    # Defines variable message, where we will store data
        .ascii "Hello, World!\n"    # Defines the type of data and the actual data stored in message
