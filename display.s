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
    call print_raw
    call print_empty_lines
    ret

print_empty_lines:
    lea NEW_LINE, %rdi
    call print_raw
    ret

show_menu_name:
    lea UPPER_LEFT_CORNER, %rdi
    call print_raw
    mov MENU_SIZE, %r8
.loop:
    lea EQUAL, %rdi
    call print_raw
    dec %r8
    jnz .loop
    lea UPPER_RIGHT_CORNER, %rdi
    call print
    ret

show_centered_menu_line:
    lea SEPARATION, %rdi
    call print
    call length
    mov MENU_SIZE, %r8
    add %rax, %r8
    sar $1, %r8
.l:
    lea EQUAL, %rdi
    call print_raw
    dec %r8
    jnz .l
    lea UPPER_RIGHT_CORNER, %rdi
    call print
    ret

main_menu:
    lea HELLO_WORLD, %rdi
    call print
    call show_menu_name
    call print_empty_lines
    ret
