%include "asm_io.inc"
segment .data 

out1 db "Bob hit",10,0
out2 db "Bob unhit",10,0
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	
	call read_int 
	cmp eax, 17
	jz BOB 	
	mov eax, out2
	call print_string
	jmp DONE
BOB:
	mov eax, out1
	call print_string	

DONE:
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
