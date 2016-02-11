%include "asm_io.inc"
segment .data 
hello db "Hello World!",10, 0
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	call read_int
	call print_int 
	call print_nl

	dump_regs 0 
	
	mov eax, hello
	call print_string
	mov eax, [hello]	
	dump_regs 1
			
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
