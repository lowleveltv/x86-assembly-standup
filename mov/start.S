.global _start
.section .text
.intel_syntax noprefix

_start:

	

// don't worry bro i'm chill
exit:
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80
	
