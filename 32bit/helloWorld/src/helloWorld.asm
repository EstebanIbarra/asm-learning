# x86 (32bit) Assembly - Hello World
# Goals:
#   1. Create an exit System Call
#   2. Write a string from the stack to stdout

.global _start
.intel_syntax
# Anything inside .section .text is r+x only, it's used for the instructions to be executed by the processor
.section .text
_start:

# mov => Move
# lea => Load effective address
# int => Interruption

# Write a string to stdout
    mov %eax, 0x04      # Moves number 4 to eax registry (write syscall)
    mov %ebx, 0x01      # Moves number 1 to ebx registry (0 => stdin, 1 => stdout, 2 => stderr)
    lea %ecx, [message] # Loads into ecx the address of message
    mov %edx, 0x0e      # Moves number 14 to edx registry (Length of the message)
    int 0x80            # Interruption for System call => view syscalls table in https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md

# Sets an exit code and terminates the program
    mov %eax, 0x01  # Moves number 1 to eax registry (exit syscall)
    mov %ebx, 0x00  # Moves number 0 to ebx registry
    int 0x80        # Interruption for System call

# Anything inside .section .data is r+w only, it's used for the data the program needs to execute properly
.section .data
    message:
        .ascii "Hello, World!\n"
