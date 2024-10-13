.global length
.global exit

length:
    xor %rax, %rax
.loop:
    cmpb $0, (%rdi, %rax)
    je .done
    inc %rax
    jmp .loop
.done:
    ret

exit:
    mov $60, %rax           # syscall number for sys_exit
    mov $0, %rdi            # exit code
    syscall                 # syscall to exit
