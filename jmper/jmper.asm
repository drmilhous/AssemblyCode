%include "asm_io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	mov eax,done
	push done
	push 080484cdh
	ret		
	;***************CODE ENDS HERE*****************************
done:   popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
foo:
	mov eax, 20
	ret
