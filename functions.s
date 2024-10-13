.global length
.global exit

length:
    xor %rax, %rax
next_char:
    cmpb $0, (%rsi)
    je end_length
    inc %rax
    inc %rsi
    jmp next_char
end_length:
    ret

exit:
    mov $60, %rax           # syscall number for sys_exit
    mov $0, %rdi            # exit code
    syscall                 # syscall to exit
