;;
;; find duplicates
;;

section .data
a:		dq	1, 2, 3, 4, 4
b:		dq	1, 2, 3, 4, 5
false:		db	"0", 10
true:		db	"1", 10

section .text
global _start
_start:

mov rdi, a		;place array in rdi
mov rsi, 5		;put size of array in rsi
call has_duplicates	;call function

mov rax, 60		;close it out
mov rdi, 0
syscall

has_duplicates:
mov r12, 0	;incrementor

.dups:
mov r13, [rdi + r12*8]	;get first value 
inc r12			;increment offset
mov r14, [rdi + r12*8]	;get second value

cmp r13, r14		;compare 1st and 2nd
jne .dups		;get next values if !=

cmp r12, rsi		;check if end was reached
jl .found		;assume duplicate was found if < size

mov rax, 1		;display not found
mov rdi, 1
mov rsi, false
mov rdx, 2
syscall
ret

.found:			;display found
mov rax, 1
mov rdi, 1
mov rsi, true
mov rdx, 2
syscall
ret
