%include "asm_io.inc"
segment .data 
p1 db "they are equal",10,0
p2 db "they are not equal",0Ah,0
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	
	call read_int
	mov ebx, eax
	call read_int
	mov ecx, eax
	

	cmp ebx, ecx
	jnz a1
	;they are equal
	mov eax, p1
	call print_string
	jmp done	
a1:
	;they are not equal
	mov eax, p2
	call print_string

done:
		
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
