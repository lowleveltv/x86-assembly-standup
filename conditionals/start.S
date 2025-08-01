.section .text
.intel_syntax noprefix

.global main
.global scanf

main:
	call get_number // eax will contain the number
	
// don't worry bro i'm chill
exit:
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

print_big_number:
	lea edx, [big]
	push edx
	call puts
	add esp, 0x4
	ret

print_small_number:
	lea edx, [small]
	push edx
	call puts
	add esp, 0x4
	ret

get_number:
	lea edx, [number]
	push edx
	lea edx, [format]
	push edx
	call scanf
	add esp, 0x8	
	mov edx, dword ptr [number]
	sub edx, 0x30
	mov eax, edx
	ret

.section .data
	number: .long 0x0
	format: .asciz "%d"
	big: .asciz "damn bro thats a big number"
	small: .asciz "damn bro thats a small number"
