%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov edx, 1h
	mov eax, 2053h
	; edx:eax 0000000100002053
	mov ecx, 12h	
	div ecx
	dump_regs 1


	mov eax, 100
	mov ebx, 8
	mul ebx

	dump_regs 2	
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
