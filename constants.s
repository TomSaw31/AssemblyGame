.section .data

.global hello_world
hello_world:
    .asciz "Hello World!"

.global new_line
new_line:
    .asciz "\n"

.global equal_string
equal_string:
    .asciz "="

.global MENU_SIZE
MENU_SIZE:
    .int 50
