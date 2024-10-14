.section .data
.global _start


.section .text
# rax, rdi, rsi, rdx, rcx

_start:
    call main_menu
    call exit
