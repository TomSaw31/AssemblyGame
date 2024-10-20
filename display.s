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
    mov MENU_SIZE, %r8d
.loop:
    lea EQUAL, %rdi
    call print_raw
    dec %r8d
    jnz .loop
    lea UPPER_RIGHT_CORNER, %rdi
    call print

    lea MAIN_MENU_NAME, %rdi
    call show_centered_menu_line
    ret

show_centered_menu_line:
    # Get length of the string
    mov %rdi, %rsi
    call length  
    

    # Print a separation on the left
    lea SEPARATION, %rdi
    call print_raw

    # Calculate the size of the space on the side of the string
    movl MENU_SIZE, %r8d
    subl %eax, %r8d
    shrl $1, %r8d
    movl %r8d, %r9d

    # Print spaces
.loop1:
    lea SPACE, %rdi
    call print_raw
    dec %r9d
    jnz .loop1

    lea MAIN_MENU_NAME, %rdi
    call print_raw

.loop2:
    lea SPACE, %rdi
    call print_raw
    dec %r8d
    jnz .loop2

    # Print a separation on the right
    lea SEPARATION, %rdi
    call print
    ret

main_menu:
    call show_menu_name
    call print_empty_lines
    ret
