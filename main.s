.global _start

.section .text
# rax, rdi, rsi, rdx, rcx
_start:
    call main_menu


    # sys_exit
    mov $60, %rax           # syscall number for sys_exit
    mov $0, %rdi            # exit code 0
    syscall                 # invoke syscall to exit