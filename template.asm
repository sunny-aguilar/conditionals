TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Assignment Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc


.data
myQuote			BYTE	"Testing conditional statements", 0
infinity		BYTE	"INFINITE LOOP!", 0
message			BYTE	"String in sub procedure", 0
array DWORD 1, 2, 3, 4, 5
theSum DWORD ?

.code
main PROC
	mov		esi, OFFSET array
	mov		ecx, LENGTHOF array
	call	arraySum
	mov		theSum, eax
	call	CrLf


;looping example
	mov		ax, 0
	mov		ecx, 5

L1:
	call	WriteDec
	call	CrLf
	inc		ax
	loop	L1

	exit; exit to operating system
main ENDP


;------------------------------------------------
; arraySum
;
; Adds two values
;
; Returns: none
;------------------------------------------------
arraySum PROC
	push	esi
	push	ecx
	mov		eax, 0

L1:
	add		eax, [esi]
	add		esi, TYPE DWORD
	loop	L1
	pop		ecx
	pop		esi
	ret
arraySum ENDP

END main
