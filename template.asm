TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Assignment Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc


.data
myQuote		BYTE	"Testing conditional statements", 0
firstJump	BYTE	"Jumped to first label", 0
secondJump	BYTE	"Jumped to second label", 0

.code
main PROC
	mov		edx, OFFSET myQuote
	call	WriteString
	call	CrLf

;first if statement
	mov		eax, 10
	cmp		20
	jmp		firstJump

;a label to jump to
	firstJump:
	mov		edx, firstJump
	call	writeString
	call	CrLf

;another label to jump to
	secondJump:
	call	Write


	exit							; exit to operating system
main ENDP


END main
