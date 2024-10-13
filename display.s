.global print
.global main_menu

print:
    mov %rdi, %rsi
    call length
    mov %rax, %rdx
    mov $1, %rax
    mov $1, %rdi
    syscall
    ret

print_empty_lines:
    lea new_line, %rdi
    call print
    ret

main_menu:
    lea hello_world, %rdi
    call print