;;
;;"Sttaarrrsss!"
;;

section .data
stars:		db	"*"
newLine:	db	10

section .text
global _start
_start:

mov r10, 0	;row incrementor
mov r12, 0	;height incrementor
mov r13, 5

.star_print:
mov rax, 1
mov rdi, 1
mov rsi, stars
mov rdx, 1
syscall

inc r10		;increment row
cmp r10, r12	;compare row to height
jle .star_print	;print another star if <= height

;;new line
mov rax, 1
mov rdi, 1
mov rsi, newLine
mov rdx, 1
syscall

xor r10, r10	;zero out row
inc r12		;increment height
cmp r12, r13	;compare height to max height
jl .star_print	;back to print if < max height

mov rax, 60
mov rdi, 0
syscall
