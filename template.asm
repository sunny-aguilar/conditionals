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
firstString		BYTE	"Jumped to first label", 0
secondString	BYTE	"Jumped to second label", 0

.code
main PROC
	mov		edx, OFFSET myQuote
	call	WriteString
	call	CrLf

;first if statement
	mov		eax, 10
	cmp		ebx, 20
	jmp		secondJump


firstJump:
	mov		edx, OFFSET firstString
	call	WriteString
	call	CrLf


secondJump:
	mov		edx, OFFSET secondString
	call	WriteString
	call	CrLf


thirdJump:
	mov		edx, OFFSET thirdString
	call	WriteString
	call	CrLf
	

	exit							; exit to operating system
main ENDP


END main
