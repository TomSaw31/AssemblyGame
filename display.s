.global main_menu

print:
    call length
    mov %rax, %rdx
    mov $1, %rax
    mov $1, %rdi
    syscall
    ret

print_empty_lines:
    mov new_line, %rsi
    call print
    ret

main_menu:
    lea hello_world, %rdi
    call print
    call print_empty_lines
