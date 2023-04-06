# x86 (32bit) Assembly - Write to Stack
# Goals:
#   1. Write a string to the stack using store operations
#   2. Write the string in the stack to stdout

.global _start
.intel_syntax
.section .text
_start:

# push => Pushes a value to the stack (%esp)
# %esp => Memory slot where the stack is currently storing data

# Write a string to the stack
    push 0x0a434241    # Moves to the pointer %esp the dword size (4 bytes) value of 0x0a434241 (ABC\n)

# Write the string in the stack to stdout
    mov %eax, 0x04
    mov %ebx, 0x01  # 1 => stdout
    mov %ecx, %esp
    mov %edx, 0x04
    int 0x80

# Exit syscall
    mov %eax, 0x01
    mov %ebx, 0x00
    int 0x80

.section .data
    message:
