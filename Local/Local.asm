%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	call read_int
	push eax
	call read_int
	push eax
	call read_int
	push eax
	call foo
	add esp, 0Ch	
	call print_int
	call print_nl
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
foo:
	push ebp
	mov ebp, esp
	sub esp, 10h
	mov [ebp-4], ebx
	mov [ebp-8], ecx
	mov [ebp-0Ch], edx

	mov eax, [ebp+10h]
	mov ebx, [ebp+0Ch]
	mov ecx, [ebp+8]
	mov [ebp-10h], ecx; store c in a local variable

	cmp eax, ebx
	jl caseb
	je casec
	
	mov eax, ebx
	add eax, ecx
	jmp done	
caseb:
	mov eax, ebx
	mul ecx
	jmp done

casec:
	add eax, ebx

done:	

	mov edx, [ebp-0Ch]
	mov ecx, [ebp-8]
	mov ebx, [ebp-4]
	mov esp, ebp
	pop ebp
	ret	

	
