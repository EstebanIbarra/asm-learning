# x86 (32bit) Assembly - Read from stdin
# Goals:
#   1. Read a string from stdin
#   2. Write the string in the stack to stdout

.global _start
.intel_syntax
.section .text
_start:

    .lcomm buffer, 0x04    # 4 byte buffer

# Write the instructions to the stdout
    mov %eax, 0x04
    mov %ebx, 0x01
    lea %ecx, [instructions]
    mov %edx, 0x11
    int 0x80
#    jmp result

# Read a 4 byte string from the stdin
bufread:    mov %eax, 0x03      # Read syscall
            mov %ebx, 0x00      # 0 => stdin
            mov buffer, %ecx    # Moves the value from %ecx to buffer
            mov %edx, 0x04      # Length of the buffer
            int 0x80

# Write buffer to stack (NOT WORKING)
#            mov dword ptr [%esp], %ecx
#            push buffer
            jmp result

# Loops indefinitely (Not supposed to)
            cmp %eax, 0
            jle result

            jmp bufread

# Write the comment to stdout
result: mov %eax, 0x04
        mov %ebx, 0x01
        lea %ecx, [comment]
        mov %edx, 0x11
        int 0x80

# Write the message from the stack to stdout
printmsg:   mov %eax, 0x04
            mov %ebx, 0x01
            mov %ecx, buffer
            mov %edx, 0x04
            int 0x80

            lea %ecx, [eol]
            mov %edx, 0x01
            int 0x80

# Exit syscall
exit:   mov %eax, 0x01
        mov %ebx, 0x00
        int 0x80

.section .data
    instructions:
        .ascii "Leave a message:\n"
    comment:
        .ascii "Your message is:\n"
    eol:
        .ascii "\n"
