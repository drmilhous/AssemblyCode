%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov ebx, -1
	mov eax, 10
	mov edx, 0CAFEBABEh
	dump_regs 1
	
	imul ebx; ebx * eax result is in EDX:EAX
	dump_regs 2		
	
	mov ecx, 20h
	mov ebx, 10h
	imul ecx, ebx
	dump_regs 3
	imul ebx, 30h
	dump_regs 4
	
	mov edx, 0
	mov eax, 100
	mov ebx, 17
	div ebx
	dump_regs 5

	mov ecx, 1000h
	mov edx, 123h
	mov eax, 456789ABh
	div ecx
	dump_regs 6
	


	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
