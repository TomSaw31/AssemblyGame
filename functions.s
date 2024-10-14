.global length
.global exit

# Return the length of the string
length:
    xor %rax, %rax
.loop:
    cmpb $0, (%rdi)
    je .done
    inc %rax
    inc %rdi
    jmp .loop
.done:
    ret

# Exit the script
exit:
    mov $60, %rax           # syscall number for sys_exit
    mov $0, %rdi            # exit code
    syscall                 # syscall to exit
