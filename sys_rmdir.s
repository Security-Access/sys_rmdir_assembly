BITS 64

global _start

section .rodata

	removedirectory db "rmdir", 0		

section .text

_start:
	mov rax, 0x54
	mov rdi, removedirectory
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
