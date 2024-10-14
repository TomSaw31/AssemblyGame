.global main_menu

print_raw:
    mov %rdi, %rsi
    call length
    mov %rax, %rdx
    mov $1, %rax
    mov $1, %rdi
    syscall
    ret

print:
    mov %rdi, %rsi
    call length
    mov %rax, %rdx
    mov $1, %rax
    mov $1, %rdi
    syscall
    call print_empty_lines
    ret

print_empty_lines:
    lea new_line, %rdi
    call print_raw
    ret

show_menu_name:
    xor %cx, %cx
    lea equal_string, %rdi
.loop:
    cmp $50, %cx
    je .loop
    call print_raw
    inc %cx
    jmp .done
.done:
    ret

main_menu:
    lea hello_world, %rdi
    call print
    call show_menu_name
    ret
