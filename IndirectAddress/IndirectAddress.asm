%include "asm_io.inc"
segment .data 
foo: db 0Ah
bar: db 0Bh
ted: dd 0ABCDDCBAh
fred: dd 0FEEDBEEFh
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov eax, foo
	mov ebx, bar
	mov ecx, ted
	mov edx, fred
	dump_regs 1

	mov eax, 0
	mov al, [foo]
	mov ebx, 0
	mov bl, [bar]
	mov ecx, [ted]
	mov edx, [fred]
	dump_regs 2

	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
