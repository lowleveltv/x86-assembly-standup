.global _start
.section .text
.intel_syntax noprefix

_start:
	lea edx, [str]
	

// don't worry bro i'm chill
exit:
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80


.section .data
	str: .ascii "Hey there"
	
