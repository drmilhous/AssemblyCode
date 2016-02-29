%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
;	call foo	
	mov ecx, 100h
	mov edx, 200h
	mov eax, 0000DC0DEh
	mov ebp, 0ABCDh
	mov esi, 0ABh
	mov edi, 0DEh
	mov ebx, 0BBBBBBBBh
	call foo
	pusha
bar:	dump_regs 1
	popa
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

foo:
	push edx
	push ecx
	mov ecx, 4

top	mul eax
	loop top

	pop ecx
	pop edx
	ret


