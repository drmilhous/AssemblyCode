%include "asm_io.inc"
segment .data 
prompt: db "Enter the number >= 0:",0
youDummy: db "You dummy:",0
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov eax, prompt
	call print_string
	call read_int

	cmp eax, 0
	jl youD
	jz specialK
	
	mov ecx, eax
	mov eax, 0


top: 	call print_int
	call print_nl

	inc eax
	
	loop top

jmp over
specialK:
	mov eax, 0
	call print_int
jmp over
youD:
	mov eax, youDummy
	call print_string

over:	
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
