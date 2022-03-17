;;; 
;;; hello.s
;;; Prints "Hello, world!"
;;;

section .data
msg:            db      "Hello, world!", 10, 0
MSGLEN:         equ     $-msg

section .text
global _start
_start:

mov rdi, 1	;std-out
mov rsi, msg	;store address
mov rcx, 0	;counter
mov rdx, 1	;print 1 char
mov r13, 0	;counter for spaceJam

.pDown:
mov rax, 1
mov r14, rcx	;store rcx value
mov r15, rsi	;store ch value
syscall

.nline:
mov rax, 1
mov rsi, msg+13	;display new line
syscall

.spaceJam:
mov rax, 1
mov rsi, msg+6	;display blank space
inc r13		;space Jam it, by 1
syscall

cmp r13, r14	;compare prev., rcx value[r14], to space jammer
jle .spaceJam	;go back to spaceJam if space counter is less than rcx[value]
mov r13, 0	;reset counter for spaceJam

mov rcx, r14	;put back original rcx value from .pDown
mov rsi, r15	;put back org., ch val., from .pDown
inc rcx		;add 1 to org val
inc rsi		;add 1 to msg
cmp rcx, MSGLEN-2	;
jl .pDown	;lets start over again

;; Terminate process
mov     rax,    60              ; Syscall code in rax
mov     rdi,    0               ; First parameter in rdi
syscall                         ; End process
