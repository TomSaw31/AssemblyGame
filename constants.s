.section .data

.global HELLO_WORLD
HELLO_WORLD:
    .asciz "Hello World!"

.global NEW_LINE
NEW_LINE:
    .asciz "\n"

.global EQUAL
EQUAL:
    .asciz "="

.global UPPER_LEFT_CORNER
UPPER_LEFT_CORNER:
    .asciz "╔"

.global UPPER_RIGHT_CORNER
UPPER_RIGHT_CORNER:
    .asciz "╗"

.global LOWER_RIGHT_CORNER
LOWER_RIGHT_CORNER:
    .asciz "╝"

.global LOWER_LEFT_CORNER
LOWER_LEFT_CORNER:
    .asciz "╚"

.global SEPARATION
SEPARATION:
    .asciz "║"

.global SPACE
SPACE:
    .asciz " "

.global MENU_SIZE
MENU_SIZE:
    .int 50

.global MAIN_MENU_NAME
MAIN_MENU_NAME:
    .asciz "TIC-TAC-TOE"
