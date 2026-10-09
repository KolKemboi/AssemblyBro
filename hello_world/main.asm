.section .text
.global _start

_start:
jmp main

main:
movq $1, %rax
movq $1, %rdi
leaq msg(%rip), %rsi
movq $len, %rdx
syscall

jmp exit

exit:
movq $60, %rax
xorq %rdi, %rdi
syscall

.section .data
msg:
.ascii "Hello World\n"
len = . - msg
