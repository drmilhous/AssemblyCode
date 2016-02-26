%include "asm_io.inc"
segment .data 
string db "%d %d %d %d %d",0
segment .bss 

segment .text
        global  asm_main
	extern printf
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	; 5 4 3 2 1
	; printf("%d %d %d %d %d", 5, 4, 3 , 2 ,1);
	push 1
	push 2
	push 3
	push 4
	push 5
	mov eax, string
	push eax
	call printf
	add esp, 24	
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
