%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov eax, 0CAh		
	xor eax, 0FFh
	
	mov ebx, 0CAh
	xor ebx, 0F0h

	mov ecx, 0CAh
	or ecx, 0F0h


	mov edx, 0CAh
	and edx, 0F0h
	
	dump_regs 1
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
